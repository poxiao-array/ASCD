import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

# 构造需要显示的值
X = np.arange(0, 3, step=1)  # X轴的坐标
Y = np.arange(0, 7, step=1)  # Y轴的坐标
# 设置每一个（X，Y）坐标所对应的Z轴的值
# Z=[
# 0.96, 0.92, 0.85, 0.70, 0.86, 0.64, 0.39,
# 0.93, 0.93, 0.87, 0.78, 0.60, 0.68, 0.71,
# 0.95, 0.93, 0.86, 0.74, 0.71, 0.66, 0.51
# ]
# Z=[
# 0.98, 0.88, 0.87, 0.68, 0.76, 0.00, 0.50,
# 0.91, 0.91, 0.88, 0.75, 0.72, 0.00, 0.42,
# 0.94, 0.90, 0.87, 0.71, 0.74, 0.00, 0.45
# ]
# Z=[
# 0.99, 0.00, 0.00, 0.00, 0.68, 0.84, 0.50,
# 0.92, 0.00, 0.00, 0.00, 0.87, 0.67, 0.21,
# 0.96, 0.00, 0.00, 0.00, 0.76, 0.74, 0.30
# ]
# Z = [
# 0.96, 0.00, 0.00, 0.00, 0.99, 0.85, 0.22,
# 0.81, 0.00, 0.00, 0.00, 0.43, 0.93, 0.43,
# 0.87, 0.00, 0.00, 0.00, 0.60, 0.89, 0.29
# ]
# Z=[
# 0.39, 0.71, 0.51,
# 0.64, 0.68, 0.66,
# 0.86, 0.60, 0.71,
# 0.70, 0.78, 0.74,
# 0.85, 0.87, 0.86,
# 0.92, 0.93, 0.93,
# 0.96, 0.93, 0.95
# ]
# Z=[
# 0.50, 0.42, 0.45,
# 0, 0, 0,
# 0.76, 0.72, 0.74,
# 0.68, 0.75, 0.71,
# 0.87, 0.88, 0.87,
# 0.88, 0.91, 0.90,
# 0.98, 0.91, 0.94
# ]
# Z=[
# 0.50, 0.21, 0.30,
# #0.84, 0.67, 0.74,
# 0.68, 0.87, 0.76,
# 0, 0, 0,
# 0, 0, 0,
# 0, 0, 0,
# 0.99, 0.92, 0.96
# ]
Z = [
0.22, 0.43, 0.29,
0.85, 0.93, 0.89,
0.99, 0.43, 0.60,
0, 0, 0,
0, 0, 0,
0, 0, 0,
0.96, 0.81, 0.97
]

Z = np.array(Z)

# Z = np.zeros(shape=(5, 9))
# for i in range(5):
#     for j in range(9):
#         Z[i, j] = i + j

xx, yy = np.meshgrid(X, Y)  # 网格化坐标
X, Y = xx.ravel(), yy.ravel()  # 矩阵扁平化
bottom = np.zeros_like(X)  # 设置柱状图的底端位值
Z = Z.ravel()  # 扁平化矩阵

print(Z[0:7])


width = 0.8
height = 0.5  # 每一个柱子的长和宽
color = ('#0B66B0', '#00A9BD', '#40B58E', '#64B42A', '#BD7918', '#BB381F', '#B31E22')
# color = ('#56B4E8', 'blue', 'red')

# 绘图设置
fig = plt.figure()
ax = fig.add_axes(Axes3D(fig))   # 三维坐标轴
for i in range(7):
    ax.bar3d(X[18-i*3:21-i*3], Y[18-i*3:21-i*3], bottom[18-i*3:21-i*3],
             width, height, Z[18-i*3:21-i*3],
             shade=True, color=color[6-i])
# for i in range(3):
#     ax.bar3d(X[0+i*7:7+i*7], Y[0+i*7:7+i*7], bottom[0+i*7:7+i*7], width, height, Z[0+i*7:7+i*7],
#              shade=True, color=color[i])
# for i in range(3):
#     ax.bar3d(X[18-i*3:21-i*3], Y[18-i*3:21-i*3], bottom[18-i*3:21-i*3],
#              width, height, Z[18-i*3:21-i*3],
#              shade=True, color=color[6-i])

# ax.bar3d(X, Y, bottom, width, height, Z, shade=True)#

# 坐标轴设置
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z(value)')
plt.show()