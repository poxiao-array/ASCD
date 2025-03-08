"""数据处理的工具"""
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.model_selection import train_test_split

def getdataset():
    data = pd.read_csv("../../data/dataset/final2.csv")
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












