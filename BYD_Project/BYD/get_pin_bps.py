import binascii
import basics as Bs


BackDLaddr_num = 0
# n0:汽车ID  n1：参数配置，协议类型偏移  n2:进入及空闲偏移   n3：退出命令偏移
InitSubSystem = {'n0': 0, 'n1': 0, 'n2': 0, 'n3': 0, 'n4': 0, 'n5': 0, 'n6': 0, 'n7': 0, 'n8': 0, 'n9': []}
# m0:协议类型
InitDataLinkLayer = {'m0': -1, 'm1': 0, 'm2': bytearray(50), 'm3': bytearray(50), 'm4': bytearray(50),
                     'm5': bytearray(50), 'm6': bytearray(50)}
_Can_type = {'_CAN_0': [], '_CAN_1': []}

_global_dict = {'car_id': 0, 'PIN1': '', 'PIN2': '', 'ZH_ID': '', 'LV_ID': [], 'Bps': '',
                'ICMD': [], 'KCMD': [], 'QCMD': [], 'CMD_30': []}


# bin文件怎转列表
def bin_to_list(file):
    out = []
    with open(file, 'rb') as f:
        while True:
            c = f.read(1)
            data = str(binascii.b2a_hex(c))[2:-1]
            if not c:
                break
            out.append(data)
    return out


# 从token中获取值
def get_token(arr, offset, num):
    try:
        list1 = []
        for i in range(num):
            list1.append(hex(arr[offset + i]).replace('0x', '').rjust(2, '0'))
        list1.reverse()
        out = ''.join(list1)
        return int(out, 16)
    except IndexError:
        print('警告：超出token范围')


# 从二进制文件列表中获取数据，反向组合，返回10进制数
def readlist_num(file_list, offset, num):
    try:
        list1 = []
        for i in range(num):
            list1.append(file_list[offset + i])
        list1.reverse()
        out = ''.join(list1)
        return int(out, 16)
    except IndexError:
        print('警告：超出列表范围')


# 获取对应车型的功能配置信息
def Xml_GetInfoFromFunCfgSystem(file_list, car_id):
    if file_list:
        i = 0
        while True:
            v11 = readlist_num(file_list, i, 4)
            if v11 == car_id:
                break
            v10 = readlist_num(file_list, i + 32, 1)
            i = i + 4 * v10 + 33
        v2 = 0
        # 汽车ID
        InitSubSystem['n0'] = readlist_num(file_list, i, 4)
        InitSubSystem['n1'] = readlist_num(file_list, i + 4, 4)
        InitSubSystem['n2'] = readlist_num(file_list, i + 8, 4)
        InitSubSystem['n3'] = readlist_num(file_list, i + 12, 4)
        InitSubSystem['n4'] = readlist_num(file_list, i + 16, 4)
        InitSubSystem['n5'] = readlist_num(file_list, i + 20, 4)
        InitSubSystem['n6'] = readlist_num(file_list, i + 24, 4)
        InitSubSystem['n7'] = readlist_num(file_list, i + 28, 4)
        InitSubSystem['n8'] = readlist_num(file_list, i + 32, 1)
        v32 = InitSubSystem['n8']
        if v32:
            v6 = i + 33
            j = 0
            while j < v32:
                InitSubSystem["n9"].append(readlist_num(file_list, v6, 4))
                v6 += 4
                j += 1


#  把列表（文件）的数据存入新列表（token）
def MoveLibData(list1, offset, buff, num, arr):
    while True:
        # 超出 arr 补 0
        if len(arr) < buff:
            arr.append(0)
        else:
            for i in range(num):
                # 超出 arr 补在末尾
                if len(arr) == buff + i:
                    arr.append(int(list1[offset + i], 16))
                else:
                    arr[buff + i] = int(list1[offset + i], 16)
            break


# 获取和配置参数信息   (文件列表，文件指针偏移InitSubSystem['n1'])
def GetAndSetParameter(file_list, fp):
    if fp:
        result = Xml_GetInfoFromDataLinkLayer(file_list, fp, InitDataLinkLayer)
        if result >= 0:
            if InitDataLinkLayer['m0'] == 1:
                Com_SetParameter_GENRAL(InitDataLinkLayer['m2'])
            elif InitDataLinkLayer['m0'] == 2:
                Com_SetParameter_CAN(InitDataLinkLayer['m3'])
            # elif InitDataLinkLayer['m0'] == 4:
            #     tip = '警告：车型ID ' + hex(_global_dict['car_id']) + ' 未编写 4 该类协议类型'
            #     debug(Debug, tip)
            # elif InitDataLinkLayer['m0'] == 5:
            #     tip = '警告：车型ID ' + hex(_global_dict['car_id']) + ' 未编写 5 该类协议类型'
            #     debug(Debug, tip)
            # elif InitDataLinkLayer['m0'] == 3 or InitDataLinkLayer['m0'] == 7:
            #     Com_SetParameter_LONGCAN(InitDataLinkLayer['m3'])
            #     if InitDataLinkLayer['m0'] == 7:
            #         tip = '警告：车型ID ' + hex(_global_dict['car_id']) + ' 未编写 7 该类协议类型'
            #         debug(Debug, tip)
            # elif InitDataLinkLayer['m0'] == 8:
            #     tip = '警告：车型ID ' + hex(_global_dict['car_id']) + ' 未编写 8 该类协议类型'
            #     debug(Debug, tip)
            # elif InitDataLinkLayer['m0'] == 6:
            #     tip = '警告：车型ID ' + hex(_global_dict['car_id']) + ' 未编写 6 该类协议类型'
            #     debug(Debug, tip)
            else:
                print('警告：未编写该协议类型，%s', InitDataLinkLayer['m0'])
    else:
        print('警告；文件指针偏移为空')


def Xml_GetInfoFromDataLinkLayer(file_list, fp, InitDataLinkLayer):
    if file_list:
        InitDataLinkLayer['m0'] = readlist_num(file_list, fp, 1)
        result = InitDataLinkLayer['m0']
        InitDataLinkLayer['m1'] = readlist_num(file_list, fp+1, 1)
        v8 = fp + 2
        if (InitDataLinkLayer['m0'] == 1) | (InitDataLinkLayer['m0'] == 6) | (InitDataLinkLayer['m0'] == 8):
            Xml_GetInfoFromDataLinkGeneral(file_list, v8, InitDataLinkLayer['m2'])
        if (InitDataLinkLayer['m0'] == 2) | (InitDataLinkLayer['m0'] == 3) | (InitDataLinkLayer['m0'] == 7):
            Xml_GetInfoFromDataLink__CAN(file_list, v8, InitDataLinkLayer['m3'])
        # if InitDataLinkLayer['m0'] == 4:
        #     Xml_GetInfoFromDataLink__VPW(file_list, v8, InitDataLinkLayer['m4'])
        # if InitDataLinkLayer['m0'] == 5:
        #     Xml_GetInfoFromDataLinkPWM(file_list, v8, InitDataLinkLayer['m5'])
        else:
            result = 0
    else:
        result = -1002
    return result

def Xml_GetInfoFromDataLinkGeneral(file_list, fp, list2):
    v4 = fp
    v5 = 0
    MoveLibData(file_list, v4, v5, 1, list2)
    MoveLibData(file_list, v4 + 1, v5 + 8, 4, list2)
    MoveLibData(file_list, v4 + 5, v5 + 12, 4, list2)
    v7 = get_token(list2, v5 + 12, 4)
    Spec_kwpid = 0
    if v7 == 0xF0000000:
        Spec_kwpid = 1
    MoveLibData(file_list, v4 + 9, v5 + 16, 4, list2)
    MoveLibData(file_list, v4 + 13, v5 + 20, 1, list2)
    MoveLibData(file_list, v4 + 14, v5 + 21, 1, list2)
    MoveLibData(file_list, v4 + 15, v5 + 22, 1, list2)
    MoveLibData(file_list, v4 + 16, v5 + 23, 1, list2)
    MoveLibData(file_list, v4 + 17, v5 + 24, 1, list2)
    MoveLibData(file_list, v4 + 18, v5 + 25, 1, list2)
    MoveLibData(file_list, v4 + 19, v5 + 26, 1, list2)
    MoveLibData(file_list, v4 + 20, v5 + 27, 1, list2)
    MoveLibData(file_list, v4 + 21, v5 + 28, 1, list2)
    MoveLibData(file_list, v4 + 22, v5 + 29, 1, list2)
    MoveLibData(file_list, v4 + 23, v5 + 30, 1, list2)
    MoveLibData(file_list, v4 + 24, v5 + 32, 2, list2)
    MoveLibData(file_list, v4 + 26, v5 + 34, 2, list2)
    MoveLibData(file_list, v4 + 28, v5 + 36, 2, list2)
    MoveLibData(file_list, v4 + 30, v5 + 38, 2, list2)
    MoveLibData(file_list, v4 + 32, v5 + 40, 2, list2)
    MoveLibData(file_list, v4 + 34, v5 + 42, 2, list2)
    MoveLibData(file_list, v4 + 36, v5 + 1, 1, list2)
    MoveLibData(file_list, v4 + 37, v5 + 4, 4, list2)


def Xml_GetInfoFromDataLink__CAN(file_list, fp, list3):
    v5 = 0
    v4 = fp
    MoveLibData(file_list, v4, v5, 1, list3)
    MoveLibData(file_list, v4 + 1, v5 + 4, 4, list3)
    MoveLibData(file_list, v4 + 5, v5 + 8, 4, list3)
    v5_8 = get_token(list3, v5+8, 4)
    v7 = v4 + 9
    if v5_8 == 0xF0000000:
        BackDLaddr_num = 0
        BackDLaddr_num = readlist_num(file_list, v4+9, 1)
        i = 0
        v7 = v4 +10
        BackDLaddrbuf = []
        while i < BackDLaddr_num:
            BackDLaddrbuf.append(readlist_num(file_list, v7, 4))
            i += 1
            v7 += 4
    MoveLibData(file_list, v7, v5 + 12, 1, list3)
    MoveLibData(file_list, v7 + 1, v5 + 13, 1, list3)
    MoveLibData(file_list, v7 + 2, v5 + 14, 1, list3)
    MoveLibData(file_list, v7 + 3, v5 + 15, 1, list3)
    MoveLibData(file_list, v7 + 4, v5 + 16, 1, list3)
    v10 = get_token(list3, v5 + 16, 1)
    v11 = v7 + 5
    i = 0
    while i < v10:
        _Can_type['_CAN_0'].append(readlist_num(file_list, v11, 4))
        v11 += 4
        i += 1
    MoveLibData(file_list, v11, v5 + 24, 1, list3)
    v13 = get_token(list3, v5 + 24, 1)
    v14 = v11 + 1
    i = 0
    while i < v13:
        _Can_type['_CAN_1'].append(readlist_num(file_list, v14, 4))
        v14 += 4
        i += 1
    MoveLibData(file_list, v14, v5 + 32, 2, list3)
    MoveLibData(file_list, v14 + 2, v5 + 34, 2, list3)
    MoveLibData(file_list, v14 + 4, v5 + 36, 2, list3)
    MoveLibData(file_list, v14 + 6, v5 + 38, 2, list3)
    MoveLibData(file_list, v14 + 8, v5 + 40, 2, list3)
    MoveLibData(file_list, v14 + 10, v5 + 42, 2, list3)


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
        tip = '警告：车型ID ' + hex(_global_dict['car_id']) + ' 未找到合适波特率, 默认给了 16000 ！'
        Bs.debug(Bs.Debug, tip)
    _global_dict['PIN1'] = pin1
    _global_dict['PIN2'] = pin2
    _global_dict['ZH_ID'] = ''
    _global_dict['LV_ID'] = []
    _global_dict['Bps'] = bps


# 设置 CAN型 引脚、波特率、帧ID、滤波ID
def Com_SetParameter_CAN(InitDataLinkLayer):
    zh_id = hex(int((Bs.get_token(InitDataLinkLayer, 4, 4)) / 0x20)).replace('0x', '').upper()
    pin1 = str(Bs.get_token(InitDataLinkLayer, 13, 1)).rjust(2, '0')
    pin2 = str(Bs.get_token(InitDataLinkLayer, 14, 1)).rjust(2, '0')
    lv_id = []
    i = 0
    while i < (len(_Can_type['_CAN_0'])):
        lv_id.append(hex(int(_Can_type['_CAN_0'][i]/0x20)).replace('0x', '').upper())
        i += 1
    # print(Bs.bytearray_to_list(InitDataLinkLayer)) # 查看引脚波特率等数据
    # 波特率猜测
    if Bs.get_token(InitDataLinkLayer, 12, 1) == 3:
        bps = '500k'
    elif Bs.get_token(InitDataLinkLayer, 12, 1) == 5:
        bps = '125K'
    else:
        bps = '250K'
        tip = '警告：车型ID ' + hex(_global_dict['car_id']) + ' 未找到合适波特率, 默认给了 250K ！'
        Bs.debug(Bs.Debug, tip)
    _global_dict['PIN1'] = pin1
    _global_dict['PIN2'] = pin2
    _global_dict['ZH_ID'] = zh_id
    _global_dict['LV_ID'] = lv_id
    _global_dict['Bps'] = bps


if __name__ == '__main__':
    file_path = r'D:\BYD_Project\WM\file\WM_FUNCFG.txt'
    file_list = bin_to_list(file_path)
    # 比对车型id获取对应配置文件指针偏移
    Xml_GetInfoFromFunCfgSystem(file_list, 0x574d)
    # 获取和配置参数信息
    GetAndSetParameter(file_list, InitSubSystem['n1'])
    print(_global_dict)
