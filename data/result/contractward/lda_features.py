# lda主题特征提取
import os
from gensim import corpora, models, similarities
train = []
path = "E:\\SmartContract\\opensourse\\"

"""准备好训练语料，整理成gensim需要的输入格式"""
for filename in os.listdir(path+'simpleOpcode1\\'):   # 含有操作数的操作码
    with open(path + 'simpleOpcode1\\' + filename, "rb") as f:
        line=f.read().decode()   # 默认以字符串编码解码
        line1=line.replace("\r\n",' ')
        line2=[word.strip() for word in line1.split(' ')]   # 移除字符串头尾指定的空格
        # print(line2)
        train.append(line2)

"""构建词频矩阵，训练LDA模型"""
dictionary = corpora.Dictionary(train)
print(dictionary)
# corpus[0]: [(0, 1), (1, 1), (2, 1), (3, 1), (4, 1),...]
# corpus是把每条新闻ID化后的结果，每个元素是新闻中的每个词语，在字典中的ID和频率(ID,频率)
corpus = [dictionary.doc2bow(text) for text in train]   # 词袋方式，将原文变成数组
print(corpus)
lda = models.LdaModel(corpus=corpus, id2word=dictionary, num_topics=10) # 主题模型
topic_list = lda.print_topics(10)
print("10个主题的单词分布为：\n")
with open(path+"lda_features.txt",'a') as f:
    for topic in topic_list:
        f.write(str(topic)+'\n')
        print(str(topic))
