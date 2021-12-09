
global g_dict
# 658740

g_dict = {'token': bytearray(37020916),  'car_id': '', 'car_name': '', 'system_id': '', 'system_names': [],
          'system_name': '', 'ZH_ID': '', 'LV_ID': '', 'exit_cmd': [], 'Version_CMD': [], 'atv_cmd': [], 'link_cmd': []
          , 'BPS': '', 'PIN1': '', 'PIN2': '', 'KW_CMD': [], 'out_path': '', 'key_cmd_s': [], 'key_cmd_r': [],
          'key_case': [], 'ds_key_cmd_s': [], 'ds_key_cmd_r': [], 'ds_key_case': [], 'ver_str': '', 'car_flag': '',
          'act_xml_str': '', 'act_cmd_str': '', 'ver_dict': {}, 'ver_byte_off': '', 'dtc_xml_str': ''
          }


def init_global():
    global g_dict
    g_dict['ZH_ID'] = ''
    g_dict['LV_ID'] = ''
    g_dict['exit_cmd'] = []
    g_dict['Version_CMD'] = []
    g_dict['BPS'] = ''
    g_dict['PIN1'] = ''
    g_dict['PIN2'] = ''
    g_dict['KW_CMD'] = []
    g_dict['out_path'] = ''
    g_dict['atv_cmd'] = []
    g_dict['link_cmd'] = []
    g_dict['key_cmd_s'] = []
    g_dict['key_cmd_r'] = []
    g_dict['key_case'] = []
    g_dict['ds_key_cmd_s'] = []
    g_dict['ds_key_cmd_r'] = []
    g_dict['ds_key_case'] = []
    g_dict['ver_str'] = ''
    g_dict['act_xml_str'] = ''
    g_dict['act_cmd_str'] = ''
    g_dict['dtc_xml_str'] = ''


def set_value(name, value):
    g_dict[name] = value


def get_value(name):
    try:
        return g_dict[name]
    except KeyError:
        print('全局变量获取错误'+name)

