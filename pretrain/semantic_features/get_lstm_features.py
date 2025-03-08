import pandas as pd
import numpy as np
import torch
from torch.utils.data import Dataset, DataLoader
import pickle

# 参数设置（必须与训练时一致）
BATCH_SIZE = 128
MAX_SEQ_LEN = 1000
DEVICE = torch.device("cuda" if torch.cuda.is_available() else "cpu")


# 定义专用数据集类
class FeatureExtractionDataset(Dataset):
    def __init__(self, sequences, vocab, max_len):
        self.sequences = sequences
        self.vocab = vocab
        self.max_len = max_len

    def __len__(self):
        return len(self.sequences)

    def __getitem__(self, idx):
        seq = self.sequences[idx]
        # 保持与训练时完全一致的预处理逻辑
        indexed = [self.vocab.get(op, 1) for op in seq]  # <unk>=1
        indexed = indexed[:self.max_len] + [0] * (self.max_len - len(indexed))
        return torch.LongTensor(indexed)


def extract_features():
    # 加载词汇表
    with open('vocab.pkl', 'rb') as f:
        vocab = pickle.load(f)

    # 加载新数据
    new_df = pd.read_csv('reentrancy.csv')
    new_sequences = [seq.split() for seq in new_df['opcode']]

    # 创建数据加载器
    dataset = FeatureExtractionDataset(new_sequences, vocab, MAX_SEQ_LEN)
    loader = DataLoader(dataset, batch_size=BATCH_SIZE, shuffle=False)

    # 加载模型
    model = torch.load("lstm_abnormal.pth", map_location=DEVICE)
    model.eval()

    # 提取特征
    features = []
    with torch.no_grad():
        for batch in loader:
            inputs = batch.to(DEVICE)
            batch_features = model(inputs, extract_features=True)
            features.append(batch_features.cpu().numpy())

    # 拼接并保存结果
    features_array = np.vstack(features)
    pd.DataFrame(features_array).to_csv("reentrancy_features.csv", index=False)
    print(f"特征已保存，维度：{features_array.shape}")


if __name__ == "__main__":
    extract_features()