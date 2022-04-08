"""基础库"""

import binascii
import gl
import os
import re
from BYD.file_path import Debug
import ROEWE.roewe_gl as rgl
import ROEWE.file_path as rpa
from xpinyin import Pinyin

# Debug = './debug.txt'
# Debug = file_path.Debug

# bin文件怎转列表
def bin_to_list(file):
    out = []
    with open(file, 'rb') as f:
        while True:
            c = f.read(1)
            data = str(binascii.b2a_hex(c))[2:-1]
            if not c:
                break
            out.append(data)
    return out


#  把列表（文件）的数据存入新列表（token）
def MoveLibData(list1, offset, buff, num, arr):
    while True:
        # 超出 arr 补 0
        if len(arr) < buff:
            arr.append(0)
        else:
            for i in range(num):
                # 超出 arr 补在末尾
                if len(arr) == buff + i:
                    arr.append(int(list1[offset + i], 16))
                else:
                    arr[buff + i] = int(list1[offset + i], 16)
            break


# 从二进制文件列表中获取数据，反向组合，返回10进制数
def readlist_num(file_list, offset, num):
    try:
        list1 = []
        for i in range(num):
            list1.append(file_list[offset + i])
        list1.reverse()
        out = ''.join(list1)
        return int(out, 16)
    except IndexError:
        tip = '警告：超出列表范围,车型ID为：' + rgl.g_dict['car_id']
        debug(Debug, tip)


# 从二进制文件列表中获取数据，反向组合，返回16进制数
def readlist_reverse(file_list, offset, num):
    try:
        list1 = []
        for i in range(num):
            list1.append(file_list[offset + i])
        list1.reverse()
        out = ''.join(list1)
        return out
    except IndexError:
        tip = '警告：超出列表范围,车型ID为：' + gl.system_id
        debug(Debug, tip)


# 从二进制文件列表中获取数据，正序组合，返回16进制数
def readlist_positive_sequence(file_list, offset, num):
    try:
        list1 = []
        for i in range(num):
            list1.append(file_list[offset + i])
        out = ''.join(list1)
        return out
    except IndexError:
        tip = '警告：超出列表范围,车型ID为：' + gl.system_id
        debug(Debug, tip)


# 从token中获取值
def get_token(arr, offset, num):
    try:
        list1 = []
        for i in range(num):
            list1.append(hex(arr[offset + i]).replace('0x', '').rjust(2, '0'))
        list1.reverse()
        out = ''.join(list1)
        return int(out, 16)
    except IndexError:
        tip = '警告：超出token范围,车型ID为：' + gl.system_id
        debug(Debug, tip)


# 字节格式转成列表模式
def bytearray_to_list(arr, offset=0, num=50):
    list1 = []
    for i in range(num):
        list1.append(hex(arr[offset + i]).replace('0x', '').rjust(2, '0'))
    return list1


# 写入debug文件
def debug(file, string):
    if os.path.exists(file):
        mode = 'a'
    else:
        mode = 'w'
    with open(file, mode) as f:
        f.write(string + '\n')


# 初始化debug文件
def init_debug(file=Debug):
    if os.path.exists(file):
        os.remove(file)


def get_id_data(path, id1):
    str_list = []
    if os.path.exists(path):
        with open(path, 'r') as f1:
            count = 0
            for index, line in enumerate(f1):
                count += 1
        if type(id1) is list:
            with open(path, 'r') as f:
                for i in id1:
                    f.seek(0, 0)
                    count1 = 1
                    for line in f.readlines():
                        count1 += 1
                        if i == line[0:8]:
                            num, str1 = line.split(' ', 1)
                            str_list.append(str1.strip())
                            break
                        if count1 >= count:
                            tip = '警告：超出列表范围,车型ID为：' + gl.system_id + '在 ' + \
                                  path + ' 中未找到--->' + i
                            debug(Debug, tip)
            return str_list
        else:
            with open(path, 'r') as f2:
                for line in f2.readlines():
                    count1 = 1
                    if id1 == line[0:8]:
                        num, str1 = line.split(' ', 1)
                        str_out = str1.strip()
                        break
                    if count1 >= count:
                        tip = '警告：超出列表范围,车型ID为：' + gl.system_id +\
                              '在 ' + path + ' 中未找到--->' + id1
                        debug(Debug, tip)
            return str_out
    else:
        print(path + '不存在！')
    return str_list


def get_command(data_list, cmd_type, tmp=''):
    # if len(data_list) > 2:
    #     print(data_list)
    cmd = ''
    # CAN
    if cmd_type == 2 or cmd_type == 3:
        if type(data_list) == str:
            if tmp == 'act':
                tmp_str = data_list[8:]
                cmd_str = cmd_insert_space_can(tmp_str)
                return cmd_str
        for line in data_list:
            # 取出30帧，存入全局变量
            if len(line) > 32:
                can_30 = line[-16:]
                can_30 = cmd_insert_space_can(can_30)
                can_30 = gl._global_dict['ZH_ID'] + can_30
                if can_30 not in gl._global_dict['CMD_30']:
                    gl._global_dict['CMD_30'].append(can_30)
            # 获取命令
            type_0 = re.findall(r'^[0-9,a-f]{12}0908(.*)', line)
            type_1 = re.findall(r'^[0-9,a-f]{12}0d88c6(.*)', line)
            type_3 = re.findall(r'^[0-9,a-f]{12}0d8840(.*)', line)
            type_4 = re.findall(r'^[0-9,a-f]{12}0988(.*)', line)
            type_5 = re.findall(r'^[0-9,a-f]{12}0b08fbe0(.*)', line)
            if tmp == 'act':
                type_2 = []
                tmp_str = line[8:]
                type_2.append(tmp_str)
            else:
                type_2 = []
            # type_2 = re.findall(r'^0908e460(.*)', line)
            # type_3 = re.findall(r'^0808e460(.*)', line)
            # type_4 = re.findall(r'^0a08e460(.*)', line)
            # type_5 = re.findall(r'^0908fc20(.*)', line)
            # type_6 = re.findall(r'^0b08fc00(.*)', line)
            # type_7 = re.findall(r'^0b08fc00(.*)', line)
            # type_8 = re.findall(r'^0b08e400(.*)', line)
            # type_9 = re.findall(r'^0908e400(.*)', line)
            # type_10 = re.findall(r'^0808e400(.*)', line)
            # type_11 = re.findall(r'^0b08fc20(.*)', line)
            # type_12 = re.findall(r'^0b08e4e0(.*)', line)
            # type_13 = re.findall(r'^0b08e500(.*)', line)
            # type_14 = re.findall(r'^0b08e580(.*)', line)
            # type_15 = re.findall(r'^0b08e6c0(.*)', line)
            # type_16 = re.findall(r'^0b08e620(.*)', line)
            # type_17 = re.findall(r'^0b08e5a0(.*)', line)
            # type_18 = re.findall(r'^0b08e1a0(.*)', line)
            # type_19 = re.findall(r'^0908fc00(.*)', line)
            # type_20 = re.findall(r'^0808fc00(.*)', line)
            # type_21 = re.findall(r'^0808fc20(.*)', line)
            # type_22 = re.findall(r'^0a08e500(.*)', line)
            # type_23 = re.findall(r'^0808e500(.*)', line)
            # type_24 = re.findall(r'^0908e4e0(.*)', line)
            # type_25 = re.findall(r'^0808e4e0(.*)', line)
            if type_0:
                can_1 = re.findall(r'(.*)0908[0-9,a-f]{16}', type_0[0])
                cmd_str = type_0[0].upper()
                if can_1:
                    cmd_str = can_1[0].upper()
                cmd_str = cmd_insert_space_can(cmd_str)
                #cmd_str = gl._global_dict['ZH_ID'] + cmd_str
                # cmd.append(cmd_str)
                cmd = cmd_str
            elif type_4:
                can_1 = re.findall(r'(.*)0988[0-9,a-f]{16}', type_4[0])
                cmd_str = type_4[0].upper()
                if can_1:
                    cmd_str = can_1[0].upper()
                cmd_str = cmd_insert_space_can(cmd_str)
                cmd = cmd_str
            elif type_5:
                can_1 = re.findall(r'(.*)0b08fbe0[0-9,a-f]{16}', type_5[0])
                cmd_str = type_5[0].upper()
                if can_1:
                    cmd_str = can_1[0].upper()
                cmd_str = cmd_insert_space_can(cmd_str)
                cmd = cmd_str
            elif type_1:
                type_1 = type_1[0][6:]
                can_1 = re.findall(r'(.*)0d88c6[0-9,a-f]{22}', type_1)
                cmd_str = type_1.upper()
                if can_1:
                    cmd_str = can_1[0].upper()
                if len(cmd_str) != 16:
                    tip = '警告：车型ID为：' + gl.system_id + \
                          'CAN型命令获取错误，请查看程序basics.py -> get_command()--type_1'
                    debug(Debug, tip)
                cmd_str = cmd_insert_space_can(cmd_str)
                cmd = cmd_str
            elif type_3:
                type_3 = type_3[0][6:]
                can_1 = re.findall(r'(.*)0d8840[0-9,a-f]{22}', type_3)
                cmd_str = type_3.upper()
                if can_1:
                    cmd_str = can_1[0].upper()
                if len(cmd_str) != 16:
                    tip = '警告：车型ID为：' + gl.system_id + \
                          'CAN型命令获取错误，请查看程序basics.py -> get_command()--type_3'
                    debug(Debug, tip)
                cmd_str = cmd_insert_space_can(cmd_str)
                cmd = cmd_str
            elif type_2:
                cmd_str = type_2[0].upper()
                cmd_str = cmd_insert_space_can(cmd_str)
                cmd = cmd_str
            # elif type_3:
            #     cmd_str = type_3[0].upper()
            #     cmd_str = cmd_insert_space_can(cmd_str)
            #     cmd = cmd_str
            # elif type_4:
            #     cmd_str = type_4[0].upper()
            #     cmd_str = cmd_insert_space_can(cmd_str)
            #     cmd = cmd_str
            # elif type_5:
            #     cmd_str = type_5[0].upper()
            #     cmd_str = cmd_insert_space_can(cmd_str)
            #     cmd = cmd_str
            # elif type_6:
            #     cmd_str = type_6[0].upper()
            #     cmd_str = cmd_insert_space_can(cmd_str)
            #     cmd = cmd_str
            # elif type_7:
            #     cmd_str = type_7[0].upper()
            #     cmd_str = cmd_insert_space_can(cmd_str)
            #     cmd = cmd_str
            # elif type_8:
            #     cmd_str = type_8[0].upper()
            #     cmd_str = cmd_insert_space_can(cmd_str)
            #     cmd = cmd_str
            # elif type_9:
            #     cmd_str = type_9[0].upper()
            #     cmd_str = cmd_insert_space_can(cmd_str)
            #     cmd = cmd_str
            # elif type_10:
            #     cmd_str = type_10[0].upper()
            #     cmd_str = cmd_insert_space_can(cmd_str)
            #     cmd = cmd_str
            elif '1000010200020b08fbe0' in line and '0b08fc003000000000000000' in line:
                can_1 = line.replace('1000010200020b08fbe0', '').replace('0b08fc003000000000000000', '')
                if can_1:
                    cmd = cmd_insert_space_can(can_1.upper())
                else:
                    tip = '警告：超出列表范围,车型ID为：' + gl.system_id + \
                          'CAN型命令获取错误，请查看程序basics.py -> get_command()'
                    debug(Debug, tip)

            else:
                tip = '警告：超出列表范围,车型ID为：' + gl.system_id + \
                      'CAN型命令获取错误，请查看程序basics.py -> get_command() ' + repr(data_list)
                debug(Debug, tip)
    # KW2000
    elif cmd_type == 1:
        if type(data_list) == str:
            if tmp == 'act':
                str_len = int(data_list[0:2], 16)
                tmp_str = data_list[2: str_len * 2 + 2]
                cmd_str = cmd_insert_space_can(tmp_str)
                return cmd_str
        for line in data_list:
            if '0201400000011919' in line:
                cmd_str = line.replace('0201400000011919', '').upper()
            elif '020240000000' in line:
                cmd_str = line.replace('020240000000', '').upper()
            elif '0101800003e8' in line:
                cmd_str = line.replace('0101800003e8', '').upper()
            elif '010100000000' in line:
                cmd_str = line.replace('010100000000', '').upper()
            elif '0201000000011919' in line:
                cmd_str = line.replace('0201000000011919', '').upper()
            elif '0101ff000320' in line:
                cmd_str = line.replace('0101ff000320', '').upper()
            elif '020260000000' in line:
                cmd_str = line.replace('020260000000', '').upper()
            elif '010100000320' in line:
                cmd_str = line.replace('010100000320', '').upper()
            elif '020240000500' in line:
                cmd_str = line.replace('020240000500', '').upper()
            elif '020240001000' in line:
                cmd_str = line.replace('020240001000', '').upper()
            elif '0101800005dc' in line:
                cmd_str = line.replace('0101800005dc', '').upper()
            elif '010180ff0320' in line:
                cmd_str = line.replace('010180ff0320', '').upper()
            elif '020280000000' in line:
                cmd_str = line.replace('020280000000', '').upper()
                if cmd_str[2:6] == '0000':
                    tmp = cmd_str
                    tmp_in = gl._global_dict['ICMD'][0].replace(' ', '')
                    cmd_str = tmp[0:2] + tmp_in[2:6] + tmp[6:]
            elif (2 * (int(line[0:2], 16)) + 2) == len(line):
                cmd_str = line[2:].upper()
            else:
                tip = '警告：超出列表范围,车型ID为：' + gl.system_id + \
                      ' 串型 命令获取错误，请查看程序basics.py-> get_command()' + repr(data_list)
                debug(Debug, tip)
                return 0
            cmd_str = cmd_insert_space_kw2000(cmd_str)
            # cmd.append(cmd_str)
            cmd = cmd_str
    else:
        print('未编写该类型协议命令（get_command）：case ' + str(cmd_type))
        tip = '警告：命令（get_command）超出列表范围,车型ID为：' + gl.system_id + \
              '未编写该类型命令获取：case ' + str(cmd_type)
        debug(Debug, tip)
    return cmd


#  can型 命令加入空格
def cmd_insert_space_can(str1):
    str2 = list(str1)
    len1 = len(str2)
    j = 0
    for i in range(0, len1, 2):
        str2.insert(i+j, ' ')
        j += 1
    out_str = ''.join(str2).upper()
    return out_str


#  can型 命令加入空格 补全8个字节
def cmd_insert_space_can_len16(str1):
    str1 = str1.ljust(16, '0')
    str2 = list(str1)
    len1 = len(str2)
    j = 0
    for i in range(0, len1, 2):
        str2.insert(i+j, ' ')
        j += 1
    out_str = ''.join(str2).upper()
    return out_str


#   字符串加入空格
def str_insert_space(str1, str_symbol):
    str2 = list(str1)
    len1 = len(str2)
    j = 0
    for i in range(0, len1, 2):
        if i != 0:
            str2.insert(i+j, str_symbol)
            j += 1
    out_str = ''.join(str2).upper()
    return out_str


#   字符串加入0x及空格
def str_to_hex_insert_space(str1, str_symbol):
    str2 = list(str1)
    len1 = len(str2)
    j = 0
    for i in range(0, len1, 2):
        if i == 0:
            str2.insert(0, '0x')
        else:
            str2.insert(i + j + 1, str_symbol)
            str2.insert(i + j + 2, '0x')
            j += 2
    out_str = ''.join(str2).upper()
    return out_str


# 串行 命令加入空格，加算校验位
def cmd_insert_space_kw2000(str1):
    str2 = cmd_insert_space_can(str1).lstrip()
    str3 = str2.split()
    sum1 = 0
    for i in str3[0:-1]:
        sum1 += int(i, 16)
    sum2 = hex(sum1).replace('0x', '')[-2:].upper()
    out = str2[0:-2] + sum2
    return out


# 去除 \x00
def str_remove_x00(str1):
    if str1:
        str1 = str1.replace('\x00', '')
    return str1


# 去除重复命令
def cmd_to_dict(cmd_list):
    rm_cmd = []  # 去重后的命令
    for cmd in cmd_list:
        if cmd not in rm_cmd:
            rm_cmd.append(cmd)
    num_list = [i for i in range(len(rm_cmd))]
    cmd_dict = dict(zip(num_list, rm_cmd))
    ans = []
    for cmd in cmd_list:
        for key, value in cmd_dict.items():
            if cmd == value:
                ans.append(str(key).rjust(3, '0'))
    return rm_cmd, ans


# 分出名称和单位
def spilt_ds_name_and_unit(str1):
    name, unit = str1.split('\x00', 1)
    unit = unit.replace('\x00', '')
    return name, unit


# 把文件转成字典
def file_to_dict(file):
    ids = []
    strs = []
    with open(file, 'r', encoding='gb18030', errors='ignore') as f:
        for line in f.readlines():
            id1, str1 = line.split(' ', 1)
            id1 = id1.strip()
            str1 = str1.strip()
            ids.append(id1)
            strs.append(str1)
    out_dict = dict(zip(ids, strs))
    return out_dict


# 根据ID从字典中取出对应字符串
def get_id_data_from_dict(dict_name, str1):
    if type(str1) is list:
        str_list = []
        for line in str1:
            if line in dict_name:
                name = dict_name[line]
                str_list.append(name)
            else:
                tip = '警告：车型ID为：' + gl.system_id + \
                      ' 文件未找到对应字符串转ID：' + str(line)
                debug(Debug, tip)
        return str_list
    else:
        name = ''
        if str1 in dict_name:
            name = dict_name[str1]
        else:
            tip = '警告：车型ID为：' + gl.system_id + \
                  ' 文件未找到对应字符串转ID：' + str(str1)
            debug(Debug, tip)
        return name


# 写入版本信息、数据流命令 （符号:($%、$) , 命令列表， 命令类型 ）
def write_info_or_ds_cmd(symbol, cmd_list, cmd_type, flag=0):
    cmd_str = ''
    shield_cmd = []
    # 标准CAN型
    if cmd_type == 2 or cmd_type == 3:
        i = 0
        for cmd in cmd_list:
            if flag != 0:
                num = gl.ds_flag
                gl.ds_flag += 1
            else:
                num = i
            if gl._global_dict['LV_ID']:
                lv = gl._global_dict['LV_ID'][0]
            else:
                lv = ''
                tip = '警告：滤波ID为空：' + gl.system_id
                debug(Debug, tip)
            if cmd:
                str_cmd = symbol + 'REQ' + str(num).rjust(3, '0') + ':' + gl._global_dict['ZH_ID'] + cmd + 5 * ' ' + \
                          symbol + 'ANS' + str(num).rjust(3, '0') + ':' + lv + cmd + '\n'
            else:
                str_cmd = ';' + symbol + 'REQ' + str(num).rjust(3, '0') + ':' + gl._global_dict['ZH_ID'] + cmd + 5 * ' ' + \
                          symbol + 'ANS' + str(num).rjust(3, '0') + ':' + lv + cmd + '\n'
                if ('ANS' + str(num).rjust(3, '0')) not in shield_cmd:
                    shield_cmd.append('ANS' + str(num).rjust(3, '0'))
            cmd_str += str_cmd
            i += 1
        return cmd_str, shield_cmd
    else:
        i = 0
        for cmd in cmd_list:
            if flag != 0:
                num = gl.ds_flag
                gl.ds_flag += 1
            else:
                num = i
            if cmd:
                str_cmd = symbol + 'REQ' + str(num).rjust(3, '0') + ':' + cmd + 5 * ' ' + \
                          symbol + 'ANS' + str(num).rjust(3, '0') + ':' + cmd + '\n'
            else:
                str_cmd = ';' + symbol + 'REQ' + str(num).rjust(3, '0') + ':' + cmd + 5 * ' ' + \
                          symbol + 'ANS' + str(num).rjust(3, '0') + ':' + cmd + '\n'
                if ('ANS' + str(num).rjust(3, '0')) not in shield_cmd:
                    shield_cmd.append('ANS' + str(num).rjust(3, '0'))
            cmd_str += str_cmd
            i += 1
        return cmd_str, shield_cmd


# 写入版本信息、数据流字符串（即：每条数据）  （符号：（$%、$）， 名称, 命令偏移, 字节偏移， 公式
def write_info_str(symbol, names, ans, offsets, formulas, *args):
    a = len(names)
    b = len(ans)
    c = len(offsets)
    d = len(formulas)
    if c > d:
        for n in range(c-d):
            formulas.append('')
    lens = ds_or_info_name_unit_len(names)
    max_len = lens[0]
    len_list = lens[1]
    out = ''
    shield_cmd = args[0]
    for i in range(len(names)):
        n_len = max_len - len_list[i] + 5
        if names[i] and ('-' not in offsets[i]) and formulas[i] and ('ANS' + ans[i] not in shield_cmd):
            line = symbol + str(i).rjust(3, '0') + ':' + names[i] + n_len*' ' + symbol + symbol + 'ANS' + \
                   ans[i] + '.' + 'BYTE' + offsets[i] + symbol + formulas[i] + '\n'
        else:
            line = ';' + symbol + str(i).rjust(3, '0') + ':' + names[i] + n_len * ' ' + symbol + symbol + 'ANS' + \
                   ans[i] + '.' + 'BYTE' + offsets[i] + symbol + formulas[i] + '\n'
        out += line
    return out


# 把字符串转成gbk格式，计算出字符串长度（用于版本信息，数据流输出整齐）
def ds_or_info_name_unit_len(name_list):
    name_lens = []
    for name in name_list:
        name_len = len(name.encode('gbk', 'ignore'))
        name_lens.append(name_len)
    if not name_lens:
        return 0, name_lens
    name_len_max = max(name_lens)
    return name_len_max, name_lens


# 写入数据流字符串（即：每条数据）  （符号：（$%、$）， 名称, 单位，命令偏移, 字节偏移， 公式
def write_ds_str(symbol, names, units, ans, offsets, formulas, *args):
    n_lens = ds_or_info_name_unit_len(names)
    u_lens = ds_or_info_name_unit_len(units)
    n_max_len = n_lens[0]
    n_len_list = n_lens[1]
    u_max_len = u_lens[0]
    u_len_list = u_lens[1]
    out = ''
    shield_cmd = args[0]
    for i in range(len(names)):
        n_len = n_max_len - n_len_list[i] + 5
        u_len = u_max_len - u_len_list[i] + 3
        if names[i] and ('-' not in offsets[i]) and formulas[i] and ('ANS' + ans[i] not in shield_cmd):
            line = symbol + str(i).rjust(3, '0') + '.' + names[i] + n_len * ' ' + symbol + symbol + units[i] +\
                   u_len * ' ' + symbol + symbol + 'ANS' + ans[i] + '.' + 'BYTE' + offsets[i] + symbol + \
                   formulas[i] + '\n'
        else:
            line = ';' + symbol + str(i).rjust(3, '0') + '.' + names[i] + n_len * ' ' + symbol + symbol + units[i] + \
                   u_len * ' ' + symbol + symbol + 'ANS' + ans[i] + '.' + 'BYTE' + offsets[i] + symbol + \
                   formulas[i] + '\n'
        out += line
    return out


# 获取菜单ID 菜单如：秦\秦双冠(2015-2016款)_混动\车身模块\空调控制器\1B12\
def return_menu_id(file):
    out_list = []
    ids = []
    with open(file) as f:
        for line in f.readlines():
            if line[-6:].replace('\\\n', '') in ids:
                pass
            else:
                ids.append(line[-6:].replace('\\\n', ''))
    for i in ids:
        out_list.append(int(i, 16))
    return out_list


# 获取菜单ID 菜单如：秦\秦双冠(2015-2016款)_混动\车身模块\空调控制器\1B12\
def return_menu_id_str(file):
    out_list = []
    ids = []
    with open(file) as f:
        for line in f.readlines():
            if line[-6:].replace('\\\n', '') in ids:
                pass
            else:
                ids.append(line[-6:].replace('\\\n', ''))
    return ids


# 把Strtable转换成字典，格式为-->  '名称':'ID'
def strtable_to_dict(path):
    str_id = []
    str_str = []
    with open(path, 'r') as f:
        for line in f.readlines():
            key, value = line.split('\t', 1)
            str_id.append(key)
            str_str.append(value.replace('\tX\n', ''))
    out_dict = dict(zip(str_str, str_id))
    return out_dict


def intToBin32(i):
    return (bin(((1 << 32)-1) & i)[2:]).zfill(32)


# 写入30帧命令
def write_fc_cmd(cmd, path):
    symbol = '  $FC '
    if len(cmd) > 1:
        tip = '警告：车型ID为：' + gl.system_id + \
              '存在多个30帧,请关注...'
        debug(Debug, tip)
    with open(path, 'a', encoding='gbk') as f:
        f.write('30帧:\n\n')
        for i in range(len(cmd)):
            tmp = symbol + 'REQ' + str(i).rjust(3, '0') + ':' + cmd[i] + symbol + '\n'
            f.writelines(tmp)
        f.write('\n;' + 150 * '*' + '\n')


# 将文本数据正向存入token中， （文本， 文本偏移， token偏移， 要存个数， token）
def move_lib_data_token(file_list, fp, tp, num, arr):
    while 1:
        if len(arr) < tp:
            arr.append(0)
        else:
            for i in range(num):
                if len(arr) == tp + i:
                    arr.append(int(file_list[fp + i], 16))
                else:
                    arr[tp + i] = (int(file_list[fp + i], 16))
            break


# 将文本数据反向存入token中， （文本， 文本偏移， token偏移， 要存个数， token）
def move_lib_data_token_re(file_list, fp, tp, num, arr):
    j = 0
    while 1:
        if len(arr) < tp:
            arr.append(0)
        else:
            for i in range(num-1, -1, -1):
                if len(arr) == tp + i:
                    arr.append(int(file_list[fp + i], 16))
                else:
                    arr[tp + j] = (int(file_list[fp + i], 16))
                j += 1
            break


# 从token中获取4个字节
def token_4(token, buff):
    if buff < 4:
        return (token[buff + 3: buff: -1]).hex()
    return (token[buff + 3:buff - 1:-1]).hex()


# 从token中获取2个字节
def token_2(token, buff):
    if buff < 2:
        return token[buff + 1: buff: -1].hex()
    return token[buff + 1:buff - 1:-1].hex()


# 从token中获取n个字节
def token_n(token, buff, n):
    if buff < n:
        return (token[buff + n-1: buff: -1]).hex()
    return (token[buff + n - 1:buff - 1:-1]).hex()


# 从token中获取4个字节
def token_4_int(token, buff):
    if buff < 4:
        return int((token[buff + 3: buff: -1]).hex(), 16)
    return int((token[buff + 3:buff - 1:-1]).hex(), 16)


# 从token中获取2个字节
def token_2_int(token, buff):
    if buff < 2:
        return int(token[buff + 1: buff: -1].hex(), 16)
    return int(token[buff + 1:buff - 1:-1].hex(), 16)


# 从token中获取n个字节
def token_n_re(token, buff, n):
    return (token[buff: buff + n]).hex()


def int_to_bytearray(value, num, tp, arr):
    a_str = hex(value).replace('0x', '').upper()
    while 1:
        if len(a_str) < num*2:
            a_str = '0' + a_str
        else:
            break
    a_str = '$'.join([a_str[i:min(i + 2, len(a_str))] for i in range(0, len(a_str), 2)])
    a_list = a_str.split('$')
    a_list.reverse()
    value_bytearry_list(tp, a_list, num, arr)


def value_bytearry_list(tp, list1, num, arr):
    while 1:
        if len(arr) < tp:
            arr.append(0)
        else:
            break
    for i in range(num):
        arr[tp+i] = int(list1[i], 16)
    rgl.set_value('token', arr)


# 从字典中查找对应键值，返回对应值
def scree_dict_key_return_value(dict1, key1):
    if key1 in dict1.keys():
        return dict1[key1]
    else:
        return -1


# 写入字符串
def write_string_to_file(path, str1):
    if os.path.exists(path):
        model = 'a'
    else:
        model = 'w'
    with open(path, model) as f:
        f.write(str1)


def get_roewe_command(cmd_str, cmd_type, zh_id='', lv_id='', kwp_type=0, v108=0):
    """获取荣威命令"""
    if cmd_type == 1:
        if len(cmd_str) < 16:
            cmd_str = cmd_str.ljust(16, '0')
        cmd = cmd_insert_space_can(cmd_str)
    elif (cmd_type == 2) | (cmd_type == 3) and (v108 != 4 and v108 != 8 and v108 != 9 and v108 != 10 and v108 != 11):
        if kwp_type == 0:  # 80
            cmd_str = '80' + lv_id + zh_id + cmd_str
        elif kwp_type == 1:  # 非80
            tmp = int(cmd_str[0:2], 16)
            cmd_str = hex((128 + tmp)).replace('0x', '') + lv_id + zh_id + cmd_str[2:]
        elif kwp_type == 2:  # C0
            cmd_str = 'C0' + lv_id + zh_id + cmd_str
        elif kwp_type == 3:  # 非C0
            tmp = int(cmd_str[0:2], 16)
            cmd_str = hex((192 + tmp)).replace('0x', '') + lv_id + zh_id + cmd_str[2:]
        elif kwp_type == 4:  # 首字节 + 2
            cmd_str = cmd_str
        else:
            tip = repr(kwp_type) + '-->该串型协议类型命令获取方式未编写！'
            debug(rpa.debug, tip)
        cmd = cmd_insert_space_kwp2000(cmd_str)
    elif cmd_type == 5:
        if len(cmd_str) < 14:
            cmd_str = cmd_str.ljust(14, '0')
        cmd = cmd_insert_space_can(cmd_str)
    elif cmd_type == 3 and (v108 == 11 or v108 == 4 or v108 == 8 or v108 == 9 or v108 == 10):
        cmd_len = int(cmd_str[0:2], 16) + 3
        cmd_str = zh_id.rjust(2, '0') + hex(cmd_len).replace('0x', '').rjust(2, '0') + cmd_str[2:]
        cmd = rowe_cmd_xor(cmd_str, cmd_len)
    else:
        cmd = ''
        tip = repr(cmd_type) + '-->该协议类型命令获取方式未编写！'
        debug(rpa.debug, tip)
    return cmd


def rowe_cmd_xor(cmd_str, cmd_len):
    """荣威第二字节为帧长的命令处理"""
    str_len = len(cmd_str) // 2
    if str_len < cmd_len - 1:
        cmd_str.rjust((cmd_len - str_len) * 2, '0')
    j = 0
    tmp = 0
    for i in range(2, len(cmd_str) + 1, 2):
        if i == len(cmd_str):
            byte = cmd_str[-2:]
        else:
            byte = cmd_str[j:i]
        tmp = tmp ^ int(byte, 16)
        j += 2
    end_byte = (hex(tmp).replace('0x', '')).rjust(2, '0')
    cmd_str += end_byte
    out_cmd = cmd_insert_space_can(cmd_str)
    return out_cmd


def cmd_insert_space_kwp2000(cmd_str):
    """串型字符串加入空格，计算校验值"""
    tmp = 0
    j = 0
    for i in range(2, len(cmd_str) + 1, 2):
        if i == len(cmd_str):
            aa = cmd_str[-2:]
        else:
            aa = cmd_str[j:i]
        tmp += int(aa, 16)
        j += 2
    end_byte = (hex(tmp).replace('0x', ''))[-2:]
    cmd_str += end_byte
    out_cmd = cmd_insert_space_can(cmd_str)
    return out_cmd


def separate_name_and_unit(list1):
    """分离名称和单位"""
    name_list = []
    unit_list = []
    for line in list1:
        name, unit = line.split('\x00', 1)
        name_list.append(name)
        unit_list.append(unit.replace('\x00', ''))
    return name_list, unit_list


def cmd_add_symbol(str_or_list, symbol, num=0):
    """
    生成协议命令
    :param str_or_list: 传入命令字符串或列表
    :param symbol: 功能符号
    :param num: 命令从多少开始计算
    :return: 返回可写入协议的命令字符串
    """
    out_str = ''
    if type(str_or_list) is list:
        for cmd in str_or_list:
            out_str += '\t' + symbol + '\tREQ' + str(num).rjust(3, '0') + ':' + cmd + 10*' ' + symbol + '\n'
            num += 1
    else:
        out_str += '\t' + symbol + '\tREQ' + str(num).rjust(3, '0') + ':' + str_or_list + 10 * ' ' + symbol + '\n'
    return out_str


def activate_cmd_add_symbol(str_or_list, reply_id, symbol, num=0):
    out_str = ''
    if type(str_or_list) is list:
        for cmd in str_or_list:
            out_str += '\t' + symbol + '\tREQ' + str(num).rjust(3, '0') + ':' + cmd + 10 * ' ' + symbol + 10 * ' ' \
                       + reply_id + cmd[3:] + '\n'
            num += 1
    else:
        out_str += '\t' + symbol + '\tREQ' + str(num).rjust(3, '0') + ':' + str_or_list + 10 * ' ' + symbol + 10 * ' '\
                   + reply_id + str_or_list[3:] + '\n'
    return out_str


def cn_to_first_byte_pinyin(str1):
    """
    将中文转换成拼音首字节（只转中文，其他都照抄）
    :param str1: 字符串
    :return:
    """
    out = ''
    p = Pinyin()
    for each in str1:
        if u'\u4e00' <= each <= u'\u9fff':  # 判断是否是中文
            out += p.get_initial(each)
        else:
            out += each
    return out


def get_s32(val):
    if val < 0x80000000:
        return val
    else:
        return (val - 0x100000000)

# 写入版本信息、数据流命令 （符号:($%、$) , 命令列表， 命令类型 ）
def write_act_cmd(symbol, cmd_list, cmd_type, flag=0):
    cmd_str = ''
    # 标准CAN型
    if cmd_type == 2 or cmd_type == 3:
        i = 0
        count = 0
        for cmd in cmd_list:
            if flag != 0:
                num = gl.ds_flag
                gl.ds_flag += 1
            else:
                num = i
            if cmd:
                str_cmd = symbol + 'REQ' + str(count).rjust(2, '0') + ':' + gl._global_dict['ZH_ID'] + cmd + 5 * ' ' + symbol + '\n'
            else:
                str_cmd = '\n'
            cmd_str += str_cmd
            i += 1
            count += 1
        return cmd_str
    else:
        i = 0
        count = 0
        for cmd in cmd_list:
            if flag != 0:
                num = gl.ds_flag
                gl.ds_flag += 1
            else:
                num = i
            if cmd:
                str_cmd = symbol + 'REQ' + str(count).rjust(2, '0') + ':' + cmd + 5 * ' ' + symbol + '\n'
            else:
                str_cmd = '\n'
            cmd_str += str_cmd
            i += 1
            count += 1
        return cmd_str


if __name__ == '__main__':
    #list1 = bin_to_list('./file/test.txt')
    #token = gl.get_value('token')
    #MoveLibData(list1, 2, 0, 5, token)
    #print(readlist_num(list1, 2, 2))
    #print(readlist_reverse(list1, 2, 2))
    #print(get_token(token, 2, 1))
    #print(gl._global_dict['token'])
    # """CMD = r'D:\逆向文档\比亚迪V18.50\GGP\H_COMMAND.txt'
    a = ['1000000200020908032202900000000009083000000000000000' ,'1000010200020b08fbe002090800000000000b08fc003000000000000000']
    # get_id_data(CMD, a)
    # get_command(a, 2)"""
    # # file_to_dict(Pa.DS)
    # cmd_add_symbol(['C1 33 F1 81 66', 'C1 33 F1 81 66', 'C1 33 F1 81 66'], '$')
    get_command(a, 2)
    pass

