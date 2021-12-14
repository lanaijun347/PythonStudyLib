"""修改荣威、名爵码库，用属性ID替换掉caption属性的值"""
import os
from xml.dom.minidom import parse


def replace_etc(menu):
    for root, dirs, files in os.walk(menu):
        for file in files:
            file_path = root + '\\' + file
            print(file_path)
            # file_path_0 = root + '\\' + 're_' +file
            # 解析XML
            domTree = parse(file_path)
            # 获取根节点
            rootNode = domTree.documentElement
            DTC_lib = rootNode.getElementsByTagName("DTC_lib")[0]
            DTCS = DTC_lib.getElementsByTagName("DTC")
            for dtc in DTCS:
                # 获取属性ID的值
                ID = dtc.getAttribute("ID")
                # 替换属性caption的值
                dtc.setAttribute("caption", ID)
            with open(file_path, 'w', encoding="utf-8") as f:
                # 缩进 - 换行 - 编码
                domTree.writexml(f, addindent="\t", newl="\n", encoding='UTF-8')
            # 由于minidom默认的writexml()函数在读取一个xml文件后，修改后重新写入如果加了newl='\n',会将原有的xml中写入多余的行
            try:
                newlines = []
                with open(file_path, "r", encoding="utf-8") as f:
                    lines = f.readlines()
                    for line in lines:
                        for char in line:
                            if char != "\t" and char != "\n" and char != " ":
                                newlines.append(line)
                                break
                with open(file_path, "w", encoding="utf-8") as f1:
                    for line in newlines:
                        f1.write(line)
            except IOError:
                print("%s文件修改出错", file_path)
    print('OVER!')



if __name__ == "__main__":
    menu = r'D:\JBT\诊断项目\JBT_汽油车型\R_021_荣威\上汽荣威_研发文档\IMS-Decoder\调试版-荣威\DiagnosisProgram\China\ROWE\DTC_lib\DTC'
    menu = r'D:\JBT\诊断项目\JBT_汽油车型\R_021_荣威\上汽荣威_研发文档\IMS-Decoder\调试版-荣威\DiagnosisProgram\China\ROWE_EV\DTC_lib\DTC'
    menu = r'D:\JBT\诊断项目\JBT_汽油车型\M_039_名爵\上汽名爵-研发文档\IMS-Decoder\调试版-名爵\DiagnosisProgram\China\MG\DTC_lib\DTC'
    menu = r'D:\JBT\诊断项目\JBT_汽油车型\M_039_名爵\上汽名爵-研发文档\IMS-Decoder\调试版-名爵\DiagnosisProgram\China\MG_EV\DTC_lib\DTC'
    replace_etc(menu)