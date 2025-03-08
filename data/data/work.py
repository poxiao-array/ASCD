import os
import argparse


def delete_files_only_in_a(folder_a, folder_b):
    # 获取文件夹A中的文件列表（仅文件）
    files_a = []
    for f in os.listdir(folder_a):
        file_path = os.path.join(folder_a, f)
        if os.path.isfile(file_path):
            files_a.append(f)

    # 获取文件夹B中的文件列表（仅文件）
    files_b = []
    for f in os.listdir(folder_b):
        file_path = os.path.join(folder_b, f)
        if os.path.isfile(file_path):
            files_b.append(f)

    set_a = set(files_a)
    set_b = set(files_b)
    to_delete = set_a - set_b

    if not to_delete:
        print("没有需要删除的文件。")
        return

    print("以下文件将被删除：")
    for file_name in to_delete:
        print(os.path.join(folder_a, file_name))

    confirm = 'y'
    # confirm = input("是否继续删除？(y/n): ").strip().lower()
    if confirm == 'y':
        deleted_count = 0
        error_count = 0
        for file_name in to_delete:
            file_path = os.path.join(folder_a, file_name)
            try:
                os.remove(file_path)
                print(f"已删除：{file_path}")
                deleted_count += 1
            except Exception as e:
                print(f"删除失败：{file_path}，错误：{e}")
                error_count += 1
        print(f"操作完成。成功删除{deleted_count}个文件，{error_count}个文件删除失败。")
    else:
        print("操作已取消。")


if __name__ == "__main__":
    # parser = argparse.ArgumentParser(description='删除文件夹A中存在但文件夹B中不存在的文件')
    # parser.add_argument('folder_a', help='文件夹A的路径')
    # parser.add_argument('folder_b', help='文件夹B的路径')
    # args = parser.parse_args()
    #
    # # 检查文件夹是否存在
    # if not os.path.isdir(args.folder_a):
    #     print(f"错误：文件夹A '{args.folder_a}' 不存在。")
    #     exit(1)
    # if not os.path.isdir(args.folder_b):
    #     print(f"错误：文件夹B '{args.folder_b}' 不存在。")
    #     exit(1)

    delete_files_only_in_a("simpleOpcode/transaction_order", "binary_cfg_code/transaction_order")