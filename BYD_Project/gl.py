
global _global_dict
global InitSubSystem
global InitDataLinkLayer
global BackDLaddr_num
global BackDLaddrbuf
global _Can_type
global Spec_kwpid

global system_id
global info_menu_num
global ds_menu_num
global rdtc_menu_num
global cdtc_menu_num
global flag
global write_path
global ds_flag
global dtc_flag
global dtc_lib
global _dtc_xml
global two_byte_dtc_lib
global one_byte_dtc_lib
global _dtc_type

dtc_lib = []
two_byte_dtc_lib = []
one_byte_dtc_lib = []
Spec_kwpid = 0
BackDLaddrbuf = []
BackDLaddr_num = 0


system_id = ''
_global_dict = {'car_id': 0, 'PIN1': '', 'PIN2': '', 'ZH_ID': '', 'LV_ID': [], 'Bps': '',
                'ICMD': [], 'KCMD': [], 'QCMD': [], 'CMD_30': []}
# n0:汽车ID  n1：参数配置，协议类型偏移  n2:进入及空闲偏移   n3：退出命令偏移
InitSubSystem = {'n0': 0, 'n1': 0, 'n2': 0, 'n3': 0, 'n4': 0, 'n5': 0, 'n6': 0, 'n7': 0, 'n8': 0, 'n9': []}
# m0:协议类型
InitDataLinkLayer = {'m0': -1, 'm1': 0, 'm2': bytearray(50), 'm3': bytearray(50), 'm4': bytearray(50),
                     'm5': bytearray(50), 'm6': bytearray(50)}

_Can_type = {'_CAN_0': [], '_CAN_1': []}

_dtc_xml = {'value': []}

_dtc_type = []



def set_value(key, value):
    _global_dict[key] = value


def get_value(key):
    try:
        return _global_dict[key]
    except KeyError:
        print('全局变量获取错误' + key)


def init_global_dict():
    global BackDLaddr_num
    global BackDLaddrbuf
    global Spec_kwpid

    # 存版本信息、数据流菜单层数
    global info_menu_num
    global ds_menu_num
    # 用来计算写入的当前菜单层
    global flag
    # 用来存写入文本路径
    global write_path
    global ds_flag
    global dtc_flag

    _global_dict['car_id'] = 0
    _global_dict['PIN1'] = ''
    _global_dict['PIN2'] = ''
    _global_dict['ZH_ID'] = ''
    _global_dict['LV_ID'] = []
    _global_dict['Bps'] = ''
    _global_dict['ICMD'] = []
    _global_dict['KCMD'] = []
    _global_dict['QCMD'] = []
    _global_dict['CMD_30'] = []

    InitSubSystem['n0'] = 0
    InitSubSystem['n1'] = 0
    InitSubSystem['n2'] = 0
    InitSubSystem['n3'] = 0
    InitSubSystem['n4'] = 0
    InitSubSystem['n5'] = 0
    InitSubSystem['n6'] = 0
    InitSubSystem['n7'] = 0
    InitSubSystem['n8'] = 0
    InitSubSystem['n9'] = []

    Spec_kwpid = 0
    BackDLaddrbuf = []
    BackDLaddr_num = 0

    InitDataLinkLayer['m0'] = -1
    InitDataLinkLayer['m1'] = 0
    InitDataLinkLayer['m2'] = bytearray(50)
    InitDataLinkLayer['m3'] = bytearray(50)
    InitDataLinkLayer['m4'] = bytearray(50)
    InitDataLinkLayer['m5'] = bytearray(50)
    InitDataLinkLayer['m6'] = bytearray(50)

    _Can_type['_CAN_0'] = []
    _Can_type['_CAN_1'] = []

    _dtc_xml['value'] = []

    info_menu_num = 0
    ds_menu_num = 0
    rdtc_menu_num = 0
    cdtc_menu_num = 0
    flag = 0
    write_path = 0
    ds_flag = 0
    dtc_flag = 0


if __name__ == '__main__':
    set_value('car_id', 0x1c02)
    print(_global_dict['car_id'])
