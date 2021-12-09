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
    v3_2656 = Bs.get_token(byte_list, v3 + 2656, 4)
    if v3_2656 == 0x80:
        tip_id = Bs.token_4(byte_list, 2660)
        print('动作测试进入提示ID:' + tip_id)
    v23 = v3
    v20 = 0
    v3_2652 = Bs.get_token(byte_list, v3 + 2652, 1)
    in_cmd_list = []
    while v20 < v3_2652:
        act_in_id = Bs.token_4(byte_list, v23 + 2664)
        if act_in_id != '00000000':
            cmd_str = Bs.get_id_data_from_dict(Pa._cmd_dict, act_in_id)
            cmd = Bs.get_command(cmd_str, gl.InitDataLinkLayer['m0'])
            in_cmd_list.append(cmd)
            tip = '动作测试有进入命令，路径：' + hex(gl._global_dict['car_id'])
            Bs.debug(Pa.Debug, tip)
            print(tip + act_in_id + ' ' + cmd)
        v20 += 1
        v23 += 4
    if v3_2652:
        v21 = v3
        v13 = 0
        while v13 < v3_2652:
            v12 = Bs.token_4_int(byte_list, v21 + 2704)
            Bs.int_to_bytearray(v12, 4, 0xac, byte_list)
            if v12 == 1:
                tip = '动作测试 v12 = 1, 路径：' + hex(gl._global_dict['car_id'])
                Bs.debug(Pa.Debug, tip)
                print(tip)
            elif v12 == 192:
                tip = '动作测试 v12 = 192, 路径：' + hex(gl._global_dict['car_id'])
                Bs.debug(Pa.Debug, tip)
                print(tip)
            elif v12 != 0x1083 and v12 != 0x1003:
                # SecurityAccess()
                tip = '动作测试 加密, 路径：' + hex(gl._global_dict['car_id'])
                Bs.debug(Pa.Debug, tip)
                print(tip)
            v13 += 1
            v21 += 4
    act_id_list = []
    while 1:
        v24 = v3
        i = 0
        while 1:
            v24 += 4
            act_num = Bs.get_token(byte_list, v3 + 2828, 1)
            if i >= act_num:
                break
            act_id_list.append(Bs.token_4(byte_list, v24 + 2828))
            i += 1
        # print(act_id_list)
        act_data = ActiveTestShowNextMenu(file_list, byte_list, fp, gl._global_dict['car_id'], act_id_list)
        out_act_data(act_data)
        break


def ActiveTestShowNextMenu(file_list, byte_list, fp, system_id, in_cmd_list):
    v3 = 0
    v4 = 0
    act_list = []
    while v4 < len(in_cmd_list):
        # tmp_0 = Bs.get_token(byte_list, v3 + 4676, 4) + 856
        fp_1 = Bs.token_4_int(byte_list, v3 + 4 * (v4 + 856) + 8)
        Bs.int_to_bytearray(fp_1, 4, v3 + 4680, byte_list)
        while 1:
            byte_list = GetACTNextMenuData(file_list, byte_list)
            if not Bs.get_token(byte_list, v3 + 4032, 1):
                break
            else:
                tip = '动作测试 有多层菜单, 路径：' + hex(gl._global_dict['car_id'])
                Bs.debug(Pa.Debug, tip)
                print(tip)
                break
        act_data = ActiveTestShow(file_list, byte_list, fp, system_id, in_cmd_list[v4])
        act_list.append(act_data)
        v4 += 1
    return act_list

def ActiveTestShow(file_list, byte_list, fp, system_id, act_name_id):
    # GetACTShowData(file_list, byte_list)
    act_data = GetACTShowData0(file_list, byte_list, act_name_id)
    return act_data


def GetACTShowData0(file_list, byte_list, act_name_id):
    v1 = 0
    tip_id = ''
    section_min = 0
    section_max = 0
    ctl_byte_num = 0
    key_one = 0
    ds_id_list = []
    key_data_list = []
    out_dict = {}
    out = {}
    input_cmd_id = ''
    v3 = Bs.token_4_int(byte_list, v1 + 4680)
    if v3:
        tmp_0 = Bs.readlist_num(file_list, v3, 1)
        tmp_1 = Bs.readlist_num(file_list, v3 + 1, 4)
        tmp_2 = Bs.readlist_num(file_list, v3 + 5, 2)
        v4 = v3 + 7
        v5 = tmp_2
        if v5 == 2:  # 仅有输入、退出
            # tip = '动作测试 2, 路径：' + hex(gl._global_dict['car_id'])
            # Bs.debug(Pa.Debug, tip)
            # print(tip)
            tip_id = Bs.readlist_reverse(file_list, v3 + 7, 4)
            section_min = Bs.readlist_num(file_list, v3 + 11, 4)
            section_min = Bs.get_s32(section_min)
            section_max = Bs.readlist_num(file_list, v3 + 15, 4)
            section_max = Bs.get_s32(section_max)
            # ctl_byte_num = 1
            v4 = v3 + 19
        elif v5 == 3:  # 输入值 + 按键模式
            tip_id = Bs.readlist_reverse(file_list, v3 + 7, 4)  # 输入提示
            section_min = Bs.readlist_num(file_list, v3 + 11, 4)  # 输入范围最小值
            section_min = Bs.get_s32(section_min)
            section_max = Bs.readlist_num(file_list, v3 + 15, 4)  # 输入范围最大值
            section_max = Bs.get_s32(section_max)
            key_one = Bs.readlist_num(file_list, v3 + 19, 4)  # 按键按一次累计加/减调的值
            ctl_byte_num = Bs.readlist_num(file_list, v3 + 23, 1)  # 字节控制数
            v4 = v3 + 24
        elif (v5 - 5 <= 2) and (v5 - 5 >= 0):  # 输入值模式
            tip_id = Bs.readlist_reverse(file_list, v3 + 7, 4)
            section_min = Bs.readlist_num(file_list, v3 + 11, 4)
            section_min = Bs.get_s32(section_min)
            section_max = Bs.readlist_num(file_list, v3 + 15, 4)
            section_max = Bs.get_s32(section_max)
            ctl_byte_num = Bs.readlist_num(file_list, v3 + 19, 1)
            v4 = v3 + 20
        v6 = v4 + 1
        tmp_15 = Bs.readlist_num(file_list, v4, 1)
        i = 0
        while i < tmp_15:
            tmp_16 = Bs.readlist_num(file_list, v6, 2)
            input_cmd_id = Bs.readlist_reverse(file_list, v6 + 2, 4)  # 命令id
            v6 += 6
            i += 1
        tmp_18 = Bs.readlist_num(file_list, v6, 1)
        if tmp_18 != 1:
            tip = '动作测试 ds_id 不为1, 路径：' + hex(gl._global_dict['car_id'])
            Bs.debug(Pa.Debug, tip)
            print(tip)
        v8 = v6 + 1
        j = 0
        while j < tmp_18:
            ds_id = Bs.readlist_reverse(file_list, v8, 4)
            ds_id_list.append(ds_id)
            tmp_20 = Bs.readlist_num(file_list, v8 + 4, 4)
            tmp_21 = Bs.readlist_num(file_list, v8 + 8, 1)
            tmp_22 = Bs.readlist_num(file_list, v8 + 9, 2)
            tmp_23 = Bs.readlist_num(file_list, v8 + 11, 4)
            v8 += 15
            j += 1
        key_num = Bs.readlist_num(file_list, v8, 1)
        v11 = v8 + 1
        k = 0
        while k < key_num:
            dict_0 = {}
            key_id = Bs.readlist_reverse(file_list, v11, 4)
            formula_id = Bs.readlist_reverse(file_list, v11 + 4, 4)
            if v5 == 2 and formula_id and k == 0:
                formula = Bs.get_id_data_from_dict(Pa._formula_dict, formula_id)
                s = 0
                if formula:
                    for n in formula:
                        if n == 'x':
                            s += 1
                else:
                    formula = 'y=x;'
                    tip = '动作测试 输入公式为空, 路径：' + hex(gl._global_dict['car_id'])
                    Bs.debug(Pa.Debug, tip)
                ctl_byte_num = s
            offset = Bs.readlist_num(file_list, v11 + 8, 1)
            cmd_num = Bs.readlist_num(file_list, v11 + 9, 1)
            # if gl.InitDataLinkLayer['m0'] == 1:
            #     print('偏移： ' + repr(offset))
            v11 += 10
            cmd_id_list = []
            l = 0
            while l < cmd_num:
                tmp_29 = Bs.readlist_num(file_list, v11, 2)
                if tmp_29 != 0:
                    tip = '动作测试 tmp_29 不为0, 路径：' + hex(gl._global_dict['car_id'])
                    Bs.debug(Pa.Debug, tip)
                    print(tip)
                v13 = v11 + 2
                v11 += 6
                cmd_id = Bs.readlist_reverse(file_list, v13, 4)
                cmd_id_list.append(cmd_id)
                l += 1
            k += 1
            dict_0['key_id'] = key_id
            dict_0['formula_id'] = formula_id
            dict_0['cmd_id_list'] = cmd_id_list
            dict_0['offset'] = offset
            key_data_list.append(dict_0)
    out_dict['tip_id'] = tip_id
    out_dict['section_min'] = section_min
    out_dict['section_max'] = section_max
    out_dict['key_one'] = key_one
    out_dict['input_cmd_id'] = input_cmd_id
    out_dict['ctl_byte_num'] = ctl_byte_num
    out_dict['ds_id_list'] = ds_id_list
    out_dict['key_data_list'] = key_data_list
    out[act_name_id] = out_dict
    return out


def GetACTShowData(file_list, byte_list):
    v1 = 0
    v3 = Bs.token_4_int(byte_list, v1 + 4680)
    if v3:
        Bs.MoveLibData(file_list, v3, v1 + 4032, 1, byte_list)
        Bs.MoveLibData(file_list, v3 + 1, v1 + 4684, 4, byte_list)
        Bs.MoveLibData(file_list, v3 + 5, v1 + 4688, 2, byte_list)
        v4 = v3 + 7
        v5 = Bs.token_2_int(byte_list, v1 + 4688)
        if v5 == 2:
            Bs.MoveLibData(file_list, v3 + 7, v1 + 4692, 4, byte_list)
            Bs.MoveLibData(file_list, v3 + 11, v1 + 4696, 4, byte_list)
            Bs.MoveLibData(file_list, v3 + 15, v1 + 4700, 4, byte_list)
            v4 = v3 + 19
        elif v5 == 3:
            Bs.MoveLibData(file_list, v3 + 7, v1 + 4692, 4, byte_list)
            Bs.MoveLibData(file_list, v3 + 11, v1 + 4696, 4, byte_list)
            Bs.MoveLibData(file_list, v3 + 15, v1 + 4700, 4, byte_list)
            Bs.MoveLibData(file_list, v3 + 19, v1 + 4704, 4, byte_list)
            Bs.MoveLibData(file_list, v3 + 23, v1 + 4708, 4, byte_list)
            v4 = v3 + 24
        elif (v5 - 5 <= 2) and (v5 - 5 > 0):
            Bs.MoveLibData(file_list, v3 + 7, v1 + 4692, 4, byte_list)
            Bs.MoveLibData(file_list, v3 + 11, v1 + 4696, 4, byte_list)
            Bs.MoveLibData(file_list, v3 + 15, v1 + 4700, 4, byte_list)
            Bs.MoveLibData(file_list, v3 + 19, v1 + 4708, 1, byte_list)
            v4 = v3 + 20
        v6 = v4 + 1
        Bs.MoveLibData(file_list, v4, v1 + 4709, 1, byte_list)
        v1_4709 = Bs.get_token(byte_list, v1 + 4709, 1)
        i = 0
        while i < v1_4709:
            Bs.MoveLibData(file_list, v6, v1 + 4 * (i + 1196) + 8, 2, byte_list)
            Bs.MoveLibData(file_list, v6 + 2, v1 + 4 * (i + 1176) + 8, 4, byte_list)
            v6 += 6
            i += 1
        Bs.MoveLibData(file_list, v6, v1 + 4872, 1, byte_list)
        v1_4872 = Bs.get_token(byte_list, v1 + 4872, 1)
        v8 = v6 + 1
        j = 0
        while j < v1_4872:
            Bs.MoveLibData(file_list, v8, v1 + 4 * (j + 1218) + 4, 4, byte_list)
            Bs.MoveLibData(file_list, v8 + 4, v1 + 4 * (j + 1298) + 4, 4, byte_list)
            Bs.MoveLibData(file_list, v8 + 8, v1 + j + 5516, 1, byte_list)
            Bs.MoveLibData(file_list, v8 + 9, v1 + 4 * (j + 1380) + 4, 2, byte_list)
            Bs.MoveLibData(file_list, v8 + 11, v1 + 4 * (j + 1460) + 4, 4, byte_list)
            v8 += 15
            j += 1
        Bs.MoveLibData(file_list, v8, v1 + 6164, 1, byte_list)
        v1_6164 = Bs.get_token(byte_list, v1 + 6164, 1)
        v11 = v8 + 1
        k = 0
        while k < v1_6164:
            Bs.MoveLibData(file_list, v11, v1 + 4 * (k + 1540) + 8, 4, byte_list)
            Bs.MoveLibData(file_list, v11 + 4, v1 + 4 * (k + 1570) + 8, 4, byte_list)
            Bs.MoveLibData(file_list, v11 + 8, v1 + k + 6408, 1, byte_list)
            Bs.MoveLibData(file_list, v11 + 9, v1 + k + 6508, 1, byte_list)
            v11 += 10
            l = 0
            tmp = Bs.get_token(byte_list, v1 + k + 6508, 1)
            while l < tmp:
                Bs.MoveLibData(file_list, v11, v1 + 4 * (l + 80 * k + 1634) + 4, 2, byte_list)
                v13 = v11 + 2
                v11 += 6
                Bs.MoveLibData(file_list, v13, v1 + 4 * (l + 80 * k + 4034) + 4, 4, byte_list)
                l += 1
            k += 1


def GetACTNextMenuData(file_list, byte_list):
    v1 = 0
    v3 = Bs.token_4_int(byte_list, v1 + 4680)
    if v3:
        v6 = v3 + 1
        Bs.MoveLibData(file_list, v3, v1 + 4032, 1, byte_list)
        v1_4032 = Bs.get_token(byte_list, v1 + 4032, 1)
        v4 = 0
        while v4 < v1_4032:
            Bs.MoveLibData(file_list, v6, v1 + 4 * (v4 + 1008) + 4, 4, byte_list)
            Bs.MoveLibData(file_list, v6 + 4, v1 + 4 * (v4 + 1088) + 4, 4, byte_list)
            v3 = Bs.token_4_int(byte_list,  v1 + 4 * (v4 + 1088) + 4)
            v4 += 1
            v6 += 8
    return byte_list


def GetFunData(file_list, fp):
    byte_list = bytearray(10000)
    v1 = 0
    v3 = fp
    if v3:
        Bs.MoveLibData(file_list, v3 + 13, v1 + 2656, 4, byte_list)
        v1_2656 = Bs.get_token(byte_list, v1 + 2656, 4)
        v4 = v3 + 17
        if v1_2656 == 128:
            Bs.MoveLibData(file_list, v4, v1 + 2660, 4, byte_list)
            v4 = v3 + 21
        v5 = v4 + 1
        Bs.MoveLibData(file_list, v4, v1 + 2652, 4, byte_list)
        v1_2652 = Bs.get_token(byte_list, v1 + 2652, 1)
        i = 0
        while i < v1_2652:  # 存动作测试进入命令ID
            Bs.MoveLibData(file_list, v5, v1 + 4 * (i + 674) + 8, 2, byte_list)
            Bs.MoveLibData(file_list, v5 + 2, v1 + 4 * (i + 664) + 8, 4, byte_list)
            v5 += 6
            i += 1
        v7 = v5
        v8 = v5 + 1
        v9 = 0
        Bs.MoveLibData(file_list, v7, v1 + 2744, 1, byte_list)
        v1_2744 = Bs.get_token(byte_list, v1 + 2744, 1)
        while v9 < v1_2744:
            Bs.MoveLibData(file_list, v8, v1 + 4 * (v9 + 696) + 4, 2, byte_list)
            Bs.MoveLibData(file_list, v8 + 2, v1 + 4 * (v9 + 686) + 4, 4, byte_list)
            v8 += 6
            v9 += 1
        v10 = v8 + 1
        Bs.MoveLibData(file_list, v8, v1 + 2828, 1, byte_list)
        v1_2828 = Bs.get_token(byte_list, v1 + 2828, 1)
        j = 0
        while j < v1_2828:
            Bs.MoveLibData(file_list, v10, v1 + 4 * (j + 706) + 8, 4, byte_list)
            Bs.MoveLibData(file_list, v10 + 4, v1 + 4 * (j + 856) + 8, 4, byte_list)
            v10 += 8
            j += 1
    return byte_list


def GetFunData1(file_list, fp):
    byte_list = bytearray(5000)
    v1 = 0
    v3 = fp
    if v3:
        Bs.MoveLibData(file_list, v3 + 17, v1 + 2652, 1, byte_list)
        v1_2652 = Bs.get_token(byte_list, v1 + 2652, 1)
        v4 = v3 + 18
        i = 0
        while i < v1_2652:
            Bs.MoveLibData(file_list, v4, v1 + 4 * (i + 674) + 8, 2, byte_list)
            Bs.MoveLibData(file_list, v4 + 2, v1 + 4 * (i + 664) + 8, 4, byte_list)
            v4 += 6
            i += 1
        v6 = v4
        v7 = v4 + 1
        v8 = 0
        Bs.MoveLibData(file_list, v6, v1 + 2744, 1, byte_list)
        v1_2744 = Bs.get_token(byte_list, v1 + 2744, 1)
        while v8 < v1_2744:
            Bs.MoveLibData(file_list, v7, v1 + 4 * (v8 + 696) + 4, 2, byte_list)
            Bs.MoveLibData(file_list, v7 + 2, v1 + 4 * (v8 + 686) + 4, 4, byte_list)
            v7 += 6
            v8 += 1
        v9 = v7 + 1
        Bs.MoveLibData(file_list, v7, v1 + 2828, 1, byte_list)
        v1_2828 = Bs.get_token(byte_list, v1 + 2828, 1)
        j = 0
        while j < v1_2828:
            Bs.MoveLibData(file_list, v9, v1 + 4 * (j + 706) + 8, 4, byte_list)
            Bs.MoveLibData(file_list, v9 + 4, v1 + 4 * (j + 856) + 8, 4, byte_list)
            v9 += 8
            j += 1
    return byte_list


def out_act_data(act_data):
    out_str = '动作测试:\n\n'
    n = 0
    for i in range(len(act_data)):
        for act_name_id, value in act_data[i].items():
            act_name = Bs.get_id_data_from_dict(Pa._text_dict, act_name_id)
            act_name = Bs.str_remove_x00(act_name)
            act_name = '$^' + str(n).rjust(2, '0') + ':' + act_name + '\n'
            tip_id = value['tip_id']
            section_min = value['section_min']
            section_max = value['section_max']
            key_one = value['key_one']
            ctl_byte_num = value['ctl_byte_num']
            ds_id_list = value['ds_id_list']
            key_data_list = value['key_data_list']
            input_cmd_id = value['input_cmd_id']
            if section_min == 0 and section_max == 0 and key_one == 0:  # 只有按键，执行就行
                cmd_data = act_name + act_only_key(key_data_list)
            elif (tip_id != 0 or section_min != 0 or section_max != 0) and key_one == 0:  # 带输入值，但没有按键累加输入
                cmd_data = act_input_key(tip_id, section_min, section_max, key_one, ctl_byte_num, ds_id_list, key_data_list)
                cmd_data = act_name + cmd_data
            elif (tip_id != 0 or section_min != 0 or section_max != 0) and key_one != 0:  # 带输入值，有按键累加输入
                cmd_data = act_input_key_1(tip_id, section_min, section_max, ctl_byte_num, ds_id_list, key_data_list, input_cmd_id)
                cmd_data = act_name + cmd_data
            else:
                cmd_data = ''
                tip = ' 该动作测试类型未编写,请确认， 路径：' + hex(gl._global_dict['car_id'])
                Bs.debug(Pa.Debug, tip)
            out_str += cmd_data
        n += 1
    # print(out_str)
    if os.path.exists(gl.write_path):
        with open(gl.write_path, 'a', encoding='gbk') as f:
            f.writelines(out_str)

def act_only_key(key_data_list):
    out_str = '$^TYPE:0' + '\n'
    for data in key_data_list:
        key_id = data['key_id']
        cmd_id_list = data['cmd_id_list']
        key_name = Bs.get_id_data_from_dict(Pa._text_dict, key_id)
        if not key_name:
            a = 99
        key_name = Bs.str_remove_x00(key_name)
        out_str += '$^BUTTON:' + key_name + '\n'
        cmds = []
        for cmd in cmd_id_list:
            tmp_cmd = []
            tmp_cmd.append(cmd)
            cmd_str = Bs.get_id_data_from_dict(Pa._cmd_dict, tmp_cmd)
            cmd = Bs.get_command(cmd_str, gl.InitDataLinkLayer['m0'], 'act')
            cmd = cmd_interval_inset_space(cmd)
            cmds.append(cmd)
        cmd_data = Bs.write_act_cmd('$^', cmds, gl.InitDataLinkLayer['m0']) + '\n'
        out_str += cmd_data
    # print(out_str)
    return out_str


def act_input_key(tip_id, section_min, section_max, key_one, ctl_byte_num, ds_id_list, key_data_list):
    out_str = '$^TYPE:2' + '\n'
    tip_str = Bs.get_id_data_from_dict(Pa._text_dict, tip_id)
    tip_str = Bs.str_remove_x00(tip_str)
    unit = ''
    if len(ds_id_list) > 0:
        name_data = Bs.get_id_data_from_dict(Pa._ds_dict, ds_id_list[0])
        name_unit = Bs.spilt_ds_name_and_unit(name_data)
        name = name_unit[0]
        if name:
            tip_str = name
        unit = name_unit[1]
    if unit:
        out_str += '$^DSP:' + tip_str + '->' + unit + '\n'
    else:
        out_str += '$^DSP:' + tip_str + '\n'
    for data in key_data_list:
        key_id = data['key_id']
        cmd_id_list = data['cmd_id_list']
        key_name = Bs.get_id_data_from_dict(Pa._text_dict, key_id)
        key_name = Bs.str_remove_x00(key_name)
        if '输入' in key_name or '设置' in key_name or '测试值' in key_name:
            formula_id = data['formula_id']
            formula = Bs.get_id_data_from_dict(Pa._formula_dict, formula_id)
            if not formula:
                formula = ''
            offset = data['offset']
            cmd_data = ''
            if gl.InitDataLinkLayer['m0'] != 2:
                tip = repr(gl.InitDataLinkLayer['m0']) + ' 该协议类型动作测试偏移未编写, 路径：' + hex(gl._global_dict['car_id'])
                Bs.debug(Pa.Debug, tip)
            if len(cmd_id_list) != 1:
                tip = ' 该动作测试输入命令为' + repr(len(cmd_id_list)) + '条,请确认偏移是那条， 路径：' + hex(gl._global_dict['car_id'])
                Bs.debug(Pa.Debug, tip)
            else:
                cmds = []
                for cmd in cmd_id_list:
                    tmp_cmd = []
                    tmp_cmd.append(cmd)
                    cmd_str = Bs.get_id_data_from_dict(Pa._cmd_dict, tmp_cmd)
                    if offset == 9:
                        offset = 5
                    elif offset == 10:
                        offset = 6
                    elif offset == 11:
                        offset = 7
                    else:
                        tip = ' 该动作测试偏移为' + repr(offset) + '请确认偏移， 路径：' + hex(gl._global_dict['car_id'])
                        Bs.debug(Pa.Debug, tip)
                        print(tip)
                    cmd = Bs.get_command(cmd_str, gl.InitDataLinkLayer['m0'], 'act')
                    cmd = cmd_inset_xx(cmd, offset, ctl_byte_num)
                    cmds.append(cmd)
                cmd_data = Bs.write_act_cmd('$^', cmds, gl.InitDataLinkLayer['m0']) + '\n'
            if not formula:
                formula = 'y=x;'
                tip = '动作测试 输入公式为空默认给了y=x，请确认, 路径：' + hex(gl._global_dict['car_id'])
                Bs.debug(Pa.Debug, tip)
            out_str += '$^IN_F:' + formula + '\n' + '$^RANGE:' + '[' + repr(section_min) + ',' + repr(section_max) + ']' + '\n\n'
            out_str += '$^BUTTON:' + key_name + '\n' + cmd_data
        else:
            if '退出' not in key_name:
                tip = 'TYPE_2 动作测试输入按键为: ' + key_name + '请确认， 路径：' + hex(gl._global_dict['car_id'])
                Bs.debug(Pa.Debug, tip)
                print(tip)
            out_str += '$^BUTTON:' + key_name + '\n'
            cmds = []
            for cmd in cmd_id_list:
                tmp_cmd = []
                tmp_cmd.append(cmd)
                cmd_str = Bs.get_id_data_from_dict(Pa._cmd_dict, tmp_cmd)
                cmd = Bs.get_command(cmd_str, gl.InitDataLinkLayer['m0'], 'act')
                cmd = cmd_interval_inset_space(cmd)
                cmds.append(cmd)
            cmd_data = Bs.write_act_cmd('$^', cmds, gl.InitDataLinkLayer['m0']) + '\n'
            out_str += cmd_data
    return out_str


def act_input_key_1(tip_id, section_min, section_max, ctl_byte_num, ds_id_list, key_data_list, input_cmd_id):
    out_str = '$^TYPE:2' + '\n'
    tip_str = Bs.get_id_data_from_dict(Pa._text_dict, tip_id)
    tip_str = Bs.str_remove_x00(tip_str)
    unit = ''
    if len(ds_id_list) > 0:
        name_data = Bs.get_id_data_from_dict(Pa._ds_dict, ds_id_list[0])
        name_unit = Bs.spilt_ds_name_and_unit(name_data)
        name = name_unit[0]
        if name:
            tip_str = name
        unit = name_unit[1]
    if unit:
        out_str += '$^DSP:' + tip_str + '->' + unit + '\n'
    else:
        out_str += '$^DSP:' + tip_str + '\n'
    offset = key_data_list[0]['offset']
    formula_id = key_data_list[0]['formula_id']
    formula = Bs.get_id_data_from_dict(Pa._formula_dict, formula_id)
    if input_cmd_id:
        key_name = '输入'
        if offset == 9:
            offset = 5
        elif offset == 10:
            offset = 6
        elif offset == 11:
            offset = 7
        else:
            tip = ' 该动作测试偏移为' + repr(offset) + '请确认偏移， 路径：' + hex(gl._global_dict['car_id'])
            Bs.debug(Pa.Debug, tip)
            print(tip)
        cmds = []
        tmp = []
        cmd_str = Bs.get_id_data_from_dict(Pa._cmd_dict, input_cmd_id)
        tmp.append(cmd_str)
        cmd = Bs.get_command(tmp, gl.InitDataLinkLayer['m0'], 'act')
        cmd = cmd_inset_xx(cmd, offset, ctl_byte_num)
        cmd = cmd_interval_inset_space(cmd)
        cmds.append(cmd)
        cmd_data = Bs.write_act_cmd('$^', cmds, gl.InitDataLinkLayer['m0']) + '\n'
        if not formula:
            formula = 'y=x;'
            tip = '动作测试 输入公式为空默认给了y=x，请确认, 路径：' + hex(gl._global_dict['car_id'])
            Bs.debug(Pa.Debug, tip)
        out_str += '$^IN_F:' + formula + '\n' + '$^RANGE:' + '[' + repr(section_min) + ',' + repr(
            section_max) + ']' + '\n\n'
        out_str += '$^BUTTON:' + key_name + '\n'
        out_str += cmd_data
    else:
        tip = 'TYPE_1 动作测试输入按键命令为空，请确认， 路径：' + hex(gl._global_dict['car_id'])
        Bs.debug(Pa.Debug, tip)
    for data in key_data_list:
        key_id = data['key_id']
        cmd_id_list = data['cmd_id_list']
        key_name = Bs.get_id_data_from_dict(Pa._text_dict, key_id)
        key_name = Bs.str_remove_x00(key_name)
        if '退出' not in key_name:
            tip = 'TYPE_1 动作测试按键为' + key_name +'，请确认， 路径：' + hex(gl._global_dict['car_id'])
            Bs.debug(Pa.Debug, tip)
            print(key_name)
        else:
            out_str += '$^BUTTON:' + key_name + '\n'
            cmds = []
            for cmd in cmd_id_list:
                tmp_cmd = []
                tmp_cmd.append(cmd)
                cmd_str = Bs.get_id_data_from_dict(Pa._cmd_dict, tmp_cmd)
                cmd = Bs.get_command(cmd_str, gl.InitDataLinkLayer['m0'], 'act')
                cmd = cmd_interval_inset_space(cmd)
                cmds.append(cmd)
            cmd_data = Bs.write_act_cmd('$^', cmds, gl.InitDataLinkLayer['m0']) + '\n'
            out_str += cmd_data
    return out_str


def cmd_inset_xx(cmd_str, offset, num):
    tmp = 'XX ' * num
    tmp_0 = (offset + 1) + 2 * offset
    cmd_str = cmd_str[:tmp_0] + tmp + cmd_str[num * 2 + num + tmp_0:]
    cmd_str = cmd_interval_inset_space(cmd_str)
    return cmd_str


def cmd_interval_inset_space(cmd_str):
    if cmd_str and (len(cmd_str) < 24):
        while len(cmd_str) < 24:
            cmd_str = cmd_str.rstrip()
            cmd_str += ' 00'
    return cmd_str


if __name__ == '__main__':
    # file_list = Bs.bin_to_list(Pa.FUNCFG)
    # DiagActFunc(file_list, 0x1d2122)
    cmd_inset_xx(' 06 2f fd 15 03 00 00', 5, 2)
    pass
