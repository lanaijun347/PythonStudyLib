import basics as Bs
global _ds_dict
global _text_dict
global _cmd_dict
global _formula_dict

_ds_dict = {}
_text_dict = {}
_cmd_dict = {}
_formula_dict = {}

# # 比亚迪文本
# SYSSCAN = r'D:\BYD_Project\BYD\file\SYSSCAN.txt'
# FUNCFG = r'D:\BYD_Project\BYD\file\FLYER_FUNCFG.txt'
# Debug = './file/debug.txt'
# CMD = r'D:\BYD_Project\BYD\file\H_COMMAND.txt'
# TEXT = r'D:\BYD_Project\BYD\file\TEXT_CN.txt'
# DS = r'D:\BYD_Project\BYD\file\DSTREAM_CN.txt'
# Formula = r'D:\BYD_Project\BYD\file\IMS_EXPRESS.txt'
# out = r'./file/比亚迪协议'
# menu_ids = r'D:\BYD_Project\BYD\file\menu.txt'
#
# # 码库
# dtc_link_2byte = r'D:\BYD_Project\BYD\file\码库\dtc_link_2byte.txt'
# dtc_link = r'D:\BYD_Project\BYD\file\码库\dtc_link.txt'
# TCODE = r'D:\BYD_Project\BYD\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\BYD_Project\BYD\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\BYD_Project\BYD\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\BYD_Project\BYD\file\码库\have_dtc_lib.txt'  # 有码库系统

# 上汽大通文本
# SYSSCAN = r'D:\BYD_Project\DATONG\file\SYSSCAN.txt'
# FUNCFG = r'D:\BYD_Project\DATONG\file\MAXUS_FUNCFG.txt'
# Debug = r'D:\BYD_Project\DATONG\file\debug.txt'
# CMD = r'D:\BYD_Project\DATONG\file\H_COMMAND.txt'
# TEXT = r'D:\BYD_Project\DATONG\file\TEXT_CN.txt'
# DS = r'D:\BYD_Project\DATONG\file\DSTREAM_CN.txt'
# Formula = r'D:\BYD_Project\DATONG\file\IMS_EXPRESS.txt'
# out = r'D:\BYD_Project\DATONG\file\上汽大通协议'
# menu_ids = r'D:\BYD_Project\DATONG\file\menu.txt'
#
# # 码库
# dtc_link_2byte = r'D:\BYD_Project\DATONG\file\码库\dtc_link_2byte.txt'
# dtc_link = r'D:\BYD_Project\DATONG\file\码库\dtc_link.txt'
# TCODE = r'D:\BYD_Project\DATONG\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\BYD_Project\DATONG\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\BYD_Project\DATONG\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\BYD_Project\DATONG\file\码库\have_dtc_lib.txt'  # 有码库系统

# 一汽奔腾
# SYSSCAN = r'D:\BYD_Project\BenTeng\file\SYSSCAN.txt'
# FUNCFG = r'D:\BYD_Project\BenTeng\file\YQJC_FUNCFG.txt'
# Debug = r'D:\BYD_Project\BenTeng\file\debug.txt'
# CMD = r'D:\BYD_Project\BenTeng\file\H_COMMAND.txt'
# TEXT = r'D:\BYD_Project\BenTeng\file\TEXT_CN.txt'
# DS = r'D:\BYD_Project\BenTeng\file\DSTREAM_CN.txt'
# Formula = r'D:\BYD_Project\BenTeng\file\IMS_EXPRESS.txt'
# out = r'D:\BYD_Project\BenTeng\file\协议'
# menu_ids = r'D:\BYD_Project\BenTeng\file\menu\E01_全新三代B70.txt'
# out = r'D:\BYD_Project\BenTeng\file\一汽红旗协议'
# menu_ids = r'D:\BYD_Project\BenTeng\file\menu\一汽红旗去除旧版menu.txt'

# 码库
# dtc_link_2byte = r'D:\BYD_Project\BenTeng\file\码库\dtc_link_2byte.txt'
# dtc_link = r'D:\BYD_Project\BenTeng\file\码库\dtc_link.txt'
# TCODE = r'D:\BYD_Project\BenTeng\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\BYD_Project\BenTeng\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\BYD_Project\BenTeng\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\BYD_Project\BenTeng\file\码库\have_dtc_lib.txt'  # 有码库系统


# # 广汽传祺
# SYSSCAN = r'D:\BYD_Project\CHUANQI\file\SYSSCAN.txt'
# FUNCFG = r'D:\BYD_Project\CHUANQI\file\TRUMPCHI_FUNCFG.txt'
# Debug = r'D:\BYD_Project\CHUANQI\file\debug.txt'
# CMD = r'D:\BYD_Project\CHUANQI\file\H_COMMAND.txt'
# TEXT = r'D:\BYD_Project\CHUANQI\file\TEXT_CN.txt'
# DS = r'D:\BYD_Project\CHUANQI\file\DSTREAM_CN.txt'
# Formula = r'D:\BYD_Project\CHUANQI\file\IMS_EXPRESS.txt'
# out = r'D:\BYD_Project\CHUANQI\file\协议'
# menu_ids = r'D:\BYD_Project\CHUANQI\file\menu\menu_0.txt'
#
# # 码库
# dtc_link_2byte = r'D:\BYD_Project\CHUANQI\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\BYD_Project\CHUANQI\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\BYD_Project\CHUANQI\file\码库\dtc_link.txt'
# TCODE = r'D:\BYD_Project\CHUANQI\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\BYD_Project\CHUANQI\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\BYD_Project\CHUANQI\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\BYD_Project\CHUANQI\file\码库\have_dtc_lib.txt'  # 有码库系统

# 众泰
# SYSSCAN = r'D:\BYD_Project\ZHONGTAI\file\SYSSCAN.txt'
# FUNCFG = r'D:\BYD_Project\ZHONGTAI\file\ZHONGTAI_FUNCFG.txt'
# Debug = r'D:\BYD_Project\ZHONGTAI\file\debug.txt'
# CMD = r'D:\BYD_Project\ZHONGTAI\file\H_COMMAND.txt'
# TEXT = r'D:\BYD_Project\ZHONGTAI\file\TEXT_CN.txt'
# DS = r'D:\BYD_Project\ZHONGTAI\file\DSTREAM_CN.txt'
# Formula = r'D:\BYD_Project\ZHONGTAI\file\IMS_EXPRESS.txt'
# out = r'D:\BYD_Project\ZHONGTAI\file\协议'
# menu_ids = r'D:\BYD_Project\ZHONGTAI\file\menu_EV.txt'

# 码库
# dtc_link_2byte = r'D:\BYD_Project\ZHONGTAI\file\码库\dtc_link_2byte.txt'
# dtc_link = r'D:\BYD_Project\ZHONGTAI\file\码库\dtc_link.txt'
# TCODE = r'D:\BYD_Project\ZHONGTAI\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\BYD_Project\ZHONGTAI\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\BYD_Project\ZHONGTAI\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\BYD_Project\ZHONGTAI\file\码库\have_dtc_lib.txt'  # 有码库系统

# 众泰
# SYSSCAN = r'D:\BYD_Project\LIFAN\file\SYSSCAN.txt'
# FUNCFG = r'D:\BYD_Project\LIFAN\file\LIFAN_FUNCFG.txt'
# Debug = r'D:\BYD_Project\LIFAN\file\debug.txt'
# CMD = r'D:\BYD_Project\LIFAN\file\H_COMMAND.txt'
# TEXT = r'D:\BYD_Project\LIFAN\file\TEXT_CN.txt'
# DS = r'D:\BYD_Project\LIFAN\file\DSTREAM_CN.txt'
# Formula = r'D:\BYD_Project\LIFAN\file\IMS_EXPRESS.txt'
# out = r'D:\BYD_Project\LIFAN\file\协议'
# menu_ids = r'D:\BYD_Project\LIFAN\file\menu_EV.txt'

# 码库
# dtc_link_2byte = r'D:\BYD_Project\LIFAN\file\码库\dtc_link_2byte.txt'
# dtc_link = r'D:\BYD_Project\LIFAN\file\码库\dtc_link.txt'
# TCODE = r'D:\BYD_Project\LIFAN\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\BYD_Project\LIFAN\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\BYD_Project\LIFAN\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\BYD_Project\LIFAN\file\码库\have_dtc_lib.txt'  # 有码库系统

# # 海马
# SYSSCAN = r'D:\BYD_Project\HAIMA\file\SYSSCAN.txt'
# FUNCFG = r'D:\BYD_Project\HAIMA\file\HMAZDA_FUNCFG.txt'
# Debug = r'D:\BYD_Project\HAIMA\file\debug.txt'
# CMD = r'D:\BYD_Project\HAIMA\file\H_COMMAND.txt'
# TEXT = r'D:\BYD_Project\HAIMA\file\TEXT_CN.txt'
# DS = r'D:\BYD_Project\HAIMA\file\DSTREAM_CN.txt'
# Formula = r'D:\BYD_Project\HAIMA\file\IMS_EXPRESS.txt'
# out = r'D:\BYD_Project\HAIMA\file\协议'
# menu_ids = r'D:\BYD_Project\HAIMA\file\menu_EV.txt'
#
# # 码库
# dtc_link_2byte = r'D:\BYD_Project\HAIMA\file\码库\dtc_link_2byte.txt'
# dtc_link = r'D:\BYD_Project\HAIMA\file\码库\dtc_link.txt'
# TCODE = r'D:\BYD_Project\HAIMA\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\BYD_Project\HAIMA\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\BYD_Project\HAIMA\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\BYD_Project\HAIMA\file\码库\have_dtc_lib.txt'  # 有码库系统


# 开瑞
# SYSSCAN = r'D:\BYD_Project\KARRY_TF\file\SYSSCAN.txt'
# FUNCFG = r'D:\BYD_Project\KARRY_TF\file\KARRY_FUNCFG.txt'
# Debug = r'D:\BYD_Project\KARRY_TF\file\debug.txt'
# CMD = r'D:\BYD_Project\KARRY_TF\file\H_COMMAND.txt'
# TEXT = r'D:\BYD_Project\KARRY_TF\file\TEXT_CN.txt'
# DS = r'D:\BYD_Project\KARRY_TF\file\DSTREAM_CN.txt'
# Formula = r'D:\BYD_Project\KARRY_TF\file\IMS_EXPRESS.txt'
# out = r'D:\BYD_Project\KARRY_TF\file\协议'
# menu_ids = r'D:\BYD_Project\KARRY_TF\file\menu_EV.txt'
#
# # 码库
# dtc_link_2byte = r'D:\BYD_Project\KARRY_TF\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\BYD_Project\KARRY_TF\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\BYD_Project\KARRY_TF\file\码库\dtc_link.txt'
# TCODE = r'D:\BYD_Project\KARRY_TF\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\BYD_Project\KARRY_TF\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\BYD_Project\KARRY_TF\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\BYD_Project\KARRY_TF\file\码库\have_dtc_lib.txt'  # 有码库系统

# # 五菱
# SYSSCAN = r'D:\xiaolan\PythonStudyLib\BYD_Project\wuling_x431\file\SYSSCAN.txt'
# FUNCFG = r'D:\xiaolan\PythonStudyLib\BYD_Project\wuling_x431\file\LIUWEI_TY_FUNCFG.txt'
# Debug = r'D:\xiaolan\PythonStudyLib\BYD_Project\wuling_x431\file\debug.txt'
# CMD = r'D:\xiaolan\PythonStudyLib\BYD_Project\wuling_x431\file\H_COMMAND.txt'
# TEXT = r'D:\xiaolan\PythonStudyLib\BYD_Project\wuling_x431\file\TEXT_CN.txt'
# DS = r'D:\xiaolan\PythonStudyLib\BYD_Project\wuling_x431\file\DSTREAM_CN.txt'
# Formula = r'D:\xiaolan\PythonStudyLib\BYD_Project\wuling_x431\file\IMS_EXPRESS.txt'
# out = r'D:\xiaolan\PythonStudyLib\BYD_Project\wuling_x431\file\五菱协议'
# menu_ids = r'D:\xiaolan\PythonStudyLib\BYD_Project\wuling_x431\file\五菱menu.txt'
# rdtc_type = r'D:\xiaolan\PythonStudyLib\BYD_Project\wuling_x431\file\rdtc_type.txt'
#
# # 码库
# dtc_link_2byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\wuling_x431\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\wuling_x431\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\xiaolan\PythonStudyLib\BYD_Project\wuling_x431\file\码库\dtc_link.txt'
# TCODE = r'D:\xiaolan\PythonStudyLib\BYD_Project\wuling_x431\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\xiaolan\PythonStudyLib\BYD_Project\wuling_x431\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\wuling_x431\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\wuling_x431\file\码库\have_dtc_lib.txt'  # 有码库系统


# # 国金
# SYSSCAN = r'D:\BYD_Project\SINOGOLD\file\SYSSCAN.txt'
# FUNCFG = r'D:\BYD_Project\SINOGOLD\file\SINOGOLDZY_FUNCFG.txt'
# Debug = r'D:\BYD_Project\SINOGOLD\file\debug.txt'
# CMD = r'D:\BYD_Project\SINOGOLD\file\H_COMMAND.txt'
# TEXT = r'D:\BYD_Project\SINOGOLD\file\TEXT_CN.txt'
# DS = r'D:\BYD_Project\SINOGOLD\file\DSTREAM_CN.txt'
# Formula = r'D:\BYD_Project\SINOGOLD\file\IMS_EXPRESS.txt'
# out = r'D:\BYD_Project\SINOGOLD\file\协议'
# menu_ids = r'D:\BYD_Project\SINOGOLD\file\menu.txt'

# # 码库
# dtc_link_2byte = r'D:\BYD_Project\SINOGOLD\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\BYD_Project\SINOGOLD\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\BYD_Project\SINOGOLD\file\码库\dtc_link.txt'
# TCODE = r'D:\BYD_Project\SINOGOLD\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\BYD_Project\SINOGOLD\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\BYD_Project\SINOGOLD\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\BYD_Project\SINOGOLD\file\码库\have_dtc_lib.txt'  # 有码库系统


# # 江铃汽车
# SYSSCAN = r'D:\BYD_Project\JMEV\file\SYSSCAN.txt'
# FUNCFG = r'D:\BYD_Project\JMEV\file\JMEV_FUNCFG.txt'
# Debug = r'D:\BYD_Project\JMEV\file\debug.txt'
# CMD = r'D:\BYD_Project\JMEV\file\H_COMMAND.txt'
# TEXT = r'D:\BYD_Project\JMEV\file\TEXT_CN.txt'
# DS = r'D:\BYD_Project\JMEV\file\DSTREAM_CN.txt'
# Formula = r'D:\BYD_Project\JMEV\file\IMS_EXPRESS.txt'
# out = r'D:\BYD_Project\JMEV\file\协议'
# menu_ids = r'D:\BYD_Project\JMEV\file\menu.txt'
#
# # 码库
# dtc_link_2byte = r'D:\BYD_Project\JMEV\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\BYD_Project\JMEV\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\BYD_Project\JMEV\file\码库\dtc_link.txt'
# TCODE = r'D:\BYD_Project\JMEV\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\BYD_Project\JMEV\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\BYD_Project\JMEV\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\BYD_Project\JMEV\file\码库\have_dtc_lib.txt'  # 有码库系统

# 国机智骏
# SYSSCAN = r'D:\BYD_Project\ZHIJUN\file\SYSSCAN.txt'
# FUNCFG = r'D:\BYD_Project\ZHIJUN\file\ZHIJUNZY_FUNCFG.txt'
# Debug = r'D:\BYD_Project\ZHIJUN\file\debug.txt'
# CMD = r'D:\BYD_Project\ZHIJUN\file\H_COMMAND.txt'
# TEXT = r'D:\BYD_Project\ZHIJUN\file\TEXT_CN.txt'
# DS = r'D:\BYD_Project\ZHIJUN\file\DSTREAM_CN.txt'
# Formula = r'D:\BYD_Project\ZHIJUN\file\IMS_EXPRESS.txt'
# out = r'D:\BYD_Project\ZHIJUN\file\协议'
# menu_ids = r'D:\BYD_Project\ZHIJUN\file\menu.txt'
#
# # 码库
# dtc_link_2byte = r'D:\BYD_Project\ZHIJUN\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\BYD_Project\ZHIJUN\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\BYD_Project\ZHIJUN\file\码库\dtc_link.txt'
# TCODE = r'D:\BYD_Project\ZHIJUN\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\BYD_Project\ZHIJUN\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\BYD_Project\ZHIJUN\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\BYD_Project\ZHIJUN\file\码库\have_dtc_lib.txt'  # 有码库系统

# 康迪
# SYSSCAN = r'D:\BYD_Project\KANGDI\file\SYSSCAN.txt'
# FUNCFG = r'D:\BYD_Project\KANGDI\file\KANDIZY_FUNCFG.txt'
# Debug = r'D:\BYD_Project\KANGDI\file\debug.txt'
# CMD = r'D:\BYD_Project\KANGDI\file\H_COMMAND.txt'
# TEXT = r'D:\BYD_Project\KANGDI\file\TEXT_CN.txt'
# DS = r'D:\BYD_Project\KANGDI\file\DSTREAM_CN.txt'
# Formula = r'D:\BYD_Project\KANGDI\file\IMS_EXPRESS.txt'
# out = r'D:\BYD_Project\KANGDI\file\协议'
# menu_ids = r'D:\BYD_Project\KANGDI\file\menu.txt'
#
# # 码库
# dtc_link_2byte = r'D:\BYD_Project\KANGDI\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\BYD_Project\KANGDI\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\BYD_Project\KANGDI\file\码库\dtc_link.txt'
# TCODE = r'D:\BYD_Project\KANGDI\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\BYD_Project\KANGDI\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\BYD_Project\KANGDI\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\BYD_Project\KANGDI\file\码库\have_dtc_lib.txt'  # 有码库系统

# # 金杯
# SYSSCAN = r'D:\BYD_Project\JINBEI\file\SYSSCAN.txt'
# FUNCFG = r'D:\BYD_Project\JINBEI\file\HUACHENZY_FUNCFG.txt'
# Debug = r'D:\BYD_Project\JINBEI\file\debug.txt'
# CMD = r'D:\BYD_Project\JINBEI\file\H_COMMAND.txt'
# TEXT = r'D:\BYD_Project\JINBEI\file\TEXT_CN.txt'
# DS = r'D:\BYD_Project\JINBEI\file\DSTREAM_CN.txt'
# Formula = r'D:\BYD_Project\JINBEI\file\IMS_EXPRESS.txt'
# out = r'D:\BYD_Project\JINBEI\file\协议'
# menu_ids = r'D:\BYD_Project\JINBEI\file\menu.txt'
#
# # 码库
# dtc_link_2byte = r'D:\BYD_Project\JINBEI\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\BYD_Project\JINBEI\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\BYD_Project\JINBEI\file\码库\dtc_link.txt'
# TCODE = r'D:\BYD_Project\JINBEI\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\BYD_Project\JINBEI\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\BYD_Project\JINBEI\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\BYD_Project\JINBEI\file\码库\have_dtc_lib.txt'  # 有码库系统


# # 川汽野马
# SYSSCAN = r'D:\BYD_Project\YEMA\file\SYSSCAN.txt'
# FUNCFG = r'D:\BYD_Project\YEMA\file\CHUANQIZY_FUNCFG.txt'
# Debug = r'D:\BYD_Project\YEMA\file\debug.txt'
# CMD = r'D:\BYD_Project\YEMA\file\H_COMMAND.txt'
# TEXT = r'D:\BYD_Project\YEMA\file\TEXT_CN.txt'
# DS = r'D:\BYD_Project\YEMA\file\DSTREAM_CN.txt'
# Formula = r'D:\BYD_Project\YEMA\file\IMS_EXPRESS.txt'
# out = r'D:\BYD_Project\YEMA\file\协议'
# menu_ids = r'D:\BYD_Project\YEMA\file\menu.txt'
#
# # 码库
# dtc_link_2byte = r'D:\BYD_Project\YEMA\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\BYD_Project\YEMA\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\BYD_Project\YEMA\file\码库\dtc_link.txt'
# TCODE = r'D:\BYD_Project\YEMA\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\BYD_Project\YEMA\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\BYD_Project\YEMA\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\BYD_Project\YEMA\file\码库\have_dtc_lib.txt'  # 有码库系统

# # 威马
# SYSSCAN = r'D:\BYD_Project\WM\file\SYSSCAN.txt'
# FUNCFG = r'D:\BYD_Project\WM\file\WM_FUNCFG.txt'
# Debug = r'D:\BYD_Project\WM\file\debug.txt'
# CMD = r'D:\BYD_Project\WM\file\H_COMMAND.txt'
# TEXT = r'D:\BYD_Project\WM\file\TEXT_CN.txt'
# DS = r'D:\BYD_Project\WM\file\DSTREAM_CN.txt'
# Formula = r'D:\BYD_Project\WM\file\NEW_EXPRESS.txt'
# out = r'D:\BYD_Project\WM\file\协议'
# menu_ids = r'D:\BYD_Project\WM\file\menu.txt'
#
# # 码库
# dtc_link_2byte = r'D:\BYD_Project\WM\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\BYD_Project\WM\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\BYD_Project\WM\file\码库\dtc_link.txt'
# TCODE = r'D:\BYD_Project\WM\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\BYD_Project\WM\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\BYD_Project\WM\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\BYD_Project\WM\file\码库\have_dtc_lib.txt'  # 有码库系统

# # 汉腾
# SYSSCAN = r'D:\xiaolan\PythonStudyLib\BYD_Project\HANTENG\file\SYSSCAN.txt'
# FUNCFG = r'D:\xiaolan\PythonStudyLib\BYD_Project\HANTENG\file\HANTENG_FUNCFG.txt'
# Debug = r'D:\xiaolan\PythonStudyLib\BYD_Project\HANTENG\file\debug.txt'
# CMD = r'D:\xiaolan\PythonStudyLib\BYD_Project\HANTENG\file\H_COMMAND.txt'
# TEXT = r'D:\xiaolan\PythonStudyLib\BYD_Project\HANTENG\file\TEXT_CN.txt'
# DS = r'D:\xiaolan\PythonStudyLib\BYD_Project\HANTENG\file\DSTREAM_CN.txt'
# Formula = r'D:\xiaolan\PythonStudyLib\BYD_Project\HANTENG\file\IMS_EXPRESS.txt'
# out = r'D:\xiaolan\PythonStudyLib\BYD_Project\HANTENG\file\协议'
# menu_ids = r'D:\xiaolan\PythonStudyLib\BYD_Project\HANTENG\file\menu.txt'
#
# # 码库
# dtc_link_2byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\HANTENG\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\HANTENG\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\xiaolan\PythonStudyLib\BYD_Project\HANTENG\file\码库\dtc_link.txt'
# TCODE = r'D:\xiaolan\PythonStudyLib\BYD_Project\HANTENG\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\xiaolan\PythonStudyLib\BYD_Project\HANTENG\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\HANTENG\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\HANTENG\file\码库\have_dtc_lib.txt'  # 有码库系统

# # 领途
# SYSSCAN = r'D:\BYD_Project\LINGTU\file\SYSSCAN.txt'
# FUNCFG = r'D:\BYD_Project\LINGTU\file\LINGTU_FUNCFG.txt'
# Debug = r'D:\BYD_Project\LINGTU\file\debug.txt'
# CMD = r'D:\BYD_Project\LINGTU\file\H_COMMAND.txt'
# TEXT = r'D:\BYD_Project\LINGTU\file\TEXT_CN.txt'
# DS = r'D:\BYD_Project\LINGTU\file\DSTREAM_CN.txt'
# Formula = r'D:\BYD_Project\LINGTU\file\IMS_EXPRESS.txt'
# out = r'D:\BYD_Project\LINGTU\file\协议'
# menu_ids = r'D:\BYD_Project\LINGTU\file\menu.txt'
#
# # 码库
# dtc_link_2byte = r'D:\BYD_Project\LINGTU\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\BYD_Project\LINGTU\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\BYD_Project\LINGTU\file\码库\dtc_link.txt'
# TCODE = r'D:\BYD_Project\LINGTU\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\BYD_Project\LINGTU\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\BYD_Project\LINGTU\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\BYD_Project\LINGTU\file\码库\have_dtc_lib.txt'  # 有码库系统


# # 斯威
# SYSSCAN = r'D:\xiaolan\PythonStudyLib\BYD_Project\SWM\file\SYSSCAN.txt'
# FUNCFG = r'D:\xiaolan\PythonStudyLib\BYD_Project\SWM\file\SIWEI_FUNCFG.txt'
# Debug = r'D:\xiaolan\PythonStudyLib\BYD_Project\SWM\file\debug.txt'
# CMD = r'D:\xiaolan\PythonStudyLib\BYD_Project\SWM\file\H_COMMAND.txt'
# TEXT = r'D:\xiaolan\PythonStudyLib\BYD_Project\SWM\file\TEXT_CN.txt'
# DS = r'D:\xiaolan\PythonStudyLib\BYD_Project\SWM\file\DSTREAM_CN.txt'
# Formula = r'D:\xiaolan\PythonStudyLib\BYD_Project\SWM\file\IMS_EXPRESS.txt'
# out = r'D:\xiaolan\PythonStudyLib\BYD_Project\SWM\file\协议'
# menu_ids = r'D:\xiaolan\PythonStudyLib\BYD_Project\SWM\file\menu.txt'
#
# # 码库
# dtc_link_2byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\SWM\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\SWM\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\xiaolan\PythonStudyLib\BYD_Project\SWM\file\码库\dtc_link.txt'
# TCODE = r'D:\xiaolan\PythonStudyLib\BYD_Project\SWM\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\xiaolan\PythonStudyLib\BYD_Project\SWM\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\SWM\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\SWM\file\码库\have_dtc_lib.txt'  # 有码库系统

# # 鑫源
# SYSSCAN = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINYUAN\file\SYSSCAN.txt'
# FUNCFG = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINYUAN\file\HCXY_FUNCFG.txt'
# Debug = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINYUAN\file\debug.txt'
# CMD = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINYUAN\file\H_COMMAND.txt'
# TEXT = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINYUAN\file\TEXT_CN.txt'
# DS = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINYUAN\file\DSTREAM_CN.txt'
# Formula = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINYUAN\file\IMS_EXPRESS.txt'
# out = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINYUAN\file\协议'
# menu_ids = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINYUAN\file\menu_ev.txt'
#
# # 码库
# dtc_link_2byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINYUAN\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINYUAN\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINYUAN\file\码库\dtc_link.txt'
# TCODE = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINYUAN\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINYUAN\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINYUAN\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINYUAN\file\码库\have_dtc_lib.txt'  # 有码库系统


# # 知豆
# SYSSCAN = r'D:\xiaolan\PythonStudyLib\BYD_Project\ZHIDOU\file\SYSSCAN.txt'
# FUNCFG = r'D:\xiaolan\PythonStudyLib\BYD_Project\ZHIDOU\file\ZHIDOU_FUNCFG.txt'
# Debug = r'D:\xiaolan\PythonStudyLib\BYD_Project\ZHIDOU\file\debug.txt'
# CMD = r'D:\xiaolan\PythonStudyLib\BYD_Project\ZHIDOU\file\H_COMMAND.txt'
# TEXT = r'D:\xiaolan\PythonStudyLib\BYD_Project\ZHIDOU\file\TEXT_CN.txt'
# DS = r'D:\xiaolan\PythonStudyLib\BYD_Project\ZHIDOU\file\DSTREAM_CN.txt'
# Formula = r'D:\xiaolan\PythonStudyLib\BYD_Project\ZHIDOU\file\IMS_EXPRESS.txt'
# out = r'D:\xiaolan\PythonStudyLib\BYD_Project\ZHIDOU\file\协议'
# menu_ids = r'D:\xiaolan\PythonStudyLib\BYD_Project\ZHIDOU\file\menu.txt'
#
# # 码库
# dtc_link_2byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\ZHIDOU\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\ZHIDOU\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\xiaolan\PythonStudyLib\BYD_Project\ZHIDOU\file\码库\dtc_link.txt'
# TCODE = r'D:\xiaolan\PythonStudyLib\BYD_Project\ZHIDOU\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\xiaolan\PythonStudyLib\BYD_Project\ZHIDOU\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\ZHIDOU\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\ZHIDOU\file\码库\have_dtc_lib.txt'  # 有码库系统

# 比亚迪v18.80
SYSSCAN = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.80\file\SYSSCAN.txt'
FUNCFG = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.80\file\FLYER_FUNCFG.txt'
Debug = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.80\file\debug.txt'
CMD = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.80\file\H_COMMAND.txt'
TEXT = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.80\file\TEXT_CN.txt'
DS = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.80\file\DSTREAM_CN.txt'
Formula = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.80\file\IMS_EXPRESS.txt'
out = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.80\file\协议'
menu_ids = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.80\file\menu_new.txt'
rdtc_type = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.80\file\rdtc_type.txt'

# 码库
dtc_link_2byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.80\file\码库\dtc_link_2byte.txt'
dtc_link_1byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.80\file\码库\dtc_link_1byte.txt'
dtc_link = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.80\file\码库\dtc_link.txt'
TCODE = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.80\file\码库\TCODE_CN.txt'
TCODE1 = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.80\file\码库\TCODE1_CN.txt'
no_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.80\file\码库\no_dtc_lib.txt'  # 无码库系统
have_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.80\file\码库\have_dtc_lib.txt'  # 有码库系统

# # 比亚迪v18.90
# SYSSCAN = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\SYSSCAN.txt'
# FUNCFG = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\FLYER_FUNCFG.txt'
# Debug = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\debug.txt'
# CMD = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\H_COMMAND.txt'
# TEXT = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\TEXT_CN.txt'
# DS = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\DSTREAM_CN.txt'
# Formula = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\IMS_EXPRESS.txt'
# out = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\协议'
# menu_ids = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\menu_new.txt'
# rdtc_type = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\rdtc_type.txt'
#
# # 码库
# dtc_link_2byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\码库\dtc_link.txt'
# TCODE = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\码库\have_dtc_lib.txt'  # 有码库系统

# # 北京汽车
# SYSSCAN = r'D:\xiaolan\PythonStudyLib\BYD_Project\BJQC\file\SYSSCAN.txt'
# FUNCFG = r'D:\xiaolan\PythonStudyLib\BYD_Project\BJQC\file\BEIJING_FUNCFG.txt'
# Debug = r'D:\xiaolan\PythonStudyLib\BYD_Project\BJQC\file\debug.txt'
# CMD = r'D:\xiaolan\PythonStudyLib\BYD_Project\BJQC\file\H_COMMAND.txt'
# TEXT = r'D:\xiaolan\PythonStudyLib\BYD_Project\BJQC\file\TEXT_CN.txt'
# DS = r'D:\xiaolan\PythonStudyLib\BYD_Project\BJQC\file\DSTREAM_CN.txt'
# Formula = r'D:\xiaolan\PythonStudyLib\BYD_Project\BJQC\file\IMS_EXPRESS.txt'
# out = r'D:\xiaolan\PythonStudyLib\BYD_Project\BJQC\file\协议'
# menu_ids = r'D:\xiaolan\PythonStudyLib\BYD_Project\BJQC\file\menu_new.txt'
#
# # 码库
# dtc_link_2byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\BJQC\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\BJQC\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\xiaolan\PythonStudyLib\BYD_Project\BJQC\file\码库\dtc_link.txt'
# TCODE = r'D:\xiaolan\PythonStudyLib\BYD_Project\BJQC\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\xiaolan\PythonStudyLib\BYD_Project\BBJQC\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\BJQC\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\BJQC\file\码库\have_dtc_lib.txt'  # 有码库系统


# # 吉利
# SYSSCAN = r'D:\xiaolan\PythonStudyLib\BYD_Project\JILI\file\SYSSCAN.txt'
# FUNCFG = r'D:\xiaolan\PythonStudyLib\BYD_Project\JILI\file\HAOQING_FUNCFG.txt'
# Debug = r'D:\xiaolan\PythonStudyLib\BYD_Project\JILI\file\debug.txt'
# CMD = r'D:\xiaolan\PythonStudyLib\BYD_Project\JILI\file\H_COMMAND.txt'
# TEXT = r'D:\xiaolan\PythonStudyLib\BYD_Project\JILI\file\TEXT_CN.txt'
# DS = r'D:\xiaolan\PythonStudyLib\BYD_Project\JILI\file\DSTREAM_CN.txt'
# Formula = r'D:\xiaolan\PythonStudyLib\BYD_Project\JILI\file\IMS_EXPRESS.txt'
# out = r'D:\xiaolan\PythonStudyLib\BYD_Project\JILI\file\协议'
# menu_ids = r'D:\xiaolan\PythonStudyLib\BYD_Project\JILI\file\menu_new.txt'
# rdtc_type = r'D:\xiaolan\PythonStudyLib\BYD_Project\JILI\file\rdtc_type.txt'
#
# # 码库
# dtc_link_2byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\JILI\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\JILI\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\xiaolan\PythonStudyLib\BYD_Project\JILI\file\码库\dtc_link.txt'
# TCODE = r'D:\xiaolan\PythonStudyLib\BYD_Project\JILI\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\xiaolan\PythonStudyLib\BYD_Project\JILI\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\JILI\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\JILI\file\码库\have_dtc_lib.txt'  # 有码库系统

# # 哪吒
# SYSSCAN = r'D:\xiaolan\PythonStudyLib\BYD_Project\NETA\file\NETA_SYSSCAN.txt'
# FUNCFG = r'D:\xiaolan\PythonStudyLib\BYD_Project\NETA\file\NETA_FUNCFG.txt'
# Debug = r'D:\xiaolan\PythonStudyLib\BYD_Project\NETA\file\debug.txt'
# CMD = r'D:\xiaolan\PythonStudyLib\BYD_Project\NETA\file\H_COMMAND.txt'
# TEXT = r'D:\xiaolan\PythonStudyLib\BYD_Project\NETA\file\TEXT_CN.txt'
# DS = r'D:\xiaolan\PythonStudyLib\BYD_Project\NETA\file\DSTREAM_CN.txt'
# Formula = r'D:\xiaolan\PythonStudyLib\BYD_Project\NETA\file\IMS_EXPRESS.txt'
# out = r'D:\xiaolan\PythonStudyLib\BYD_Project\NETA\file\协议'
# menu_ids = r'D:\xiaolan\PythonStudyLib\BYD_Project\NETA\file\menu_new.txt'
# rdtc_type = r'D:\xiaolan\PythonStudyLib\BYD_Project\NETA\file\rdtc_type.txt'
#
# # 码库
# dtc_link_2byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\NETA\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\NETA\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\xiaolan\PythonStudyLib\BYD_Project\NETA\file\码库\dtc_link.txt'
# TCODE = r'D:\xiaolan\PythonStudyLib\BYD_Project\NETA\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\xiaolan\PythonStudyLib\BYD_Project\NETA\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\NETA\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\NETA\file\码库\have_dtc_lib.txt'  # 有码库系统

# # 朋克
# SYSSCAN = r'D:\xiaolan\PythonStudyLib\BYD_Project\POCCO\file\SYSSCAN.txt'
# FUNCFG = r'D:\xiaolan\PythonStudyLib\BYD_Project\POCCO\file\POCCO_FUNCFG.txt'
# Debug = r'D:\xiaolan\PythonStudyLib\BYD_Project\POCCO\file\debug.txt'
# CMD = r'D:\xiaolan\PythonStudyLib\BYD_Project\POCCO\file\H_COMMAND.txt'
# TEXT = r'D:\xiaolan\PythonStudyLib\BYD_Project\POCCO\file\TEXT_CN.txt'
# DS = r'D:\xiaolan\PythonStudyLib\BYD_Project\POCCO\file\DSTREAM_CN.txt'
# Formula = r'D:\xiaolan\PythonStudyLib\BYD_Project\POCCO\file\IMS_EXPRESS.txt'
# out = r'D:\xiaolan\PythonStudyLib\BYD_Project\POCCO\file\协议'
# menu_ids = r'D:\xiaolan\PythonStudyLib\BYD_Project\POCCO\file\menu_new.txt'
# rdtc_type = r'D:\xiaolan\PythonStudyLib\BYD_Project\POCCO\file\rdtc_type.txt'
#
# # 码库
# dtc_link_2byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\POCCO\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\POCCO\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\xiaolan\PythonStudyLib\BYD_Project\POCCO\file\码库\dtc_link.txt'
# TCODE = r'D:\xiaolan\PythonStudyLib\BYD_Project\POCCO\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\xiaolan\PythonStudyLib\BYD_Project\POCCO\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\POCCO\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\POCCO\file\码库\have_dtc_lib.txt'  # 有码库系统

# # 大运
# SYSSCAN = r'D:\xiaolan\PythonStudyLib\BYD_Project\DAYUN\file\SYSSCAN.txt'
# FUNCFG = r'D:\xiaolan\PythonStudyLib\BYD_Project\DAYUN\file\DAYUN_FUNCFG.txt'
# Debug = r'D:\xiaolan\PythonStudyLib\BYD_Project\DAYUN\file\debug.txt'
# CMD = r'D:\xiaolan\PythonStudyLib\BYD_Project\DAYUN\file\H_COMMAND.txt'
# TEXT = r'D:\xiaolan\PythonStudyLib\BYD_Project\DAYUN\file\TEXT_CN.txt'
# DS = r'D:\xiaolan\PythonStudyLib\BYD_Project\DAYUN\file\DSTREAM_CN.txt'
# Formula = r'D:\xiaolan\PythonStudyLib\BYD_Project\DAYUN\file\IMS_EXPRESS.txt'
# out = r'D:\xiaolan\PythonStudyLib\BYD_Project\DAYUN\file\协议'
# menu_ids = r'D:\xiaolan\PythonStudyLib\BYD_Project\DAYUN\file\menu_new.txt'
# rdtc_type = r'D:\xiaolan\PythonStudyLib\BYD_Project\DAYUN\file\rdtc_type.txt'
#
# # 码库
# dtc_link_2byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\DAYUN\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\DAYUN\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\xiaolan\PythonStudyLib\BYD_Project\DAYUN\file\码库\dtc_link.txt'
# TCODE = r'D:\xiaolan\PythonStudyLib\BYD_Project\DAYUN\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\xiaolan\PythonStudyLib\BYD_Project\DAYUN\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\DAYUN\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\DAYUN\file\码库\have_dtc_lib.txt'  # 有码库系统

# # 零跑
# SYSSCAN = r'D:\xiaolan\PythonStudyLib\BYD_Project\LEAP\file\SYSSCAN.txt'
# FUNCFG = r'D:\xiaolan\PythonStudyLib\BYD_Project\LEAP\file\LEAP_FUNCFG.txt'
# Debug = r'D:\xiaolan\PythonStudyLib\BYD_Project\LEAP\file\debug.txt'
# CMD = r'D:\xiaolan\PythonStudyLib\BYD_Project\LEAP\file\H_COMMAND.txt'
# TEXT = r'D:\xiaolan\PythonStudyLib\BYD_Project\LEAP\file\TEXT_CN.txt'
# DS = r'D:\xiaolan\PythonStudyLib\BYD_Project\LEAP\file\DSTREAM_CN.txt'
# Formula = r'D:\xiaolan\PythonStudyLib\BYD_Project\LEAP\file\IMS_EXPRESS.txt'
# out = r'D:\xiaolan\PythonStudyLib\BYD_Project\LEAP\file\协议'
# menu_ids = r'D:\xiaolan\PythonStudyLib\BYD_Project\LEAP\file\menu_new.txt'
# rdtc_type = r'D:\xiaolan\PythonStudyLib\BYD_Project\LEAP\file\rdtc_type.txt'
#
# # 码库
# dtc_link_2byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\LEAP\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\LEAP\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\xiaolan\PythonStudyLib\BYD_Project\LEAP\file\码库\dtc_link.txt'
# TCODE = r'D:\xiaolan\PythonStudyLib\BYD_Project\LEAP\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\xiaolan\PythonStudyLib\BYD_Project\LEAP\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\LEAP\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\LEAP\file\码库\have_dtc_lib.txt'  # 有码库系统

# # 瑞驰
# SYSSCAN = r'D:\xiaolan\PythonStudyLib\BYD_Project\RUICHI\file\SYSSCAN.txt'
# FUNCFG = r'D:\xiaolan\PythonStudyLib\BYD_Project\RUICHI\file\RUICHI_FUNCFG.txt'
# Debug = r'D:\xiaolan\PythonStudyLib\BYD_Project\RUICHI\file\debug.txt'
# CMD = r'D:\xiaolan\PythonStudyLib\BYD_Project\RUICHI\file\H_COMMAND.txt'
# TEXT = r'D:\xiaolan\PythonStudyLib\BYD_Project\RUICHI\file\TEXT_CN.txt'
# DS = r'D:\xiaolan\PythonStudyLib\BYD_Project\RUICHI\file\DSTREAM_CN.txt'
# Formula = r'D:\xiaolan\PythonStudyLib\BYD_Project\RUICHI\file\IMS_EXPRESS.txt'
# out = r'D:\xiaolan\PythonStudyLib\BYD_Project\RUICHI\file\协议'
# menu_ids = r'D:\xiaolan\PythonStudyLib\BYD_Project\RUICHI\file\menu_new.txt'
# rdtc_type = r'D:\xiaolan\PythonStudyLib\BYD_Project\RUICHI\file\rdtc_type.txt'
#
# # 码库
# dtc_link_2byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\RUICHI\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\RUICHI\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\xiaolan\PythonStudyLib\BYD_Project\RUICHI\file\码库\dtc_link.txt'
# TCODE = r'D:\xiaolan\PythonStudyLib\BYD_Project\RUICHI\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\xiaolan\PythonStudyLib\BYD_Project\RUICHI\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\RUICHI\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\RUICHI\file\码库\have_dtc_lib.txt'  # 有码库系统

# # 赛力斯
# SYSSCAN = r'D:\xiaolan\PythonStudyLib\BYD_Project\SAILISI\file\SYSSCAN.txt'
# FUNCFG = r'D:\xiaolan\PythonStudyLib\BYD_Project\SAILISI\file\SERES_FUNCFG.txt'
# Debug = r'D:\xiaolan\PythonStudyLib\BYD_Project\SAILISI\file\debug.txt'
# CMD = r'D:\xiaolan\PythonStudyLib\BYD_Project\SAILISI\file\H_COMMAND.txt'
# TEXT = r'D:\xiaolan\PythonStudyLib\BYD_Project\SAILISI\file\TEXT_CN.txt'
# DS = r'D:\xiaolan\PythonStudyLib\BYD_Project\SAILISI\file\DSTREAM_CN.txt'
# Formula = r'D:\xiaolan\PythonStudyLib\BYD_Project\SAILISI\file\IMS_EXPRESS.txt'
# out = r'D:\xiaolan\PythonStudyLib\BYD_Project\SAILISI\file\协议'
# menu_ids = r'D:\xiaolan\PythonStudyLib\BYD_Project\SAILISI\file\menu_new.txt'
# rdtc_type = r'D:\xiaolan\PythonStudyLib\BYD_Project\SAILISI\file\rdtc_type.txt'
#
# # 码库
# dtc_link_2byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\SAILISI\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\SAILISI\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\xiaolan\PythonStudyLib\BYD_Project\SAILISI\file\码库\dtc_link.txt'
# TCODE = r'D:\xiaolan\PythonStudyLib\BYD_Project\SAILISI\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\xiaolan\PythonStudyLib\BYD_Project\SAILISI\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\SAILISI\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\SAILISI\file\码库\have_dtc_lib.txt'  # 有码库系统

# # 速达
# SYSSCAN = r'D:\xiaolan\PythonStudyLib\BYD_Project\SUDA\file\SYSSCAN.txt'
# FUNCFG = r'D:\xiaolan\PythonStudyLib\BYD_Project\SUDA\file\SUDA_FUNCFG.txt'
# Debug = r'D:\xiaolan\PythonStudyLib\BYD_Project\SUDA\file\debug.txt'
# CMD = r'D:\xiaolan\PythonStudyLib\BYD_Project\SUDA\file\H_COMMAND.txt'
# TEXT = r'D:\xiaolan\PythonStudyLib\BYD_Project\SUDA\file\TEXT_CN.txt'
# DS = r'D:\xiaolan\PythonStudyLib\BYD_Project\SUDA\file\DSTREAM_CN.txt'
# Formula = r'D:\xiaolan\PythonStudyLib\BYD_Project\SUDA\file\IMS_EXPRESS.txt'
# out = r'D:\xiaolan\PythonStudyLib\BYD_Project\SUDA\file\协议'
# menu_ids = r'D:\xiaolan\PythonStudyLib\BYD_Project\SUDA\file\menu_new.txt'
# rdtc_type = r'D:\xiaolan\PythonStudyLib\BYD_Project\SUDA\file\rdtc_type.txt'
#
# # 码库
# dtc_link_2byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\SUDA\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\SUDA\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\xiaolan\PythonStudyLib\BYD_Project\SUDA\file\码库\dtc_link.txt'
# TCODE = r'D:\xiaolan\PythonStudyLib\BYD_Project\SUDA\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\xiaolan\PythonStudyLib\BYD_Project\SUDA\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\SUDA\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\SUDA\file\码库\have_dtc_lib.txt'  # 有码库系统

# 御捷
# SYSSCAN = r'D:\xiaolan\PythonStudyLib\BYD_Project\YUJIE\file\SYSSCAN.txt'
# FUNCFG = r'D:\xiaolan\PythonStudyLib\BYD_Project\YUJIE\file\YOGOMO_FUNCFG.txt'
# Debug = r'D:\xiaolan\PythonStudyLib\BYD_Project\YUJIE\file\debug.txt'
# CMD = r'D:\xiaolan\PythonStudyLib\BYD_Project\YUJIE\file\H_COMMAND.txt'
# TEXT = r'D:\xiaolan\PythonStudyLib\BYD_Project\YUJIE\file\TEXT_CN.txt'
# DS = r'D:\xiaolan\PythonStudyLib\BYD_Project\YUJIE\file\DSTREAM_CN.txt'
# Formula = r'D:\xiaolan\PythonStudyLib\BYD_Project\YUJIE\file\IMS_EXPRESS.txt'
# out = r'D:\xiaolan\PythonStudyLib\BYD_Project\YUJIE\file\协议'
# menu_ids = r'D:\xiaolan\PythonStudyLib\BYD_Project\YUJIE\file\menu_new.txt'
# rdtc_type = r'D:\xiaolan\PythonStudyLib\BYD_Project\YUJIE\file\rdtc_type.txt'
#
# # 码库
# dtc_link_2byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\YUJIE\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\YUJIE\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\xiaolan\PythonStudyLib\BYD_Project\YUJIE\file\码库\dtc_link.txt'
# TCODE = r'D:\xiaolan\PythonStudyLib\BYD_Project\YUJIE\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\xiaolan\PythonStudyLib\BYD_Project\YUJIE\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\YUJIE\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\YUJIE\file\码库\have_dtc_lib.txt'  # 有码库系统


# # 东风风神
# SYSSCAN = r'D:\xiaolan\PythonStudyLib\BYD_Project\DONGFENGFENGSHEN\file\SYSSCAN.txt'
# FUNCFG = r'D:\xiaolan\PythonStudyLib\BYD_Project\DONGFENGFENGSHEN\file\DFBF_FUNCFG.txt'
# Debug = r'D:\xiaolan\PythonStudyLib\BYD_Project\DONGFENGFENGSHEN\file\debug.txt'
# CMD = r'D:\xiaolan\PythonStudyLib\BYD_Project\DONGFENGFENGSHEN\file\H_COMMAND.txt'
# TEXT = r'D:\xiaolan\PythonStudyLib\BYD_Project\DONGFENGFENGSHEN\file\TEXT_CN.txt'
# DS = r'D:\xiaolan\PythonStudyLib\BYD_Project\DONGFENGFENGSHEN\file\DSTREAM_CN.txt'
# Formula = r'D:\xiaolan\PythonStudyLib\BYD_Project\DONGFENGFENGSHEN\file\IMS_EXPRESS.txt'
# out = r'D:\xiaolan\PythonStudyLib\BYD_Project\DONGFENGFENGSHEN\file\协议'
# menu_ids = r'D:\xiaolan\PythonStudyLib\BYD_Project\DONGFENGFENGSHEN\file\menu_new.txt'
# rdtc_type = r'D:\xiaolan\PythonStudyLib\BYD_Project\DONGFENGFENGSHEN\file\rdtc_type.txt'
#
# # 码库
# dtc_link_2byte = r'D:\xiaolan\PythonStudyLib\BYD_ProjectDONGFENGFENGSHEN\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\DONGFENGFENGSHEN\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\xiaolan\PythonStudyLib\BYD_Project\DONGFENGFENGSHEN\file\码库\dtc_link.txt'
# TCODE = r'D:\xiaolan\PythonStudyLib\BYD_Project\DONGFENGFENGSHEN\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\xiaolan\PythonStudyLib\BYD_Project\DONGFENGFENGSHEN\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\DONGFENGFENGSHEN\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\DONGFENGFENGSHEN\file\码库\have_dtc_lib.txt'  # 有码库系统


# # 星途
# SYSSCAN = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINGTU\file\SYSSCAN.txt'
# FUNCFG = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINGTU\file\EXEED_FUNCFG.txt'
# Debug = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINGTU\file\debug.txt'
# CMD = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINGTU\file\H_COMMAND.txt'
# TEXT = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINGTU\file\TEXT_CN.txt'
# DS = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINGTU\file\DSTREAM_CN.txt'
# Formula = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINGTU\file\IMS_EXPRESS.txt'
# out = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINGTU\file\协议'
# menu_ids = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINGTU\file\menu_new.txt'
# rdtc_type = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINGTU\file\rdtc_type.txt'
#
# # 码库
# dtc_link_2byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINGTU\file\码库\dtc_link_2byte.txt'
# dtc_link_1byte = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINGTU\file\码库\dtc_link_1byte.txt'
# dtc_link = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINGTU\file\码库\dtc_link.txt'
# TCODE = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINGTU\file\码库\TCODE_CN.txt'
# TCODE1 = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINGTU\file\码库\TCODE1_CN.txt'
# no_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINGTU\file\码库\no_dtc_lib.txt'  # 无码库系统
# have_dtc_lib = r'D:\xiaolan\PythonStudyLib\BYD_Project\XINGTU\file\码库\have_dtc_lib.txt'  # 有码库系统

def init_data_file():
    global _ds_dict
    global _text_dict
    global _cmd_dict
    global _formula_dict
    _text_dict = Bs.file_to_dict(TEXT)
    _cmd_dict = Bs.file_to_dict(CMD)
    _ds_dict = Bs.file_to_dict(DS)
    _formula_dict = Bs.file_to_dict(Formula)
