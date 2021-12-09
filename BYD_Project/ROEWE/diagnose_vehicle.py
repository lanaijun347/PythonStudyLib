import basics as bs
import ROEWE.file_path as pa
import ROEWE.roewe_gl as gl
import ROEWE.get_menu as gm
import ROEWE.sys_data as sd
import ROEWE.diagnose_system as dv
import ROEWE.write_out as write


def DiagnoseVehicle(token):
    text_cn_dict = bs.file_to_dict(pa.text_cn)
    v2 = 0
    gm.GetVehicleAddressData(token)
    v20 = v2
    v21 = 0
    sys_names = []  # 系统名称
    car_id = gl.get_value('car_id')  # 获取汽车ID
    while 1:
        v20 += 4
        if v21 >= token[v2 + 273004]:
            break
        v21 += 1
        sys_name_id = bs.token_4(token, v20 + 846444)
        if sys_name_id in text_cn_dict.keys():
            if '/' in text_cn_dict[sys_name_id]:
                text_cn_dict[sys_name_id] = text_cn_dict[sys_name_id].replace('/', '_')
            sys_names.append(text_cn_dict[sys_name_id].replace('\x00', ''))
        else:
            tip = '车型ID ' + car_id + ' 在text_cn文件中未找到：' + sys_name_id + '\n'
            bs.debug(pa.debug, tip)
    gl.set_value('system_names', sys_names)  # 将系统中文名称写入全局变量
    # print(gl.get_value('system_name'))
    # 循环每一个系统
    for i in range(len(sys_names)):
        # 初始化全局变量
        gl.init_global()
        v56 = i
        gm.GetPtrlType(v56, token)
        bs.int_to_bytearray(v56, 2, 0x6CC278, token)
        version_mun = token[0x8C0 * v56 + 0x42C14]
        a = sys_names[i]
        b = token[109]
        if token[v2 + 2240 * v56 + 273428] <= 1:  # 无版本号进入
            version_null(v56, token)
            continue
        v42 = 1
        v57 = 0
        v64 = 0
        v63 = 0
        v58 = 0
        v67 = v2 + 2240 * v56
        v43 = v2
        if v42:
            if v58 < bs.token_4_int(token, v67 + 273428):
                gm.GetPtrlType(56, token, v58)
                v22 = 1
                v23 = token[v43 + 109]  # 协议类型 1 为CAN
                if v23 == 1:
                    v22 = 32
                v69 = v22 * bs.token_4_int(token, v43 + 4 * (560 * v56 + v58 + 68340) + 4)  # 帧ID
                if v23 == 2:
                    adv_cmd = '021086'
                    v78 = '022191'
                    gl.g_dict['Version_CMD'].append(adv_cmd)
                    gl.g_dict['Version_CMD'].append(v78)
                elif (v23 < 2) | (v23 > 5):
                    v24 = bs.token_4_int(token, v43 + 4 * (560 * v56 + v58 + 68252) + 4)  # 系统ID
                    if (v24 != 0x4179) & (v24 != 0x4159):
                        if v23 == 1:
                            adv_cmd = '021003'
                            gl.g_dict['Version_CMD'].append(adv_cmd)
                            v78 = '0322F191'
                            gl.g_dict['Version_CMD'].append(v78)
                        else:
                            tip = '系统为:' + car_id + '-' + sys_names[i] + '为编写该协议类型版本号命令，请关注DiagnoseVehicle, 类型' \
                                  + repr(v23)
                            bs.debug(pa.debug, tip)
                    else:
                        if v23 == 1:
                            adv_cmd = '021003'
                            gl.g_dict['Version_CMD'].append(adv_cmd)
                            v78 = '0221E1'
                            gl.g_dict['Version_CMD'].append(v78)
                        else:
                            tip = '系统为:' + car_id + '-' + sys_names[i] + '为编写该协议类型版本号命令，请关注DiagnoseVehicle, 类型' \
                                  + repr(v23)
                            bs.debug(pa.debug, tip)
                v54 = v2 + 4 * (560 * v56 + 68252)
                v51 = 0
                v52 = 0
                v48 = v2 + 2240 * v56
                # 将版本号和系统号存入字典
                ver_dict = {}
                cout = 0
                while cout < token[v48 + 273428]:
                    p = v2 + 4 * (560 * v56 + cout + 68252)
                    sys_id = bs.token_4(token, p + 4)
                    n = 0
                    while n < token[v48 + cout + 273429]:
                        # 该系统ID对应的版本号
                        ver_id = bs.token_4(token, ((cout + 35 * v56) << 6) + 4 * n + 273448)
                        ver_dict[ver_id] = sys_id
                        n += 1
                    cout += 1
                gl.g_dict['ver_dict'] = ver_dict
                while v51 < token[v48 + 273428]:  # 有版本号的系统id个数
                    copy_version = gl.g_dict['Version_CMD']
                    gl.init_global()
                    gl.g_dict['Version_CMD'] = copy_version
                    v54 = v2 + 4 * (560 * v56 + v51 + 68252)
                    sys_id = bs.token_4(token, v54 + 4)
                    # 将车辆名称信息存入全局变量字典
                    out_path = './/生成协议' + '//' + gl.g_dict['car_flag'] + '协议//' + gl.g_dict['car_name'] + '//' + \
                               gl.g_dict['system_names'][i]
                    gl.g_dict['out_path'] = out_path
                    gl.g_dict['system_id'] = sys_id.upper()
                    gl.g_dict['system_name'] = gl.g_dict['system_names'][i]
                    v29 = token[109]
                    if v29 < 2 or v29 > 5:
                        v33 = int(sys_id, 16)
                        if v33 == 0x4179 or (v33 - 0x4159) <= 0:
                            ver_str = 'BYTE16-BYTE19,4个字节的十六进制控制.\n\n'
                            gl.g_dict['ver_byte_off'] = '16'
                        else:
                            ver_str = 'BYTE03-BYTE06,4个字节的十六进制控制,' \
                                      '或BYTE03-BYTE10,8个字节的ASCII控制.\n\n'
                            gl.g_dict['ver_byte_off'] = '3'
                    else:
                        ver_str = 'BYTE03-BYTE06,4个字节的十六进制控制,' \
                                  '或BYTE03-BYTE10,8个字节的ASCII控制.\n\n'
                        gl.g_dict['ver_byte_off'] = '3'
                    gl.g_dict['ver_str'] = ver_str
                    # 系统配置信息
                    sd.GetSysdata(token, sys_id)
                    gm.GetPtrlType(v56, token, v51)
                    dv.RWDiagnoseSystem(sys_id, token)
                    write.write_out_file(token)
                    v51 += 1
            else:
                tip = '车型ID为：' + gl.g_dict['car_id'] + '-' + sys_names[i] + '为编写该版本号格式。'


def version_null(v56, token, v2=0):
    """无版本号进入"""
    v60 = 0
    v55 = v2 + 4 * (560 * v56 + v60 + 68252)
    sys_id = bs.token_4(token, v55 + 4)
    # 将车辆名称信息存入全局变量字典
    out_path = './/生成协议' + '//' + gl.g_dict['car_flag'] + '协议//' + gl.g_dict['car_name'] + '//' +\
               gl.g_dict['system_names'][v56]
    gl.g_dict['out_path'] = out_path
    gl.g_dict['system_id'] = sys_id.upper()
    gl.g_dict['system_name'] = gl.g_dict['system_names'][v56]
    # 系统配置信息
    sd.GetSysdata(token, sys_id)
    # 协议类型配置信息
    gm.GetPtrlType(v56, token, v60)
    dv.RWDiagnoseSystem(sys_id, token)
    write.write_out_file(token)

