import basics as bs
import os
from WULING import file_path as fp
from lxml import etree
from WULING import wuling_global as gl
from WULING import reade_dtc
from WULING import information as info
from WULING import ds
from WULING import public
from WULING import DTC_lib
from WULING import freeze_frame


def get_activate_info(path):
    # 先整理码库
    dtc_file_name_list = DTC_lib.generate_dtc_lib(fp.dtc_in_path, fp.dtc_out_path)
    if os.path.exists(fp.debug):
        os.remove(fp.debug)
    all_file_list = []
    with open(path, 'r', encoding='utf-8') as f:
        for line in f.readlines():
            gl.init_global()  # 初始化全局变量
            menu_data_list = line.split(';')
            brand = menu_data_list[0]
            vehicle_model = menu_data_list[1]
            py_name = bs.cn_to_first_byte_pinyin(vehicle_model.replace('baojun', '宝骏').replace('BaoJun', '宝骏').replace('new', 'NEW '))
            py_name = py_name + 'DTCS'
            if py_name in dtc_file_name_list:
                gl.g_dict['dtc_lib'] = '\t\t$*$*DTC/' + py_name + '\n'
            else:
                gl.g_dict['dtc_lib'] = '\t\t$*$*DTC/ALLDTCCODE' + '\n'
            ecu_type = menu_data_list[2]
            model_year = menu_data_list[3]
            system_en = menu_data_list[4]
            system_name = menu_data_list[5]
            supplier = menu_data_list[6]
            code = menu_data_list[7]
            suppliercode = menu_data_list[8]
            project_server = menu_data_list[9]
            displacement_server = menu_data_list[10]
            transmission_server = menu_data_list[11]
            project_local = menu_data_list[12]
            menu_path = brand + '\\' + vehicle_model + '\\' + ecu_type + '\\' + model_year + \
                                '\\' + system_en + '（' + system_name + '-' + supplier + '）\\' + code.rstrip()
            gl.g_dict['menu_path'] = menu_path
            if code != 'NULL':
                if code.rstrip() not in all_file_list:
                    all_file_list.append(code.rstrip())
                else:
                    continue
                config_path = './file/business/diagnosticdatabase/vdsdiagdatabase/ecu/' + \
                    code.rstrip() + '.xml'
                if os.path.exists(config_path):
                    print(code.rstrip())
                    parse_vehicle_data_info(config_path, code.rstrip())
                else:
                    debug_str = code + ' 未找到该配置文件，车型路径：' + menu_path
                    bs.debug(fp.debug, debug_str)
    with open(fp.ds_strtable, 'w') as f1:
        for key, value in gl.g_dict['strTable'].items():
            str1 = 'IMS_DSSTRING_' + value.replace('@', '') + '\t' + key.strip() + '\t' + 'X' + '\n'
            f1.writelines(str1)


def parse_vehicle_data_info(path, file_name):
    xml = etree.parse(path)
    root = xml.getroot()
    label_ist = []
    basic_info = ''
    for label in root:
        if label.tag not in label_ist:
            label_ist.append(label.tag)
    if '配置信息' in label_ist:
        car_info_xml = xml.xpath('//ECU/配置信息')
        basic_info = generate_vehicle_info(car_info_xml)
    if 'CANID' in label_ist:
        gl.g_dict['protocol_type'] = 'CAN'
        parse_can_xml(xml, basic_info, file_name)
    else:
        gl.g_dict['protocol_type'] = 'KW2000'
        file_name_path = fp.k_pin_file + file_name + '_attach.xml'
        if not os.path.exists(file_name_path):
            debug_str = file_name + ' 不存在！！'
            bs.debug(fp.debug, debug_str)
        else:
            pin_str = get_kw2000_pin(file_name_path)
            gl.g_dict['pin_and_baud'] = pin_str
        ecu_address = xml.xpath('//ECU/配置信息/ECU地址/text()')[0]
        init_connect = xml.xpath('//ECU/配置信息/初始化头字节格式/text()')[0]
        other_connect = xml.xpath('//ECU/配置信息/其他服务头字节格式/text()')[0]
        gl.g_dict['ecu_address'] = ecu_address
        gl.g_dict['init_connect'] = init_connect
        gl.g_dict['other_connect'] = other_connect
        if not ecu_address.encode('UTF-8').isalnum():
            tip = 'ECU地址不存在：' + gl.g_dict['menu_path']
            bs.debug(fp.debug, tip)
        if not init_connect.encode('UTF-8').isalnum():
            tip = '串型帧头不存在：' + gl.g_dict['menu_path']
            bs.debug(fp.debug, tip)
        parse_kw2000_xml(xml, basic_info, file_name)


def parse_can_xml(xml, basic_info, file_name):
    frame_id = xml.xpath('//CANID/物理请求CANID/text()')[0]
    reply_id = xml.xpath('//CANID/回复CANID_USDT_For_GMLAN/text()')[0]
    fun_id = xml.xpath('//CANID/功能请求CANID/text()')[0]
    gl.g_dict['frame_id'] = frame_id
    gl.g_dict['reply_id'] = reply_id
    gl.g_dict['fun_id'] = fun_id
    gl.g_dict['pin_and_baud'] = '$~#6$~#14$~500$~' + reply_id + '\n;' + 150 * '*' + '\n\n'
    pare_service_node(xml, basic_info, file_name)


def parse_kw2000_xml(xml, basic_info, file_name):
    pare_service_node(xml, basic_info, file_name)


def generate_vehicle_info(info_xml):
    """
    生成车辆基本配置信息
    :param info_xml: 配置信心的xml节点
    :return: 返回节点生成可直接写入文本的字符串
    """
    out_str = ''
    for label in info_xml:
        for i in label:
            out_str += i.tag + ':' + i.text + '\n'
    out_str = out_str + '\n'
    return out_str


def pare_service_node(xml, basic_info, file_name):
    service_xml = xml.xpath('//服务')
    data_dict = {}
    count = 0
    for service in service_xml:
        name = service.xpath('//服务/描述/text()')[count]
        data_dict[name] = []
        count += 1
        for fun_name in service:
            data_dict[name].append(fun_name.text)
    exit_cmd = ''
    # CAN型协议
    if gl.g_dict['protocol_type'] == "CAN":
        act_cmd_0 = data_dict['默认会话模式']
        act_cmd_1 = data_dict['扩展会话模式']
        act_cmd_2 = data_dict['编程会话模式']
        default_str = public.judge_is_cmd(act_cmd_0[1])
        extend_str = public.judge_is_cmd(act_cmd_1[1])
        program_str = public.judge_is_cmd(act_cmd_2[1])
        if default_str:
            default_cmd = bs.cmd_insert_space_can_len16(default_str)
            default_cmd = gl.g_dict['frame_id'] + default_cmd
            gl.g_dict['default_cmd'] = default_cmd
        if extend_str:
            extend_cmd = bs.cmd_insert_space_can_len16(extend_str)
            extend_cmd = gl.g_dict['frame_id'] + extend_cmd
            gl.g_dict['extend_cmd'] = extend_cmd
        if program_str:
            program_cmd = bs.cmd_insert_space_can_len16(program_str)
            program_cmd = gl.g_dict['frame_id'] + program_cmd
            gl.g_dict['program_cmd'] = program_cmd
        password_0 = data_dict['安全访问1']
        password_1 = data_dict['安全访问2']
        password_2 = data_dict['安全访问3']
        password_0_str = public.judge_is_cmd(password_0[1])
        password_1_str = public.judge_is_cmd(password_1[1])
        password_2_str = public.judge_is_cmd(password_2[1])
    # 串型协议
    elif gl.g_dict['protocol_type'] == "KW2000":
        act_cmd_0 = data_dict['开始通讯']
        act_cmd_1 = data_dict['默认诊断会话模式']
        act_cmd_2 = data_dict['扩展诊断会话模式']
        exit_cmd_str = data_dict['结束通讯']
        default_str = public.judge_is_cmd(act_cmd_0[1])
        exit_str = public.judge_is_cmd(exit_cmd_str[1])
        if default_str:
            default_cmd = public.process_kw200_cmd(gl.g_dict['init_connect'], gl.g_dict['ecu_address'], default_str)
            other_str = public.judge_is_cmd(act_cmd_1[1])
            if other_str:
                other_cmd = public.process_kw200_cmd(gl.g_dict['init_connect'], gl.g_dict['ecu_address'], other_str)
                gl.g_dict['other_cmd'] = other_cmd
            else:
                gl.g_dict['other_cmd'] = ''
        else:
            default_str = public.judge_is_cmd(act_cmd_1[1])
            default_cmd = public.process_kw200_cmd(gl.g_dict['init_connect'], gl.g_dict['ecu_address'], default_str)
        extend_str = public.judge_is_cmd(act_cmd_2[1])
        if extend_str:
            extend_cmd = public.process_kw200_cmd(gl.g_dict['init_connect'], gl.g_dict['ecu_address'], extend_str)
            gl.g_dict['extend_cmd'] = extend_cmd
        else:
            gl.g_dict['extend_cmd'] = ''
        if exit_str:
            exit_cmd = public.process_kw200_cmd(gl.g_dict['init_connect'], gl.g_dict['ecu_address'], exit_str)
        gl.g_dict['default_cmd'] = default_cmd

    act_cmd = bs.activate_cmd_add_symbol(gl.g_dict['default_cmd'], gl.g_dict['reply_id'], '$~')
    act_sting = public.return_function_sting('激活命令', '', act_cmd, '')
    exit_string = ''
    if exit_cmd:
        exit_cmd = bs.cmd_add_symbol(exit_cmd, '$@')
        exit_string = public.return_function_sting('退出命令', '', exit_cmd, '')
    # print(act_sting)
    out_link = ''
    on_line_out_link = ''
    no_reply_out_link = ''
    out_dtc = ''
    c_out_dtc = ''
    h_out_dtc = ''
    clear_dtc = ''
    reset_ecu_out = ''
    out_info = ''
    out_ds = ''
    for i in range(len(service_xml)):
        text = service_xml[i].xpath('//服务/描述/text()')[i]
        if text == '清除故障码':
            cdtc_list = data_dict['清除故障码']
            cdtc_in_cmd = public.judge_session_type(cdtc_list[2])
            cdtc_str = public.judge_is_cmd(cdtc_list[1])
            if cdtc_str:
                cdtc_cmd = public.judge_protocol_type_return_cmd(cdtc_str)
                cdtc_cmd = bs.cmd_add_symbol(cdtc_cmd, '$$')
                clear_dtc = public.return_function_sting(text, cdtc_in_cmd, cdtc_cmd, '')
            else:
                clear_dtc = ''
            # print(clear_dtc)
        elif text == '读取冻结帧':
            # freeze_list = data_dict['读取冻结帧']
            # freeze_in_cmd = public.judge_session_type(freeze_list[2])
            # if freeze_list[1] and freeze_list != '-':
            pass
        elif text == '读数据流SID':
            ds_and_info_list = data_dict['读数据流SID']
            ds_and_info_in_cmd = public.judge_session_type(ds_and_info_list[2])
            ds_and_info_str = ds_and_info_list[1].replace(' ', '')[0:2]
            if ds_and_info_str.encode('UTF-8').isalnum():
                info_can_xml = xml.xpath('//模块信息')
                info_k_xml = xml.xpath('//模块信息_数据流')
                ds_can_xml = xml.xpath('//数据流分组')
                if info_can_xml:
                    out_info = ''
                    info_str = info.return_can_information_str(xml, ds_and_info_str)
                    if info_str:
                        out_info = public.return_function_sting('模块信息', ds_and_info_in_cmd, info_str, '')
                    # print(out_info)
                if info_k_xml:
                    out_info = ''
                    out_ds = ''
                    info_str = info.return_k_information_str(xml, ds_and_info_str)
                    if info_str:
                        out_info = public.return_function_sting('模块信息', ds_and_info_in_cmd, info_str, '')
                    ds_k_str = ds.return_k_ds_str(xml, ds_and_info_str)
                    if ds_k_str:
                        out_ds = public.return_function_sting('数据流', ds_and_info_in_cmd, ds_k_str, '')
                    # print(out_info)
                    # print(out_ds)
                if ds_can_xml:
                    out_ds = ''
                    ds_str = ds.return_can_ds_str(xml, ds_and_info_str)
                    if ds_str:
                        out_ds = public.return_function_sting('数据流', ds_and_info_in_cmd, ds_str, '')
                    # print(out_ds)
            else:
                tip = '数据流/版本信息指令是字符，请注意；' + gl.g_dict['menu_path']
                bs.debug(fp.debug, tip)
        elif text == '动态定义SID':
            pass
        elif text == '诊断仪在线需回复':
            on_line_link_list = data_dict['诊断仪在线需回复']
            on_line_link_in_cmd = public.judge_session_type(on_line_link_list[2])
            on_line_link_str = public.judge_is_cmd(on_line_link_list[1])
            if on_line_link_str:
                on_line_link_cmd = public.judge_protocol_type_return_cmd(on_line_link_str)
                on_line_link_cmd = bs.cmd_add_symbol(on_line_link_cmd, ' ')
                on_line_out_link = public.return_function_sting(text, on_line_link_in_cmd, on_line_link_cmd, '')
            else:
                on_line_out_link = ''
            # print(on_line_out_link)
        elif text == '诊断仪在线无回复':
            no_reply_link_list = data_dict['诊断仪在线无回复']
            no_reply_link_in_cmd = public.judge_session_type(no_reply_link_list[2])
            no_reply_link_str = public.judge_is_cmd(no_reply_link_list[1])
            if no_reply_link_str:
                no_reply_link_cmd = public.judge_protocol_type_return_cmd(no_reply_link_str)
                no_reply_link_cmd = bs.cmd_add_symbol(no_reply_link_cmd, '$!')
                no_reply_out_link = public.return_function_sting(text, no_reply_link_in_cmd, no_reply_link_cmd, '')
            else:
                no_reply_out_link = ''
                tip = '诊断仪在线无回复不存在，请注意:' + gl.g_dict['menu_path']
                bs.debug(fp.debug, tip)
            # print(no_reply_out_link)
        elif text == '读取故障码':
            dtc_c_list = data_dict['读取故障码']
            dtc_in_cmd = public.judge_session_type(dtc_c_list[2])
            dtc_c_str = public.judge_is_cmd(dtc_c_list[1])
            if dtc_c_str:
                dtc_start = str(len(dtc_c_str) // 2 - 1)
                dtc_c_cmd = public.judge_protocol_type_return_cmd(dtc_c_str)
                dtc_c_cmd = bs.cmd_add_symbol(dtc_c_cmd, '$#')
                dtc_tip = reade_dtc.can_return_reade_dtc_tip(xml, dtc_start)
                out_dtc = public.return_function_sting(text, dtc_in_cmd, dtc_c_cmd, dtc_tip)
            else:
                out_dtc = ''
            # print(out_dtc)
        elif text == '动作测试SID':
            pass
        elif text == '例程控制SID':
            pass
        elif text == 'ECU复位':
            reset_ecu_list = data_dict['ECU复位']
            reset_ecu_in_cmd = public.judge_session_type(reset_ecu_list[2])
            reset_ecu_str = public.judge_is_cmd(reset_ecu_list[1])
            if reset_ecu_str:
                reset_ecu_cmd = public.judge_protocol_type_return_cmd(reset_ecu_str)
                reset_ecu_cmd = bs.cmd_add_symbol(reset_ecu_cmd, '')
                reset_ecu_out = public.return_function_sting(text, reset_ecu_in_cmd, reset_ecu_cmd, '')
            else:
                reset_ecu_out = ''
            # print(reset_ecu_out)
        elif text == '安全访问1':
            pass
        elif text == '安全访问2':
            pass
        elif text == '安全访问3':
            pass
        elif text == '默认会话模式':
            pass
        elif text == '扩展会话模式':
            pass
        elif text == '编程会话模式':
            pass
        elif text == '开始通讯':
            pass
        elif text == '结束通讯':
            pass
        elif text == '默认诊断会话模式':
            pass
        elif text == '扩展诊断会话模式':
            pass
        elif text == '读当前故障码' or text == '读历史故障码':
            dtc_tip = reade_dtc.kw2000_return_reade_dtc_tip(xml)
            if text == '读当前故障码':
                rdtc_c_list = data_dict['读当前故障码']
                rdtc_in_cmd = public.judge_session_type(rdtc_c_list[2])
                rdtc_c_str = public.judge_is_cmd(rdtc_c_list[1])
                if rdtc_c_str:
                    rdtc_c_cmd = public.judge_protocol_type_return_cmd(rdtc_c_str)
                    rdtc_c_cmd = bs.cmd_add_symbol(rdtc_c_cmd, '$#')
                    text = '$#' + text
                    dtc_tip += gl.g_dict['dtc_lib'] + '\n\n'
                    c_out_dtc = public.return_function_sting(text, rdtc_in_cmd, rdtc_c_cmd, dtc_tip)
                else:
                    c_out_dtc = ''
                # print(c_out_dtc)
            else:
                rdtc_h_list = data_dict['读历史故障码']
                rdtc_in_cmd = public.judge_session_type(rdtc_h_list[2])
                rdtc_h_str = public.judge_is_cmd(rdtc_h_list[1])
                if rdtc_h_str:
                    rdtc_h_cmd = public.judge_protocol_type_return_cmd(rdtc_h_str)
                    rdtc_h_cmd = bs.cmd_add_symbol(rdtc_h_cmd, '$#')
                    text = '$#' + text
                    h_out_dtc = public.return_function_sting(text, rdtc_in_cmd, rdtc_h_cmd, dtc_tip)
                else:
                    h_out_dtc = ''
                # print(h_out_dtc)
        elif text == '读冻结帧请求':
            pass
        elif text == '读模块信息SID':
            pass
        elif text == '写数据SID_不带数据':
            pass
        elif text == '诊断仪在线':
            link_list = data_dict['诊断仪在线']
            link_in_cmd = public.judge_session_type(link_list[2])
            link_str = public.judge_is_cmd(link_list[1])
            if link_str:
                link_cmd = public.judge_protocol_type_return_cmd(link_str)
                link_cmd = bs.cmd_add_symbol(link_cmd, '$!')
                text = '空闲命令'
                out_link = public.return_function_sting(text, link_in_cmd, link_cmd, '')
            else:
                out_link = ''
            # print(out_link)
        else:
            tip = text + ' 未知功能，请查看：' + gl.g_dict['menu_path']
            bs.debug(fp.debug, tip)
    # for i in range(len(service_xml)):
    #     text = service_xml[i].xpath('//服务/描述/text()')[i]
    #     if text == '读冻结帧请求':
    #         freeze_list = data_dict['读冻结帧请求']
    #         freeze_in_cmd = public.judge_session_type(freeze_list[2])
    #         if freeze_list[1] and '-' not in freeze_list[1]:
    #             if '*' in freeze_list[1]:
    #                 freeze_str = freeze_list[1].replace('*', gl.g_dict['freeze_dtc_byte'])
    #                 freeze_str = str(len(freeze_str) // 2).rjust(2, '0') + freeze_str
    #                 freeze_cmd = public.judge_protocol_type_return_cmd(freeze_str)
    #                 freeze_cmd = bs.cmd_add_symbol(freeze_cmd, '$+#')
    #                 freeze_str = freeze_frame.kw2000_return_freeze_string_data(xml, freeze_cmd)
    #             else:
    #                 tip = freeze_list[1] + ' 该冻结帧没有*号替换，请关注：' + gl.g_dict['menu_path']
    #                 bs.debug(fp.debug, tip)
    #             pass
    #     elif text == '读取冻结帧':
    #         freeze_list = data_dict['读取冻结帧']
    #         freeze_in_cmd = public.judge_session_type(freeze_list[2])
    #         if freeze_list[1] and '-' not in freeze_list[1]:
    #             freeze_str = freeze_list[1].replace('*', gl.g_dict['freeze_dtc_byte'])
    #             freeze_str = str(len(freeze_str) // 2).rjust(2, '0') + freeze_str
    #             freeze_cmd = public.judge_protocol_type_return_cmd(freeze_str)
    #             freeze_cmd = bs.cmd_add_symbol(freeze_cmd, '$+#')
    #             freeze_str = freeze_frame.can_return_freeze_string_data(xml, freeze_cmd)
    #         else:
    #             tip = freeze_list[1] + ' 该冻结帧没有*号替换，请关注：' + gl.g_dict['menu_path']
    #             bs.debug(fp.debug, tip)
    #     pass
    data_str = gl.g_dict['pin_and_baud'] + basic_info + act_sting + exit_string + out_link + on_line_out_link +\
               no_reply_out_link + out_dtc + c_out_dtc + h_out_dtc + clear_dtc + reset_ecu_out + out_info + out_ds
    if not os.path.exists('./file/生成协议'):
        os.mkdir('./file/生成协议')
    with open('./file/生成协议/' + file_name + '.asm', 'w', encoding='utf-8') as f:
        f.writelines(data_str)
    # print(data_str)


def get_kw2000_pin(file_path):
    out = ''
    xml = etree.parse(file_path)
    pin = xml.xpath('//ECUConfig/@pin')
    if not pin:
        return '$~#7$~#7$~10400' + '\n;' + 150 * '*' + '\n\n'
    tmp_list = pin[0].split('/')
    if len(tmp_list) > 1:
        out = '$~#' + tmp_list[0] + '$~#' + tmp_list[0] + '$~10400\n'
        i = 1
        str2 = ''
        while i < len(tmp_list):
            str2 += tmp_list[i] + ','
            i += 1
        str1 = '<VCI>\n' \
               '\t<ACTIVE_ADDNODE type="0" num="0">\n' \
               '\t\t<param type="string" value="1,1"/> \n' \
               '\t\t<param type="string" value="'
        str3 = '"/>\n' \
               '\t</ACTIVE_ADDNODE>\n' \
               '</VCI>\n\n'
        out = out + str1 + str2[:-1] + str3
    elif len(tmp_list) == 1:
        out = '$~#' + tmp_list[0] + '$~#' + tmp_list[0] + '$~10400' + '\n;' + 150 * '*' + '\n\n'
    else:
        tip = '获取引脚错误：' + file_path
        bs.debug(fp.debug, tip)
    return out


if __name__ == '__main__':
    in_path = r'D:\BYD_Project\WULING\file\menu_2.txt'
    get_activate_info(in_path)
    # path = r'D:\BYD_Project\WULING\file\business\diagnosticdatabase\vdsdiagdatabase\ecu\cn100_1.2_2011_abs_bosh_k.xml'
    # path = r'D:\BYD_Project\WULING\file\business\diagnosticdatabase\vdsdiagdatabase\ecu\cn100_1.2_2010_sdm_atlf_k.xml'
    # path = r'D:\BYD_Project\WULING\file\business\diagnosticdatabase\vdsdiagdatabase\ecu\cn100v_n12_2016_ecm_can.xml'
    # path = r'D:\BYD_Project\WULING\file\business\diagnosticdatabase\vdsdiagdatabase\ecu\cn100_b12_2010_ecm_k.xml'
    # path = r'D:\BYD_Project\WULING\file\business\diagnosticdatabase\vdsdiagdatabase\ecu\CN113_1.5L_2015_ECM_CAN.xml'
    # path = r'D:\BYD_Project\WULING\file\business\diagnosticdatabase\vdsdiagdatabase\ecu\cn110v_2019_abs_bosh_k.xml'
    # parse_vehicle_data_info(path, 'cn110v_2019_abs_bosh_k')
    pass
