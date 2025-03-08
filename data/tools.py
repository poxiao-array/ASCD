"""
# 数据处理的工具
getdataset(file)：
getdataset2():
get_onehot(y): 对数据集的标签进行编码
getsequence(X_train, max_len): 对数据集的序列进行编码
label_num(ytrain):  图示训练集都有哪些标签
visionable(test_pre, ytest):  混淆矩阵可视化
word_information(tok):  查看编码后word的信息

# 处理生成的CFG
firstPhase(n):  获取block的具体行，将节点和边分离
secondPhase(n):  删除节点中的符号'\l'
thirdPhase(n):  保留“0x”并删除“block”
deleteColor(n):  删除边信息中的color

# 提取操作码和生成csv文件
extractPureBytecode(filepath):  提取纯字节码,并取其中的runtime部分"
get_opcode(filepath):  将runtimecode编译为操作码
simplify_opcode(filepath):  简化操作码
get_csv(inputFileDir, savepath, label):  生成<文件名,操作码,标签>的csv文件['SC', 'opcode', 'label']
merge_csv():  合并csv文件
get_label_csv(filepath):  整合文件名和标签["name", "label"]

"""
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import os
import re
import csv
from pyevmasm import disassemble_hex  # 反编译
from sklearn.model_selection import train_test_split

def getdataset(file):
    data = pd.read_csv("data/simpleOpcode/" + file + '.csv')
    opcode = data["opcode"].values
    label = data["label"].values

    # 将数据集拆分为训练集和测试集
    # X_train, X_test, y_train, y_test = train_test_split(opcode, label, test_size=0.2, random_state=1)
    # X_train, X_val, y_train, y_val = train_test_split(X_train, y_train, test_size=0.2, random_state=13)
    return opcode, label

def getdataset2(filepath, num):
    data = pd.read_csv(filepath)
    opcode = data["opcode"].values
    label = data["label"].values
    # for i in range(label.shape[0]):
    #     if label[i] > 0:
    #         label[i] = 1
    for i in range(label.shape[0]):
        if label[i] == num:
            label[i] = 1
        else:
            label[i] = 0

    # 将数据集拆分为训练集和测试集
    X_train, X_test, y_train, y_test = train_test_split(opcode, label, test_size=0.2, random_state=1)
    X_train, X_val, y_train, y_val = train_test_split(X_train, y_train, test_size=0.2, random_state=13)
    return X_train, X_val, X_test, y_train, y_val, y_test

def get_onehot(y):
    """对数据集的标签数据进行one-hot编码"""
    from sklearn.preprocessing import LabelEncoder, OneHotEncoder
    le = LabelEncoder()
    y_label = le.fit_transform(y).reshape(-1, 1)
    oh = OneHotEncoder()
    y_onehot = oh.fit_transform(y_label).toarray()
    print(y_onehot.shape)
    return y_onehot


def getsequence(X, modelpath):
    """将每个句子转变成一个向量"""
    import pickle
    # 导入训练好的Tokenizer
    with open(modelpath, 'rb') as handle:
        tok = pickle.load(handle)
    from keras_preprocessing import sequence
    # 对每个词编码之后，每个句子中的每个词就可以用对应的编码表示，即每个句子可以转变成一个向量了
    seq = tok.texts_to_sequences(X)
    # 将每个序列调整为相同的长度
    max_len= 500
    seq_mat = sequence.pad_sequences(seq, maxlen=max_len)
    print("seq_mat", seq_mat.shape)
    return seq_mat

def label_num(ytrain):
    """图示训练集都有哪些标签"""
    plt.figure()
    sns.countplot(x=ytrain)
    plt.xlabel('Label')
    plt.xticks()
    plt.show()


def visionable(test_pre, ytest):
    """混淆矩阵可视化"""
    # 评价预测效果，计算混淆矩阵
    from sklearn import metrics
    confm = metrics.confusion_matrix(np.argmax(test_pre, axis=1), np.argmax(ytest, axis=1))
    # 混淆矩阵可视化
    Labname = ["。。。。"]
    plt.figure(figsize=(8, 8))
    sns.heatmap(confm.T, square=True, annot=True,
                fmt='d', cbar=False, linewidths=.8,
                cmap="YlGnBu")
    plt.xlabel('True label', size=14)
    plt.ylabel('Predicted label', size=14)
    plt.xticks(np.arange(10) + 0.5, Labname)
    plt.yticks(np.arange(10) + 0.3, Labname)
    plt.show()


def word_information(tok):
    """查看编码后word的信息"""
    # 使用word_index属性可以看到每次词对应的编码
    # 使用word_counts属性可以看到每个词对应的频数
    for ii, iterm in enumerate(tok.word_index.items()):
        if ii < 10:
            print(iterm)
        else:
            break
    print("===================")
    for ii, iterm in enumerate(tok.word_counts.items()):
        if ii < 10:
            print(iterm)
        else:
            break

# ===========================================================================================
def firstPhase(n):
    """获取block的具体行，将节点和边分离"""
    inputFileDir = "data/binary_cfg_code/" +n
    dirs = os.listdir(inputFileDir)
    # dirs.sort(key=lambda x: int(x[:-4]))
    print(dirs)
    for file in dirs:
        inputFilePath = inputFileDir + file
        f = open(inputFilePath, "r")
        lines = f.readlines()
        nodes = "data/binary_graph_data/"+n+"node/" + str(file)[0:-4] + ".txt"
        edges = "data/binary_graph_data/"+n+"edge/" + str(file)[0:-4] + ".txt"
        f_node = open(nodes, 'a')
        f_edge = open(edges, "a")

        flag = 0

        for line in lines:
            if "block" in line and flag == 0:
                f_node.write(line.strip() + "\n")
            if "block" in line and flag != 0:
                f_edge.write(line.strip() + "\n")
            if "}" in line:
                flag += 1
                continue


def secondPhase(n):
    """删除节点中的符号'\l' """
    inputFileDir = "data/binary_graph_data/"+n+"node/"
    dirs = os.listdir(inputFileDir)
    dirs.sort(key=lambda x: str(x[:-4]))
    for file in dirs:
        inputFilePath = inputFileDir + file
        f = open(inputFilePath, "r+")
        # n = n + 1
        nodes = "data/binary_graph_data/"+n+"new_node/" + str(file)[0:-4] + ".txt"
        f_node = open(nodes, "w")
        lines = f.readlines()
        for line in lines:
            tt = re.sub(r'\\l', r' ', line)
            f_node.write(tt)


def thirdPhase(n):
    """保留“0x”并删除“block”"""
    inputFileDir = "data/binary_graph_data/"+n+"new_node/"
    dirs = os.listdir(inputFileDir)
    dirs.sort(key=lambda x: str(x[:-4]))
    for file in dirs:
        inputFilePath = inputFileDir + file
        f = open(inputFilePath, "r+")
        # n = n + 1
        nodes = "data/binary_graph_data/"+n+"new_node1/" + str(file)[0:-4] + ".txt"
        f_node = open(nodes, "w")
        s = ''
        lines = f.readlines()
        i = 0
        for line in lines:
            list = line.split(" ")
            for i in list:
                # if i[0:2] == "0x":
                #    s += i
                if i[0:1].isupper() != 0:
                    s += i
                s += ' '
            s += '\n'
        s = s.replace("  ", " ")
        print(s)
        f_node.write(s)

def thirdPhase2(n):
    """保留“block”"""
    inputFileDir = "../data/binary_graph_data/"+n+"new_node/"
    dirs = os.listdir(inputFileDir)
    dirs.sort(key=lambda x: str(x[:-4]))
    for file in dirs:
        inputFilePath = inputFileDir + file
        f = open(inputFilePath, "r+")
        nodes = "data/binary_graph_data/"+n+"new_node2/" + str(file)[0:-4] + ".txt"
        f_node = open(nodes, "w")
        s = ''
        lines = f.readlines()
        for line in lines:
            list = line.split(" ")
            s+=list[0]
            s += '\n'
        # s = s.replace("  ", " ")
        print(s)
        f_node.write(s)


def deleteColor(n):
    """删除边信息中的color, 添加边特征就不删除"""
    inputFileDir = "data/binary_graph_data/"+n+"edge/"
    dirs = os.listdir(inputFileDir)
    dirs.sort(key=lambda x: str(x[:-4]))
    for file in dirs:
        inputFilePath = inputFileDir + file
        f = open(inputFilePath, "r+")
        # n = n + 1
        nodes = "data/binary_graph_data/"+n+"new_edge/" + str(file)[0:-4] + ".txt"
        f_node = open(nodes, "w")
        s = ''
        lines = f.readlines()
        # i = 0
        for line in lines:
            list = line.split(" ")
            print(list)
            for i in list:
                if i[0:5] == "block":
                    s += i

                s += ' '
            s += '\n'
        s = s.replace("  ", " ")
        print(s)
        f_node.write(s)


# ===========================================================================================
def extractPureBytecode(filepath):
    """提取纯字节码,并取其中的runtime部分"""
    inputFileDir = "../data/bytecode/" + filepath + '/'
    dirs = os.listdir(inputFileDir)
    print("dirs",dirs)
    for file in dirs:
        inputFilePath = inputFileDir + file
        f = open(inputFilePath, "r+")
        lines = f.readlines()
        for i in range(len(lines)):
            s = ''
            if lines[i][0:6] == '======':
                print(len(lines[i + 2]))
                if len(lines[i + 2]) == 1:
                    continue
                nodes = "../data/runtimeByteCode/" + filepath + "/" + str(file)[0:-4] + str(i) + ".txt"
                print(nodes)
                f_node = open(nodes, "w")
                s += lines[i + 2][:-87]  # 去掉后43个字节，只保留runtime部分
                print(s)
                f_node.write(s)


def get_opcode(filepath):
    """将runtimecode编译为操作码"""
    n = 0
    for filename in os.listdir("../data/runtimeByteCode/" + filepath + "/"):
        print("../data/runtimeByteCode/" + filepath + "/" + filename)  # 返回指定的文件夹包含的文件
        with open("../data/runtimeByteCode/" + filepath + "/" + filename) as f:
            opcode = disassemble_hex(f.read())
            with open("../data/opcode/" + filepath + "/" + filename, "a") as mom:
                mom.write(opcode)
                n += 1
                print(filename)
                print(n)
            mom.close()
        f.close()


def simplify_opcode(filepath):
    """简化操作码"""
    path = "../data/opcode/" + filepath + '/'
    path1 = '../data/simpleOpcode/' + filepath + '/'
    i = 0
    for filename in os.listdir(path):
        if (os.path.exists(path1 + filename)):
            print(path1 + filename, "已存在！")
            continue
        f = open(path + filename, 'r+')
        all_the_lines = f.readlines()
        with open(path1 + filename, 'a') as f1:
            for line in all_the_lines:
                line = line.replace("DUP10", "DUP")
                line = line.replace("DUP11", "DUP")
                line = line.replace("DUP12", "DUP")
                line = line.replace("DUP13", "DUP")
                line = line.replace("DUP14", "DUP")
                line = line.replace("DUP15", "DUP")
                line = line.replace("DUP16", "DUP")
                line = line.replace("DUP1", "DUP")
                line = line.replace("DUP2", "DUP")
                line = line.replace("DUP3", "DUP")
                line = line.replace("DUP4", "DUP")
                line = line.replace("DUP5", "DUP")
                line = line.replace("DUP6", "DUP")
                line = line.replace("DUP7", "DUP")
                line = line.replace("DUP8", "DUP")
                line = line.replace("DUP9", "DUP")
                line = line.replace("SWAP10", "SWAP")
                line = line.replace("SWAP11", "SWAP")
                line = line.replace("SWAP12", "SWAP")
                line = line.replace("SWAP13", "SWAP")
                line = line.replace("SWAP14", "SWAP")
                line = line.replace("SWAP15", "SWAP")
                line = line.replace("SWAP16", "SWAP")
                line = line.replace("SWAP1", "SWAP")
                line = line.replace("SWAP2", "SWAP")
                line = line.replace("SWAP3", "SWAP")
                line = line.replace("SWAP4", "SWAP")
                line = line.replace("SWAP5", "SWAP")
                line = line.replace("SWAP6", "SWAP")
                line = line.replace("SWAP7", "SWAP")
                line = line.replace("SWAP8", "SWAP")
                line = line.replace("SWAP9", "SWAP")
                line = line.replace("LOG0", "LOG")
                line = line.replace("LOG1", "LOG")
                line = line.replace("LOG2", "LOG")
                line = line.replace("LOG3", "LOG")
                line = line.replace("LOG4", "LOG")
                line = line.replace("PUSH32", "PUSH")
                line = line.replace("PUSH31", "PUSH")
                line = line.replace("PUSH30", "PUSH")
                line = line.replace("PUSH29", "PUSH")
                line = line.replace("PUSH28", "PUSH")
                line = line.replace("PUSH27", "PUSH")
                line = line.replace("PUSH26", "PUSH")
                line = line.replace("PUSH25", "PUSH")
                line = line.replace("PUSH24", "PUSH")
                line = line.replace("PUSH23", "PUSH")
                line = line.replace("PUSH22", "PUSH")
                line = line.replace("PUSH21", "PUSH")
                line = line.replace("PUSH20", "PUSH")
                line = line.replace("PUSH19", "PUSH")
                line = line.replace("PUSH18", "PUSH")
                line = line.replace("PUSH17", "PUSH")
                line = line.replace("PUSH16", "PUSH")
                line = line.replace("PUSH15", "PUSH")
                line = line.replace("PUSH14", "PUSH")
                line = line.replace("PUSH13", "PUSH")
                line = line.replace("PUSH12", "PUSH")
                line = line.replace("PUSH11", "PUSH")
                line = line.replace("PUSH10", "PUSH")
                line = line.replace("PUSH9", "PUSH")
                line = line.replace("PUSH8", "PUSH")
                line = line.replace("PUSH7", "PUSH")
                line = line.replace("PUSH6", "PUSH")
                line = line.replace("PUSH5", "PUSH")
                line = line.replace("PUSH4", "PUSH")
                line = line.replace("PUSH3", "PUSH")
                line = line.replace("PUSH2", "PUSH")
                line = line.replace("PUSH1", "PUSH")

                if ('PUSH' in line):
                    line1 = line.split(' ')  # 去掉push操作码后的操作数
                    line = line1[0] + '\n'
                line = line.replace("\n", " ")
                f1.write(line)
            f1.close()
        i = i + 1
        print(path1 + filename, "创建成功！")
        f.close()
    print("共计", i, "个文件")


def get_csv(inputFileDir, savepath, label):
    """生成<文件名,操作码,标签>的csv文件"""
    # list3为CSV的表头
    list3 = ['SC', 'opcode', 'label']
    print(list3)

    # 将每个合约的特征值作为一个字典，加入list1中
    list1 = []

    dirs = os.listdir(inputFileDir)
    dirs.sort(key=lambda x: (x[1:-4]))
    dirs = dirs  # [5000:10000]
    for filename in dirs:
        # print(filename)
        tmp = {}
        tmp['SC'] = filename
        with open(inputFileDir + filename) as f:
            key = f.readlines()
            tmp['opcode'] = key[0]
            # print(key[0])
        tmp['label'] = label
        print(tmp)

        list1.append(tmp)
    # print(list1)

    headers = list3
    with open(savepath, 'w', newline='') as s:
        # s_csv = csv.writerow(headers)
        s_csv = csv.DictWriter(s, headers)
        s_csv.writeheader()
        s_csv.writerows(list1)
        print("合约信息写入csv!")


def merge_csv():
    """合并csv文件"""
    data1 = pd.read_csv("../data/simpleOpcode/reentrancy.csv")  # 1
    # data2 = pd.read_csv("../data/simpleOpcode/SBreentrancy.csv")  # 1
    data3 = pd.read_csv("../data/simpleOpcode/timestamp.csv")  # 2
    data4 = pd.read_csv("../data/simpleOpcode/integeroverflow.csv")  # 3
    data5 = pd.read_csv("../data/simpleOpcode/delegatecall.csv")  # 4
    # data6 = pd.read_csv("../data/simpleOpcode/SBunchecked_low_level_calls.csv")  # 5



    data7 = pd.read_csv("../data/simpleOpcode/normal.csv")#.iloc[:5000,:]  # 0

    # frames = [data1, data3, data4, data5, data6, data7]
    # frame1 = pd.concat(frames, axis=0)  # axis按列合并
    # frame1.to_csv("../data/dataset/final.csv")
    frames = [data1, data3, data4, data5]
    frame1 = pd.concat(frames, axis=0)  # axis按列合并
    frame1.to_csv("../data/dataset/vulnerability.csv")


def merge_vul():
    # 读取5个数据集（假设文件名为dataset1.csv到dataset5.csv）
    file = ['reentrancy', 'timestamp', 'delegatecall', 'transaction_order',
            "SBaccess_control", "integeroverflow", "SBdenial_of_service", "SBshort_address",
            "SBunchecked_low_level_calls",
            # 'SBdenial_of_service',
            'normal',
            ]
    dfs = []
    data1 = pd.read_csv("data/simpleOpcode/reentrancy.csv")  # 1
    dfs.append(data1)
    data2 = pd.read_csv("data/simpleOpcode/timestamp.csv")  # 2
    dfs.append(data2)
    data3 = pd.read_csv("data/simpleOpcode/delegatecall.csv")  # 4
    dfs.append(data3)
    data4 = pd.read_csv("data/simpleOpcode/transaction_order.csv")  # 5
    dfs.append(data4)
    data5 = pd.read_csv("data/simpleOpcode/normal_all.csv")#.iloc[:5000,:]  # 0
    dfs.append(data5)
    # 合并数据集
    merged_df = pd.concat(dfs, ignore_index=True)

    # 二值化标签列（0保持0，非0改为1）
    # merged_df['label'] = merged_df['label'].apply(lambda x: 1 if x != 0 else 0)

    # 保存结果
    merged_df.to_csv('data/simpleOpcode/vul_abnormal.csv', index=False)


def get_label_csv(filepath):
    """整合文件名和标签"""
    inputFileDir = "../data/simpleOpcode/" + filepath + "/"
    dirs = os.listdir(inputFileDir)
    print(dirs)
    head = ["name", "label"]
    filename = []
    for file in dirs:
        tmp = {}
        tmp['name'] = file[:-4]
        filename.append(tmp)
    print(filename)

    headers = head
    with open("../data/label/practice.csv", 'w', newline='') as s:
        # s_csv = csv.writerow(headers)
        s_csv = csv.DictWriter(s, headers)
        s_csv.writeheader()
        s_csv.writerows(filename)
        print("合约信息写入csv!")




if __name__ == "__main__":
    # merge_vul()  # 合并csv文件

    n = 0
    # filepath = "delegatecall/"
    # filename = [
    #     'normal',  'reentrancy', 'timestamp', 'delegatecall', 'transaction_order',
    #             "SBaccess_control", "integeroverflow", "SBdenial_of_service", "SBshort_address",
    #             "SBunchecked_low_level_calls",
    #             # 'SBdenial_of_service',
    #
    #             ]
    label = 0
    for file in filename:
        get_csv(inputFileDir="data/simpleOpcode/"+file+"/", savepath="data/simpleOpcode/+file+.csv", label=label)  # 生成<文件名,操作码,标签>的csv文件
        label = label +1

    # 运行相应的函数实现其功能
    # firstPhase(filepath)  # 获取block的具体行，将节点和边分离
    # secondPhase(filepath)  # 删除节点中的符号'\l'
    # thirdPhase(filepath)  # 保留“0x”并删除“block”
 #    # forthPhase(n)  # 删除边信息中的color
 #    # extractPureBytecode(filepath)  # 提取纯字节码的runtime部分
 #    # get_opcode(filepath)  # 反编译得到操作码
 #    # simplify_opcode(filepath)  # 简化操作码
 #    get_csv(filepath)  # 生成<文件名,操作码,标签>的csv文件
 #    merge_csv()  # 合并csv文件
 #    # get_label_csv()'''







