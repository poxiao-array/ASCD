import pandas as pd
import numpy as np
import math
import torch
import torch.nn as nn
from torch.utils.data import Dataset, DataLoader
from sklearn.model_selection import train_test_split
from collections import Counter
from sklearn.metrics import accuracy_score, f1_score, classification_report

# 超参数配置
BATCH_SIZE = 128
EMBEDDING_DIM = 128
HIDDEN_DIM = 64
NUM_LAYERS = 2
DROPOUT = 0.3
LR = 0.001
EPOCHS = 100
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
class VulnDetectorTransformer(nn.Module):
    def __init__(self, vocab_size, embedding_dim, hidden_dim, num_layers, dropout):
        super().__init__()
        self.embedding = nn.Embedding(vocab_size, embedding_dim)

        # Transformer配置
        self.pos_encoder = PositionalEncoding(embedding_dim, dropout)
        encoder_layer = nn.TransformerEncoderLayer(
            d_model=embedding_dim,
            nhead=8,  # 注意力头数
            dim_feedforward=hidden_dim,
            dropout=dropout
        )
        self.transformer = nn.TransformerEncoder(encoder_layer, num_layers=num_layers)

        self.fc = nn.Linear(embedding_dim, 1)
        self.dropout = nn.Dropout(dropout)

    def forward(self, x):
        # 嵌入层
        embedded = self.embedding(x) * math.sqrt(self.embedding.embedding_dim)

        # 添加位置编码
        embedded = self.pos_encoder(embedded)

        # Transformer需要(seq_len, batch, features)
        embedded = embedded.permute(1, 0, 2)

        # 通过Transformer层
        transformer_out = self.transformer(embedded)

        # 取最后一个时间步并恢复维度
        output = transformer_out[-1, :, :]
        output = self.dropout(output)
        return torch.sigmoid(self.fc(output))


# 位置编码实现
class PositionalEncoding(nn.Module):
    def __init__(self, d_model, dropout=0.1, max_len=5000):
        super().__init__()
        self.dropout = nn.Dropout(p=dropout)

        pe = torch.zeros(max_len, d_model)
        position = torch.arange(0, max_len, dtype=torch.float).unsqueeze(1)
        div_term = torch.exp(torch.arange(0, d_model, 2).float() * (-math.log(10000.0) / d_model))
        pe[:, 0::2] = torch.sin(position * div_term)
        pe[:, 1::2] = torch.cos(position * div_term)
        pe = pe.unsqueeze(0).transpose(0, 1)
        self.register_buffer('pe', pe)

    def forward(self, x):
        x = x + self.pe[:x.size(0), :]
        return self.dropout(x)


# 主流程
if __name__ == "__main__":
    # 加载数据
    df = pd.read_csv('../../../data/simpleOpcode/train.csv')
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
    model = VulnDetectorTransformer(
        vocab_size=vocab_size,
        embedding_dim=EMBEDDING_DIM,
        hidden_dim=HIDDEN_DIM,
        num_layers=NUM_LAYERS,
        dropout=DROPOUT
    ).to(device)
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
                                       # target_names=['安全', '漏洞'],
                                       # output_dict=True,
                                       # zero_division=0
                                       )
        print(report)

# 保存模型
torch.save(model.state_dict(), "Transformer_abnormal.pth")