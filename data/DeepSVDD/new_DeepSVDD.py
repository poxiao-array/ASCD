class GIN(torch.nn.Module):
    # ... 其他部分保持不变 ...
    def forward(self, data):
        x, edge_index, edge_attr, batch = data.x, data.edge_index, data.edge_attr, data.batch
        edge_emb = self.edge_emb(edge_attr)
        x = self.conv1(x, edge_index, edge_emb)
        x = self.conv2(x, edge_index, edge_emb)
        x = global_mean_pool(x, batch)  # 特征输出位置
        return x  # 直接返回特征，不经过分类层


class VulnDetector(nn.Module):
    # ... 其他部分保持不变 ...
    def forward(self, x):
        embedded = self.embedding(x)
        lstm_out, _ = self.lstm(embedded)
        features = self.dropout(lstm_out[:, -1, :])  # 特征输出位置
        return features  # 返回LSTM的隐藏状态，不经过分类层