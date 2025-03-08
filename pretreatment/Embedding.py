"""
训练Tokenizer对操作码序列进行编码(按照词频),
并保存模型到 tok.pickle
"""

from tools import getdataset, word_information
# 读取数据
file = "normal"
opcode, label = getdataset(file)
print(opcode.shape, label.shape)

'''使用Tokenizer对词组进行编码'''
from keras.preprocessing.text import Tokenizer
# 创建了一个Tokenizer对象后，使用该对象的fit_on_texts()函数，以空格去识别每个词,
# 可以将输入的文本中的每个词编号，编号是根据词频的，词频越大，编号越小。
max_words = 64  # 使用的最大词语数为64
max_len = 500  # 句子的最大长度为500
tok = Tokenizer(num_words=max_words)
tok.fit_on_texts(opcode)
# 查看编码的word信息
word_information(tok)
print(tok.word_index)


from keras_preprocessing import sequence
# 对每个词编码之后，每个句子中的每个词就可以用对应的编码表示，即每个句子可以转变成一个向量了：
opcode_seq = tok.texts_to_sequences(opcode)
# 将每个序列调整为相同的长度
opcode_seq_mat = sequence.pad_sequences(opcode_seq, maxlen=max_len)
print(opcode_seq_mat.shape)

"""模型的保存和复用"""
# 保存训练好的Tokenizer，和导入
import pickle
# saving
with open('tok.pickle', 'wb') as handle:
    pickle.dump(tok, handle, protocol=pickle.HIGHEST_PROTOCOL)
# loading
with open('tok.pickle', 'rb') as handle:
    tok = pickle.load(handle)

# 查看重新导入的tok结果：
word_information(tok)

