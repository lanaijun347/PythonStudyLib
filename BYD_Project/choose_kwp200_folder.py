import os


def choose_kwp2000_path(path):
    for root, dirs, file in os.walk(path):
        if 'KWP2000ActiveType' in root:
            print(root)
    pass



if __name__ == '__main__':
    choose_kwp2000_path(r'D:\JBT\诊断项目\JBT_汽油车型\W_033_五菱\柳州五菱-研发文档\IMS-Decoder\调试版-五菱\DiagnosisProgram\China\WULING\NEW')
    pass