import basics as Bs
import file_path as Pa
import gl
import os


def SystemDispose(file_list, fp, menu_choose):
    DiagActFunc(file_list, fp)


def DiagActFunc(file_list, fp):
    byte_list = GetFunData(file_list, fp)
    v3 = 0
    v3_8800 = Bs.get_token(byte_list, v3 + 8800, 1)
    if v3_8800 == 1:
        ActiveTestShow(file_list, byte_list, fp)
    pass


def GetFunData(file_list, fp):
    byte_list = bytearray(10000)
    v1 = 0
    v3 = fp
    if v3:
        Bs.MoveLibData(file_list, v3 + 11, v1 + 8800, 2, byte_list)
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
        v1_3680 = Bs.get_token(byte_list, v1 + 3680, 1)
        j = 0
        while j < v1_3680:
            Bs.MoveLibData(file_list, v6, v1 + 2 * (j + 1940) + 4, 2, byte_list)
            Bs.MoveLibData(file_list, v6 + 2, v1 + 4 * (j + 920) + 4, 4, byte_list)
            v6 += 6
            j += 1
        v8 = v6 + 1
        Bs.MoveLibData(file_list, v6, v1 + 3984, 1, byte_list)
        v1_3984 = Bs.get_token(byte_list, v1 + 3984, 1)
        k = 0
        while k < v1_3984:
            Bs.MoveLibData(file_list, v8, v1 + 4 * (k + 996) + 4, 4, byte_list)
            Bs.MoveLibData(file_list, v8 + 4, v1 + 4 * (k + 1296) + 4, 4, byte_list)
            v8 += 8
            k += 1
    return byte_list


def ActiveTestShow(file_list, byte_list, fp, system_id, act_name_id):
    # GetACTShowData(file_list, byte_list)
    act_data = GetACTShowData(file_list, byte_list, act_name_id)
    return act_data


def GetACTShowData(file_list, byte_list, act_name_id):
    ds_id_list = []
    v1 = 0
    v1_8800 = Bs.get_token(byte_list, v1 + 8800, 1)
    if v1_8800 == 1:
        v3 = Bs.get_token(byte_list, v1 + 240, 4)
        v3 = v3 + 17
    else:
        v3 = Bs.get_token(byte_list, v1 + 8796, 4)
    v16 = v3
    if v3:
        tmp_0 = Bs.readlist_num(file_list, v3, 1)
        tmp_1 = Bs.readlist_num(file_list, v3 + 1, 4)
        tmp_2 = Bs.readlist_num(file_list, v3 + 5, 2)
        v4 = v3 + 7
        v5 = tmp_2
        if v5 == 2:  # 仅有输入、退出
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
            # ctl_byte_num = Bs.readlist_num(file_list, v3 + 23, 1)  # 字节控制数
            v4 = v3 + 23
        elif ((v5 - 5) & 0xffff) > 3:
            tip = '动作测试 ((v5 - 5) & 0xffff) > 3, 路径：' + gl.system_id
            Bs.debug(Pa.Debug, tip)
            print(tip)
            if v5 == 9:
                tip = '动作测试 9, 路径：' + gl.system_id
                Bs.debug(Pa.Debug, tip)
                print(tip)
                tip_id = Bs.readlist_reverse(file_list, v3 + 7, 4)  # 输入提示
                section_min = Bs.readlist_num(file_list, v3 + 11, 4)  # 输入范围最小值
                section_min = Bs.get_s32(section_min)
                section_max = Bs.readlist_num(file_list, v3 + 15, 4)  # 输入范围最大值
                section_max = Bs.get_s32(section_max)
                key_one = Bs.readlist_num(file_list, v3 + 19, 1)  # 按键按一次累计加/减调的值
                v3_20 = Bs.readlist_reverse(file_list, v3 + 20, 4)
                v3_24 = Bs.readlist_reverse(file_list, v3 + 24, 4)
                v4 = v3 + 28
            else:
                tip = '动作测试 其他, 路径：' + gl.system_id
                Bs.debug(Pa.Debug, tip)
                print(tip)
                tip_id = Bs.readlist_reverse(file_list, v3 + 7, 4)
                section_min = Bs.readlist_num(file_list, v3 + 11, 4)
                section_min = Bs.get_s32(section_min)
                section_max = Bs.readlist_num(file_list, v3 + 15, 4)
                section_max = Bs.get_s32(section_max)
                ctl_byte_num = Bs.readlist_num(file_list, v3 + 19, 1)
                v4 = v3 + 20
        v6 = v4 + 1
        tmp_15 = Bs.readlist_num(file_list, v4, 1)
        i =0
        while i < tmp_15:
            tmp_16 = Bs.readlist_num(file_list, v6, 2)
            input_cmd_id = Bs.readlist_reverse(file_list, v6 + 2, 4)  # 命令id
            i += 0
            v6 += 6
        tmp_18 = Bs.readlist_num(file_list, v6, 1)
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
        tmp_19 = v1_8800 - 4098
        if tmp_19 & 0xffff <= 1:
            tip = '动作测试 tmp_19 & 0xffff <= 1, 路径：' + gl.system_id
            Bs.debug(Pa.Debug, tip)
            print(tip)
            v10 = v8
            v8 += 4
            tmp_10 = Bs.readlist_reverse(file_list, v10, 4)
        key_num = Bs.readlist_num(file_list, v8, 1)
        v12 = v8 + 1
        k = 0
        while k < key_num:
            dict_0 = {}
            key_id = Bs.readlist_reverse(file_list, v12, 4)
            formula_id = Bs.readlist_reverse(file_list, v12 + 4, 4)
            offset = Bs.readlist_num(file_list, v12 + 8, 1)
            cmd_num = Bs.readlist_num(file_list, v12 + 9, 1)
            v14 = v12 + 10
            if tmp_19 & 0xffff <= 1:
                tmp_20 = Bs.readlist_num(file_list, v14, 1)
                tmp_21 = Bs.readlist_reverse(file_list, v12 + 11, 4)
                v14 = v12 + 15
            v12 = v14
            z = 0
            while z < cmd_num:
                tmp_29 = Bs.readlist_num(file_list, v12, 2)
                cmd_id = Bs.readlist_reverse(file_list, v12 + 2, 4)
                v12 += 6
                z += 1
            k += 1
    pass