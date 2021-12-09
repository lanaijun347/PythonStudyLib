import basics as bs
import ROEWE.file_path as pa
import ROEWE.roewe_gl as gl
import ROEWE.sys_data as sys


# {'1': '350', '2': 'MG5', '2a': 'MG ZS', '3': 'MG GT(1.5L)', '4': 'MG GT(1.4T)', '5': '360(1.5L)', '6': '360(1.4T)',
#  '7': 'MG GS', '8': 'MG GS(EU)', '9': 'RX5', 'a': 'eRX5', 'b': 'ROEWE 750', 'c': 'NEW 750', 'd': 'NEW 750 HYBRID',
#  'e': 'e50', 'f': '550', '10': 'MG6', '11': 'MG6 EU', '12': 'MG6 EU Diesel', '21': 'NEW 550', '13': 'NEW 550 HYBRID',
#  '14': 'MG6 MY14', '15': 'MG6 MY13', '16': 'MG6 TT', '17': 'i6', '2c': 'ei5', '2d': 'RX8', '19': 'W5', '1a': 'MG3',
#  '1b': 'MG7 (2008)', '1c': 'MG7 (2009)', '1d': 'MG7L', '1e': 'MG3 Zero', '1f': 'MG3 EU', '20': 'MG3 Zero 2013',
#  '23': 'NEW MG GS', '25': '新950', '26': 'e950', '24': 'ERX5', '28': 'ei6', '29': 'ZP11MCE3', '2b': 'RX3',
#  '27': '新MG6', '2f': 'Marvel X', '2e': 'i5', '30': 'MG HS', '31': 'EZS', '32': 'ei6 Plus', '33': 'IP32P_CN6',
#  '34': 'eMG6', '35': 'RX5 MAX', '36': 'EP21H', '37': 'MG ZS(EU)', '38': 'EZS(EU)', '39': 'EZS(TT)', '3e': 'RX5 eMAX',
#  '41': 'i6 MAX', '3b': 'i6 PLUS', '3c': 'RX5 PLUS', '3d': 'RX5 ePLUS', '3a': 'ei6 MAX', '44': 'CLEVER', '45': 'iMAX8',
#  '3f': 'i5 GL', '40': 'MG EHS', '42': '新MG6 MY19', '46': 'eMG6 MY19', '43': 'MG ZS 19', '4a': 'EZS(INDIA)',
#  '47': 'MG EHS(EU)', '48': 'MG HS(EU)', '49': 'MG HS(TT)'}

# {'1': '350', '5': '360(1.5L)', '6': '360(1.4T)', '9': 'RX5', 'a': 'eRX5', 'b': 'ROEWE 750', 'c': 'NEW 750', 'd': 'NEW 750 HYBRID',
# 'e': 'e50', 'f': '550', '21': 'NEW 550', '13': 'NEW 550 HYBRID', '17': 'i6', '2c': 'ei5', '2d': 'RX8', '19': 'W5', '25': '新950',
# '26': 'e950', '24': 'ERX5', '28': 'ei6', '2b': 'RX3', '2f': 'Marvel X', '2e': 'i5', '35': 'RX5 MAX', '36': 'EP21H', '3e': 'RX5 eMAX',
# '41': 'i6 MAX', '3b': 'i6 PLUS', '3c': 'RX5 PLUS', '3d': 'RX5 ePLUS', '3a': 'ei6 MAX', '44': 'CLEVER', '45': 'iMAX8', '3f': 'i5 GL'}
#
# {'2': 'MG5', '2a': 'MG ZS', '3': 'MG GT(1.5L)', '4': 'MG GT(1.4T)', '7': 'MG GS', '8': 'MG GS(EU)', '10': 'MG6', '11': 'MG6 EU',
# '12': 'MG6 EU Diesel', '14': 'MG6 MY14', '15': 'MG6 MY13', '16': 'MG6 TT', '1a': 'MG3', '1b': 'MG7 (2008)', '1c': 'MG7 (2009)',
# '1d': 'MG7L', '1e': 'MG3 Zero', '1f': 'MG3 EU', '20': 'MG3 Zero 2013', '23': 'NEW MG GS', '27': '新MG6', '30': 'MG HS', '31': 'EZS',
# '32': 'ei6 Plus', '34': 'eMG6', '37': 'MG ZS(EU)', '38': 'EZS(EU)', '39': 'EZS(TT)', '40': 'MG EHS', '42': '新MG6 MY19',
# '46': 'eMG6 MY19', '43': 'MG ZS 19', '4a': 'EZS(INDIA)', '47': 'MG EHS(EU)', '48': 'MG HS(EU)', '49': 'MG HS(TT)'}
#
# {'29': 'ZP11MCE3', '33': 'IP32P_CN6'}


# 获取荣威跟名爵的车型ID
def get_menu_roewe_and_mg(sgan_file, text_file):
    sgan_f = bs.bin_to_list(sgan_file)
    text_dict = bs.file_to_dict(text_file)
    car_ids = []
    car_str = []
    i = 1
    fp = bs.readlist_num(sgan_f, 0, 1)
    while i != 127:
        car_id = bs.readlist_num(sgan_f, i, 4)
        i += fp
        # 大于0xff认为是无效id
        if car_id > 0xff:
            break
        car_ids.append(hex(car_id).replace('0x', ''))
        tmp = bs.intToBin32((car_id - 0x7e000000))
        str_id = hex(int(tmp, 2)).replace('0x', '')
        if str_id in text_dict.keys():
            car_str.append((text_dict[str_id]).replace('\x00', ''))
        else:
            print('未找到： ' + str_id)
    menu_dict = dict(zip(car_ids, car_str))
    separate_roewe_mg_menu(menu_dict)
    print(menu_dict)
    return car_ids, car_str


def separate_roewe_mg_menu(menu_dict):
    """分离荣威和名爵菜单id"""
    roewe = ['350', '360(1.5L)', '360(1.4T)', 'RX5', 'eRX5', 'ROEWE 750', 'NEW 750', 'NEW 750 HYBRID', 'e50', '550',
             'NEW 550', 'NEW 550 HYBRID', 'i6', 'ei5', 'RX8', 'W5', '新950', 'e950',
             'ERX5', 'ei6',  'Marvel X', 'i5', ]
    mg = ['MG5', 'MG ZS', 'MG GT(1.5L)', 'MG GT(1.4T)', 'MG GS', 'MG GS(EU)', 'MG6', 'MG6 EU', 'MG6 EU Diesel',
          'MG6 MY14', 'MG6 MY13', 'MG6 TT', 'MG3', 'MG7 (2008)', 'MG7 (2009)', 'MG7L', 'MG3 Zero', 'MG3 EU',
          'MG3 Zero 2013', 'NEW MG GS', 'RX3', '新MG6', 'MG HS', 'EZS', 'ei6 Plus', 'eMG6', 'IP32P_CN6']
    tmp = ['ZP11MCE3']  # 未知车型
    roewe_id = []
    mg_id = []
    tmp_id = []
    roewe_str = []
    mg_str = []
    text_dict = bs.file_to_dict(pa.text_cn)
    for key, value in menu_dict.items():
        if value in roewe:
            roewe_id.append(int(key, 16))
        if value in mg:
            mg_id.append(int(key, 16))
        if value in tmp:
            tmp_id.append(int(key, 16))
    for i in roewe_id:
        tmp = bs.intToBin32((i - 0x7e000000))
        str_id = hex(int(tmp, 2)).replace('0x', '')
        if str_id in text_dict.keys():
            roewe_str.append((text_dict[str_id]).replace('\x00', ''))
        else:
            print('未找到： ' + str_id)
    for i in mg_id:
        tmp = bs.intToBin32((i - 0x7e000000))
        str_id = hex(int(tmp, 2)).replace('0x', '')
        if str_id in text_dict.keys():
            mg_str.append((text_dict[str_id]).replace('\x00', ''))
        else:
            print('未找到： ' + str_id)
    print(len(roewe_id), roewe_id)
    print(len(mg_id), mg_id)
    print(tmp_id)
    print(len(roewe_str), roewe_str)
    print(len(mg_str), mg_str)


def DiagnoseVehicle(token):
    text_cn_dict = bs.file_to_dict(pa.text_cn)
    car_id = gl.get_value('car_id')
    car_name = gl.get_value('car_name')
    GetVehicleAddressData(token)
    v19 = 0
    v20 = 0
    names = []
    system_id = []
    v_sys_ids = []
    while True:
        v19 += 4
        if token[0x42A6C] <= v20:
            break
        v20 += 1
        name = bs.token_4(token, v19 + 0xCEA6C)
        if name in text_cn_dict.keys():
            names.append(text_cn_dict[name].replace('\x00', ''))
        else:
            tip = '车型ID ' + car_id + ' 在text_cn文件中未找到：' + name + '\n'
            bs.debug(pa.debug, tip)
    # 将系统中文名称写入全局变量
    gl.set_value('system_name', names)
    # 循环执行每一个系统
    for i in range(len(names)):
        sys_name = names[i]
        v55 = i
        GetPtrlType(i, token)
        bs.int_to_bytearray(v55, 2, 0x6CC278, token)
        version_mun = token[0x8C0 * v55 + 0x42C14]
        if token[0x8C0 * v55 + 0x42C14] <= 1:  # 无版本号进入
            v59 = 0
            v54 = int(4 * (0x230 * v55 + v59 + 0x10A9C) + 4)
            # 系统ID
            sys_id = bs.token_4(token, v54)
            system_id.append(sys_id.upper())
            # 写入无版本号菜单
            menu_str = car_name + '\\' + sys_name + '\\' + sys_id.upper() + '\\' + '\n'
            bs.write_string_to_file(pa.menu, menu_str)
            sys.GetSysdata(token, sys_id)
            continue
        v41 = 1
        v56 = 0
        v63 = 0
        v62 = 0
        v57 = 0
        v66 = 0x8C0 * v55
        v42 = 0  # token
        if v41:
            if v57 < int(token[v66 + 273428]):
                GetPtrlType(v55, token, v57)
                v21 = 1
                v22 = token[v42 + 109]
                if v22 == 1:
                    v21 = 32
                v68 = v21 * int(bs.token_4(token, v42 + 4 * (560 * v55 + v57 + 68340) + 4), 16)
                v77 = 0
                if v22 == 2:
                    v77 = 0x912102
                elif v22 < 2 or v22 > 5:
                    v23 = int(bs.token_4(token, v42 + 4 * (560 * v55 + v57 + 68252) + 4), 16)
                    if (v23 != 16761) and (v23 != 16729):
                        v77 = 0x91F12203
                    else:
                        v77 = 0xE12102
                v64 = 3
                while 2:
                    if int(token[v42 + 109]) == 1:
                        # in_cmd = zhen_ID + ' 02' + ' 10' + ' 03' + ' 00 00 00 00 00'
                        # in_cmd1 = send_cmd(zhen_ID, v77)
                        # in_cmds.append(in_cmd)
                        # in_cmds.append(in_cmd1)
                        # print(in_cmds)
                        pass
                    if int(token[v42 + 109]) == 2:
                        # in_cmd = zhen_ID + ' 02' + ' 10' + ' 86' + ' 00 00 00 00 00'
                        # in_cmd1 = send_cmd(zhen_ID, v77)
                        # in_cmds.append(in_cmd)
                        # in_cmds.append(in_cmd1)
                        pass
                    v41 = 1
                    i = 0
                    tmp_1 = []
                    versions = []
                    versions_ids = []
                    while v41 and (i < token[v66 + 273428]):
                        j = 0
                        tmp_1.append(token[v66 + i + 273429])
                        while j < token[v66 + i + 273429]:
                            # 版本号
                            v39 = bs.token_4(token, v42 + ((i + 35 * v55) << 6) + 4 * j + 273448)
                            versions.append(v39)
                            j += 1
                        i += 1
                    for n in range(len(tmp_1)):
                        for x in range(tmp_1[n]):
                            v61 = x
                            v59 = n
                            v54 = bs.token_4(token, v42 + 4 * (0x230 * v55 + v59 + 68252))
                            # 版本号ID
                            versions_id = bs.token_4(token, v42 + 4 * (0x230 * v55 + v59 + 68252) + 4)
                            versions_ids.append(versions_id.upper())
                    # print(versions_ids)
                    v_sys_ids.append(versions_ids)
                    # 写入有版本号菜单
                    for j in range(len(versions)):
                        menu_str = car_name + '\\' + sys_name + '\\' + versions[j] + '\\' + versions_ids[j] \
                                   + '\\' + '\n'
                        bs.write_string_to_file(pa.menu, menu_str)
                    break
            else:
                tip = '车型ID为：' + car_id + sys_name + '请查看DiagnoseVehicle函数，暂未编写该系统路径...'
                bs.debug(pa.debug, tip)
        else:
            tip = '车型ID ' + car_id + sys_name + ' 为编写初始配置程序：' + '\n'
            bs.debug(pa.debug, tip)


# 汽车初始数据配置程序
def GetVehicleAddressData(token):
    sgan_list = bs.bin_to_list(pa.sgan)
    car_id = gl.g_dict['car_id']
    v1 = 0
    p = search_car_id(car_id, sgan_list)
    bs.move_lib_data_token(sgan_list, p, v1 + 36, 4, token)
    GetECUReplace(car_id, token)
    v7 = int(bs.token_4(token, 36), 16)
    v8 = v7 + 1
    v18 = v8
    bs.move_lib_data_token(sgan_list, v7, 273004, 1, token)
    v9 = 0
    v19 = 0
    b = token[273004]
    while v9 < token[273004]:
        v22 = bs.readlist_num(sgan_list, v18, 4)
        bs.move_lib_data_token(sgan_list, v18 + 4, 4 * (v9 + 211612), 4, token)
        bs.move_lib_data_token(sgan_list, v22, 2240 * v9 + 273428, 1, token)
        v16 = v22 + 1
        v17 = 0
        a = token[273428 + v19]
        while v17 < token[273428 + v19]:
            v23 = bs.readlist_num(sgan_list, v16, 4)
            v11 = v17 + 560 * v9
            bs.move_lib_data_token(sgan_list, v23, 4 * (v11 + 68252) + 4, 4, token)
            v23 += 4
            bs.move_lib_data_token(sgan_list, v23, 2 * (v17 + 1120 * v9 + 136536) + 4, 2, token)
            v23 += 2
            bs.move_lib_data_token(sgan_list, v23, 4 * (v11 + 68292) + 4, 1, token)
            v23 += 1
            bs.move_lib_data_token(sgan_list, v23, 4 * (v11 + 68276) + 4, 1, token)
            v23 += 1
            bs.move_lib_data_token(sgan_list, v23, 4 * (v11 + 68340) + 4, 4, token)
            v23 += 4
            bs.move_lib_data_token(sgan_list, v23, 4 * (v11 + 68308) + 4, 4, token)
            v23 += 4
            bs.move_lib_data_token(sgan_list, v23, 4 * (v11 + 68324) + 4, 4, token)
            v23 += 4
            v12 = v16 + 4
            if token[273428 + v19] > 1:
                bs.move_lib_data_token(sgan_list, v16 + 4, v17 + 2240 * v9 + 273429, 1, token)
                v13 = v16
                v15 = 0
                v12 = v13 + 5
                while v15 < token[v17 + 273429 + v19]:
                    v14 = v12
                    v12 += 4
                    bs.move_lib_data_token(sgan_list, v14, 4 * (v15 + 16 * v17 + 560 * v9 + 68362), 4, token)
                    v15 += 1
            v16 = v12
            v17 += 1
        v18 += 8
        v9 += 1
        v19 += 2240
    gl.set_value('token', token)


def GetECUReplace(car_id, token):
    ecureplace_list = bs.bin_to_list(pa.ecureplace)
    v20 = bs.readlist_num(ecureplace_list, 0, 2)
    car_id = int(car_id, 16)
    v2 = 0
    v6 = 2
    v19 = 0
    while v2 < v20:
        v18 = bs.readlist_num(ecureplace_list, v6, 4)
        v19 = bs.readlist_num(ecureplace_list, v6+4, 4)
        if car_id == v18:
            break
        v6 += 8
        v2 += 1
    if v2 == v20:
        result = 0
        token[7146024] = 0
    else:
        v20 = bs.readlist_num(ecureplace_list, v19, 4)
        v19 += 4
        v17 = 0
        token[7146024] = v20
        v9 = 0
        while v9 < v20:
            bs.move_lib_data_token(ecureplace_list, v19, 456 * v9 + 7136904, 1, token)
            v19 += 1
            bs.move_lib_data_token(ecureplace_list, v19, 456 * v9 + 7136904 + 4, 4, token)
            aaa = bs.token_4(token, 456 * v9 + 7136904 + 4)
            v19 += 4
            GetSysdata_Replace(token, v9)
            bs.move_lib_data_token(ecureplace_list, v19, 456 * v9 + 7136912, 4, token)
            v19 += 4
            v15 = 0
            if token[v17 + 7136912]:
                while v15 < token[v17 + 7136912]:
                    bs.move_lib_data_token(ecureplace_list, v19, 4 * (v15 + 114 * v9 + 1784228) + 4, 4, token)
                    v19 += 4
                    v15 += 1
            bs.move_lib_data_token(ecureplace_list, v19, 456 * v9 + 7136956, 1, token)
            v10 = token[v17 + 7136956]
            v11 = v19 + 1
            v19 += 1
            if v10:
                v21 = 0
                v21 = bs.readlist_num(ecureplace_list, v11, 2)
                bs.move_lib_data_token(ecureplace_list, v19 + 2, 456 * v9 + 7136960, v21, token)
                v19 += 2 + v21
            bs.move_lib_data_token(ecureplace_list, v19, 456 * v9 + 7136980, 4, token)
            v19 += 4
            bs.move_lib_data_token(ecureplace_list, v19, 456 * v9 + 7136984, 1, token)
            v12 = token[v17 + 7136984]
            v13 = v19 + 1
            v19 += 1
            if v12:
                v21 = 0
                v21 = bs.readlist_num(ecureplace_list, v13, 4)
                v19 += 4
                bs.move_lib_data_token(ecureplace_list, v19, 456 * v9 + 7136984 + 4, 4, token)
                v14 = 456 * v9 + 7136992
                v21 += 4
                bs.move_lib_data_token(ecureplace_list, v21, v14, 1, token)
                v21 += 1
                bs.move_lib_data_token(ecureplace_list, v21, v14 + 4, 1, token)
                v21 += 1
            v9 += 1
            v17 += 456
    gl.set_value('token', token)


def GetSysdata_Replace(token, a2):
    sys_config = bs.bin_to_list(pa.sys_config)
    v2 = 0
    v30 = a2
    p = search_car_id(gl.g_dict['car_id'], sys_config)
    v38 = bs.readlist_num(sys_config, p, 4)
    v7 = v38
    v34 = bs.readlist_num(sys_config, v38, 2)
    v29 = 0
    v8 = v7 + 2
    while v29 < v34:
        v37 = bs.readlist_num(sys_config, v8, 2)
        v9 = v30 * 456
        v10 = token[v2 + 456 * v30 + 7136908]
        v31 = v2 + 456 * v30
        if v37 == v10:
            v40 = bs.readlist_num(sys_config, v8 + 4, 4)
            v40 += 2
            bs.move_lib_data_token(sys_config, v40, v9 + 7137004, 4, token)
            v32 = v2 + v9 + 7137008
            v40 += 4
            bs.move_lib_data_token(sys_config, v40, v9 + 7137008, 4, token)
            v11 = v40
            v12 = v31 + 7137008
            token[v12 + 4] = 0
            v29 = v12
            v40 = v11 + 8
            bs.move_lib_data_token(sys_config, v11 + 8, v32 + 4, 4, token)
            v31 = v9
            v13 = 0
            v40 += 1
            while v13 < token[v29 + 4]:
                bs.move_lib_data_token(sys_config, v40, 4 * (v13 + 114 * v30 + 1784254), 4, token)
                v13 += 1
                v40 += 4
            if token[v2 + 7127668] & 0xf != 15:
                v39 = bs.readlist_num(sys_config, v8 + 8, 4)
                bs.move_lib_data_token(sys_config, v39, v31 + 7137100, 1, token)
                v14 = 456 * v30
                v39 += 1
                v15 = 0
                v29 = v2 + 456 * v30
                v31 = v2 + 456 * v30 + 7137096
                while v15 < token[v31 + 4]:
                    v42 = bytearray(0x32)
                    v35 = bs.readlist_num(sys_config, v39, 1)
                    bs.move_lib_data_token(sys_config, v39, 0, (v35 + 1) & 0xff, v42)
                    v16 = v35
                    v17 = 0
                    v18 = v29 + 10 * v15
                    while True:
                        v19 = v18 + v17 + 7137101
                        v20 = v42[v17]
                        token[v19] = v20
                        v17 += 1
                        if v16 >= v17:
                            break
                    v39 = v39 + v16 + 1
                    bs.move_lib_data_token(sys_config, v39, v15 + v14 + 7137201, 1, token)
                    v39 += 1
                    bs.move_lib_data_token(sys_config, v39, 4 * (v15 + + + 114 * v30 + 1784330), 4, token)
                    v39 += 4
                bs.move_lib_data_token(sys_config, v39, v14 + 7137212, 4, token)
                v39 += 4
                bs.move_lib_data_token(sys_config, v39, v14 + 7137216, 1, token)
                v39 += 1
                v21 = 0
                v30 = v2 + 456 * v30
                v29 = v30 + 7137216
                while v21 < token[v29]:
                    v42 = bytearray(0x32)
                    v35 = bs.readlist_num(sys_config, v39, 1)
                    bs.move_lib_data_token(sys_config, v39, 0, (v35 + 1) & 0xff, v42)
                    v22 = v35
                    v23 = 0
                    v24 = v30 + 10 * v21
                    while True:
                        v25 = v24 + v23 + 7137217
                        v26 = v42[v23]
                        token[v25] = v26
                        v23 += 1
                        if v22 >= v23:
                            break
                    v21 += 1
                    v39 = v39 + v22 + 1
            break
        v8 += 28
        v29 += 1
    gl.set_value('token', token)


def GetPtrlType(menu_choose, token, a2=0):
    v3 = menu_choose
    a1 = menu_choose
    a3 = 0
    v4 = a3 + 109
    case = int(bs.token_4(token, a3 + 4 * (560 * a1 + a2 + 68276) + 4), 16)
    if case == 0xb:
        token[v4] = 3
        v5 = int(bs.token_2(token, a3 + 4 * (560 * a1 + a2 + 68340) + 4), 16)
        v6 = a3 + 108
        if v5 == 0x7272:
            label_12(v6)
            return 1
        if v5 > 0x7272:
            if v5 == 53456 or v5 == 59624:
                v7 = 8
                label_37(v6, v7)
                return 1
            elif v5 == 32896:
                v7 = 4
                label_37(v6, v7)
                return 1
        else:
            if not v5:
                v7 = 9
                label_37(v6, v7)
                return 1
            if v5 == 23387:
                v7 = 11
                label_37(v6, v7)
                return 1
        v8 = a3 + 108
        v9 = 10
        label_51(v8, v9)
        return 1
    if case == 0xC:
        token[v4] = 1
        v10 = int(bs.token_4(token, a3 + 4 * (560 * a1 + a2 + 68292) + 4), 16)
        if v10 == 1:
            v8 = a3 + 108
            v9 = 19
        elif v10 == 2:
            v8 = a3 + 108
            v9 = 18
        elif v10 == 3 or v10 == 5:
            v8 = a3 + 108
            v9 = 1
        elif v10 == 7:
            v8 = a3 + 108
            v9 = 17
        elif v10 == 9:
            v8 = a3 + 108
            v9 = 2
        else:
            if v10 != 10:
                return 1
            v8 = a3 + 108
            v9 = 20
        label_51(v8, v9)
        return 1
    if case == 0xD:
        token[v4] = 2
        v11 = int(bs.token_4(token, a3 + 272320), 16)
        v12 = 560 * v3 + a2
        if v11 == 26:
            v13 = int(bs.token_2(token, a3 + 4 * (v12 + 68340) + 4), 16)
            v6 = a3 + 108
            if v13 == 8433:
                v7 = 6
                label_37(v6, v7)
                return 1
            if v13 > 8433:
                if v13 == 22769:
                    v7 = 7
                    label_37(v6, v7)
                    return 1
                if v13 != 50679:
                    if v13 == 10481:
                        v7 = 13
                        label_37(v6, v7)
                        return 1
                    label_45()
                    return 1
            if v13 != 5105:
                if v13 == 5111:
                    v7 = 14
                    token[v6] = v7
                    return 1
                label_45()
                return 1
            v8 = a3 + 108
            v9 = 5
            label_51(v8, v9)
            return 1
        v14 = int(bs.token_2(token, a3 + 4 * (v12 + 68340) + 4), 16)
        if (v14 == 49393) or (v14 == 497):
            v8 = a3 + 108
            v9 = 7
            label_51(v8, v9)
            return 1
        if v11 == 25 and ((v14 == 41456) or (v14 == 8433)):
            v8 = (a3 + 108)
            v9 = 5
            label_51(v8, v9)
            return 1
        if v14 == 8433:
            v8 = (a3 + 108)
            v9 = 6
            label_51(v8, v9)
            return 1
        v8 = (a3 + 108)
        v9 = 3
        token[v8] = v9
        return 1
    if case == 0xE:
        token[v4] = 5
        v8 = (a3 + 108)
        v9 = 12
        label_51(v8, v9)
        return 1
    if case == 0xF:
        token[v4] = 1
        v8 = (a3 + 108)
        v9 = 2
        label_51(v8, v9)
        return 1
    if case == 0x10:
        token[v4] = 1
        v8 = 108
        v9 = 17
        label_51(v8, v9)
        return 1
    else:
        return 1


def label_12(self):
    v7 = 9
    label_37(self, v7)
    return v7


def label_37(self, num):
    token = gl.get_value('token')
    token[self] = num
    gl.set_value('token', token)


def label_45():
    v8 = 108
    v9 = 3
    label_51(v8, v9)


def label_51(offset, num):
    token = gl.get_value('token')
    token[offset] = num
    gl.set_value('token', token)


# 查询相匹配的菜单id
def search_car_id(car_id, file_list):
    s = bs.readlist_num(file_list, 0, 1)
    i = 1
    v21 = 0
    while v21 != 127:
        v21 = bs.readlist_num(file_list, i, 4)
        tmp = hex(v21).replace('0x', '')
        if tmp == car_id:
            return i+4
        i += s
    tip = '未找到与' + car_id + ' 相匹配的id。'
    bs.debug(pa.debug, tip)


if __name__ == '__main__':
    sgan_file = r'D:\BYD_Project\ROEWE\file\ROWE_BIN\SGAN.txt'
    text_cn = r'd:\BYD_Project\ROEWE\file\TEXT_CN.txt'
    get_menu_roewe_and_mg(sgan_file, text_cn)

