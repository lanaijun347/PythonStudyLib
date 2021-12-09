import basics as bs
from WULING import public


def return_can_information_str(xml, link_str):
    info_xml = xml.xpath('//模块信息')
    cmds = []
    cmd_str_list = []
    data_list = []
    for each in info_xml:
        dict_info = {'编号': '', '数据标识符': '', '描述': '', '数据长度': '', '数据类型': ''}
        for a in each:
            if a.tag in dict_info.keys():
                dict_info[a.tag] = str(a.text).replace('\n', '')
        if dict_info['数据标识符'] and dict_info['描述'] and dict_info['数据长度'] and dict_info['数据类型']:
            data_list.append(dict_info)
            if dict_info['数据标识符'] not in cmds:
                cmds.append(dict_info['数据标识符'])
                tmp = public.judge_is_cmd(link_str + dict_info['数据标识符'])
                tmp = public.judge_protocol_type_return_cmd(tmp)
                cmd_str_list.append(tmp)
    num_list = [i for i in range(len(cmds))]
    cmd_dict = dict(zip(cmds, num_list))
    info_name = []
    cmd_off = []
    byte_num = []
    byte_off = []
    formulas = []
    for dict_a in data_list:
        cmd_off.append(str(cmd_dict[dict_a['数据标识符']]).rjust(3, '0'))
        info_name.append(dict_a['描述'].replace('\n', ''))
        byte_num.append(dict_a['数据长度'].rjust(2, '0'))
        byte_off.append(str((len(dict_a['数据标识符']) // 2 + 1)).rjust(3, '0'))
        formula = public.formula_judgment(dict_a['数据长度'], dict_a['数据类型'])
        formulas.append(formula)
    cmd_str = bs.cmd_add_symbol(cmd_str_list, '$%')
    out_str = cmd_str + '\n' + bs.write_info_str('  $%  ', info_name, cmd_off, byte_off, formulas)
    return out_str


def return_k_information_str(xml, link_str):
    ds_xml = xml.xpath('//模块信息_数据流')
    cmds = []
    cmd_str_list = []
    data_list = []
    for each in ds_xml:
        dict_data = {'编号': '', '数据分类': '', '描述': '', 'lid': '', '起始字节_从RID算起': '', '长度': '', '数据类型': '',
                     '枚举值': '', '参数1': '', '参数2': '', '最小值': '', '最大值': '', '单位': '', '动作测试分组号': ''}
        for a in each:
            if a.tag in dict_data.keys():
                dict_data[a.tag] = str(a.text).replace('\n', '')
        if dict_data['描述'] and dict_data['lid'] and dict_data['起始字节_从RID算起'] and dict_data['长度'] and dict_data['数据类型']:
            if dict_data['数据分类'] == '模块信息':
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
        info_name.append(dict_ds['描述'].replace('\n', ''))
        byte_num.append(dict_ds['长度'].rjust(2, '0'))
        byte_off.append(str(int(dict_ds['起始字节_从RID算起']) - 1).rjust(3, '0'))
        formula = public.formula_judgment(dict_ds['长度'], dict_ds['数据类型'], dict_ds['枚举值'], dict_ds['参数1'],
                                          dict_ds['参数2'])
        formulas.append(formula)
        units.append(dict_ds['单位'])
    cmd_str = bs.cmd_add_symbol(cmd_str_list, '$%')
    out_str = cmd_str + '\n' + bs.write_info_str('  $%  ', info_name, cmd_off, byte_off, formulas)
    return out_str
