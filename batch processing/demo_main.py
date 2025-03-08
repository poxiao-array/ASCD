# -*- coding: utf-8 -*-
import demo1
import demo2
import os
import pandas as pd

def getDetectors(file_path):
    df = pd.read_csv(file_path,encoding = 'utf-8',dtype='string')
    return list(df['vul'])


if __name__ == "__main__":
    contracts_path = './dataset/contracts/transaction_order'
    demo1.pre_process(contracts_path)
    file_list = os.listdir(contracts_path)
    
    cols = getDetectors('./detectors.csv')
    cols.insert(0,'filename')
    df = pd.DataFrame(columns=cols)
    
    for file in file_list:
        dct = dict.fromkeys(cols,'0')
        file_path = os.path.join(contracts_path, file)
        if demo2.slither_execution(file_path,dct):
            # df = df.append(dct,ignore_index=True)
            df = pd.concat([df, pd.DataFrame.from_records([dct])], ignore_index=True)
    
    df.to_csv('./res.csv',encoding = 'utf-8')
        
            



