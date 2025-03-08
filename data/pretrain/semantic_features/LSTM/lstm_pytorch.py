"""
LSTM的pytorch模型
"""
import numpy as np
import pandas as pd
import torch
import torch.nn as nn
from sklearn.model_selection import train_test_split
from sklearn import metrics
from torch.utils.data import Dataset, DataLoader, TensorDataset
from tools import getdataset, label_num, getsequence, get_onehot

max_len = 500
max_words = 64

def getdataset(file):
    data = pd.read_csv(file)
    opcode = data["opcode"].values
    label = data["label"].values

    # 将数据集拆分为训练集和测试集
    # X_train, X_test, y_train, y_test = train_test_split(opcode, label, test_size=0.2, random_state=1)
    # X_train, X_val, y_train, y_val = train_test_split(X_train, y_train, test_size=0.2, random_state=13)
    return opcode, label

def get_onehot(y):
    """对数据集的标签数据进行one-hot编码"""
    from sklearn.preprocessing import LabelEncoder, OneHotEncoder
    le = LabelEncoder()
    y_label = le.fit_transform(y).reshape(-1, 1)
    oh = OneHotEncoder()
    y_onehot = oh.fit_transform(y_label).toarray()
    print(y_onehot.shape)
    return y_onehot


def getsequence(X, modelpath):
    """将每个句子转变成一个向量"""
    import pickle
    # 导入训练好的Tokenizer
    with open(modelpath, 'rb') as handle:
        tok = pickle.load(handle)
    from keras_preprocessing import sequence
    # 对每个词编码之后，每个句子中的每个词就可以用对应的编码表示，即每个句子可以转变成一个向量了
    seq = tok.texts_to_sequences(X)
    # 将每个序列调整为相同的长度
    max_len= 500
    seq_mat = sequence.pad_sequences(seq, maxlen=max_len)
    print("seq_mat", seq_mat.shape)
    return seq_mat

class LSTMModel(torch.nn.Module):
    def __init__(self, max_words=64, embedding_dim=128, hidden_dim=256, num_layers=2, dropout=0.5, requires_grad=True):
        super(LSTMModel, self).__init__()
        # 这是一个保存了固定字典和大小的简单查找表。这个模块常用来保存词嵌入和用下标检索它们。模块的输入是一个下标的列表，输出是对应的词嵌入。
        # embedding: (嵌入字典的大小, 每个嵌入向量的维度)
        self.embedding = nn.Embedding(num_embeddings=max_words, embedding_dim=embedding_dim)
        self.LSTM = nn.LSTM(embedding_dim, hidden_dim, num_layers=num_layers, batch_first=True, bidirectional=True)
        self.classifier = nn.Sequential(
            nn.Dropout(dropout),
            nn.Linear(hidden_dim, 6),
        )

        self.res = nn.Softmax(dim=0)

    def forward(self, inputs):
        # print("input.shape:",inputs.shape)
        x = self.embedding(inputs)
        # print("embedding.shape:", x.shape)
        x, _ = self.LSTM(x, None)
        # print("lstm.shape:", x.shape)
        # x.shape = (batch_size, seq_len, hidden_size)
        # 取用 LSTM 最后一个的 hidden state
        x = x[:, -1, :]
        x = self.classifier(x)
        # print("classifier.shape:", x.shape)
        x = self.res(x)
        # print("res.shape:", x.shape)
        return x




if __name__ == "__main__":
    # 参数设置
    max_len = 500
    max_words = 64
    batchsize = 128

    # 读取和加载数据
    print("loding data...")
    filepath = "../../../data/dataset/train.csv"
    opcode, label = getdataset(filepath)
    # 查看训练集都有哪些标签
    # label_num(y_train)
    # 对数据集的标签数据进行one-hot编码
    label = get_onehot(label)
    # 使用Tokenizer对词组进行编码
    filepath = "../../../pretreatment/tok.pickle"
    opcode = getsequence(opcode, filepath)
    label = torch.from_numpy(label)
    opcode = torch.from_numpy(opcode)
    X_train, X_test, y_train, y_test = train_test_split(
        opcode, label, test_size=0.2, random_state=1)
    print(X_train.shape, X_test.shape, y_train.shape, y_test.shape)
    train_data = TensorDataset(X_train, y_train)
    train_data_loader = DataLoader(train_data, batch_size=batchsize, shuffle=False)
    test_data = TensorDataset(X_test, y_test)
    test_data_loader = DataLoader(test_data, batch_size=batchsize, shuffle=False)
    print("over")

    # 建模三件套：loss，优化，epochs
    model = LSTMModel()
    loss_function = nn.BCELoss()  # loss
    optimizer = torch.optim.Adam(model.parameters(), lr=0.001)  # 优化器
    epochs = 100

    print(model)

    model.train()
    for i in range(epochs):
        for step, data in enumerate(train_data_loader):
            inputs, labels = data
            # 前向传播
            out = model(inputs).squeeze().to(torch.float32)
            labels = labels.to(torch.float32)
            # 计算损失函数
            loss = loss_function(out, labels)
            # 清空上一轮的梯度
            optimizer.zero_grad()
            # 反向传播
            loss.backward()
            # 参数更新
            optimizer.step()
            print("Train Step:", i, " loss: ", loss.numpy(), )


    '''save model'''
    torch.save(model, 'lstm5.pth')
    '''save params'''
    #torch.save(model.state_dict(), 'lstm_params.pth')
    '''load model'''
    model2 = torch.load('lstm5.pth')
    '''load params'''
    #model2.load_state_dict(torch.load('lstm5.pth'))

    from sklearn import metrics
    y_pred = model2(X_test).detach().numpy()
    print(metrics.classification_report(np.argmax(y_test, axis=1), np.argmax(y_pred, axis=1)))


    # # 开始验证
    # model2.eval()
    # for i in range(epochs):
    #     for seq, labels in test_data_loader:  # 这里偷个懒，就用训练数据验证哈！
    #         y_pred = model2(seq).squeeze().to(torch.float32)
    #         labels = labels.to(torch.float32)
    #         single_loss = loss_function(y_pred, labels)
    #         print("EVAL Step:", i, " loss: ", single_loss)