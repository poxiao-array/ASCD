"""
训练DNN网络分类DeepSVDD过滤出的异常合约(多个二分类任务)
"""
import keras.models
import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from tools import label_num, getsequence, get_onehot
import tensorflow as tf
# BUFFER_SIZE = 10000
# BATCHSIZE = 64  # 根据显存设置

def main(vul, num):
    # 读取数据
    reentrancy = pd.read_csv("../data/dataset/features/fused2/5reentrancy.csv", index_col=0)
    reen_label = pd.read_csv("../data/simpleOpcode/reentrancy.csv")["label"]
    timestamp = pd.read_csv("../data/dataset/features/fused2/5timestamp.csv", index_col=0)
    tim_label = pd.read_csv("../data/simpleOpcode/timestamp.csv")["label"]
    delegatecall= pd.read_csv("../data/dataset/features/fused2/5delegatecall.csv", index_col=0)
    del_label = pd.read_csv("../data/simpleOpcode/delegatecall.csv")["label"]
    SBunchecked_low_level_calls = pd.read_csv("../data/dataset/features/fused2/5SBunchecked_low_level_calls.csv", index_col=0)
    uncheck_label = pd.read_csv("../data/simpleOpcode/SBunchecked_low_level_calls.csv")["label"]
    normal = pd.read_csv("../data/dataset/features/fused2/5normal.csv", index_col=0)#.values#.reshape([-1, 1, 128])
    nor_label = pd.DataFrame(np.zeros(4588))
    data = pd.concat([normal, reentrancy, timestamp, delegatecall, SBunchecked_low_level_calls], axis=0).values
    label = pd.concat([nor_label, reen_label, tim_label, del_label, uncheck_label], axis=0).values.ravel()

    for i in range(label.shape[0]):
        if label[i] == num:
            label[i] = 1
        else:
            label[i] = 0

    X_train, X_test, y_train, y_test = train_test_split(data, label, test_size=0.2, random_state=1)
    print(X_train.shape, X_test.shape, y_train.shape, y_test.shape)

    # 对数据集的标签数据进行one-hot编码
    train_y = get_onehot(y_train)
    test_y = get_onehot(y_test)


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

    from keras.optimizers.optimizer_v2.rmsprop import RMSProp
    model.compile(loss="categorical_crossentropy", optimizer=RMSProp(), metrics=["accuracy"])

    """模型的训练和预测"""
    # 模型训练
    model_fit = model.fit(X_train, train_y, batch_size=128, epochs=350
                          #validation_data=(val_seq_mat, val_y),
                          )
    loss = model_fit.history['loss']
    # val_loss = model_fit.history['val_loss']

    # 对测试集进行预测
    test_pre = model.predict(X_test)
    # 混淆矩阵可视化
    # visionable(test_pre, y_test)
    # 使用指标对效果进行验证
    from sklearn import metrics

    # print(test_pre.shape,y_test.shape)
    print(metrics.classification_report(np.argmax(test_y, axis=1), np.argmax(test_pre, axis=1)))


    """模型的保存和复用"""
    # 保存模型
    # 模型的保存和导入
    from keras.models import load_model

    # 保存模型
    model.save('DNN5_'+vul+'.h5')
    del model  # deletes the existing model
    # 导入已经训练好的模型
    model = load_model('DNN5_'+vul+'.h5')

    # 对验证集进行预测
    test_pre2 = model.predict(X_test)
    print(metrics.classification_report(np.argmax(test_y, axis=1), np.argmax(test_pre2, axis=1)))

if __name__=="__main__":
    file = ["reentrancy", "timestamp", "delegatecall",
             "SBunchecked_low_level_calls"]
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
        main(name, num)
