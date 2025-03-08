"""数据处理的工具"""
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.model_selection import train_test_split

def getdataset():
    data = pd.read_csv("../data/simpleOpcode/final2.csv")
    opcode = data["opcode"].values
    label = data["label"].values

    # 将数据集拆分为训练集和测试集
    X_train, X_test, y_train, y_test = train_test_split(opcode, label, test_size=0.2, random_state=1)
    X_train, X_val, y_train, y_val = train_test_split(X_train, y_train, test_size=0.2, random_state=13)
    return X_train, X_val, X_test, y_train, y_val, y_test


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
    Labname = ["体育", "娱乐", "家居", "房产", "教育", "时尚", "时政", "游戏", "科技", "财经"]
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









