import numpy as np
import pandas as pd
import scipy.io as sio
import random
from sklearn import metrics

seed = 1337
random.seed(seed)
np.random.seed(seed)

"""创建模型"""
from keras.models import Model
from keras.layers import LSTM, Activation, Dense, Dropout, Input, Embedding, Conv1D

# 定义LSTM模型
inputs = Input(name='inputs', shape=[64])
#inputs = tf.reshape(inputs, [-1, 1, 128])
#layer = LSTM(64, name="LSTM")(inputs)
layer = Dense(32, activation="relu", name="FC1")(inputs)
layer = Dense(2, activation="softmax", name="FC2")(layer)
model = Model(inputs=inputs, outputs=layer)
model.summary()

def result(vul, num):
    # label
    normal_label = pd.read_csv("../data/simpleOpcode/normal.csv")["label"]
    reen_label = pd.read_csv("../data/simpleOpcode/reentrancy.csv")["label"]
    time_label = pd.read_csv("../data/simpleOpcode/timestamp.csv")["label"]
    delegate_label = pd.read_csv("../data/simpleOpcode/delegatecall.csv")["label"]
    unchecked_label = pd.read_csv("../data/simpleOpcode/SBunchecked_low_level_calls.csv")["label"]
    label = pd.concat([normal_label, reen_label, time_label, delegate_label, unchecked_label], axis=0).values
    print(label.shape)

    for i in range(label.shape[0]):
        if label[i] == num:
            label[i] = 1
        else:
            label[i] = 0


    # vulneratility_score
    normal_score = pd.read_csv("score/5_normal_score3.csv")["0"]
    reen_score = pd.read_csv("score/5_reentrancy_score3.csv")["0"]
    time_score = pd.read_csv("score/5_timestamp_score3.csv")["0"]
    delegate_score = pd.read_csv("score/5_delegatecall_score3.csv")["0"]
    unchecked_score = pd.read_csv("score/5_SBunchecked_low_level_calls_score3.csv")["0"]
    score = pd.concat([normal_score, reen_score, time_score, delegate_score, unchecked_score], axis=0).values
    print(score.shape)

    for i in range(len(score)):
        score[i] = score[i] / 10

    print("vulnerability_score============================================")
    v = 0
    n = 0
    for i in range(len(score)):
        if label[i] > 0:
            v = v + score[i]
            n = n + 1
            # print(score[i])
    print("vul_avg", v/n)
    print("\n normal_score==================================================")
    nol = 0
    n = 0
    for i in range(len(score)):
        if label[i] == 0:
            nol = nol + score[i]
            n = n + 1
            # print(score[i])
    print("nol_avg", nol / n)

    # 读取数据
    reentrancy = pd.read_csv("../data/dataset/features/fused2/5reentrancy.csv", index_col=0)
    timestamp = pd.read_csv("../data/dataset/features/fused2/5timestamp.csv", index_col=0)
    delegatecall = pd.read_csv("../data/dataset/features/fused2/5delegatecall.csv", index_col=0)
    SBunchecked_low_level_calls = pd.read_csv("../data/dataset/features/fused2/5SBunchecked_low_level_calls.csv", index_col=0)
    normal = pd.read_csv("../data/dataset/features/fused2/5normal.csv", index_col=0)
    data = pd.concat([normal, reentrancy, timestamp, delegatecall, SBunchecked_low_level_calls], axis=0).values

    from keras.models import load_model
    # 导入已经训练好的模型
    model = load_model('DNN5_' + vul + '.h5')

    # 对验证集进行预测
    test_pre = np.argmax(model.predict(data), axis=1)



    for i in range(len(score)):
        if score[i] <= 11:    # 阈值
            test_pre[i] = 0
        # else:
        #     score[i] = 1
        # if label[i] > 0:
        #     label[i] = 1

    from sklearn.metrics import classification_report, roc_curve
    print(classification_report(label, test_pre))
    # print(metrics.classification_report(np.argmax(test_y, axis=1), np.argmax(test_pre2, axis=1)))


file = ["reentrancy", "timestamp", "delegatecall", "SBunchecked_low_level_calls"]
num = 0
for name in file:
    if name == "reentrancy":
        num = 1
    if name == "timestamp":
        num = 2
    if name == "delegatecall":
        num = 4
    if name == "SBunchecked_low_level_calls":
        num = 5
    print((name + "============================="))
    result(name, num)




