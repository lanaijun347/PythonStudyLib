"""输出文件"""
import file_path as Pa
import gl
import basics as Bs
import info
import SubsystemInterface as sub
import os
import shutil


# 初始化写入文件夹，存在则删除
def init_write_file(path):
    if os.path.exists(path):
        shutil.rmtree(path)


# 写入进入命令方式
def write_in_cmd_list(cmd_list, symbol, zh_id='', lv_id=''):
    if not cmd_list:
        return ''
    out_str = ''
    tmp = symbol
    for i in range(len(cmd_list)):
        if ('27 01' in cmd_list[i]) | ('27 02' in cmd_list[i]):
            symbol = '  $~~ '
            tip = gl.system_id + ' 激活有加密！'
            Bs.debug(Pa.Debug, tip)
        else:
            symbol = tmp
        cmd_str = symbol + 'REQ' + str(i).rjust(3, '0') + ':' + zh_id + cmd_list[i] + 5*' ' + \
                  symbol + 'ANS' + str(i).rjust(3, '0') + ':' + lv_id + cmd_list[i] + '\n'
        out_str += cmd_str
    return out_str


# 写入进入命令方式
def write_cmd_list(cmd_list, symbol):
    zh_id = gl._global_dict['ZH_ID']
    lv_id = gl._global_dict['LV_ID']
    if not lv_id:
        lv_id1 = ''
    else:
        lv_id1 = lv_id[0]
    if not cmd_list:
        return ''
    out_str = ''
    for i in range(len(cmd_list)):
        cmd_str = symbol + 'REQ' + str(i).rjust(3, '0') + ':' + zh_id + cmd_list[i] + 5*' ' + \
                  symbol + 'ANS' + str(i).rjust(3, '0') + ':' + lv_id1 + cmd_list[i] + '\n'
        out_str += cmd_str
    return out_str


# 写入版本信息字符串
def write_info_data(info_tuple):
    total = info_tuple[0]
    ans = info_tuple[2]
    names = info_tuple[3]
    offset = info_tuple[4]
    formula = info_tuple[5]
    name_lens = []
    symbol = '  $%  '
    out_str = ''
    for name in names:
        name_len = len(name.encode('gbk'))
        name_lens.append(name_len)
    name_max_len = max(name_lens)
    for i in range(total):
        n_len = name_max_len - name_lens[i] + 5
        data = symbol + str(i).rjust(3, '0') + '.' + names[i] + ' '*n_len + 2*symbol + 'ANS' + ans[i] + '.' + \
               'BYTE' + offset[i] + symbol + formula[i] + '\n'
        out_str += data
    return out_str


# 写入输出文件
def write_file(path):
    if not os.path.exists(path):
        os.mkdir(path)
    path = path + '/' + hex(gl._global_dict['car_id']).replace('0x', '').rjust(4, '0') + '.asm'
    gl.write_path = path
    w_model = 'w'
    fen_hang = ';' + 150 * '*' + '\n\n'
    head_0 = '\n' + '    车型ID：' + hex(gl._global_dict['car_id']).replace('0x', '').rjust(4, '0') + '\n\n' + \
             '    模拟：协议模拟-->' + hex(gl._global_dict['car_id']).replace('0x', '').rjust(4, '0') + '\n\n' + fen_hang
    head_1 = '进入命令:\n\n'
    head_2 = '空闲命令:\n\n'
    head_3 = '退出命令:\n\n'
    symbol_0 = '  $~  '
    symbol_1 = '  $!  '
    symbol_2 = '  $@  '
    with open(path, w_model, encoding='gbk') as f:
        f.writelines(head_0)
        # 判断是否有多个 滤波ID
        id_num = len(gl._global_dict['LV_ID'])
        i = 0
        # CAN型协议 写入进入命令(有滤波ID才会被认为是 CAN型）
        if id_num > 0:
            # while i < id_num:
            lv_str = ''
            for lv_id in gl._global_dict['LV_ID']:
                lv_str += lv_id + ','
            if lv_str:
                lv_str = '$~' + lv_str[:-1]
            f.writelines('    通讯线: ' + '$~' + gl._global_dict['PIN1'] +
                         '$~' + gl._global_dict['PIN2'] + '$~' + gl._global_dict['Bps'] + lv_str + '\n\n')
            f.writelines(head_1)
            icmd_str = write_in_cmd_list(gl._global_dict['ICMD'], symbol_0,
                                     gl._global_dict['ZH_ID'], gl._global_dict['LV_ID'][i])
            f.writelines(icmd_str + '\n')
            # 写入空闲
            f.writelines(head_2)
            kcmd_str = write_in_cmd_list(gl._global_dict['KCMD'], symbol_1,
                                     gl._global_dict['ZH_ID'], gl._global_dict['LV_ID'][i])
            f.writelines(kcmd_str + '\n')
            # 写入退出命令
            f.writelines(head_3)
            qcmd_str = write_in_cmd_list(gl._global_dict['QCMD'], symbol_2,
                                     gl._global_dict['ZH_ID'], gl._global_dict['LV_ID'][i])
            f.writelines(qcmd_str + '\n\n')
            f.writelines(fen_hang)
            i += 1
        # 串行写入进入命令
        else:
            f.writelines('    通讯线: ' + '$~' + gl._global_dict['PIN1'] +
                         '$~' + gl._global_dict['PIN2'] + '$~' + gl._global_dict['Bps'] + '\n\n')
            if gl._global_dict['byte_time'] != 0:
                time_str = '$JSON{"P4":' + str(gl._global_dict['byte_time']) + "}\n\n"
                f.writelines(time_str)
            if len(gl._global_dict['scan_pin']):
                tip = '警告：' + ' 注意引脚扫描节点格式是否正确：' + gl.system_id
                Bs.debug(Pa.Debug, tip)
                pin_str = '<VCI>\n\t<ACTIVE_ADDNODE type="0" num="0">\n\t<param type="string" value="1"/>\n'
                pin_str1 = ''
                for pin in gl._global_dict['scan_pin']:
                   if pin == int(gl._global_dict['PIN1'], 16):
                       pass
                   else:
                       pin_str1 += str(pin) + ','
                pin_str = pin_str + "\t<param type=\"string\" value="
                pin_str += "\"" + pin_str1[0:-1] + "\"/>\n\t</ACTIVE_ADDNODE>\n</VCI>\n\n"
                f.writelines(pin_str)

            f.writelines(head_1)
            icmd_str = write_cmd_list(gl._global_dict['ICMD'], symbol_0)
            f.writelines(icmd_str + '\n')
            # 写入空闲
            f.writelines(head_2)
            kcmd_str = write_cmd_list(gl._global_dict['KCMD'], symbol_1)
            f.writelines(kcmd_str + '\n')
            # 写入退出命令
            f.writelines(head_3)
            qcmd_str = write_cmd_list(gl._global_dict['QCMD'], symbol_2)
            f.writelines(qcmd_str + '\n\n')
            f.writelines(fen_hang)


# 初始化输出目录文件
init_write_file(Pa.out)
# 初始化debug文件
Bs.init_debug()
Bs.init_debug(Pa.no_dtc_lib)
Bs.init_debug(Pa.have_dtc_lib)
Bs.init_debug(Pa.Debug)
Bs.init_debug(Pa.rdtc_type)
# 加载发文件命令，名称等文件，存成字典形式
Pa.init_data_file()
# 输入菜单ID
id1 = Bs.return_menu_id(Pa.menu_ids)
A = len(id1)
# id1 = [0x1068]  # 0xD301, 0x1c02, 0xa901, 0xA30E
# id1 = [0x1b07]  # 0xD301, 0x1c02, 0xa901, 0xA30E
# id1 = [0xa30e, 0xa20c]  # 非80K线
# id1 = [0x261e]
# id1 = [0x0964]
# id1 = [0x06a0]
yu_id = []
tmp_11 = []
# 剔除老系统
for ii in id1:
    if ii > 0xf000:
        yu_id.append(hex(ii))
    else:
        tmp_11.append(ii)
id1 = tmp_11
# 把FunCfg文件转成列表
file_list = Bs.bin_to_list(Pa.FUNCFG)
# 把SYSSCAN文件转成列表
sysscan_list = Bs.bin_to_list(Pa.SYSSCAN)
i = 0
for idd in id1:
    i += 1
    # 初始化全局变量
    gl.init_global_dict()
    # 设置汽车id
    gl.set_value('car_id', idd)
    car_id = gl._global_dict['car_id']
    gl.system_id = hex(idd).replace('0x', '') .rjust(4, '0')
    print('正在执行-->' + hex(car_id).replace('0x', '').rjust(4, '0'))
    # 加载起始数据（引脚扫描数据）
    sub.Xml_GetFileStartData(sysscan_list, car_id)
    # 比对车型id获取对应配置文件指针偏移
    sub.Xml_GetInfoFromFunCfgSystem(file_list, car_id)
    # 获取和配置参数信息
    sub.GetAndSetParameter(file_list, gl.InitSubSystem['n1'])
    # 获取到进入、空闲命令
    sub.SubSystemEnter(file_list, gl.InitSubSystem['n2'])
    # 获取退出命令
    sub.Xml_GetInfoFromExitSys(file_list, gl.InitSubSystem['n3'])
    # 写入进入命令、空闲等信息
    write_file(Pa.out)
    # 菜单功能选择
    sub.FuncSelectInterface(file_list)
    # 写入30帧
    if gl.InitDataLinkLayer['m0'] == 2:
        path = Pa.out + '/' + hex(gl._global_dict['car_id']).replace('0x', '').rjust(4, '0') + '.asm'
        Bs.write_fc_cmd(gl._global_dict['CMD_30'], path)

    print(hex(gl._global_dict['car_id']).replace('0x', '').rjust(4, '0') + '  完成，剩余系统数：' + str(len(id1) - i)
          + '!')
print('剩余系统:' + repr(yu_id))

# 故障码库
Bs.init_debug(Pa.dtc_link)
Bs.init_debug(Pa.dtc_link_2byte)
with open(Pa.dtc_link, 'w') as ff:
    for line in gl.dtc_lib:
        ff.writelines(line + '\n')
with open(Pa.dtc_link_2byte, 'w') as ff:
    for line in gl.two_byte_dtc_lib:
        ff.writelines(line + '\n')
with open(Pa.dtc_link_1byte, 'w') as ff:
    for line in gl.one_byte_dtc_lib:
        ff.writelines(line + '\n')
with open(Pa.rdtc_type, 'w') as f:
    for line in gl._dtc_type:
        f.writelines(line + '\n')

print('OVER!!!')
