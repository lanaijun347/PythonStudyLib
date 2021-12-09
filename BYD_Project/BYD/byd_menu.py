

# 生成去除没用菜单
def screen_BYD_menu():
    tmp = []
    ids = []
    with open(r'E:\BYD_Project\BYD\file\18.62\out.txt', 'r') as f:
        for line in f.readlines():
            if ('\\快速测试\\' in line) or ('\\常用特殊功能\\' in line) or ('\\防盗系统\\' in line) or ('\\维护保养\\' in line):
                pass
            else:
                tmp.append(line)
    for line in tmp:
        if line[-6:].replace('\\\n', '') in ids:
            pass
        else:
            ids.append(line[-6:].replace('\\\n', ''))

    with open(r'E:\BYD_Project\BYD\file\menu.txt', 'w') as f1:
        for line in tmp:
            f1.writelines(line)
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
    out_dict_menu(in_path, dict_menu)
