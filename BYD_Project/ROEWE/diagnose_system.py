import basics as bs
import ROEWE.roewe_gl as gl
import ROEWE.file_path as pa


def RWDiagnoseSystem(sys_id, token):
    v2 = 0
    v41 = int(sys_id, 16)
    bs.int_to_bytearray(v41, 4, v2 + 52, token)
    case = token[v2 + 109]
    if case == 1:  # CAN
        link_cmd = '023e'
        gl.g_dict['link_cmd'].append(link_cmd)
        v54 = 4
    elif (case == 2) | (case == 3):  # KW2000
        v54 = 2
    elif case == 4:
        v54 = 8
        tip = '系统Id为:' + sys_id + '为编写该类型协议，具体请查看diagnose_system.py...  case = ' + repr(case)
        bs.debug(pa.debug, tip)
    elif case == 5:
        link_cmd = '023e'
        gl.g_dict['link_cmd'].append(link_cmd)
        v54 = 6
    else:
        v54 = 0
        tip = '系统Id为:' + sys_id + '为编写该类型协议，具体请查看diagnose_system.py...  case = ' + repr(case)
        bs.debug(pa.debug, tip)
    token[v2 + 271516] = 0x60
    a1 = token[v2 + 271516]
    a2 = token[v2 + 108]
    SystemInit(a1, a2, v54, v41, token)
    New_Sys_Enter_Password(token)


def SystemInit(a1, a2, v54, v41, token):
    v6 = (token[v54 + 1] << 8) + token[v54 + 2]
    case = a2
    if case == 1 or case == 12:
        gl.g_dict['BPS'] = '500K'
        gl.g_dict['PIN1'] = '#6'
        gl.g_dict['PIN2'] = '#14'
    elif case == 2:
        gl.g_dict['BPS'] = '250K'
        gl.g_dict['PIN1'] = '#3'
        gl.g_dict['PIN2'] = '#11'
    elif case == 17:
        gl.g_dict['BPS'] = '125K'
        gl.g_dict['PIN1'] = '#3'
        gl.g_dict['PIN2'] = '#11'
    elif case == 18:
        gl.g_dict['BPS'] = '500K'
        gl.g_dict['PIN1'] = '#3'
        gl.g_dict['PIN2'] = '#11'
    elif case == 19:
        gl.g_dict['BPS'] = '500K'
        gl.g_dict['PIN1'] = '#12'
        gl.g_dict['PIN2'] = '#13'
    elif case == 20:
        gl.g_dict['BPS'] = '500K'
        gl.g_dict['PIN1'] = '#1'
        gl.g_dict['PIN2'] = '#9'
    elif (case == 3) | (case == 5) | (case == 6) | (case == 7) | (case == 13) | (case == 14) | (case == 15) | (case == 16):
        kwp1 = '8110fc81'
        kwp2 = '8010fc0181'
        gl.g_dict['KW_CMD'].append(kwp1)
        gl.g_dict['KW_CMD'].append(kwp2)
        link_cmd = '013e'
        gl.g_dict['link_cmd'].append(link_cmd)
        if token[109] == 2:
            exit_cmd1 = '0120'
            exit_cmd2 = '0182'
            gl.g_dict['exit_cmd'].append(exit_cmd1)
            gl.g_dict['exit_cmd'].append(exit_cmd2)
        elif token[109] == 3:
            exit_cmd = '019f'
            gl.g_dict['exit_cmd'].append(exit_cmd)
        if (v41 == 16797) | (v41 == 16794) | (v41 == 16795) | (v41 == 17077) | (v41 == 17078):
            gl.g_dict['BPS'] = '10400'
            gl.g_dict['PIN1'] = '#9'
            gl.g_dict['PIN2'] = '#9'
        else:
            gl.g_dict['BPS'] = '10400'
            gl.g_dict['PIN1'] = '#7'
            gl.g_dict['PIN2'] = '#7'
    elif (case == 4) | (case == 8) | (case == 9) | (case == 10) | (case == 11):
        link_cmd = '019E'
        gl.g_dict['link_cmd'].append(link_cmd)
        exit_cmd = '019F'
        gl.g_dict['exit_cmd'].append(exit_cmd)
        gl.g_dict['BPS'] = '9600'
        gl.g_dict['PIN1'] = '#8'
        gl.g_dict['PIN2'] = '#8'
        if not v6:
            key_send = '010E'
            key_rec = '0364'
            gl.g_dict['key_case'] = '750'
            gl.g_dict['key_cmd_s'].append(key_send)
            gl.g_dict['key_cmd_r'].append(key_rec)
            tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
                'system_id'] + '-->' + '激活有加密，算法：Rover750BodyPassword...\n'
            bs.debug(pa.debug, tip)
    else:
        tip = '系统ID为：' + hex(v41) + '未找到该类型协议，请关注diagnose_system.py， case = ' + repr(case)
        bs.debug(pa.debug, tip)


def New_Sys_Enter_Password(token, choose=4):
    if choose == 2:
        v3 = 0x427B4
    elif choose == 3:
        v3 = 0x427AC
    elif choose == 4:
        v3 = 0x427B8
    else:
        v3 = 0x427B0
    v57 = bs.token_4_int(token, v3)
    a3a = (v57 << 12 >> 28) & 0xff
    if a3a == 4 or a3a == 0:
        cmd_len = '06'
    elif a3a == 2:
        cmd_len = '04'
    else:
        cmd_len = '06'
        tip = gl.g_dict['car_name'] + '-' + gl.g_dict['system_name'] + gl.g_dict[
            'system_id'] + '-->' + '激活加密算法帧长有误：New_Sys_Enter_Password...' + repr(a3a)
        bs.debug(pa.debug, tip)
    if (((v57 >> 24) << 24) <= 0xffffff) or not v57:
        return 0
    v40 = (v57 & 0xff00) >> 8
    key = v57 & 0xff
    gl.g_dict['key_case'].append(str(key))
    key_send = ''
    key_rec = ''
    if v40 != 65:
        if v40 > 65:
            if v40 == 120:
                key_send = '022707'
                key_rec = cmd_len + '2708'
            if v40 == 154:
                key_send = '022709'
                key_rec = cmd_len + '270A'
            if v40 == 86:
                key_send = '022705'
                key_rec = cmd_len + '2706'
        else:
            if v40 == 39:
                key_send = '022727'
                key_rec = cmd_len + '2728'
            if v40 == 52:
                key_send = '022703'
                key_rec = cmd_len + '2704'
            if v40 == 18:
                key_send = '022701'
                key_rec = cmd_len + '2702'
    else:
        key_send = '022741'
        key_rec = cmd_len + '2742'
    if key_send:
        gl.g_dict['key_cmd_s'].append(key_send)
        gl.g_dict['key_cmd_r'].append(key_rec)
