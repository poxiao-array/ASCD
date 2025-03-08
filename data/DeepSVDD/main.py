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
from dataset import get_dataset

# 读入数据
# data=sio.loadmat(r"ETT_of_day.mat")['ETT_of_day']
data = sio.loadmat(r"demean_task_cpu_53.mat")['demean_task_cpu_53'].T
svdd = DeepSVDD(nu=0.2, regul=1e-6, shape=123)  # regul正则项
# 预训练，训练一个球中心C。
svdd.prefit(data, data, data, epochs=200, batch_size=32)  # 第一个训练，第二个测试，第三个测试集标签
# print(svdd.predict2(X_test,y_test))
features = svdd.encoder.predict(data)
np.savetxt('normalCNN-AEtrained-features.txt', features)  # 将向量保存到txt文件
# 创建球中心
C = svdd._init_c(data)
# 输出
output = svdd.fit(data, data, data, epochs=100, batch_size=32)
print(output)
features = svdd.encoder.predict(data)
np.savetxt('normalCNN-DeepSVDDtrained-features.txt', features)

# score = sio.loadmat('score.mat')['score'].reshape(-1,1)
# score1 = (score - score.min())/(score.max() - score.min())
# sio.savemat('score_ETT.mat',{'score_ETT':score1})
# #print(svdd.predict(X_test,y_test))
# import matplotlib.pyplot as plt
# plt.plot(score1)
