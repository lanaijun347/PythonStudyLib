#  荣威\名爵自动扫描用

import basics as bs
import json
import os
from xpinyin import Pinyin
import sqlite3


def vin_auto_scan(vin_path, text_path, out_path):
    """获取荣威\名爵自动扫描匹配vin码数据"""
    vin_scan = bs.bin_to_list(vin_path)
    text_dict = bs.file_to_dict(text_path)
    out_list = []
    v21 = bs.readlist_num(vin_scan, 0, 1)
    i = 0
    while i < v21:
        v22 = bs.readlist_num(vin_scan, 4 * i + 1, 4)
        car_id = bs.readlist_reverse(vin_scan, v22, 1)
        v22 += 1
        car_name_id = bs.readlist_reverse(vin_scan, v22, 4)
        car_name = ''
        if car_name_id in text_dict.keys():
            car_name = text_dict[car_name_id]
        else:
            print('未找到车型ID: ' + car_name_id)
        v22 += 4
        v23 = bs.readlist_num(vin_scan, v22, 1)
        v22 += 1
        v16 = 0
        car_name = car_name.replace('\x00', '')
        tmp_list = []
        tmp_list.append(car_name)
        while v16 < v23:
            v25 = bs.readlist_num(vin_scan, v22, 4)
            v22 += 4
            vin_off = bs.readlist_num(vin_scan, v25, 1)
            v25 += 1
            vin_cmp_num = bs.readlist_num(vin_scan, v25, 1)
            v25 += 1
            v28 = bs.readlist_num(vin_scan, v25, 1)
            v25 += 1
            v6 = 0
            vin_list = []
            while v6 < v28:
                vin_str = bs.readlist_positive_sequence(vin_scan, v25 + 2, vin_cmp_num)
                # vin_list.append(bs.str_insert_space(vin_str, ','))
                vin_list.append(vin_str)
                v25 = v25 + vin_cmp_num + 3
                v6 += 1
            # print(car_name, vin_off, vin_cmp_num, vin_list)
            tmp_list.append(vin_off)
            tmp_list.append(vin_cmp_num)
            tmp_list.append(vin_list)
            v16 += 1
        # print(tmp_list)
        out_list.append(tmp_list)
        i += 1
    mate_vin_data(out_list, vin_scan, text_dict)


def mate_vin_data(mate_list, bin_list, text_dict):
    """生成荣威\名爵自动扫描json"""
    f = open('./tmp.txt', 'w')
    f1 = open('./rowe_json.json', 'w')
    json_list = []
    name_list = []
    for list1 in mate_list:
        f.writelines("+"*100 + '\n')
        # print("+"*100)
        tmp_list = []
        for tmp in list1:
            if type(tmp) is list:
                tmp_list.append(tmp)
        v21 = bs.readlist_num(bin_list, 0, 1)
        i = 0
        while i < v21:
            condition_dict = {}
            v22 = bs.readlist_num(bin_list, 4 * i + 1, 4)
            v22 += 1
            car_name_id = bs.readlist_reverse(bin_list, v22, 4)
            car_name = ''
            car_name_id = bs.readlist_reverse(bin_list, v22, 4)
            car_name = ''
            if car_name_id in text_dict.keys():
                car_name = text_dict[car_name_id]
            else:
                print('未找到车型ID: ' + car_name_id)
            v22 += 4
            v23 = bs.readlist_num(bin_list, v22, 1)
            v22 += 1
            v16 = 0
            car_name = car_name.replace('\x00', '')
            if car_name != list1[0]:
                i += 1
                continue
            # print(car_name, v23)
            vin_con_list = []
            condition_dict['vin_con'] = vin_con_list
            while v16 < v23:
                v25 = bs.readlist_num(bin_list, v22, 4)
                v22 += 4
                vin_off = bs.readlist_num(bin_list, v25, 1)
                v25 += 1
                vin_cmp_num = bs.readlist_num(bin_list, v25, 1)
                v25 += 1
                v28 = bs.readlist_num(bin_list, v25, 1)
                v25 += 1
                v6 = 0
                while v6 < v28:
                    vin_str = bs.readlist_positive_sequence(bin_list, v25 + 2, vin_cmp_num)
                    v25 = v25 + vin_cmp_num + 3
                    if vin_str == tmp_list[v16][0]:
                        vin_con_dict = {}
                        vin_con_dict['vin_off'] = vin_off
                        vin_con_dict['vin_num'] = vin_cmp_num
                        vin_con_dict['vin_str'] = bs.str_to_hex_insert_space(vin_str, ',')
                        vin_con_list.append(vin_con_dict)
                        # print(vin_con_list)
                        break
                    v6 += 1
                if v6 == v28:
                    break
                v16 += 1
            if v16 == v23:
                json_list.append(condition_dict)
                cmd_con_list = []
                condition_dict['cmd_con'] = cmd_con_list
                tmp_name = car_name.replace('新', 'NEW ')
                condition_dict['car_name'] = ('[' + tmp_name.replace(' ', '_') + ']').upper()
                name_list.append(condition_dict['car_name'])
                v24 = bs.readlist_num(bin_list, v22, 1)
                if v24 == 0:
                    f.writelines(repr(list1) + '\n')
                    # print(list1)
                v22 += 1
                j = 0
                while j < v24:
                    cmd_con_dict = {}
                    v25 = bs.readlist_num(bin_list, v22, 4)
                    v22 += 4
                    v26 = bs.readlist_num(bin_list, v25, 1)
                    v25 += 1
                    v27 = bs.readlist_num(bin_list, v25, 1)
                    v25 += 1
                    v29 = bs.readlist_reverse(bin_list, v25, 1)
                    v25 += 1
                    v28 = bs.readlist_num(bin_list, v25, 1)
                    v25 += 1
                    cmd_con_dict['cmd_off'] = v26
                    cmd_con_dict['cmd_and'] = int(v29, 16)
                    k = 0
                    cmd_sub_list = []
                    while k < v28:
                        v30 = bs.readlist_reverse(bin_list, v25, v27)
                        cmd_sub_list.append(int(v30, 16))
                        v25 += 1
                        # print(list1, v24, "偏移:" + repr(v26), "与上:" + repr(v29), "减去:" + v30, v28, sep=';')
                        f.writelines(repr(list1) + ';' + repr(v24) + ';' + repr(v26) + ';' + repr(v29) + ';'
                                     + repr(v30) + ';' + repr(v28) + '\n')
                        k += 1
                    cmd_con_dict['cmd_sub'] = cmd_sub_list
                    cmd_con_list.append(cmd_con_dict)
                    j += 1
                    if j == v24:
                        f.writelines('-' * 50 + '\n')
                        # print('-' * 50)
                # print(cmd_con_list)
            i += 1
    print(len(json_list))
    print(json_list)
    out_json = json.dumps(json_list)
    f1.writelines(out_json + '\n')
    f.close()
    f1.close()
    os.remove('./tmp.txt')
    print(name_list)


def generate_system_db(name_list, in_path):
    """菜单中文转拼音,生成json中存在的车型名称,用于更改数据库systemId"""
    c_py = Pinyin()
    menu_list = []
    with open(in_path, 'r') as f:
        for line in f.readlines():
            list1 = line.split('\\')
            name_str = list1[0]
            system_str = list1[1].replace('/', '_')
            out_name = name_str.replace('新', 'NEW ')
            out_name = out_name.replace(' ', '_')
            out_name = '[' + out_name + ']'
            for srt1 in name_list:
                if srt1 == out_name:
                    name_py = c_py.get_pinyin(system_str)
                    s = name_py.split('-')
                    ss = ''
                    for str1 in s:
                        if str1[0] in 'abcdefghijklmnopqrstuvwxyz':
                            ss += str1[0].upper()
                            continue
                        ss += str1
                    out = 'NEW/' + name_str.upper() + '/' + ss
                    tmp = srt1 + '-' + system_str + '-' + out
                    if tmp not in menu_list:
                        menu_list.append(tmp)
    car = []
    system = []
    path = []
    for line in menu_list:
        list2 = line.split('-')
        if list2[0].upper() not in car:
            car.append(list2[0].upper())
            print(list2[0].upper())
        system.append(list2[1])
        path.append(list2[2])


if __name__ == '__main__':
    # vin_path = r'D:\BYD_Project\ROEWE\file\VIN_SCAN.txt'
    # text_path = r'D:\BYD_Project\ROEWE\file\TEXT_CN.txt'
    # out_path = r'D:\BYD_Project\ROEWE\file\vin_json.txt'
    # vin_auto_scan(vin_path, text_path, out_path)
    name_list = ['[ROEWE_750]', '[MG_750]', '[NEW_750]', '[NEW_750]', '[NEW_750_HYBRID]', '[E950]', '[NEW_950]', '[MG6]', '[550]', '[MG6_EU]', '[MG6_EU]', '[MG6_EU]', '[MG6_EU]', '[MG6_EU]', '[MG6_EU]', '[MG6_EU]', '[MG6_EU]', '[MG6_EU]', '[NEW_550]', '[NEW_550_HYBRID]', '[MG6_EU_DIESEL]', '[MG6_MY13]', '[350]', '[MG5]', '[MG_GT(1.5L)]', '[MG_GT(1.4T)]', '[360(1.5L)]', '[360(1.4T)]', '[MG3_ZERO]', '[E50]', '[W5]', '[MG3_EU]', '[MG3_ZERO_2013]', '[MG6_MY14]', '[MG6_EU_MY14]', '[MG6_TT_MY15]', '[MG6_TT]', '[MG_HS]', '[ERX5]', '[ERX5]', '[NEW_MG_GS]', '[MG_GS]', '[RX5]', '[MG_GS(TT)]', '[MG_GS(EU)]', '[MG_GS(EU)]', '[MG_GS(EU)]', '[MG_GS(EU)]', '[MG7_(2008)]', '[MG7_(2009)]', '[MG7L]', '[MG3]', '[MG3_THAILAND]', '[NEW_550_HYBRID_MY15]', '[NEW_550_HYBRID_MY16]', '[NEW_550_MY15]', '[EI6]', '[EI6_PLUS]', '[I6]', '[EMG6]', '[IP32P_CN6]', '[NEW_MG6]', '[EZS]', '[MG_ZS]', '[MG_ZS(EU)]', '[MG_ZS(TT)]', '[RX3]', '[ZP11MCE3]', '[EI5]', '[MARVEL_X]', '[RX8]', '[I5]']
    in_path = r'D:\JBT\诊断项目\JBT_汽油车型\R_021_荣威\上汽荣威_研发文档\Vehicle Protocol\Protocol\新版本协议\荣威菜单.txt'
    in_path = r'D:\JBT\诊断项目\JBT_汽油车型\M_039_名爵\上汽名爵-研发文档\Vehicle Protocol\Protocol\新版本协议\名爵菜单.txt'
    generate_system_db(name_list, in_path)
    pass
