# 荣威运行输出程序
import ROEWE.get_menu as gm
import ROEWE.file_path as pa
import ROEWE.roewe_gl as gl
import ROEWE.diagnose_vehicle as diag
import os
import shutil


# 输出菜单
def out_menu(car_id, car_str):
    # 获取token
    token = gl.get_value('token')
    # 获取荣威和名爵的id和名称
    # car = gm.get_menu_roewe_and_mg(pa.sgan, pa.text_cn)
    # 循环执行每个车型
    print(len(car_id), car_str)
    for i in range(len(car_id)):
        # 设置车型id添加到全局字典中
        gl.set_value('car_id', car_id[i])
        gl.set_value('car_name', car_str[i])
        print(car_str[i])
        diag.DiagnoseVehicle(token)
        # 生成菜单
        # gm.DiagnoseVehicle(token)

def run_main():
    car_list = ['rowe', 'mg']
    # car_list = ['mg']   # 调试
    if os.path.exists(pa.debug):
        os.remove(pa.debug)
    if os.path.exists('.//生成协议'):
        shutil.rmtree('.//生成协议')
    if os.path.exists(pa.dtc_lib_out):
        shutil.rmtree(pa.dtc_lib_out)
    os.mkdir('.//生成协议')
    for car_name in car_list:
        if car_name == 'rowe':
            gl.g_dict['car_flag'] = 'rowe'
            # 荣威
            # 车型id
            car_id = []
            car_str = []
            # ro_dict = {'1': '350', '5': '360(1.5L)', '6': '360(1.4T)', '9': 'RX5', 'a': 'eRX5', 'b': 'ROEWE 750',
            #            'c': 'NEW 750', 'd': 'NEW 750 HYBRID', 'e': 'e50', 'f': '550', '17': 'i6', '19': 'W5',
            #            '21': 'NEW 550', '13': 'NEW 550 HYBRID','24': 'ERX5', '25': '新950', '26': 'e950', '28': 'ei6',
            #            '2b': 'RX3', '2c': 'ei5', '2d': 'RX8', '2e': 'i5', '2f': 'Marvel X', '32': 'ei6 Plus'}

            # v13.05
            # ro_dict = {'1': '350', '5': '360(1.5L)', '6': '360(1.4T)', '9': 'RX5', 'a': 'eRX5', 'b': 'ROEWE 750', 'c': 'NEW 750', 'd': 'NEW 750 HYBRID',
            #             'e': 'e50', 'f': '550', '21': 'NEW 550', '13': 'NEW 550 HYBRID', '17': 'i6', '2c': 'ei5', '2d': 'RX8', '19': 'W5', '25': '新950',
            #             '26': 'e950', '24': 'ERX5', '28': 'ei6', '2b': 'RX3', '2f': 'Marvel X', '2e': 'i5', '35': 'RX5 MAX', '36': 'EP21H', '3e': 'RX5 eMAX',
            #             '41': 'i6 MAX', '3b': 'i6 PLUS', '3c': 'RX5 PLUS', '3d': 'RX5 ePLUS', '3a': 'ei6 MAX', '44': 'CLEVER', '45': 'iMAX8', '3f': 'i5 GL'}
            # ro_dict = {'35': 'RX5 MAX', '36': 'EP21H', '3e': 'RX5 eMAX', '41': 'i6 MAX', '3b': 'i6 PLUS',
            #            '3d': 'RX5 ePLUS', '3a': 'ei6 MAX', '44': 'CLEVER', '45': 'iMAX8', '3f': 'i5 GL'}
            ro_dict = {'3c': 'RX5 PLUS'}
            for key, value in ro_dict.items():
                car_id.append(key)
                car_str.append(value)
        else:
            gl.g_dict['car_flag'] = 'mg'
            # 名爵
            # 车型id
            car_id = []
            car_str = []
            # mg_dict = {'2': 'MG5', '2a': 'MG ZS', '3': 'MG GT(1.5L)', '4': 'MG GT(1.4T)', '7': 'MG GS',
            #            '8': 'MG GS(EU)', '10': 'MG6', '11': 'MG6 EU', '12': 'MG6 EU Diesel', '14': 'MG6 MY14',
            #            '15': 'MG6 MY13', '16': 'MG6 TT', '1a': 'MG3', '1b': 'MG7 (2008)', '1c': 'MG7 (2009)',
            #            '1d': 'MG7L', '1e': 'MG3 Zero', '1f': 'MG3 EU', '20': 'MG3 Zero 2013', '23': 'NEW MG GS',
            #            '29': 'ZP11MCE3', '27': '新MG6', '30': 'MG HS', '31': 'EZS', '33': 'IP32P_CN6', '34': 'eMG6'}

            # v13.05
            mg_dict = {'2': 'MG5', '2a': 'MG ZS', '3': 'MG GT(1.5L)', '4': 'MG GT(1.4T)', '7': 'MG GS', '8': 'MG GS(EU)',
             '10': 'MG6', '11': 'MG6 EU',
             '12': 'MG6 EU Diesel', '14': 'MG6 MY14', '15': 'MG6 MY13', '16': 'MG6 TT', '1a': 'MG3', '1b': 'MG7 (2008)',
             '1c': 'MG7 (2009)',
             '1d': 'MG7L', '1e': 'MG3 Zero', '1f': 'MG3 EU', '20': 'MG3 Zero 2013', '23': 'NEW MG GS', '27': '新MG6',
             '30': 'MG HS', '31': 'EZS',
             '32': 'ei6 Plus', '34': 'eMG6', '37': 'MG ZS(EU)', '38': 'EZS(EU)', '39': 'EZS(TT)', '40': 'MG EHS',
             '42': '新MG6 MY19',
             '46': 'eMG6 MY19', '43': 'MG ZS 19', '4a': 'EZS(INDIA)', '47': 'MG EHS(EU)', '48': 'MG HS(EU)',
             '49': 'MG HS(TT)'}
            for key, value in mg_dict.items():
                car_id.append(key)
                car_str.append(value)
        print('正在执行：' + car_name + ' ...')
        # 选择对应车型的文件
        pa.choose_car_file(gl.g_dict['car_flag'])
        # car_id = ['45']  # ['d', '2b', '9', 'f']  # 调试
        # car_str = ['iMAX8']  # ['750HY', 'RX3', 'RX5', '550']  # 调试
        out_menu(car_id, car_str)
    print('程序执行完成！')


"""执行入口"""
run_main()

