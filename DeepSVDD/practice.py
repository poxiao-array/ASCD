import pandas as pd
import numpy as np

vulnerability = pd.read_csv("../data/dataset/features/fused/5reentrancy.csv", index_col=0)#.values#.reshape([-1, 1, 128])
vul_label = pd.read_csv("../data/simpleOpcode/reentrancy.csv")["label"]
normal = pd.read_csv("../data/dataset/features/fused/5normal.csv", index_col=0).iloc[:2000, :]
nor_label = pd.DataFrame(np.zeros(2000))
data = pd.concat([vulnerability, normal], axis=0).values
label = pd.concat([vul_label, nor_label], axis=0).values
print(data.shape)
print(label.shape)