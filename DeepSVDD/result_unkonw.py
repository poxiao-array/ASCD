import numpy as np
import pandas as pd
import scipy.io as sio
import random

seed = 1337
random.seed(seed)
np.random.seed(seed)

def result(name):
    # vulneratility_score
    score = pd.read_csv("score/5_"+name+"_score.csv").values[:, 1]
    label = pd.read_csv("../data/simpleOpcode/"+name+".csv")["label"].values
    # print(score.shape)
    # print(label.shape)
    '''for i in range(len(score)):
        score[i] = score[i]* 100
        # if elsedata_label[i] != 0:
            # elsedata_label[i] = 1
    print(score)'''
    '''print("vulnerability_score")
    for i in range(len(score)):
        if label[i] > 0:
            print(score[i])
    print("\n normal_score")
    for i in range(len(score)):
        if label[i] == 0:
            print(score[i])'''
    num = 0
    for i in range(len(score)):
        if (score[i] >= 45):# and (label[i] > 0):    # 阈值
            num += 1
    print("num", num)
    print("all", label.shape[0])

files = [#"reentrancy", "timestamp", "delegatecall", "integeroverflow", "SBunchecked_low_level_calls",
            "SBaccess_control", "SBarithmetic", "SBdenial_of_service",
            "SBfront_running", "SBshort_address"]
for name in files:
    result(name)




