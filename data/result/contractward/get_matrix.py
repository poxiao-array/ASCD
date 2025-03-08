"""
    生成gram.txt
"""
import os
import pandas as pd
import ast
import json

# 统计特征维数
list1 = []
files = ["reentrancy/", "timestamp/", "delegatecall/", "integeroverflow/",
         "SBaccess_control/", "SBarithmetic/", "SBdenial_of_service/",
         "SBfront_running/", "SBreentrancy/", "SBshort_address/",
         "SBunchecked_low_level_calls/", "normal/"]
for vul in files:
    for filename in os.listdir("./features/" + vul):
        with open("./features/" + vul + filename) as f:
            str0 = f.read()
            str1 = '"' + str0 + '"'
            # print(str1)
            dic1 = eval(str1.strip('"'))
            print("dic1:", dic1)
            # print("dic1的类型:",type(dic1))
            list1.append(dic1)  # 将字典添加进入列表
        print("./features/" + vul + filename + "写入列表！")

tmp_dic = {}
for dic2 in list1:
    for key in dic2.keys():
        if key not in tmp_dic.keys():
            tmp_dic[key] = 0  # 将特征添加进tmp
print(tmp_dic.keys())
print(len(tmp_dic.keys()))

with open("gram.txt", "a") as mom:
    mom.write(str(tmp_dic))
