import numpy as np
import pandas as pd
import torch
import torch.nn as nn
from sklearn.model_selection import train_test_split


class MyModel(nn.Module):
    def __init__(self, input_size):
        super(MyModel, self).__init__()

        self.embedding = nn.Embedding(input_size, 20)
        self.gru = nn.GRU(20, 64, batch_first=True)
        self.fc1 = nn.Linear(64, 64)
        self.relu = nn.ReLU()
        self.fc2 = nn.Linear(64, 1)
        self.sigmoid = nn.Sigmoid()

    def forward(self, x):
        embedded = self.embedding(x)
        gru_output, _ = self.gru(embedded)
        gru_output = gru_output[:, -1, :]  # 取最后一个时间步的输出
        fc1_output = self.relu(self.fc1(gru_output))
        fc2_output = self.sigmoid(self.fc2(fc1_output))
        return fc2_output


def train_model(model, train_data, train_labels, criterion, optimizer, num_epochs):
    model.train()  # 将模型设置为训练模式
    for epoch in range(num_epochs):
        running_loss = 0.0
        for inputs, labels in zip(train_data, train_labels):
            optimizer.zero_grad()

            outputs = model(inputs)
            loss = criterion(outputs.squeeze(), labels.float())
            loss.backward()
            optimizer.step()

            running_loss += loss.item()

        epoch_loss = running_loss / len(train_data)
        print(f"Epoch {epoch + 1}/{num_epochs}, Loss: {epoch_loss}")


def predict(model, test_data):
    model.eval()  # 将模型设置为评估模式
    predictions = []
    with torch.no_grad():
        for inputs in test_data:
            outputs = model(inputs)
            predicted_labels = (outputs > 0.5).squeeze().int()
            predictions.extend(predicted_labels.tolist())
    return predictions


filepath = "../../data"


def ESCORT(vul):
    # 读取数据
    vulnerability = pd.read_csv("./data/" + vul + ".csv", index_col=0)  # .values#.reshape([-1, 1, 128])
    vul_label = pd.read_csv("../../data/simpleOpcode/" + vul + ".csv")["label"]
    normal = pd.read_csv("./data/normal.csv", index_col=0)  # .iloc[:2000, :]
    nor_label = pd.DataFrame(np.zeros(normal.shape[0]))
    data = pd.concat([vulnerability, normal], axis=0).values
    label = pd.concat([vul_label, nor_label], axis=0).values.ravel()

    X_train, X_test, y_train, y_test = train_test_split(data, label, test_size=0.2, random_state=1)
    print(X_train.shape, X_test.shape, y_train.shape, y_test.shape)

    # 对数据集的标签数据进行one-hot编码
    # train_y = get_onehot(y_train)
    # test_y = get_onehot(y_test)

    model = MyModel(input_size=500)
    criterion = nn.BCELoss()
    optimizer = torch.optim.Adam(model.parameters(), lr=0.001)

    # train_data = ...  # 准备好的训练数据
    # train_labels = ...  # 对应的标签数据

    num_epochs = 10  # 假设训练10个epoch
    train_model(model, X_train, y_train, criterion, optimizer, num_epochs)

    # test_data = ...  # 准备好的测试数据
    predictions = predict(model, X_test)

    from sklearn import metrics
    # print(test_pre.shape,y_test.shape)
    print(metrics.classification_report(np.argmax(y_test, axis=1), np.argmax(predictions, axis=1)))
