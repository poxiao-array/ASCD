import os
import re
import csv
import pandas as pd
import numpy as np
from pyevmasm import disassemble_hex  # 反编译


def CFG_exacter(dataset):
    """
    获取block的具体行，将节点和边分离

    """
    inputFileDir = "../data/binary_cfg_code/" + dataset + "/"
    dirs = os.listdir(inputFileDir)
    dirs.sort(key=lambda x: (x[1:-4]))  # 排序
    dirs = dirs[:5000]
    print(dirs)
    # 对每个CFG图进行处理
    for file in dirs:
        inputFilePath = inputFileDir + file
        f = open(inputFilePath, "r")
        lines = f.readlines()
        nodes = "../data/binary_graph_data/" + dataset + "/node/" + str(file)
        edges = "../data/binary_graph_data/" + dataset + "/edge/" + str(file)
        f_node = open(nodes, 'a')
        f_edge = open(edges, "a")

        flag = 0  # 用来判断现在操作的是节点信息还是边信息

        for line in lines:
            if "block" in line and flag == 0:
                node = ''
                list = line.strip().split(" ")  # 以空格分词
                for i in list:
                    if i[0:5] == "block":
                        node += i
                f_node.write(node + "\n")  # 写入node信息
            if "block" in line and flag != 0:
                edge = ''
                list = line.strip().split(" ")
                for i in list:
                    if i[0:5] == "block":
                        edge += (i + ' ')
                f_edge.write(edge + "\n")  # 写入edge信息
            if "}" in line:
                flag += 1
                continue


def getGINdataset(dataset):

    graph_label = pd.read_csv("../data/simpleOpcode/" + dataset + ".csv")["label"]  # .values[:5000]
    # for i in range(graph_label.shape[0]):
    #     if graph_label[i] > 0:
    #         graph_label[i] = 1
    print(graph_label)
    node_label = 0  # 节点标签(默认全为0)
    edges_num = 0  # 节点所连接的边的数量
    feature = 0  # 节点特征向量(没有)

    # 生成文件的位置
    filePath = "../pretrain/control_flow_features/GIN/dataset/gin_" + dataset + ".txt"
    data_file = open(filePath, 'a')

    # 统计文件数量
    inputFileDir = "../data/binary_graph_data/" + dataset + "/edge/"
    if dataset== "normal":
        dirs = os.listdir(inputFileDir)
    # dirs.sort(key=lambda x: (x[1:-4]))  # 排序
    else:
        dirs = pd.read_csv("../data/simpleOpcode/" + dataset + ".csv")["SC"]
    SC_sum = len(dirs)  # reentrancy:273
    data_file.write(str(SC_sum) + "\n")  # 写入合约总数
    print(dirs)

    flag = 0  # 标记是第几个文件
    for file in dirs:
        node_sum = 0  # 每个图的节点数
        nodes_dict = {}  # 保存每个图的nodes
        # 读取node文件
        nodes_file = "../data/binary_graph_data/" + dataset + "/node/" + str(file[:-4]) + '.txt'
        f = open(nodes_file, "r")
        node_lines = f.readlines()
        for line in node_lines:
            if "block" in line:
                l = line.strip("\n")
                if not l in nodes_dict:  # 如果当前图的标签不在标签字典中，则添加进去
                    mapped = len(nodes_dict)
                    nodes_dict[l] = mapped
                node_sum += 1
        print(nodes_dict)
        node_name = list(nodes_dict.keys())
        node_num = list(nodes_dict.values())
        data_file.write(str(node_sum - 1) + " ")  # 写入节点数
        if dataset=="normal":  # 写入合约图标签
            data_file.write(str(0) + "\n")
        else:
            data_file.write(str(graph_label[flag]) + "\n")
        flag += 1

        # 读取edge文件
        edges_file = "../data/binary_graph_data/" + dataset + "/edge/" + str(file[:-4]) + '.txt'
        f = open(edges_file, "r")
        edges_lines = f.readlines()
        for i in range(node_sum - 1):
            data_file.write(str(node_label) + " ")  # 写入节点标签(默认为0)
            n = 0  # n保存共有多少边与该节点相连
            v = []  # V保存节点连接的所有节点
            # 遍历edge表
            for line in edges_lines:
                if "block" in line:
                    l = line.strip("\n").strip().split(" ")
                    if l[0] == node_name[i]:
                        v.append(nodes_dict[l[1]])
                        n += 1
                    if l[1] == node_name[i]:
                        v.append(nodes_dict[l[0]])
                        n += 1
            data_file.write(str(n) + " ")  # 写入n(节点所连边数)
            print(v)
            for j in range(len(v)):
                data_file.write(str(v[j]) + " ")
            data_file.write("\n")


if __name__ == "__main__":
    file = ["reentrancy", "timestamp", "integeroverflow", "delegatecall", "SBunchecked_low_level_calls",
                     "SBaccess_control", "SBarithmetic", "SBdenial_of_service",
                     "SBfront_running", "SBshort_address"]
    for dataset in file:
        # CFG_exacter(dataset)  # 分离节点和边，并提取信息
        getGINdataset(dataset)  # 生成GIN可用的txt文件
