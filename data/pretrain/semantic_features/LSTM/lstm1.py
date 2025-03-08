import pandas as pd
import numpy as np
import torch
import torch.nn as nn
from torch.utils.data import Dataset, DataLoader
from sklearn.model_selection import train_test_split
from collections import Counter
from sklearn.metrics import accuracy_score, f1_score, classification_report

# 超参数配置
BATCH_SIZE = 128
EMBEDDING_DIM = 128
HIDDEN_DIM = 256
NUM_LAYERS = 2/.3
DROPOUT = 0.3
LR = 0.001
EPOCHS = 50
MAX_SEQ_LEN = 1000  # 最大序列长度


# 1. 数据预处理
class VulnerabilityDataset(Dataset):
    def __init__(self, sequences, labels, vocab, max_len):
        self.sequences = sequences
        self.labels = labels
        self.vocab = vocab
        self.max_len = max_len

    def __len__(self):
        return len(self.sequences)

    def __getitem__(self, idx):
        seq = self.sequences[idx]
        # 转换为索引并填充/截断
        indexed = [self.vocab[op] for op in seq if op in self.vocab]
        indexed = indexed[:self.max_len] + [0] * (self.max_len - len(indexed))
        return torch.LongTensor(indexed), torch.tensor(self.labels[idx])


# 2. 构建词汇表
def build_vocab(opcode_seqs, min_freq=1):
    counter = Counter()
    for seq in opcode_seqs:
        counter.update(seq)
    vocab = {'<pad>': 0, '<unk>': 1}
    for op, cnt in counter.items():
        if cnt >= min_freq:
            vocab[op] = len(vocab)
    return vocab


# 3. LSTM模型定义
class VulnDetector(nn.Module):
    def __init__(self, vocab_size, embedding_dim, hidden_dim, num_layers, dropout):
        super().__init__()
        self.embedding = nn.Embedding(vocab_size, embedding_dim)
        self.lstm = nn.LSTM(embedding_dim, hidden_dim, num_layers,
                            batch_first=True, dropout=dropout)
        # 新增特征提取层
        self.feature_layer = nn.Linear(hidden_dim, 256)  # 新增
        self.fc = nn.Linear(hidden_dim, 1)
        self.dropout = nn.Dropout(dropout)

    def forward(self, x, extract_features=False):
        embedded = self.embedding(x)
        lstm_out, _ = self.lstm(embedded)
        # lstm_out = self.dropout(lstm_out[:, -1, :])
        # return torch.sigmoid(self.fc(lstm_out))
        features = self.feature_layer(lstm_out[:, -1, :])  # 获取特征
        if extract_features:
            return features
        return torch.sigmoid(self.fc(self.dropout(features)))



# 主流程
if __name__ == "__main__":
    # 加载数据
    df = pd.read_csv('../../../data/simpleOpcode/vul_abnormal.csv')
    opcode_seqs = [row.split() for row in df['opcode']]
    labels = df['label'].values

    # 构建词汇表
    vocab = build_vocab(opcode_seqs)
    vocab_size = len(vocab)

    # 划分数据集
    X_train, X_test, y_train, y_test = train_test_split(
        opcode_seqs, labels, test_size=0.2, random_state=42)

    # 创建Dataset和DataLoader
    train_dataset = VulnerabilityDataset(X_train, y_train, vocab, MAX_SEQ_LEN)
    test_dataset = VulnerabilityDataset(X_test, y_test, vocab, MAX_SEQ_LEN)

    train_loader = DataLoader(train_dataset, batch_size=BATCH_SIZE, shuffle=True)
    test_loader = DataLoader(test_dataset, batch_size=BATCH_SIZE)

    # 初始化模型
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    model = VulnDetector(vocab_size, EMBEDDING_DIM, HIDDEN_DIM, NUM_LAYERS, DROPOUT).to(device)
    criterion = nn.BCELoss()
    optimizer = torch.optim.Adam(model.parameters(), lr=LR)

    # 训练循环
    for epoch in range(EPOCHS):
        model.train()
        total_loss = 0
        for inputs, labels in train_loader:
            inputs, labels = inputs.to(device), labels.float().to(device)

            optimizer.zero_grad()
            outputs = model(inputs).squeeze()
            loss = criterion(outputs, labels)
            loss.backward()
            optimizer.step()

            total_loss += loss.item()

        # 验证
        model.eval()
        all_preds = []#
        all_labels = []#
        correct = 0
        total = 0
        with torch.no_grad():
            for inputs, labels in test_loader:
                inputs, labels = inputs.to(device), labels.float().to(device)
                outputs = model(inputs).squeeze()
                predicted = (outputs > 0.5).float()
                total += labels.size(0)
                correct += (predicted == labels).sum().item()
                all_preds.extend(predicted.cpu().numpy())#
                all_labels.extend(labels.cpu().numpy())#

        print(f"Epoch {epoch + 1}/{EPOCHS}")
        print(f"Train Loss: {total_loss / len(train_loader):.4f}")
        print(f"Test Acc: {correct / total:.4f}\n")
        # 转换为numpy数组
        all_preds = np.array(all_preds)
        all_labels = np.array(all_labels)
        # 生成分类报告
        report = classification_report(all_labels, all_preds,
                                       target_names=['安全', '漏洞'],
                                       # output_dict=True,
                                       # zero_division=0
                                       )
        print(report)

    # 保存模型
    # torch.save(model.state_dict(), "lstm_abnormal.pth")
    # 保存完整模型
    torch.save(model, "lstm_abnormal.pth")
    # 保存vocab
    import pickle
    with open('vocab.pkl', 'wb') as f:
        pickle.dump(vocab, f)

