import basics as bs
import sqlite3


def menu_to_list(path, out, st, db):
    str_dict = bs.strtable_to_dict(st)
    car_name = []
    car_type = []
    car_path = []
    car_system = []
    car_id = []
    with open(path, 'r', encoding='gbk') as f:
        for line in f.readlines():
            line = line.replace('\\\n', '')
            tmp_list = line.split('\\')
            if len(tmp_list) == 3:
                car_name.append(tmp_list[0])
                car_type.append('')
                car_system.append(tmp_list[1])
                car_path.append('NEW/' + tmp_list[2])
                num = 1
                for key in str_dict.keys():
                    num += 1
                    if tmp_list[0] == key:
                        car_id.append(str_dict[key])
                        break
                    elif num > len(str_dict.keys()):
                        car_id.append(tmp_list[0])
            elif len(tmp_list) == 4:
                car_name.append(tmp_list[0])
                car_type.append(tmp_list[1])
                car_system.append(tmp_list[2])
                car_path.append('NEW/' + tmp_list[3])
                num = 1
                for key in str_dict.keys():
                    num += 1
                    if tmp_list[1] == key:
                        car_id.append(str_dict[key])
                        break
                    elif num > len(str_dict.keys()):
                        car_id.append(tmp_list[1])
            else:
                print(line)
    # 链接数据库
    con = sqlite3.connect(db)
    # 获取数据库游标
    cur = con.cursor()
    # 输出数据库表格所有数据
    cur.execute('delete from activePath')
    for i in range(len(car_name)):
        cur.execute('insert into activePath values(?,?,?,?,?,?,?,?,?,?)',
                    ('*****************', None, car_name[i], None, None, None, car_type[i], car_system[i], car_path[i], car_id[i]))
    cur.execute('select * from activePath')
    print(cur.fetchall())
    # 提交
    con.commit()
    # 关闭数据库
    con.close()
    print(len(car_name), len(car_type), len(car_system), len(car_path), len(car_id))


if __name__ == '__main__':
    pf = r'E:\BYD_Project\BYD\file\menu_手动修改.txt'
    ot = r'E:\BYD_Project\BYD\file\db.txt'
    strtable = r'E:\BYD_Project\BYD\file\SCNA_StrTable.txt'
    db_path = r'E:\临时\悦达起亚_修改.db'
    menu_to_list(pf, ot, strtable, db_path)
