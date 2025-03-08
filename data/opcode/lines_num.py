import os

max = 0
dirs = os.listdir('normal/')
for file in dirs:
    num = 0
    inputFilePath = 'normal/' + file
    f = open(inputFilePath, "r+")
    lines = f.readlines()
    for i in lines:
        if i != '\n':
            num += 1
    if num > max:
        max = num

print("最大行数为：%d" %max)
#  最大行数为6441












