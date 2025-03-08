import argparse

import pandas as pd
import torch
import torch.nn as nn
import torch.optim as optim
import numpy as np
from sklearn import metrics
from tqdm import tqdm

from ..util import load_data, separate_data
from models.graphcnn import GraphCNN

criterion = nn.CrossEntropyLoss()


def train(args, model, device, train_graphs, optimizer, epoch):
    model.train()

    total_iters = args.iters_per_epoch
    pbar = tqdm(range(total_iters), unit='batch')

    loss_accum = 0
    for pos in pbar:
        selected_idx = np.random.permutation(len(train_graphs))[:args.batch_size]

        batch_graph = [train_graphs[idx] for idx in selected_idx]
        output = model(batch_graph)
        # print('output.shape', output.shape)
        labels = torch.LongTensor([graph.label for graph in batch_graph]).to(device)

        # compute loss
        loss = criterion(output, labels)

        # backprop
        if optimizer is not None:
            optimizer.zero_grad()
            loss.backward()
            optimizer.step()

        loss = loss.detach().cpu().numpy()
        loss_accum += loss

        # report
        pbar.set_description('epoch: %d' % (epoch))

    average_loss = loss_accum / total_iters
    print("loss training: %f" % (average_loss))

    return average_loss


# pass data to model with minibatch during testing to avoid memory overflow (does not perform backpropagation)
# 在测试期间使用 minibatch 将数据传递给模型以避免内存溢出（不执行反向传播）
def pass_data_iteratively(model, graphs, minibatch_size=64):
    model.eval()
    output = []
    idx = np.arange(len(graphs))
    for i in range(0, len(graphs), minibatch_size):
        sampled_idx = idx[i:i + minibatch_size]
        if len(sampled_idx) == 0:
            continue
        output.append(model([graphs[j] for j in sampled_idx]).detach())
    return torch.cat(output, 0)


def test(args, model, device, train_graphs, test_graphs, epoch):
    model.eval()

    output = pass_data_iteratively(model, train_graphs)
    pred = output.max(1, keepdim=True)[1]
    labels = torch.LongTensor([graph.label for graph in train_graphs]).to(device)
    correct = pred.eq(labels.view_as(pred)).sum().cpu().item()
    acc_train = correct / float(len(train_graphs))

    output = pass_data_iteratively(model, test_graphs)
    pred = output.max(1, keepdim=True)[1]
    print(pred.shape)
    # 将预测结果写入csv
    df = pd.DataFrame(pred)
    df.to_csv("reentrancy.csv")
    labels = torch.LongTensor([graph.label for graph in test_graphs]).to(device)
    print(labels.shape)
    correct = pred.eq(labels.view_as(pred)).sum().cpu().item()
    acc_test = correct / float(len(test_graphs))

    print("accuracy train: %f test: %f" % (acc_train, acc_test))
    print(metrics.classification_report(labels, pred.reshape(-1, 1)))

    return acc_train, acc_test


def main():
    # Training settings
    # Note: Hyper-parameters need to be tuned in order to obtain results reported in the paper.
    device = torch.device("cuda")
    parser = argparse.ArgumentParser(
        description='PyTorch graph convolutional neural net for whole-graph classification')
    # 数据集名称
    parser.add_argument('--dataset', type=str, default="gin_5",
                        help='name of dataset (default: MUTAG)')
    # gpu
    parser.add_argument('--device', type=int, default=0,
                        help='which gpu to use if any (default: 12)')
    # batch_size
    parser.add_argument('--batch_size', type=int, default=32,
                        help='input batch size for training (default: 32)')
    # 每个时期的迭代次数
    parser.add_argument('--iters_per_epoch', type=int, default=50,
                        help='number of iterations per each epoch (default: 50)')
    # epochs
    parser.add_argument('--epochs', type=int, default=350,
                        help='number of epochs to train (default: 350)')
    # learning rate
    parser.add_argument('--lr', type=float, default=0.01,
                        help='learning rate (default: 0.01)')
    # 随机数种子
    parser.add_argument('--seed', type=int, default=0,
                        help='random seed for splitting the dataset into 10 (default: 0)')
    # 10倍验证中的折叠指数，应该小于10
    parser.add_argument('--fold_idx', type=int, default=1,
                        help='the index of fold in 10-fold validation. Should be less then 10.')
    # 层数，包括输入层（默认值：5）
    parser.add_argument('--num_layers', type=int, default=5,
                        help='number of layers INCLUDING the input one (default: 5)')
    # MLP 的层数，不包括输入层（默认值：2）。 1 表示线性模型。
    parser.add_argument('--num_mlp_layers', type=int, default=2,
                        help='number of layers for MLP EXCLUDING the input one (default: 2). 1 means linear model.')
    # 隐藏单元的数量（默认值：64）
    parser.add_argument('--hidden_dim', type=int, default=64,
                        help='number of hidden units (default: 64)')
    # dropout层（默认值：0.5）
    parser.add_argument('--final_dropout', type=float, default=0.5,
                        help='final layer dropout (default: 0.5)')
    # 对图中的多个节点进行池化：求和或平均
    parser.add_argument('--graph_pooling_type', type=str, default="sum", choices=["sum", "average"],
                        help='Pooling for over nodes in a graph: sum or average')
    # 相邻节点的池化：sum、average 或 max
    parser.add_argument('--neighbor_pooling_type', type=str, default="sum", choices=["sum", "average", "max"],
                        help='Pooling for over neighboring nodes: sum, average or max')
    # 是否学习中心节点的 epsilon 权重。 不过不影响训练的准确性。
    parser.add_argument('--learn_eps', action="store_true",  # 默认false
                        help='Whether to learn the epsilon weighting for the center nodes. Does not affect training '
                             'accuracy though.')
    # 让输入节点特征为节点的度数（未标记图的启发式
    parser.add_argument('--degree_as_tag', action="store_true",
                        help='let the input node features be the degree of nodes (heuristics for unlabeled graph)')
    # 输出文件
    parser.add_argument('--filename', type=str, default="",
                        help='output file')
    args = parser.parse_args()

    # set up seeds and gpu device
    # 设置种子和 gpu 设备
    torch.manual_seed(0)
    np.random.seed(0)
    # device = torch.device("cuda:" + str(args.device)) if torch.cuda.is_available() else torch.device("cpu")
    # if torch.cuda.is_available():
    #     print("available")
    #     torch.cuda.manual_seed_all(0)
    device = torch.device("cpu")

    graphs, num_classes = load_data(args.dataset, args.degree_as_tag)

    # 10-fold cross validation. Conduct an experiment on the fold specified by args.fold_idx.
    # 10折交叉验证。 对 args.fold_idx 指定的折叠进行实验
    train_graphs, test_graphs = separate_data(graphs, args.seed, args.fold_idx)
    print(train_graphs)
    model = GraphCNN(args.num_layers, args.num_mlp_layers, train_graphs[0].node_features.shape[1], args.hidden_dim,
                     num_classes, args.final_dropout, args.learn_eps, args.graph_pooling_type,
                     args.neighbor_pooling_type, device).to(device)

    optimizer = optim.Adam(model.parameters(), lr=args.lr)
    scheduler = optim.lr_scheduler.StepLR(optimizer, step_size=50, gamma=0.5)

    for epoch in range(1, args.epochs + 1):
        # scheduler.step()

        avg_loss = train(args, model, device, train_graphs, optimizer, epoch)
        scheduler.step()
        acc_train, acc_test = test(args, model, device, train_graphs, test_graphs, epoch)
        if not args.filename == "":
            with open(args.filename, 'w') as f:
                f.write("%f %f %f" % (avg_loss, acc_train, acc_test))
                f.write("\n")
        print("")
        print(model.eps)

    output = model(graphs)
    # print('output.shape', output.shape)


    '''save model'''
    # torch.save(model, 'gin5.pth')
    '''save params'''
    # torch.save(model.state_dict(), 'gin5_params.pth')

    '''load model'''
    model2 = torch.load('gin5.pth')
    '''load params'''
    # model2.load_state_dict(torch.load('gin5.pth'))

    # acc_train, acc_test = test(args, model2, device, train_graphs, test_graphs, epoch=1)
    # print('################################')
    # print(acc_train, acc_test)

if __name__ == '__main__':
    main()
