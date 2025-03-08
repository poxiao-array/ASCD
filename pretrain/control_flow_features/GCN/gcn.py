# -*- coding:utf-8 -*-
import pandas as pd
import numpy as np
from sklearn import metrics
import torch
import torch.nn as nn
from torch_geometric.datasets import Planetoid, NELL
import torch.nn.functional as F
from torch_geometric.nn import GCNConv, global_mean_pool
from torch_geometric.loader import DataLoader
import sys
sys.path.append('../')
from util import load_data, separate_data
# device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
device = torch.device('cpu')

class GCN(torch.nn.Module):
    def __init__(self, num_classes, node_features):
        super(GCN, self).__init__()
        self.num_node_features = node_features
        # self.batch_index = batch_index

        self.conv1 = GCNConv(self.num_node_features, 32)
        self.conv2 = GCNConv(32, 16)
        self.fc = nn.Linear(16, num_classes)  # 全连接层用于分类

    def forward(self, batch_graph, batch_index):
        x = batch_graph.node_features
        edge_index = batch_graph.edge_mat
        x = self.conv1(x, edge_index)
        x = F.relu(x)
        x = F.dropout(x, training=self.training)
        x = self.conv2(x, edge_index)
        x = F.relu(x)
        x = F.dropout(x, training=self.training)
        x = global_mean_pool(x, batch_index)
        # x = x.view(-1)
        x = self.fc(x)
        x = F.softmax(x, dim=1)
 
        return x


 
def train(model, data, device):
    batch_size = 1000
    optimizer = torch.optim.Adam(model.parameters(), lr=0.01, weight_decay=1e-4)
    loss_function = torch.nn.CrossEntropyLoss().to(device)
    model.train()
    # x, edge_index = data.x, data.edge_index
    for epoch in range(1):
        selected_idx = np.random.permutation(len(data))[:batch_size]
        batch_graph = [data[idx] for idx in selected_idx]
        print(batch_graph[0].node_features.shape)
        # output = model(batch_graph[0])
        # print('output.shape', output.shape)
        labels = torch.LongTensor([graph.label for graph in batch_graph]).to(device)
        # 特征矩阵x 邻接矩阵edge_index
        for i in range(batch_size):
            out = model(batch_graph[i], batch_index=torch.tensor([i]))
            print(out,labels[i])
            optimizer.zero_grad()
            print(type(out), type(labels))
            loss = loss_function(out[0], labels[i])
            loss.backward()
            optimizer.step()

        print('Epoch {:03d} loss {:.4f}'.format(epoch, loss.item()))


def test(model, data):
    model.eval()
    pre = []
    print("lendata", len(data))
    print(data[0])
    for i in range(len(data)):
        pred = model(data[i], batch_index=torch.tensor([i]))#.max(dim=1)
    # pre.append(pred)
    print(pred.shape)
    # print(pre)
    print(pred.argmax(dim=1))

    labels = torch.tensor([graph.label for graph in data])#.to(device)
    print(type(labels), type(pred))
    # labels = [graph.label for graph in data]
    print(metrics.classification_report(labels.detach().numpy(), pred.argmax(dim=1).detach().numpy()))# .reshape(-1, 1)



def main():
    # 加载数据
    graphs, num_classes = load_data("gin_5", True)
    # print(graphs[0].label)
    # print(graphs[0].g)
    # print(graphs[0].node_features)  # 节点特征
    # print(graphs[0].edge_mat)  # 邻接矩阵
    data = graphs #.to(device)

    selected_idx = np.random.permutation(len(data))[:len(data)]
    batch_graph = [data[idx] for idx in selected_idx]
    # 分割数据集
    train_dataset = batch_graph[:int(len(data) * 0.8)]
    # train_loader = DataLoader(train_dataset, batch_size=100, shuffle=True)
    test_dataset = batch_graph[int(len(data) * 0.2):]
    # test_loader = DataLoader(test_dataset, batch_size=100, shuffle=True)


    # 初始化模型
    # # model = GCN(num_node_features, num_classes, batch_index).to(device)
    model = GCN(num_classes, train_dataset[0].node_features.shape[1]).to(device)
    # print(model)

    train(model, train_dataset, device)
    test(model, test_dataset)


if __name__ == '__main__':
    main()