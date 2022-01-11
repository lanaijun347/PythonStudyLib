"""读故障码"""
import file_path as Pa
import gl
import basics as Bs
import os
import SubsystemInterface


def Xml_GetInfoFromFunCfgReadDtc1(file_list, fp, data):
    v3 = fp
    offsets = []  # 故障码偏移位置
    byte_nums = []  # 控制故障码字节数
    cmds = []  # 故障码命令
    dtc_nums = []  # 字节控制故障码个数
    dtc_num_offsets = []  # 字节控制故障码数的偏移位置
    adv_cmds = []
    formulas = []
    formula = ''
    str1 = ''
    menu_id = data[3]
    ctl_num = 0
    menu_name = Bs.get_id_data_from_dict(Pa._text_dict, menu_id).replace('\x00', '')  # 每层菜单的名称
    if file_list:
        v2_100 = Bs.readlist_num(file_list, v3+13, 4)
        v7 = v2_100 & 0xffff
        iDtcOnLine = v7 & 0x20
        v2 = Bs.readlist_reverse(file_list, v3+17, 4)
        dtc_type = Bs.readlist_num(file_list, v3+21, 2)  # 模式选择
        dtc_link = Bs.readlist_reverse(file_list, v3+23, 4)  # fe000000 故障码拼接字
        v2_12 = Bs.readlist_num(file_list, v3+27, 1)
        v2_13 = Bs.readlist_num(file_list, v3+28, 2)
        v2_14 = Bs.readlist_num(file_list, v3+30, 2)  # 判断
        v9 = v3 + 32
        if v2_14:  # 进入数据流前预发命令
            v11 = 0
            while v11 < v2_14:
                tmp_0 = Bs.readlist_num(file_list, v9, 2)
                v12 = v9 + 2
                data_1 = SubsystemInterface.Xml_GetInfoFromCmdDataType(file_list, v12)
                adv_cmd_str = Bs.get_id_data_from_dict(Pa._cmd_dict, data_1[1])
                adv_cmd = Bs.get_command(adv_cmd_str, gl.InitDataLinkLayer['m0'])
                adv_cmds.append(adv_cmd)
                v13 = data_1[0]
                v9 = v13 + v12
                v11 += 1

        v2_16 = Bs.readlist_num(file_list, v9, 2)
        v15 = v9 + 2
        if v2_16:
            v17 = 0
            while v17 < v2_16:
                tmp_1 = Bs.readlist_num(file_list, v15, 2)
                v18 = v15 + 2
                data = SubsystemInterface.Xml_GetInfoFromCmdDataType(file_list, v18)
                cmd_id = data[1]
                cmd_str = Bs.get_id_data_from_dict(Pa._cmd_dict, cmd_id)
                cmd = Bs.get_command(cmd_str, gl.InitDataLinkLayer['m0'])
                cmds.append(cmd)  # 命令
                dtc_nums.append(data[4])  # 字节控制故障码数
                dtc_num_off = data[2]  # 字节控制故障码数的偏移位置
                if data[3] == '00000000':
                    formula = ''
                else:
                    formula = Bs.get_id_data_from_dict(Pa._formula_dict, data[3])
                if formula:
                    formulas.append(formula)
                if gl.InitDataLinkLayer['m0'] == 2:
                    dtc_num_off = dtc_num_off - 3
                elif gl.InitDataLinkLayer['m0'] == 3:
                    dtc_num_off = dtc_num_off - 5
                else:
                    # X431 回复按80算
                    if (cmds[0][0:2] == '80') | (cmds[0][0:2] == 'C0'):
                        dtc_num_off = dtc_num_off
                    else:
                        dtc_num_off = dtc_num_off - 1
                dtc_num_offsets.append(dtc_num_off)
                v19 = data[0]
                v15 = v19 + v18
                v17 += 1
            offsets.append(0)
            byte_nums.append(0)
            # print(cmds, dtc_num_offsets, dtc_nums)
            # 从下面的while拿上来的，可能会报错
            byte_off = Bs.readlist_num(file_list, v15 + 5, 1)  # 字节偏移
            if gl.InitDataLinkLayer['m0'] == 2:
                byte_off = byte_off - 3
            elif gl.InitDataLinkLayer['m0'] == 3:
                byte_off = byte_off - 5
            else:
                if (cmds[0][0:2] == '80') | (cmds[0][0:2] == 'C0'):
                    pass
                else:
                    byte_off = byte_off - 1
            str1 = choose_dtc_mode1(str1, cmds, dtc_num_offsets, dtc_nums, byte_off, formulas)

        v2_18 = Bs.readlist_num(file_list, v15, 2)
        v21 = v15 + 2
        if v2_18:
            v23 = 0
            while v23 < v2_18:
                tmp_2 = Bs.readlist_num(file_list, v21, 2)
                byte_num = Bs.readlist_num(file_list, v21+2, 1)  # 故障码字节数
                byte_nums.append(byte_num)
                byte_off = Bs.readlist_num(file_list, v21+3, 1)  # 字节偏移
                dtc_num_off = Bs.readlist_num(file_list, v21+4, 2)  # 控制故障码个数偏移位置
                tmp_4 = Bs.readlist_reverse(file_list, v21+6, 4)
                v24 = v21 + 10
                data = SubsystemInterface.Xml_GetInfoFromCmdDataType(file_list, v24)
                cmd_id = data[1]  # 命令id
                dtc_nums.append(data[4])  # 控制故障码个数
                cmd_str = Bs.get_id_data_from_dict(Pa._cmd_dict, cmd_id)
                cmd = Bs.get_command(cmd_str, gl.InitDataLinkLayer['m0'])
                cmds.append(cmd)
                if data[3] == '00000000':
                    formula = ''
                else:
                    formula = Bs.get_id_data_from_dict(Pa._formula_dict, data[3])
                if formula:
                    formulas.append(formula)
                # else:
                #     print(gl.system_id)
                if gl.InitDataLinkLayer['m0'] == 2:
                    byte_off = byte_off - 3
                    if dtc_num_off != 0:
                        dtc_num_off -= 3
                elif gl.InitDataLinkLayer['m0'] == 3:
                    byte_off = byte_off - 5
                    if dtc_num_off != 0:
                        dtc_num_off -= 5
                else:
                    if (cmds[0][0:2] == '80') | (cmds[0][0:2] == 'C0'):
                        pass
                    else:
                        byte_off = byte_off - 1
                        if dtc_num_off != 0:
                            dtc_num_off -= 1
                offsets.append(byte_off)
                dtc_num_offsets.append(dtc_num_off)
                v25 = data[0]
                v21 = v25 + v24
                v23 += 1
            be_len_cmd = len(cmds)
            if formula:
                formula_tmp = formula.lower().replace(' ', '')
                if 'if' in formula_tmp and '==' in formula_tmp:
                    l_str, r_str = formula.split('==', 1)
                    if 'x3' in  r_str:
                        ctl_num = 3
                    elif 'x2' in r_str:
                        ctl_num = 2
                    elif 'x1' in r_str:
                        ctl_num = 1
                    else:
                        tip = gl.system_id + ' ：读码公式请关注 --> rdtc.py'
                        Bs.debug(Pa.Debug, tip)
                else:
                    if 'x3' in formula:
                        ctl_num = 3
                    elif 'x2' in formula:
                        ctl_num = 2
                    elif 'x1' in formula:
                        ctl_num = 1
                    else:
                        tip = gl.system_id + ' ：读码公式请关注 --> rdtc.py'
                        Bs.debug(Pa.Debug, tip)

                # if ('x4' in formula_tmp) and ('x4/' not in formula_tmp) and ('x4*' not in formula_tmp) and ('x4&' not in formula_tmp) and ('x4+' not in formula_tmp) and ('x4-' not in formula_tmp) and ('x4|' not in formula_tmp) and ('x4>' not in formula_tmp) and ('x4<' not in formula_tmp):
                #     ctl_num = 4
                # elif ('x3' in formula_tmp) and ('x3/' not in formula_tmp) and ('x3*' not in formula_tmp) and ('x3&' not in formula_tmp) and ('x3+' not in formula_tmp) and ('x3-' not in formula_tmp) and ('x3|' not in formula_tmp) and ('x3>' not in formula_tmp) and ('x3<' not in formula_tmp):
                #     ctl_num = 3
                # elif ('x2' in formula_tmp) and ('x2/' not in formula_tmp) and ('x2*' not in formula_tmp) and ('x2&' not in formula_tmp) and ('x2+' not in formula_tmp) and ('x2-' not in formula_tmp) and ('x2|' not in formula_tmp) and ('x2>' not in formula_tmp) and ('x2<' not in formula_tmp):
                #     ctl_num = 2
                # else:
                #     ctl_num = 1
            elif '000000' in dtc_link:
                # if os.path.exists('./debug_dtc.txt'):
                #     file_mode = 'a+'
                # else:
                #     file_mode = 'w'
                # with open('./debug_dtc.txt', file_mode) as f:
                #     f.writelines(gl.system_id + '\t' + repr(dtc_type) + '\t' + dtc_link + '\n')
                if byte_nums[0] == 4 and dtc_type != 3:
                    ctl_num = 3
                else:
                    ctl_num = 2
            elif dtc_link[4:] == '0000':
                ctl_num = 2
            else:
                ctl_num = 1
            # print(str1, dtc_type, cmds, offsets, byte_nums, dtc_num_offsets, ctl_num, dtc_nums, be_len_cmd)
            str1 = choose_dtc_mode(str1, dtc_type, cmds, offsets, byte_nums, ctl_num, dtc_num_offsets,
                                   dtc_nums, be_len_cmd, formulas)

        v2_20 = Bs.readlist_num(file_list, v21, 1)
        v27 = v21 + 1
        if v2_20:
            v29 = 0
            tip = '警告：车型ID为：' + gl.system_id + \
                  '未编写该读码类型, 关注 rdtc.py 72行'
            Bs.debug(Bs.Debug, tip)
            # while v29 < v2_20:
            #     tmp_5 = Bs.readlist_num(file_list, v27, 2)
            #     v30 = v27 + 2
            #     data = SubsystemInterface.Xml_GetInfoFromCmdDataType(file_list, v30)
            #     v31 = data[0]
            #     v27 = v31 + v30
            #     v29 += 1

        v2_72 = Bs.readlist_num(file_list, v27, 2)
        v32 = v27 + 2
        v33 = 0
        # while v33 < v2_72:
        #     tmp_6 = Bs.readlist_reverse(file_list, v32, 4)
        #     v32 += 4
        #     v33 += 1

        # dtc_str = read_dtc_type_choose(dtc_type, dtc_link, byte_num, cmds, offsets, dtc_num_offset)
        if dtc_link not in gl.dtc_lib:
            gl.dtc_lib.append(dtc_link)
        if ctl_num == 2:
            dtc_str = str1 + '\n' + 2 * ' ' + '码库:\n\n' + 2 * ' ' + '$*$*DTC/' + dtc_link + '_2BYTE' + '\n\n'
            if dtc_link not in gl.two_byte_dtc_lib:
                gl.two_byte_dtc_lib.append(dtc_link)
        elif ctl_num == 1:
            dtc_str = str1 + '\n' + 2 * ' ' + '码库:\n\n' + 2 * ' ' + '$*$*DTC/' + dtc_link + '_1BYTE' + '\n\n'
            if dtc_link not in gl.one_byte_dtc_lib:
                gl.one_byte_dtc_lib.append(dtc_link)
        else:
            dtc_str = str1 + '\n' + 2 * ' ' + '码库:\n\n' + 2 * ' ' + '$*$*DTC/' + dtc_link + '\n\n'
            if ctl_num == 0:
                tip = gl.system_id + ' ：生成码库文件错误，显示字节为0 --> rdtc.py'
                Bs.debug(Pa.Debug, tip)
        # 五菱码库用
        # dtc_str = str1 + '\n' + 2 * ' ' + '码库:' + 2 * ' ' + '$*$*' + (gl.system_id.replace('0x', '')).upper() + '\n\n'
        # 菜单名称，命令，故障码控制字符串
        write_read_dtc(menu_name, cmds, dtc_str, adv_cmds)
        # return dtc_type, dtc_link, byte_num, offset, cmds
        if not iDtcOnLine:  # 码库不要联网
            tip = gl.system_id.replace('0x', '').upper()
            Bs.debug(Pa.have_dtc_lib, tip)
        else:  # 码库要联网
            dtc_str = str1 + '\n'
            tip = gl.system_id.replace('0x', '').upper()
            Bs.debug(Pa.no_dtc_lib, tip)


# 命令，字节控制故障码个数偏移，故障码个数
def choose_dtc_mode1(str1, cmds, dtc_num_offsets, dtc_nums, byte_off, formulas):
    out = ''
    str2 = ''
    if str1:
        pass
    else:
        for i in range(len(cmds)):
            if dtc_num_offsets[i] > 0:
                if dtc_nums[i] > 1:
                    str2 = 2*' ' + 'ANS' + str(i).rjust(3, '0') + '.' + 'BYTE' + str(dtc_num_offsets[i]).rjust(2, '0') \
                            + '-' + str(dtc_num_offsets[i] + dtc_nums[i] - 1).rjust(2, '0') + ' 控制故障码个数，'
                    # 两帧读码且第一帧byte5-6控制读码个数
                    if (dtc_num_offsets[i] == 5) & ((dtc_num_offsets[i] + dtc_nums[i] - 1) == 6):
                        gl._dtc_xml['value'].append(2)
                    else:
                        tip = '警告：车型ID为：' + gl.system_id + ' 请关注该读码方式，程序中未添加-' + str2
                        Bs.debug(Bs.Debug, tip)
                elif dtc_nums[i] == 1:
                    str2 = 2*' ' + 'ANS' + str(i).rjust(3, '0') + '.' + 'BYTE' + str(dtc_num_offsets[i]).rjust(2, '0') \
                            + ' 控制故障码个数，'
                    # 一帧读码且字节控制故障码个数，故障码起始位置在控制位后一位
                    if ((byte_off - dtc_num_offsets[i]) == 1):
                        gl._dtc_xml['value'].append(1)
                    elif ((byte_off - dtc_num_offsets[i]) == 2):
                        gl._dtc_xml['value'].append(10)
                    else:
                        tip = '警告：车型ID为：' + gl.system_id + ' 请关注该读码方式，程序中未添加-' + str2
                        Bs.debug(Bs.Debug, tip)
                else:
                    str2 = '帧长控制故障码个数，'
    out = str2
    return out


def choose_dtc_mode(str1, dtc_type, cmds, offsets, byte_num, ctl_num, dtc_num_offsets, dtc_num, be_len, formulas):
    str2 = ''
    formula_str = ''
    if formulas:
        flag = 0  # 判断读码公式，是否存在特殊处理
        for formula in formulas:
            if 'if' in formula or '&' in formula:
                flag = 1
            formula_str += '\t\t\t' + formula + '\n'
            if flag:
                tip = gl.system_id + ' : 请根据车型 Protocol [读码] 程序自行处理控制公式。\n\t\t' + str(formulas)
                Bs.debug(Bs.Debug, tip)
        formula_str = '\t\t控制公式：\n' + formula_str + '\n'
    if str1:
        if (dtc_type == 5) | (dtc_type == 3) | (dtc_type == 1):
            for i in range(be_len-1, len(cmds)):
                if dtc_num_offsets[i] == 0:
                    str2 = formula_str + str1 + '从$#ANS' + str(i).rjust(3, '0') + '.' + 'BYTE' + str(offsets[i]).rjust(2, '0') + \
                           '$#开始每$#' + str(byte_num[i]) + '$#个字节表示一个故障码，前$#' + str(ctl_num) + \
                           '$#表示码号。\n'
                    type_str = '读码类型 1 ，系统ID：' + gl.system_id
                    if type_str not in gl._dtc_type:
                        gl._dtc_type.append(type_str)
                else:
                    tip = '警告：车型ID为：' + gl.system_id + \
                          '未编写' + str(dtc_type) + '该读码类型, 关注 rdtc.py 181行'
                    Bs.debug(Bs.Debug, tip)
        else:
            tip = '警告：车型ID为：' + gl.system_id + \
                  '未编写' + str(dtc_type) + '该读码类型, 关注 rdtc.py 184行'
            Bs.debug(Bs.Debug, tip)
    else:
        if (dtc_type == 5) | (dtc_type == 3) | (dtc_type == 38) | (dtc_type == 1) | (dtc_type == 34) | (dtc_type == 32) | (dtc_type == 4) | (dtc_type == 48) | (dtc_type == 49):
            for i in range(len(cmds)):
                if (dtc_num_offsets[i] > 0) & (dtc_num[i] > 1):
                    str2 = formula_str + 2*' ' + 'ANS' + str(i).rjust(3, '0') + '.' + 'BYTE' \
                           + str(dtc_num_offsets[i]).rjust(2, '0') \
                           + '-' + str(dtc_num_offsets[i] + dtc_num[i] - 1).rjust(2, '0') \
                           + ' 控制故障码个数，从$#' + 'ANS' + str(i).rjust(3, '0') + '.' + 'BYTE' + str(offsets[i]) + '$#开始每$#' \
                           + str(byte_num[i]) + '$#个字节表示一个故障码，前$#' + str(ctl_num) + '$#表示码号。\n'

                    type_str = '读码类型 2 ，系统ID：' + gl.system_id
                    if type_str not in gl._dtc_type:
                        gl._dtc_type.append(type_str)

                    # 两帧读码且第一帧byte5-6控制读码个数
                    if (dtc_num_offsets[i] == 5) & ((dtc_num_offsets[i] + dtc_num[i] - 1) == 6) & (len(cmds) == 2):
                        gl._dtc_xml['value'].append(2)
                    else:
                        tip = '警告：车型ID为：' + gl.system_id + ' 请关注该读码方式，程序中未添加-' + str2
                        Bs.debug(Bs.Debug, tip)
                elif (dtc_num_offsets[i] > 0) & (dtc_num[i] >= 0):
                    if dtc_type == 4:
                        dtc_num_offsets[i] = dtc_num_offsets[i] + 1
                        offsets[i] = offsets[i] + 1
                    str2 = formula_str + 2 * ' ' + 'ANS' + str(i).rjust(3, '0') + '.' + 'BYTE' \
                           + str(dtc_num_offsets[i]).rjust(2, '0') \
                           + ' 控制故障码个数，从$#' + 'ANS' + str(i).rjust(3, '0') + '.' + 'BYTE' + str(offsets[i]) + '$#开始每$#' \
                           + str(byte_num[i]) + '$#个字节表示一个故障码，前$#' + str(ctl_num) + '$#表示码号。\n'

                    type_str = '读码类型 3 ，系统ID：' + gl.system_id
                    if type_str not in gl._dtc_type:
                        gl._dtc_type.append(type_str)

                    # 一帧读码且字节控制故障码个数，故障码起始位置在控制位后一位
                    if ((offsets[i] - dtc_num_offsets[i]) == 1):
                        gl._dtc_xml['value'].append(1)
                    elif ((offsets[i] - dtc_num_offsets[i]) == 2):
                        gl._dtc_xml['value'].append(10)
                    else:
                        tip = '警告：车型ID为：' + gl.system_id + ' 请关注该读码方式，程序中未添加-' + str2
                        Bs.debug(Bs.Debug, tip)
                else:
                    str2 = formula_str + 2*' ' + '帧长控制故障码个数，从$#' + 'ANS' + str(i).rjust(3, '0') + '.' + 'BYTE' + str(offsets[i]) + '$#开始每$#' \
                           + str(byte_num[i]) + '$#个字节表示一个故障码，前$#' + str(ctl_num) + '$#表示码号。\n'
                    # 吉利要求增加
                    # gl._dtc_xml['value'].append(0)
                    type_str = '读码类型 0 ，系统ID：' + gl.system_id
                    if type_str not in gl._dtc_type:
                        gl._dtc_type.append(type_str)
        else:
            tip = '警告：车型ID为：' + gl.system_id + \
                  '未编写' + str(dtc_type) + '该读码类型, 关注 rdtc.py 204行'
            Bs.debug(Bs.Debug, tip)
    out = str2
    return out


# 写入文件
def write_read_dtc(menu_name, cmds, dtc_str, adv_cmds):
    if len(adv_cmds) > 1:
        gl.ds_flag = 1
    symbol = '  $#  '
    if os.path.exists(gl.write_path):
        with open(gl.write_path, 'a', encoding='gbk') as f:
            # flag 从 0 开始计算，ds_menu_num 为版本信息菜单层数，ds_menu_num=0则就一层菜单
            if (gl.rdtc_menu_num == gl.flag) | (gl.rdtc_menu_num == (gl.flag + 1)):
                if gl.flag != 0:
                    if len(adv_cmds) > 0:  # 写入预发命令
                        symbol_0 = '  $#IN  '
                        adv_cmd = Bs.write_info_or_ds_cmd(symbol_0, adv_cmds, gl.InitDataLinkLayer['m0'], gl.ds_flag)
                        f.writelines(adv_cmd[0] + '\n')
                    # flag ！= 0 表示其他层菜单
                    f.writelines(symbol + str(gl.flag).rjust(2, '0') + '.' + menu_name + '\n')
                else:
                    # flag = 0表示首层菜单
                    f.writelines('读取故障码:\n\n')
                    if len(adv_cmds) > 0:  # 写入预发命令
                        symbol_0 = '  $#IN  '
                        adv_cmd = Bs.write_info_or_ds_cmd(symbol_0, adv_cmds, gl.InitDataLinkLayer['m0'], gl.ds_flag)
                        f.writelines(adv_cmd[0] + '\n')
                gl.flag = 0
                # 写入命令
                out_cmd = Bs.write_info_or_ds_cmd(symbol, cmds, gl.InitDataLinkLayer['m0'])
                f.writelines(out_cmd[0] + '\n')
                f.writelines(dtc_str + '\n')
                # 写入xml读码方式
                if len(gl._dtc_xml['value']) > 0:
                    xml_str_0 = '<RDTC>\n'
                    xml_str_1 = '</RDTC>\n\n'
                    xml_str_2 = ''
                    for i in range(len(gl._dtc_xml['value'])):
                        xml_str_2 += '  <FUNCTION type="0" num="' + str(i) + '">\n' + \
                                     '     <param type="string" value="' + str(gl._dtc_xml['value'][i]) + '"/>\n' + \
                                     '   </FUNCTION>\n'
                        # 吉利要求增加
                        # if gl._dtc_xml['value'][i] == 2:
                        #     xml_str_2 += '  <FUNCTION type="0" num="' + str(i) + '">\n' + \
                        #                  '     <param type="string" value="' + str(gl._dtc_xml['value'][i]) + '"/>\n' + \
                        #                  '     <param type="string" value="5,1"/>\n' +\
                        #                  '   </FUNCTION>\n'
                        # elif gl._dtc_xml['value'][i] == 1:
                        #     xml_str_2 += '  <FUNCTION type="0" num="' + str(i) + '">\n' + \
                        #                  '     <param type="string" value="' + str(gl._dtc_xml['value'][i]) + '"/>\n' + \
                        #                  '     <param type="string" value="1,1"/>\n' + \
                        #                  '   </FUNCTION>\n'
                        # else:
                        #     xml_str_2 += '  <FUNCTION type="0" num="' + str(i) + '">\n' + \
                        #                  '     <param type="string" value="' + str(gl._dtc_xml['value'][i]) + '"/>\n' +\
                        #                  '   </FUNCTION>\n'
                    xml_str = xml_str_0 + xml_str_2 + xml_str_1
                    f.writelines(xml_str)
                f.writelines(';' + 150 * '*' + '\n\n')
            else:
                if gl.flag == 0:
                    f.writelines('读取故障码:\n\n')
                gl.flag += 1
                if len(adv_cmds) > 0:  # 写入预发命令
                    symbol_0 = '  $#IN  '
                    adv_cmd = Bs.write_info_or_ds_cmd(symbol_0, adv_cmds, gl.InitDataLinkLayer['m0'], gl.ds_flag)
                    f.writelines(adv_cmd[0] + '\n')
                f.writelines(symbol + str(gl.flag-1).rjust(2, '0') + '.' + menu_name + '\n')
                # 写入命令
                out_cmd = Bs.write_info_or_ds_cmd(symbol, cmds, gl.InitDataLinkLayer['m0'])
                f.writelines(out_cmd[0] + '\n')
                f.writelines(dtc_str + '\n')
            # # 威马花姐要求加入
            # rdct = '<RDTC>\n' + '\t<FUNCTION type="0" num="0">\n' + '\t\t<param type="string" value="0"/><!--方式0-->\n' + \
            #     '\t</FUNCTION>\n' + '</RDTC>\n\n'
            # f.writelines(rdct)
