import numpy as np
import pandas as pd

vul = "SBunchecked_low_level_calls"
vul_label1 = pd.read_csv("../../data/simpleOpcode/"+vul+".csv")["label"]
normal_label1 = pd.DataFrame(np.zeros(4588))
label1 = pd.concat([vul_label1, normal_label1], axis=0).values
print(label1.shape)

vul_label2 = pd.read_csv(vul+".csv")["UnchechedExternalCalls"]
normal_label2 = pd.read_csv("normal.csv")["UnchechedExternalCalls"]
label2 = (pd.concat([vul_label2, normal_label2], axis=0).values.reshape(-1, 1))*5
print(label2.shape)

# result
from sklearn.metrics import classification_report, roc_curve
print(classification_report(label1, label2))
