import os
import re
from pathlib import Path

def process_dot_file(input_path, node_dir, edge_dir):
    # 读取输入文件内容
    with open(input_path, 'r') as f:
        content = f.read()

    # 提取节点信息
    node_pattern = re.compile(r'block_(\w+)\s+\[label="(.*?)"\]', re.DOTALL)
    nodes = []
    for match in node_pattern.finditer(content):
        block_name = f"block_{match.group(1)}"
        # 处理label内容：移除转义字符和换行符，分割指令
        instructions = match.group(2).replace('\\l', ' ').replace('\n', ' ').split()
        nodes.append(f"{block_name} [{' '.join(instructions)}]")

    # 提取边信息
    edge_pattern = re.compile(r'(block_\w+)\s+->\s+(block_\w+)\s+\[(.*?)\]', re.DOTALL)
    edges = []
    for match in edge_pattern.finditer(content):
        src, dst, attr = match.groups()
        edges.append(f"{src} -> {dst} [{attr}]")

    # 写入节点文件
    node_path = node_dir / Path(input_path).name
    with open(node_path, 'w') as f:
        f.write('\n'.join(nodes))

    # 写入边文件
    edge_path = edge_dir / Path(input_path).name
    with open(edge_path, 'w') as f:
        f.write('\n'.join(edges))

def batch_process(input_dir, node_dir, edge_dir):
    # 创建输出目录
    node_dir.mkdir(parents=True, exist_ok=True)
    edge_dir.mkdir(parents=True, exist_ok=True)

    # 遍历输入目录处理所有txt文件
    for filename in os.listdir(input_dir):
        if filename.endswith('.txt'):
            input_path = Path(input_dir) / filename
            process_dot_file(input_path, node_dir, edge_dir)

if __name__ == "__main__":
    # filename=['delegatecall',"integeroverflow", 'normal','reentrancy', 'SBaccess_control', 'SBarithmetic', 'SBdenial_of_service',
    #           'SBfront_running', 'SBshort_address', 'SBunchecked_low_level_calls', 'timestamp', 'transaction_order']
    filename=["SBreentrancy"]
    for name in filename:
        # 配置路径
        input_directory = "data/binary_cfg_code/"+name
        node_directory = Path("data/binary_graph_data/"+name+"/node")
        edge_directory = Path("data/binary_graph_data/"+name+"/edge")

        # 执行批量处理
        batch_process(input_directory, node_directory, edge_directory)


