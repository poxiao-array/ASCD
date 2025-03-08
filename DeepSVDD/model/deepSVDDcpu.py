from keras.models import Sequential,Model
#from keras.engine.base_layer import Layer
from sklearn.metrics import roc_auc_score
import numpy as np
from keras.regularizers import l2
import keras
import keras.backend as K
from keras.utils import plot_model
from keras.layers import Conv1D, BatchNormalization, Flatten
from keras.layers import Input, Dense,GRU,LeakyReLU,MaxPool1D,Bidirectional

pool_size = 3
#%%
def lap_reg(weights):  #自定义正则项
    return  0.01 * K.sum(keras(weights))
#class BN(Layer):
#    def __init__(self, **kwargs):
#        super(BN, self).__init__(**kwargs)
#    def call(self, inputs):
#        A = K.t(inputs,shape = (-1,864,1))(epsilon = 1e-4)(inputs,training = False)
#        return A
    
#%%
class DeepSVDDcpu:
    def __init__(self,shape = 145):
        self.encoder = self.AEencoder()
        self.decoder = self.AEdecoder()
        self.optimizer = keras.optimizers.Adam()
        self.c = None
        self.shape = (864,1)
        self.batch = 172
        
#%%
    def _init_c(self, X, eps=1e-1):
        c = np.mean(self.encoder.predict(X),axis= 0)
        c[(abs(c) < eps) & (c < 0)] = -eps
        c[(abs(c) < eps) & (c > 0)] = eps
        self.c = c
    
    def prepeat_c(self, X):
        return np.repeat((self.c).reshape((1,-1)),X.shape[0],0)
    
    def mseloss(self, y_true,y_pred):
        
        return K.mean(K.sum(K.square(y_pred - K.reshape(y_true,(-1,y_pred.shape[-1]))), axis=1))

    def mseloss2(self, y_true,y_pred):
        
        return K.mean(K.sum(K.square(y_pred - y_true), axis=1))
#%%
    def AEencoder(self):
        
        ip = Input(shape=(864,1))
        y = Conv1D(32,5,strides=1, padding='same',use_bias=False,name="conv1")(ip)
        y = BatchNormalization(epsilon=1e-4, trainable=False)(y)
        y = LeakyReLU()(y)
        y = MaxPool1D(pool_size)(y)
        
        y = Conv1D(64,5,strides=1, padding='same',use_bias=False,name="conv2")(y)
        y = BatchNormalization(epsilon=1e-4, trainable=False)(y)
        y = LeakyReLU()(y)
        y = MaxPool1D(pool_size)(y)
        
        y = Conv1D(128,5,strides=1, padding='same',use_bias=False,name="conv3")(y)
        y = BatchNormalization(epsilon=1e-4, trainable=False)(y)
        y = LeakyReLU()(y)
        y = MaxPool1D(pool_size)(y)
        
        y = Conv1D(128,5,strides=1, padding='same',use_bias=False,name="conv4")(y)
        y = BatchNormalization(epsilon=1e-4, trainable=False)(y)
        y = LeakyReLU()(y)
        
        lstm_out = Bidirectional(GRU(64,return_sequences=True,use_bias=False))(y)
        lstm_out = BatchNormalization(epsilon=1e-4, trainable=False)(lstm_out)
        lstm_out = Bidirectional(GRU(64,return_sequences=True,use_bias=False))(lstm_out)
        lstm_out = BatchNormalization(epsilon=1e-4, trainable=False)(lstm_out)
    
        lstm_out = Flatten()(lstm_out)
        out = Dense(32, use_bias=False)(lstm_out)
        model = Model(ip, out)
        model.summary()
        return model
    
    def AEdecoder(self):
        model = Sequential()
        model.add(Dense(256,input_dim = 32, use_bias=False,activation='relu'))
        model.add(Dense(864, use_bias=False))
        
        encoded_repr = Input(shape = (32,))
        validity = model(encoded_repr)
        return Model(encoded_repr, validity)
#%%
    def prefit(self, X, X_test, y_test, epochs=100):

        self.decoder.trainable = True
        print(self.encoder.trainable,self.decoder.trainable)
        
        x = Input(shape=self.shape)
        latent_op = self.encoder(x)
        reco = self.decoder(latent_op)
        
        self.AE = Model(inputs=x,outputs=reco)
        self.AE.compile(loss=self.mseloss,optimizer=self.optimizer)
        self.AE.fit(X,X,epochs=epochs, batch_size=self.batch)

        self.decoder.trainable = False
        print(self.encoder.trainable,self.decoder.trainable)
#%%
    def fit(self, X, X_test, y_test, epochs=100):

        print(self.encoder.trainable,self.decoder.trainable)
        x = Input(shape=self.shape)
        latent = self.encoder(x)

        self.svdd = Model(inputs=x,outputs=latent)
        self.svdd.compile(loss=self.mseloss2,optimizer=self.optimizer)
        self.svdd.fit(X,self.prepeat_c(X),epochs=epochs, batch_size=self.batch)
        
        print(self.predict(X_test))

#%%
    def predict(self, X):
        laten = self.encoder.predict(X)
        score = np.sum((laten - self.prepeat_c(X))**2,axis = 1)
#        auc = roc_auc_score(y_test,-score)
        return score
        
    def predict2(self, X, y_test):
        laten0 = self.encoder.predict(X)
        laten = self.decoder.predict(laten0)
        score = np.sum((laten - X)**2,axis = 1)
        auc = roc_auc_score(y_test,-score)
        return auc

#%%
#    def AEencoder(self):
#        model = keras.models.Sequential()
#    
#        model.add(keras.layers.Conv2D(8, (5, 5), padding='same', 
#                                      kernel_regularizer=l2(1e-6),use_bias=False))
#        model.add(keras.layers.LeakyReLU(1e-2))
#        model.add(keras.layers.BatchNormalization(epsilon=1e-4, trainable=False))
#    
#        model.add(keras.layers.Conv2D(4, (5, 5), padding='same', 
#                                      kernel_regularizer=l2(1e-6),use_bias=False))
#        model.add(keras.layers.LeakyReLU(1e-2))
#        model.add(keras.layers.BatchNormalization(epsilon=1e-4, trainable=False))
#    
#        model.add(keras.layers.Flatten())
#        model.add(keras.layers.Dense(32, kernel_regularizer=l2(1e-6),use_bias=False))
#        
#        encoded_repr = Input(shape = (28,28,1))
#        validity = model(encoded_repr)
#        model.summary()
#        return Model(encoded_repr, validity)
#    
#    def AEdecoder(self):
#        
#        model = keras.models.Sequential()
#        
#        model.add(Dense(128, input_dim=32,kernel_regularizer=l2(1e-6),use_bias=False))
#        model.add(LeakyReLU(1e-2))
#        model.add(Dense(256,kernel_regularizer=l2(1e-6),use_bias=False))
#        model.add(LeakyReLU(1e-2))
#        model.add(Dense(784, 
#                        kernel_regularizer=l2(1e-6),use_bias=False,activation="sigmoid"))
#        model.summary()
#
#        encoded_repr = Input(shape = (32,))
#        validity = model(encoded_repr)
#        return Model(encoded_repr, validity)
    #%%


