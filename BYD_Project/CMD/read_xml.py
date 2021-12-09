import os
from lxml import etree
import re

def get_file_path(path):
    """
    获取文件夹的 VCICfg.xml、Command.xml 文件路径
    :param path: 对应资源路径
    :return:
    """
    for root, dirs, files in os.walk(path):
        for vci_file in files:
            if vci_file == 'VCICfg.xml':
                vci_xml_path = root + '\\' + vci_file
                get_vci_information(vci_xml_path)
                for root_1, dirs_1, files_1 in os.walk(root):
                    for cmd_file in files_1:
                        if cmd_file == 'Command.xml':
                            cmd_xml_path = root_1 + '\\' + cmd_file


def get_vci_information(path):
    vci_type = ''
    xml = etree.parse(path)
    root = xml.getroot()
    communication_type = xml.xpath('//communication_type/text()')[0]
    CAN_frame_mode = xml.xpath('//CAN_frame_mode/text()')[0]
    receive_pin = xml.xpath('//receive_pin/text()')[0]
    send_pin = xml.xpath('//send_pin/text()')[0]
    ECU_baud_rate = xml.xpath('//ECU_baud_rate/text()')[0]
    CAN_filter_id = xml.xpath('//CAN_filter_id/text()')[0]
    cmd_list = xml.xpath("//command[contains(@ID, 'ENTER_CMD_')]/text()")
    if communication_type == '0x80' or communication_type == '0x85':
        if CAN_frame_mode == '0x00':
            vci_type = '标准CAN'
        elif CAN_frame_mode == '0x01':
            vci_type = '扩展CAN'
        else:
            print('Can帧模式 未编写 ：' + path)
        pass
    elif communication_type == '0x07':
        vci_type = 'KWP2000'
    else:
        print('通讯类型 未编写 ：' + path)
    pass



if __name__ == '__main__':
    path = r'D:\JBT\诊断项目\JBT_汽油车型\职教-BYD\BYD\NEW'
    get_file_path(path)
