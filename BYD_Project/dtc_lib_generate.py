import re
import basics as bs


def dtc_out_lib(id_in_path, dtc_lib_dict, out_path):
    dtc_id = []
    with open(id_in_path, 'r') as f:
        for line in f.readlines():
            dtc_id.append((line.lower()).replace('\n', ''))
    for i in dtc_id:
        if '000000' == i[2:]:
            tmp = i[0:2]
        elif '0000' == i[4:]:
            tmp = i[0:4]
        else:
            tmp = i[0:6]
        path = out_path + '\\' + i + '.asm'
        with open(path, 'w') as f1:
            print('正在执行：' + i + '.asm')
            symbol = '     $*     '
            str1 = '^(' + tmp + ')*'
            for key, value in dtc_lib_dict.items():
                aa = re.findall(str1, key)
                if len(aa[0]) > 1:
                    len1 = len(aa[0])
                    str2 = key[len1:] + symbol + value + '\n'
                    f1.writelines(str2)


def sort_dtc_lib(in_path, out_path):
    data = []
    with open(in_path, 'r') as f:
        for line in f.readlines():
            if line not in data:
                data.append(line)
    data.sort()
    with open(out_path, 'w') as f:
        for line in data:
            f.writelines(line)



if __name__ == '__main__':
    id_in_path = r'D:\JBT\常开\奇瑞\QIRUI\DTC_ID.txt'
    dtc_lib_dict = bs.file_to_dict(r'D:\JBT\常开\奇瑞\QIRUI\libDtc0.txt')
    out_path = r'D:\JBT\常开\奇瑞\QIRUI\DTC'
    dtc_out_lib(id_in_path, dtc_lib_dict, out_path)
    # sort_dtc_lib(r'D:\JBT\常开\奇瑞\QIRUI\libDtc0.txt', r'D:\JBT\常开\奇瑞\QIRUI\111.txt')