import os
import shutil
from pathlib import Path

def filter_binary_files(source_dir, target_dir):
    """
    处理流程：
    1. 创建目标目录（如果不存在）
    2. 遍历源目录所有.txt文件
    3. 精确匹配"Binary"出现次数
    4. 复制符合条件的文件
    """
    # 确保目标目录存在
    Path(target_dir).mkdir(parents=True, exist_ok=True)
    
    processed_files = 0
    matching_files = 0

    for root, _, files in os.walk(source_dir):
        for filename in files:
            if filename.lower().endswith('.txt'):
                file_path = os.path.join(root, filename)
                processed_files += 1
                
                try:
                    with open(file_path, 'r', encoding='utf-8') as f:
                        content = f.read()
                        # 精确统计完全匹配的"Binary"
                        count = content.count('Binary')
                        
                        if count == 1:
                            # shutil.copy2(file_path, dest_path)  # 直接覆盖同名文件
                            # 创建保持原始名称的目标路径
                            dest_path = os.path.join(target_dir, filename)
                            # 处理重复文件名
                            dest_path = get_unique_filename(dest_path)
                            shutil.copy2(file_path, dest_path)
                            matching_files += 1
                            
                except Exception as e:
                    print(f"处理文件 {filename} 时出错: {str(e)}")
    
    print(f"处理完成：共扫描 {processed_files} 个文件，找到 {matching_files} 个匹配文件")

def get_unique_filename(path):
    """
    生成唯一文件名防止覆盖
    示例：file.txt → file (1).txt → file (2).txt
    """
    counter = 1
    original_path = path
    while os.path.exists(path):
        path_parts = os.path.splitext(original_path)
        path = f"{path_parts[0]} ({counter}){path_parts[1]}"
        counter += 1
    return path

# 使用示例
if __name__ == "__main__":
    source_directory = "dataset/contracts/transaction_order/bytecode"  # 替换为实际源目录
    target_directory = "dataset/contracts/transaction_order/bytecode1"  # 替换为目标目录
    
    filter_binary_files(source_directory, target_directory)
