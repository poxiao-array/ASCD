"""调用模型训练"""

import torch
from sklearn.model_selection import train_test_split

device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")

import matplotlib
import matplotlib.pyplot as plt
matplotlib.use('TkAgg')
import numpy as np
from tools import getdataset2, label_num, getsequence, get_onehot

# 参数设置
max_len = 500
max_words = 64

# 读取数据
filepath = "../../../data/dataset/final2.csv"
X_train, X_val, X_test, y_train, y_val, y_test = getdataset2(filepath)
print(X_train.shape, X_val.shape, X_test.shape, y_train.shape, y_val.shape, y_test.shape)

# 查看训练集都有哪些标签
# label_num(y_train)

# 对数据集的标签数据进行one-hot编码
train_y = get_onehot(y_train)
val_y = get_onehot(y_test)
test_y = get_onehot(y_val)

# 使用Tokenizer对词组进行编码
filepath = "../../../pretreatment/tok.pickle"
train_seq_mat = getsequence(X_train, filepath)
val_seq_mat = getsequence(X_val, filepath)
test_seq_mat = getsequence(X_test, filepath)


def train(train_loader, model, criterion, optimizer, epoch):
    # 將 model 的模式设定为 train，这样 optimizer 就可以更新 model 的参数
    model.train()

    train_len = len(train_loader)
    total_loss, total_acc = 0, 0

    for i, (inputs, labels) in enumerate(train_loader):
        # 1. 放到GPU上
        inputs = inputs.to(device, dtype=torch.long)
        labels = labels.to(device, dtype=torch.float)  # 类型为float
        # 2. 清空梯度
        optimizer.zero_grad()
        # 3. 计算输出
        outputs = model(inputs)
        outputs = outputs.squeeze()  # 去掉最外面的 dimension
        # 4. 计算损失
        loss = criterion(outputs, labels)
        total_loss += loss.item()
        # 5.预测结果
        correct = evaluate(outputs, labels)
        total_acc += (correct / batch_size)
        # 6. 反向传播
        loss.backward()
        # 7. 更新梯度
        optimizer.step()
        print('[ Epoch{}: {}/{} ] loss:{:.3f} acc:{:.3f} '.
              format(epoch + 1, i + 1, batch_size, loss.item(), correct * 100 / batch_size), end='\r')
    print('\nTrain | Loss:{:.5f} Acc: {:.3f}'.format(total_loss / train_len, total_acc / train_len * 100))


def validate(val_loader, model, criterion):
    model.eval()  # 將 model 的模式设定为 eval，固定model的参数

    val_len = len(val_loader)

    with torch.no_grad():
        total_loss, total_acc = 0, 0
        for i, (inputs, labels) in enumerate(val_loader):
            # 1. 放到GPU上
            inputs = inputs.to(device, dtype=torch.long)
            labels = labels.to(device, dtype=torch.float)
            # 2. 计算输出
            outputs = model(inputs)
            outputs = outputs.squeeze()
            # 3. 计算损失
            loss = criterion(outputs, labels)
            total_loss += loss.item()
            # 4. 预测结果
            correct = evaluate(outputs, labels)
            total_acc += (correct / batch_size)
        print("Valid | Loss:{:.5f} Acc: {:.3f} ".format(total_loss / val_len, total_acc / val_len * 100))
    print('-----------------------------------------------')

    return total_acc / val_len * 100




# split data
x_train, x_test, y_train, y_test = train_test_split(data_x, data_y, test_size=0.3, random_state=5)
# 构造Dataset
# train_dataset = TwitterDataset(x_train, y_train)
val_dataset = TwitterDataset(x_train, y_train)

# preparing the training loader
train_loader = DataLoader(dataset=train_dataset, batch_size=batch_size, shuffle=True)
print('Training loader prepared.')
# preparing the validation loader
val_loader = DataLoader(dataset=val_dataset, batch_size=batch_size, shuffle=False)
print('Validation loader prepared.')

# load model
model = LSTMModel(
    embedding,
    embedding_dim=300,
    hidden_dim=128,
    num_layers=1,
    dropout=0.5,
    requires_grad=requires_grad
).to(device)

# 返回model中的参数的总数目
total = sum(p.numel() for p in model.parameters())
trainable = sum(p.numel() for p in model.parameters() if p.requires_grad)
print('\nstart training, parameter total:{}, trainable:{}\n'.format(total, trainable))

# loss function is binary cross entropy loss, 常见的二分类损失函数
criterion = nn.BCELoss()
# 使用Adam优化器
optimizer = optim.Adam(model.parameters(), lr=lr)

best_acc = 0.

# run epochs
for epoch in range(epochs):
    # train for one epoch
    train(train_loader, model, criterion, optimizer, epoch)

    # evaluate on validation set
    total_acc = validate(val_loader, model, criterion)

    if total_acc > best_acc:
        # 如果 validation 的结果好于之前所有的结果，就把当下的模型保存
        best_acc = total_acc
        # torch.save(model, "{}/val_acc_{:.3f}.model".format(model_dir,total_acc/v_batch*100))
        torch.save(model, "{}/ckpt.model".format(model_dir))
        print('saving model with acc {:.3f}'.format(total_acc / len(val_loader) * 100))
