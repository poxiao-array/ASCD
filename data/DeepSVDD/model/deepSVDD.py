import os

os.environ['KERAS_BACKEND'] = 'tensorflow'
import tensorflow
import keras

print(keras.__version__)
import keras.backend as K
from keras.models import Model
from keras.layers import Conv1D, BatchNormalization, Flatten, Reshape
from keras.layers import Input, Dense, GRU, LeakyReLU, MaxPool1D, Bidirectional
from keras.callbacks import LearningRateScheduler
import math
import numpy as np
from keras.regularizers import l2
from keras.optimizers import adam_v2
import scipy.io as sio


# %%
def step_decay1(epoch):
    initial_lrate = 0.001
    drop = 0.1
    epochs_drop = 300
    lrate = initial_lrate * math.pow(drop, math.floor((1 + epoch) / epochs_drop))
    return lrate

def step_decay2(epoch):
    initial_lrate = 0.00001
    drop = 0.1
    epochs_drop = 150
    lrate = initial_lrate * math.pow(drop, math.floor((1 + epoch) / epochs_drop))
    return lrate

reduce_lr1 = LearningRateScheduler(step_decay1)
reduce_lr2 = LearningRateScheduler(step_decay2)

def get_lr_metric(optimizer):
    def lr(y_true, y_pred):
        return optimizer.lr
    return lr

class DeepSVDD:
    def __init__(self, nu=0.1, regul=1e-6, shape=864):
        self.c = None
        self.nu = nu
        self.regul = l2(regul)

        self.dim = 512
        self.shape = shape
        self.AE, self.encoder = self.AEencoder()
        self.optimizer = adam_v2.Adam(0.0)
        self.lr_metric = get_lr_metric(self.optimizer)

    # 预训练
    def prefit(self, X, X_test, y_test, epochs=350, batch_size=128):
        self.AE.compile(loss=self.loss1, optimizer=self.optimizer,
                        metrics=[self.lr_metric])
        self.AE.fit(X, X.reshape(-1, self.shape), epochs=epochs, batch_size=batch_size,
                    verbose=2, shuffle=False,
                    callbacks=[reduce_lr1])

    def fit(self, X, X_test, y_test, epochs=250, batch_size=128):
        self.encoder.compile(loss=self.loss2, optimizer=self.optimizer,
                             metrics=[self.lr_metric])
        score = self.encoder.fit(X, X.reshape(-1, self.shape), epochs=epochs,
                                 batch_size=batch_size, verbose=2, shuffle=False,
                                 callbacks=[roc_callback(training_data=[X_test, y_test]
                                                         , C=self.c), reduce_lr2])
        return score

    def predict(self, X):
        y_pred = self.encoder.predict(X)
        dist = np.sum((y_pred - self.c) ** 2, axis=1)
        score = np.array(dist)
        # sio.savemat('score.mat', {'score': score})
        return score

    # %%
    def AEencoder(self):
        ip = Input(shape=(self.shape,))
        ip1 = Reshape(target_shape=(self.shape, 1))(ip)
        y = Conv1D(32, 3, strides=1, padding='valid', use_bias=False)(ip1)
        y = BatchNormalization(epsilon=1e-4, trainable=False)(y)
        y = LeakyReLU()(y)
        y = MaxPool1D(2)(y)

        y = Conv1D(64, 3, strides=1, padding='valid', use_bias=False)(y)
        y = BatchNormalization(epsilon=1e-4, trainable=False)(y)
        y = LeakyReLU()(y)
        y = MaxPool1D(2)(y)

        y = Conv1D(64, 3, strides=1, padding='valid', use_bias=False)(y)
        y = BatchNormalization(epsilon=1e-4, trainable=False)(y)
        y = LeakyReLU()(y)
        y = MaxPool1D(2)(y)

        #        y = Conv1D(128,3,strides=1, padding='same',use_bias=False)(y)
        #        y = BatchNormalization(epsilon=1e-4, trainable=False)(y)
        #        y = LeakyReLU()(y)

        #        lstm_out = Bidirectional(GRU(64,return_sequences=True,use_bias=False))(y)
        #        lstm_out = BatchNormalization(epsilon=1e-4, trainable=False)(lstm_out)
        #        lstm_out = Bidirectional(GRU(64,return_sequences=True,use_bias=False))(lstm_out)
        #        lstm_out = BatchNormalization(epsilon=1e-4, trainable=False)(lstm_out)

        lstm_out = Flatten()(y)
        y1 = Dense(self.dim, use_bias=False, kernel_regularizer=self.regul)(lstm_out)
        y2 = Dense(self.shape, use_bias=False, kernel_regularizer=self.regul)(y1)

        model1 = Model(ip, y2)
        # model1.summary()
        model2 = Model(ip, y1)
        # model2.summary()
        return model1, model2

    # %%
    def _init_c(self, X, eps=1e-1):
        c = np.mean(self.encoder.predict(X), axis=0)
        c[(abs(c) < eps) & (c < 0)] = -eps
        c[(abs(c) < eps) & (c > 0)] = eps
        self.c = c
        print(c)
        return c

    def prepeat_c(self, X):
        return np.repeat((self.c).reshape((1, -1)), X.shape[0], 0)

    def softloss(self, y_true, y_pred):
        dist = K.sum(K.square(y_pred - y_true), axis=1)
        scores = dist - self.R ** 2
        loss = self.R ** 2 + (1 / self.nu) * K.maximum(K.zeros_like(scores), scores)
        return loss

    def loss1(self, y_true, y_pred):
        loss = K.mean(K.sum((y_pred - y_true) ** 2, axis=-1))
        print('compile loss 1')
        return loss

    def loss2(self, y_true, y_pred):
        loss = K.mean(K.sum((y_pred - self.c) ** 2, axis=-1))
        print('compile loss 2')
        return loss


# %%%%

class roc_callback(keras.callbacks.Callback):
    def __init__(self, training_data, C=None):
        self.x = training_data[0]
        self.y = training_data[1]
        self.C = C

    def on_train_begin(self, logs={}):
        return

    def on_train_end(self, logs={}):
        y_pred = self.model.predict(self.x)
        dist = np.sum((y_pred - self.C) ** 2, axis=1)
        score = np.array(dist)
        sio.savemat('score.mat', {'score': score})
        return score

    def on_epoch_begin(self, epoch, logs={}):
        return

    def on_epoch_end(self, epoch, logs={}):
        return

    def on_batch_begin(self, batch, logs={}):
        return

    def on_batch_end(self, batch, logs={}):
        return
