import file_path as Pa
import gl
import basics as Bs
import info
import SubsystemInterface as sub
import os
import shutil
import act_chuanqi


# 初始化debug文件
Bs.init_debug()
Bs.init_debug(Pa.no_dtc_lib)
Bs.init_debug(Pa.have_dtc_lib)
Bs.init_debug(Pa.Debug)
# 加载发文件命令，名称等文件，存成字典形式
Pa.init_data_file()
# 输入菜单ID
# id1 = [0x9c01]  # 0xD301, 0x1c02, 0xa901, 0xA30E
id1 = Bs.return_menu_id(Pa.menu_ids)
yu_id = []
tmp_11 = []
# 剔除老系统
for ii in id1:
    if ii > 0xf000:
        yu_id.append(hex(ii))
    else:
        tmp_11.append(ii)
id1 = tmp_11
a = len(tmp_11)
b = len(yu_id)
id1 = [0xA0EB]
i = 0
for idd in id1:
    i += 1
    # 初始化全局变量
    gl.init_global_dict()
    # 设置汽车id
    gl.set_value('car_id', idd)
    car_id = gl._global_dict['car_id']
    print('正在执行-->' + hex(car_id).replace('0x', '').rjust(4, '0'))
    # 把FunCfg文件转成列表
    file_list = Bs.bin_to_list(Pa.FUNCFG)
    # 比对车型id获取对应配置文件指针偏移
    sub.Xml_GetInfoFromFunCfgSystem(file_list, car_id)
    sub.Xml_GetInfoFromDataLinkLayer(file_list, car_id, gl.InitDataLinkLayer)
    name_list = []
    fp_list = []
    for i in range(len(gl.InitSubSystem['n9'])):
        name_id = Bs.readlist_reverse(file_list, gl.InitSubSystem['n9'][i] + 7, 4)
        name = Bs.get_id_data_from_dict(Pa._text_dict, name_id).replace('\x00', '')
        fp_list.append(hex(gl.InitSubSystem['n9'][i]))
        act_chuanqi.DiagActFunc(file_list, gl.InitSubSystem['n9'][i])
        if name:
            name_list.append(name)
        else:
            name_list.append(None)
    # print(fp_list)
    # print(name_list)
