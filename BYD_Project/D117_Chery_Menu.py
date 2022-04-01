import os


def read_directory_get_file_name(in_path):
    file_name_list = []
    for root, dirs, files in os.walk(in_path):
        for f in files:
            file_name_list.append(f.replace('.txt', '').upper())
    return file_name_list


def delete_non_existent_menu(path, name_list, out):
    out_list = []
    with open(path, 'r') as f:
        for line in f.readlines():
            if '\\快速测试\\' in line:
                out_list.append(line)
                continue
            list1 = line.split('\\')
            name_0 = list1[-2]
            for name_1 in name_list:
                if name_0 == name_1:
                    out_list.append(line)
                    continue
    with open(out, 'w') as f:
        for line in out_list:
            f.writelines(line)


if __name__ == "__main__":
    in_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\Vehicle Protocol\Protocol\out'
    menu = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\Vehicle Protocol\Data\D117\81_menucode.txt'
    out = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\Vehicle Protocol\Data\D117\menu.txt'
    file_name_list = read_directory_get_file_name(in_path)
    delete_non_existent_menu(menu, file_name_list, out)