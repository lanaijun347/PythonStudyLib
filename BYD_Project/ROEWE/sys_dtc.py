import basics as bs
import ROEWE.file_path as pa
import ROEWE.roewe_gl as gl


def GetSysDTCData(token, sys_id):
    """获取码库"""
    dtc_data_f = bs.bin_to_list(pa.dtcdata)
    v2 = 0
    car_id = gl.get_value('car_id')
    v18 = int(sys_id, 16)
    bs.int_to_bytearray(v18, 4, v2 + 12016 * bs.token_2_int(token, v2 + 7127672) + 974456, token)
    p = bs.readlist_num(dtc_data_f, 0, 1)
    v21 = 0
    i = 1
    while v21 != 127:
        v21 = bs.readlist_num(dtc_data_f, i, 4)
        if v21 == int(car_id, 16):
            bs.move_lib_data_token(dtc_data_f, i + 4, v2 + 12016 * bs.token_2_int(token, v2 + 7127672) + 974448, 4, token)
            break
        i += p
    v7 = bs.token_4_int(token, v2 + 12016 * bs.token_2_int(token, v2 + 7127672) + 974448)
    v8 = v7 + 2
    v20 = bs.readlist_num(dtc_data_f, v7, 2)  # 码库故障码总数
    v14 = v8
    j = 0
    while j < v20:
        v22 = bs.readlist_num(dtc_data_f, v14, 4)
        if v22 == v18:
            bs.move_lib_data_token(dtc_data_f, v14 + 4, v2 + 12016 * bs.token_2_int(token, v2 + 7127672) + 974452, 4, token)
            v9 = 12016 * bs.token_2_int(token, v2 + 7127672)
            v10 = bs.token_4_int(token, v2 + v9 + 974452)
            bs.move_lib_data_token(dtc_data_f, v10, v2 + v9 + 974460, 2, token)
            v11 = bs.token_2_int(token, v2 + 7127672)
            v19 = bs.token_2_int(token, v2 + 12016 * v11 + 974460)
            v12 = 0
            bs.int_to_bytearray(0, 2, 2 * (v11 + 3563320) + v2, token)
            v15 = v10 + 2
            v17 = 1
            while v12 < v19:
                tmp = v12 + 3004 * bs.token_2_int(token, v2 + 7127672)
                bs.move_lib_data_token(dtc_data_f, v15, v2 + 4 * (tmp + 243616), 4, token)  # 码号查找ID
                bs.move_lib_data_token(dtc_data_f, v15 + 4, v2 + 4 * (tmp + 244616), 4, token)  # 正常码号
                bs.move_lib_data_token(dtc_data_f, v15 + 8, v2 + 4 * (tmp + 245616), 4, token)
                v15 += 12
                if v17:
                    tmp1 = bs.token_4_int(token, 4 * (3004 * bs.token_2_int(token, v2 + 7127672) + 12 + 244616)) >> 16
                    if tmp1 <= 0:
                        v17 = 0
                v12 += 1
            if v17:
                bs.int_to_bytearray(1, 2, 2 * (bs.token_2_int(token, v2 + 7127672) + 3563320) + v2, token)
                break
        v14 += 8
        j += 1

