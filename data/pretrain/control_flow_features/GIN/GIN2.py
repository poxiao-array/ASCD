import os
import re

import pandas as pd
import torch
import numpy as np
from torch_geometric.data import Data, Dataset, DataLoader
from torch_geometric.nn import GINEConv, global_mean_pool
from torch.nn import Sequential, Linear, ReLU, BatchNorm1d
from sklearn.model_selection import train_test_split
from collections import Counter
from sklearn.metrics import classification_report, accuracy_score

# 数据集处理
class ContractDataset(Dataset):
    def __init__(self, root, vuln_types):
        super().__init__()
        self.root = root
        self.color_map = {'red': 0, 'green': 1, 'blue': 2, 'cyan': 3}
        self.data_list = []
        self.opcode_vocab = set()
        self._preprocess(vuln_types)


    def _parse_node_file(self, path):
        blocks = []
        with open(path, 'r') as f:
            for line in f:
                line = line.strip()
                if not line:
                    continue
                match = re.match(r'^(block_\w+)\s+\[(.*)\]', line)
                if match:
                    block_name, ops_str = match.groups()
                    opcodes = re.findall(r'\b([A-Z_]+)\b', ops_str)
                    blocks.append((block_name, opcodes))
                    self.opcode_vocab.update(opcodes)
        return blocks

    def _preprocess(self, vuln_types):


        # 第一次遍历：收集所有操作码
        for vuln_type in vuln_types:
            df = pd.read_csv("./../../../data/simpleOpcode/"+vuln_type+".csv")["SC"]
            node_dir = os.path.join(self.root, vuln_type, 'node')
            if not os.path.exists(node_dir):
                continue
            # for fname in os.listdir(node_dir):
            for fname in df:
                self._parse_node_file(os.path.join(node_dir, fname))

        # 创建操作码到索引的映射
        self.opcode_to_idx = {op: i for i, op in enumerate(sorted(self.opcode_vocab))}
        self.vocab_size = len(self.opcode_vocab)

        # 第二次遍历：构建数据对象
        for vuln_type in vuln_types:
            df = pd.read_csv("./../../../data/simpleOpcode/"+vuln_type + ".csv")["SC"]
            label = 0 if vuln_type == 'normal' else 1
            edge_dir = os.path.join(self.root, vuln_type, 'edge')
            node_dir = os.path.join(self.root, vuln_type, 'node')

            if not os.path.exists(edge_dir) or not os.path.exists(node_dir):
                continue

            # for fname in os.listdir(edge_dir):
            for fname in df:
                edge_path = os.path.join(edge_dir, fname)
                node_path = os.path.join(node_dir, fname)

                if not os.path.exists(node_path):
                    continue

                # 处理节点
                blocks = self._parse_node_file(node_path)
                block_indices = {name: i for i, (name, _) in enumerate(blocks)}
                num_nodes = len(blocks)

                # 构建节点特征矩阵
                x = np.zeros((num_nodes, self.vocab_size), dtype=np.float32)
                for i, (_, ops) in enumerate(blocks):
                    counts = Counter(ops)
                    for op, cnt in counts.items():
                        if op in self.opcode_to_idx:
                            x[i, self.opcode_to_idx[op]] = cnt
                x = torch.tensor(x, dtype=torch.float)

                # 处理边
                edge_index = []
                edge_attr = []
                with open(edge_path, 'r') as f:
                    for line in f:
                        line = line.strip()
                        if not line:
                            continue
                        parts = re.split(r'\s*->\s*|\s*\[color=', line)
                        if len(parts) < 3:
                            continue
                        src, dst, color = parts[:3]
                        color = color.rstrip(']').strip()
                        if src in block_indices and dst in block_indices and color in self.color_map:
                            edge_index.append([block_indices[src], block_indices[dst]])
                            edge_attr.append(self.color_map[color])

                if not edge_index:
                    print(fname)
                    continue  # 跳过空图

                edge_index = torch.tensor(edge_index, dtype=torch.long).t().contiguous()
                edge_attr = torch.tensor(edge_attr, dtype=torch.long)
                data = Data(x=x, edge_index=edge_index, edge_attr=edge_attr, y=torch.tensor([label], dtype=torch.long))
                self.data_list.append(data)

    def __len__(self):
        return len(self.data_list)

    def __getitem__(self, idx):
        return self.data_list[idx]


# GIN模型定义
class GIN(torch.nn.Module):
    def __init__(self, vocab_size, hidden_dim=256, num_edge_types=4):
        super().__init__()
        self.edge_emb = torch.nn.Embedding(num_edge_types, hidden_dim)

        self.conv1 = GINEConv(
            Sequential(
                Linear(vocab_size, hidden_dim),
                BatchNorm1d(hidden_dim),
                ReLU(),
                Linear(hidden_dim, hidden_dim),
                ReLU()
            ),
            edge_dim=hidden_dim
        )

        self.conv2 = GINEConv(
            Sequential(
                Linear(hidden_dim, hidden_dim),
                BatchNorm1d(hidden_dim),
                ReLU(),
                Linear(hidden_dim, hidden_dim),
                ReLU()
            ),
            edge_dim=hidden_dim
        )

        self.classifier = Linear(hidden_dim, 1)

    def forward(self, data, extract_features=False):
        x, edge_index, edge_attr, batch = data.x, data.edge_index, data.edge_attr, data.batch

        # 边特征嵌入
        edge_emb = self.edge_emb(edge_attr)

        # 图卷积
        x = self.conv1(x, edge_index, edge_emb)
        x1 = self.conv2(x, edge_index, edge_emb)


        # 全局池化
        x = global_mean_pool(x1, batch)
        if extract_features:
            return x

        # 分类
        return self.classifier(x).squeeze(-1)


# 训练流程
def main():
    vuln_types = ['reentrancy', 'timestamp', 'delegatecall', 'transaction_order', 'normal']
    dataset = ContractDataset('./../../../data/binary_graph_data', vuln_types)
    train_data, test_data = train_test_split(dataset, test_size=0.2, random_state=42)

    train_loader = DataLoader(train_data, batch_size=128, shuffle=True)
    test_loader = DataLoader(test_data, batch_size=128, shuffle=False)

    model = GIN(vocab_size=dataset.vocab_size)
    optimizer = torch.optim.Adam(model.parameters(), lr=0.001)
    criterion = torch.nn.BCEWithLogitsLoss()
    best_acc = 0.0

    for epoch in range(1):
        model.train()
        total_loss = 0
        for batch in train_loader:
            optimizer.zero_grad()
            out = model(batch)
            loss = criterion(out, batch.y.float())
            loss.backward()
            optimizer.step()
            total_loss += loss.item()

        # 验证
        model.eval()
        all_preds = []
        all_labels = []
        with torch.no_grad():
            for batch in test_loader:
                out = model(batch)
                preds = torch.sigmoid(out) > 0.5
                all_preds.extend(preds.cpu().numpy())
                all_labels.extend(batch.y.cpu().numpy())
        # 生成分类报告
        report = classification_report(all_labels, all_preds, target_names=['Normal', 'Vulnerable'])
        acc = accuracy_score(all_labels, all_preds)

        print(f"\nEpoch {epoch:03d}")
        print(f"Loss: {total_loss / len(train_loader):.4f}")
        print(f"Accuracy: {acc:.4f}")
        print("Classification Report:")
        print(report)

        # # 保存最佳模型
        # if acc > best_acc:
        #     best_acc = acc
        #     torch.save(model.state_dict(), 'best_model.pth')
        #     print(f"New best model saved with accuracy {acc:.4f}")
    # 训练完成后保存最终模型
    # torch.save(model.state_dict(), 'gin_anomaly.pth')
    # 保存完整模型
    # torch.save(model, "gin_abnormal.pth")
    print("\nTraining completed. Final model saved.")


    #======================================
    model = torch.load("gin_abnormal.pth")
    model.eval()

    # filename = [['delegatecall'], ["integeroverflow"], ['normal'], ['reentrancy'], ['SBaccess_control'], ['SBarithmetic'],
    #             ['SBdenial_of_service'],
    #             ['SBfront_running'], ['SBshort_address'], ['SBunchecked_low_level_calls'], ['timestamp'], ['transaction_order']]
    file = ['reentrancy', 'timestamp', 'delegatecall', 'transaction_order',
            "SBaccess_control", "integeroverflow", "SBdenial_of_service", "SBshort_address", "SBunchecked_low_level_calls",
            # 'SBdenial_of_service',
            'normal',
            ]

    # for file in filename:
    # 加载需要提取特征的数据
    # df_vul = pd.read_csv('../data/simpleOpcode/'+file+'.csv')
    # opcode_seqs_re = [seq.split() for seq in df_vul['opcode']]
    dataset1 = ContractDataset('./../../../data/binary_graph_data', file)

    import time
    start_feature = time.time()
    # 创建DataLoader
    feature_loader = DataLoader(dataset1, batch_size=128, shuffle=False)

    # 提取特征
    # 开始核心计时
    all_features = []

    with torch.no_grad():
        for inputs in feature_loader:
            features = model(inputs, extract_features=True).numpy()
            print(features.shape)
            all_features.append(features)
            # print(all_features.shape)
    print("特征提取时间")
    print(time.time()-start_feature)

    # 拼接并保存特征
    features_array = np.concatenate(all_features, axis=0)
    # pd.DataFrame(features_array).to_csv(file+'.csv', index=False)
    # 获取原始数据的SC和label列
    # df_vul = pd.read_csv('../../../data/simpleOpcode/' + file[0] + '.csv')
    # sc_labels = df_vul[['SC', 'label']].copy()
    # 创建特征DataFrame并保留列名
    features_df = pd.DataFrame(features_array,
                                   columns=[f'feature_{i}' for i in range(256)])
    print(features_df.shape)
    # 合并数据
    # final_df = pd.concat([sc_labels, features_df], axis=1)
    # # 验证数据维度
    # print(len(final_df), len(df_vul))
    # assert len(final_df) == len(df_vul), "数据行数不一致！"
    # assert final_df.shape[1] == 258, "列数不符合预期（2+256）"  # SC + label + 256特征
    # 保存最终文件
    # features_df.to_csv("gin_abnormal.csv", index=False)

    print("特征提取完成！特征已保存到 gin_abnormal.csv")

if __name__ == "__main__":
    main()