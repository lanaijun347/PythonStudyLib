"""
    生成五菱原厂数据菜单
"""
from lxml import etree
import requests
import time
import json


def parse_vehicleconfig_xml(in_path, out_menu):
    """
    解析五菱原厂车辆配置xml，生成菜单
    :param in_path: 需要解析的xml路径
    :param out_menu: 输出菜单路径
    :return:
    """
    with open(out_menu, 'w') as f:
        tree = etree.parse(in_path)  # 将xml解析为树结构
        root = tree.getroot()  # 获得该树的树根
        for typename in root:
            brand = typename.get('brand')  # 品牌
            vehicle_model = typename.get('value')  # 车型
            for displacement in typename:
                ecu_type = displacement.get('value')  # 发动机/变速箱类型
                for year in displacement:
                    model_year = year.get('value')
                    for system in year:
                        system_en = system.get('value')
                        system_name = system.get('name')
                        # if not is_contain_chinese(system_name):  # 只翻译不包含中文的字符串
                        #     system_name = translation(system_name)
                        supplier = system.get('supplier')  # 厂商
                        code = system.get('code')  # 系统信息数据文件
                        project_local = system.get('project_local')  # 系统配置信息路径
                        suppliercode = system.get('suppliercode')  # 厂商代码
                        project_server = system.get('project_server')  # 项目服务器
                        if not project_server:
                            project_server = 'NULL'
                        displacement_server = system.get('displacement_server')  # 远程服务器
                        if not displacement_server:
                            displacement_server = 'NULL'
                        transmission_server = system.get('transmission_server')  # 传输服务器
                        if not transmission_server:
                            transmission_server = 'NULL'
                        vehicle_model = vehicle_model.replace('baojun', '宝骏').replace('BaoJun', '宝骏').replace('new', 'NEW ')
                        brand = brand.replace('baojun', '宝骏').replace('wuling', '五菱').replace('new', 'NEW ')
                        out_str = brand + '\\' + vehicle_model + '\\' + ecu_type + '\\' + model_year + '\\' + system_en + \
                                  '（' + system_name + '-' + supplier + '）\\' + code.rstrip() + '\\\n'
                        print(brand, vehicle_model, ecu_type, model_year, system_en, system_name, supplier, code,
                              suppliercode, project_server, displacement_server, transmission_server, project_local,
                              sep=';')
                        f.writelines(out_str)


def translation(str1):
    """
    有道在线翻译工具，将输入的字符串进行翻译返回
    :param str1: 需要翻译的字符串
    :return: 返回翻译结果
    """
    url = 'http://fanyi.youdao.com/translate?smartresult=dict&smartresult=rule'
    data = {}
    data['i'] = str1
    data['from'] = 'AUTO'
    data['to'] = 'AUTO'
    data['smartresult'] = 'dict'
    data['client'] = 'fanyideskweb'
    data['salt'] = '16097414142067'
    data['sign'] = '0b12bec44b13486421d5cbf67b06d80c'
    data['lts'] = '1609741414206'
    data['bv'] = '9ef72dd6d1b2c04a72be6b706029503a'
    data['doctype'] = 'json'
    data['version'] = '2.1'
    data['keyfrom'] = 'fanyi.web'
    data['action'] = 'FY_BY_CLICKBUTTION'
    headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)"
                             " Chrome/84.0.4147.125 Safari/537.36"}
    time.sleep(0.3)
    response = requests.post(url=url, data=data, headers=headers)
    html = response.content.decode()
    target = json.loads(html)
    out_str = target['translateResult'][0][0]['tgt']
    # print("翻译结果;%s" % (target['translateResult'][0][0]['tgt']))
    return out_str


def is_contain_chinese(check_str):
    """
    判断字符串中是否包含中文
    :param check_str: {str} 需要检测的字符串
    :return: {bool} 包含返回True， 不包含返回False
    """
    for ch in check_str:
        if u'\u4e00' <= ch <= u'\u9fff':
            return True
    return False


if __name__ == '__main__':
    in_path = r'D:\BYD_Project\WULING\file\business\vehicleconfig.xml'
    out_menu = r'D:\BYD_Project\WULING\file\menu.txt'
    parse_vehicleconfig_xml(in_path, out_menu)
    # translation('car')
