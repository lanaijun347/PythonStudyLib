import basics as bs
import ROEWE.roewe_gl as gl
import ROEWE.file_path as pa
import os
import ROEWE.ds as ds


def get_dtc_data(token):
    # 获取加密
    dtc_password(token)
    key_cmd_s = gl.g_dict['ds_key_cmd_s']
    key_cmd_r = gl.g_dict['ds_key_cmd_r']
    key_case = gl.g_dict['ds_key_case']
    dtc_total = token[212]
    dtc_link = bs.token_4_int(token, 324)
    i = 0
    n = token[213]
    tmp = 0
    dtc_cmd_list = []
    dtc_cases = []
    # 读码命令
    while i < dtc_total:
        dtc_str = bs.token_n_re(token, 213 + tmp, n + 1)
        dtc_cmd_list.append(dtc_str)
        tmp += 10
        n = token[213 + tmp]
        dtc_case = token[i + 313]
        dtc_cases.append(dtc_case)
        a = bs.token_4(token, 4 * (i + 106) + 8)
        i += 1
    # dtc_link = bs.token_4_int(token, 324)
    # 清码命令
    cre_dtc_total = token[328]
    j = 0
    tmp = 0
    n = token[329]
    cre_dtc_list = []
    while j < cre_dtc_total:
        cre_str = bs.token_n_re(token, 329 + tmp, n + 1)
        cre_dtc_list.append(cre_str)
        tmp += 10
        n = token[329 + tmp]
        j += 1
    # 码库
    i = 0
    v11 = bs.token_2_int(token, 7127672)
    dtc_lib_total = bs.token_2_int(token, 12016 * v11 + 974460)
    dtc_tmp_list = []
    dtc_code_list = []
    while i < dtc_lib_total:
        tmp = i + 3004 * bs.token_2_int(token, 7127672)
        dtc_0 = bs.token_4(token, 4 * (tmp + 243616))
        dtc_tmp_list.append(dtc_0)
        dtc_1 = bs.token_4(token, 4 * (tmp + 244616))
        if dtc_cases[0] == 20:
            dtc_1 = hex((int(dtc_1, 16)) >> 8).replace('0x', '')
        else:
            dtc_1 = hex(int(dtc_1, 16)).replace('0x', '')
        if dtc_cases[0] == 13 or dtc_cases[0] == 15:
            dtc_1 = dtc_1.rjust(6, '0')
        elif dtc_cases[0] == 14 or dtc_cases[0] == 1 or dtc_cases[0] == 18 or dtc_cases[0] == 20 or dtc_cases[0] == 22:
            dtc_1 = dtc_1.rjust(4, '0')
        elif dtc_cases[0] == 2:
            if (dtc_link & 0x900000) == 0x900000 or (dtc_link & 0xA00000) == 0xA00000:
                dtc_1 = dtc_1.rjust(6, '0')
            else:
                dtc_1 = dtc_1.rjust(4, '0')
        elif dtc_cases[0] == 21 or dtc_cases[0] == 19 or dtc_cases[0] == 3 or dtc_cases[0] == 8 or dtc_cases[0] == 6 or dtc_cases[0] == 5 or dtc_cases[0] == 4:
            dtc_1 = dtc_1.rjust(2, '0')
        else:
            dtc_1 = dtc_1.rjust(8, '0')
        dtc_code_list.append(dtc_1)
        dtc_2 = bs.token_4(token, 4 * (tmp + 245616))
        i += 1
    if len(dtc_code_list[0]) == 8:
        tip = '车型ID :' + gl.g_dict['car_name'] + ' -->系统ID:' + gl.g_dict['system_id'] + ' case ' +\
               repr(dtc_cases[0]) + ' 未编写该读码码库方式，get_dtc_data.py。'
        bs.debug(pa.debug, tip)
    if dtc_lib_total > 0:
        write_dtc_lib(dtc_code_list, dtc_tmp_list)
    if dtc_total > 0:
        return dtc_cases, dtc_cmd_list, cre_dtc_list, key_cmd_s, key_cmd_r, key_case, dtc_link
    else:
        return None


# 写入故障码库
def write_dtc_lib(dtc_code_list, dtc_tmp_list):
    if not os.path.exists(pa.dtc_lib_out):
        os.makedirs(pa.dtc_lib_out)
    path = pa.dtc_lib_out + '//' + gl.g_dict['system_id'] + '.txt'
    tocde_cn = bs.file_to_dict(pa.tcode_cn)
    dtc_str_list = []
    for dtc_id in dtc_tmp_list:
        if dtc_id in tocde_cn.keys():
            sting = tocde_cn[dtc_id]
            dtc_str_list.append(sting)
        else:
            tip = '车型名称 :' + gl.g_dict['car_name'] + ' -->系统ID:' + gl.g_dict['system_id'] + \
                  ' 未找到该故障码ID --> ' + dtc_id
            bs.debug(pa.debug, tip)
    if len(dtc_code_list) == len(dtc_str_list):
        with open(path, 'w', encoding='gbk') as f:
            for i in range(len(dtc_code_list)):
                str1 = dtc_code_list[i] + 5*' ' + '$*' + 5*' ' + dtc_str_list[i] + '\n'
                f.writelines(str1)
    else:
        tip = '车型名称 :' + gl.g_dict['car_name'] + ' -->系统ID:' + gl.g_dict['system_id'] + \
              ' 码库中间ID与故障码数不相等'
        bs.debug(pa.debug, tip)


def dtc_password(token):
    key_case = ''
    key_cmd = ''
    key_receive = ''
    v9 = bs.token_4_int(token, 112)
    v63 = token[212]
    v50 = token[109]
    sys_add = 0
    if v50 == 2:
        sys_add = (v9 << 8) + bs.token_4_int(token, 116)
    elif v50 == 3:
        v9 = (v9 << 8) + bs.token_4_int(token, 116)
        sys_add = v9
    elif v50 == 1 or v50 == 4 or v50 == 5:
        sys_add = v9
    else:
        pass
    v10 = bs.token_4_int(token, 324)
    if v10 == 0x40000 or v10 == 0x100000:
        ds.sys_password(token, 2)
        return 0
    v11 = bs.token_4_int(token, 0x427B4)
    v37 = ((v11 << 12) >> 28) & 0xff
    if v37 == 4 or v37 == 0:
        cmd_len = '06'
    elif v37 == 2:
        cmd_len = '04'
    else:
        cmd_len = '06'
        tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
            'system_id'] + '-->' + '加密算法帧长有误：dtc_password...' + repr(v37)
        bs.debug(pa.debug, tip)
    if (v11 + 0xFFFFFF) <= 0x1FFFFFE:
        if v50 != 1 and sys_add:
            return 0
        ds.sys_password(token, 2)
        return 0
    if bs.token_4_int(token, 52) != 16568:
        v12 = (bs.token_4_int(token, 0x427B4) & 0xFF00) >> 8
        v52 = v11 & 0xff
        if v12 == 0x41:
            key_cmd = '022741'
            key_receive = cmd_len + '2742'
            key_case = v52
        if v12 > 0x41:
            if v12 == 0x78:
                key_cmd = '022707'
                key_receive = cmd_len + '2708'
                key_case = v52
            elif v12 == 0x9a:
                key_cmd = '022709'
                key_receive = cmd_len + '270a'
                key_case = v52
            else:
                key_cmd = '022705'
                key_receive = cmd_len + '2706'
                key_case = v52
        else:
            if v12 == 0x27:
                key_cmd = '022727'
                key_receive = cmd_len + '2728'
                key_case = v52
            if v12 == 0x34:
                key_cmd = '022703'
                key_receive = cmd_len + '2704'
                key_case = v52
            elif v12 == 0x12:
                key_cmd = '022701'
                key_receive = cmd_len + '2702'
                key_case = v52
    else:
        ds.MG3EngPassWord(sys_add)
    if key_case:
        if key_case not in gl.g_dict['ds_key_case']:
            gl.g_dict['ds_key_case'].append(key_case)
        if key_cmd not in gl.g_dict['ds_key_cmd_s']:
            gl.g_dict['ds_key_cmd_s'].append(key_cmd)
        if key_receive not in gl.g_dict['ds_key_cmd_r']:
            gl.g_dict['ds_key_cmd_r'].append(key_receive)
    return 0
