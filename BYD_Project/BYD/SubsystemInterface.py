"""配置信息"""
import file_path as Pa
import gl
import basics as Bs
import info
import ds
import cdtc
import rdtc
import act_chuanqi


# 获取对应车型的功能配置信息
def Xml_GetInfoFromFunCfgSystem(file_list, car_id):
    if file_list:
        i = 0
        while True:
            v11 = Bs.readlist_num(file_list, i, 4)
            if v11 == car_id:
                break
            v10 = Bs.readlist_num(file_list, i + 32, 1)
            i = i + 4 * v10 + 33
        v2 = 0
        # 汽车ID
        gl.InitSubSystem['n0'] = Bs.readlist_num(file_list, i, 4)
        gl.InitSubSystem['n1'] = Bs.readlist_num(file_list, i + 4, 4)
        gl.InitSubSystem['n2'] = Bs.readlist_num(file_list, i + 8, 4)
        gl.InitSubSystem['n3'] = Bs.readlist_num(file_list, i + 12, 4)
        gl.InitSubSystem['n4'] = Bs.readlist_num(file_list, i + 16, 4)
        gl.InitSubSystem['n5'] = Bs.readlist_num(file_list, i + 20, 4)
        gl.InitSubSystem['n6'] = Bs.readlist_num(file_list, i + 24, 4)
        gl.InitSubSystem['n7'] = Bs.readlist_num(file_list, i + 28, 4)
        gl.InitSubSystem['n8'] = Bs.readlist_num(file_list, i + 32, 1)
        v32 = gl.InitSubSystem['n8']
        if v32:
            v6 = i + 33
            j = 0
            while j < v32:
                gl.InitSubSystem["n9"].append(Bs.readlist_num(file_list, v6, 4))
                v6 += 4
                j += 1
    else:
        print(Pa.FUNCFG + ' 为空！')


# 获取和配置参数信息   (文件列表，文件指针偏移InitSubSystem['n1'])
def GetAndSetParameter(file_list, fp):
    if fp:
        result = Xml_GetInfoFromDataLinkLayer(file_list, fp, gl.InitDataLinkLayer)
        if result >= 0:
            if gl.InitDataLinkLayer['m0'] == 1:
                Com_SetParameter_GENRAL(gl.InitDataLinkLayer['m2'])
            elif gl.InitDataLinkLayer['m0'] == 2:
                Com_SetParameter_CAN(gl.InitDataLinkLayer['m3'])
            elif gl.InitDataLinkLayer['m0'] == 4:
                tip = '警告：车型ID ' + gl.system_id + ' 未编写 4 该类协议类型'
                Bs.debug(Bs.Debug, tip)
            elif gl.InitDataLinkLayer['m0'] == 5:
                tip = '警告：车型ID ' + gl.system_id + ' 未编写 5 该类协议类型'
                Bs.debug(Bs.Debug, tip)
            elif gl.InitDataLinkLayer['m0'] == 3 or gl.InitDataLinkLayer['m0'] == 7:
                Com_SetParameter_LONGCAN(gl.InitDataLinkLayer['m3'])
                if gl.InitDataLinkLayer['m0'] == 7:
                    tip = '警告：车型ID ' + gl.system_id + ' 未编写 7 该类协议类型'
                    Bs.debug(Bs.Debug, tip)
            elif gl.InitDataLinkLayer['m0'] == 8:
                tip = '警告：车型ID ' + gl.system_id + ' 未编写 8 该类协议类型'
                Bs.debug(Bs.Debug, tip)
            elif gl.InitDataLinkLayer['m0'] == 6:
                tip = '警告：车型ID ' + gl.system_id + ' 未编写 6 该类协议类型'
                Bs.debug(Bs.Debug, tip)
            else:
                tip = '警告：车型ID ' + gl.system_id + ' 未编写 ' + str(gl.InitDataLinkLayer['m0']) \
                      + ' 该类协议类型'
                Bs.debug(Bs.Debug, tip)
    else:
        tip = '汽车ID为：' + gl._global_dict['car_id'] + '文件指针偏移为空！'
        Bs.debug(Bs.Debug, tip)


def Xml_GetInfoFromDataLinkLayer(file_list, fp, InitDataLinkLayer):
    if file_list:
        InitDataLinkLayer['m0'] = Bs.readlist_num(file_list, fp, 1)
        result = InitDataLinkLayer['m0']
        InitDataLinkLayer['m1'] = Bs.readlist_num(file_list, fp+1, 1)
        v8 = fp + 2
        if (InitDataLinkLayer['m0'] == 1) | (InitDataLinkLayer['m0'] == 6) | (InitDataLinkLayer['m0'] == 8):
            Xml_GetInfoFromDataLinkGeneral(file_list, v8, InitDataLinkLayer['m2'])
        if (InitDataLinkLayer['m0'] == 2) | (InitDataLinkLayer['m0'] == 3) | (InitDataLinkLayer['m0'] == 7):
            Xml_GetInfoFromDataLink__CAN(file_list, v8, InitDataLinkLayer['m3'])
        if InitDataLinkLayer['m0'] == 4:
            Xml_GetInfoFromDataLink__VPW(file_list, v8, InitDataLinkLayer['m4'])
        if InitDataLinkLayer['m0'] == 5:
            Xml_GetInfoFromDataLinkPWM(file_list, v8, InitDataLinkLayer['m5'])
        else:
            result = 0
    else:
        result = -1002
    return result


def Xml_GetInfoFromDataLinkGeneral(file_list, fp, list2):
    v4 = fp
    v5 = 0
    Bs.MoveLibData(file_list, v4, v5, 1, list2)
    Bs.MoveLibData(file_list, v4 + 1, v5 + 8, 4, list2)
    Bs.MoveLibData(file_list, v4 + 5, v5 + 12, 4, list2)
    v7 = Bs.get_token(list2, v5 + 12, 4)
    gl.Spec_kwpid = 0
    if v7 == 0xF0000000:
        gl.Spec_kwpid = 1
    Bs.MoveLibData(file_list, v4 + 9, v5 + 16, 4, list2)
    Bs.MoveLibData(file_list, v4 + 13, v5 + 20, 1, list2)
    Bs.MoveLibData(file_list, v4 + 14, v5 + 21, 1, list2)
    Bs.MoveLibData(file_list, v4 + 15, v5 + 22, 1, list2)
    Bs.MoveLibData(file_list, v4 + 16, v5 + 23, 1, list2)
    Bs.MoveLibData(file_list, v4 + 17, v5 + 24, 1, list2)
    Bs.MoveLibData(file_list, v4 + 18, v5 + 25, 1, list2)
    Bs.MoveLibData(file_list, v4 + 19, v5 + 26, 1, list2)
    Bs.MoveLibData(file_list, v4 + 20, v5 + 27, 1, list2)
    Bs.MoveLibData(file_list, v4 + 21, v5 + 28, 1, list2)
    Bs.MoveLibData(file_list, v4 + 22, v5 + 29, 1, list2)
    Bs.MoveLibData(file_list, v4 + 23, v5 + 30, 1, list2)
    Bs.MoveLibData(file_list, v4 + 24, v5 + 32, 2, list2)
    Bs.MoveLibData(file_list, v4 + 26, v5 + 34, 2, list2)
    Bs.MoveLibData(file_list, v4 + 28, v5 + 36, 2, list2)
    Bs.MoveLibData(file_list, v4 + 30, v5 + 38, 2, list2)
    Bs.MoveLibData(file_list, v4 + 32, v5 + 40, 2, list2)
    Bs.MoveLibData(file_list, v4 + 34, v5 + 42, 2, list2)
    Bs.MoveLibData(file_list, v4 + 36, v5 + 1, 1, list2)
    Bs.MoveLibData(file_list, v4 + 37, v5 + 4, 4, list2)


def Xml_GetInfoFromDataLink__CAN(file_list, fp, list3):
    v5 = 0
    v4 = fp
    Bs.MoveLibData(file_list, v4, v5, 1, list3)
    Bs.MoveLibData(file_list, v4 + 1, v5 + 4, 4, list3)
    Bs.MoveLibData(file_list, v4 + 5, v5 + 8, 4, list3)
    v5_8 = Bs.get_token(list3, v5+8, 4)
    v7 = v4 + 9
    if v5_8 == 0xF0000000:
        gl.BackDLaddr_num = 0
        gl.BackDLaddr_num = Bs.readlist_num(file_list, v4+9, 1)
        i = 0
        v7 = v4 +10
        gl.BackDLaddrbuf = []
        while i < gl.BackDLaddr_num:
            gl.BackDLaddrbuf.append(Bs.readlist_num(file_list, v7, 4))
            i += 1
            v7 += 4
    Bs.MoveLibData(file_list, v7, v5 + 12, 1, list3)
    Bs.MoveLibData(file_list, v7 + 1, v5 + 13, 1, list3)
    Bs.MoveLibData(file_list, v7 + 2, v5 + 14, 1, list3)
    Bs.MoveLibData(file_list, v7 + 3, v5 + 15, 1, list3)
    Bs.MoveLibData(file_list, v7 + 4, v5 + 16, 1, list3)
    v10 = Bs.get_token(list3, v5 + 16, 1)
    v11 = v7 + 5
    i = 0
    while i < v10:
        gl._Can_type['_CAN_0'].append(Bs.readlist_num(file_list, v11, 4))
        v11 += 4
        i += 1
    Bs.MoveLibData(file_list, v11, v5 + 24, 1, list3)
    v13 = Bs.get_token(list3, v5 + 24, 1)
    v14 = v11 + 1
    i = 0
    while i < v13:
        gl._Can_type['_CAN_1'].append(Bs.readlist_num(file_list, v14, 4))
        v14 += 4
        i += 1
    Bs.MoveLibData(file_list, v14, v5 + 32, 2, list3)
    Bs.MoveLibData(file_list, v14 + 2, v5 + 34, 2, list3)
    Bs.MoveLibData(file_list, v14 + 4, v5 + 36, 2, list3)
    Bs.MoveLibData(file_list, v14 + 6, v5 + 38, 2, list3)
    Bs.MoveLibData(file_list, v14 + 8, v5 + 40, 2, list3)
    Bs.MoveLibData(file_list, v14 + 10, v5 + 42, 2, list3)


def Xml_GetInfoFromDataLink__VPW(file_list, fp, list4):
    v4 = fp
    v5 = 0
    Bs.MoveLibData(file_list, v4, v5, 4, list4)
    Bs.MoveLibData(file_list, v4 + 4, v5 + 4, 4, list4)
    Bs.MoveLibData(file_list, v4 + 8, v5 + 8, 4, list4)
    Bs.MoveLibData(file_list, v4 + 12, v5 + 12, 1, list4)
    Bs.MoveLibData(file_list, v4 + 13, v5 + 13, 1, list4)


def Xml_GetInfoFromDataLinkPWM(file_list, fp, list5):
    v4 = fp
    v5 = 0
    Bs.MoveLibData(file_list, v4, v5, 1, list5)
    Bs.MoveLibData(file_list, v4 + 1, v5 + 4, 4, list5)
    Bs.MoveLibData(file_list, v4 + 5, v5 + 8, 4, list5)
    Bs.MoveLibData(file_list, v4 + 9, v5 + 12, 4, list5)
    Bs.MoveLibData(file_list, v4 + 10, v5 + 13, 1, list5)
    Bs.MoveLibData(file_list, v4 + 11, v5 + 14, 2, list5)


# 设置 CAN型 引脚、波特率、帧ID、滤波ID
def Com_SetParameter_CAN(InitDataLinkLayer):
    zh_id = hex(int((Bs.get_token(InitDataLinkLayer, 4, 4)) / 0x20)).replace('0x', '').upper()
    pin1 = str(Bs.get_token(InitDataLinkLayer, 13, 1)).rjust(2, '0')
    pin2 = str(Bs.get_token(InitDataLinkLayer, 14, 1)).rjust(2, '0')
    lv_id = []
    i = 0
    while i < (len(gl._Can_type['_CAN_0'])):
        lv_id.append(hex(int(gl._Can_type['_CAN_0'][i]/0x20)).replace('0x', '').upper())
        i += 1
    # print(Bs.bytearray_to_list(InitDataLinkLayer)) # 查看引脚波特率等数据
    # 波特率猜测
    if Bs.get_token(InitDataLinkLayer, 12, 1) == 3:
        bps = '500k'
    elif Bs.get_token(InitDataLinkLayer, 12, 1) == 5:
        bps = '125K'
    else:
        bps = '250K'
        tip = '警告：车型ID ' + gl.system_id + ' 未找到合适波特率, 默认给了 250K ！'
        Bs.debug(Bs.Debug, tip)
    if len(lv_id) > 1 and zh_id == lv_id[0]:
        lv_id = lv_id[1:]
    gl._global_dict['PIN1'] = pin1
    gl._global_dict['PIN2'] = pin2
    gl._global_dict['ZH_ID'] = zh_id
    gl._global_dict['LV_ID'] = lv_id
    gl._global_dict['Bps'] = bps


# 设置 KW200 引脚、波特率、
def Com_SetParameter_GENRAL(InitDataLinkLayer):
    pin1 = str(Bs.get_token(InitDataLinkLayer, 20, 1)).rjust(2, '0')
    pin2 = str(Bs.get_token(InitDataLinkLayer, 23, 1)).rjust(2, '0')
    if (Bs.get_token(InitDataLinkLayer, 16, 4) == 0x28b0) | (Bs.get_token(InitDataLinkLayer, 16, 4) == 0x28a0):
        bps = '10400'
    elif Bs.get_token(InitDataLinkLayer, 16, 4) == 0x2580:
        bps = '9600'
    else:
        bps = '16000'
        tip = '警告：车型ID ' + gl.system_id + ' 未找到合适波特率, 默认给了 16000 ！'
        Bs.debug(Bs.Debug, tip)
    gl._global_dict['PIN1'] = pin1
    gl._global_dict['PIN2'] = pin2
    gl._global_dict['ZH_ID'] = ''
    gl._global_dict['LV_ID'] = []
    gl._global_dict['Bps'] = bps


# 设置 宽展CAN型 引脚、波特率、帧ID、滤波ID
def Com_SetParameter_LONGCAN(InitDataLinkLayer):
    zh_id = hex(int((Bs.get_token(InitDataLinkLayer, 4, 4)) / 8)).replace('0x', '').upper()
    pin1 = str(Bs.get_token(InitDataLinkLayer, 13, 1)).rjust(2, '0')
    pin2 = str(Bs.get_token(InitDataLinkLayer, 14, 1)).rjust(2, '0')
    lv_id = []
    i = 0
    while i < (len(gl._Can_type['_CAN_0'])):
        lv_id.append(hex(int(gl._Can_type['_CAN_0'][i]/ 8)).replace('0x', '').upper())
        i += 1
    # print(Bs.bytearray_to_list(InitDataLinkLayer)) # 查看引脚波特率等数据
    # 波特率猜测
    if Bs.get_token(InitDataLinkLayer, 12, 1) == 3:
        bps = '500k'
    elif Bs.get_token(InitDataLinkLayer, 12, 1) == 5:
        bps = '125K'
    else:
        bps = '250K'
        # tip = '警告：车型ID ' + gl.system_id + ' 未找到合适波特率, 默认给了 250K ！'
        # Bs.debug(Bs.Debug, tip)
    gl._global_dict['PIN1'] = pin1
    gl._global_dict['PIN2'] = pin2
    gl._global_dict['ZH_ID'] = zh_id
    gl._global_dict['LV_ID'] = lv_id
    gl._global_dict['Bps'] = bps
    if gl.InitDataLinkLayer['m0'] == 3 and gl._global_dict['ZH_ID'] == '0':
        tip = '警告：请确认是否是侦听协议：' + gl.system_id
        Bs.debug(Pa.Debug, tip)


# 获取 进入 命令
def SubSystemEnter(file_list, fp):
    v27 = Bs.readlist_num(file_list, fp, 2)
    v29 = Bs.readlist_num(file_list, fp + 2, 4)
    if v29:
        tip = '警告：车型ID ' + gl.system_id + ' SubsystemInterface.py请关注程序 242行，进入命令位置，可忽略 ！'
        Bs.debug(Bs.Debug, tip)
    v26 = Bs.readlist_num(file_list, fp + 6, 1)
    if v26:
        pass
        '''
        gl.InitSubSystem['n9'].append(gl.InitSubSystem['n2'])
        tip = '警告：车型ID ' + gl.system_id + ' SubsystemInterface.py请关注程序 247行，进入命令位置，可忽略 ！'
        Bs.debug(Bs.Debug, tip)
        '''
    v6 = fp + 8
    v23 = Bs.readlist_num(file_list, fp + 7, 1)
    v7 = 2 * v23
    v8 = v6 + v7
    v9 = GetSaveCmdConunt(file_list, gl.InitSubSystem['n2'])
    '''
    v22 = v8 + 4
    cmd_id = Xml_GetInfoFromCmdDataType(file_list, v22)
    cmd_list = Bs.get_id_data(Pa.CMD, cmd_id)
    # 进入命令-列表
    enter_cmd = Bs.get_command(cmd_list, gl.InitDataLinkLayer['m0'])
    '''


# 获取进入命令及空闲
def GetSaveCmdConunt(file_list, fp):
    v2 = 0
    v9 = Bs.readlist_num(file_list, fp, 2)
    v8 = Bs.readlist_num(file_list, fp+7, 1)
    v4 = fp + 2 * v8 + 8
    i = 0
    while i < v9:
        v8 = Bs.readlist_num(file_list, v4 + 2, 1)
        if v8 == 1:
            v2 += 1
        else:
            v2 += 0
        v4 += 4
        tmp = Xml_GetInfoFromCmdDataType(file_list, v4)
        v4 = v4 + tmp[0]
        i += 1
        cmd_str = Bs.get_id_data_from_dict(Pa._cmd_dict, tmp[1])
        # 进入命令
        cmd = Bs.get_command(cmd_str, gl.InitDataLinkLayer['m0'])
        if v9 == 1 and cmd:
            if ('3E' in cmd[0:15]) | ('3e' in cmd[0:15]):
                tip = '警告：车型ID为：' + gl.system_id + \
                      '进入命令有空值或为空闲，请确认。'
                Bs.debug(Bs.Debug, tip)
            gl._global_dict['ICMD'].append(cmd)
        if cmd == 0:
            tip = '警告：车型ID为：' + gl.system_id + \
                  '进入命令部分，命令有空值，请查看程序SubsystemInterface.py。'
            Bs.debug(Bs.Debug, tip)
            continue
        if ('3E' in cmd[0:15]) | ('3e' in cmd[0:15]):
            gl._global_dict['KCMD'].append(cmd)
        else:
            gl._global_dict['ICMD'].append(cmd)
    if not gl._global_dict['KCMD']:
        if gl.InitDataLinkLayer['m0'] == 2:
            gl._global_dict['KCMD'].append(' 02 3E 80 00 00 00 00 00')
        else:
            tip = '警告：车型ID为：' + gl.system_id + \
                  '未找到空闲命令，请查看程序SubsystemInterface.py 296行！'
            Bs.debug(Bs.Debug, tip)
    result = v2
    if result > 200:
        result = 200
    return result


# 获取退出命令
def Xml_GetInfoFromExitSys(file_list, fp):
    v3 = fp
    if file_list:
        v2_0 = Bs.readlist_reverse(file_list, v3, 4)
        num = Bs.readlist_num(file_list, v3+4, 2)
        if num and num < 100:
            v8 = 0
            v7 = v3 + 6
            while v8 < num:
                v2_8 = Bs.readlist_num(file_list, v7, 2)
                v9 = v7 + 2
                tmp = Xml_GetInfoFromCmdDataType(file_list, v9)
                v7 = tmp[0] + v9
                v8 += 1
                cmd_str = Bs.get_id_data_from_dict(Pa._cmd_dict, tmp[1])
                # 退出命令
                cmd = Bs.get_command(cmd_str, gl.InitDataLinkLayer['m0'])
                if ('3E' in cmd[0:15]) or ('3e' in cmd[0:15]) or not cmd:
                    pass
                else:
                    gl._global_dict['QCMD'].append(cmd)


# 获取 命令, 返回一个长度为2列表 [0] 为下一个偏移   [1]为命令ID
def Xml_GetInfoFromCmdDataType(file_list, fp):
    cmd = []
    cmd_offset = 0
    v30 = fp
    v34 = Bs.readlist_num(file_list, v30, 2)
    v5 = v30 + 2
    byte_total = 0
    if v34 != 2:
        if v34 > 2:
            if v34 == 3:
                formula_id = Bs.readlist_reverse(file_list, v5, 4) 
                v35 = Bs.readlist_num(file_list, v30 + 6, 1)
                v20 = 0
                v29 = v30
                while v20 < v35:
                    cmd_id1 = Bs.readlist_reverse(file_list, v29+7, 4)
                    cmd_id2 = Bs.readlist_reverse(file_list, v29+11, 4)
                    cmd_offset = str(Bs.readlist_num(file_list, v29+15, 2)).rjust(3, '0')
                    byte_total = Bs.readlist_num(file_list, v29+17, 1)
                    v29 += 11
                    v20 += 1
                    cmd.append(cmd_id1)
                    cmd.append(cmd_id2)
                v5 = v29 + 7
                return v5 - v30
            if v34 != 160:
                return v5-v30, cmd, cmd_offset, '', ''
        elif v34:
            if v34 == 1:
                formula_id = Bs.readlist_reverse(file_list, v5, 4)
                v33 = Bs.readlist_num(file_list, v30+6, 1)
                v11 = v33
                v5 = v30 + 7
                if v33:
                    i = 0
                    while i < v33:
                        cmd_id1 = Bs.readlist_reverse(file_list, v5, 4)
                        cmd_id2 = Bs.readlist_reverse(file_list, v5 + 4, 4)
                        cmd_offset = Bs.readlist_num(file_list, v5 + 8, 2)
            tip = '警告：车型ID ' + gl.system_id + ' 未找到合适 命令ID ！'
            Bs.debug(Bs.Debug, tip)
    formula_id = Bs.readlist_reverse(file_list, v5, 4)  # 公式ID
    v35 = Bs.readlist_num(file_list, v30+6, 1)
    j = 0
    v5 = v30 + 7
    while j < v35:
        cmd_id = Bs.readlist_reverse(file_list, v5, 4)  # 命令ID
        cmd_offset = Bs.readlist_num(file_list, v5+4, 2)  # 命令偏移
        v10 = v5 + 6
        v5 += 7
        byte_total = Bs.readlist_num(file_list, v10, 1)  # 控制字节数
        j += 1
        cmd.append(cmd_id)
        # 文件指针偏移，命令，命令偏移，公式id，公式控制字节总数
    return v5 - v30, cmd, cmd_offset, formula_id, byte_total


# 菜单功能选择
def FuncSelectInterface(file_list):
    gl.info_menu_num = 0
    gl.ds_menu_num = 0
    gl.rdtc_menu_num = 0
    gl.cdtc_menu_num = 0
    gl.flag = 0

    # 读码
    rdtc_fp = gl.InitSubSystem['n5']
    if rdtc_fp:
        gl.rdtc_menu_num = Bs.readlist_num(file_list, rdtc_fp + 1, 2)
        SubSystemFunRDtc(file_list, rdtc_fp)

    # 清码
    cdtc_fp = gl.InitSubSystem['n6']
    if cdtc_fp:
        gl.cdtc_menu_num = Bs.readlist_num(file_list, cdtc_fp + 1, 2)
        SubSystemFunCDtc(file_list, cdtc_fp)

    # 版本信息
    info_fp = gl.InitSubSystem['n4']
    if info_fp:
        # 版本信息菜单数，目前该程序值支持两层菜单的写入
        gl.info_menu_num = Bs.readlist_num(file_list, info_fp + 1, 2)
        SubSystemFunInfo(file_list, info_fp)

    # 读数据流
    ds_fp = gl.InitSubSystem['n7']
    if ds_fp:
        # 数据流菜单数，目前该程序值支持两层菜单的写入
        gl.ds_menu_num = Bs.readlist_num(file_list, ds_fp + 1, 2)
        SubSystemFunDS(file_list, ds_fp)

    # # 动作测试/特殊功能/其他菜单
    # if len(gl.InitSubSystem['n9']) > 0:
    #     act_fp = 0
    #     menu_choose = 0
    #     for i in range(len(gl.InitSubSystem['n9'])):
    #         name_id = Bs.readlist_reverse(file_list, gl.InitSubSystem['n9'][i] + 7, 4)
    #         name = Bs.get_id_data_from_dict(Pa._text_dict, name_id).replace('\x00', '')
    #         if '动作测试' in name:
    #             act_fp = gl.InitSubSystem['n9'][i]
    #             menu_choose = 4
    #             break
    #     if act_fp:
    #         act_chuanqi.SystemDispose(file_list, act_fp, menu_choose)


    if not rdtc_fp and not cdtc_fp and not info_fp and not ds_fp:
        tip = gl.system_id.replace('0x', '') + ' 没有读码/清码/版本信息/数据流功能！'
        Bs.debug(Pa.Debug, tip)
    # print(hex(info_fp),hex(rdtc_fp),hex(cdtc_fp),hex(ds_fp))


# 判读读码、清码、数据流、版本信息是否有多层菜单
def Xml_GetSubFunMenuInfo(file_list, fp):
    v3 = fp
    v2_fp = []
    if file_list:
        v2 = Bs.readlist_num(file_list, v3, 1)  # FF则有多层菜单
        v2_2 = Bs.readlist_num(file_list, v3+1, 2)  # 有多少层
        v2_4 = Bs.readlist_reverse(file_list, v3+3, 4)  # 数据流菜单名称
        v2_8 = Bs.readlist_reverse(file_list, v3+7, 4)  # 数据流菜单名称
        v2_12 = Bs.readlist_num(file_list, v3+11, 2)  # 返回上层做判断用
        v2_16 = Bs.readlist_reverse(file_list, v3+13, 4)
        if v2 == 255:
            v7 = v3 + 17
            v8 = 0
            while v8 < v2_2:
                v2_20 = Bs.readlist_num(file_list, v7, 4)  # 每层对应偏移
                v2_fp.append(v2_20)
                v7 += 4
                v8 += 1
        # 多层菜单判读，有多少层，菜单名称，菜单名称，数据流判断用，？未知？，每层菜单对应偏移
        return v2, v2_2, v2_4, v2_8, v2_12, v2_16, v2_fp


# 版本信息接口
def SubSystemFunInfo(file_list, fp):
    result = Xml_GetSubFunMenuInfo(file_list, fp)
    if (result[0] == 0) & (result[1] > 0):
        return 0
    if result[0] == 255:  # 有多层菜单
        v30 = 0
        fp += 17
        while v30 < result[1]:  # 菜单层数
            SubSystemFunInfo(file_list, result[6][v30])
            fp += 4
            v30 += 1
    else:
       info.Xml_GetInfoFromVerSysInfo(file_list, fp, result)


# 读码接口
def SubSystemFunRDtc(file_list, fp):
    result = Xml_GetSubFunMenuInfo(file_list, fp)
    if (result[0] == 0) & (result[1] > 0):
        return 0
    if result[0] == 255:  # 有多层菜单
        v30 = 0
        fp += 17
        while v30 < result[1]:  # 菜单层数
            SubSystemFunRDtc(file_list, result[6][v30])
            fp += 4
            v30 += 1
    else:
        rdtc.Xml_GetInfoFromFunCfgReadDtc1(file_list, fp, result)


# 清码接口
def SubSystemFunCDtc(file_list, fp):
    result = Xml_GetSubFunMenuInfo(file_list, fp)
    if (result[0] == 0) & (result[1] > 0):
        return 0
    if result[0] == 255:  # 有多层菜单
        v30 = 0
        fp += 17
        while v30 < result[1]:  # 菜单层数
            SubSystemFunCDtc(file_list, result[6][v30])
            fp += 4
            v30 += 1
    else:
        cdtc.Xml_GetClearDtcInfo(file_list, fp, result)


# 数据流接口
def SubSystemFunDS(file_list, fp):
    result = Xml_GetSubFunMenuInfo(file_list, fp)
    if (result[0] == 0) & (result[1] > 0):
        return 0
    if result[0] == 255:  # 有多层菜单
        v30 = 0
        fp += 17
        while v30 < result[1]:  # 菜单层数
            SubSystemFunDS(file_list, result[6][v30])
            fp += 4
            v30 += 1
    else:
        ds.Xml_GetInfoFromDsSysInfo(file_list, fp, result)




if __name__ == '__main__':
    # 初始化debug文件
    Bs.init_debug()
    # 初始化全局变量
    gl.init_global_dict()
    # 设置汽车id
    gl.set_value('car_id', 0xA30E)  # 0xD301   0x1c02 0xa901   0xA30E
    car_id = gl._global_dict['car_id']
    # 把FunCfg文件转成列表
    file_list = Bs.bin_to_list(Pa.FUNCFG)
    # 比对车型id获取对应配置文件指针偏移
    Xml_GetInfoFromFunCfgSystem(file_list, car_id)
    # print(gl.InitSubSystem)
    # Xml_GetInfoFromDataLinkLayer(file_list, gl.InitSubSystem['n1'], gl.InitDataLinkLayer)
    # print(gl.InitDataLinkLayer)
    # print(gl._Can_type['_CAN_0'])
    # print(gl._Can_type['_CAN_1'])
    # 获取和配置参数信息
    GetAndSetParameter(file_list, gl.InitSubSystem['n1'])
    #print(Bs.bytearray_to_list(gl.InitDataLinkLayer['m2'], 0, 50))
    # 获取到进入、空闲命令
    SubSystemEnter(file_list, gl.InitSubSystem['n2'])
    # 获取退出命令
    Xml_GetInfoFromExitSys(file_list, gl.InitSubSystem['n3'])
    # 菜单功能选择
    FuncSelectInterface(file_list)
    print(gl._global_dict)
    #print(gl.InitSubSystem)
    #print(memory_list)
    #print(hex(Bs.get_token(memory_list, 4, 4)))
