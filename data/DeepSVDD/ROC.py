import numpy as np
import pandas as pd
import random

seed = 1337
random.seed(seed)
np.random.seed(seed)
from dataset import get_dataset
normal, normal_label, reentrancy, reentrancy_label, timestamp, timestamp_label = get_dataset()
all_score = pd.read_csv("all_reentrancy_score.csv").values[:, 1]
lstm_score = pd.read_csv("lstm_reentrancy_score.csv").values[:, 1]
gin_score = pd.read_csv("gin_reentrancy_score.csv").values[:, 1]
for i in range(len(timestamp_label)):
    if timestamp_label[i] == 0:    # yuzhi
        timestamp_label[i] = 0
    else:
        timestamp_label[i] = 1



from sklearn.metrics import classification_report, roc_curve
import matplotlib.pyplot as plt
fpt_all, tpr_all, _ = roc_curve(reentrancy_label, all_score)
plt.plot(fpt_all, tpr_all, label='LG_DeepSVDD', color='red')
fpt_lstm, tpr_lstm, _ = roc_curve(reentrancy_label, lstm_score)
plt.plot(fpt_lstm, tpr_lstm, label='lstm+DeepSVDD', color='blue')
fpt_gin, tpr_gin, _ = roc_curve(reentrancy_label, gin_score)
plt.plot(fpt_gin, tpr_gin, label='gin+DeepSVDD', color='green')

plt.legend()

plt.xlabel('FPR')
plt.ylabel('TPR')
plt.show()








