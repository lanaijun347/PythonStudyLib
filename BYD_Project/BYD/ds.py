"""数据流"""
import file_path as Pa
import gl
import basics as Bs
import info
import os
import SubsystemInterface

def SUBS_SBCS__PAIR__(num):
    R6 = num
    R3 = R6 - 1
    R2 = R3 -1
    R3 = R3 - R2
    if R3 >= 1:
        C = R3
    else:
        C = ~R3 + 1
    num = num & (-C)
    return num


def Xml_GetInfoFromDsSysInfo(file_list, fp, data):
    v3 = data[4]
    menu_id = data[3]
    menu_name = Bs.get_id_data_from_dict(Pa._text_dict, menu_id).replace('\x00', '')
    v5 = SUBS_SBCS__PAIR__(v3)
    v53 = v5
    v54 = fp
    adv_cmds = []
    v4 = Bs.readlist_reverse(file_list, v54+17, 4)
    v4_4 = Bs.readlist_num(file_list, v54+21, 2)
    v6 = v54 + 23
    if v4_4:  # 进入数据流前预发命令
        v7 = 0
        while v7 < v4_4:
            v8 = v6 + 2
            data_1 = SubsystemInterface.Xml_GetInfoFromCmdDataType(file_list, v8)
            v9 = data_1[0]
            adv_cmd_str = Bs.get_id_data_from_dict(Pa._cmd_dict, data_1[1])
            adv_cmd = Bs.get_command(adv_cmd_str, gl.InitDataLinkLayer['m0'])
            adv_cmds.append(adv_cmd)
            v6 = v9 + v8
            v7 += 1

    v4_12 = Bs.readlist_num(file_list, v6, 2)
    v10 = v6 + 2
    if v53 & 1:
        tip = '警告：车型ID为：' + hex(gl._global_dict['car_id']) + ' 暂不支持该数据流写入方式，详情请查看 ds.py 45行'
        Bs.debug(Bs.Debug, tip)
    elif v4_12:
        tip = '警告：车型ID为：' + hex(gl._global_dict['car_id']) + ' 暂不支持该数据流写入方式，详情请查看 ds.py 48行'
        Bs.debug(Bs.Debug, tip)
    v4_20 = Bs.readlist_num(file_list, v10, 1)
    v4_21 = Bs.readlist_num(file_list, v10+1, 1)
    v4_24 = Bs.readlist_num(file_list, v10+2, 4)
    v4_60 = Bs.readlist_num(file_list, v10+6, 2)
    v16 = v10 + 8
    if v53 & 2:
        tip = '警告：车型ID为：' + hex(gl._global_dict['car_id']) + ' 暂不支持该数据流写入方式，详情请查看 ds.py 56行'
        Bs.debug(Bs.Debug, tip)
    if v53 & 4:
        tip = '警告：车型ID为：' + hex(gl._global_dict['car_id']) + ' 暂不支持该数据流写入方式，详情请查看 ds.py 59行'
        Bs.debug(Bs.Debug, tip)
    if not v4_24:
        tip = '警告：车型ID为：' + hex(gl._global_dict['car_id']) + ' 暂不支持该数据流写入方式，详情请查看 ds.py 62行'
        Bs.debug(Bs.Debug, tip)
    v56 = 0
    v57 = 0
    v55 = 0
    if v4_60 != 0xffff:
        tip = '警告：车型ID为：' + hex(gl._global_dict['car_id']) + ' 暂不支持该数据流写入方式，详情请查看 ds.py 68行'
        Bs.debug(Bs.Debug, tip)
    ds_total = Bs.readlist_num(file_list, v4_24, 2)  # 数据流总数
    i = 0
    p = v4_24 + 2
    names = []
    cmds = []
    offsets = []
    formulas = []
    units = []
    while i < ds_total:
        tmp = info.Xml_GetInfoFromVerItemInfo(file_list, p)
        next_p = GetNextDsItemAddress(file_list, p, v5)
        # p += tmp[0]
        p = next_p
        a = hex(p)
        i += 1
        name_id = tmp[1]
        name_data = Bs.get_id_data_from_dict(Pa._ds_dict, name_id)
        if name_data:
            name_unit = Bs.spilt_ds_name_and_unit(name_data)
            name = name_unit[0]
            unit = name_unit[1]
            names.append(name)
            units.append(unit)
            cmd_id = tmp[2]
            cmd_str = Bs.get_id_data_from_dict(Pa._cmd_dict, cmd_id)
            cmd = Bs.get_command(cmd_str, gl.InitDataLinkLayer['m0'])
            cmds.append(cmd)
            offset = tmp[3]
            if gl.InitDataLinkLayer['m0'] == 2:
                offset = offset - 3
            elif gl.InitDataLinkLayer['m0'] == 3:
                offset = offset - 5
            else:
                # X431 回复按80算
                if (cmds[0][0:2] == '80') | (cmds[0][0:2] == 'C0'):
                    offset = offset
                else:
                    offset = offset - 1
            if offset < 0:
                tip = '警告：' + str(offset) + ' 数据流偏移小于0：' + hex(gl._global_dict['car_id'])
                Bs.debug(Pa.Debug, tip)
            offsets.append(str(offset).rjust(3, '0'))
            formula_id = tmp[4]
            formula = Bs.get_id_data_from_dict(Pa._formula_dict, formula_id)
            # print(formula)
            if not formula:
                formula = ''
                tip = formula_id + '：数据流未找到公式ID，路径' + hex(gl._global_dict['car_id'])
                Bs.debug(Pa.Debug, tip)
            formula = Bs.str_remove_x00(formula)
            formulas.append(formula)
        # 有版本信息再操作
    if ds_total > 0:
        re_tuple = Bs.cmd_to_dict(cmds)
        req = re_tuple[0]
        ans = re_tuple[1]
        # adv_cmds = [" 02 10 03 00 00 00 00 00", " 02 10 03 01 00 00 00 00", " 02 10 03 02 00 00 00 00", " 02 10 03 03 00 00 00 00",]
        # 菜单名称，命令，回复命令号，数据流名称，单位，偏移，公式，进入前预发命令
        write_ds(menu_name, req, ans, names, units, offsets, formulas, adv_cmds)
        # 数据流总条数，该层菜单名称，命令，ANS对应命令，名称，单位，偏移，公式
        # return ds_total, menu_name, req, ans, names, units, offsets, formulas


# 写入数据流信息(菜单名称，命令，ANS对应命令，名称，单位，偏移，公式，进入前预发命令)
def write_ds(menu_name, req, ans, names, units, offsets, formulas, adv_cmds):
    if len(adv_cmds) > 1:
        gl.ds_flag = 1
    symbol = '  $  '
    if os.path.exists(gl.write_path):
        with open(gl.write_path, 'a', encoding='gbk') as f:
        # with open(gl.write_path, 'a', encoding='gbk', errors='ignore') as f:
        # with open(gl.write_path, 'a', encoding='utf-8') as f:
            # flag 从 0 开始计算，ds_menu_num 为数据流菜单层数，ds_menu_num=0则就一层菜单
            if (gl.ds_menu_num == gl.flag) | (gl.ds_menu_num == (gl.flag + 1)):
                if gl.flag != 0:  # flag ！= 0表示其他层菜单
                    if len(adv_cmds) > 0:  # 写入预发命令
                        symbol_0 = '  $IN_' + str(gl.flag).rjust(2, '0') + '  '
                        adv_cmd = Bs.write_info_or_ds_cmd(symbol_0, adv_cmds, gl.InitDataLinkLayer['m0'], gl.ds_flag)
                        f.writelines(adv_cmd + '\n')
                    symbol_1 = '  $)  '
                    f.writelines(symbol_1 + str(gl.flag).rjust(2, '0') + '.' + menu_name + '\n')
                    f.writelines(symbol + str(gl.flag).rjust(2, '0') + '.' + menu_name + '\n')
                else:
                    # flag = 0表示首层菜单
                    f.writelines('读数据流:' + ' \n\n')
                    if len(adv_cmds) > 0:  # 写入预发命令
                        symbol_0 = '  $IN  '
                        adv_cmd = Bs.write_info_or_ds_cmd(symbol_0, adv_cmds, gl.InitDataLinkLayer['m0'], gl.ds_flag)
                        f.writelines(adv_cmd + '\n')
                gl.flag = 0
                # 写入命令
                out_cmd = Bs.write_info_or_ds_cmd(symbol, req, gl.InitDataLinkLayer['m0'])
                f.writelines(out_cmd + '\n')
                # 写入每条数据
                ds_str = Bs.write_ds_str(symbol, names, units, ans, offsets, formulas)
                f.writelines(ds_str + '\n')
                f.writelines(';' + 150 * '*' + '\n\n')
            else:
                if gl.flag == 0:
                    f.writelines('读数据流:' + ' \n\n')
                gl.flag += 1
                if len(adv_cmds) > 0:  # 写入预发命令
                    symbol_0 = '  $IN_' + str(gl.flag-1).rjust(2, '0') + '  '
                    adv_cmd = Bs.write_info_or_ds_cmd(symbol_0, adv_cmds, gl.InitDataLinkLayer['m0'], gl.ds_flag)
                    f.writelines(adv_cmd + '\n')
                symbol_1 = '  $)  '
                f.writelines(symbol_1 + str(gl.flag - 1).rjust(2, '0') + '.' + menu_name + '\n')
                f.writelines(symbol + str(gl.flag - 1).rjust(2, '0') + '.' + menu_name + '\n')
                # 写入命令
                out_cmd = Bs.write_info_or_ds_cmd(symbol, req, gl.InitDataLinkLayer['m0'])
                f.writelines(out_cmd + '\n')
                # 写入每条数据
                ds_str = Bs.write_ds_str(symbol, names, units, ans, offsets, formulas)
                f.writelines(ds_str + '\n')


# 获取下一条数据流的偏移位置
def GetNextDsItemAddress(file_list, fp, pair):
    v15 = pair
    v16 = 0
    v17 = 0
    v4 = fp + 6
    if gl.InitDataLinkLayer['m0'] == 7:
        v4 = fp + 10
    if pair & 2:
        v16 = Bs.readlist_num(file_list, v4, 1)
        v5 = v16 + 1 + v4
        result = _LABEL_18(file_list, v5, v15)
        return result
    v16 = Bs.readlist_num(file_list, v4, 1)
    v5 = v4 + 1
    if v16 == 1:
        v17 = Bs.readlist_num(file_list, v4+2, 2)
        if v17:
            if v17 == 1:
                v16 = Bs.readlist_num(file_list, v4+8, 1)
                v7 = v16
                v8 = 12
            else:
                if v17 == 2:
                    v5 = v4 + 9
                    if not (v15 & 0x10):
                        result = _LABEL_18(file_list, v5, pair)
                        return result
                    v5 += GetRangByteLength(file_list, v5)
                    result = _LABEL_18(file_list, v5, pair)
                    return result
                v5 = v4 + 4
                if v17 != 3:
                    result = _LABEL_18(file_list, v5, pair)
                    return result
                v16 = Bs.readlist_num(file_list, v4+8, 1)
                v7 = v16
                v8 = 11
            v6 = v8*v7
        else:
            v16 = Bs.readlist_num(file_list, v4+8, 1)
            v6 = 7 * v16
        v5 = v6 + 9 + v4
        if not (v15 & 0x10):
            result = _LABEL_18(file_list, v5, pair)
            return result
        v5 += GetRangByteLength(file_list, v5)
        result = _LABEL_18(file_list, v5, pair)
        return result
    result = _LABEL_18(file_list, v5, pair)
    return result


def _LABEL_18(file_list, fp, pair):
    v15 = pair
    v5 = fp
    if not (v15 & 4):
        v17 = Bs.readlist_num(file_list, v5, 2)
        if (v17 == 9) | (not v17):
            v16 = Bs.readlist_num(file_list, v5 + 6, 1)
            v11 = 7 * v16 + 7 + v5
            if not (v15 & 0x10):
                return v11
            v11 += GetRangByteLength(file_list, v11)
            return v11
        if v17 == 1:
            v16 = Bs.readlist_num(file_list, v5 + 6, 1)
            v12 = v16
            v13 = 12
        else:
            if v17 == 2:
                v11 = v5 + 7
                if not (v15 & 0x10):
                    return v11
                v11 += GetRangByteLength(file_list, v11)
                return v11
            v11 = v5 + 2
            if v17 != 3:
                return v11
            v16 = Bs.readlist_num(file_list, v5 + 6, 1)
            v12 = v16
            v13 = 11
        v11 = v13 * v12 + 7 + v5
        if not (v15 & 0x10):
            return v11
        v11 += GetRangByteLength(file_list, v11)
        return v11
    v16 = Bs.readlist_num(file_list, v5+4, 1)
    v9 = v16 + 5 + v5
    v16 = Bs.readlist_num(file_list, v9, 1)
    v10 = v16 + 1 + v9
    v16 = Bs.readlist_num(file_list, v10, 1)
    return v16 + 1 + v10


def GetRangByteLength(file_list, fp):
    v6 = 0
    v2 = fp
    v6 = Bs.readlist_num(file_list, v2, 2)
    v4 = v6
    v6 = Bs.readlist_num(file_list, v6+2+v2, 2)
    return v4+v6+4
