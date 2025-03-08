import matplotlib.pyplot as plt
import numpy as np
from mpl_toolkits.mplot3d import Axes3D

data = np.array([0, 0, 0, 0, 0, 0, 0,
                 0, 0, 0.22, 0.43, 0.29, 0.85,
                 0.93, 0.89, 0.99, 0.43, 0.60, 0.96, 0.81, 0.97])

fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')

xpos, ypos = np.meshgrid(range(7), range(3))

xpos = xpos.flatten()
ypos = ypos.flatten()
zpos = np.zeros(21)

dx = dy = 0.5 * np.ones_like(zpos)
dz = data

ax.bar3d(xpos, ypos, zpos, dx, dy, dz, color='b')

ax.set_xlabel('Column')
ax.set_ylabel('Row')
ax.set_zlabel('Value')
ax.set_title('3D Bar Chart')

plt.show()