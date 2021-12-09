import basics as bs
from WULING import file_path as fp
from WULING import wuling_global as gl
from WULING import public


def can_return_freeze_string_data(xml, freeze_str):
    freeze_xml = xml.xpath('//冻结帧')
    data_list = []
    for each in freeze_xml:
        freeze_dict = {'编号': '', '数据标识符': '', '起始字节_从RID算起': '', '数据占字节数': '', '描述': '',
                       '数据类型': '', '参数1': '', '参数2': '', '枚举值': '', '单位': '', '最小值': '', '最大值': ''}
        for a in each:
            freeze_dict[a.tag] = str(a.text).replace('\n', '')
        if freeze_dict['描述'] and freeze_dict['起始字节_从RID算起'] and freeze_dict['数据类型']:
            data_list.append(freeze_dict)
    freeze_name = []
    cmd_off = []
    byte_num = []
    byte_off = []
    formulas = []
    for dict_a in data_list:
        cmd_off.append('000')
        freeze_name.append(dict_a['描述'].replace('\n', ''))
        byte_num.append(dict_a['数据占字节数'].rjust(2, '0'))
        byte_off.append(str((len(dict_a['起始字节_从RID算起']) // 2 + 1)).rjust(3, '0'))
        formula = public.formula_judgment(dict_a['数据占字节数'], dict_a['数据类型'], dict_a['枚举值'], dict_a['参数1'], dict_a['参数2'])
        formulas.append(formula)
    out = ''
    return out


def kw2000_return_freeze_string_data(xml, freeze_str):
    pass
