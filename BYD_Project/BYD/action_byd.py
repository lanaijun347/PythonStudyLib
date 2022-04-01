import basics as Bs
import file_path as Pa
import gl
import os


def SystemDispose(file_list, fp, menu_choose):
    DiagActFunc(file_list, fp)
    pass


def DiagActFunc(file_list, fp):
    byte_list = GetFunData(file_list, fp)
    v3 = 0
    v4 = Bs.get_token(byte_list, v3 + 8096, 2)
    if v4 == 1:
        tip = '警告：动作测试功能未编写 tip0 -- ' + gl.system_id
        Bs.debug(Pa.Debug, tip)
        # v7 = ActiveTestShow(file_list, byte_list, act_name_id);
    v6 = 0
    v3_3376 = Bs.get_token(byte_list, v3 + 3376, 1)
    while v6 < v3_3376:  # 点击动作测试发激活
        tip = '警告：动作测试功能未编写 tip1 -- ' + gl.system_id
        Bs.debug(Pa.Debug, tip)
        cmd_id = Bs.token_4(byte_list, (v6 * 4) + v3 + 3380)
        v6 += 1
    if v3_3376:  # 点击动作测试是否发加密
        tip = '警告：动作测试功能未编写 tip2 -- ' + gl.system_id
        Bs.debug(Pa.Debug, tip)
        i = 0
        while i < v3_3376:
            v12 = Bs.get_token(byte_list, (i * 2) + v3 + 3580, 2)
            if v12 == 1:
                tip = '警告：动作测试功能未编写 tip12 -- ' + gl.system_id
                Bs.debug(Pa.Debug, tip)
            elif v12 == 0xC0:
                tip = '警告：动作测试功能未编写 tip13 -- ' + gl.system_id
                Bs.debug(Pa.Debug, tip)
            elif v12 != 4227 and v12 != 4099:
                # SecurityAccess()
                tip = '警告：动作测试功能未编写 tip14 加密 -- ' + gl.system_id
                Bs.debug(Pa.Debug, tip)
            else:
                pass
            i += 1

    act_id_list = []
    while True:
        v18 = fp
        a = v18 - 0x1615
        i = 0
        v20 = 0
        i = 0
        v3_3984 = Bs.get_token(byte_list, v3 + 3984, 1)
        while v20 < v3_3984:
            i += 4
            name_id = Bs.token_4(byte_list, i + 3984)
            act_id_list.append(name_id)
            v20 += 1
        act_data_list = ActiveTestShowNextMenu(file_list, byte_list, fp, act_id_list)
        out_act_data(act_data_list)
        break


def GetFunData(file_list, fp):
    byte_list = bytearray(40000)
    v1 = 0
    v3 = fp
    if v3:
        Bs.MoveLibData(file_list, v3 + 11, v1 + 8096, 2, byte_list)
        Bs.MoveLibData(file_list, v3 + 17, v1 + 3376, 1, byte_list)
        v4 = v3 + 18
        i = 0
        v1_3376 = Bs.get_token(byte_list, v1 + 3376, 1)
        while i < v1_3376:
            Bs.MoveLibData(file_list, v4, v1 + 2 * (i + 1788) + 4, 2, byte_list)
            Bs.MoveLibData(file_list, v4 + 2, v1 + 4 * (i + 844) + 4, 4, byte_list)
            v4 += 6
            i += 1
        Bs.MoveLibData(file_list, v4, v1 + 3680, 1, byte_list)
        v6 = v4 + 1
        j = 0
        v1_3680 = Bs.get_token(byte_list, v1 + 3680, 1)
        while j < v1_3680:
            Bs.MoveLibData(file_list, v6, v1 + 2 * (j + 1940) + 4, 2, byte_list)
            Bs.MoveLibData(file_list, v6 + 2, v1 + 4 * (j + 920) + 4, 4, byte_list)
            v6 += 6
            j += 1
        v8 = v6 + 1
        Bs.MoveLibData(file_list, v6, v1 + 3984, 1, byte_list)
        k = 0
        v1_3984 = Bs.get_token(byte_list, v1 + 3984, 1)
        while k < v1_3984:
            Bs.MoveLibData(file_list, v8, v1 + 4 * (k + 996) + 4, 4, byte_list)
            Bs.MoveLibData(file_list, v8 + 4, v1 + 4 * (k + 1252) + 4, 4, byte_list)
            v8 += 8
            k += 1
    return byte_list


def ActiveTestShowNextMenu(file_list, byte_list, fp, act_id_list):
    text_dict = Bs.file_to_dict(Pa.TEXT)
    count = 0
    v3 = 0
    act_list = []
    while count < len(act_id_list):
        a = count + 1252
        b = Bs.get_token(byte_list, v3 + 4 * a + 4, 4)
        Bs.int_to_bytearray(count, 1, v3 + 8088, byte_list)
        Bs.int_to_bytearray(b, 4, v3 + 8092, byte_list)
        byte_list = GetACTNextMenuData(file_list, byte_list)
        if not Bs.get_token(byte_list, v3 + 6036, 1):
            pass
        else:
            tip = '动作测试 有多层菜单, 路径：' + gl.system_id
            Bs.debug(Pa.Debug, tip)
        dict_data = ActiveTestShow(file_list, byte_list, act_id_list[count], text_dict)
        act_list.append(dict_data)
        count += 1
    return act_list


def ActiveTestShow(file_list, byte_list, act_name_id, text_dict):
    dict_data = GetACTShowData(file_list, byte_list, act_name_id, text_dict)
    return dict_data


def GetACTShowData(file_list, byte_list, act_name_id, text_dict):
    out_dict = {}
    act_name_str = Bs.get_id_data_from_dict(text_dict, act_name_id)
    v1 = 0
    v1_8096 = Bs.get_token(byte_list, v1 + 8096, 1)
    if v1_8096 == 1:
        v3 = Bs.get_token(byte_list, v1 + 240, 4) + 17
        tip = '警告：动作测试功能未编写 tip3 -- ' + gl.system_id + ' <name> ' + act_name_str
        Bs.debug(Pa.Debug, tip)
    else:
        v3 = Bs.get_token(byte_list, v1 + 8092, 4)
    v5 = 0
    box_tip_id = ''
    tip_id = ''
    section_min = 0
    section_max = 0
    key_one = 0
    display_msg_id_list = []
    input_cmd_id_list = []
    key_data_list = []
    if v3:
        tmp_0 = Bs.readlist_num(file_list, v3, 1)
        box_tip_id = Bs.readlist_reverse(file_list, v3 + 1, 4)
        v5 = Bs.readlist_num(file_list, v3 + 5, 2)
        v4 = v3 + 7
        if v5 == 2:  # 仅有输入、退出
            # tip = '警告：动作测试功能未编写 tip4 -- ' + gl.system_id + ' <name> ' + act_name_str
            # Bs.debug(Pa.Debug, tip)
            tip_id = Bs.readlist_reverse(file_list, v3 + 7, 4)
            section_min = Bs.readlist_num(file_list, v3 + 11, 4)
            section_min = Bs.get_s32(section_min)
            section_max = Bs.readlist_num(file_list, v3 + 15, 4)
            section_max = Bs.get_s32(section_max)
            v4 = v3 + 19
        elif v5 == 3:
            tip = '警告：动作测试功能未编写 tip5 -- ' + gl.system_id + ' <name> ' + act_name_str
            Bs.debug(Pa.Debug, tip)
            tip_id = Bs.readlist_reverse(file_list, v3 + 7, 4)  # 输入提示
            section_min = Bs.readlist_num(file_list, v3 + 11, 4)  # 输入范围最小值
            section_min = Bs.get_s32(section_min)
            section_max = Bs.readlist_num(file_list, v3 + 15, 4)  # 输入范围最大值
            section_max = Bs.get_s32(section_max)
            key_one = Bs.readlist_num(file_list, v3 + 19, 4)  # 按键按一次累计加/减调的值
            v4 = v3 + 23
        elif (v5 - 5) & 0xFFFF > 3:
            if v5 == 9:
                tip = '警告：动作测试功能未编写 tip6 -- ' + gl.system_id + ' <name> ' + act_name_str
                Bs.debug(Pa.Debug, tip)
                tip_id = Bs.readlist_reverse(file_list, v3 + 7, 4)  # 输入提示
                section_min = Bs.readlist_num(file_list, v3 + 11, 4)  # 输入范围最小值
                section_min = Bs.get_s32(section_min)
                section_max = Bs.readlist_num(file_list, v3 + 15, 4)  # 输入范围最大值
                section_max = Bs.get_s32(section_max)
                key_one = Bs.readlist_num(file_list, v3 + 19, 1)  # 按键按一次累计加/减调的值
                tmp_3 = Bs.readlist_num(file_list, v3 + 20, 4)
                tmp_4 = Bs.readlist_num(file_list, v3 + 24, 4)
                v4 = v3 + 28
        else:
            # tip = '警告：动作测试功能未编写 tip7 -- ' + gl.system_id + ' <name> ' + act_name_str
            # Bs.debug(Pa.Debug, tip)
            tip_id = Bs.readlist_reverse(file_list, v3 + 7, 4)  # 输入提示
            section_min = Bs.readlist_num(file_list, v3 + 11, 4)  # 输入范围最小值
            section_min = Bs.get_s32(section_min)
            section_max = Bs.readlist_num(file_list, v3 + 15, 4)  # 输入范围最大值
            section_max = Bs.get_s32(section_max)
            key_one = Bs.readlist_num(file_list, v3 + 19, 1)  # 按键按一次累计加/减调的值
            v4 = v3 + 20
        v6 = v4 + 1
        tmp_5 = Bs.readlist_num(file_list, v4, 1)
        i = 0
        while i < tmp_5:
            tmp_6 = Bs.readlist_num(file_list, v6, 2)  # 等于2有加密
            if tmp_6 == 2:
                tip = '警告：动作测试功能未编写 加密 -- ' + gl.system_id + ' <name> ' + act_name_str
                Bs.debug(Pa.Debug, tip)
            input_cmd_id = Bs.readlist_reverse(file_list, v6 + 2, 4)  # 命令id
            if input_cmd_id not in input_cmd_id_list:
                input_cmd_id_list.append(input_cmd_id)
            v6 += 6
            i += 1
        tmp_7 = Bs.readlist_num(file_list, v6, 1)
        v8 = v6 + 1
        j = 0
        while j < tmp_7:
            # tip = '警告：动作测试功能未编写 tip8 -- ' + gl.system_id + ' <name> ' + act_name_str
            # Bs.debug(Pa.Debug, tip)
            display_msg_id = Bs.readlist_reverse(file_list, v8, 4)  # 输入提示
            if display_msg_id not in display_msg_id_list:
                display_msg_id_list.append(display_msg_id)
            tmp_9 = Bs.readlist_num(file_list, v8 + 4, 4)
            if tmp_9:
                tip = '警告：动作测试功能未编写 tip8_0 -- ' + gl.system_id + ' <name> ' + act_name_str
                Bs.debug(Pa.Debug, tip)
            tmp_10 = Bs.readlist_num(file_list, v8 + 8, 1)
            tmp_11 = Bs.readlist_num(file_list, v8 + 9, 2)
            tmp_12 = Bs.readlist_num(file_list, v8 + 11, 4)
            if tmp_10 or tmp_11 or tmp_12:
                tip = '警告：动作测试功能未编写 tip8_1 -- ' + gl.system_id + ' <name> ' + act_name_str
                Bs.debug(Pa.Debug, tip)
            v8 += 15
            j += 1
        if (v5 - 4098) & 0xFFFF <= 1:
            tip = '警告：动作测试功能未编写 tip9 -- ' + gl.system_id + ' <name> ' + act_name_str
            Bs.debug(Pa.Debug, tip)
            v10 = v8
            v8 += 4
            tmp_13 = Bs.readlist_reverse(file_list, v10, 4)
        v11 = Bs.readlist_num(file_list, v8, 1)
        v12 = v8 + 1
        k = 0
        while k < v11:
            dict_key = {}
            key_cmd_id_list = []
            key_name_id = Bs.readlist_reverse(file_list, v12, 4)  # 按钮名称id
            dict_key['key_name_id'] = key_name_id
            key_formula_id = Bs.readlist_reverse(file_list, v12 + 4, 4)  # 公式 id
            dict_key['key_formula_id'] = key_formula_id
            key_offset = Bs.readlist_num(file_list, v12 + 8, 1)  # 偏移
            dict_key['key_offset'] = key_offset
            key_cmd_num = Bs.readlist_num(file_list, v12 + 9, 1)  # 该按钮命令条数
            v14 = v12 + 10
            if (v5 - 4098) & 0xFFFF <= 1:
                tmp_18 = Bs.readlist_reverse(file_list, v14, 1)
                tmp_19 = Bs.readlist_reverse(file_list, v12 + 11, 4)
                v14 = v12 + 15
            v12 = v14
            l = 0
            while l < key_cmd_num:
                tmp_20 = Bs.readlist_num(file_list, v12, 2)
                if tmp_20:
                    tip = '警告：动作测试功能未编写 tip10<tmp20 看看有啥用> -- ' + gl.system_id + ' <name> ' + act_name_str
                    Bs.debug(Pa.Debug, tip)
                v15 = v12 + 2
                v12 += 6
                cmd_id = Bs.readlist_reverse(file_list, v15, 4)
                if cmd_id not in key_cmd_id_list:
                    key_cmd_id_list.append(cmd_id)
                l += 1
            dict_key['key_cmd_id_list'] = key_cmd_id_list
            key_data_list.append(dict_key)
            k += 1
    out_dict['act_name_str'] = act_name_str   # 动作测试类型
    out_dict['key_type'] = v5   # 动作测试类型
    out_dict['box_tip_id'] = box_tip_id  # 弹框提示ID
    out_dict['tip_id'] = tip_id  # 输入提示
    out_dict['section_min'] = section_min  # 按键最小值
    out_dict['section_max'] = section_max  # 按键最大值
    out_dict['key_one'] = key_one  # 按键按一次累计加/减调的值
    out_dict['display_msg_id_list'] = display_msg_id_list  # 界面内显示提示ID
    out_dict['input_cmd_id_list'] = input_cmd_id_list  # 进入命令ID
    out_dict['key_data_list'] = key_data_list  # 按键数据
    return out_dict


def GetACTShowData0(file_list, byte_list, act_name_id):
    v1 = 0
    v1_8096 = Bs.get_token(byte_list, v1 + 8096, 1)
    if v1_8096 == 1:
        v3 = Bs.get_token(byte_list, v1 + 240, 4) + 17
        tip = '警告：动作测试功能未编写 tip3 -- ' + gl.system_id + ' <name_id> ' + act_name_id
        Bs.debug(Pa.Debug, tip)
    else:
        v3 = Bs.get_token(byte_list, v1 + 8092, 4)
    if v3:
        Bs.MoveLibData(file_list, v3, v1 + 6036, 1, byte_list)
        Bs.MoveLibData(file_list, v3 + 1, v1 + 8100, 4, byte_list)
        Bs.MoveLibData(file_list, v3 + 5, v1 + 8104, 2, byte_list)
        v4 = v3 + 7
        v5 = Bs.get_token(byte_list, v1 + 8104, 1)
        if v5 == 2:
            Bs.MoveLibData(file_list, v3 + 7, v1 + 8108, 4, byte_list)
            Bs.MoveLibData(file_list, v3 + 11, v1 + 8112, 4, byte_list)
            Bs.MoveLibData(file_list, v3 + 15, v1 + 8116, 4, byte_list)
            v4 = v3 + 19
        elif v5 == 3:
            Bs.MoveLibData(file_list, v3 + 7, v1 + 8108, 4, byte_list)
            Bs.MoveLibData(file_list, v3 + 11, v1 + 8112, 4, byte_list)
            Bs.MoveLibData(file_list, v3 + 15, v1 + 8116, 4, byte_list)
            Bs.MoveLibData(file_list, v3 + 19, v1 + 8120, 4, byte_list)
            v4 = v3 + 23
        elif (v5 - 5 <= 2) and (v5 - 5 >= 0):
            if v5 == 9:
                Bs.MoveLibData(file_list, v3 + 7, v1 + 8108, 4, byte_list)
                Bs.MoveLibData(file_list, v3 + 11, v1 + 8112, 4, byte_list)
                Bs.MoveLibData(file_list, v3 + 15, v1 + 8116, 4, byte_list)
                Bs.MoveLibData(file_list, v3 + 19, v1 + 8124, 1, byte_list)
                Bs.MoveLibData(file_list, v3 + 20, v1 + 8128, 4, byte_list)
                Bs.MoveLibData(file_list, v3 + 24, v1 + 8132, 4, byte_list)
                v4 = v3 + 28
        else:
            Bs.MoveLibData(file_list, v3 + 7, v1 + 8108, 4, byte_list)
            Bs.MoveLibData(file_list, v3 + 11, v1 + 8112, 4, byte_list)
            Bs.MoveLibData(file_list, v3 + 15, v1 + 8116, 4, byte_list)
            Bs.MoveLibData(file_list, v3 + 19, v1 + 8124, 1, byte_list)
            v4 = v3 + 20
        v6 = v4 + 1
        Bs.MoveLibData(file_list, v4, v1 + 8136, 1, byte_list)
        i = 0
        while i < Bs.get_token(byte_list, v1 + 8136, 1):
            Bs.MoveLibData(file_list, v6, v1 + 4 * (i + 2084) + 4, 2, byte_list)
            Bs.MoveLibData(file_list, v6 + 2, v1 + 4 * (i + 2034) + 4, 4, byte_list)
            v6 += 6
            i += 1
        Bs.MoveLibData(file_list, v6, v1 + 8540, 1, byte_list)
        v8 = v6 + 1
        j = 0
        while j < Bs.get_token(byte_list, v1 + 8540, 1):
            Bs.MoveLibData(file_list, v8, v1 + 4 * (j + 2136), 4, byte_list)
            Bs.MoveLibData(file_list, v8 + 4, v1 + 4 * (j + 2256), 4, byte_list)
            Bs.MoveLibData(file_list, v8 + 8, v1 + j + 9504, 1, byte_list)
            Bs.MoveLibData(file_list, v8 + 9, v1 + 4 * (j + 2406), 2, byte_list)
            Bs.MoveLibData(file_list, v8 + 11, v1 + 4 * (j + 2526), 4, byte_list)
            v8 += 15
            j += 1
        if v5 - 4098 <= 1:
            v10 = v8
            v8 += 4
            Bs.MoveLibData(file_list, v10, v1 + 35132,4, byte_list)
        Bs.MoveLibData(file_list, v8, v1 + 10584, 1, byte_list)
        v12 = v8 + 1
        k = 0
        while k < Bs.get_token(byte_list, v1 + 10584, 1):
            Bs.MoveLibData(file_list, v12, v1 + 4 * (k + 2646) + 4, 4, byte_list)
            Bs.MoveLibData(file_list, v12 + 4, v1 + 4 * (k + 2676) + 4, 4, byte_list)
            Bs.MoveLibData(file_list, v12 + 8, v1 + k + 10828, 1, byte_list)
            Bs.MoveLibData(file_list, v12 + 9, v1 + k + 10948, 1, byte_list)
            v14 = v12 + 10
            if v5 - 4098 <= 1:
                Bs.MoveLibData(file_list, v14, v1 + k + 34980, 1, byte_list)
                Bs.MoveLibData(file_list, v12 + 11, v1 + 4 * (k + 8752) + 4, 4, byte_list)
                v14 = v12 + 15
            k += 1
            v12 = v14
            l = 0
            while l < Bs.get_token(byte_list, v1 + k + 10948, 1):
                Bs.MoveLibData(file_list, v12, v1 + 4 * (l + 100 * k + 2744) + 4, 2, byte_list)
                v15 = v12 + 2
                v12 += 6
                Bs.MoveLibData(file_list, v15, v1 + 4 * (l + 100 * k + 5744) + 4, 4, byte_list)
                l += 1
    return byte_list


def GetACTNextMenuData(file_list, byte_list):
    v1 = 0
    v3 = Bs.get_token(byte_list, v1 + 8092, 4)
    if v3:
        v6 = v3 + 1
        Bs.MoveLibData(file_list, v3, v1 + 6036, 1, byte_list)
        v4 = 0
        v1_6036 = Bs.get_token(byte_list, v1 + 6036, 1)
        while v4 < v1_6036:
            Bs.MoveLibData(file_list, v6, v1 + 4 * (v4 + 1510), 4, byte_list)
            Bs.MoveLibData(file_list, v6 + 4, v1 + 4 * (v4 + 1766), 4, byte_list)
            v6 += 8
            v4 += 1
    return byte_list


def out_act_data(act_data_list):
    out_str = '动作测试:\n\n'
    for data_dict in act_data_list:
        box_tip_str = ''
        tip_str = ''
        msg_str = ''
        name_str = data_dict['act_name_str']
        act_type = data_dict['key_type']
        box_tip_id = data_dict['box_tip_id']
        if box_tip_id and box_tip_id != '00000000':   # 获取进入提示框提示字符串
            box_tip_str = Bs.get_id_data_from_dict(Pa._text_dict, box_tip_id)
        tip_id = data_dict['tip_id']
        if tip_id and tip_id != '00000000':   # 获取弹框提示框提示字符串
            tip_str = Bs.get_id_data_from_dict(Pa._text_dict, tip_id)
        section_min = data_dict['section_min']
        section_max = data_dict['section_max']
        key_one_add = data_dict['key_one']
        display_msg_id_list = data_dict['display_msg_id_list']
        if len(display_msg_id_list) > 1:
            tip = '警告：显示提示超过两种 -- ' + gl.system_id + ' <name> ' + name_str
            Bs.debug(Pa.Debug, tip)
        for msg_id in display_msg_id_list:  # 获取显示界面提示字符串
            msg_str = Bs.get_id_data_from_dict(Pa._ds_dict, msg_id)
            name_unit = Bs.spilt_ds_name_and_unit(msg_str)
            msg_str = name_unit[0]
            unit = name_unit[1]
        input_cmd_id_list = data_dict['input_cmd_id_list']
        in_cmd_list = []
        for in_cmd_id in input_cmd_id_list:  # 获取点击进入命令
            cmd_str = Bs.get_id_data_from_dict(Pa._cmd_dict, in_cmd_id)
            cmd = Bs.get_command(cmd_str, gl.InitDataLinkLayer['m0'], 'act')
            cmd = cmd_interval_inset_space(cmd)
            in_cmd_list.append(cmd)
        key_data_list = data_dict['key_data_list']
        print(key_data_list)
        if act_type == 2:
            pass
        elif act_type == 3:
            pass
        elif (act_type - 5) & 0xFFFF > 3:
            pass
        else:
            pass
        pass
    if os.path.exists(gl.write_path):
        with open(gl.write_path, 'a', encoding='gbk') as f:
            f.writelines(out_str)


def cmd_interval_inset_space(cmd_str):
    if cmd_str and (len(cmd_str) < 24):
        while len(cmd_str) < 24:
            cmd_str = cmd_str.rstrip()
            cmd_str += ' 00'
    return cmd_str