# -*- coding: utf-8 -*-
"""
An example for SVDD model fitting with negataive samples
无标签数据的 SVDD 超球体构建(l_normal)
"""
import sys
sys.path.append("..")
import numpy as np
from BaseSVDD import BaseSVDD
from SVDD_tools import getdataset

# 读数据集
X, y = getdataset()

# svdd object using rbf kernel  svdd使用RBF核函数
svdd = BaseSVDD(C=0.9, gamma=0.3, kernel='rbf', display='on')

# fit the SVDD model 训练SVDD
svdd.fit(X)

# predict the label 预测
y_predict = svdd.predict(X)
print(y_predict)

# plot the boundary 画边界图
#svdd.plot_boundary(normal_train)
from sklearn import metrics
print(metrics.classification_report(y, y_predict))


# plot the distance 画距离分数
'''radius = svdd.radius
distance = svdd.get_distance(X)
svdd.plot_distance(radius, distance)'''