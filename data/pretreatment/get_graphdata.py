"""
处理得到的CFG图文件，提取节点和边信息

"""
import os

from tools import firstPhase, secondPhase, thirdPhase,thirdPhase2, deleteColor

filepath = "integeroverflow/"
firstPhase(filepath)
secondPhase(filepath)
thirdPhase(filepath)
thirdPhase2(filepath)
deleteColor(filepath)


