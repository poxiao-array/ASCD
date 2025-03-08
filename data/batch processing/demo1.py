# -*- coding: utf-8 -*-
import os
import shutil
import re

# 判断是否声明了版本号
def check_pragma(file_path):
    pragma_pattern = r"pragma\s*solidity\s*\^?(?P<version>0\.\d\.\d{1,2})"
    with open(file_path,'r',encoding="utf-8") as f:
        code = f.read()
        return re.search(pragma_pattern,code)
     

# 获取solc的可用版本列表
def get_solc_versions():
    cmd = 'solc-select versions'
    process = os.popen(cmd)
    version_list = process.read()
    process.close()
    return version_list

# 将文件复制到目标文件夹
def cpy_to_dir(src_path,des_path):
    is_exists = os.path.exists(des_path)
    cmd_mkdir = 'mkdir '+des_path
    if not is_exists:
        os.system(cmd_mkdir)
    shutil.copy(src_path,des_path)
    
# 将文件移动至目标文件夹 
def move_to_dir(src_path,des_path):
    is_exists = os.path.exists(des_path)
    cmd_mkdir = 'mkdir '+des_path
    if not is_exists:
        os.system(cmd_mkdir)   
    shutil.move(src_path,des_path)

# 数据集预处理，去除未声明版本号和slither没有的版本号合约           
def pre_process(contracts_path):
    file_list = os.listdir(contracts_path)
    version_list = get_solc_versions()
    for file in file_list:
        full_path = os.path.join(contracts_path,file)
        match_obj = check_pragma(full_path)
        if match_obj:
            version = match_obj.group('version')
            if not version_list.count(version):
                move_to_dir(full_path, './dataset/none_version') 
        else:
            move_to_dir(full_path,'./dataset/none_pragma')
            

    

