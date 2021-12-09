import basics as bs
import ROEWE.roewe_gl as gl
import ROEWE.file_path as pa


def get_ds_data(token):
    # 获取加密
    ds_password(token)
    key_cmd_s = gl.g_dict['ds_key_cmd_s']
    key_cmd_r = gl.g_dict['ds_key_cmd_r']
    key_case = gl.g_dict['ds_key_case']
    # 获取数据流
    ds_is = bs.token_4_int(token, 8)
    if ds_is:
        # 数据流总数
        ds_total = bs.token_2_int(token, 60)
        if ds_total == 0:
            return None
        dstream_cn = bs.file_to_dict(pa.dstream_cn)
        ims_express = bs.file_to_dict(pa.ims_express)
        i = 0
        ds_name_id_list = []
        ds_cmd_off_list = []
        ds_cmd_list = []
        ds_formula_id_list = []
        v30 = 472
        while i < ds_total:
            v31 = 44 * i + 472
            ds_name_id = bs.token_4(token, v31)
            ds_name_id_list.append(ds_name_id)
            ds_cmd_off = token[v31 + 4]
            ds_cmd_off_list.append(str(ds_cmd_off - 1).rjust(3, '0'))
            cmd_len = token[v30 + 16] + 1
            ds_cmd = bs.token_n_re(token, v30 + 16, cmd_len)
            ds_cmd_list.append(ds_cmd)
            ds_formula_id = bs.token_4(token, 44 * i + 484)
            ds_formula_id_list.append(ds_formula_id)
            v30 += 44
            i += 1
        ds_name_list = bs.get_id_data_from_dict(dstream_cn, ds_name_id_list)
        # 分离名称和单位
        name_unit = bs.separate_name_and_unit(ds_name_list)
        name_list = name_unit[0]
        unit_list = name_unit[1]
        ds_formula_list = bs.get_id_data_from_dict(ims_express, ds_formula_id_list)
        # 命令去重
        cmd_data = bs.cmd_to_dict(ds_cmd_list)
        req_cmd_list = cmd_data[0]
        cmd_ans_str_list = cmd_data[1]
        # 写入数据流字符串（即：每条数据）  （符号：（$%、$）， 名称, 单位，命令偏移, 字节偏移， 公式
        ds_str = bs.write_ds_str('  $  ', name_list, unit_list, cmd_ans_str_list, ds_cmd_off_list, ds_formula_list)
        return req_cmd_list, ds_str, key_cmd_s, key_cmd_r, key_case
    else:
        return None


def ds_password(token):
    """加密算法获取"""
    # 初始化全局变量
    gl.g_dict['ds_key_cmd_s'] = []
    gl.g_dict['ds_key_cmd_r'] = []
    gl.g_dict['ds_key_case'] = []
    v56 = 0
    v11 = token[109]
    if v11 == 2 or v11 == 3:
        v56 = (bs.token_4_int(token, 112) << 8) + bs.token_4_int(token, 116)
    elif v11 == 1 or v11 == 4 or v11 == 5:
        v56 = bs.token_4_int(token, 112)
    v12 = bs.token_4_int(token, 48)
    if v12 > 16392:
        if (v12 - 32813) <= 0x2c:
            New_Pass_Sec_sys(v56, v11, bs.token_4_int(token, 272300))
    elif (v12 >= 16389) | ((v12 + 0xFFFFE3F5) <= 4):
        New_Pass_Sec_sys(v56, v11, bs.token_4_int(token, 272300))
    if (bs.token_4_int(token, 272300) >> 24 << 24) > 0xFFFFFF:
        if bs.token_4_int(token, 52) == 16568:
            MG3EngPassWord(v56)
            return 0
        else:
            New_Sys_Enter_Password(token, 3)
    sys_password(token, 3)


def New_Pass_Sec_sys(zh_id, cmd_type, r2_0):
    if not r2_0:
        return 0
    v15 = r2_0
    a3 = ((r2_0 << 12) >> 28) & 0xff
    if a3 == 4 or a3 == 0:
        cmd_len = '06'
    elif a3 == 2:
        cmd_len = '04'
    else:
        cmd_len = '06'
        tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
            'system_id'] + '-->' + '加密算法帧长有误：New_Pass_Sec_sys...' + repr(a3)
        bs.debug(pa.debug, tip)
    v4 = (r2_0 & 0xff00) >> 8
    key_case = ''
    key_cmd = ''
    key_receive = ''
    if v4 == 0x27:
        key_cmd = '022727'
        key_receive = cmd_len + '2728'
        key_case = v15
    if v4 < 0x27:
        if v4 == 0x11:
            key_cmd = '022711'
            key_receive = cmd_len + '2712'
            key_case = v15
        if v4 == 0x12:
            key_cmd = '022701'
            key_receive = cmd_len + '2702'
            key_case = v15
    if v4 == 0x78:
        key_cmd = '022707'
        key_receive = cmd_len + '2708'
        key_case = v15
    if v4 == 0x9a:
        key_cmd = '022709'
        key_receive = cmd_len + '2270a'
        key_case = v15
    if v4 == 0x56:
        key_cmd = '022705'
        key_receive = cmd_len + '22706'
        key_case = v15
    if key_case:
        if key_case not in gl.g_dict['ds_key_case']:
            gl.g_dict['ds_key_case'].append(key_case)
        if key_cmd not in gl.g_dict['ds_key_cmd_s']:
            gl.g_dict['ds_key_cmd_s'].append(key_cmd)
        if key_receive not in gl.g_dict['ds_key_cmd_r']:
            gl.g_dict['ds_key_cmd_r'].append(key_receive)


def MG3EngPassWord(zh_id):
    key_cmd = '022701'
    key_receive = '042702'
    key_case = 201
    if key_case:
        if key_case not in gl.g_dict['ds_key_case']:
            gl.g_dict['ds_key_case'].append(key_case)
        if key_cmd not in gl.g_dict['ds_key_cmd_s']:
            gl.g_dict['ds_key_cmd_s'].append(key_cmd)
        if key_receive not in gl.g_dict['ds_key_cmd_r']:
            gl.g_dict['ds_key_cmd_r'].append(key_receive)


def New_Sys_Enter_Password(token, a2):
    key_cmd = ''
    key_receive = ''
    v58 = token[109]
    if a2 == 2:
        v3 = 0x427B4
    elif a2 == 3:
        v3 = 0x427AC
    elif a2 == 4:
        v3 = 0x427B8
    else:
        v3 = 0x427B0
    v4 = 0
    v57 = bs.token_4_int(token, v3)
    a3 = bs.token_4_int(token, 112)
    if v58 == 2:
        v5 = a3 << 8
    elif v58 == 1:
        v55 = a3
    elif v58 == 3:
        v5 = a3 << 8
        v55 = v5 + bs.token_4_int(token, 116)
    elif v58 == 4:
        v4 = a3
        v55 = v4
    elif v58 == 5:
        v55 = a3
    else:
        v44 = v4
    if (v57 >> 24 << 24) <= 0xFFFFFF:
        return 0
    if not v57:
        return 0
    a3a = (v57 << 12 >> 28) & 0xff
    if a3a == 4 or a3a == 0:
        cmd_len = '06'
    elif a3a == 2:
        cmd_len = '04'
    else:
        cmd_len = '06'
        tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
            'system_id'] + '-->' + '加密算法帧长有误：New_Sys_Enter_Password...' + repr(a3a)
        bs.debug(pa.debug, tip)
    v40 = (v57 & 0xff00) >> 8
    key_case = v57 & 0xff
    if v40 != 0x41:
        if v40 > 0x41:
            if v40 == 0x78:
                key_cmd = '022707'
                key_receive = cmd_len + '2708'
            if v40 == 0x9a:
                key_cmd = '022709'
                key_receive = cmd_len + '270a'
            if v40 == 0x56:
                key_cmd = '022705'
                key_receive = cmd_len + '2706'
        else:
            if v40 == 0x27:
                key_cmd = '022727'
                key_receive = cmd_len + '2728'
            if v40 == 0x34:
                key_cmd = '022703'
                key_receive = cmd_len + '2704'
            if v40 == 0x12:
                key_cmd = '022701'
                key_receive = cmd_len + '2702'
    if v40 == 0x41:
        key_cmd = '022741'
        key_receive = cmd_len + '2742'
    if key_cmd:
        if key_case not in gl.g_dict['ds_key_case']:
            gl.g_dict['ds_key_case'].append(key_case)
        if key_cmd not in gl.g_dict['ds_key_cmd_s']:
            gl.g_dict['ds_key_cmd_s'].append(key_cmd)
        if key_receive not in gl.g_dict['ds_key_cmd_r']:
            gl.g_dict['ds_key_cmd_r'].append(key_receive)


def sys_password(token, a2):
    key_case = ''
    key_cmd = ''
    key_receive = ''
    v3 = token[109]
    v4 = 0
    v35 = bs.token_4_int(token, 112)
    v38 = a2
    if v3 == 1:
        v34 = v35
    elif v3 == 2 or v3 == 3:
        v4 = (bs.token_4_int(token, 112) << 8) + bs.token_4_int(token, 116)
        v34 = v4
    elif v3 == 4:
        v34 = v35
    elif v3 == 5:
        v34 = v35
    else:
        v34 = v4
    v7 = bs.token_4_int(token, 48)
    if v7 == 32777:
        key_cmd = '022701'
        key_receive = '062702'
        key_case = 550
    if v7 > 32777:
        if v7 != 32805:
            if v7 <= 32805:
                if v7 > 32794:
                    if v7 == 32797:
                        key_cmd = '022701'
                        key_receive = '062702'
                        key_case = 550
                    if v7 > 32797:
                        if v7 == 32798:
                            key_cmd = '022701'
                            key_receive = '062702'
                            key_case = 550
                        if v7 == 32800:
                            key_cmd = '022701'
                            key_receive = '062702'
                            key_case = 550
                    elif v7 == 32795:
                        key_cmd = '022701'
                        key_receive = '062702'
                        key_case = 750
                        tmp = ' Rover750GimATPassword'
                        tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                            'system_id'] + '-->' + repr(tmp) + ' 请确认该加密命令...\n'
                        bs.debug(pa.debug, tip)
                else:
                    if v7 >= 32789:
                        key_cmd = '010e'
                        key_receive = '0364'
                        key_case = 750
                        tmp = ' Rover750BodyPassword'
                        tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                            'system_id'] + '-->' + repr(tmp) + ' 请确认该加密命令...\n'
                        bs.debug(pa.debug, tip)
                    if v7 == 32782:
                        key_cmd = '022701'
                        key_receive = '062702'
                        key_case = 550
                    if v7 == 32783:
                        key_cmd = '0127'
                        key_receive = '0327'
                        key_case = 750
                        tmp = ' RoverSrsPassword_750'
                        tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                            'system_id'] + '-->' + repr(tmp) + ' 请确认该加密命令...\n'
                        bs.debug(pa.debug, tip)
            if v7 == 32810:
                key_cmd = '022701'
                key_receive = '062702'
                key_case = 550
            if v7 > 32810:
                if v7 >= 32813 and (v7 <= 32905 or (v7 + 0xFFFF7F66) <= 0x31):
                    New_Pass_Sec_sys(v34, v3, bs.token_4_int(token, 272308))
                    return 0
                Password(token, v38)
                return 0
            if v7 == 32807:
                key_cmd = '022701'
                key_receive = '062702'
                key_case = 550
            if v7 < 32807:
                key_cmd = '022701'
                key_receive = '062702'
                key_case = 550
            if v7 == 32808:
                key_cmd = '022701'
                key_receive = '062702'
                key_case = 550
        else:
            key_cmd = '022701'
            key_receive = '062702'
            key_case = 550
    if v7 > 0x4000:
        key_cmd = '022701'
        key_receive = '062702'
        key_case = 550
    if v7 > 0x4000:
        if v7 <= 16392:
            if v7 >= 16389:
                New_Pass_Sec_sys(v34, v3, bs.token_4_int(token, 272308))
                return 0
            if v7 != 16386:
                if v7 == 16388:
                    key_cmd = '022701'
                    key_receive = '062702'
                    key_case = 550
                else:
                    Password(token, v38)
                    return 0
            else:
                key_cmd = '022701'
                key_receive = '062702'
                key_case = 550
        if v7 != 32774:
            if v7 <= 32774:
                if v4 >= 0x8000:
                    key_cmd = '022701'
                    key_receive = '062702'
                    key_case = 550
                else:
                    Password(token, v38)
                    return 0
            if v7 == 32776:
                key_cmd = '022701'
                key_receive = '062702'
                key_case = 550
        else:
            key_cmd = '022701'
            key_receive = '062702'
            key_case = 550
    if v7 == 7173:
        key_cmd = '022701'
        key_receive = '062702'
        key_case = 550
    if v7 <= 7173:
        if v7 != 7170:
            if v7 == 7171 or v7 == 7169:
                key_cmd = '022704'
                key_receive = '022705'
                key_case = 666
                tmp = ' RoeweKV6Password'
                tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                    'system_id'] + '-->' + repr(tmp) + ' 请确认该加密命令...\n'
                bs.debug(pa.debug, tip)
            else:
                Password(token, v38)
                return 0
        else:
            key_cmd = '022705'
            key_receive = '062706'
            key_case = 550
            key_cmd_1 = '022701'
            key_receive_1 = '062702'
            key_case_1 = 550
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + repr(v7) + ' 请确认该加密命令...\n'
            bs.debug(pa.debug, tip)
    if v7 == 7176:
        key_cmd = '022705'
        key_receive = '062706'
        key_case = 550
        key_cmd_1 = '022701'
        key_receive_1 = '062702'
        key_case_1 = 550
        tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
            'system_id'] + '-->' + repr(v7) + ' 请确认该加密命令...\n'
        bs.debug(pa.debug, tip)
    if v7 < 7176:
        if v7 == 7174:
            key_cmd = '022705'
            key_receive = '062706'
            key_case = 550
        else:
            Password(token, v38)
            return 0
    if (v7 + 0xFFFFE3F5) <= 4:
        New_Pass_Sec_sys(v34, v3, bs.token_4_int(token, 272308))
        return 0
    Password(token, v38)
    if key_cmd:
        if key_case not in gl.g_dict['ds_key_case']:
            gl.g_dict['ds_key_case'].append(key_case)
        if key_cmd not in gl.g_dict['ds_key_cmd_s']:
            gl.g_dict['ds_key_cmd_s'].append(key_cmd)
        if key_receive not in gl.g_dict['ds_key_cmd_r']:
            gl.g_dict['ds_key_cmd_r'].append(key_receive)
        tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
            'system_id'] + '-->' + '关注该类型加密case ' + repr(key_case) + '\n'
        bs.debug(pa.debug, tip)
    return 0


def Password(token, a2):
    key_cmd = ''
    key_receive = ''
    key_case = ''
    v17 = a2
    if v17 == 2:
        v4 = 0x427B4
    elif v17 == 3:
        v4 = 0x427AC
    elif v17 == 4:
        v4 = 0x427B8
    else:
        v4 = 0x427B0
    v5 = bs.token_4_int(token, v4)
    if (v5 >> 24 << 24) > 0xFFFFFF and v5:
        a3 = (v5 << 12 >> 28) & 0xff
        if a3 == 4 or a3 == 0:
            cmd_len = '06'
        elif a3 == 2:
            cmd_len = '04'
        else:
            cmd_len = '06'
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + '加密算法帧长有误：Password...' + repr(a3)
            bs.debug(pa.debug, tip)
        v7 = v5
        v8 = (v5 & 0xff00) >> 8
        key_case = v5 & 0xff
        if v8 == 0x34:
            key_cmd = '022703'
            key_receive = cmd_len + '2704'
        else:
            if v8 <= 0x34:
                if v8 != 0x12:
                    if v8 == 0x27:
                        key_cmd = '022727'
                        key_receive = cmd_len + '2728'
                elif v8 == 0x12:
                    key_cmd = '022701'
                    key_receive = cmd_len + '2702'
            if v8 != 0x78:
                if v8 == 0x9a:
                    key_cmd = '022709'
                    key_receive = cmd_len + '270a'
                else:
                    if v8 == 0x56:
                        key_cmd = '022705'
                        key_receive = cmd_len + '2706'
            elif v8 == 0x78:
                key_cmd = '022707'
                key_receive = cmd_len + '2708'
    if key_cmd:
        if key_case not in gl.g_dict['ds_key_case']:
            gl.g_dict['ds_key_case'].append(key_case)
        if key_cmd not in gl.g_dict['ds_key_cmd_s']:
            gl.g_dict['ds_key_cmd_s'].append(key_cmd)
        if key_receive not in gl.g_dict['ds_key_cmd_r']:
            gl.g_dict['ds_key_cmd_r'].append(key_receive)
