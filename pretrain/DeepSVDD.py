import torch
import pandas as pd
import numpy as np
from torch import nn
from torch_geometric.nn import GINEConv, global_mean_pool
from torch.utils.data import Dataset, DataLoader
from sklearn.model_selection import train_test_split
import os
from semantic_features.LSTM.lstm1 import build_vocab, VulnerabilityDataset
from control_flow_features.GIN.GIN2 import ContractDataset


# ====================== 特征提取模块 ======================#
class FeatureExtractorLSTM(nn.Module):
    def __init__(self, vocab_size, embedding_dim, hidden_dim, num_layers, dropout):
        super().__init__()
        self.embedding = nn.Embedding(vocab_size, embedding_dim)
        self.lstm = nn.LSTM(embedding_dim, hidden_dim, num_layers,
                            batch_first=True, dropout=dropout)

    def forward(self, x):
        embedded = self.embedding(x)
        lstm_out, _ = self.lstm(embedded)
        return lstm_out[:, -1, :]  # 返回最后一个时间步的输出


class FeatureExtractorGIN(nn.Module):
    def __init__(self, vocab_size, hidden_dim=128):
        super().__init__()
        self.edge_emb = nn.Embedding(4, hidden_dim)
        self.conv1 = GINEConv(...)  # 保持与原始GIN相同的结构
        self.conv2 = GINEConv(...)  # 需要从原GIN模型复制相关层

    def forward(self, data):
        x, edge_index, edge_attr, batch = data.x, data.edge_index, data.edge_attr, data.batch
        edge_emb = self.edge_emb(edge_attr)
        x = self.conv1(x, edge_index, edge_emb)
        x = self.conv2(x, edge_index, edge_emb)
        return global_mean_pool(x, batch)  # 返回池化后的特征


# ====================== 特征拼接数据集 ======================#
class CombinedFeatureDataset(Dataset):
    def __init__(self, lstm_data, gin_data, labels):
        self.lstm_features = lstm_data
        self.gin_features = gin_data
        self.labels = labels

    def __len__(self):
        return len(self.labels)

    def __getitem__(self, idx):
        return (
            torch.cat([self.lstm_features[idx], self.gin_features[idx]], dim=-1),
            self.labels[idx]
        )


# ====================== DeepSVDD 模型 ======================#
class DeepSVDD(nn.Module):
    def __init__(self, input_dim, hidden_dims=[128, 64]):
        super().__init__()
        layers = []
        prev_dim = input_dim
        for dim in hidden_dims:
            layers.append(nn.Linear(prev_dim, dim))
            layers.append(nn.ReLU())
            prev_dim = dim
        self.encoder = nn.Sequential(*layers)
        self.center = nn.Parameter(torch.randn(hidden_dims[-1]), requires_grad=False)

    def forward(self, x):
        encoded = self.encoder(x)
        return torch.sqrt(torch.sum((encoded - self.center) ** 2, dim=1))  # 异常分数


# ====================== 主流程 ======================#
def main():
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    # 加载预训练模型
    lstm_model = FeatureExtractorLSTM(vocab_size=77, embedding_dim=128,
                                      hidden_dim=64, num_layers=2, dropout=0.3)
    lstm_model.load_state_dict(torch.load("./semantic_features/LSTM/lstm_abnormal.pth"))
    lstm_model.eval()

    gin_model = FeatureExtractorGIN(vocab_size=64)
    gin_model.load_state_dict(torch.load("gin_anomaly.pth"))
    gin_model.eval()

    # 提取特征
    def extract_features(model, data_loader, is_graph=False):
        features = []
        with torch.no_grad():
            for batch in data_loader:
                if is_graph:
                    feat = model(batch)
                else:
                    feat = model(batch[0].to(device))
                features.append(feat.cpu())
        return torch.cat(features, dim=0)

    # # 假设已有数据加载器
    # lstm_train_loader = ...  # 原LSTM数据加载方式
    # gin_train_loader = ...  # 原GIN数据加载方式
    # labels = ...  # 标签数据

    # 加载操作码数据
    df = pd.read_csv('../data/simpleOpcode/vul_abnormal.csv')
    opcode_seqs = [row.split() for row in df['opcode']]
    labels = df['label'].values
    # 构建词汇表
    vocab = build_vocab(opcode_seqs)
    # vocab_size = len(vocab)
    # 创建Dataset和DataLoader
    lstm_dataset = VulnerabilityDataset(opcode_seqs, labels, vocab, 1000)
    lstm_train_loader = DataLoader(lstm_dataset, batch_size=128, shuffle=False)

    # 加载graph数据
    dataset = ContractDataset('./../data/binary_graph_data')
    gin_train_loader = DataLoader(dataset, batch_size=128, shuffle=False)




    lstm_features = extract_features(lstm_model, lstm_train_loader)
    gin_features = extract_features(gin_model, gin_train_loader, is_graph=True)

    # 创建组合数据集
    combined_dataset = CombinedFeatureDataset(lstm_features, gin_features, labels)
    train_data, val_data = train_test_split(combined_dataset, test_size=0.2)

    # 初始化DeepSVDD
    input_dim = lstm_features.shape[1] + gin_features.shape[1]
    model = DeepSVDD(input_dim)
    optimizer = torch.optim.Adam(model.parameters(), lr=1e-3)

    # 训练循环
    for epoch in range(100):
        model.train()
        total_loss = 0
        for x, _ in DataLoader(train_data, batch_size=64):
            optimizer.zero_grad()
            scores = model(x)
            loss = torch.mean(scores)  # 最小化正常样本到中心的距离
            loss.backward()
            optimizer.step()
            total_loss += loss.item()

        # 更新中心（使用正常样本）
        with torch.no_grad():
            normal_features = [x for x, y in train_data if y == 0]
            model.center.data = model.encoder(torch.stack(normal_features)).mean(dim=0)

        print(f"Epoch {epoch} Loss: {total_loss / len(train_data):.4f}")

    # 保存完整模型
    torch.save({
        'lstm': lstm_model.state_dict(),
        'gin': gin_model.state_dict(),
        'deepsvdd': model.state_dict(),
        'center': model.center.data
    }, "anomaly_detection.pth")


if __name__ == "__main__":
    main()