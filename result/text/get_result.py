import numpy as np
import pandas as pd


vul_label1 = pd.read_csv("delegatecall.csv")["label"]
print(vul_label1.shape)
for i in range(vul_label1.shape[0]):
    if vul_label1[i] > 0:
        vul_label1[i] = 1

vul_label2 = pd.read_csv("delegatecall2.csv")["label"]
for i in range(vul_label2.shape[0]):
    if vul_label2[i] > 0:
        vul_label2[i] = 1
#
# result
from sklearn.metrics import classification_report, roc_curve
print(classification_report(vul_label1, vul_label2))
