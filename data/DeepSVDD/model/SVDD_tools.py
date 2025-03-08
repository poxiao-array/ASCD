import numpy as np
import pandas as pd


def hybrid_dataset():
    """读取数据集"""
    data = pd.read_csv("../pretrain/lstm_features.csv")
    data_x = data.iloc[:, 2:].values
    label = data["label"].values

    '''# 数据归一化
    from sklearn import preprocessing
    min_max_scaler = preprocessing.MinMaxScaler()
    data_x = min_max_scaler.fit_transform(data_x)'''

    for i in range(label.shape[0]):
        if label[i]==1 or label[i]==2:
            label[i] = -1
        if label[i]==0:
            label[i] = 1

    '''normal = []
    reentrancy = []
    timestamp = []
    for i in range(data.shape[0]):
        if label[i] == 1:
            reentrancy.append(data_x[i])
        if label[i] == 2:
            timestamp.append(data_x[i])
        if label[i] == 0:
            normal.append(data_x[i])'''
    X = np.array(data_x)[:8000, :]
    y = np.array(label)[:8000].reshape(-1, 1)
    '''from sklearn.model_selection import train_test_split
    # 将normal数据集拆分为训练集和测试集
    normal_train, normal_test = train_test_split(
        normal, test_size=0.2, random_state=11)'''
    '''test1 = np.vstack(normal_train, reentrancy)
    label1 = np.ones(test1.shape[0])'''

    return X, y


def hybrid_dataset():
    """读取数据集"""
    data = pd.read_csv("../pretrain/lstm_features.csv")
    data_x = data.iloc[:, 2:].values
    label = data["label"].values

    '''# 数据归一化
    from sklearn import preprocessing
    min_max_scaler = preprocessing.MinMaxScaler()
    data_x = min_max_scaler.fit_transform(data_x)'''

    for i in range(label.shape[0]):
        if label[i]==1 or label[i]==2:
            label[i] = -1
        if label[i]==0:
            label[i] = 1

    '''normal = []
    reentrancy = []
    timestamp = []
    for i in range(data.shape[0]):
        if label[i] == 1:
            reentrancy.append(data_x[i])
        if label[i] == 2:
            timestamp.append(data_x[i])
        if label[i] == 0:
            normal.append(data_x[i])'''
    X = np.array(data_x)[:8000, :]
    y = np.array(label)[:8000].reshape(-1, 1)
    '''from sklearn.model_selection import train_test_split
    # 将normal数据集拆分为训练集和测试集
    normal_train, normal_test = train_test_split(
        normal, test_size=0.2, random_state=11)'''
    '''test1 = np.vstack(normal_train, reentrancy)
    label1 = np.ones(test1.shape[0])'''

    return X, y

X, y = hybrid_dataset()
# print(reentrancy)
print(X.shape, y.shape)



