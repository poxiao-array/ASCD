import numpy as np
import torch
import torch.nn as nn
from sklearn.model_selection import train_test_split
from torch.utils.data import Dataset, DataLoader, TensorDataset
from tools import getdataset, label_num, getsequence, get_onehot
max_len = 500
max_words = 64
batchsize = 128

class LSTMModel(torch.nn.Module):
    def __init__(self, max_words=64, embedding_dim=64, hidden_dim=128, num_layers=1, dropout=0.5, requires_grad=True):
        super(LSTMModel, self).__init__()
        # 这是一个保存了固定字典和大小的简单查找表。这个模块常用来保存词嵌入和用下标检索它们。模块的输入是一个下标的列表，输出是对应的词嵌入。
        # embedding: (嵌入字典的大小, 每个嵌入向量的维度)
        self.embedding = nn.Embedding(num_embeddings=max_words, embedding_dim=embedding_dim)
        self.LSTM = nn.LSTM(embedding_dim, hidden_dim, num_layers=num_layers, batch_first=True)
        self.classifier = nn.Sequential(
            nn.Dropout(dropout),
            nn.Linear(hidden_dim, 6),
        )

        self.res = nn.Softmax(dim=1)

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


print("loding data...")
filepath = "../../../data/dataset/final.csv"
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

'''load model'''
model2 = torch.load('lstm5.pth')
'''load params'''
#model2.load_state_dict(torch.load('lstm5.pth'))
from sklearn import metrics
y_pred = model2(X_test).detach().numpy()
print(y_pred)
print(metrics.classification_report(np.argmax(y_test, axis=1), np.argmax(y_pred, axis=1)))