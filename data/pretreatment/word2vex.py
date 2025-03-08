# 训练word to vector 的 word embedding
import os
import numpy as np
import pandas as pd
import argparse
from gensim.models import word2vec


def train_word2vec(x):
    # 训练word to vector 的 word embedding
    # size是神经网络的层数，window是窗口长度，min_count是用来忽略那些出现过少的词语，worker是线程数，iter是循环次数
    model = word2vec.Word2Vec(x, size=250, window=5, min_count=5, workers=12, iter=10, sg=1)
    return model


if __name__ == "__main__":
    print("loading training data ...")
    train_x, y = load_training_data('training_label.txt')
    train_x_no_label = load_training_data('training_nolabel.txt')

    print("loading testing data ...")
    test_x = load_testing_data('testing_data.txt')

    model = train_word2vec(train_x + train_x_no_label + test_x)

    print("saving model ...")
    # model.save(os.path.join(path_prefix, 'model/w2v_all.model'))
    model.save(os.path.join(path_prefix, 'w2v_all.model'))  # 将模型保存这一步可以使得后续的训练更方便，是一个很好的习惯
