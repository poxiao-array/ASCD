import pandas as pd
import numpy as np

name = "delegatecall"

vul = pd.read_csv("5_"+name+"_score.csv").iloc[:,-1]# zheng
normal = pd.read_csv("5_normal_score.csv").iloc[:200,-1]#  fu

# print(vul)
# t = 50
thresholds = np.arange(10, 70 + 1, 0.1)

f1_scores = []

for t in thresholds:
    print(t)
    TP = 0
    FN = 0
    FP = 0
    TN = 0

    for i in range(vul.shape[0]):
        if vul[i]<t:
            FN +=1
        else:
            TP+=1

    for j in range(normal.shape[0]):
        if normal[j] > t:
            FP += 1


    P = TP/(TP+FP)
    R = TP/(TP+FN)
    F1 = 2*P*R/(P+R)

    f1_scores.append(F1)
    print(F1)

import matplotlib.pyplot as plt
# 可视化结果
plt.figure(figsize=(10, 6))
plt.plot(thresholds, f1_scores, 'b-', label='Weighted F1')
plt.title("Threshold vs F1 Score (delegatecall)")
plt.xlabel("Threshold")
plt.ylabel("F1 Score")
plt.grid(True)
# 标注最高点
max_idx = np.argmax(f1_scores)
plt.scatter(thresholds[max_idx], f1_scores[max_idx], c='red',
                label=f'Max F1: {f1_scores[max_idx]:.4f}\nThreshold: {thresholds[max_idx]:.2f}')
plt.legend()
plt.show()