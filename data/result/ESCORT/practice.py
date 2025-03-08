import numpy as np
import pandas as pd
import torch
import torch.nn as nn
from sklearn.model_selection import train_test_split



vul = "timestamp"

vulnerability = pd.read_csv("./data/" + vul + ".csv", index_col=0)  # .values#.reshape([-1, 1, 128])
vul_label = pd.read_csv("../../data/simpleOpcode/" + vul + ".csv")["label"]
normal = pd.read_csv("./data/normal.csv", index_col=0)  # .iloc[:2000, :]
nor_label = pd.DataFrame(np.zeros(normal.shape[0]))
data = pd.concat([vulnerability, normal], axis=0).values
label = pd.concat([vul_label, nor_label], axis=0).values.ravel()

X_train, X_test, y_train, y_test = train_test_split(data, label, test_size=0.2, random_state=1)
print(X_train.shape, X_test.shape, y_train.shape, y_test.shape)
print(X_test)