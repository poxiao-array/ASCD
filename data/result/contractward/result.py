"""
DNN训练(多个二分类任务)
"""
import keras.models
import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from tools import label_num, getsequence, get_onehot
import tensorflow as tf

"""创建模型"""
from keras.models import Model
from keras.layers import Dense, Input
tf.random.set_seed(5)
# 定义LSTM模型
inputs = Input(name='inputs', shape=[1038])
#inputs = tf.reshape(inputs, [-1, 1, 128])
#layer = LSTM(64, name="LSTM")(inputs)
layer = Dense(32, activation="relu", name="FC1")(inputs)
layer = Dense(2, activation="softmax", name="FC2")(layer)
model = Model(inputs=inputs, outputs=layer)
model.summary()


files = ["SBaccess_control", "SBarithmetic", "SBdenial_of_service",
            "SBfront_running", "SBshort_address", "SBunchecked_low_level_calls"]
for vul in files:
    filepath = "../../data"

    # 读取数据
    vulnerability = pd.read_csv("./data/" + vul + ".csv", index_col=0).values
    vul_label = pd.read_csv("../../data/simpleOpcode/"+vul+".csv")["label"]

    from keras.models import load_model
    # 导入已经训练好的模型并对验证集进行预测
    model1 = load_model('contractwarddelegatecall.h5')
    test_pre1 = np.argmax(model.predict(vulnerability), axis=1)

    model2 = load_model('contractwardintegeroverflow.h5')
    test_pre2 = np.argmax(model.predict(vulnerability), axis=1)

    model3 = load_model('contractwardtimestamp.h5')
    test_pre3 = np.argmax(model.predict(vulnerability), axis=1)

    model4 = load_model('contractwardreentrancy.h5')
    test_pre4 = np.argmax(model.predict(vulnerability), axis=1)

    model5 = load_model('contractwardSBunchecked_low_level_calls.h5')
    test_pre5 = np.argmax(model.predict(vulnerability), axis=1)
    print(test_pre1.shape)

    num = 0
    for i in range(vul_label.shape[0]):
        if vul_label[i] > 0:
            vul_label[i] = 1
        if (test_pre1[i] > 0):# or (test_pre2[i] > 0):# or (test_pre3[i] > 0):# or (test_pre4[i] > 0) or (test_pre5[i] > 0):
            test_pre1[i] = 1
        if (vul_label[i] == 1) and (test_pre1[i] == 1):
            num += 1
    print("num:", num)
    #from sklearn import metrics

    #print(metrics.classification_report(np.argmax(test_y, axis=1), np.argmax(test_pre2, axis=1)))


