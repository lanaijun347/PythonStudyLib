# 荣威\名爵遍历添加DTC_DATA.bin文件用
from lxml import etree
import os
import shutil
import re


def walkFile(dtc_path, car_path, bin_path):
    """荣威、名爵遍历文件夹，将DTC_DATA.bin考入对应文件夹"""
    for file_xml in os.listdir(dtc_path):
        xml_path = os.path.join(dtc_path, file_xml)
        xml = etree.parse(xml_path)  # 读取xml文件
        x_root = xml.getroot()  # 获取根节点
        with open(xml_path, 'r') as f:
            dtc_ids = x_root.xpath('//@ID')  # 获取名为ID的所有属性
            if len(dtc_ids[0]) == 6:
                bin_file = os.path.join(bin_path, (file_xml.replace('xml', 'bin')))
                dtc_ids.append('//////')
                with open(bin_file, 'w') as b_f:
                    for dtc_id in dtc_ids:
                        b_f.writelines(dtc_id + '\n')
    for file_bin in os.listdir(bin_path):
        name = file_bin.split('.')
        for root, dirs, files in os.walk(car_path):
            for d in dirs:
                if name[0] == d:
                    new_name = file_bin.replace(d, 'DTC_DATA')  # 更名
                    path = os.path.join(root, d)  # 拼路径
                    shutil.copy(os.path.join(bin_path, file_bin), os.path.join(path, new_name))  # 拷贝
                    print(path)


def del_menu_version_and_sysid(in_path, out_path):
    """删除荣威、名爵菜单版本号和系统ID"""
    with open(in_path, 'r') as f:
        with open(out_path, 'w') as f1:
            for line in f.readlines():
                tmp = re.sub('\\\\[0-9a-zA-Z]{8}', '', line)
                f1.writelines(tmp)


if __name__ == '__main__':
    # dtc_path = r'D:\JBT\诊断项目\JBT_汽油车型\M_039_名爵\上汽名爵-研发文档\IMS-Decoder\调试版-名爵\DiagnosisProgram\China\MG\DTC_lib\DTC'
    # car_path = r'D:\JBT\诊断项目\JBT_汽油车型\M_039_名爵\上汽名爵-研发文档\IMS-Decoder\调试版-名爵\DiagnosisProgram\China\MG\NEW'
    # bin_path = r'D:\测试\BIN'
    dtc_path = r'D:\JBT\诊断项目\JBT_汽油车型\R_021_荣威\上汽荣威_研发文档\IMS-Decoder\调试版-荣威\DiagnosisProgram\China\ROWE\DTC_lib\DTC'
    car_path = r'D:\JBT\诊断项目\JBT_汽油车型\R_021_荣威\上汽荣威_研发文档\IMS-Decoder\调试版-荣威\DiagnosisProgram\China\ROWE\NEW'
    bin_path = r'D:\测试\BIN'
    walkFile(dtc_path, car_path, bin_path)
    # in_path = r'D:\JBT\诊断项目\JBT_汽油车型\M_039_名爵\上汽名爵-研发文档\Vehicle Protocol\Protocol\新版本协议\名爵菜单.txt'
    # out_path = r'D:\JBT\诊断项目\JBT_汽油车型\M_039_名爵\上汽名爵-研发文档\Vehicle Protocol\Protocol\新版本协议\名爵修改菜单.txt'
    # del_menu_version_and_sysid(in_path, out_path)
    pass
