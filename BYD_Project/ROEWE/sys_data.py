import ROEWE.sys_ecu as ecu
import basics as bs
import ROEWE.file_path as pa
import ROEWE.get_menu
import ROEWE.sys_dtc as dtc
import ROEWE.roewe_gl as gl


def GetSysdata(token, sys_id):
    v2 = 0
    v63 = sys_id
    ecu.GetSysdata_EcuInfoAndFreeze(token, sys_id)  # 获取版本信息及冻结帧配置，  token，系统ID
    sys_config = bs.bin_to_list(pa.sys_config)
    car_id = gl.get_value('car_id')
    p = ROEWE.get_menu.search_car_id(car_id, sys_config)
    bs.move_lib_data_token(sys_config, p, v2 + 36, 4, token)
    v8 = int(bs.token_4(token, v2 + 36), 16)
    v9 = v8 + 2
    v64 = bs.readlist_num(sys_config, v8, 2)  # 该车型存在的所有不同系统ID总数
    v61 = v9
    v10 = 0
    while 1:  # 循环该车型的系统id，获取相匹配系统id
        if v10 >= v64:
            if (int(bs.token_4(token, v2+7127668), 16) & 0xf) != 15:
                dtc.GetSysDTCData(token, v63)
                return 1
        v68 = bs.readlist_num(sys_config, v61, 4)
        if v68 == int(v63, 16):
            break
        v10 += 1
        v61 += 28
    bs.move_lib_data_token(sys_config, v61+4, v2, 4, token)
    v11 = bs.readlist_num(sys_config, v61+4, 4)
    bs.move_lib_data_token(sys_config, v11+2, v2 + 112, 4, token)  # 帧ID
    tmp = bs.readlist_num(sys_config, v11+2, 4)
    if tmp > 0xffff:
        tmp1 = bs.token_4(token, v2 + 112)
        z_id = (hex(int(tmp1[:-2], 16) // 0x20)).replace('0x', '') + ' ' + tmp1[-2:]
    elif tmp > 0xff:
        z_id = (hex(tmp // 0x20)).replace('0x', '')
    else:
        z_id = (hex(tmp)).replace('0x', '')
    gl.set_value('ZH_ID', z_id.upper())
    bs.move_lib_data_token(sys_config, v11+6, v2 + 116, 4, token)  # 滤波ID
    tmp = bs.readlist_num(sys_config, v11 + 6, 4)
    if tmp > 0xffff:
        tmp1 = bs.token_4(token, v2 + 116)
        l_id = (hex(int(tmp1[:-2], 16) // 0x20)).replace('0x', '') + ' ' + tmp1[-2:]
    elif tmp > 0xff:
        l_id = (hex(tmp // 0x20)).replace('0x', '')
    else:
        l_id = (hex(tmp)).replace('0x', '')
    gl.set_value('LV_ID', l_id.upper())
    bs.move_lib_data_token(sys_config, v11+10, v2 + 120, 4, token)
    token[v2 + 128] = 0
    bs.move_lib_data_token(sys_config, v11+14, v2 + 128, 1, token)   # 激活命令条数
    v13 = v11 + 15
    h_command = bs.file_to_dict(pa.h_command)
    j = 0
    while j < token[v2+128]:
        bs.move_lib_data_token(sys_config, v13, v2+4*(j+32)+4, 4, token)  # 激活命令ID
        cmd_id = bs.readlist_reverse(sys_config, v13, 4)
        if cmd_id in h_command.keys():
            cmd_str = h_command[cmd_id]
            gl.g_dict['atv_cmd'].append(cmd_str)
        v13 += 4
        j += 1
    if bs.token_4_int(token, v2 + 7127668) & 0xf == 15:
        _label_65(token, sys_config, v61, v63)
        return 1
    bs.move_lib_data_token(sys_config, v61 + 8, v2 + 4, 4, token)
    v15 = bs.token_4_int(token, v2 + 4)
    bs.move_lib_data_token(sys_config, v15, v2 + 212, 1, token)  # 故障码命令总数
    v16 = v15 + 1
    v62 = v2
    v55 = v2
    v17 = 0
    while v17 < token[v2 + 212]:
        v65 = bs.readlist_num(sys_config, v16, 1)  # 故障码帧长
        v18 = v65
        v19 = 0
        tmp = v16
        while v19 <= v18:  # 存入故障码命令
            token[v55 + v19 + 213] = bs.readlist_num(sys_config, tmp, 1) & 0xff
            v19 += 1
            tmp += 1
        v22 = v16 + v18 + 1
        bs.move_lib_data_token(sys_config, v22, v2 + v17 + 313, 1, token)  # 读码方式case
        bs.move_lib_data_token(sys_config, v22 + 1, v2 + 4 * (v17 + 106) + 8, 4, token)
        v16 = v22 + 5
        v17 += 1
        v55 += 10
    bs.move_lib_data_token(sys_config, v16, v2 + 324, 4, token)  # 故障码链接  009a0000
    bs.move_lib_data_token(sys_config, v16 + 4, v2 + 328, 1, token)  # 清码命令总数
    v23 = v16 + 5
    v56 = v2
    v52 = 0
    while v52 < token[v2 + 328]:
        v65 = bs.readlist_num(sys_config, v23, 1)  # 清码帧长
        v24 = v65
        v25 = 0
        tmp = v23
        while v25 <= v24:  # 存入清除故障码命令
            token[v56 + v25 + 329] = bs.readlist_num(sys_config, tmp, 1) & 0xff
            v25 += 1
            tmp += 1
        v23 = v23 + v24 + 1
        v52 += 1
        v56 += 10
    bs.move_lib_data_token(sys_config, v61 + 12, v2 + 8, 4, token)
    v28 = bs.token_4_int(token, v2 + 8)
    bs.int_to_bytearray(0, 4, v2 + 60, token)
    if not v28:
        _label_49(token, sys_config, v61, v63)
        return 1
    bs.move_lib_data_token(sys_config, v28, v2 + 60, 2, token)  # 数据流总数
    ds_total = bs.readlist_num(sys_config, v28, 2)
    if 1:
        v53 = 0
        v29 = v28 + 2
        v30 = v2 + 472
        while 1:
            if v53 >= ds_total:
                _label_49(token, sys_config, v61, v63)
                return 1
            bs.int_to_bytearray(0, 4, v30, token)
            v31 = v2 + 44 * v53 + 472
            bs.move_lib_data_token(sys_config, v29, v31, 4, token)  # 数据流名称ID
            bs.move_lib_data_token(sys_config, v29 + 4, v2 + 44 * v53 + 508, 4, token)
            bs.int_to_bytearray(0, 4, v30 + 4, token)
            bs.move_lib_data_token(sys_config, v29 + 8, v31 + 4, 1, token)  # 字节偏移
            bs.move_lib_data_token(sys_config, v29 + 9, v2 + 44 * v53 + 512, 1, token)
            v67 = bs.readlist_reverse(sys_config, v29 + 10, 4)  # 命令
            v32 = int(v67, 16)
            if (token[v2 + 109] == 1) | (token[v2 + 109] == 4) | (token[v2 + 109] == 5):
                v33 = v32 & 0xff0000
                if v32 & 0xff0000:
                    v37 = token[v30 + 4]
                    token[v30 + 16] = 3
                    token[v30 + 17] = v33 >> 16
                    token[v30 + 18] = v32 >> 8 & 0xff
                    token[v30 + 19] = v32 & 0xff
                    v35 = v37 - 3
                    # token[v30 + 4] = v35
                    bs.int_to_bytearray(0, 4, v30 + 12, token)
                    v40 = v29 + 14
                    v29 += 18
                    bs.move_lib_data_token(sys_config, v40, v2 + 44 * v53 + 484, 4, token)  # 数据流公式ID
                    v30 += 44
                    v53 += 1
                    continue
                token[v30 + 16] = 2
                v34 = v32 >> 8 & 0xff
                token[v30 + 17] = v34
                token[v30 + 18] = v32 & 0xff
                v35 = token[v30 + 4] - 2
                # token[v30 + 4] = v35
                bs.int_to_bytearray(0, 4, v30 + 12, token)
                v40 = v29 + 14
                v29 += 18
                bs.move_lib_data_token(sys_config, v40, v2 + 44 * v53 + 484, 4, token)  # 数据流公式ID
                v30 += 44
                v53 += 1
                continue
            elif token[v2 + 109] == 2:
                v57 = v32 >> 24
                if v57:
                    token[v30 + 16] = 4
                    token[v30 + 17] = v57
                    token[v30 + 18] = v32 >> 16 & 0xff
                    token[v30 + 19] = v32 >> 8 & 0xff
                    token[v30 + 20] = v32 & 0xff
                    v35 = token[v30 + 4] - 2
                    # token[v30 + 4] = v35
                    bs.int_to_bytearray(0, 4, v30 + 12, token)
                    v40 = v29 + 14
                    v29 += 18
                    bs.move_lib_data_token(sys_config, v40, v2 + 44 * v53 + 484, 4, token)  # 数据流公式ID
                    v30 += 44
                    v53 += 1
                    continue
                v33 = v32 & 0xff0000
                if v33:
                    v37 = token[v30 + 4]
                    token[v30 + 16] = 3
                    token[v30 + 17] = v33 >> 16
                    token[v30 + 18] = v32 >> 8 & 0xff
                    token[v30 + 19] = v32 & 0xff
                    v35 = v37 - 3
                    # token[v30 + 4] = v35
                    bs.int_to_bytearray(0, 4, v30 + 12, token)
                    v40 = v29 + 14
                    v29 += 18
                    bs.move_lib_data_token(sys_config, v40, v2 + 44 * v53 + 484, 4, token)  # 数据流公式ID
                    v30 += 44
                    v53 += 1
                    continue
                else:
                    v34 = v32 >> 8 & 0xff
                    if v32 & 0xff00:
                        token[v30 + 16] = 2
                        token[v30 + 17] = v34
                        token[v30 + 18] = v32 & 0xff
                        v35 = token[v30 + 4] - 2
                        # token[v30 + 4] = v35
                        bs.int_to_bytearray(0, 4, v30 + 12, token)
                        v40 = v29 + 14
                        v29 += 18
                        bs.move_lib_data_token(sys_config, v40, v2 + 44 * v53 + 484, 4, token)  # 数据流公式ID
                        v30 += 44
                        v53 += 1
                        continue
                    token[v30 + 17] = v32 & 0xff
                    v38 = token[v30 + 4]
                    token[v30 + 16] = 1
                    v35 = v38 - 1
                # token[v30 + 4] = v35
                bs.int_to_bytearray(0, 4, v30 + 12, token)
                v40 = v29 + 14
                v29 += 18
                bs.move_lib_data_token(sys_config, v40, v2 + 44 * v53 + 484, 4, token)  # 数据流公式ID
                v30 += 44
                v53 += 1
                continue
            elif token[v2 + 109] == 3:
                token[v30 + 16] = v32 >> 24 & 0xff
                v39 = v32 & 0xff0000
                if v32 >> 24 & 0xff:
                    token[v30 + 17] = v39 >> 16 & 0xff
                    token[v30 + 18] = v32 >> 8 & 0xff
                    token[v30 + 19] = v32 & 0xff
                elif v39:
                    token[v30 + 16] = v39 >> 16 & 0xff
                    token[v30 + 17] = v32 >> 8 & 0xff
                    token[v30 + 18] = v32 & 0xff
                elif v32 & 0xff00:
                    token[v30 + 16] = v32 >> 8 & 0xff
                    token[v30 + 17] = v32 & 0xff
                bs.int_to_bytearray(0, 4, v30 + 12, token)
                v40 = v29 + 14
                v29 += 18
                bs.move_lib_data_token(sys_config, v40, v2 + 44 * v53 + 484, 4, token)  # 数据流公式ID
                v30 += 44
                v53 += 1
                continue
            else:
                bs.int_to_bytearray(0, 4, v30 + 12, token)
                v40 = v29 + 14
                v29 += 18
                bs.move_lib_data_token(sys_config, v40, v2 + 44 * v53 + 484, 4, token)  # 数据流公式ID
                v30 += 44
                v53 += 1
                continue


def _label_49(token, sys_config, v61, v63):
    flag = 0
    v2 = 0
    v62 = v2
    bs.move_lib_data_token(sys_config, v61 + 16, v2 + 12, 4, token)
    v41 = bs.token_4_int(token, v2 + 12)
    v42 = 0
    bs.int_to_bytearray(0, 4, v2 + 80, token)
    if v41:
        bs.move_lib_data_token(sys_config, v41, v2 + 80, 2, token)
        v58 = v41 + 2
        v54 = 0
        a = bs.token_4_int(token, v2 + 80)
        while v54 < bs.token_4_int(token, v2 + 80):
            v69 = bs.readlist_num(sys_config, v58 + 5, 4)
            bs.move_lib_data_token(sys_config, v69, v2 + 248 * v54 + 847477, 2, token)
            v59 = 0
            v69 += 2
            while v59 < token[v62 + 847477]:
                bs.move_lib_data_token(sys_config, v69, v2 + 4 * (v59 + 62 * v54 + 211870), 4, token)
                v69 += 8
                if v59 == 1:
                    if bs.token_4_int(token, v62 + 847484) == bs.token_4_int(token, v62 + 847480):
                        v58 += 9
                        v54 += 1
                        v62 += 248
                        flag = 1
                        # bs.int_to_bytearray(v42, 4, v2 + 80, token)
                        # _label_65(token, sys_config, v61, v63)
                    break
                v59 = 1
            if flag == 1:
                flag = 0
                break
            v51 = v2 + 248 * v42 + 847472
            bs.move_lib_data_token(sys_config, v58, v51, 4, token)
            bs.move_lib_data_token(sys_config, v58 + 4, v51 + 4, 1, token)
            v69 = bs.readlist_num(sys_config, v58 + 5, 4)
            bs.move_lib_data_token(sys_config, v69, v51 + 5, 2, token)
            v69 += 2
            k = 0
            while k < token[v62 + 847477]:
                v43 = k + 62 * v42
                bs.move_lib_data_token(sys_config, v69, v2 + 4 * (v43 + 211870), 4, token)
                v69 += 4
                bs.move_lib_data_token(sys_config, v69, v2 + 4 * (v43 + 211900), 4, token)
                v69 += 4
                k += 1
            v42 += 1
            v58 += 9
            v54 += 1
            v62 += 248
        bs.int_to_bytearray(v42, 4, v2 + 80, token)
    gl.set_value('token', token)
    _label_65(token, sys_config, v61, v63)
    return 0


def _label_65(token, sys_config, v61, v63):
    v2 = 0
    bs.move_lib_data_token(sys_config, v61 + 20, v2 + 16, 4, token)
    v44 = bs.token_4_int(token, v2 + 16)
    bs.move_lib_data_token(sys_config, v44, v2 + 272300, 4, token)
    bs.move_lib_data_token(sys_config, v44 + 4, v2 + 272304, 4, token)
    bs.move_lib_data_token(sys_config, v44 + 8, v2 + 272308, 4, token)
    bs.move_lib_data_token(sys_config, v44 + 12, v2 + 272312, 4, token)
    v45 = 0
    bs.int_to_bytearray(0, 4, v2 + 92, token)
    if bs.token_4_int(token, v2 + 7127668) & 0xf != 15:
        bs.move_lib_data_token(sys_config, v61 + 24, v2 + 28, 4, token)
        v46 = bs.token_4_int(token, v2 + 28)
        v47 = 2240 * bs.token_4_int(token, v2 + 7127672)
        bs.int_to_bytearray(0, 1, v2 + v47 + 274476, token)
        bs.int_to_bytearray(0, 4, v2 + 92, token)
        if v46:
            bs.move_lib_data_token(sys_config, v46, v2 + v47 + 274476, 1, token)
            aaa = bs.token_2_int(token, v2 + 7127672)
            bs.int_to_bytearray(token[v2 + 2240 * aaa + 274476], 4, v2 + 92, token)
            while 1:
                v49 = v46 + 1
                v50 = 2240 * bs.token_2_int(token, v2 + 7127672)
                v46 += 2
                if v45 >= token[v2 + v50 + 274476]:
                    break
                bs.move_lib_data_token(sys_config, v49, v2 + v45 + v50 + 274992, 1, token)
                v48 = v45 + 2240 * bs.token_2_int(token, v2 + 7127672)
                v45 += 1
                bs.move_lib_data_token(sys_config, v46, v2 + v48 + 275120, 1, token)
    if bs.token_4_int(token, v2 + 7127668) & 0xf != 15:
        dtc.GetSysDTCData(token, v63)
    gl.set_value('token', token)
