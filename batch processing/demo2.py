# -*- coding: utf-8 -*-
import os
import shutil
import re
import demo1
import subprocess
import pandas as pd

# 获取solidity文件的编译版本号
def get_sol_version(file_path):
    match_obj = demo1.check_pragma(file_path)
    return match_obj.group('version')

# solc-select切换指定版本
def solc_use_version(version):
    cmd = 'solc-select use '+version
    os.system(cmd)

# 将输出结果以文件形式保存
# x=1表示执行成功，x=0表示执行失败，分别保存至不同文件夹
def save_output(exe_output,file_path,x):
    file_name = os.path.basename(file_path)
    if x:
        dirname = './dataset/detec_res/detec_res_analyzed/'
    else:
        dirname = './dataset/detec_res/detec_res_error/'
    full_path = dirname+file_name
    with open(full_path,'w',encoding="utf-8") as f:
        f.write(exe_output)

    
# 判断执行结果为成功或失败,成功返回true，失败返回false
def check_result(exe_output,file_path):
    filename = os.path.basename(file_path)
    pattern = filename+r'\sanalyzed'
    return re.search(pattern, exe_output)

# 对slither执行结果进行处理
def get_vul(exe_output):
    pattern = r'Reference: https://github\.com/crytic/slither/wiki/Detector-Documentation#([a-z,0-9,-]*[PRNG]*)'
    return re.findall(pattern,exe_output)


def slither_execution(file_path,dct):
    cmd = 'slither '+file_path
    file_name = os.path.basename(file_path)
    version = get_sol_version(file_path)
    solc_use_version(version)
    p = subprocess.Popen(cmd,shell=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE,encoding='utf-8')
    exe_output = p.communicate()[1]
    
    if check_result(exe_output,file_path):
        save_output(exe_output,file_path,1)
        vul_list = get_vul(exe_output)
        for vul in vul_list:
            des_path = os.path.join('./dataset/labeled_contracts',vul)
            demo1.cpy_to_dir(file_path,des_path)
            dct[vul] = '1'
        dct['filename'] = file_name
        return True
            
    else:
        save_output(exe_output,file_path,0)
        demo1.move_to_dir(file_path,'./dataset/execution_error')
        return False


    
    
    
    





