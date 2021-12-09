
global g_dict

g_dict = {
    'menu_path': '',  # 菜单路径
    'pin_and_baud': '',  # 引脚和波特率
    'protocol_type': '',  # 协议类型
    'frame_id': '',   # 帧ID
    'reply_id': '',   # 回复ID
    'fun_id': '',  # 功能ID
    'default_cmd': '',  # 默认激活命令
    'extend_cmd': '',  # 扩展会话命令
    'program_cmd': '',  # 编程会话命令
    'ecu_address': '',  # 串型ECU地址
    'init_connect': '',  # 串型帧头
    'other_connect': '',  # 串型其他帧头
    'dtc_lib': '',  # 写入的码库信息
    'freeze_dtc_byte': '',  # 冻结帧替换字节个数

    'strTable': {},  # 公式字符串
    'strTable_num': 0  # 公式字符串计算器
}


def init_global():
    global g_dict
    g_dict['menu_path'] = ''
    g_dict['protocol_type'] = ''
    g_dict['frame_id'] = ''
    g_dict['reply_id'] = ''
    g_dict['fun_id'] = ''
    g_dict['default_cmd'] = ''
    g_dict['extend_cmd'] = ''
    g_dict['program_cmd'] = ''
    g_dict['ecu_address'] = ''
    g_dict['init_connect'] = ''
    g_dict['other_connect'] = ''
    g_dict['dtc_lib'] = ''
    g_dict['freeze_dtc_byte'] = ''
