"""清除故障码"""
import file_path as Pa
import gl
import basics as Bs
import info
import os
from BYD.SubsystemInterface import Xml_GetInfoFromCmdDataType


# 清码信息设置
def Xml_GetClearDtcInfo(file_list, fp, data):
    cmds = []
    v3 = fp
    menu_id = data[3]
    menu_name = Bs.get_id_data_from_dict(Pa._text_dict, menu_id).replace('\x00', '')  # 每层菜单的名称
    if file_list:
        v2 = Bs.readlist_reverse(file_list, v3+7, 4)  # 清码菜单ID
        v2_4 = Bs.readlist_reverse(file_list, v3+17, 4)  # 具体不详
        v2_8 = Bs.readlist_num(file_list, v3+21, 1)  # 循环提示次数
        v8 = v3 + 22
        if v2_8:
            v10 = 0
            while v10 < v2_8:
                # 不需要用到
                menu_id_0 = Bs.readlist_reverse(file_list, v8, 4)  # 菜单ID
                tip_0 = Bs.readlist_reverse(file_list, v8+4, 4)  # 提示ID
                tmp_0 = Bs.readlist_num(file_list, v8+8, 1)  # 具体不详
                v8 += 9
                v10 += 1
                # print(menu_name, menu_id_0,tip_0,tmp_0)
        v2_24 = Bs.readlist_num(file_list, v8, 2)  # 用于判断
        v11 = v8 + 2
        if v2_24:
            v14 = 0
            while v14 < v2_24:
                tmp_1 = Bs.readlist_num(file_list, v11, 2)
                v15 = v11 + 2
                data = Xml_GetInfoFromCmdDataType(file_list, v15)
                cmd_id = data[1]
                cmd_str = Bs.get_id_data_from_dict(Pa._cmd_dict, cmd_id)
                cmd = Bs.get_command(cmd_str, gl.InitDataLinkLayer['m0'])
                cmds.append(cmd)
                v16 = data[0]
                v15 += v16
                v11 = v16 + v15
                v14 += 1

        v2_36 = Bs.readlist_reverse(file_list, v11, 4)
        v2_40 = Bs.readlist_num(file_list, v11+4, 2)  # 清码类型判断
        v2_42 = Bs.readlist_num(file_list, v11+6, 2)
        v18 = v11 + 8
        if v2_42:
            v20 = 0
            while v20 < v2_42:
                tmp_2 = Bs.readlist_num(file_list, v18, 2)
                tmp_3 = Bs.readlist_num(file_list, v18+2, 2)
                tmp_4 = Bs.readlist_num(file_list, v18+4, 2)
                v21 = v18 + 6
                data = Xml_GetInfoFromCmdDataType(file_list, v21)
                cmd_id = data[1]
                cmd_str = Bs.get_id_data_from_dict(Pa._cmd_dict, cmd_id)
                cmd = Bs.get_command(cmd_str, gl.InitDataLinkLayer['m0'])
                cmds.append(cmd)
                v22 = data[0]
                v18 = v22 + v21
                v20 += 1

        tip_1 = Bs.readlist_reverse(file_list, v18, 4)  # 清码成功
        tip_2 = Bs.readlist_reverse(file_list, v18+4, 4)  # 清码失败
        v2_68 = Bs.readlist_num(file_list, v18+8, 1)  # 判断
        v24 = v18 + 9
        if v2_68:
            v26 = 0
            while v26 < v2_68:
                tmp_5 = Bs.readlist_num(file_list, v24, 2)
                v27 = v24 + 2
                data = Xml_GetInfoFromCmdDataType(file_list, v27)
                cmd_id = data[1]
                cmd_str = Bs.get_id_data_from_dict(Pa._cmd_dict, cmd_id)
                cmd = Bs.get_command(cmd_str, gl.InitDataLinkLayer['m0'])
                cmds.append(cmd)
                v28 = data[0]
                v24 = v28 + v27
                v26 += 1
        clear_dtc_choose(v2_40, menu_name, cmds)
        return v2_40, cmds


#  清码模式选择
def clear_dtc_choose(type_mun, menu_name, cmds):
    tip_str = ''
    v12 = type_mun
    if v12 == 3:
        tip = '警告：车型ID为：' + hex(gl._global_dict['car_id']) + \
             '未编写该清码类型：case ' + str(v12)
        Bs.debug(Bs.Debug, tip)
    elif v12 > 3:
        if v12 == 5:  # 清码后发退出命令退出, 我们暂时不发
            # for cmd in gl._global_dict['QCMD']:
            #     cmds.append(cmd)
            write_clear_dtc(menu_name, cmds, tip_str)
        elif v12 < 5:
            tip = '警告：车型ID为：' + hex(gl._global_dict['car_id']) + \
                  '未编写该清码类型：case ' + str(v12)
            Bs.debug(Bs.Debug, tip)
        elif v12 != 240:
            tip = '警告：车型ID为：' + hex(gl._global_dict['car_id']) + \
                  '未编写该清码类型：case ' + str(v12)
            Bs.debug(Bs.Debug, tip)
        else:
            tip = '警告：车型ID为：' + hex(gl._global_dict['car_id']) + \
                  '未编写该清码类型：case ' + str(v12)
            Bs.debug(Bs.Debug, tip)
    else:  # 正常清码
        if v12 != 1:
            if v12 == 2:
                tip_str = '\t\t$$$$ 1.点火开关打开（ON（给车内所有电器供电）挡），发动机不启动（电动车为非Ready（随时可以启程）状态）。\n\n'
                # tip = '警告：车型ID为：' + hex(gl._global_dict['car_id']) + \
                #       '未编写该清码类型：case ' + str(v12)
                # Bs.debug(Bs.Debug, tip)
        # ClearDtcMode0001
        write_clear_dtc(menu_name, cmds, tip_str)


# 写入清码信息
def write_clear_dtc(menu_name, cmds, tip_str):
    symbol = '  $$  '
    if os.path.exists(gl.write_path):
        with open(gl.write_path, 'a', encoding='gbk') as f:
            # flag 从 0 开始计算，ds_menu_num 为版本信息菜单层数，ds_menu_num=0则就一层菜单
            if (gl.cdtc_menu_num == gl.flag) | (gl.cdtc_menu_num == (gl.flag + 1)):
                if gl.flag != 0:
                    # flag ！= 0 表示其他层菜单
                    f.writelines(symbol + str(gl.flag).rjust(2, '0') + '.' + menu_name + '\n')
                else:
                    # flag = 0表示首层菜单
                    f.writelines('清除故障码:\n\n')
                gl.flag = 0
                # 写入命令
                out_cmd = Bs.write_info_or_ds_cmd(symbol, cmds, gl.InitDataLinkLayer['m0'])
                f.writelines(tip_str + out_cmd + '\n')
                f.writelines(';' + 150 * '*' + '\n\n')
            else:
                if gl.flag == 0:
                    f.writelines('清除故障码:\n\n')
                gl.flag += 1
                f.writelines(symbol + str(gl.flag).rjust(2, '0') + '.' + menu_name + '\n')
                # 写入命令
                out_cmd = Bs.write_info_or_ds_cmd(symbol, cmds, gl.InitDataLinkLayer['m0'])
                f.writelines(tip_str + out_cmd + '\n')
