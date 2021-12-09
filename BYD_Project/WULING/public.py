import basics as bs
from WULING import file_path as fp
from WULING import wuling_global as gl
import re


def judge_is_cmd(str1):
    """
    判断是否是命令字符串
    :param str1: 字符串
    :return: 如果是命令字符串加上帧长返回，如果不是返回空
    """
    str1 = str1.replace(' ', '')
    if str1.encode('UTF-8').isalnum():
        str1 = (str(len(str1)//2)).rjust(2, '0') + str1
        return str1
    elif '/' in str1:
        tmp0, tmp1 = str1.split('/', 1)
        str1 = (str(len(tmp0)//2)).rjust(2, '0') + tmp0
        return str1
    else:
        if '-' in str1:
            return None
        else:
            tip = '关注命令 ' + str1 + ' :' + gl.g_dict['menu_path']
            bs.debug(fp.debug, tip)
            return None


def process_kw200_cmd(init_connect, ecu_address, str1):
    """
    五菱原厂串型命令生成
    :param init_connect: 串型帧头
    :param ecu_address: 串型ECU地址
    :param str1: 命令字符串
    :return: 返回命令
    """
    if init_connect.upper() == '80' or init_connect.upper() == 'C0':
        str1 = init_connect + ecu_address + 'F1' + str1
        str1 = bs.cmd_insert_space_kwp2000(str1)
        return str1
    elif init_connect.upper() == '8X' or init_connect.upper() == 'CX':
        tmp = init_connect.replace('X', '0')
        tmp1 = (hex(int(tmp, 16) + int(str1[0:2], 16))).replace('0x', '')
        str1 = tmp1 + ecu_address + 'F1' + str1[2:]
        str1 = bs.cmd_insert_space_kwp2000(str1)
        return str1
    else:
        return ''


def judge_session_type(str1, symbol=''):
    """
    判断会话模式
    :param str1:模式字符串
    :param symbol: 命令需要添加的工具识别符号
    :return: 返回命令
    """
    if str1 == '默认模式' or str1 == '默认会话' or str1 == '无' or '-':
        cmd = ''
    elif str1 == '扩展模式' or str1 == '扩展会话':
        cmd = '\t' + symbol + '\tREQ000:' + gl.g_dict['extend_cmd'] + 10*' ' + symbol + '\n'
    elif str1 == '编程模式' or str1 == '编程会话':
        cmd = '\t' + symbol + '\tREQ000:' + gl.g_dict['program_cmd'] + 10*' ' + symbol + '\n'
    else:
        cmd = ''
        tip = str1 + ' 未发现该会话模式，请注意:' + gl.g_dict['menu_path']
        bs.debug(fp.debug, tip)
    return cmd


def judge_protocol_type_return_cmd(str1):
    """
    根据命令类型，返回对应类型的命令
    :param str1: 命令字符串
    :return: 返回处理好的命令
    """
    if gl.g_dict['protocol_type'] == 'CAN':
        cmd = gl.g_dict['frame_id'] + bs.cmd_insert_space_can_len16(str1)
    else:
        cmd = process_kw200_cmd(gl.g_dict['init_connect'], gl.g_dict['ecu_address'], str1)
    return cmd


def return_function_sting(name, in_cmd, fun_cmd, data_str, tip=''):
    """
    将整个功能字符串拼接(读码、清码、数据流、版本信息等)
    :param name: 功能名称
    :param in_cmd: 进入/加密命令
    :param fun_cmd: 功能能命令
    :param data_str: 功能数据（例如数据流数据）
    :param tip: 提示信息
    :return: 返回拼接好的字符串
    """
    if in_cmd:
        out = ';' + 150 * '*' + '\n' + name + '\n\n' + in_cmd + '\n\n' + fun_cmd + '\n' + data_str + tip
    else:
        out = ';' + 150 * '*' + '\n' + name + '\n\n' + fun_cmd + '\n' + data_str + tip
    return out


def formula_judgment(byte_num_str, formula_str, enum='-', param1='0', param2='0'):
    """
    五菱原厂协议公式判断程序
    :param byte_num_str: 公式用到的字节数
    :param formula_str: 公式字符串
    :param enum:
    :param param1:
    :param param2:
    :return: 返回灯哥工具可识别公式字符串
    """
    out = ''
    formula_str = formula_str.replace('\n', '')
    if formula_str == 'BCD' or formula_str == 'HEX' or formula_str == 'BCD1':
        out = byte_num_str.rjust(2, '0') + '个字节的HEX显示'
    elif formula_str == 'ASCII':
        out = byte_num_str.rjust(2, '0') + '个字节的ASCII显示'
    elif formula_str == 'USN':
        byte_num = int(byte_num_str)
        if byte_num > 4:
            out = byte_num_str.rjust(2, '0') + '个字节的HEX显示'
            # tip = repr(byte_num) + ' USN型公式超长，请关注: ' + gl.g_dict['menu_path']
            # bs.debug(fp.debug, tip)
            return out
        if byte_num == 1:
            out = 'X'
        elif byte_num == 2:
            out = 'XY'
        elif byte_num == 3:
            out = 'XYZ'
        else:
            for i in range(byte_num):
                out += 'X' + str(i + 1)
    elif formula_str == 'UNM' or formula_str == '无符号型':
        if enum.replace(' ', '') and enum != '-':
            out = complex_type_formula_strtable(enum)
            # tip = enum + ' 无符号型存在枚举值，请关注: ' + gl.g_dict['menu_path']
            # bs.debug(fp.debug, tip)
            return out
        byte_num = int(byte_num_str)
        if byte_num > 4:
            out = byte_num_str.rjust(2, '0') + '个字节的HEX显示'
            # tip = repr(byte_num) + ' 无符号型公式超长，请关注: ' + gl.g_dict['menu_path']
            # bs.debug(fp.debug, tip)
            return out
        if '-' in param1:
            param1 = '(' + param1 + ')'
        if (param1 == '0' or param1 == '1') and param2 == '0':
            if byte_num == 1:
                out = 'X'
            elif byte_num == 2:
                out = 'XY'
            elif byte_num == 3:
                out = 'XYZ'
            else:
                for i in range(byte_num):
                    out += 'X' + str(i + 1)
        elif param1 != '0' and param2 == '0':
            if byte_num == 1:
                out = 'X*' + param1
            elif byte_num == 2:
                out = 'XY*' + param1
            elif byte_num == 3:
                out = 'XYZ*' + param1
            else:
                for i in range(byte_num):
                    out += 'X' + str(i + 1)
                out = out + '*' + param1
        else:
            if '-' not in param2:
                param2 = '+' + param2
            if byte_num == 1:
                out = 'X*' + param1 + param2
            elif byte_num == 2:
                out = 'XY*' + param1 + param2
            elif byte_num == 3:
                out = 'XYZ*' + param1 + param2
            else:
                for i in range(byte_num):
                    out += 'X' + str(i + 1)
                out = out + '*' + param1 + param2
    elif formula_str == 'SNM' or formula_str == '有符号型':
        if enum.replace(' ', '') and enum != '-':
            out = complex_type_formula_strtable(enum)
            tip = enum + ' 有符号型存在枚举值，请关注: ' + gl.g_dict['menu_path']
            bs.debug(fp.debug, tip)
            return out
        byte_num = int(byte_num_str)
        if '-' not in param2:
            param2 = '+' + param2
        if '-' in param1:
            param1 = '(' + param1 + ')'
        if byte_num == 1:
            out = '[00-7F]:X*' + param1 + param2 + '\t\t[80-FF]:(X-255)*' + param1 + param2
        elif byte_num == 2:
            out = '[0000-7FFF]:XY*' + param1 + param2 + '\t\t[8000-FFFF]:(XY-65535)*' + param1 + param2
        elif byte_num == 3:
            out = '[000000-7FFFFF]:XYZ*' + param1 + param2 + '\t\t[800000-FFFFFF]:(XYZ-16777215)*' + param1 + param2
        elif byte_num == 4:
            out = '[00000000-7FFFFFFF]:X1X2X3X4*' + param1 + param2 + '\t\t[800000-FFFFFF]:(X1X2X3X4-4294967295)*' + param1 + param2
        else:
            tip = formula_str + ' 该公式超出范围，请关注: ' + gl.g_dict['menu_path']
            bs.debug(fp.debug, tip)
    elif re.findall('[0-1]{8}', formula_str):
        enum = enum.replace('\n', '').replace('，', ',').replace('：', ':')
        n = 0
        for i in formula_str:
            if i == '1':
                n += 1
        if n == 1:
            tmp_list = formula_strtable(enum)
            if len(tmp_list) > 2:
                tip = formula_str + ' 该公式字节数为 ' + byte_num_str + ' ，请关注: ' + gl.g_dict['menu_path']
                bs.debug(fp.debug, tip)
            out = 'if(X1&' + hex(int(formula_str, base=2)) + ')y=' + gl.g_dict['strTable'][tmp_list[1]] + ';else y=' + \
                  gl.g_dict['strTable'][tmp_list[0]] + ';'
        elif n == 2:
            tmp_list = formula_strtable(enum)
            value_list = bit_type_pare(formula_str)
            for i in range(len(value_list) - len(tmp_list)):
                tmp_list.append('-')
            str1 = '\t\t'
            for i in range(len(value_list)):
                str1 += value_list[len(value_list) - i - 1] + ':' + tmp_list[i] + '\t\t'
            out = 'X&' + hex(int(formula_str, base=2)).replace('0x', '').rjust(2, '0') + str1
        else:
            tip = formula_str + ' 该公式字节数为 ' + byte_num_str + ' ，请关注: ' + gl.g_dict['menu_path']
            bs.debug(fp.debug, tip)
    elif formula_str == '复杂类型' or formula_str == 'CPX':
        # byte_num = int(byte_num_str)
        # if byte_num != 1:
        #     tip = formula_str + ' 该公式字节数为 ' + byte_num_str + ' ，请关注: ' + gl.g_dict['menu_path']
        #     bs.debug(fp.debug, tip)
        out = complex_type_formula_strtable(enum)
    else:
        tip = formula_str + ' 该公式未编写，请关注: ' + gl.g_dict['menu_path']
        bs.debug(fp.debug, tip)
    return out


def formula_strtable(enum):
    """
    将枚举类型的公式写入全局变量字典
    :param enum:枚举字符串
    :return:
    """
    list1 = []
    if not ('=' in enum) and '-' in enum:
        enum = enum.replace('-', '=')
    if '=' in enum:
        tmp_list = enum.split('=')
        value_list = []
        str_list = []
        for n in range(len(tmp_list) - 1):
            if ',' in tmp_list[n]:
                tmp1_list = tmp_list[n].split(',')
                tmp_str = ''
                for i in range(len(tmp1_list) - 1):
                    if i != len(tmp1_list) - 2:
                        tmp_str += tmp1_list[i] + ','
                    else:
                        tmp_str += tmp1_list[i]
                str_list.append(tmp_str)
                value_list.append(int(tmp1_list[len(tmp1_list) - 1]))
            elif not tmp_list[n].replace(' ', '').isdigit():
                str_list.append(tmp_list[n])
            else:
                value = int(tmp_list[n])
                value_list.append(value)
        str_list.append(tmp_list[-1])
        if len(value_list) != len(str_list):
            tip = enum + ' 该公式字节数为值与字符串不匹配，请关注: ' + gl.g_dict['menu_path']
            bs.debug(fp.debug, tip)
        dict_tmp = dict(zip(value_list, str_list))
        value_list.sort()
        for i in value_list:
            list1.append(dict_tmp[i])
    elif ',' in enum:
        list1 = enum.split(',')
    elif '/' in enum:
        list1 = enum.split('/')
    else:
        list1.append(enum)
        list1.append('-')
    for str1 in list1:
        if str1 not in gl.g_dict['strTable'].keys():
            gl.g_dict['strTable'][str1] = '@' + str(gl.g_dict['strTable_num']).rjust(4, '0')
            gl.g_dict['strTable_num'] += 1
    return list1


def complex_type_formula_strtable(enum):
    """
    复杂类型的的公式处理
    :param enum: 枚举字符串
    :return:返回灯哥工具能处理的公式
    """
    out = ''
    enum = enum.replace('\n', '').replace('，', ',').replace('：', ':').replace(';', ',').replace('；', ',')
    if '=' in enum:
        tmp_list = enum.split('=')
        value_list = []
        str_list = []
        # flag = 0
        for n in range(len(tmp_list) - 1):
            if ',' in tmp_list[n]:
                tmp1_list = tmp_list[n].split(',')
                tmp_str = ''
                for i in range(len(tmp1_list) - 1):
                    if i != len(tmp1_list) - 2:
                        tmp_str += tmp1_list[i] + ','
                    else:
                        tmp_str += tmp1_list[i]
                str_list.append(tmp_str)
                # if not (tmp1_list[len(tmp1_list) - 1]).isdigit():  # 判断是否是十六进制
                #     flag = 1
                value_list.append(tmp1_list[len(tmp1_list) - 1].replace('0x', '').replace(' ', '').rjust(2, '0'))
            elif not tmp_list[n].replace(' ', '').isdigit():
                str_list.append(tmp_list[n])
            else:
                # if not tmp_list[n].isdigit():  # 判断是否是十六进制
                #     flag = 1
                value_list.append(tmp_list[n].replace('0x', '').replace(' ', '').rjust(2, '0'))
        str_list.append(tmp_list[-1])
        if len(value_list) != len(str_list):
            tip = enum + ' 该复杂型公式字节数值与字符串不匹配，请关注: ' + gl.g_dict['menu_path']
            bs.debug(fp.debug, tip)
        # if not flag:  # 把十进制转换为十六进制
        #     tmp2_list = []
        #     for n in value_list:
        #         str1 = (hex(int(n))).replace('0x', '').replace(' ', '').rjust(2, '0')
        #         tmp2_list.append(str1)
        #     value_list = tmp2_list
        tmp2_list = []
        for n in value_list:
            if not n.isdigit():
                tmp2_list.append(n.replace('0x', '').replace(' ', '').rjust(2, '0').upper())
            else:
                tmp2_list.append((hex(int(n))).replace('0x', '').replace(' ', '').rjust(2, '0').upper())
        value_list = tmp2_list
        dict_tmp = dict(zip(value_list, str_list))
        for key, value in dict_tmp.items():
            out += key + ':' + value + '\t\t'
        out += '其他:-'
    else:
        tip = '复杂型公式 该公式无 = 号分开，请关注: ' + gl.g_dict['menu_path']
        bs.debug(fp.debug, tip)
    return out

# def complex_type_formula_strtable(enum):
#     """
#     复杂类型的的公式处理
#     :param enum: 枚举字符串
#     :return:返回灯哥工具能处理的公式
#     """
#     out = ''
#     list1 = enum.replace('\n', '').replace('，', ',').replace('：', ':').split(',')
#     for str1 in list1:
#         if str1:
#             if '=' in str1:
#                 value, describe = str1.split('=', 1)
#             else:
#                 value, describe = str1.split(':', 1)
#             try:
#                 value = hex(int(value.replace('0x', ''))).replace('0x', '').rjust(2, '0').upper()
#             except:
#                 pass
#             out += value + ':' + describe + '\t\t'
#     if out:
#         out += '其他:-'
#     return out


def bit_type_pare(str1):
    """
    字节与数据处理
    :param str1: 枚举数据
    :return: 控制值，字节列表
    """
    p = []
    out_list = [hex(int(str1, base=2)).replace('0x', '').rjust(2, '0')]
    for i in range(len(str1)):
        if str1[i] == '1':
            p.append(i)
    for j in p:
        a = ''
        for n in range(8):
            if n == j:
                a += '1'
            else:
                a += '0'
        out_list.append(hex(int(a, base=2)).replace('0x', '').rjust(2, '0'))
    out_list.append('00')
    return out_list
