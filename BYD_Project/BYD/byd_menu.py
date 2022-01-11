

# 生成去除没用菜单
def screen_BYD_menu(in_path, out_path):
    tmp = []
    ids = []
    with open(in_path, 'r') as f:
        for line in f.readlines():
            if ('\\快速测试\\' in line) or ('\\常用特殊功能\\' in line) or ('\\防盗系统\\' in line) or ('\\维护保养\\' in line) \
                    or('\\扫描全车系统\\' in line) or('\\扫描全车故障码\\' in line) or ('\\ADAS校准功能\\' in line) or\
                    ('\\系统扫描\\' in line):
                pass
            else:
                tmp.append(line)
    for line in tmp:
        if line[-6:].replace('\\\n', '') in ids:
            pass
        else:
            ids.append(line[-6:].replace('\\\n', ''))

    with open(out_path, 'w') as f1:
        for line in tmp:
            f1.writelines(line.replace('系统选择\\', ''))
    print(len(ids))
    print(ids)


# 生成大于0xf000的菜单
def screen_0xf00(in_path, out_path):
    out_id = []
    out_str = []
    with open(in_path, 'r') as f:
        for line in f.readlines():
            tmp_id = line[-6:].replace('\\\n', '')
            int_id = int(tmp_id, 16)
            if int_id > 0xf000:
                out_str.append(line)
                if tmp_id not in out_id:
                    out_id.append(tmp_id)
    with open(out_path, 'w') as f1:
        for line in out_str:
            f1.writelines(line)

    print(len(out_id), out_id)


# 生成自动扫描路径，字典形式
def out_dict_menu(in_path, out_path):
    key = []
    value = []
    with open(in_path, 'r') as f:
        for line in f.readlines():
            tmp = line[-6:].replace('\\\n', '').upper()
            if tmp not in key:
                key.append(('0x' + tmp.lower()))
                tmp1 = 'NEW/' + tmp
                value.append(tmp1)
    out = dict(zip(value, key))
    with open(out_path, 'w') as f1:
        f1.writelines(str(out))


if __name__ == '__main__':
    in_path = r'E:\BYD_Project\BYD\file\menu.txt'
    out_path = r'E:\BYD_Project\BYD\file\menu_0xf000.txt'
    dict_menu = r'E:\BYD_Project\BYD\file\menu_dict.txt'
    # screen_0xf00(in_path, out_path)
    in_path = r'D:\JBT\常开\比亚迪\解析_v18.90\menu\menu.txt'
    out_path = r'D:\JBT\常开\比亚迪\解析_v18.90\menu\menu_new.txt'
    in_path = r'D:\JBT\常开\比亚迪\EV_FLYER\解析_v18.90\menu\menu_EV.txt'
    out_path = r'D:\JBT\常开\比亚迪\EV_FLYER\解析_v18.90\menu\menu_EV_NEW.txt'
    in_path = r'D:\JBT\常开\北京汽车\BAIC\解析_v11.50\menu\menu.txt'
    out_path = r'D:\JBT\常开\北京汽车\BAIC\解析_v11.50\menu\menu_new.txt'
    in_path = r'D:\JBT\常开\吉利\HAOQING\解析_v21.95\menu\menu.txt'
    out_path = r'D:\JBT\常开\吉利\HAOQING\解析_v21.95\menu\menu_new.txt'
    in_path = r'D:\xiaolan\PythonStudyLib\BYD_Project\NETA\file\menu.txt'
    out_path = r'D:\xiaolan\PythonStudyLib\BYD_Project\NETA\file\menu_new.txt'
    in_path = r'D:\JBT\常开\xinnengyuan\朋克新能源\EV_POCCO\解析_V10.01\menu\menu.txt'
    out_path = r'D:\JBT\常开\xinnengyuan\朋克新能源\EV_POCCO\解析_V10.01\menu\menu_new.txt'
    in_path = r'D:\JBT\常开\xinnengyuan\大运新能源\EV_DAYUN\解析_V10.01\menu\menu.txt'
    out_path = r'D:\JBT\常开\xinnengyuan\大运新能源\EV_DAYUN\解析_V10.01\menu\menu_new.txt'
    in_path = r'D:\JBT\常开\xinnengyuan\零跑系能源\EV_LEAP\解析_v10.01\menu\menu.txt'
    out_path = r'D:\JBT\常开\xinnengyuan\零跑系能源\EV_LEAP\解析_v10.01\menu\menu_new.txt'
    in_path = r'D:\JBT\常开\xinnengyuan\瑞驰新能源\EV_RUICHI\解析_v10.01\menu\menu.txt'
    out_path = r'D:\JBT\常开\xinnengyuan\瑞驰新能源\EV_RUICHI\解析_v10.01\menu\menu_new.txt'
    in_path = r'D:\JBT\常开\xinnengyuan\塞力斯新能源\EV_SERES\解析_v10.01\menu\menu.txt'
    out_path = r'D:\JBT\常开\xinnengyuan\塞力斯新能源\EV_SERES\解析_v10.01\menu\menu_new.txt'
    in_path = r'D:\JBT\常开\xinnengyuan\速达新能源\EV_SUDA\解析_v10.01\menu\menu.txt'
    out_path = r'D:\JBT\常开\xinnengyuan\速达新能源\EV_SUDA\解析_v10.01\menu\menu_new.txt'
    in_path = r'D:\JBT\常开\xinnengyuan\御捷新能源\EV_YOGOMO\解析_v10.01\menu\menu.txt'
    out_path = r'D:\JBT\常开\xinnengyuan\御捷新能源\EV_YOGOMO\解析_v10.01\menu\menu_new.txt'
    screen_BYD_menu(in_path, out_path)
    # out_dict_menu(in_path, dict_menu)
