import basics as bs
import ROEWE.roewe_gl as gl
import ROEWE.file_path as pa


def get_info_data(token):
    """获取荣威-名爵版本信息函数"""
    # 判断是否存在版本信息
    ecu_is = bs.token_4_int(token, 24)
    if ecu_is:
        # 加载名称/公式文件
        text_cn = bs.file_to_dict(pa.text_cn)
        ims_express = bs.file_to_dict(pa.ims_express)
        # 版本信息总数
        ecu_total = bs.token_2_int(token, 101)
        i = 0
        v15 = 257912
        ecu_name_id_list = []
        ecu_cmd_off_list = []
        ecu_cmd_list = []
        ecu_formula_id_list = []
        while i < ecu_total:
            v16 = 44 * i + 257896
            ecu_name_id = bs.token_4(token, v16 + 4)
            ecu_name_id_list.append(ecu_name_id)
            ecu_cmd_off = token[v16 + 8]
            ecu_cmd_off_list.append(str(ecu_cmd_off - 1).rjust(3, '0'))
            cmd_len = token[v15 + 4] + 1
            ecu_cmd = bs.token_n_re(token, v15 + 4, cmd_len)
            ecu_cmd_list.append(ecu_cmd)
            ecu_formula_id = bs.token_4(token, 44 * i + 257912)
            ecu_formula_id_list.append(ecu_formula_id)
            v15 += 44
            i += 1
        ecu_name_list = bs.get_id_data_from_dict(text_cn, ecu_name_id_list)
        ecu_formula_list = bs.get_id_data_from_dict(ims_express, ecu_formula_id_list)
        # 命令去重
        cmd_data = bs.cmd_to_dict(ecu_cmd_list)
        req_cmd_list = cmd_data[0]
        cmd_ans_str_list = cmd_data[1]
        # 写入版本信息、数据流字符串（即：每条数据）  （符号：（$ % 、$）， 名称, 命令偏移, 字节偏移， 公式
        str1 = bs.write_info_str('  $%  ', ecu_name_list, cmd_ans_str_list, ecu_cmd_off_list, ecu_formula_list)
        return req_cmd_list, str1
    else:
        return None


