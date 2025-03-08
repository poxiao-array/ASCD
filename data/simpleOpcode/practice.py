import pandas as pd
import numpy as np

reentrancy = pd.read_csv("reentrancy.csv")['label']
n = 0
for i in range(reentrancy.shape[0]):
    if reentrancy[i] == 0:
        n += 1
print(n)








