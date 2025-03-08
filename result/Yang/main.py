import os
os.environ['CURL_CA_BUNDLE'] = ''
os.environ['HF_ENDPOINT'] = 'https://hf-mirror.com'
import json
import joblib
import numpy as np
import pandas as pd
import torch
from solcx import compile_standard, install_solc
from transformers import AutoTokenizer, AutoModel
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score, f1_score, classification_report


# 1. 编译 Solidity 合约并获取 Opcode
def compile_contract(source_code, solc_version='0.8.0'):
    install_solc(solc_version)
    compiled_sol = compile_standard(
        {
            "language": "Solidity",
            "sources": {"contract.sol": {"content": source_code}},
            "settings": {"outputSelection": {"*": {"*": ["evm.bytecode"]}}},
        },
        solc_version=solc_version,
    )
    return compiled_sol['contracts']['contract.sol'].values().__iter__().__next__()['evm']['bytecode']['object']

# 2. 解析 Bytecode 为 Opcode
def bytecode_to_opcode(bytecode):
    opcode_list = []
    i = 0
    while i < len(bytecode):
        if bytecode[i:i+2] == '60':  # PUSH1 指令
            opcode_list.append('PUSH')
            i += 4  # PUSH1 后接一个字节（两位十六进制）
        else:
            opcode_list.append(bytecode[i:i+2])
            i += 2
    return opcode_list

# 3. 计算 Opcode 2-gram 特征
def extract_opcode_2gram_features(opcodes, n=2, max_features=500):
    grams = [' '.join(opcodes[i:i+n]) for i in range(len(opcodes)-n+1)]
    unique_grams = list(set(grams))

    feature_vector = np.zeros(max_features, dtype=np.float32)
    for i, gram in enumerate(unique_grams[:max_features]):  
        feature_vector[i] = grams.count(gram)

    return feature_vector


# 4. CodeBERT 预训练模型获取 Token 特征
def extract_codebert_features(source_code, model_name='microsoft/codebert-base'):
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")  # 选择 GPU 或 CPU
    tokenizer = AutoTokenizer.from_pretrained(model_name)
    model = AutoModel.from_pretrained(model_name).to(device)  # 将模型移动到 GPU

    inputs = tokenizer(source_code, return_tensors='pt', padding=True, truncation=True, max_length=512).to(device)  # 将输入数据移动到 GPU

    with torch.no_grad():
        outputs = model(**inputs)
    return outputs.last_hidden_state.mean(dim=1).squeeze().cpu().numpy()

# 5. 训练随机森林分类器
def train_model(X, y):
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
    clf = RandomForestClassifier(n_estimators=100, random_state=42)
    clf.fit(X_train, y_train)
    y_pred = clf.predict(X_test)
    report = classification_report(y_test, y_pred)
    print(report)
    # print(f"Accuracy: {accuracy_score(y_test, y_pred):.4f}")
    # print(f"F1 Score: {f1_score(y_test, y_pred, average='macro'):.4f}")
    joblib.dump(clf, 'rf_model.pkl')

# 示例：读取智能合约并提取特征
def process_smart_contract(source_code, opcodes, label):
    opcode_features = extract_opcode_2gram_features(opcodes)
    codebert_features = extract_codebert_features(source_code)
    features = np.concatenate((opcode_features, codebert_features))
    # print(features)
    return features, label

# 读取合约数据并训练
def main():
    root = 'D:\code\smart contract\LG-DeepSVDD\data'
    label_map = {'normal': 0, 'reentrancy': 1, 'timestamp': 2, 'delegatecall': 3, 'transaction_order': 4}  #'normal': 0, 'integeroverflow': 1, , 'delegatecall': 2
    dataset = []
    for type_vul in label_map.keys():
        # for  in ['sourcecode', 'simpleOpcode']:
        temp1_root = os.path.join(root, 'sourcecode')
        temp2_root = os.path.join(root, 'opcode')
        source_path = os.path.join(temp1_root, type_vul)
        opcode_path = os.path.join(temp2_root, type_vul)
        # cnt = 0
        for file in os.listdir(source_path):
            # if cnt > 10:
            #     break
            # cnt += 1
            filename = file.split('.')[0]
            source_file_path = os.path.join(source_path, file)
            # opcode_file_path = os.path.join(source_path, file)  #os.path.join(opcode_path, file)
            opcode_file_path = os.path.join(opcode_path, file)
            with open(source_file_path, 'r', encoding='utf-8') as f:
                source_code = f.read()
            with open(opcode_file_path, 'r', encoding='utf-8') as f:
                opcode = f.read()
            dataset.append({"code": source_code, "opcode": opcode, "label": label_map[type_vul]})

    X, y = zip(*[process_smart_contract(item['code'], item['opcode'], item['label']) for item in dataset])
    X, y = np.array(X), np.array(y)
    # print(X)
    train_model(X, y)

if __name__ == "__main__":
    main()
