import networkx as nx
import numpy as np
import random
import torch
from sklearn.model_selection import StratifiedKFold


class S2VGraph(object):
    def __init__(self, g, label, node_tags=None, node_features=None):
        """
            g: a networkx graph 一个网络图
            label: an integer graph label 整数标签
            node_tags: a list of integer node tags 整数节点标签列表（图分类任务=None，节点分类任务=True？大概？）
            node_features: a torch float tensor, one-hot representation of the tag that is used as input to neural nets tensor浮点张量，标签的one-hot表示，用作神经网络的输入
            edge_mat: a torch long tensor, contain edge list, will be used to create torch sparse tensor 一个tensor长张量，包含边缘列表，将用于创建tensor稀疏张量
            neighbors: list of neighbors (without self-loop) 邻居列表（没有自循环）
        """
        self.label = label
        self.g = g
        self.node_tags = node_tags
        self.neighbors = []
        self.node_features = 0
        self.edge_mat = 0

        self.max_neighbor = 0


print('loading data')
g_list = []  # 图
label_dict = {}  # 图标签
feat_dict = {}  # 节点标签

dataset = "MUTAG"
"""
读数据表: 
第一行:所需生成的图总数
每个图： g_list
    第一行:(节点数,图标签) label_dict
    第一列:节点标签，feat_dict
    第二列:节点所连的边数，
    后接对应的边，
    再之后是节点属性
"""
with open('dataset/%s/%s.txt' % (dataset, dataset), 'r') as f:
    n_g = int(f.readline().strip())
    print(n_g)
    for i in range(n_g):
        row = f.readline().strip().split()
        n, l = [int(w) for w in row]  # n为行数，l为图的标签
        if not l in label_dict:  # 如果当前图的标签不在标签字典中，则添加进去
            mapped = len(label_dict)
            label_dict[l] = mapped  #
        print(label_dict)
        g = nx.Graph()  # 生成图
        node_tags = []  # 节点标签
        node_features = []  # 节点特征
        n_edges = 0  # 边的数量
        # 遍历当前图中邻接表的每一行
        for j in range(n):
            g.add_node(j)
            row = f.readline().strip().split()  # row为当前行
            tmp = int(row[1]) + 2  # row[1]+2,为该行表示的节点所连的边数+2(第一列和第二列)
            if tmp == len(row):
                # no node attributes 如果tmp=row[1],说明没有节点属性
                row = [int(w) for w in row]
                attr = None  # 没有节点属性就设为None
            else:
                # 否则attr就保存节点属性
                row, attr = [int(w) for w in row[:tmp]], np.array([float(w) for w in row[tmp:]])

            if not row[0] in feat_dict:  # row[0]为节点标签
                mapped = len(feat_dict)
                feat_dict[row[0]] = mapped
            node_tags.append(feat_dict[row[0]])  # 添加节点标签

            if tmp > len(row):
                node_features.append(attr)  # 添加节点属性

            n_edges += row[1]  # 图的边数增加
            for k in range(2, len(row)):
                g.add_edge(j, row[k])  # 将边添加进g

        if node_features != []:  # 如果节点特征不为空，则设为True
            node_features = np.stack(node_features)
            node_feature_flag = True
            print(node_features)
        else:  # 节点特征为空，设为False
            node_features = None
            node_feature_flag = False

        assert len(g) == n

        g_list.append(S2VGraph(g, l, node_tags))
