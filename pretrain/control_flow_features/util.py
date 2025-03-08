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
        self.label = label # 图标签
        self.g = g # 图
        self.node_tags = node_tags # 节点标签（不用）
        self.neighbors = [] # 邻居节点
        self.node_features = 0 # 节点特征
        self.edge_mat = 0 # 邻接矩阵
        # self.number = 0 # 第i个图
        self.max_neighbor = 0 # 最大邻居数量



def load_data(dataset, degree_as_tag):
    """
        dataset: name of dataset 数据集名称
        test_proportion: ratio of test train split 训练集和测试集的拆分比率
        seed: random seed for random splitting of dataset 用于随机分割数据集的随机种子
    """

    print('loading data')
    g_list = []  # 保存图的list
    label_dict = {}  # 标签字典
    feat_dict = {}  #

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
    with open('../dataset/%s.txt' %dataset, 'r') as f:
        n_g = int(f.readline().strip())
        for i in range(n_g):
            row = f.readline().strip().split()
            n, l = [int(w) for w in row]  # n为行数，l为图的标签
            if not l in label_dict:  # 如果当前图的标签不在标签字典中，则添加进去
                mapped = len(label_dict)
                label_dict[l] = mapped

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

                if tmp > len(row):  # 超过row[1]长度的部分，为节点属性
                    node_features.append(attr)  # 添加节点属性

                n_edges += row[1]  # 图的边数增加
                for k in range(2, len(row)):
                    g.add_edge(j, row[k])  # 将边添加进g

            if node_features != []:  # 如果节点特征不为空，则设为True
                node_features = np.stack(node_features)
                node_feature_flag = True
            else:  # 节点特征为空，设为False
                node_features = None
                node_feature_flag = False

            assert len(g) == n  # 检查当前图是否处理完

            g_list.append(S2VGraph(g, l, node_tags, ))  # 把图加入图列表
            # print("输出图：", g)
    # add labels and edge_mat
    # 添加标签和边
    for g in g_list:
        g.neighbors = [[] for i in range(len(g.g))]
        for i, j in g.g.edges():
            g.neighbors[i].append(j)
            g.neighbors[j].append(i)
        degree_list = []
        for i in range(len(g.g)):
            g.neighbors[i] = g.neighbors[i]
            degree_list.append(len(g.neighbors[i]))
        g.max_neighbor = max(degree_list)

        g.label = label_dict[g.label]

        edges = [list(pair) for pair in g.g.edges()]
        edges.extend([[i, j] for j, i in edges])

        deg_list = list(dict(g.g.degree(range(len(g.g)))).values())
        g.edge_mat = torch.LongTensor(edges).transpose(0, 1)

    if degree_as_tag:  # 让输入节点的特征是节点的度数(默认false)
        for g in g_list:
            g.node_tags = list(dict(g.g.degree).values())

    # Extracting unique tag labels
    # 提取唯一tag标签
    tagset = set([])
    for g in g_list:
        tagset = tagset.union(set(g.node_tags))

    tagset = list(tagset)
    tag2index = {tagset[i]: i for i in range(len(tagset))}

    for g in g_list:  # 节点特征即标签的one-hot编码
        g.node_features = torch.zeros(len(g.node_tags), len(tagset))
        g.node_features[range(len(g.node_tags)), [tag2index[tag] for tag in g.node_tags]] = 1

    print('# classes: %d' % len(label_dict))
    print('# maximum node tag: %d' % len(tagset))

    print("# data: %d" % len(g_list))

    return g_list, len(label_dict)


# 分割训练集和测试集
def separate_data(graph_list, seed, fold_idx):
    assert 0 <= fold_idx < 5, "fold_idx must be from 0 to 9."
    skf = StratifiedKFold(n_splits=5, shuffle=True, random_state=seed)

    labels = [graph.label for graph in graph_list]
    idx_list = []
    for idx in skf.split(np.zeros(len(labels)), labels):
        idx_list.append(idx)
    train_idx, test_idx = idx_list[fold_idx]

    train_graph_list = [graph_list[i] for i in train_idx]
    test_graph_list = [graph_list[i] for i in test_idx]

    return train_graph_list, test_graph_list
