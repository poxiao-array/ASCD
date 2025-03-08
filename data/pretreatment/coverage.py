import os

import pandas as pd
import numpy as np

def average_coverage(epath, npath):
    node_num = 0 # 所有节点的数量
    node_coverage = 0 # 被覆盖节点的数量
    # 找到所有node
    f1 = open(npath, "r")
    lines = f1.readlines()
    node_num = len(lines)
    node = []
    for line in lines:
        node.append(line.strip('\n'))

    # 看边节点在不在node里
    f2 = open(epath, "r")
    lines = f2.readlines()
    edge = []
    for line in lines:
        # print(line.strip('\n').split())
        two = line.strip('\n').split()
        for block in two:
            # edge.append(block)
            if block in node:
                node_coverage += 1
                node.remove(block)
    result = node_coverage / node_num
    print("共有节点:", node_num)
    print("被覆盖节点:", node_coverage)
    print("代码覆盖率:", result)
    return result

def main():
    sum = 0
    lowest = 1
    filename = []
    path = "../data/binary_graph_data/normal/"
    dirs = os.listdir(path + 'edge/')[:6000]
    for file in dirs:
        epath = path + 'edge/' +file
        npath = path + 'node/' +file
        result = average_coverage(epath, npath)
        if result < lowest:
            lowest = result
            filename = file
        sum += result
    print('最低代码覆盖率为:', lowest)
    print('最低代码覆盖率文件为:', filename)
    print("平均代码覆盖率为",sum/6000)
if __name__ == '__main__':
    main()