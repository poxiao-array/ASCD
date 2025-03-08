import sys

print(sys.path)
import numpy as np
import random

seed = 1337
random.seed(seed)
np.random.seed(seed)
from model.deepSVDD import DeepSVDD
import scipy.io as sio
import numpy as np
import pandas as pd

# 读入数据
# normal, normal_label, reentrancy, reentrancy_label, timestamp, timestamp_label = get_dataset()
datan = pd.read_csv("../data/dataset/features/fused2/5normal.csv").iloc[:, 1:].values
# datan = pd.read_csv("../data/dataset/features/lstm/lstm5_normal1.csv").iloc[:, 1:].values
# datan = pd.read_csv("../data/dataset/features/graph/gin5_normal.csv").iloc[:, 1:].values
# vulnerability = pd.read_csv("../data/dataset/features/fused/5vulnerability.csv").iloc[:, 1:]
# data = pd.concat([normal, vulnerability], axis=0).values
print(datan.shape)

svdd = DeepSVDD(nu=0.2, regul=1e-6, shape=64)  # regul正则项
# 预训练，训练一个球中心C。
svdd.prefit(datan, datan, datan, epochs=350, batch_size=128)  # 第一个训练，第二个测试，第三个测试集标签
# print(svdd.predict2(X_test,y_test))
features = svdd.encoder.predict(datan)
np.savetxt('normalCNN-AEtrained-features.txt', features)  # 将向量保存到txt文件
# 创建球中心
C = svdd._init_c(datan)
# 输出
svdd.fit(datan, datan, datan, epochs=350, batch_size=128)
# np.savetxt('output.txt', output)
features = svdd.encoder.predict(datan)
np.savetxt('normalCNN-DeepSVDDtrained-features.txt', features)


# ===============================================================
file = ["reentrancy", "timestamp", "delegatecall", "integeroverflow",
        "SBaccess_control", "SBarithmetic", "SBdenial_of_service",
        "SBfront_running", "SBshort_address",
        "SBunchecked_low_level_calls", "normal"]
for dir in file:
    # vul = pd.read_csv("../data/dataset/features/fused/5"+dir+".csv").iloc[:, 1:].values
    vul = pd.read_csv("../data/dataset/features/fused2/5" + dir + ".csv").iloc[:, 1:].values
    # vul = pd.read_csv("../data/dataset/features/fused/5" + dir + ".csv").iloc[:, 1:].values
    pre = svdd.predict(vul)
    print(pre)
    import pandas as pd
    df1 = pd.DataFrame(pre)
    df1.to_csv("score/5_"+dir+"_score3.csv")

# vul = data[4588:, :]
# pre = svdd.predict(vul)
# print(pre)
# import pandas as pd
# df1 = pd.DataFrame(pre)
# df1.to_csv("score/5_vulnerability_score.csv")




# ==============================================
"""模型的保存和复用"""
# 保存模型
# 模型的保存和导入
# from keras.models import load_model
#
# # 保存模型
# svdd.save('svdd5.h5')
# del svdd  # deletes the existing model
# # 导入已经训练好的模型
# svdd = load_model('svdd5.h5')

'''elsedata_pre = svdd.predict(elsedata)
print(elsedata_pre)
import pandas as pd
df2 = pd.DataFrame(elsedata_pre)
df2.to_csv("elsedata_score.csv")'''

# score = sio.loadmat('score.mat')['score'].reshape(-1, 1)
# score1 = (score - score.min()) / (score.max() - score.min())
# sio.savemat('score_ETT.mat', {'score_ETT': score1})
# print(svdd.predict(Xtest, ytest))
# import matplotlib.pyplot as plt
# plt.plot(score1)
