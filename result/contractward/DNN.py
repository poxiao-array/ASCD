"""
DNN训练(多个二分类任务)
"""
import keras.models
import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from tools import label_num, getsequence, get_onehot
import tensorflow as tf
# BUFFER_SIZE = 10000
# BATCHSIZE = 64  # 根据显存设置

filepath = "../../data"
def main(vul):
    # 读取数据
    vulnerability = pd.read_csv("./data/" + vul + ".csv", index_col=0)  #.values#.reshape([-1, 1, 128])
    vul_label = pd.read_csv("../../data/simpleOpcode/"+vul+".csv")["label"]
    normal = pd.read_csv("./data/normal.csv", index_col=0)  # .iloc[:2000, :]
    nor_label = pd.DataFrame(np.zeros(normal.shape[0]))
    data = pd.concat([vulnerability, normal], axis=0).values
    label = pd.concat([vul_label, nor_label], axis=0).values.ravel()


    X_train, X_test, y_train, y_test = train_test_split(data, label, test_size=0.2, random_state=1)
    print(X_train.shape, X_test.shape, y_train.shape, y_test.shape)

    # 查看训练集都有哪些标签
    # label_num(y_train)

    # 对数据集的标签数据进行one-hot编码
    train_y = get_onehot(y_train)
    test_y = get_onehot(y_test)


    """创建模型"""
    from keras.models import Model
    from keras.layers import LSTM, Activation, Dense, Dropout, Input, Embedding, Conv1D

    # 定义LSTM模型
    inputs = Input(name='inputs', shape=[580])
    #inputs = tf.reshape(inputs, [-1, 1, 128])
    #layer = LSTM(64, name="LSTM")(inputs)
    layer = Dense(64, activation="relu", name="FC1")(inputs)
    layer = Dropout(0.5)(layer)
    layer = Dense(2, activation="softmax", name="FC2")(layer)
    model = Model(inputs=inputs, outputs=layer)
    model.summary()

    from keras.optimizers.optimizer_v2.rmsprop import RMSProp
    model.compile(loss="categorical_crossentropy", optimizer=RMSProp(), metrics=["accuracy"])

    """模型的训练和预测"""
    # 模型训练
    model_fit = model.fit(X_train, train_y, batch_size=128, epochs=50
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
    model.save('contractward'+vul+'.h5')
    del model  # deletes the existing model
    # 导入已经训练好的模型
    model = load_model('contractward'+vul+'.h5')

    # 对验证集进行预测
    test_pre2 = model.predict(X_test)
    print(metrics.classification_report(np.argmax(test_y, axis=1), np.argmax(test_pre2, axis=1)))

if __name__=="__main__":
    file = ["reentrancy", "timestamp", "delegatecall",
            "integeroverflow", "SBunchecked_low_level_calls"]
    for vul in file:
        main(vul)
