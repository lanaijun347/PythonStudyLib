import basics as bs
import ROEWE.roewe_gl as gl
import ROEWE.file_path as pa
import os


def get_freeze_info(token):
    freeze_is = bs.token_4_int(token, 20)
    if freeze_is:
        dstream_cn = bs.file_to_dict(pa.dstream_cn)
        ims_express = bs.file_to_dict(pa.ims_express)
        freeze_total = token[105]
        i = 0
        v23 = 262312
        freeze_name_id_list = []
        freeze_off_list = []
        freeze_cmd_list = []
        freeze_formula_id_list = []
        freeze_cmd = freeze_cmd_len(token)
        if freeze_cmd:
            freeze_cmd_list.append(freeze_cmd)
        else:
            return None
        while i < freeze_total:
            v24 = 44 * i + 262296
            freeze_name_id = bs.token_4(token, v24 + 4)
            freeze_name_id_list.append(freeze_name_id)
            freeze_off = token[v24 + 8]
            freeze_off_list.append(str(freeze_off - 1).rjust(3, '0'))
            freeze_formula_id = bs.token_4(token, 44 * i + 262312)
            freeze_formula_id_list.append(freeze_formula_id)
            v23 += 44
            i += 1
        ds_name_list = bs.get_id_data_from_dict(dstream_cn, freeze_name_id_list)
        # 分离名称和单位
        name_unit = bs.separate_name_and_unit(ds_name_list)
        name_list = name_unit[0]
        unit_list = name_unit[1]
        freeze_formula_list = bs.get_id_data_from_dict(ims_express, freeze_formula_id_list)
        return freeze_cmd_list, name_list, unit_list, freeze_formula_list, freeze_off_list
    else:
        return None


def freeze_cmd_len(token):
    cmd = ''
    v13 = 0x4009C
    v18 = token[v13 + 16]
    car_name = gl.g_dict['system_id']
    if v18 == 1:
        if token[v13 + 17] == 18:
            cmd = '021200'
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + repr(v18) + ' 请确认该冻结帧类型,冻结帧命令固定不替换故障码...\n'
            bs.debug(pa.debug, tip)
        else:
            cmd = '03170000'
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + repr(v18) + ' 请确认该冻结帧类型...cmd:' + repr(cmd) + '\n'
            bs.debug(pa.debug, tip)
    elif v18 == 3:
        v19 = token[v13 + 17]
        if v19 == 18:
            b2 = token[v13 + 18]
            b3 = token[v13 + 19]
            cmd = '0512' + str(b2).rjust(2, '0') + '0000' + str(b3).rjust(2, '0')
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + repr(v18) + ' 请确认该冻结帧类型...\n'
            bs.debug(pa.debug, tip)
        else:
            if v19 == 25:
                v21 = bs.token_2_int(token, 7127672)
                if bs.token_2_int(token, 2 * (v21 + 3563320)) != 1:
                    b2 = token[v13 + 18]
                    b3 = token[v13 + 19]
                    cmd = '0619' + str(b2).rjust(2, '0') + '000000' + str(b3).rjust(2, '0')
                else:
                    cmd = '0519' + str(token[v13 + 18]).rjust(2, '0') + '0000' + str(token[v13 + 19]).rjust(2, '0')
    return cmd
