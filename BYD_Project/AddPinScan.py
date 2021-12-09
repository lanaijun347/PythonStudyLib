"""
    添加引脚扫描
    适用于进入命令节点下一个节点就算引脚扫描节点，且引脚扫描节点为<call_protocol>内最后一个节点。
"""

import os
from lxml import etree


def read_vcicfg(path):
    """
    读取串型vci路径
    :param path: 车型xml文件夹路径
    :return:
    """
    for root, dirs, files in os.walk(path):
        for file in files:
            if file == 'VCICfg.xml':
                vci_path = root + '\\' + file
                xml = etree.parse(vci_path)
                root = xml.getroot()
                pin_0 = xml.xpath('//receive_pin/text()')[0]
                pin_1 = xml.xpath('//send_pin/text()')[0]
                if pin_0 == pin_1:
                    replace_vci(pin_0, vci_path)


def replace_vci(pin, path):
    """
    添加引脚扫描
    :param pin: 串型主引脚
    :param path: 串型 vcicfg.xml 路径
    :return:
    """
    tmp_0 = '\t\t\t\t<!--新增功能:1.串引脚扫描-->\n'
    tmp_1 = '\t\t\t\t<param type="string" value="1"/>\n'
    replace_str = '\t\t\t\t<param type="string" value="8,9,11,13,12"/>\n '
    if pin in replace_str:
        replace_str = replace_str.replace(pin, '7')  # 默认一般都有7号角，请根据情况更改
    else:
        pass
    line_str = []
    replace_str = tmp_0 + tmp_1 + replace_str
    with open(path, 'r', encoding='utf-8') as f:
        for line in f.readlines():
            line_str.append(line)
    with open(path, 'w', encoding='utf-8') as f_out:
        i = 0
        for line in line_str:
            if (('<param type=\'command\' value=' in line) and ('</call_protocol>' in line_str[i + 1])) or (('<param type="command" value=' in line) and ('</call_protocol>' in line_str[i + 1])):
                line += replace_str
            f_out.writelines(line)
            i += 1
    print(path)


if __name__ == '__main__':
    # path = r'D:\测试\test\NEW'
    # path = r'D:\JBT\诊断项目\JBT_汽油车型\M_039_名爵\上汽名爵-研发文档\IMS-Decoder\调试版-名爵\DiagnosisProgram\China\MG_EV\NEW'
    path = r'D:\JBT\诊断项目\JBT_汽油车型\W_033_五菱\柳州五菱-研发文档\IMS-Decoder\调试版-五菱\DiagnosisProgram\China\WULING\DATA'
    read_vcicfg(path)
