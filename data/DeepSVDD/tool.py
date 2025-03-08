import pandas as pd

normal = pd.read_csv("../data/dataset/features/fused/5normal.csv").iloc[:, 1:]
print(normal.shape)
vulnerability = pd.read_csv("../data/dataset/features/fused/5vulnerability.csv").iloc[:, 1:]
print(vulnerability.shape)
data = pd.concat([normal, vulnerability], axis=0).values
from sklearn.preprocessing import MinMaxScaler
data = MinMaxScaler().fit_transform(data)[4588:, :]
print(data.shape)

# reentrancy = pd.read_csv("../data/dataset/features/fused/5reentrancy.csv").iloc[:, 1:].values
# timestamp = pd.read_csv("../data/dataset/features/fused/timestamp.csv").iloc[:, 1:].values
# integeroverflow = pd.read_csv("../data/dataset/features/fused/integeroverflow.csv").iloc[:, 1:].values
# delegatecall = pd.read_csv("../data/dataset/features/fused/delegatecall.csv").iloc[:, 1:].values
# SBunchecked_low_level_calls = pd.read_csv("../data/dataset/features/fused/SBunchecked_low_level_calls.csv").iloc[:, 1:].values
# SBaccess_control = pd.read_csv("../data/dataset/features/fused/SBaccess_control.csv").iloc[:, 1:].values
# SBarithmetic = pd.read_csv("../data/dataset/features/fused/SBarithmetic.csv").iloc[:, 1:].values
# SBdenial_of_service = pd.read_csv("../data/dataset/features/fused/SBdenial_of_service.csv").iloc[:, 1:].values
# SBfront_running = pd.read_csv("../data/dataset/features/fused/SBfront_running.csv").iloc[:, 1:].values
# SBshort_address = pd.read_csv("../data/dataset/features/fused/SBshort_address.csv").iloc[:, 1:].values
# SBshort_address = pd.read_csv("../data/dataset/features/fused/SBshort_address.csv").iloc[:, 1:].values
# SBshort_address = pd.read_csv("../data/dataset/features/fused/SBshort_address.csv").iloc[:, 1:].values