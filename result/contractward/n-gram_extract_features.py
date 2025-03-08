"""得到每个操作码序列的2-gram分词"""
import pandas as pd
from nltk.util import ngrams
import os
import pickle


def gram_2(vul):
    words = []
    features = []
    # 列表转字典
    dic = {}
    print("2_gram")
    path = "../../data/"
    # res_path = ""
    if vul == "normal/":
        filenames = pd.read_csv(path + 'simpleOpcode/normal.csv')["SC"]
    else:
        filenames = os.listdir(path + 'simpleOpcode/' + vul)
    for filename in filenames:  # 简化的操作码所在路径
        # if (os.path.exists(path + "features\\"+filename)):
        #     print(path + "features56\\"+filename+ '已存在！')
        #     continue
        with open(path + 'simpleOpcode/' + vul + filename, "rb") as f:
            opcode = f.read()
            lines = opcode.split()
            for line in lines:
                eachline1 = line.decode()  # 解码
                eachline2 = eachline1.replace("\r\n", '')
                words.append(eachline2)
            ngram = ngrams(words, 2)
            print(ngram)
            for i in ngram:
                features.append(i)
        dic.clear()
        for ch in features:
            dic[ch] = 1 + dic.get(ch, 0)  # 字符ch的个数
        # 2_0_dict是字典，key:二元组, value:出现的次数

        print("dict的长度:")
        print(len(dic))
        # path = "./../feature_3_13_data/"
        with open("features/" + vul + filename, "wb+") as f:
            f.write(str(dic).encode())  # 编码
            print("features/" + vul + filename + "创建成功")
        # pickle.dump(dic, f,0)
        # # 对结果的频率倒序排列
        # dic_sort = sorted(dic.items(), key=lambda item: item[1], reverse=True)
        # # print dic_sort
        # # 存储结果
        # with open(path + "2_0_list.data", "wb+") as f:
        #     pickle.dump(dic_sort, f)
        # 对结果的频率倒序排列
        # dic_sort = sorted(dic.items(), key=lambda item: item[1], reverse=True)
        # # print dic_sort
        # # 存储结果
        # with open(path + "2_0_list.data", "wb+") as f:
        #     pickle.dump(dic_sort, f)
        words.clear()
        features.clear()


if __name__ == '__main__':
    files = ["reentrancy/", "timestamp/", "delegatecall/", "integeroverflow/",
            "SBaccess_control/", "SBarithmetic/", "SBdenial_of_service/",
            "SBfront_running/", "SBreentrancy/", "SBshort_address/",
            "SBunchecked_low_level_calls/", "normal/"]
    # files = ["delegatecall/"]
    for vul in files:
        gram_2(vul)
