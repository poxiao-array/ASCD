import pandas as pd

def fused_features1(name):
    #name = "SBunchecked_low_level_calls"
    data1 = pd.read_csv("lstm/lstm5_"+name+"1.csv", index_col=0)
    data2 = pd.read_csv("graph/gin5_"+name+".csv", index_col=0)

    frames = [data1, data2]
    frame1 = pd.concat(frames, axis=1)
    frame1.to_csv("fused/5"+name+".csv")
    print(name+" fused over")

def fused_features2(name):
    data1 = pd.read_csv("lstm/lstm5_" + name + "1.csv", index_col=0)
    data2 = pd.read_csv("graph/gin5_" + name + ".csv", index_col=0)
    data = data1 + data2
    print(data.shape)
    data.to_csv("fused2/5"+name+".csv")


def merge_csv():
    data1 = pd.read_csv("fused/5reentrancy2.csv", index_col=0)
    data2 = pd.read_csv("fused/5SBreentrancy2.csv", index_col=0)
    data3 = pd.read_csv("fused/5timestamp2.csv", index_col=0)
    data4 = pd.read_csv("fused/5integeroverflow2.csv", index_col=0)
    data5 = pd.read_csv("fused/5delegatecall2.csv", index_col=0)
    data6 = pd.read_csv("fused/5SBunchecked_low_level_calls2.csv", index_col=0)

    frames = [data1, data2, data3, data4, data5, data6]
    frame1 = pd.concat(frames, axis=0)
    frame1.to_csv("fused/5vulnerability.csv")
    print("merge over")

file = ["reentrancy", "timestamp", "delegatecall", "integeroverflow",
            "SBaccess_control", "SBarithmetic", "SBdenial_of_service",
            "SBfront_running", "SBreentrancy", "SBshort_address",
            "SBunchecked_low_level_calls", "normal"]
for name in file:
    fused_features1(name)
    fused_features2(name)
# merge_csv()


