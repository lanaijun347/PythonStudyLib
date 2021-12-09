import basics as bs
import ROEWE.file_path as pa
import ROEWE.roewe_gl as gl


def GetSysdata_EcuInfoAndFreeze(token, sys_id):
    ecu_info = bs.bin_to_list(pa.ecu_info)
    v2 = 0
    v29 = int(sys_id, 16)
    v7 = 1
    car_id = gl.get_value('car_id')
    p = bs.readlist_num(ecu_info, 0, 1)
    v36 = 0
    while v36 != 127:
        v36 = bs.readlist_num(ecu_info, v7, 4)
        tmp = hex(v36).replace('0x', '')
        if tmp == car_id:
            bs.move_lib_data_token(ecu_info, v7 + 4, v2 + 36, 4, token)
            break
        v7 += p
    v9 = bs.token_4_int(token, v2 + 36)
    v10 = v9 + 2
    v35 = bs.readlist_num(ecu_info, v9, 2)  # 该车型不重复系统总数
    v32 = v10
    v11 = 0
    while v11 < v35:
        v38 = bs.readlist_num(ecu_info, v32, 4)
        if v38 == v29:  # 找到与系统ID对应的位置
            bs.move_lib_data_token(ecu_info, v32 + 4, v2 + 24, 4, token)
            v12 = bs.token_4_int(token, v2 + 24)
            v13 = token[v2 + 101]
            v34 = v13
            if v12:
                bs.move_lib_data_token(ecu_info, v12, v2 + 101, 2, token)  # 版本信息总数
                v14 = v12 + 2
                v15 = v2 + 257912
                i = 0
                while i < token[v2 + 101]:
                    bs.int_to_bytearray(0, 4, v15 - 12, token)
                    v16 = v2 + 44 * i + 257896
                    bs.move_lib_data_token(ecu_info, v14, v16 + 4, 4, token)  # 版本信息名称ID
                    bs.move_lib_data_token(ecu_info,  v14 + 4, v2 + 44 * i + 257936, 4, token)
                    token[v15 - 257436] = 0
                    bs.move_lib_data_token(ecu_info, v14 + 8, v16 + 8, 1, token)  # 命令偏移
                    bs.move_lib_data_token(ecu_info, v14 + 9, v2 + 44 * i + 257940, 1, token)
                    v37 = bs.readlist_num(ecu_info, v14 + 10, 4)  # 版本号命令
                    v17 = v37
                    v18 = v37 >> 24
                    if v37 >> 24:
                        token[v15 + 4] = 4
                        token[v15 + 5] = v18
                        token[v15 + 6] = (v17 & 0xff0000) >> 16
                        token[v15 + 7] = (v17 & 0xff00) >> 8
                        token[v15 + 8] = v17 & 0xff
                    elif v37 & 0xff0000:
                        v19 = v37 & 0xff00 >> 8
                        token[v15 + 4] = 3
                        token[v15 + 5] = (v17 & 0xff0000) >> 16
                        token[v15 + 6] = (v17 & 0xff00) >> 8
                        token[v15 + 7] = v17 & 0xff
                    else:
                        v20 = (v37 & 0xff000) >> 8
                        if v37 & 0xff00:
                            token[v15 + 4] = 2
                            token[v15 + 5] = (v17 & 0xff00) >> 8
                            token[v15 + 6] = v17 & 0xff
                        else:
                            token[v15 + 4] = 1
                            token[v15 + 5] = v17 & 0xff
                    bs.int_to_bytearray(0, 4, v15, token)
                    a = bs.readlist_num(ecu_info, v14 + 14, 4)
                    bs.move_lib_data_token(ecu_info, v14 + 14, v2 + 44 * i + 257912, 4, token)  # 版本信息公式
                    v14 += 18
                    v15 += 44
                    i += 1
            bs.move_lib_data_token(ecu_info, v32 + 8, v2 + 20, 4, token)
            v21 = bs.token_4_int(token, v2 + 20)
            token[v2 + 104] = 0
            v33 = token[v2 + 105]
            token[v2 + 105] = 0
            if v21:
                bs.move_lib_data_token(ecu_info, v21, v2 + 104, 1, token)
                bs.move_lib_data_token(ecu_info, v21 + 1, v2 + 105, 2, token)
                v22 = v21 + 3
                v23 = v2 + 262312
                j = 0
                while j < token[v2 + 105]:  # 冻结帧条数
                    bs.int_to_bytearray(0, 4, v23 - 12, token)
                    v24 = v2 + 44 * j + 262296
                    bs.move_lib_data_token(ecu_info, v22, v24 + 4, 4, token)  # 冻结帧名称ID
                    bs.move_lib_data_token(ecu_info, v22 + 4, v2 + 44 * j + 262336, 4, token)
                    token[v23 - 261836] = 0
                    bs.move_lib_data_token(ecu_info, v22 + 8, v24 + 8, 1, token)  # 偏移
                    bs.move_lib_data_token(ecu_info, v22 + 9, v2 + 44 * j + 262340, 1, token)  # 帧长
                    v37 = bs.readlist_num(ecu_info, v22 + 10, 4)  # 冻结帧命令
                    v25 = v37
                    v26 = v34 >> 24
                    if v37 >> 24:
                        token[v23 + 4] = 4
                        token[v23 + 5] = v26 & 0xff
                        token[v23 + 6] = (v25 & 0xff0000) >> 16
                        token[v23 + 7] = (v25 & 0xff00) >> 8
                        token[v23 + 8] = v25 & 0xff
                    elif v37 & 0xff0000:
                        token[v23 + 4] = 3
                        token[v23 + 5] = (v25 & 0xff0000) >> 16
                        token[v23 + 6] = (v25 & 0xff00) >> 8
                        token[v23 + 7] = v25 & 0xff
                    else:
                        v28 = (v37 & 0xff00) >> 8
                        if v37 & 0xff00:
                            token[v23 + 4] = 2
                            token[v23 + 5] = (v25 & 0xff00) >> 8
                            token[v23 + 6] = v25 & 0xff
                        else:
                            token[v23 + 4] = 1
                            token[v23 + 5] = v25 & 0xff
                    bs.int_to_bytearray(0, 4, v23, token)
                    bs.move_lib_data_token(ecu_info, v22 + 14, v2 + 44 * j + 262312, 4, token)  # 公式ID
                    v22 += 18
                    v23 += 44
                    j += 1
            break
        v11 += 1
        v32 += 12

