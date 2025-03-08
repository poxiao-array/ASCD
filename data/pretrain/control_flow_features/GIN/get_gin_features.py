import argparse

import pandas as pd
import torch

from util import load_data


# print(torch.cuda.is_available())
# print(torch.cuda.device_count())


def main(vul):

    parser = argparse.ArgumentParser(
        description='PyTorch graph convolutional neural net for whole-graph classification')
    # 数据集名称
    parser.add_argument('--dataset', type=str, default="gin_"+vul,
                        help='name of dataset (default: MUTAG)')
    # 让输入节点特征为节点的度数（未标记图的启发式
    parser.add_argument('--degree_as_tag', action="store_true",
                        help='let the input node features be the degree of nodes (heuristics for unlabeled graph)')
    args = parser.parse_args()
    graphs, num_classes = load_data(args.dataset, args.degree_as_tag)

    '''load model'''
    model = torch.load('gin5.pth', map_location=torch.device('cpu'))
    '''load params'''
    # model.load_state_dict(torch.load('model_params.pth'))


    #summary(model2, graphs[0].node_features.shape[1])

    features = model(graphs).detach().cpu().numpy()
    print('output.shape', features.shape)
    df = pd.DataFrame(features)
    file = "../../../data/dataset/features/graph/gin5_" + vul +".csv"
    df.to_csv(file)
    print(vul + "write over")

if __name__ == '__main__':
    file = ["reentrancy", "timestamp", "delegatecall", "integeroverflow",
            "SBaccess_control", "SBarithmetic", "SBdenial_of_service",
            "SBfront_running", "SBshort_address",
            "SBunchecked_low_level_calls", "normal"]
    for vul in file:
        main(vul)

