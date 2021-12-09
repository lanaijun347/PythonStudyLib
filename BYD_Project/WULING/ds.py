import basics as bs
from WULING import public
from WULING import file_path as fp
from WULING import wuling_global as gl
import json


def return_k_ds_str(xml, link_str):
    ds_xml = xml.xpath('//模块信息_数据流')
    cmds = []
    cmd_str_list = []
    data_list = []
    for each in ds_xml:
        dict_data = {'编号': '', '数据分类': '', '描述': '', 'lid': '', '起始字节_从RID算起': '', '长度': '', '数据类型': '',
                     '枚举值': '', '参数1': '', '参数2': '', '最小值': '', '最大值': '', '单位': '', '动作测试分组号': ''}
        for a in each:
            dict_data[a.tag] = str(a.text).replace('\n', '')
        if dict_data['描述'] and dict_data['lid'] and dict_data['起始字节_从RID算起'] and dict_data['长度'] and dict_data['数据类型']:
            if dict_data['数据分类'] != '模块信息':
                data_list.append(dict_data)
                if dict_data['lid'] not in cmds:
                    cmds.append(dict_data['lid'])
                    tmp = public.judge_is_cmd(link_str + dict_data['lid'])
                    tmp = public.judge_protocol_type_return_cmd(tmp)
                    cmd_str_list.append(tmp)
    num_list = [i for i in range(len(cmds))]
    cmd_dict = dict(zip(cmds, num_list))
    info_name = []
    cmd_off = []
    byte_num = []
    byte_off = []
    formulas = []
    units = []
    for dict_ds in data_list:
        cmd_off.append(str(cmd_dict[dict_ds['lid']]).rjust(3, '0'))
        info_name.append(dict_ds['描述'].replace('$', '#'))
        byte_num.append(dict_ds['长度'].rjust(2, '0'))
        byte_off.append(str(int(dict_ds['起始字节_从RID算起']) - 1).rjust(3, '0'))
        formula = public.formula_judgment(dict_ds['长度'], dict_ds['数据类型'], dict_ds['枚举值'], dict_ds['参数1'], dict_ds['参数2'])
        formulas.append(formula)
        units.append(dict_ds['单位'])
    cmd_str = bs.cmd_add_symbol(cmd_str_list, '$')
    out_str = cmd_str + '\n' + bs.write_ds_str('  $  ', info_name, units, cmd_off, byte_off, formulas)
    return out_str


def return_can_ds_str(xml, link_str):
    out = ''
    ds_group_xml = xml.xpath('//数据流分组')
    ds_xml = xml.xpath('//数据流_非位对应')
    ds_bit_xml = xml.xpath('//数据流_位对应')
    # 数据流组
    count = 0
    group_name_list = []
    group_dict = {}
    for group_xml in ds_group_xml:
        try:
            number = group_xml.xpath('//数据流分组/编号/text()')[count]
            group_name = group_xml.xpath('//数据流分组/组名/text()')[count]
        except:
            break
        group_dict[number] = []
        group_name_list.append(group_name)
        count += 1
    # 数据流非位对位
    for each in ds_xml:
        dict_no_bit = {'编号': '', '描述': '', '标识符': '', '数据流分组号': '', '动作测试分组号': '',
                       'DID对应数据总字节数': '', '起始字节_从RID起': '', '起始位': '', '数据占字节数': '',
                       '数据占位数': '', '数据类型': '', '枚举值': '', '参数1': '', '参数2': '', '单位': '',
                       '最小值': '', '最大值': ''}
        for a in each:
            if a.tag in dict_no_bit.keys():
                dict_no_bit[a.tag] = str(a.text).replace('\n', '')
        if dict_no_bit['数据流分组号']:
            group_num_list = dict_no_bit['数据流分组号'].split('|')
            for num in group_num_list:
                tmp_num = str(int(num))
                if tmp_num in group_dict.keys():
                    group_dict[tmp_num].append(dict_no_bit)
    # 数据流位对位
    for each in ds_bit_xml:
        dict_bit = {'编号': '', '描述': '', '标识符': '', '数据流分组号': '', '动作测试分组号': '',
                    'DID对应数据总字节数': '', '所在字节位置': '', '数据类型': '', '枚举值': ''}
        for a in each:
            if a.tag in dict_bit.keys():
                dict_bit[a.tag] = str(a.text).replace('\n', '')
        if dict_bit['数据流分组号'] and dict_bit['数据流分组号'] != '-':
            group_num_list = dict_bit['数据流分组号'].split('|')
            for num in group_num_list:
                tmp_num = str(int(num))
                if tmp_num in group_dict.keys():
                    group_dict[tmp_num].append(dict_bit)
    if group_dict:
        out = return_can_ds_out_data(group_dict, group_name_list, link_str)
    return out


def return_can_ds_out_data(group_dict, group_name_list, link_str):
    out = ''
    count = 0
    for key, value in group_dict.items():
        if len(group_dict.keys()) > 1:
            menu_name = ' $ ' + str(count).rjust(2, '0') + '.' + group_name_list[count] + '\n\n'
        else:
            menu_name = '   ' + str(count).rjust(2, '0') + '.' + group_name_list[count] + '\n\n'
        # 命令先去重
        cmd_str = []
        out_cmd = []
        for data_dict in value:
            if data_dict['描述'] and data_dict['标识符'] and data_dict['DID对应数据总字节数'] and data_dict['数据类型']:
                if data_dict['标识符'] not in cmd_str:
                    cmd_str.append(data_dict['标识符'])
                    tmp = public.judge_is_cmd(link_str + data_dict['标识符'].replace('\n', ''))
                    tmp = public.judge_protocol_type_return_cmd(tmp)
                    out_cmd.append(tmp)
        num_list = [i for i in range(len(cmd_str))]
        cmd_dict = dict(zip(cmd_str, num_list))
        out_cmd_str = bs.cmd_add_symbol(out_cmd, '$')
        # 数据流数据处理
        ds_name = []
        cmd_off = []
        byte_num = []
        byte_off = []
        formulas = []
        units = []
        for data_dict in value:
            if data_dict['描述'] and data_dict['标识符'] and data_dict['DID对应数据总字节数'] and data_dict['数据类型']:
                if len(data_dict.keys()) == 17:
                    if int(data_dict['数据占字节数']) > int(data_dict['DID对应数据总字节数']):
                        if int(data_dict['DID对应数据总字节数']) != 0:
                            data_dict['数据占字节数'] = data_dict['DID对应数据总字节数']
                    else:
                        if int(data_dict['数据占字节数']) != 0:
                            data_dict['DID对应数据总字节数'] = data_dict['数据占字节数']
                        else:
                            data_dict['数据占字节数'] = data_dict['DID对应数据总字节数']
                    if int(data_dict['数据占位数']) != 0:
                        data_dict['数据占字节数'] = data_dict['数据占位数']
                    ds_name.append(data_dict['描述'].replace('$', '#'))
                    cmd_off.append(str(cmd_dict[data_dict['标识符']]).rjust(3, '0'))
                    byte_num.append(data_dict['数据占字节数'].rjust(3, '0'))
                    byte_off.append(str(int(data_dict['起始字节_从RID起']) + int(data_dict['起始位']) - 1).rjust(3, '0'))
                    formula = public.formula_judgment(data_dict['数据占字节数'], data_dict['数据类型'], data_dict['枚举值'], data_dict['参数1'], data_dict['参数2'])
                    formulas.append(formula)
                    units.append(data_dict['单位'])
                else:
                    ds_name.append(data_dict['描述'].replace('$', '#'))
                    cmd_off.append(str(cmd_dict[data_dict['标识符']]).rjust(3, '0'))
                    byte_num.append(data_dict['DID对应数据总字节数'].rjust(3, '0'))
                    byte_off.append(str(len(data_dict['标识符']) // 2 + int(data_dict['所在字节位置'])).rjust(3, '0'))
                    formula = public.formula_judgment(data_dict['DID对应数据总字节数'], data_dict['数据类型'], data_dict['枚举值'])
                    formulas.append(formula)
                    units.append('-')
        out += menu_name + out_cmd_str + '\n' + bs.write_ds_str('  $  ', ds_name, units, cmd_off, byte_off, formulas) + '\n'
        count += 1
    return out

