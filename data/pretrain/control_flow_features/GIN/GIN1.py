import os
import pandas as pd
import torch
import torch.nn as nn
import torch.nn.functional as F
from torch_geometric.data import Data, DataLoader, Dataset
from torch_geometric.nn import GINEConv, global_add_pool


# 数据预处理函数
def parse_sample(node_file, edge_file, label):
    # 读取节点
    with open(node_file, 'r') as f:
        nodes = [line.strip() for line in f if line.strip()]
    node_id = {node: i for i, node in enumerate(nodes)}
    num_nodes = len(nodes)

    # 计算节点度作为特征
    out_degree = {node: 0 for node in nodes}
    in_degree = {node: 0 for node in nodes}
    edge_src, edge_dst, edge_colors = [], [], []

    # 读取边并计算度
    color_to_idx = {'red': 0, 'green': 1, 'blue': 2, 'cyan':3}
    with open(edge_file, 'r') as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            src_part, dst_part = line.split('->')
            src = src_part.strip().split()[0]
            dst_color = dst_part.strip().split()
            dst = dst_color[0]
            color = dst_color[1].split('=')[1].strip(']')

            # 记录边信息
            edge_src.append(node_id[src])
            edge_dst.append(node_id[dst])
            edge_colors.append(color_to_idx[color])

            # 更新度
            out_degree[src] += 1
            in_degree[dst] += 1

    # 节点特征（出度+入度）
    x = torch.tensor([[out_degree[node], in_degree[node]] for node in nodes], dtype=torch.float)

    # print(color_mapping)
    # 边信息处理
    edge_index = torch.tensor([edge_src, edge_dst], dtype=torch.long)
    edge_attr = F.one_hot(torch.tensor(edge_colors), num_classes=4).float()

    return Data(x=x, edge_index=edge_index, edge_attr=edge_attr, y=torch.tensor([label]))


# 定义漏洞类型映射
VUL_MAP = {
    'reentrancy': 1,
    'timestamp': 1,
    'delegatecall': 1,
    'transaction_order': 1,
    'normal': 0
}


class AutoContractDataset(Dataset):
    def __init__(self, root_dir, transform=None, pre_transform=None):
        self.root_dir = root_dir
        self.samples = self._discover_samples()
        super().__init__(root_dir, transform, pre_transform)

    def _discover_samples(self):
        samples = []
        # 遍历所有漏洞类型目录
        for vul_type in VUL_MAP.keys():
            vul_dir = os.path.join(self.root_dir, 'binary_graph_data', vul_type)

            # 获取所有edge文件
            edge_dir = os.path.join(vul_dir, 'edge')
            if not os.path.exists(edge_dir):
                continue

            for edge_file in os.listdir(edge_dir):
                if not edge_file.endswith('.txt'):
                    continue

                # 匹配对应的node文件
                base_name = os.path.splitext(edge_file)[0]
                node_path = os.path.join(vul_dir, 'node', f"{base_name}.txt")

                if os.path.exists(node_path):
                    samples.append({
                        'vul_type': vul_type,
                        'edge_path': os.path.join(edge_dir, edge_file),
                        'node_path': node_path,
                        'label': VUL_MAP[vul_type]
                    })
        return samples

    @property
    def raw_file_names(self):
        return [s['edge_path'] for s in self.samples]

    @property
    def processed_file_names(self):
        return [f'data_{idx}.pt' for idx in range(len(self.samples))]

    def process(self):
        for idx, sample in enumerate(self.samples):
            data = parse_sample(sample['node_path'], sample['edge_path'], sample['label'])
            # print(data)
            torch.save(data, os.path.join(self.processed_dir, f'data_{idx}.pt'))

    def len(self):
        return len(self.samples)

    def get(self, idx):
        return torch.load(os.path.join(self.processed_dir, f'data_{idx}.pt'))



# GIN模型定义
class GINClassifier(nn.Module):
    def __init__(self, input_dim, hidden_dim, edge_attr_dim):
        super().__init__()
        self.conv1 = GINEConv(
            nn.Sequential(
                nn.Linear(input_dim, hidden_dim),
                nn.BatchNorm1d(hidden_dim),
                nn.ReLU(),
                nn.Linear(hidden_dim, hidden_dim),
            ),
            edge_dim=edge_attr_dim
        )
        self.conv2 = GINEConv(
            nn.Sequential(
                nn.Linear(hidden_dim, hidden_dim),
                nn.BatchNorm1d(hidden_dim),
                nn.ReLU(),
                nn.Linear(hidden_dim, hidden_dim),
            ),
            edge_dim=edge_attr_dim
        )
        self.classifier = nn.Sequential(
            nn.Linear(hidden_dim, 64),
            nn.ReLU(),
            nn.Dropout(0.5),
            nn.Linear(64, 2))

    def forward(self, data):
        x, edge_index, edge_attr, batch = data.x, data.edge_index, data.edge_attr, data.batch

        x = F.relu(self.conv1(x, edge_index, edge_attr))
        x = F.relu(self.conv2(x, edge_index, edge_attr))
        x = global_add_pool(x, batch)
        return self.classifier(x)


root_path = './'  # 项目根目录
# csv_name = '../../../data/SimpleOpcode/vul_abnormal.csv'
# 创建PyG数据集
# full_dataset = ContractDataset(root=root_path, csv_name=csv_name)
full_dataset = AutoContractDataset(root_dir='./../../../data/')
# 数据集统计
print(f"总共加载 {len(full_dataset)} 个样本")
print("标签分布：")
print(f"正常合约（0）: {sum(1 for s in full_dataset.samples if s['label'] == 0)}")
print(f"漏洞合约（1）: {sum(1 for s in full_dataset.samples if s['label'] == 1)}")

# 数据集划分
train_size = int(0.8 * len(full_dataset))
test_size = len(full_dataset) - train_size
train_dataset, test_dataset = torch.utils.data.random_split(
    full_dataset, [train_size, test_size]
)

# 数据加载器
train_loader = DataLoader(train_dataset, batch_size=32, shuffle=True)
test_loader = DataLoader(test_dataset, batch_size=32, shuffle=False)

# 初始化模型
model = GINClassifier(input_dim=2, hidden_dim=128, edge_attr_dim=3)
optimizer = torch.optim.Adam(model.parameters(), lr=0.001)
criterion = nn.CrossEntropyLoss()


# 训练循环
def train():
    model.train()
    total_loss = 0
    for data in train_loader:
        optimizer.zero_grad()
        out = model(data)
        loss = criterion(out, data.y.squeeze())
        loss.backward()
        optimizer.step()
        total_loss += loss.item() * data.num_graphs
    return total_loss / len(train_dataset)


# 测试函数
@torch.no_grad()
def test(loader):
    model.eval()
    correct = 0
    for data in loader:
        pred = model(data).argmax(dim=1)
        correct += (pred == data.y.squeeze()).sum().item()
    return correct / len(loader.dataset)


# 训练200个epoch
for epoch in range(1, 21):
    loss = train()
    train_acc = test(train_loader)
    test_acc = test(test_loader)
    print(f'Epoch {epoch:03d} | Loss: {loss:.4f} | Train Acc: {train_acc:.4f} | Test Acc: {test_acc:.4f}')