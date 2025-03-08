import pandas as pd
import numpy as np
import csv
import os

def get_feature_matrix(vul):
    # 获取特征矩阵
    list1 = []
    list3 = ['SC']
    i = 0
    with open("gram.txt") as mom:
        str3 = mom.read()
        str4 = '"' + str3 + '"'  # 便于转化为字典
        dic1 = eval(str4.strip('"'))  # 转换为字典
    for key in dic1:
        list3.append(key)  # list3为CSV的表头

    filelist = pd.read_csv("../../data/simpleOpcode/" + vul + ".csv")["SC"]
    # for filename in os.listdir("features/" + vul + "/"):
    for filename in filelist:
        tmp = {}
        tmp['SC'] = filename  # .strip('.txt')
        print("第", i, '个')
        with open("features/" + vul + "/" + filename) as f:
            str0 = f.read()
            str1 = '"' + str0 + '"'  # 便于转化为词典
            # print(str0)
            # print(type(str0))
            dic2 = eval(str1.strip('"'))
            for key in dic1:
                if (dic2.get(key) == None):
                    tmp[key] = 0
                else:
                    tmp[key] = dic2.get(key)

        list1.append(tmp)
        i = i + 1
        # print(list3)
        # print(len(list3))
    print(len(list1))
    # with open("C:\\Users\\Mifans\\Desktop\\56\\matrix56.txt", "a") as mom:
    #     mom.write(str(list1))

    headers = list3
    print(len(list3))
    with open("data/" + vul + ".csv", 'w', newline='') as s:
        s_csv = csv.DictWriter(s, headers)
        s_csv.writeheader()
        s_csv.writerows(list1)
        print("合约信息写入csv!")

if __name__ == '__main__':
    files = ["reentrancy", "timestamp", "delegatecall", "integeroverflow",
            "SBaccess_control", "SBarithmetic", "SBdenial_of_service",
            "SBfront_running", "SBreentrancy", "SBshort_address",
            "SBunchecked_low_level_calls", "normal"]
    # files = ["delegatecall/"]
    for vul in files:
        get_feature_matrix(vul)
