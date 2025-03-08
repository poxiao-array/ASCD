import subprocess
import os
import demo1
from pathlib import Path

# 获取solidity文件的编译版本号
def get_sol_version(file_path):
    match_obj = demo1.check_pragma(file_path)
    return match_obj.group('version')

# solc-select切换指定版本
def solc_use_version(version):
    cmd = 'solc-select use '+version
    os.system(cmd)

def compile_solidity_contracts(input_dir="dataset/contracts/transaction_order/sourcecode", output_dir="dataset/contracts/transaction_order/bytecode"):
    # 创建输出目录
    Path(output_dir).mkdir(parents=True, exist_ok=True)
    
    # 获取所有Solidity文件
    sol_files = [f for f in os.listdir(input_dir) if f.endswith(".sol")]
    
    for sol_file in sol_files:
        try:
            # 构造文件路径
            input_path = os.path.join(input_dir, sol_file)
            output_path = os.path.join(output_dir, f"{Path(sol_file).stem}.txt")

            version = get_sol_version(input_path)
            solc_use_version(version)

            # 执行编译命令
            result = subprocess.run(
                ["solc", "--bin", input_path],
                check=True,
                capture_output=True,
                text=True
            )

            # 解析输出结果
            if "Binary:" in result.stdout:
                # 提取二进制数据
                # bin_output = result.stdout.split("Binary:")[1].strip()
                
                # 写入文件
                with open(output_path, "w") as f:
                    # f.write(bin_output)
                    f.write(result.stdout)
                print(f"✓ 成功编译 {sol_file} => {output_path}")
            else:
                print(f"⚠ {sol_file} 未找到字节码，可能为空合约")

        except subprocess.CalledProcessError as e:
            print(f"✗ 编译失败 {sol_file}:")
            print(f"错误信息: {e.stderr.strip()}")
        except Exception as e:
            print(f"✗ 处理 {sol_file} 时发生意外错误: {str(e)}")

if __name__ == "__main__":
    # 设置编译器版本（根据实际情况修改）
    # subprocess.run(["solc-select", "use", "0.8.0"], check=True)
    
    compile_solidity_contracts()
