import numpy as np
import pandas as pd
from sklearn.manifold import TSNE
# For the UCI ML handwritten digits dataset
from sklearn.datasets import load_digits
# Import matplotlib for plotting graphs ans seaborn for attractive graphics.
import matplotlib.pyplot as plt
import matplotlib.patheffects as pe
import seaborn as sns
from tools import getdataset2, label_num, getsequence, get_onehot


def plot(x, colors):
    # Choosing color palette 选择颜色风格
    # https://seaborn.pydata.org/generated/seaborn.color_palette.html
    # palette = np.array(sns.color_palette("husl", 2))
    palette = np.array(["DeepSkyBlue", "DeepPink"])
    # pastel, husl, and so on

    # Create a scatter plot. 创建散点图
    f = plt.figure(figsize=(8, 8))
    ax = plt.subplot(aspect='equal')
    sc = ax.scatter(x[:, 0], x[:, 1], lw=0, s=40, c=palette[colors.astype(np.int8)])
    # Add the labels for each digit. 为每个数字添加标签
    txts = []
    for i in range(2):
        # Position of each label.
        xtext, ytext = np.median(x[colors == i, :], axis=0)
        txt = ax.text(xtext, ytext, str(i), fontsize=24)
        txt.set_path_effects([pe.Stroke(linewidth=5, foreground="w"), pe.Normal()])
        txts.append(txt)
    plt.savefig('./digits_tsne-pastel.png', dpi=120)
    return f, ax, txts


# 原始数据
def origin():
    filepath = "../data/dataset/final.csv"
    data = pd.read_csv(filepath)
    opcode = data["opcode"].values
    label = data["label"]
    print(label.shape)
    tokpath = "../pretreatment/tok.pickle"
    data = getsequence(opcode, tokpath)
    for i in range(opcode.shape[0]):
        if label[i] > 0:
            label[i] = 1
    return data, label


# label
def feature():
    normal_label = pd.read_csv("../data/simpleOpcode/normal.csv")["label"]
    reen_label = pd.read_csv("../data/simpleOpcode/reentrancy.csv")["label"]
    time_label = pd.read_csv("../data/simpleOpcode/timestamp.csv")["label"]
    integer_label = pd.read_csv("../data/simpleOpcode/integeroverflow.csv")["label"]
    delegate_label = pd.read_csv("../data/simpleOpcode/delegatecall.csv")["label"]
    unchecked_label = pd.read_csv("../data/simpleOpcode/SBunchecked_low_level_calls.csv")["label"]
    label = pd.concat([normal_label, reen_label, time_label, integer_label, delegate_label, unchecked_label],
                      axis=0).values
    print(label.shape)
    for i in range(label.shape[0]):
        if label[i] > 0:
            label[i] = 1

    # LSTM, gin, fused
    type = "fused2/"  # "lstm/" "graph/" "fused/"
    name = "5"
    if type == "lstm/":
        name = "lstm5_"
    if type == "graph/":
        name = "gin5_"
    if type == "fused/" or type == "fused2/":
        name = "5"
    filepath = "../data/dataset/features/" + type
    normal = pd.read_csv(filepath + name + "normal.csv")
    reentrancy = pd.read_csv(filepath + name + "reentrancy.csv")
    timestamp = pd.read_csv(filepath + name + "timestamp.csv")
    integer = pd.read_csv(filepath + name + "integeroverflow.csv")
    delegatecall = pd.read_csv(filepath + name + "delegatecall.csv")
    unchecked = pd.read_csv(filepath + name + "SBunchecked_low_level_calls.csv")
    data = pd.concat([normal, reentrancy, timestamp, integer, delegatecall, unchecked], axis=0).values
    print(data.shape)
    return data, label

def contractward():
    normal_label = pd.read_csv("../data/simpleOpcode/normal.csv")["label"]
    reen_label = pd.read_csv("../data/simpleOpcode/reentrancy.csv")["label"]
    time_label = pd.read_csv("../data/simpleOpcode/timestamp.csv")["label"]
    integer_label = pd.read_csv("../data/simpleOpcode/integeroverflow.csv")["label"]
    delegate_label = pd.read_csv("../data/simpleOpcode/delegatecall.csv")["label"]
    unchecked_label = pd.read_csv("../data/simpleOpcode/SBunchecked_low_level_calls.csv")["label"]
    label = pd.concat([normal_label, reen_label, time_label, integer_label, delegate_label, unchecked_label],
                      axis=0).values
    print(label.shape)
    for i in range(label.shape[0]):
        if label[i] > 0:
            label[i] = 1



    normal = pd.read_csv("../result/contractward/data/" + "normal.csv", index_col=0)
    reentrancy = pd.read_csv("../result/contractward/data/" + "reentrancy.csv", index_col=0)
    timestamp = pd.read_csv("../result/contractward/data/" + "timestamp.csv", index_col=0)
    integer = pd.read_csv("../result/contractward/data/" + "integeroverflow.csv", index_col=0)
    delegatecall = pd.read_csv("../result/contractward/data/" + "delegatecall.csv", index_col=0)
    unchecked = pd.read_csv("../result/contractward/data/" + "SBunchecked_low_level_calls.csv", index_col=0)
    data = pd.concat([normal, reentrancy, timestamp, integer, delegatecall, unchecked], axis=0).values
    print(data.shape)
    return data, label


# data, label = origin()
# data, label = feature()
data, label = contractward()
digits_final = TSNE(perplexity=30).fit_transform(data)
plot(digits_final, label)
