import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split


def get_dataset():
    """读取数据集"""
    data = pd.read_csv("../data/features/lstm_features2.csv")  # .iloc[:1000]
    n=1
    '''data2 = pd.read_csv("../data/features/SBaccess_control_lstm_features.csv")
    data3 = pd.read_csv("../data/features/SBarithmetic_lstm_features.csv")
    data4 = pd.read_csv("../data/features/SBbad_randomness_lstm_features.csv")
    data5 = pd.read_csv("../data/features/SBdenial_of_service_lstm_features.csv")
    data6 = pd.read_csv("../data/features/SBfront_running_lstm_features.csv")
    data7 = pd.read_csv("../data/features/SBshort_address_lstm_features.csv")
    data8 = pd.read_csv("../data/features/SBunchecked_low_level_calls_lstm_features.csv")
    print(data2.shape)
    n = data2.shape[0] + data3.shape[0] + data4.shape[0] + data5.shape[0] + data6.shape[0] + data7.shape[0] + data8.shape[0]
    frames = [data1, data2, data3, data4, data5, data6, data7, data8]
    data = pd.concat(frames, axis=0)  # axis按列合并
    print(data.shape)'''
    data_x = data.iloc[:, 2:].values
    label = data["label"].values.reshape(-1, 1)

    # 数据归一化
    from sklearn import preprocessing
    min_max_scaler = preprocessing.MinMaxScaler()
    data_x = min_max_scaler.fit_transform(data_x)

    reentrancy = data_x[:273,:]
    reentrancy_label = label[:273]

    timestamp = data_x[273:622, :]
    timestamp_label = label[273:622]

    normal = data_x[622:, :]
    normal_label = label[622:]

    # elsedata = data_x[-n:, :]
    # elsedata_label = label[-n:]


    return normal, normal_label, reentrancy, reentrancy_label, timestamp, timestamp_label#, elsedata, elsedata_label



# normal, normal_label, reentrancy, reentrancy_label, timestamp, timestamp_label, elsedata, elsedata_label = get_dataset()
normal, normal_label, reentrancy, reentrancy_label, timestamp, timestamp_label = get_dataset()

print(reentrancy.shape)
print(reentrancy_label.shape)
print(timestamp.shape)
print(timestamp_label.shape)
print(normal.shape)
print(normal_label.shape)
# print(elsedata.shape)
# print(elsedata_label.shape)