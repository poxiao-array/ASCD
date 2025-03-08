from keras.models import Model
from keras.layers import LSTM, Activation, Dense, Dropout, Input, Embedding, Conv1D
import pandas as pd
import numpy as np
import os
os.environ['TF_CPP_MIN_LOG_LEVEL']='2'


"""模型"""
max_words = 64  # 使用的最大词语数为64
max_len = 500  # 句子的最大长度为500
# 定义LSTM模型
inputs = Input(name='inputs', shape=[max_len])
# Embedding(词汇表大小,batch大小,每个新闻的词长)
layer = Embedding(max_words + 1, 128, input_length=max_len)(inputs)
# layer = Conv1D(128, 3, 2, activation="relu")(layer)
# layer = Conv1D(128, 3, 2, activation="relu")(layer)
layer = LSTM(64, name="LSTM")(layer)
# layer = Dense(128, activation="relu", name="FC1")(layer)
layer = Dropout(0.5)(layer)
layer = Dense(6, activation="softmax", name="FC2")(layer)
model = Model(inputs=inputs, outputs=layer)
model.summary()

# 导入训练好的模型
from keras.models import load_model
model = load_model('lstm5.h5')



def get_features(seq_mat):
    import tensorflow as tf

    sub_model1 = tf.keras.Model(inputs=model.input, outputs=model.get_layer("LSTM").output)
    feature1 = sub_model1.predict(seq_mat, batch_size=128, verbose=1)
    df1 = pd.DataFrame(feature1)
    file = "../../../data/dataset/features/lstm/lstm5_" + vul + "1.csv"
    df1.to_csv(file)

    sub_model2 = tf.keras.Model(inputs=model.input, outputs=model.get_layer("FC").output)
    feature2 = sub_model2.predict(seq_mat, batch_size=128, verbose=1)
    df2 = pd.DataFrame(feature2)
    file = "../../../data/dataset/features/lstm/lstm5_" + vul + "2.csv"
    df2.to_csv(file)


file = ["reentrancy", "timestamp", "delegatecall", "integeroverflow",
            "SBaccess_control", "SBarithmetic", "SBdenial_of_service",
            "SBfront_running", "SBreentrancy", "SBshort_address",
            "SBunchecked_low_level_calls", "normal"]
# file = ["reentrancy"]
for vul in file:
    """读入数据"""
    data = pd.read_csv("../../../data/simpleOpcode/" + vul + ".csv")
    opcode = data["opcode"].values
    label = data["label"].values
    # 导入训练好的Tokenizer
    from tools import getsequence
    filepath = "../../../pretreatment/tok.pickle"
    seq_mat = getsequence(opcode, filepath)
    get_features(seq_mat)

