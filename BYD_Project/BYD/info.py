"""版本信息"""
import file_path as Pa
import gl
import basics as Bs
import os
from SubsystemInterface import Xml_GetInfoFromCmdDataType


def Xml_GetInfoFromVerSysInfo(file_list, fp, data):
    names = []
    cmds =[]
    offsets = []
    formulas = []
    menu_id = data[3]
    menu_name = Bs.get_id_data_from_dict(Pa._text_dict, menu_id).replace('\x00', '')
    v3 = fp
    if file_list:
        v8 = v3 + 23
        v14 = v8 + 2
        inf_total = Bs.readlist_num(file_list, v14+2, 2)  # 版本信息总数
        v19 = v14 + 4
        v20 = 0
        while v20 < inf_total:
            tmp = Xml_GetInfoFromVerItemInfo(file_list, v19)
            v19 += tmp[0]
            v20 += 1
            name_id = tmp[1]
            name = Bs.get_id_data_from_dict(Pa._text_dict, name_id)
            name = Bs.str_remove_x00(name)
            names.append(name)
            cmd_id = tmp[2]
            cmd_str = Bs.get_id_data_from_dict(Pa._cmd_dict, cmd_id)
            cmd = Bs.get_command(cmd_str, gl.InitDataLinkLayer['m0'])
            if gl.InitDataLinkLayer['m0'] == 3 and gl._global_dict['ZH_ID'] == '0' and  not cmd:
                cmd = cmd_str[0]
            cmds.append(cmd)
            offset = tmp[3]
            if gl.InitDataLinkLayer['m0'] == 2:
                offset = offset - 3
            elif gl.InitDataLinkLayer['m0'] == 3:
                if gl._global_dict['ZH_ID'] == '0':
                    offset = offset
                    # tip = '警告：请确认是否是侦听协议：' + gl.system_id
                    # Bs.debug(Pa.Debug, tip)
                else:
                    offset = offset - 5
            else:
                # X431 回复按80算
                if (cmds[0][0:2] == '80') | (cmds[0][0:2] == 'C0'):
                    offset = offset
                else:
                    offset = offset - 1
            offsets.append(str(offset).rjust(3, '0'))
            formula_id = tmp[4]
            formula = Bs.get_id_data_from_dict(Pa._formula_dict, formula_id)
            if not formula:
                formula = ''
                tip = formula_id + '：版本信息未找到公式ID，路径' + gl.system_id
                Bs.debug(Pa.Debug, tip)
            formula = Bs.str_remove_x00(formula)
            formulas.append(formula)
        # 有版本信息再操作
        if inf_total > 0:
            re_tuple = Bs.cmd_to_dict(cmds)
            req = re_tuple[0]
            ans = re_tuple[1]
            # 版本信息总数， 该层菜单名称， 命令，ANS对应命令，名称，单位，偏移，公式
            write_info(menu_name, req, ans, names, offsets, formulas)
            # return inf_total, menu_name, req, ans, names, offsets, formulas


def Xml_GetInfoFromVerItemInfo(file_list, fp):
    v3 = fp
    scan_cmd = []
    scan_off = 0
    scan_fla = ''
    cmd_num = Bs.readlist_num(file_list, v3, 2)
    name_id = Bs.readlist_reverse(file_list, v3+2, 4)
    v4_8 = Bs.readlist_num(file_list, v3+6, 1)
    v6 = v3 + 7
    if v4_8 == 1:
        v4_9 = Bs.readlist_num(file_list, v3+7, 1)
        tmp = Xml_GetInfoFromCmdDataType(file_list, v3+8)
        scan_cmd = tmp[1]
        scan_off = tmp[2]
        scan_fla = tmp[3]
        if scan_off > 4:
            # tip = '警告：超出列表范围,车型ID为：' + gl.system_id + \
            #       '存在扫描，请关注 info.py 76行。'
            # Bs.debug(Bs.Debug, tip)
            pass
        v6 = tmp[0] + v6 + 1

    tmp = Xml_GetInfoFromCmdDataType(file_list, v6)
    cmd_id = tmp[1]
    offset = tmp[2]
    formula_id = tmp[3]
    return v6-v3+tmp[0], name_id, cmd_id, offset, formula_id, scan_cmd, scan_off, scan_fla


# 把版本信息写入文件
def write_info(menu_name, req, ans, names, offsets, formulas):
    symbol = '  $%  '
    if os.path.exists(gl.write_path):
        with open(gl.write_path, 'a', encoding='gbk') as f:
        # with open(gl.write_path, 'a', encoding='gbk', errors='ignore') as f:
        # with open(gl.write_path, 'a', encoding='utf-8') as f:
            # flag 从 0 开始计算，ds_menu_num 为版本信息菜单层数，ds_menu_num=0则就一层菜单
            if (gl.info_menu_num == gl.flag) | (gl.info_menu_num == (gl.flag + 1)):
                if gl.flag != 0:
                    # flag ！= 0 表示其他层菜单
                    f.writelines(symbol + str(gl.flag).rjust(2, '0') + '.' + menu_name + '\n')
                else:
                    # flag = 0表示首层菜单
                    f.writelines('版本信息:\n\n')
                gl.flag = 0
                # 写入命令
                out_cmd = Bs.write_info_or_ds_cmd(symbol, req, gl.InitDataLinkLayer['m0'])
                f.writelines(out_cmd[0] + '\n')
                # 写入每条数据
                shield_cmd = out_cmd[1]
                info_str = Bs.write_info_str(symbol, names, ans, offsets, formulas, shield_cmd)
                f.writelines(info_str + '\n')
                f.writelines(';' + 150 * '*' + '\n\n')
            else:
                if gl.flag == 0:
                    f.writelines('版本信息:\n\n')
                gl.flag += 1
                f.writelines(symbol + str(gl.flag).rjust(2, '0') + '.' + menu_name + '\n')
                # 写入命令
                out_cmd = Bs.write_info_or_ds_cmd(symbol, req, gl.InitDataLinkLayer['m0'])
                f.writelines(out_cmd[0] + '\n')
                # 写入每条数据
                shield_cmd = out_cmd[1]
                info_str = Bs.write_info_str(symbol, names, ans, offsets, formulas, shield_cmd)
                f.writelines(info_str + '\n')
