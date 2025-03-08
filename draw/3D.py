import numpy as np
import matplotlib.pyplot as plt

fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
x = np.arange(1, 3 + 1, 1)
y = np.arange(1, 6 + 1, 1)
# hist = (np.random.randint(0, 1000, 16)).reshape((4, 4))  # 生成16个随机整数
hist1 = np.array([
    [0.70, 0.78, 0.74],
    [0.85, 0.87, 0.86],
    [0.92, 0.93, 0.93],
    [0.39, 0.71, 0.51],
    [0.64, 0.68, 0.66],
    [0.86, 0.60, 0.71],
    [0.96, 0.93, 0.95]])
hist2 = np.array([
    [0.68, 0.75, 0.71],
    [0.87, 0.88, 0.87],
    [0.88, 0.91, 0.90],
    [0.50, 0.42, 0.45],
    [0, 0, 0],
    [0.76, 0.72, 0.74],
    [0.98, 0.91, 0.94]])
hist3 = np.array([
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0],
    [0.50, 0.21, 0.30],
    [0.84, 0.67, 0.74],
    [0.68, 0.87, 0.76],
    [0.99, 0.92, 0.96]])
hist4 = np.array([
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0],
    [0.22, 0.43, 0.29],
    [0.85, 0.93, 0.89],
    [0.99, 0.43, 0.60],
    [0.96, 0.81, 0.97]])

#zpos = 0
color = ('Cyan', 'pink', 'green', 'orange', 'Orchid', 'blue', 'red')

# Construct arrays with the dimensions for the 16 bars.
# ax.bar3d(X, Y, height, width, depth, Z,  color=c, shade=False)  # width, depth, height
X = [1, 2, 3]
Y = [1, 2, 3, 4, 5, 6, 7]
# xx, yy = np.meshgrid(X, Y)
# X, Y = xx.ravel(), yy.ravel()

dx = dy = 0.7
ax.bar3d(X, Y[0], [0] * 3, dx, dy, hist4[0, :], zorder=7, color=color[0])
ax.bar3d(X, Y[1], [0] * 3, dx, dy, hist4[1, :], zorder=6, color=color[1])
ax.bar3d(X, Y[2], [0] * 3, dx, dy, hist4[2, :], zorder=5, color=color[2])
ax.bar3d(X, Y[3], [0] * 3, dx, dy, hist4[3, :], zorder=4, color=color[3])
ax.bar3d(X, Y[4], [0] * 3, dx, dy, hist4[4, :], zorder=3, color=color[4])
ax.bar3d(X, Y[5], [0] * 3, dx, dy, hist4[5, :], zorder=2, color=color[5])
ax.bar3d(X, Y[6], [0] * 3, dx, dy, hist4[6, :], zorder=0, color=color[6])

# 设置坐标轴的刻度
ax.set_xticks(x)
ax.set_xlabel('X')
ax.set_yticks(y)
ax.set_ylabel('Y')
ax.set_zlabel('Z')

ax.view_init(elev=30, azim=-60)
# 将三维的灰色背诵面换成白色
# ax.w_xaxis.set_pane_color((1.0, 1.0, 1.0, 1.0))
# ax.w_yaxis.set_pane_color((1.0, 1.0, 1.0, 1.0))
# ax.w_zaxis.set_pane_color((1.0, 1.0, 1.0, 1.0))
plt.show()
