import os

import numpy as np

from tools import get_csv, merge_csv, get_opcode, simplify_opcode, extractPureBytecode

# normal:0
# reentrancy:1
# SBreentrancy:1
# timestamp:2
# integeroverflow:3
# delegatecall:4
# SBunchecked_low_level_calls:5
# ====================================
# SBaccess_control:6
# SBarithmetic:7
# SBbad_randomness:8
# SBdenial_of_service:9
# SBfront_running:10
# SBshort_address:11

inputFileDir = '../data/simpleOpcode/'
savepath = '../data/simpleOpcode/'

file = np.array([
    # "reentrancy", "timestamp", "delegatecall", "transaction_order",
    #              "SBaccess_control", "integeroverflow", "SBdenial_of_service", "SBshort_address",
    #              "SBunchecked_low_level_calls",
                 # "gas"
                 "normal"
                 ]
        )
labels = np.array([0])# 1, 2, 3, 4, 5, 6, 7, 8, 9,
for i in range(9):
    # print(file[i])
    # print(labels[i])
    get_csv(inputFileDir+file[i]+"/", savepath+file[i]+".csv", label=labels[i])
merge_csv()


# def extractPureBytecode2(filepath):
#     """提取纯字节码,并取其中的runtime部分"""
#     inputFileDir = "../data/bytecode/" + filepath + '/'
#     dirs = os.listdir(inputFileDir)
#     print(dirs)
#     for file in dirs:
#         inputFilePath = inputFileDir + file
#         f = open(inputFilePath, "r+")
#         lines = f.readlines()[0]
#         s = ''
#         nodes = "../data/runtimeByteCode/" + filepath + "/" + str(file)[0:-4]+ ".txt"
#         print(nodes)
#         f_node = open(nodes, "w")
#         s += lines[:-87]  # 去掉后43个字节，只保留runtime部分
#         print(s)
#         f_node.write(s)

# extractPureBytecode2("integeroverflow")
# get_opcode("integeroverflow")
# simplify_opcode("integeroverflow")
