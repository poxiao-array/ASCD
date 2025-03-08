"""
LSTM的tensorflow模型
"""
import matplotlib
import matplotlib.pyplot as plt
matplotlib.use('TkAgg')
import numpy as np
import pandas as pd
from tools import getdataset2, label_num, getsequence, get_onehot
import tensorflow as tf

def main(vul, num):
    # BUFFER_SIZE = 10000
    # BATCHSIZE = 64  # 根据显存设置
    max_len = 500
    max_words = 64

    # 读取数据
    filepath = "../../../data/dataset/final.csv"
    X_train, X_val, X_test, y_train, y_val, y_test = getdataset2(filepath, num)
    print(X_train.shape, X_val.shape, X_test.shape, y_train.shape, y_val.shape, y_test.shape)

    # 查看训练集都有哪些标签
    # label_num(y_train)

    # 对数据集的标签数据进行one-hot编码
    train_y = get_onehot(y_train)
    val_y = get_onehot(y_val)
    test_y = get_onehot(y_test)

    # 使用Tokenizer对词组进行编码
    filepath = "../../../pretreatment/tok.pickle"
    train_seq_mat = getsequence(X_train, filepath)
    val_seq_mat = getsequence(X_val, filepath)
    test_seq_mat = getsequence(X_test, filepath)

    """创建模型"""
    from keras.models import Model
    from keras.layers import LSTM, Activation, Dense, Dropout, Input, Embedding, Conv1D

    # 定义LSTM模型
    inputs = Input(name='inputs', shape=[max_len])
    # Embedding(词汇表大小,batch大小,每个新闻的词长)
    layer = Embedding(max_words + 1, 128, input_length=max_len)(inputs)
    # layer = Conv1D(128, 3, 2, activation="relu")(layer)
    # layer = Conv1D(128, 3, 2, activation="relu")(layer)
    layer = LSTM(64, name="LSTM")(layer)
    layer = Dense(64, activation="relu", name="FC")(layer)
    # layer = Dropout(0.5)(layer)
    layer = Dense(2, activation="softmax", name="FC2")(layer)
    model = Model(inputs=inputs, outputs=layer)
    model.summary()

    from keras.optimizers.optimizer_v2.rmsprop import RMSProp
    # model.compile(loss="SparseCategoricalCrossentropy", optimizer=rmsprop_v2(), metrics=["accuracy"])
    model.compile(loss="categorical_crossentropy", optimizer=RMSProp(), metrics=["accuracy"])

    """模型的训练和预测"""
    # 模型训练
    from keras.callbacks import EarlyStopping
    model_fit = model.fit(train_seq_mat, train_y, batch_size=128, epochs=350,
                          validation_data=(val_seq_mat, val_y),
                          # callbacks=[EarlyStopping(monitor='val_loss', min_delta=0.0001)]  # 当val_loss不再提升时停止训练
                          )
    loss = model_fit.history['loss']
    val_loss = model_fit.history['val_loss']

    # plt.plot(loss)
    # plt.plot(val_loss)
    # plt.legend(labels=['loss', 'val_loss'])
    # plt.show()
    # 对测试集进行预测
    test_pre = model.predict(test_seq_mat)
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
    model.save('lstm5.h5')
    del model  # deletes the existing model
    # 导入已经训练好的模型
    model = load_model('lstm5.h5')

    # 对验证集进行预测
    val_pre = model.predict(val_seq_mat)
    print(metrics.classification_report(np.argmax(val_y, axis=1), np.argmax(val_pre, axis=1)))

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
        if name == "transaction_order":
            num = 5
        main(name, num)