#!/usr/bin/python3
#code-python(3.6)
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from mpl_toolkits.mplot3d import Axes3D
# df = pd.read_csv("../data/simpleOpcode/reentrancy.csv")
# normal_label = np.array(df["label"])
# print(normal_label.shape)
# t = np.array(df[df['label']!=0]['label'])
# print(t.shape)


normal_label = np.array(pd.read_csv("../data/simpleOpcode/reentrancy.csv")["label"])
print(normal_label.shape)
t = np.array(df[df['label']!=0]['label'])
print(t.shape)
