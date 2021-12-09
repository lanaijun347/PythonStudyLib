import os
import shutil


def write_act(path_1, path_2, out):
    files_act = os.listdir(path_2)
    files_xy = os.listdir(path_1)
    for file_act in files_act:
        name_act = file_act.replace('.txt', '').upper()
        for file_xy in files_xy:
            xy_list = []
            name_xy = file_xy.replace('.asm', '').upper()
            if name_act == name_xy:
                with open(path_1 + '\\' + file_xy, 'r') as f:
                    for line in f.readlines():
                        if ';===================' in line:
                            break
                        xy_list.append(line)
                with open(path_2 + '\\' + file_act, 'r') as f:
                    act_list = f.readlines()
                with open(out + '\\' + file_xy, 'w') as f:
                    for xy in xy_list:
                        f.writelines(xy)
                    for act in act_list:
                        f.writelines(act)
    file_out = os.listdir(out)
    for name in files_xy:
        if name not in file_out:
            shutil.copy(path_1 + '\\' + name, out + '\\' + name)
    print('over')


if __name__ == '__main__':
    path_1 = r'D:\JBT\诊断项目\JBT_汽油车型\W_033_五菱\柳州五菱-研发文档\Vehicle Protocol\Protocol\协议-X431\新五菱协议'
    path_2 = 'D:\JBT\诊断项目\JBT_汽油车型\W_033_五菱\X117_WL_ACT\out'
    out = 'D:\JBT\诊断项目\JBT_汽油车型\W_033_五菱\柳州五菱-研发文档\Vehicle Protocol\Protocol\协议-X431\out'
    write_act(path_1, path_2, out)
