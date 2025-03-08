import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier
from sklearn import metrics
from sklearn.svm import SVC

# 读取数据
# reentrancy = pd.read_csv("./data/reentrancy.csv", index_col=0)  # .values#.reshape([-1, 1, 128])
# reentrancy_label = pd.read_csv("../../data/simpleOpcode/reentrancy.csv")["label"]
# timestamp = pd.read_csv("./data/timestamp.csv", index_col=0)  # .values#.reshape([-1, 1, 128])
# timestamp_label = pd.read_csv("../../data/simpleOpcode/timestamp.csv")["label"]
# integeroverflow = pd.read_csv("./data/integeroverflow.csv", index_col=0)  # .values#.reshape([-1, 1, 128])
# integeroverflow_label = pd.read_csv("../../data/simpleOpcode/integeroverflow.csv")["label"]
# delegatecall = pd.read_csv("./data/delegatecall.csv", index_col=0)  # .values#.reshape([-1, 1, 128])
# delegatecall_label = pd.read_csv("../../data/simpleOpcode/delegatecall.csv")["label"]
# unchecked = pd.read_csv("./data/SBunchecked_low_level_calls.csv", index_col=0)  # .values#.reshape([-1, 1, 128])
# unchecked_label = pd.read_csv("../../data/simpleOpcode/SBunchecked_low_level_calls.csv")["label"]
# normal = pd.read_csv("./data/normal.csv", index_col=0)
# nor_label = pd.DataFrame(np.zeros(normal.shape[0]))
# file = [reentrancy, timestamp, integeroverflow, delegatecall, unchecked, normal]
# data = pd.concat(file, axis=0).values
# labelfile = [reentrancy_label, timestamp_label, integeroverflow_label, delegatecall_label, unchecked_label, nor_label]
# label = pd.concat(labelfile, axis=0).values.ravel()
#
# # 划分数据集
# X_train, X_test, y_train, y_test = train_test_split(data, label, test_size=0.2, random_state=1)
# print(X_train.shape, X_test.shape, y_train.shape, y_test.shape )
# # 训练
# svm_model = SVC(kernel='rbf', decision_function_shape="ovr")
# svm_model.fit(X_train, y_train)
#
# # 预测
# predict = svm_model.predict(X_test)
# print(metrics.classification_report(y_test, predict))


frame = ["reentrancy", "timestamp", "delegatecall", "integeroverflow", "SBunchecked_low_level_calls"]
for vul in frame:
    vulnerability = pd.read_csv("./data/"+vul+".csv", index_col=0)
    vul_label = pd.read_csv("../../data/simpleOpcode/"+vul+".csv")["label"]
    normal = pd.read_csv("./data/normal.csv", index_col=0)
    nor_label = pd.DataFrame(np.zeros(normal.shape[0]))
    data = pd.concat([vulnerability, normal], axis=0).values
    label = pd.concat([vul_label, nor_label], axis=0).values.ravel()

    X_train, X_test, y_train, y_test = train_test_split(data, label, test_size=0.2, random_state=1)

    KNN = KNeighborsClassifier(n_neighbors=10)
    KNN.fit(X_train, y_train)
    predict = KNN.predict(X_test)
    # svm_model = SVC(kernel='rbf')
    # svm_model.fit(X_train, y_train)
    # predict = svm_model.predict(X_test)
    print(metrics.classification_report(y_test, predict))
