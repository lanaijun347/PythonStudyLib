"""荣威基础文件"""

text_cn = r'D:\BYD_Project\ROEWE\file\TEXT_CN.txt'
h_command = r'D:\BYD_Project\ROEWE\file\H_COMMAND.txt'
tcode_cn = r'D:\BYD_Project\ROEWE\file\TCODE_CN.txt'
ims_express = r'D:\BYD_Project\ROEWE\file\IMS_EXPRESS.txt'
dstream_cn = r'D:\BYD_Project\ROEWE\file\DSTREAM_CN.txt'
sgan = ''
ecureplace = ''
sys_config = ''
ecu_info = ''
dtcdata = ''
dtc_lib_out = ''
menu = ''
debug = ''


def choose_car_file(car_flag):
    global sgan
    global ecureplace
    global sys_config
    global ecu_info
    global dtcdata
    global dtc_lib_out
    global debug
    global menu
    if car_flag == 'rowe':
        # 荣威BIN
        sgan = r'D:\BYD_Project\ROEWE\file\ROWE_BIN\SGAN.txt'
        ecureplace = r'D:\BYD_Project\ROEWE\file\ROWE_BIN\ECUREPLACE.txt'
        sys_config = r'D:\BYD_Project\ROEWE\file\ROWE_BIN\SYS_CONFIG.txt'
        ecu_info = r'D:\BYD_Project\ROEWE\file\ROWE_BIN\FREEZEECUINFO.txt'
        dtcdata = r'D:\BYD_Project\ROEWE\file\ROWE_BIN\DTCDATA.txt'
        dtc_lib_out = r'D:\BYD_Project\ROEWE\生成协议\rowe码库'

        menu = r'D:\BYD_Project\ROEWE\file\roewe_menu.txt'
        debug = r'D:\BYD_Project\ROEWE\生成协议\roewe_debug.txt'
    else:
        #名爵BIN
        sgan = r'D:\BYD_Project\ROEWE\file\MG_BIN\SGAN.txt'
        ecureplace = r'D:\BYD_Project\ROEWE\file\MG_BIN\ECUREPLACE.txt'
        sys_config = r'D:\BYD_Project\ROEWE\file\MG_BIN\SYS_CONFIG.txt'
        ecu_info = r'D:\BYD_Project\ROEWE\file\MG_BIN\FREEZEECUINFO.txt'
        dtcdata = r'D:\BYD_Project\ROEWE\file\MG_BIN\DTCDATA.txt'
        dtc_lib_out = r'D:\BYD_Project\ROEWE\生成协议\mg码库'

        menu = r'D:\BYD_Project\ROEWE\file\mg_menu.txt'
        debug = r'D:\BYD_Project\ROEWE\生成协议\mg_debug.txt'
