import pandas as pd
import numpy as np
import argparse
import torch
import torch.nn as nn
import torch.optim as optim
import sys
sys.path.append('../')
from util import load_data, separate_data

# from ..util import load_data, separate_data

def main():


    # set up seeds and gpu device 设置种子和 gpu 设备
    torch.manual_seed(0)
    np.random.seed(0)
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    if torch.cuda.is_available():
        print("available")
        torch.cuda.manual_seed_all(0)
    # device = torch.device("cpu")

    graphs, num_classes = load_data("gin_5.txt", args.degree_as_tag)
    print(graphs[0].label)
    print(graphs[0].g)
    print(graphs[0].node_features) # 节点特征
    print(graphs[0].edge_mat) # 邻接矩阵



if __name__ == '__main__':
    main()