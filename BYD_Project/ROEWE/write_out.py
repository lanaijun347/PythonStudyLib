import basics as bs
import os
import ROEWE.roewe_gl as gl
import ROEWE.file_path as pa
import ROEWE.dtc as dtc
import ROEWE.ecu as ecu
import ROEWE.ds as ds
import ROEWE.freeze_info as fz


def write_out_file(token):
    if not os.path.exists(gl.g_dict['out_path'].rstrip()):
        os.makedirs(gl.g_dict['out_path'].rstrip())
    paths = []
    v109 = token[109]
    v108 = token[108]
    if (token[109] == 2) or (token[109] == 3) and (token[108] != 4 and token[108] != 8 and token[108] != 9 and token[108] != 10 and token[108] != 11):
        # 荣威串行协议，能生成5种类型： 80/非80/C0/非C0/首字节+2
        path1 = gl.g_dict['out_path'].rstrip() + '//' + gl.g_dict['system_id'] + '.asm'
        # path1 = gl.g_dict['out_path'] + '//' + gl.g_dict['system_id'] + '_' + '80' + '.asm'
        # path2 = gl.g_dict['out_path'] + '//' + gl.g_dict['system_id'] + '_' + '81' + '.asm'
        # path3 = gl.g_dict['out_path'] + '//' + gl.g_dict['system_id'] + '_' + 'C0' + '.asm'
        # path4 = gl.g_dict['out_path'] + '//' + gl.g_dict['system_id'] + '_' + 'C1' + '.asm'
        # path5 = gl.g_dict['out_path'] + '//' + gl.g_dict['system_id'] + '_' + 'ADD2' + '.asm'
        paths.append(path1)
        # paths.append(path2)
        # paths.append(path3)
        # paths.append(path4)
        # paths.append(path5)
    else:
        path = gl.g_dict['out_path'].rstrip() + '//' + gl.g_dict['system_id'] + '.asm'
        paths.append(path)
    # 读码清码数据
    dtc_data = dtc.get_dtc_data(token)
    # 版本信息数据
    ecu_data = ecu.get_info_data(token)
    # 数据流
    ds_data = ds.get_ds_data(token)
    # 读冻结帧
    # dtc_case_list = []
    # dct_cmd_list = []
    # dtc_link = 0
    # freeze_data = fz.get_freeze_info(token)
    for i in range(len(paths)):
        gl.g_dict['act_xml_str'] = ''
        gl.g_dict['act_cmd_str'] = ''
        if not os.path.exists(paths[i]):
            model = 'w'
        else:
            model = 'a'
        with open(paths[i], model, encoding='gbk') as f:
            # 写入系统名称
            str1 = '\n' + 5 * ' ' + '系统名称:' + gl.g_dict['system_name'] + '\n\n' +\
                   5 * ' ' + '系统ID:' + gl.g_dict['system_id'] + '\n\n' +\
                   ';' + 150 * '*' + '\n\n'
            f.writelines(str1)
            # can型协议
            if (token[109] == 1) or (token[109] == 5):
                # 写入初始配置
                str2 = roewe_can_write_in_cmd(token[109], token)
                f.writelines(str2)
                head_xml = '<VCI>\n'
                end_xml = '</VCI>\n\n'
                if gl.g_dict['act_xml_str']:  # 写入需配置vci的xml信息
                    atc_xml = gl.g_dict['act_cmd_str'] + '\n' + '<VCI>\n' + gl.g_dict['act_xml_str'] + '</VCI>\n\n'
                    f.writelines(atc_xml + ';' + 150 * '*' + '\n\n')
                    gl.g_dict['act_xml_str'] = ''
                    gl.g_dict['act_cmd_str'] = ''
                # 写入读码清码
                if dtc_data:
                    # dtc_case_list = dtc_data[0]
                    # dct_cmd_list = dtc_data[1]
                    # dtc_link = dtc_data[6]
                    dtc_str = return_dtc_write_data(dtc_data, token[109], i, v108)
                    f.writelines(dtc_str)
                # 写入版本信息
                if ecu_data:
                    ecu_str = return_ecu_write_data(ecu_data, token[109], i, v108)
                    f.writelines(ecu_str)
                # 写入数据流
                if ds_data:
                    ds_str = return_ds_write_data(ds_data, token[109], i, v108)
                    f.writelines(ds_str)
                # 写入冻结帧
                # if freeze_data:
                #     freeze_str = return_freeze_write_data(freeze_data, token[109], i, dtc_case_list, dct_cmd_list, dtc_link)
                #     f.writelines(freeze_str)
            # KW2000
            elif (token[109] == 2) or (token[109] == 3) and (token[108] != 4 and token[108] != 8 and token[108] != 9 and token[108] != 10 and token[108] != 11):
                # 写入初始配置
                str3 = roewe_kwp2000_write_in_cmd(token, token[109], i)
                f.writelines(str3)
                atc_cmd_list = gl.g_dict['atv_cmd']
                act_xml_type = ''
                if atc_cmd_list:
                    for num in range(len(atc_cmd_list)):
                        act_xml_type += '\t<process_fun_configs>\n' \
                                       '\t\t<process_fun_config num="' + repr(num) + '">\n' \
                                       '\t\t\t<active_ecu_fun_offset>10</active_ecu_fun_offset>\n' \
                                       '\t\t</process_fun_config>\n' \
                                       '\t</process_fun_configs>\n'
                else:
                    act_xml_type = '\t<process_fun_configs>\n' \
                                   '\t\t<process_fun_config num="0">\n' \
                                   '\t\t\t<active_ecu_fun_offset>10</active_ecu_fun_offset>\n' \
                                   '\t\t</process_fun_config>\n' \
                                   '\t</process_fun_configs>\n'
                if gl.g_dict['act_xml_str']:  # 写入需配置vci的xml信息
                    atc_xml = gl.g_dict['act_cmd_str'] + '\n' + '<VCI>\n' + act_xml_type + gl.g_dict['act_xml_str'] \
                              + '</VCI>\n\n'
                    f.writelines(atc_xml + ';' + 150 * '*' + '\n\n')
                    gl.g_dict['act_xml_str'] = ''
                    gl.g_dict['act_cmd_str'] = ''
                else:
                    atc_xml = '<VCI>\n' + act_xml_type + '</VCI>\n\n'
                    f.writelines(atc_xml + ';' + 150 * '*' + '\n\n')
                if dtc_data:
                    # dtc_case_list = dtc_data[0]
                    # dct_cmd_list = dtc_data[1]
                    # dtc_link = dtc_data[6]
                    dtc_str = return_dtc_write_data(dtc_data, token[109], i, v108)
                    f.writelines(dtc_str)
                # 写入版本信息
                if ecu_data:
                    ecu_str = return_ecu_write_data(ecu_data, token[109], i, v108)
                    f.writelines(ecu_str)
                # 写入数据流
                if ds_data:
                    ds_str = return_ds_write_data(ds_data, token[109], i, v108)
                    f.writelines(ds_str)
                # 写入冻结帧
                # if freeze_data:
                #     freeze_str = return_freeze_write_data(freeze_data, token[109], i, dtc_case_list, dct_cmd_list, dtc_link)
                #     f.writelines(freeze_str)
            elif v109 == 3 and (v108 == 11 or v108 == 4 or v108 == 8 or v108 == 9 or v108 == 10):
                # 写入初始配置
                str3 = roewe_kwp_byte01_len_write_in_cmd(token[109], i, v108)
                f.writelines(str3)
                act_xml_type = '\t<process_fun_configs>\n' \
                               '\t\t<process_fun_config num="0">\n' \
                               '\t\t\t<active_ecu_fun_offset>9</active_ecu_fun_offset>\n' \
                               '\t\t</process_fun_config>\n' \
                               '\t</process_fun_configs>\n'
                if gl.g_dict['act_xml_str']:  # 写入需配置vci的xml信息
                    atc_xml = gl.g_dict['act_cmd_str'] + '\n' + '<VCI>\n' + act_xml_type + gl.g_dict['act_xml_str'] \
                              + '</VCI>\n\n'
                    f.writelines(atc_xml + ';' + 150 * '*' + '\n\n')
                    gl.g_dict['act_xml_str'] = ''
                    gl.g_dict['act_cmd_str'] = ''
                else:
                    atc_xml = '<VCI>\n' + act_xml_type + '</VCI>\n\n'
                    f.writelines(atc_xml + ';' + 150 * '*' + '\n\n')
                if dtc_data:
                    # dtc_case_list = dtc_data[0]
                    # dct_cmd_list = dtc_data[1]
                    # dtc_link = dtc_data[6]
                    dtc_str = return_dtc_write_data(dtc_data, token[109], i, v108)
                    f.writelines(dtc_str)
                # 写入版本信息
                if ecu_data:
                    ecu_str = return_ecu_write_data(ecu_data, token[109], i, v108)
                    f.writelines(ecu_str)
                # 写入数据流
                if ds_data:
                    ds_str = return_ds_write_data(ds_data, token[109], i, v108)
                    f.writelines(ds_str)
            else:
                tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                    'system_id'] + '-->' + repr(token[109]) + ' 没有编写该协议类型...'
                bs.debug(pa.debug, tip)


def get_active_password(token, cmd_type, key_case, atv_num, path_type=None):
    out_str = ''
    key_cmd = gl.g_dict['key_cmd_r'][0]
    key_cmd_len = int(key_cmd[0:2], 16)
    if key_cmd_len == 6:
        change = '4'
    elif key_cmd_len == 4:
        change = '2'
    else:
        change = ''
        tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
            'system_id'] + '-->' + '激活加密帧长不对，请关注：帧长  ' + repr(key_cmd_len)
        bs.debug(pa.debug, tip)
    for i in range(atv_num):
        str0 = '\t<SECURITY num="' + repr(i) + '">\n'
        str1 = '\t\t<call_protocol label="GET_NEWsecurity_param" function="GET_NEWsecurity_param">\n' \
               '\t\t<!--安全算法种cass-->\n'
        str2 = '\t\t<param type="string" value="' + repr(key_case) + '"/>\n'
        str3 = '\t\t<!--读命令,写命令-->\n' \
               '\t\t<param type="command" value="KEY_CMD_00_000,KEY_CMD_00_001"/>\n' \
               '\t\t<!--读命令偏移,读字节偏移,读取字节个数,写命令偏移,写字节偏移+3，修改字节个数-->\n'
        str4 = ''
        str5 = '\t\t</call_protocol>\n'
        str6 = '\t</SECURITY>\n'
        if cmd_type == 1:
            str4 = '\t\t<param type="string" value="0,2,' + change + ',1,5,' + change + '"/>\n'
        elif cmd_type == 5:
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + ' 激活加密xml没写,get_active_password...'
            bs.debug(pa.debug, tip)
        elif (cmd_type == 2) or (cmd_type == 3) and (token[108] != 4 and token[108] != 8 and token[108] != 9 and token[108] != 10 and token[108] != 11):
            if path_type == 0 or path_type == 2:
                str4 = '\t\t<param type="string" value="0,2,' + change + ',1,6,' + change + '"/>\n'
            elif path_type == 1 or path_type == 3:
                str4 = '\t\t<param type="string" value="0,2,' + change + ',1,5,' + change + '"/>\n'
            else:
                str4 = '\t\t<param type="string" value="0,2,' + change + ',1,3,' + change + '"/>\n'
        else:
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + ' 激活加密xml没写,get_active_password...'
            bs.debug(pa.debug, tip)
        out_str += str0 + str1 + str2 + str3 + str4 + str5 + str6
    gl.g_dict['act_xml_str'] += out_str


def get_gw_and_bcm_password(token, loop_count, key_flag, ver_cmd):
    count = 0
    if key_flag:
        count = 2
    cmds = ['710 02 10 01 00 00 00 00 00',
            '710 02 10 03 00 00 00 00 00',
            '710 06 27 41 3E AB 00 0D 00',
            '710 06 27 42 00 00 00 00 00',
            '710 02 27 01 00 00 00 00 00',
            '710 06 27 02 00 00 00 00 00',
            '710 04 31 01 AA FF 00 00 00',
            '710 05 31 03 AA FF 00 00 00',
            '740 02 10 03 00 00 00 00 00',
            '740 06 27 41 3E AB 00 0D 00',
            '740 06 27 42 00 00 00 00 00',
            '740 02 27 01 00 00 00 00 00',
            '740 06 27 02 00 00 00 00 00',
            '740 04 31 01 AA FF 00 00 00',
            '740 05 31 03 AA FF 00 00 00']
    cmd_str = ''
    str3 = '\t\t<!--荣威/名爵特殊激活-->\n' \
           '\t\t<param type="string" value="-2"/>\n' \
           '\t\t<!--设置引脚和波特率-->\n' \
           '\t\t<param type="string" value="6,14,500000"/>\n' \
           '\t\t<!--读命令,写命令-->\n'
    str_str = ''
    for cmd in cmds:
        cmd_str += '  $~~ REQ' + str(count).rjust(3, '0') + ':' + cmd + 5*' ' + '  $~~ \n'
        count += 1
    if key_flag:
        for i in range(loop_count):
            str2 = '\t<ACTIVE_ADDNODE type="0" num="' + repr(i) + '">\n'
            str4 = '\t\t<param type="command" value="KEY_CMD_00_002,KEY_CMD_00_003,KEY_CMD_00_011"/>\n' \
                   '\t\t<!--加密算法case-->\n' \
                   '\t\t<param type="string" value="200"/>\n' \
                   '\t\t<!--第一层加密命令-->\n' \
                   '\t\t<param type="command" value="KEY_CMD_00_004,KEY_CMD_00_005"/>\n' \
                   '\t\t<!--读命令偏移,读字节偏移,读取字节个数,写命令偏移,写字节偏移+3，修改字节个数-->\n' \
                   '\t\t<param type="string" value="0,2,4,1,5,4"/>\n' \
                   '\t\t<!--网关安全算法种cass-->\n' \
                   '\t\t<param type="string" value="79"/>\n' \
                   '\t\t<!--读命令,写命令-->\n' \
                   '\t\t<param type="command" value="KEY_CMD_00_006,KEY_CMD_00_007,KEY_CMD_00_008,KEY_CMD_00_009"/>\n' \
                   '\t\t<!--读字节偏移,读取字节个数,写字节偏移+3，修改字节个数--> \n' \
                   '\t\t<param type="string" value="0,2,4,1,5,4"/>\n' \
                   '\t\t<!--车身加密算法case-->\n' \
                   '\t\t<param type="string" value="200"/>\n' \
                   '\t\t<!--第一层加密命令-->\n' \
                   '\t\t<param type="command" value="KEY_CMD_00_011,KEY_CMD_00_012"/>\n' \
                   '\t\t<!--读命令偏移,读字节偏移,读取字节个数,写命令偏移,写字节偏移+3，修改字节个数-->\n' \
                   '\t\t<param type="string" value="0,2,4,1,5,4"/>\n' \
                   '\t\t<!--安全算法种cass-->\n' \
                   '\t\t<param type="string" value="100"/>\n' \
                   '\t\t<!--读命令,写命令-->\n' \
                   '\t\t<param type="command" value="KEY_CMD_00_013,KEY_CMD_00_014,KEY_CMD_00_015,KEY_CMD_00_016"/>\n' \
                   '\t\t<!--读字节偏移,读取字节个数,写字节偏移+3，修改字节个数-->\n' \
                   '\t\t<param type="string" value="0,2,4,1,5,4"/>\n' \
                   '\t\t<!--重新激活-->\n'
            if ver_cmd:
                str5 = '\t\t<param type="command" value="ENTER_CMD_0' + repr(i) + '_000,ENTER_CMD_00_001"/>\n'
            else:
                str5 = '\t\t<param type="command" value="ENTER_CMD_0' + repr(i) + '_000"/>\n'
            str6 = '\t</ACTIVE_ADDNODE>\n'
            str_str += str2 + str3 + str4 + str5 + str6
    else:
        for i in range(loop_count):
            str2 = '\t<ACTIVE_ADDNODE type="0" num="' + repr(i) + '">\n'
            str4 = '\t\t<param type="command" value="KEY_CMD_00_000,KEY_CMD_00_001,KEY_CMD_00_008"/>\n' \
                   '\t\t<!--加密算法case-->\n' \
                   '\t\t<param type="string" value="200"/>\n' \
                   '\t\t<!--第一层加密命令-->\n' \
                   '\t\t<param type="command" value="KEY_CMD_00_002,KEY_CMD_00_003"/>\n' \
                   '\t\t<!--读命令偏移,读字节偏移,读取字节个数,写命令偏移,写字节偏移+3，修改字节个数-->\n' \
                   '\t\t<param type="string" value="0,2,4,1,5,4"/>\n' \
                   '\t\t<!--网关安全算法种cass-->\n' \
                   '\t\t<param type="string" value="79"/>\n' \
                   '\t\t<!--读命令,写命令-->\n' \
                   '\t\t<param type="command" value="KEY_CMD_00_004,KEY_CMD_00_005,KEY_CMD_00_006,KEY_CMD_00_007"/>\n' \
                   '\t\t<!--读字节偏移,读取字节个数,写字节偏移+3，修改字节个数--> \n' \
                   '\t\t<param type="string" value="0,2,4,1,5,4"/>\n' \
                   '\t\t<!--车身加密算法case-->\n' \
                   '\t\t<param type="string" value="200"/>\n' \
                   '\t\t<!--第一层加密命令-->\n' \
                   '\t\t<param type="command" value="KEY_CMD_00_009,KEY_CMD_00_010"/>\n' \
                   '\t\t<!--读命令偏移,读字节偏移,读取字节个数,写命令偏移,写字节偏移+3，修改字节个数-->\n' \
                   '\t\t<param type="string" value="0,2,4,1,5,4"/>\n' \
                   '\t\t<!--安全算法种cass-->\n' \
                   '\t\t<param type="string" value="100"/>\n' \
                   '\t\t<!--读命令,写命令-->\n' \
                   '\t\t<param type="command" value="KEY_CMD_00_011,KEY_CMD_00_012,KEY_CMD_00_013,KEY_CMD_00_014"/>\n' \
                   '\t\t<!--读字节偏移,读取字节个数,写字节偏移+3，修改字节个数-->\n' \
                   '\t\t<param type="string" value="0,2,4,1,5,4"/>\n' \
                   '\t\t<!--重新激活-->\n'
            if ver_cmd:
                str5 = '\t\t<param type="command" value="ENTER_CMD_0' + repr(i) + '_000,ENTER_CMD_00_001"/>\n'
            else:
                str5 = '\t\t<param type="command" value="ENTER_CMD_0' + repr(i) + '_000"/>\n'
            str6 = '\t</ACTIVE_ADDNODE>\n'
            str_str += str2 + str3 + str4 + str5 + str6
    gl.g_dict['act_xml_str'] += str_str
    gl.g_dict['act_cmd_str'] += cmd_str


def get_version_xml(atv_num, cmd_type):
    out_str = ''
    byte_off = int(gl.g_dict['ver_byte_off'])
    for i in range(atv_num):
        str0 = '\t<VERSION num="' + repr(i) + '">\n'
        str1 = '\t\t<call_protocol label="reload_path" function="get_info_scanf_version">\n' \
               '\t\t<!-- 用于表示版本号所在存储区域 对应命令表中的 buffer_offset --> \n'
        if cmd_type == 1 or cmd_type == 5:
            str6 = '\t\t<param type="string" value="1"/>\n' \
                   '\t\t<!-- 用于表示版本号开始字节在帧中的位置 -->\n'
        elif cmd_type == 2 or cmd_type == 3:
            str6 = '\t\t<param type="string" value="3"/>\n' \
                   '\t\t<!-- 用于表示版本号开始字节在帧中的位置 -->\n'
        else:
            str6 = ''
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + ' 该版本号偏移未写,get_version_xml...'
        if byte_off == 3:
            str2 = '\t\t<param type="string" value="3"/>\n' \
                   '\t\t<!-- 用于表示版本号字节长度 -->\n' \
                   '\t\t<param type="string" value="4,8"/>\n' \
                   '\t\t<!-- 用于表示扫版本号类型 -->\n' \
                   '\t\t<param type="string" value="2,0"/>\n'
        elif byte_off == 16:
            str2 = '\t\t<param type="string" value="16"/>\n' \
                   '\t\t<!-- 用于表示版本号字节长度 -->\n' \
                   '\t\t<param type="string" value="4"/>\n' \
                   '\t\t<!-- 用于表示扫版本号类型 -->\n' \
                   '\t\t<param type="string" value="2"/>\n'
        else:
            str2 = ''
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + ' 该版本号偏移未写,get_version_xml...'
            bs.debug(pa.debug, tip)
        str3 = '\t\t<param type="string" value="' + (str(gl.g_dict['ver_dict']).upper()).replace('\'', '&quot;') + '"/>\n'
        str4 = '\t\t</call_protocol>\n'
        str5 = '\t</VERSION>\n'
        out_str += str0 + str1 + str6 + str2 + str3 + str4 + str5
    gl.g_dict['act_xml_str'] += out_str


def roewe_can_write_in_cmd(cmd_type, token):
    """荣威写入CAN进入命令函数"""
    ver_cmd_list = gl.g_dict['Version_CMD']
    zh_id = gl.g_dict['ZH_ID']
    lv_id = gl.g_dict['LV_ID']
    link_cmd_list = gl.g_dict['link_cmd']
    bps = gl.g_dict['BPS']
    atv_cmd_list = gl.g_dict['atv_cmd']
    str1 = 5 * ' ' + '通讯线:' + '$~' + gl.g_dict['PIN1'] + '$~' + gl.g_dict['PIN2'] + '$~' + bps + '\n\n'
    if cmd_type == 1:  # 有网关或车身加密
        str1 = 5 * ' ' + '通讯线:' + '$~' + gl.g_dict['PIN1'] + '$~' + gl.g_dict['PIN2'] + '$~' + bps + '$~' + lv_id \
               + ',718,748' + '\n\n'
    str2 = '进入命令:\n\n'
    str3 = '空闲命令:\n\n'
    str4 = '退出命令:\n\n'
    str5 = ''
    out_str = ''
    link_cmd = ''
    ver_cmd1 = ''
    ver_cmd2 = ''
    key_cmd = ''
    key_case_str = ''
    key_case = gl.g_dict['key_case']
    key_cmd_s = gl.g_dict['key_cmd_s']
    key_cmd_r = gl.g_dict['key_cmd_r']
    # 版本号提示
    ver_str = gl.g_dict['ver_str']
    # 空闲
    if link_cmd_list:
        cmd0 = bs.get_roewe_command(link_cmd_list[0], cmd_type)
        link_cmd = '  $! ' + 'REQ000:' + zh_id + cmd0 + 5*' ' + '  $! ' + 'ANS000:' + lv_id + cmd0 + '\n\n'
    #  激活
    if atv_cmd_list:
        atv_num = len(atv_cmd_list)
        if cmd_type == 1:  # 写入激活网关、车身配置信息
            key_flag = 0
            if key_case_str:
                key_flag = 1
            get_gw_and_bcm_password(token, atv_num, key_flag, ver_cmd_list)
        elif cmd_type == 5:
            for n in range(atv_num):
                gl.g_dict['act_xml_str'] += '\t<process_fun_configs>\n' \
                                            '\t\t<process_fun_config num="' + repr(n) + '">\n' \
                                            '\t\t\t<active_ecu_fun_offset>4</active_ecu_fun_offset>\n' \
                                            '\t\t</process_fun_config>\n' \
                                            '\t</process_fun_configs>\n'
        # 加密
        if key_cmd_s:
            str5 = '加密命令:\n\n'
            key_s = bs.get_roewe_command(key_cmd_s[0], cmd_type)
            key_r = bs.get_roewe_command(key_cmd_r[0], cmd_type)
            key_cmd = '  $~~ ' + 'REQ000:' + zh_id + key_s + 5 * ' ' + '  $~~ ' + 'ANS000:' + lv_id + key_s + '\n' + \
                      '  $~~ ' + 'REQ001:' + zh_id + key_r + 5 * ' ' + '  $~~ ' + 'ANS001:' + lv_id + key_r + '\n\n'
            key_case_str = '\t\t加密方式为:case ' + gl.g_dict['key_case'][0] + '\n\n'
            if atv_num:
                get_active_password(token, cmd_type, int(key_case[0], 10), atv_num)
            if len(key_case) > 1:
                tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                    'system_id'] + '-->' + '有多个加密case ' + repr(key_case)
                bs.debug(pa.debug, tip)
        if ver_cmd_list:
            ver_cmd1 = bs.get_roewe_command(ver_cmd_list[0], cmd_type)
            ver_cmd2 = bs.get_roewe_command(ver_cmd_list[1], cmd_type)
            if atv_num:
                get_version_xml(atv_num, cmd_type)
        a = 0
        for i in range(len(atv_cmd_list)):
            cmd1 = bs.get_roewe_command(atv_cmd_list[i], cmd_type)
            if not ver_cmd2:
                cmd_str = '  $~ ' + 'REQ' + str(0).rjust(3, '0') + ':' + zh_id + cmd1 + 5*' ' + \
                          '  $~ ' + 'ANS' + str(0).rjust(3, '0') + ':' + lv_id + cmd1 + '\n\n'
            else:
                if cmd1 != ver_cmd1:
                    ver_cmd1 = cmd1
                cmd_str = '  $~ ' + 'REQ' + str(0).rjust(3, '0') + ':' + zh_id + ver_cmd1 + 5 * ' ' + \
                          '  $~ ' + 'ANS' + str(0).rjust(3, '0') + ':' + lv_id + ver_cmd1 + '\n' + \
                          '  $~ ' + 'REQ' + str(0+1).rjust(3, '0') + ':' + zh_id + ver_cmd2 + 5 * ' ' + \
                          '  $~ ' + 'ANS' + str(0+1).rjust(3, '0') + ':' + lv_id + ver_cmd2 + '\n\n'
            if ver_str and a == 0:
                a = 1
                ver_str = '\t\t提示:版本号由ANS001.' + ver_str
            out_str += (str1 + str2 + cmd_str + ver_str + str5 + key_cmd + key_case_str + str3 + link_cmd +
                        '\n;' + 150*'*' + '\n\n')
        out_str += str4 + '\n;' + 150*'*' + '\n\n'
    else:
        tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict['system_id'] + '-->' + '没有激活命令...\n'
        bs.debug(pa.debug, tip)
    return out_str


def roewe_kwp2000_write_in_cmd(token, cmd_type, path_type):
    """荣威写入串行进入命令函数"""
    ver_cmd_list = gl.g_dict['Version_CMD']
    zh_id = gl.g_dict['ZH_ID']
    lv_id = gl.g_dict['LV_ID']
    link_cmd_list = gl.g_dict['link_cmd']
    bps = gl.g_dict['BPS']
    atv_cmd_list = gl.g_dict['atv_cmd']
    kwp_cmd_list = gl.g_dict['KW_CMD']
    exit_cmd_list = gl.g_dict['exit_cmd']
    str1 = 5 * ' ' + '通讯线:' + '$~' + gl.g_dict['PIN1'] + '$~' + gl.g_dict['PIN2'] + '$~' + bps + '\n\n'
    str2 = '进入命令:\n\n'
    str3 = '空闲命令:\n\n'
    str4 = '退出命令:\n\n'
    kwps = []
    out_str = ''
    link_cmd = ''
    ver_cmd1 = ''
    ver_cmd2 = ''
    # 预发激活
    ptr = lv_id + zh_id
    kwp1 = kwp_cmd_list[0][0:2] + ptr + kwp_cmd_list[0][-2:]
    kwp1 = bs.cmd_insert_space_kwp2000(kwp1)
    kwp2 = kwp_cmd_list[1][0:2] + ptr + kwp_cmd_list[1][-4:]
    kwp2 = bs.cmd_insert_space_kwp2000(kwp2)
    kwps.append(kwp1)
    kwps.append(kwp2)
    tip_str = '\t\t注意:1.ANS000回复跳过ANS0001，不回复发ANS001，其中一条数据关键字节后两位为(57 8F)协议切换至首字节+2；\n' \
              '\t\t\t\t2.为(E9 8F)协议切换至非80/非C0模式，具体是非80/非C0模式，具体需要根据回复 （首字节 & C0）判断;\n' \
              '\t\t\t\t3.非前面这两种则是80/C0模式，具体需要根据回复 （首字节 & C0）判断。\n\n'
    key_cmd_s = gl.g_dict['key_cmd_s']
    key_cmd_r = gl.g_dict['key_cmd_r']
    key_cmd = ''
    str5 = ''
    key_case = gl.g_dict['key_case']
    key_case_str = ''
    # 版本号提示
    ver_str = gl.g_dict['ver_str']
    # 空闲
    if link_cmd_list:
        cmd0 = bs.get_roewe_command(link_cmd_list[0], cmd_type, zh_id, lv_id, path_type)
        link_cmd = '  $! ' + 'REQ000:' + cmd0 + 5*' ' + '  $! ' + 'ANS000:' + cmd0 + '\n\n'
    # 退出
    exit_cmd = ''
    if exit_cmd_list:
        for e in range(len(exit_cmd_list)):
            exit_cmd_0 = bs.get_roewe_command(exit_cmd_list[e], cmd_type, zh_id, lv_id, path_type)
            exit_cmd += '  $@ ' + 'REQ' + str(e).rjust(3, '0') + ':' + exit_cmd_0 + 5 * ' ' + \
                        '  $@ ' + 'ANS' + str(e).rjust(3, '0') + ':' + exit_cmd_0 + '\n'
    # 加密
    atv_num = len(kwps)
    if key_cmd_s:
        str5 = '加密命令:\n\n'
        key_s = bs.get_roewe_command(key_cmd_s[0], cmd_type, zh_id, lv_id, path_type)
        key_cmd_r[0] = key_cmd_r[0].ljust((int(key_cmd_r[0][0:2], 16) + 1) * 2, '0')
        key_r = bs.get_roewe_command(key_cmd_r[0], cmd_type, zh_id, lv_id, path_type)
        key_cmd = '  $~~ ' + 'REQ000:' + key_s + 5 * ' ' + '  $~~ ' + 'ANS000:' + key_s + '\n' + \
                  '  $~~ ' + 'REQ001:' + key_r + 5 * ' ' + '  $~~ ' + 'ANS001:' + key_r + '\n\n'
        key_case_str = '\t\t加密方式为:case ' + gl.g_dict['key_case'][0] + '\n\n'
        if atv_num:
            get_active_password(token, cmd_type, int(key_case[0], 10), 1, path_type)
        if len(key_case) > 1:
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + '有多个加密case ' + repr(key_case)
            bs.debug(pa.debug, tip)
    # 版本号
    if ver_cmd_list:
        ver_cmd1 = bs.get_roewe_command(ver_cmd_list[0], cmd_type, zh_id, lv_id, path_type)
        ver_cmd2 = bs.get_roewe_command(ver_cmd_list[1], cmd_type, zh_id, lv_id, path_type)
        if atv_num:
            get_version_xml(len(atv_cmd_list), cmd_type)
    # 激活
    cmd_str = ''
    kwp_cmd = ''
    a = 0
    for i in range(len(kwps)):
        kwp_cmd += '  $~ ' + 'REQ' + str(i).rjust(3, '0') + ':' + kwps[i] + 5 * ' ' + \
                  '  $~ ' + 'ANS' + str(i).rjust(3, '0') + ':' + kwps[i] + '\n'
    if atv_cmd_list:
        for j in range(len(atv_cmd_list)):
            cmd1 = bs.get_roewe_command(atv_cmd_list[j], cmd_type, zh_id, lv_id, path_type)
            if not ver_cmd_list:
                cmd_str = '  $~ ' + 'REQ' + str(0 + 2).rjust(3, '0') + ':' + cmd1 + 5 * ' ' + \
                          '  $~ ' + 'ANS' + str(0 + 2).rjust(3, '0') + ':' + cmd1 + '\n\n'
            else:
                if cmd1 != ver_cmd1:
                    ver_cmd1 = cmd1
                cmd_str = '  $~ ' + 'REQ' + str(0+2).rjust(3, '0') + ':' + ver_cmd1 + 5 * ' ' + \
                          '  $~ ' + 'ANS' + str(0+2).rjust(3, '0') + ':' + ver_cmd1 + '\n' + \
                          '  $~ ' + 'REQ' + str(0 + 3).rjust(3, '0') + ':' + ver_cmd2 + 5 * ' ' + \
                          '  $~ ' + 'ANS' + str(0 + 3).rjust(3, '0') + ':' + ver_cmd2 + '\n\n'
            if ver_str and a == 0:
                ver_str = '\t\t提示:版本号由ANS003.' + ver_str
                a = 1
            out_str += (
                        str1 + str2 + kwp_cmd + cmd_str + ver_str + tip_str + str5 + key_cmd + key_case_str + str3 +
                        link_cmd + '\n;' + 150 * '*' + '\n\n')
        out_str += str4 + exit_cmd + '\n;' + 150 * '*' + '\n\n'
    else:
        str1 = 5 * ' ' + '通讯线:' + '$~13$~13$~' + bps + '\n\n'
        if ver_str and a == 0:
            ver_str = '\t\t提示:版本号由ANS003.' + ver_str
            a = 1
        out_str += (
                str1 + str2 + kwp_cmd + '\n' + cmd_str + ver_str + tip_str + str5 + key_cmd + key_case_str + str3 +
                link_cmd + '\n;' + 150 * '*' + '\n\n')
        out_str += str4 + exit_cmd + '\n;' + 150 * '*' + '\n\n'
        tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict['system_id'] + '-->' + '没有激活命令...\n'
        bs.debug(pa.debug, tip)
    return out_str


def roewe_kwp_byte01_len_write_in_cmd(cmd_type, path_type, v108):
    """荣威写入串行第二字节为帧长写进入命令函数"""
    ver_cmd_list = gl.g_dict['Version_CMD']
    zh_id = gl.g_dict['ZH_ID']
    lv_id = gl.g_dict['LV_ID']
    link_cmd_list = gl.g_dict['link_cmd']
    bps = gl.g_dict['BPS']
    atv_cmd_list = gl.g_dict['atv_cmd']
    exit_cmd_list = gl.g_dict['exit_cmd']
    str1 = 5 * ' ' + '通讯线:' + '$~' + gl.g_dict['PIN1'] + '$~' + gl.g_dict['PIN2'] + '$~' + bps + '\n\n'
    str2 = '进入命令:\n\n'
    str3 = '空闲命令:\n\n'
    str4 = '退出命令:\n\n'
    str5 = ''
    out_str = ''
    link_cmd = ''
    ver_cmd1 = ''
    ver_cmd2 = ''
    key_cmd = ''
    key_case_str = ''
    key_case = gl.g_dict['key_case']
    key_cmd_s = gl.g_dict['key_cmd_s']
    key_cmd_r = gl.g_dict['key_cmd_r']
    # 加密
    if key_cmd_s:
        str5 = '加密命令:\n\n'
        key_s = bs.get_roewe_command(key_cmd_s[0], cmd_type, zh_id, lv_id, 0, v108)
        key_r = bs.get_roewe_command(key_cmd_r[0], cmd_type, zh_id, lv_id, 0, v108)
        key_cmd = '  $~~ ' + 'REQ000:' + key_s + 5 * ' ' + '  $~~ ' + 'ANS000:' + key_s + '\n' + \
                  '  $~~ ' + 'REQ001:' + key_r + 5 * ' ' + '  $~~ ' + 'ANS001:' + key_r + '\n\n'
        key_case_str = '\t\t加密方式为:case ' + gl.g_dict['key_case'][0] + '\n\n'
        tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
            'system_id'] + '-->' + 'byte01为帧长协议没有写加密xml...\n'
        bs.debug(pa.debug, tip)
        if len(key_case) > 1:
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + '有多个加密case ' + repr(key_case)
            bs.debug(pa.debug, tip)
    # 空闲
    if link_cmd_list:
        cmd0 = bs.get_roewe_command(link_cmd_list[0], cmd_type, zh_id, lv_id, 0, v108)
        link_cmd = '  $! ' + 'REQ000:' + cmd0 + 5 * ' ' + '  $! ' + 'ANS000:' + cmd0 + '\n\n'
    # 退出
    exit_cmd = ''
    if exit_cmd_list:
        for e in range(len(exit_cmd_list)):
            exit_cmd_0 = bs.get_roewe_command(exit_cmd_list[e], cmd_type, zh_id, lv_id, 0, v108)
            exit_cmd += '  $@ ' + 'REQ' + str(e).rjust(3, '0') + ':' + exit_cmd_0 + 5 * ' ' + \
                        '  $@ ' + 'ANS' + str(e).rjust(3, '0') + ':' + exit_cmd_0 + '\n'
    #  激活
    if atv_cmd_list:
        if ver_cmd_list:
            ver_cmd1 = bs.get_roewe_command(ver_cmd_list[0], cmd_type, zh_id, lv_id, 0, v108)
            ver_cmd2 = bs.get_roewe_command(ver_cmd_list[1], cmd_type, zh_id, lv_id, 0, v108)
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + 'byte01为帧长协议没有写加密xml...\n'
            bs.debug(pa.debug, tip)
        for i in range(len(atv_cmd_list)):
            cmd1 = bs.get_roewe_command(atv_cmd_list[i], cmd_type, zh_id, lv_id, 0, v108)
            if not ver_cmd2:
                cmd_str = '  $~ ' + 'REQ' + str(0).rjust(3, '0') + ':' + cmd1 + 5 * ' ' + \
                          '  $~ ' + 'ANS' + str(0).rjust(3, '0') + ':' + cmd1 + '\n\n'
            else:
                if cmd1 != ver_cmd1:
                    ver_cmd1 = cmd1
                cmd_str = '  $~ ' + 'REQ' + str(0).rjust(3, '0') + ':' + ver_cmd1 + 5 * ' ' + \
                          '  $~ ' + 'ANS' + str(0).rjust(3, '0') + ':' + ver_cmd1 + '\n' + \
                          '  $~ ' + 'REQ' + str(0 + 1).rjust(3, '0') + ':' + ver_cmd2 + 5 * ' ' + \
                          '  $~ ' + 'ANS' + str(0 + 1).rjust(3, '0') + ':' + ver_cmd2 + '\n\n'
            out_str += (str1 + str2 + cmd_str + str5 + key_cmd + key_case_str + str3 + link_cmd + '\n;' + 150 * '*' + '\n\n')
        out_str += str4 + exit_cmd + '\n;' + 150 * '*' + '\n\n'
    else:
        tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
            'system_id'] + '-->' + '没有激活命令...\n'
        bs.debug(pa.debug, tip)
    return out_str


def return_write_cmd_sting(cmd_list, symbol, cmd_type):
    """返回要写入的命令字符串"""
    cmd_str = ''
    if cmd_type == 1 or cmd_type == 5:
        for i in range(len(cmd_list)):
            tmp = symbol + 'REQ' + str(i).rjust(3, '0') + ':' + gl.g_dict['ZH_ID'] + cmd_list[i] + 10*' ' + symbol + '\n'
            cmd_str += tmp
    elif cmd_type == 2 or cmd_type == 3:
        for i in range(len(cmd_list)):
            tmp = symbol + 'REQ' + str(i).rjust(3, '0') + ':' + cmd_list[i] + 10*' ' + symbol + '\n'
            cmd_str += tmp
    else:
        pass
    return cmd_str


def return_ecu_write_data(ecu_data, cmd_type, path_type, v108):
    """返回要写入的版本信息字符串"""
    str1 = '版本信息:\n\n'
    symbol = '  $%  '
    ecu_cmd_list = ecu_data[0]
    ecu_sting = ecu_data[1]
    cmd_list = []
    for cmd in ecu_cmd_list:
        tmp = bs.get_roewe_command(cmd, cmd_type, gl.g_dict['ZH_ID'], gl.g_dict['LV_ID'], path_type, v108)
        cmd_list.append(tmp)
    str2 = return_write_cmd_sting(cmd_list, symbol, cmd_type)
    ecu_str = str1 + str2 + '\n' + ecu_sting + '\n' + ';' + 150 * '*' + '\n\n'
    return ecu_str


def return_ds_write_data(ds_data, cmd_type, path_type, v108):
    """返回要写入的数据流字符串"""
    str1 = '数据流:\n\n'
    symbol = '  $  '
    symbol_1 = '  $IN_-1  '
    ds_cmd_list = ds_data[0]
    ds_sting = ds_data[1]
    key_cmd_s = ds_data[2]
    key_cmd_r = ds_data[3]
    key_case = ds_data[4]
    # 加密
    str3 = ''
    str4 = ''
    if key_cmd_s:
        if key_cmd_s[0]:
            if len(key_case) > 1:
                tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                    'system_id'] + '-->' + '有多个加密case ' + repr(key_case)
                bs.debug(pa.debug, tip)
            key_list = []
            for i in range(len(key_cmd_s)):
                key_s = bs.get_roewe_command(key_cmd_s[i], cmd_type, gl.g_dict['ZH_ID'], gl.g_dict['LV_ID'], path_type, v108)
                key_list.append(key_s)
                key_cmd_r[i] = key_cmd_r[i].ljust((int(key_cmd_r[i][0:2], 16) + 1) * 2, '0')
                key_r = bs.get_roewe_command(key_cmd_r[i], cmd_type, gl.g_dict['ZH_ID'], gl.g_dict['LV_ID'], path_type, v108)
                key_list.append(key_r)
            key_str_s = return_write_cmd_sting(key_list, symbol_1, cmd_type)
            str3 = '\t\t加密命令:\n' + key_str_s + '\n\t\t\t\t加密case:' + repr(key_case) + '\n\n'
            if int(key_cmd_r[0][0:2], 16) == 6:
                change = '4'
            elif int(key_cmd_r[0][0:2], 16) == 4:
                change = '2'
            else:
                change = ''
                tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                    'system_id'] + '-->' + '数据流加密帧长不对，请关注： 帧长  ' + repr(int(key_cmd_r[0][0:2], 16))
                bs.debug(pa.debug, tip)
            if cmd_type == 1:
                str4 = '<DS>\n' \
                       '\t<DS_IN num="-1">\n' \
                       '\t\t<call_protocol label="security_access_new" function="security_access_new">\n' \
                       '\t\t<!--安全算法种cass-->\n' \
                       '\t\t<param type="string" value="' + repr(key_case[0]) + '"/>\n' + \
                       '\t\t<!--读命令,写命令-->\n' \
                       '\t\t<param type="command" value="DS_IN_CMD_ALL_000,DS_IN_CMD_ALL_001"/>\n' \
                       '\t\t<!--读命令偏移,读字节偏移,读取字节个数,写命令偏移,写字节偏移+3，修改字节个数-->\n' \
                       '\t\t<param type="string" value="0,2,' + change + ',1,5,' + change + '"/>\n' \
                       '\t\t</call_protocol>\n' \
                       '\t</DS_IN>\n' \
                       '</DS>\n\n'
            elif cmd_type == 2 or cmd_type == 3:
                str4 = '<DS>\n' \
                       '\t<DS_IN num="-1">\n' \
                       '\t\t<call_protocol label="security_access_new" function="security_access_new">\n' \
                       '\t\t<!--安全算法种cass-->\n' \
                       '\t\t<param type="string" value="' + repr(key_case[0]) + '"/>\n' + \
                       '\t\t<!--读命令,写命令-->\n' \
                       '\t\t<param type="command" value="DS_IN_CMD_ALL_000,DS_IN_CMD_ALL_001"/>\n' \
                       '\t\t<!--读命令偏移,读字节偏移,读取字节个数,写命令偏移,写字节偏移+3，修改字节个数-->\n' \
                       '\t\t<param type="string" value="0,2,' + change + ',1,6,' + change + '"/>\n' \
                       '\t\t</call_protocol>\n' \
                       '\t</DS_IN>\n' \
                       '</DS>\n\n'
            else:
                tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                    'system_id'] + '-->' + '加密xml未写。。。 '
                bs.debug(pa.debug, tip)
    # 数据流
    cmd_list = []
    for cmd in ds_cmd_list:
        tmp = bs.get_roewe_command(cmd, cmd_type, gl.g_dict['ZH_ID'], gl.g_dict['LV_ID'], path_type, v108)
        cmd_list.append(tmp)
    str2 = return_write_cmd_sting(cmd_list, symbol, cmd_type)
    ds_str = str1 + str3 + str4 + str2 + '\n' + ds_sting + '\n' + ';' + 150 * '*' + '\n\n'
    return ds_str


def return_freeze_write_data(freeze_data, cmd_type, path_type, dtc_case_list, dct_cmd_list, dtc_link):
    """返回要写入的冻结帧字符串"""
    str1 = '读取冻结帧:\n\n'
    symbol_0 = '  $+  '
    symbol_1 = '  $+#  '
    freeze_cmd_list = freeze_data[0]
    name_list = freeze_data[1]
    unit_list = freeze_data[2]
    freeze_formula_list = freeze_data[3]
    freeze_off_list = freeze_data[4]

    # 命令处理
    cmd_list = []
    f_cmd_list = []
    for cmd in dct_cmd_list:
        tmp = bs.get_roewe_command(cmd, cmd_type, gl.g_dict['ZH_ID'], gl.g_dict['LV_ID'], path_type)
        cmd_list.append(tmp)
    for freeze_cmd in freeze_cmd_list:
        tmp = bs.get_roewe_command(freeze_cmd, cmd_type, gl.g_dict['ZH_ID'], gl.g_dict['LV_ID'], path_type)
        f_cmd_list.append(tmp)
    dtc_str_cmd = return_write_cmd_sting(cmd_list, symbol_1, cmd_type)
    freeze_str_cmd = return_write_cmd_sting(f_cmd_list, symbol_0, cmd_type)

    # 冻结帧数据流处理
    cmd_ans_str_list = ['000' for i in range(len(name_list))]
    freeze_str = bs.write_ds_str(symbol_0, name_list, unit_list, cmd_ans_str_list, freeze_off_list, freeze_formula_list)

    freeze_tip = return_freeze_dtc_case_str(dtc_case_list[0], dtc_link, path_type, freeze_cmd_list[0])
    out_str = str1 + dtc_str_cmd + '\n' + freeze_tip + freeze_str_cmd + '\n\n' + freeze_str + '\n' +\
              ';' + 150 * '*' + '\n\n'
    return out_str


def return_dtc_write_data(dtc_data, cmd_type, path_type, v108):
    """返回要写入的读码/清码字符串"""
    str1 = '读取故障码:\n\n'
    str2 = '清除故障码:\n\n'
    symbol_0 = '  $#  '
    symbol_1 = '  $$  '
    symbol_2 = '  $#IN  '
    dtc_cases = dtc_data[0]
    dtc_cmd_list = dtc_data[1]
    cre_dtc_list = dtc_data[2]
    key_cmd_s = dtc_data[3]
    key_cmd_r = dtc_data[4]
    key_case = dtc_data[5]
    dtc_link = dtc_data[6]
    # 加密
    key_cmd_str = ''
    head_xml = '<RDTC>\n'
    end_xml = '</RDTC>\n\n'
    pass_xml = ''
    if key_cmd_s:
        if key_cmd_s[0]:
            if len(key_case) > 1:
                tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                    'system_id'] + '-->' + '有多个加密case ' + repr(key_case)
                bs.debug(pa.debug, tip)
            key_list = []
            for i in range(len(key_cmd_s)):
                key_s = bs.get_roewe_command(key_cmd_s[i], cmd_type, gl.g_dict['ZH_ID'], gl.g_dict['LV_ID'], path_type, v108)
                key_list.append(key_s)
                key_cmd_r[i] = key_cmd_r[i].ljust((int(key_cmd_r[i][0:2], 16) + 1) * 2, '0')
                key_r = bs.get_roewe_command(key_cmd_r[i], cmd_type, gl.g_dict['ZH_ID'], gl.g_dict['LV_ID'], path_type, v108)
                key_list.append(key_r)
            key_str_s = return_write_cmd_sting(key_list, symbol_2, cmd_type)
            key_cmd_str = '\t\t加密命令:\n' + key_str_s + '\n\t\t\t\t加密case:' + repr(key_case) + '\n\n'
            if int(key_cmd_r[0][0:2], 16) == 6:
                change = '4'
            elif int(key_cmd_r[0][0:2], 16) == 4:
                change = '2'
            else:
                change = ''
                tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                    'system_id'] + '-->' + '读码加密帧长不对，请关注： 帧长  ' + repr(int(key_cmd_r[0][0:2], 16))
                bs.debug(pa.debug, tip)
            if cmd_type == 1:
                pass_xml = '\t<RDTC_IN num="0">\n' \
                           '\t\t<call_protocol label="security_access_new" function="security_access_new">\n' \
                           '\t\t<!--安全算法种cass-->\n' \
                           '\t\t<param type="string" value="' + repr(key_case[0]) + '"/>\n' + \
                           '\t\t<!--读命令,写命令-->\n' \
                           '\t\t<param type="command" value="RDTC_IN_CMD_00_000,RDTC_IN_CMD_00_001"/>\n' \
                           '\t\t<!--读命令偏移,读字节偏移,读取字节个数,写命令偏移,写字节偏移+3，修改字节个数-->\n' \
                           '\t\t<param type="string" value="0,2,' + change + ',1,5,' + change + '"/>\n' \
                           '\t\t</call_protocol>\n' \
                           '\t</RDTC_IN>\n'
            elif (cmd_type == 2) or (cmd_type == 3):
                pass_xml = '\t<RDTC_IN num="0">\n' \
                           '\t\t<call_protocol label="security_access_new" function="security_access_new">\n' \
                           '\t\t<!--安全算法种cass-->\n' \
                           '\t\t<param type="string" value="' + repr(key_case[0]) + '"/>\n' + \
                           '\t\t<!--读命令,写命令-->\n' \
                           '\t\t<param type="command" value="RDTC_IN_CMD_00_000,RDTC_IN_CMD_00_001"/>\n' \
                           '\t\t<!--读命令偏移,读字节偏移,读取字节个数,写命令偏移,写字节偏移+3，修改字节个数-->\n' \
                           '\t\t<param type="string" value="0,2,' + change + ',1,6,' + change + '"/>\n' \
                           '\t\t</call_protocol>\n' \
                           '\t</RDTC_IN>\n'
            else:
                tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                    'system_id'] + '-->' + '加密xml未写。。。'
                bs.debug(pa.debug, tip)
    # 读码
    r_cmd_list = []
    for cmd in dtc_cmd_list:
        tmp = bs.get_roewe_command(cmd, cmd_type, gl.g_dict['ZH_ID'], gl.g_dict['LV_ID'], path_type, v108)
        r_cmd_list.append(tmp)
    dtc_r_cmd_str = return_write_cmd_sting(r_cmd_list, symbol_0, cmd_type)
    # 故障码表示显示
    dtc_case_str = return_dtc_case_str(dtc_cases[0], dtc_link, cmd_type)
    # 清码
    c_cmd_list = []
    for cmd in cre_dtc_list:
        tmp = bs.get_roewe_command(cmd, cmd_type, gl.g_dict['ZH_ID'], gl.g_dict['LV_ID'], path_type, v108)
        c_cmd_list.append(tmp)
    dtc_c_cmd_str = return_write_cmd_sting(c_cmd_list, symbol_1, cmd_type)
    # 写入有XML信息
    str4 = ''
    dtc_xml_type = gl.g_dict['dtc_xml_str']
    if pass_xml or dtc_xml_type:
        str4 = head_xml + pass_xml + dtc_xml_type + end_xml
    dtc_str = str1 + key_cmd_str + str4 + dtc_r_cmd_str + '\n' + dtc_case_str + ';' + 150 * '*' + '\n\n' + \
              str2 + dtc_c_cmd_str + '\n' + ';' + 150 * '*' + '\n\n'
    return dtc_str


def return_dtc_case_str(dtc_cases, dtc_link, cmd_type):
    """故障码表示显示"""
    dtc_num = ''
    byte_start = ''
    byte_num = ''
    show_num = ''
    dtc_tip = ''
    sys_id = int(gl.g_dict['system_id'], 16)
    if dtc_cases == 13:
        dtc_num = '帧长'
        byte_start = 'BYTE03'
        byte_num = '4'
        show_num = '3'
        gl.g_dict['dtc_xml_str'] = '\t<FUNCTION type="0" num="0">\n' \
                                   '\t\t<param type="system_path" value=""/>\n' \
                                   '\t</FUNCTION>\n'
    elif dtc_cases == 14:  # 多帧读码，第一帧不成功还是会发下一帧命令
        dtc_num = '每帧帧长'
        byte_start = 'BYTE02'
        byte_num = '3'
        show_num = '2'
        gl.g_dict['dtc_xml_str'] = '\t<FUNCTION type="0" num="0">\n' \
                                   '\t\t<param type="string" value="14"/>\n' \
                                   '\t</FUNCTION>\n'
    elif dtc_cases == 18:
        dtc_num = '帧长'
        byte_start = 'BYTE03'
        byte_num = '4'
        show_num = '2'
        gl.g_dict['dtc_xml_str'] = '\t<FUNCTION type="0" num="0">\n' \
                                   '\t\t<param type="string" value="18"/>\n' \
                                   '\t</FUNCTION>\n'
    elif dtc_cases == 21:  # 宝马类型多帧读码，第一帧不成功还是会发下一帧命令
        dtc_num = '每帧的BYTE01'
        byte_start = 'BYTE02'
        byte_num = '1'
        show_num = '1'
        gl.g_dict['dtc_xml_str'] = '\t<FUNCTION type="0" num="0">\n' \
                                   '\t\t<param type="string" value="21"/>\n' \
                                   '\t</FUNCTION>\n'
    elif dtc_cases == 1:
        byte_num = '3'
        show_num = '2'
        if (dtc_link & 0x900000) == 0x900000 or (dtc_link & 0xA00000) == 0xA00000:
            dtc_num = '帧长'
            if sys_id == 0x4179 or sys_id == 0x4159 or sys_id == 0x40B1 or sys_id == 0x40BF:
                byte_start = 'BYTE02'
            else:
                byte_start = 'BYTE03'
            gl.g_dict['dtc_xml_str'] = '\t<FUNCTION type="0" num="0">\n' \
                                       '\t\t<param type="string" value="14"/>\n' \
                                       '\t</FUNCTION>\n'
        elif dtc_link == 0x100000:
            dtc_num = 'BYTE01'
            byte_start = 'BYTE02'
            gl.g_dict['dtc_xml_str'] = '\t<FUNCTION type="0" num="0">\n' \
                                       '\t\t<param type="string" value="21"/>\n' \
                                       '\t</FUNCTION>\n'
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + '关注读码方式，获取到的BYTE02 & 0x1f ， 故障码链接:' + repr(dtc_link)
            bs.debug(pa.debug, tip)
        else:
            dtc_num = 'BYTE01'
            byte_start = 'BYTE02'
            gl.g_dict['dtc_xml_str'] = '\t<FUNCTION type="0" num="0">\n' \
                                       '\t\t<param type="string" value="21"/>\n' \
                                       '\t</FUNCTION>\n'
    elif dtc_cases == 2:
        dtc_num = '帧长'
        byte_start = 'BYTE03'
        if (dtc_link & 0x900000) == 0x900000 or (dtc_link & 0xA00000) == 0xA00000:
            byte_num = '4'
            show_num = '3'
            gl.g_dict['dtc_xml_str'] = '\t<FUNCTION type="0" num="0">\n' \
                                       '\t\t<param type="string" value="2"/>\n' \
                                       '\t\t<param type="system_path" value=""/>\n' \
                                       '\t</FUNCTION>\n'
        else:
            byte_num = '3'
            show_num = '2'
    elif dtc_cases == 20:
        if (dtc_link & 0x900000) == 0x900000 or (dtc_link & 0xA00000) == 0xA00000:
            dtc_num = '帧长'
            byte_start = 'BYTE02'
            byte_num = '3'
            show_num = '2'
        else:
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + '请关注读码方式 case ' + repr(dtc_cases) + ' return_dtc_case_str.py'
            bs.debug(pa.debug, tip)
    elif dtc_cases == 22:
        dtc_num = '帧长'
        byte_start = 'BYTE02'
        byte_num = '3'
        show_num = '2'
        dtc_tip = '\t\t\t提示:获取到的故障码需与上0x0fff，例如:0x9414 & 0x0fff\n\n'
        gl.g_dict['dtc_xml_str'] = '\t<FUNCTION type="0" num="0">\n' \
                                   '\t\t<param type="string" value="22"/>\n' \
                                   '\t</FUNCTION>\n'
    elif dtc_cases == 19:
        dtc_num = '帧长'
        byte_start = 'BYTE01'
        byte_num = '2'
        show_num = '1'
        dtc_tip = '\t\t\t提示:BYTE00为 A0 时才会显示故障码。\n\n'
        gl.g_dict['dtc_xml_str'] = '\t<FUNCTION type="0" num="0">\n' \
                                   '\t\t<param type="string" value="19"/>\n' \
                                   '\t</FUNCTION>\n'
    elif dtc_cases == 15:
        if (dtc_link & 0x900000) == 0x900000 or (dtc_link & 0xA00000) == 0xA00000:
            dtc_num = '帧长'
            byte_start = 'BYTE02'
            byte_num = '4'
            show_num = '3'
            dtc_tip = '\t\t\t提示:获取到的故障码与上0xffff00也能查到码，例如:0x503513 & 0xffff00 也能查到0x503513的定义\n\n'
            gl.g_dict['dtc_xml_str'] = '\t<FUNCTION type="0" num="0">\n' \
                                       '\t\t<param type="system_path" value=""/>\n' \
                                       '\t</FUNCTION>\n'
        else:
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + '请关注读码方式 case ' + repr(dtc_cases) + ' return_dtc_case_str.py'
            bs.debug(pa.debug, tip)
    elif dtc_cases == 3:
        dtc_num = '帧长'
        if (cmd_type == 2 or cmd_type == 3) and (dtc_link & 0x900000) == 0x900000 or (dtc_link & 0xA00000) == 0xA00000:
            byte_start = 'BYTE01'
            byte_num = '1'
            show_num = '1'
            gl.g_dict['dtc_xml_str'] = '\t<FUNCTION type="0" num="0">\n' \
                                       '\t\t<param type="string" value="3"/>\n' \
                                       '\t</FUNCTION>\n'
        elif (cmd_type == 1 or cmd_type == 5) and (dtc_link & 0x900000) == 0x900000 or (
                dtc_link & 0xA00000) == 0xA00000:
            byte_start = 'BYTE03'
            byte_num = '1'
            show_num = '1'
            gl.g_dict['dtc_xml_str'] = '\t<FUNCTION type="0" num="0">\n' \
                                       '\t\t<param type="string" value="3"/>\n' \
                                       '\t</FUNCTION>\n'
        else:
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + '请关注读码方式 case ' + repr(dtc_cases) + ' return_dtc_case_str.py'
            bs.debug(pa.debug, tip)
    elif dtc_cases == 8:
        dtc_num = '帧长'
        byte_start = 'BYTE01'
        byte_num = '2'
        show_num = '1'
        dtc_tip = '\t\t\t提示:BYTE00为 A0 时才会显示故障码。\n\n'
        gl.g_dict['dtc_xml_str'] = '\t<FUNCTION type="0" num="0">\n' \
                                   '\t\t<param type="string" value="3"/>\n' \
                                   '\t</FUNCTION>\n'
    elif dtc_cases == 6:
        dtc_num = '每帧帧长'
        if (dtc_link & 0x900000) == 0x900000 or (dtc_link & 0xA00000) == 0xA00000:
            byte_start = 'BYTE01'
            byte_num = '3'
            show_num = '1'
            dtc_tip = '\t\t\t提示:BYTE00为 A0 时才会显示故障码。\n\n'
            gl.g_dict['dtc_xml_str'] = '\t<FUNCTION type="0" num="0">\n' \
                                       '\t\t<param type="string" value="3"/>\n' \
                                       '\t</FUNCTION>\n'
        else:
            byte_start = 'BYTE01'
            byte_num = '3'
            show_num = '2'
            dtc_tip = '\t\t\t提示:BYTE00为 A0 时才会显示故障码。\n\n'
            gl.g_dict['dtc_xml_str'] = '\t<FUNCTION type="0" num="0">\n' \
                                       '\t\t<param type="string" value="3"/>\n' \
                                       '\t</FUNCTION>\n'
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + '请关注读码方式 case ' + repr(dtc_cases) + ' return_dtc_case_str.py'
            bs.debug(pa.debug, tip)
    elif dtc_cases == 5:
        dtc_num = '帧长'
        if (dtc_link & 0x900000) == 0x900000 or (dtc_link & 0xA00000) == 0xA00000:
            byte_start = 'BYTE02'
            byte_num = '2'
            show_num = '1'
            dtc_tip = '\t\t\t提示:BYTE00为 A0 时才会显示故障码。\n\n'
            gl.g_dict['dtc_xml_str'] = '\t<FUNCTION type="0" num="0">\n' \
                                       '\t\t<param type="string" value="5"/>\n' \
                                       '\t</FUNCTION>\n'
        else:
            byte_start = 'BYTE02'
            byte_num = '2'
            show_num = '2'
            dtc_tip = '\t\t\t提示:BYTE00为 A0 时才会显示故障码。\n\n'
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + '请关注读码方式 case ' + repr(dtc_cases) + ' return_dtc_case_str.py'
            bs.debug(pa.debug, tip)
    elif dtc_cases == 4:
        dtc_num = '帧长'
        if (dtc_link & 0x900000) == 0x900000 or (dtc_link & 0xA00000) == 0xA00000:
            byte_start = 'BYTE02'
            byte_num = '3'
            show_num = '1'
            dtc_tip = '\t\t\t提示:BYTE00为 A0 时才会显示故障码。\n\n'
            gl.g_dict['dtc_xml_str'] = '\t<FUNCTION type="0" num="0">\n' \
                                       '\t\t<param type="string" value="4"/>\n' \
                                       '\t</FUNCTION>\n'
        else:
            byte_start = 'BYTE02'
            byte_num = '3'
            show_num = '2'
            dtc_tip = '\t\t\t提示:BYTE00为 A0 时才会显示故障码。\n\n'
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + '请关注读码方式 case ' + repr(dtc_cases) + ' return_dtc_case_str.py'
            bs.debug(pa.debug, tip)
    else:
        tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
            'system_id'] + '-->' + '未编写该读码方式 case ' + repr(dtc_cases) + ' return_dtc_case_str.py'
        bs.debug(pa.debug, tip)

    out_str = '\t\t\t故障码表示:' + dtc_num + '决定故障个数,' + '$#' + byte_start + '$#开始表示故障码,每' + '$#' + \
              byte_num + '$#个字节表示一个故障码,前$#' + show_num + '$#个字节表示码号.\n\n' + '\t\t\t码库: $*$*DTC/' +\
              gl.g_dict['system_id'] + '\n\n' + '\t\t\t读码方式:case ' + repr(dtc_cases) + '\n\n' + dtc_tip
    return out_str


def return_freeze_dtc_case_str(dtc_cases, dtc_link, cmd_type, freeze_cmd):
    out_str = ''
    byte_start = ''
    byte_num = ''
    show_num = ''
    sys_id = int(gl.g_dict['system_id'], 16)
    if dtc_cases == 13:
        byte_start = 'BYTE03'
        byte_num = '4'
        show_num = '3'
    elif dtc_cases == 14:  # 多帧读码，第一帧不成功还是会发下一帧命令
        byte_start = 'BYTE02'
        byte_num = '3'
        show_num = '2'
    elif dtc_cases == 18:
        byte_start = 'BYTE03'
        byte_num = '4'
        show_num = '2'
    elif dtc_cases == 21:  # 宝马类型多帧读码，第一帧不成功还是会发下一帧命令
        byte_start = 'BYTE02'
        byte_num = '1'
        show_num = '1'
    elif dtc_cases == 1:
        byte_num = '3'
        show_num = '2'
        if (dtc_link & 0x900000) == 0x900000 or (dtc_link & 0xA00000) == 0xA00000:
            if sys_id == 0x4179 or sys_id == 0x4159 or sys_id == 0x40B1 or sys_id == 0x40BF:
                byte_start = 'BYTE02'
            else:
                byte_start = 'BYTE03'
        elif dtc_link == 0x100000:
            byte_start = 'BYTE02'
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + '关注读码方式，获取到的BYTE02 & 0x1f ， 故障码链接:' + hex(dtc_link)
            bs.debug(pa.debug, tip)
        else:
            byte_start = 'BYTE02'
    elif dtc_cases == 2:
        byte_start = 'BYTE02'
        if (dtc_link & 0x900000) == 0x900000 or (dtc_link & 0xA00000) == 0xA00000:
            byte_num = '4'
            show_num = '3'
        else:
            byte_num = '3'
            show_num = '2'
    elif dtc_cases == 20:
        if (dtc_link & 0x900000) == 0x900000 or (dtc_link & 0xA00000) == 0xA00000:
            byte_start = 'BYTE02'
            byte_num = '3'
            show_num = '2'
        else:
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + '请关注冻结帧读码方式 case ' + repr(dtc_cases) + ' return_freeze_dtc_case_str.py'
            bs.debug(pa.debug, tip)
    elif dtc_cases == 22:
        byte_start = 'BYTE02'
        byte_num = '3'
        show_num = '2'
    elif dtc_cases == 19:
        byte_start = 'BYTE01'
        byte_num = '2'
        show_num = '1'
    elif dtc_cases == 15:
        if (dtc_link & 0x900000) == 0x900000 or (dtc_link & 0xA00000) == 0xA00000:
            byte_start = 'BYTE02'
            byte_num = '4'
            show_num = '3'
        else:
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + '请关注冻结帧读码方式 case ' + repr(dtc_cases) + ' return_freeze_dtc_case_str.py'
            bs.debug(pa.debug, tip)
    elif dtc_cases == 3:
        if (cmd_type == 2 or cmd_type == 3) and (dtc_link & 0x900000) == 0x900000 or (dtc_link & 0xA00000) == 0xA00000:
            byte_start = 'BYTE01'
            byte_num = '1'
            show_num = '1'
        elif (cmd_type == 1 or cmd_type == 5) and (dtc_link & 0x900000) == 0x900000 or (dtc_link & 0xA00000) == 0xA00000:
            byte_start = 'BYTE03'
            byte_num = '1'
            show_num = '1'
        else:
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + '请关注冻结帧读码方式 case ' + repr(dtc_cases) + ' return_freeze_dtc_case_str.py'
            bs.debug(pa.debug, tip)
    elif dtc_cases == 8:
        byte_start = 'BYTE01'
        byte_num = '1'
        show_num = '1'
    elif dtc_cases == 6:
        if (dtc_link & 0x900000) == 0x900000 or (dtc_link & 0xA00000) == 0xA00000:
            byte_start = 'BYTE01'
            byte_num = '3'
            show_num = '1'
        else:
            byte_start = 'BYTE01'
            byte_num = '3'
            show_num = '2'
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + '未编写该冻结帧读码方式 case ' + repr(dtc_cases) + ',return_freeze_dtc_case_str.py'
            bs.debug(pa.debug, tip)
    elif dtc_cases == 5:
        if (dtc_link & 0x900000) == 0x900000 or (dtc_link & 0xA00000) == 0xA00000:
            byte_start = 'BYTE01'
            byte_num = '2'
            show_num = '1'
        else:
            byte_start = 'BYTE01'
            byte_num = '2'
            show_num = '2'
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + '未编写该冻结帧读码方式 case ' + repr(dtc_cases) + ',return_freeze_dtc_case_str.py'
            bs.debug(pa.debug, tip)
    elif dtc_cases == 4:
        if (dtc_link & 0x900000) == 0x900000 or (dtc_link & 0xA00000) == 0xA00000:
            byte_start = 'BYTE02'
            byte_num = '3'
            show_num = '1'
        else:
            byte_start = 'BYTE02'
            byte_num = '3'
            show_num = '2'
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + '未编写该冻结帧读码方式 case ' + repr(dtc_cases) + ',return_freeze_dtc_case_str.py'
            bs.debug(pa.debug, tip)
    else:
        tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
            'system_id'] + '-->' + '未编写该冻结帧读码方式 case ' + repr(dtc_cases) + ',return_freeze_dtc_case_str.py'
        bs.debug(pa.debug, tip)

    if cmd_type == 0 or cmd_type == 2:  # 80/C0
        send_start = 'BYTE05'
    elif cmd_type == 1 or cmd_type == 3:  # 非80/非C0
        send_start = 'BYTE04'
    elif cmd_type == 4:  # +2
        send_start = 'BYTE02'
    else:  # CAN
        send_start = 'BYTE05'
    if freeze_cmd == '021200':
        out_str = '\t\t\t$+#' + byte_start + '$+#开始,每$+#' + byte_num + '$+#个字节为一个故障码,显示前$+#' + show_num +\
                  '$+#个字节，发送命令$+#' + send_start + '$+#开始表示故障码，故障码在发送命令中占$+#' + show_num + \
                  '$+#个字节，$+#BYTE03$+#表示冻结帧DS起始偏移.' + '\n\n' + '\t\t\t提示:' \
                                                               '该冻结帧命令为固定显示，不替换故障码。\n\n'
    else:
        out_str = '\t\t\t$+#' + byte_start + '$+#开始,每$+#' + byte_num + '$+#个字节为一个故障码,显示前$+#' + show_num +\
                  '$+#个字节，发送命令$+#' + send_start + '$+#开始表示故障码，故障码在发送命令中占$+#' + show_num + \
                  '$+#个字节，$+#BYTE03$+#表示冻结帧DS起始偏移.' + '\n\n'
    return out_str



