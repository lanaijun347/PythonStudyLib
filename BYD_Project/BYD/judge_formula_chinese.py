

chinese_list = []


def judge_file_chinese_in_string(file_path, formula_out, str_out, debug_file):
    line_list = []
    with open(file_path, 'r') as f:
        for line in f.readlines():
            line = line.replace('Y=', 'y=').replace('Y = ', 'y=').replace('Y =', 'y=').replace('Y= ', 'y=')\
                .replace('y =', 'y=').replace('y = ', 'y=').replace('y= ', 'y=')
            line_list.append(line)
            flag = is_contains_chinese(line)
            if flag and (('switxh' in line) or ('SWITXH'in line) or ("if" in line) or ("IF" in line)):
                list1 = line.split('y=')
                judge_list_chinese_in_string(list1)
    tmp_list = [x for x in range(len(chinese_list))]
    chinese_dict = dict(zip(chinese_list, tmp_list))

    with open(formula_out, 'w') as f:
        for line in line_list:
            flag = is_contains_chinese(line)
            if flag and (('switxh' in line) or ('SWITXH'in line) or ("if" in line) or ("IF" in line)):
                list1 = line.split('y=')
                new_line = ''
                for str1 in list1:
                    flag1 = is_contains_chinese(str1)
                    if flag1:
                        chinese_str = str1.split(';')
                        value = chinese_dict[chinese_str[0]]
                        if '\n' not in chinese_str[1]:
                            new_line += "@" + str(value).rjust(4, '0') + ';' + chinese_str[1] + 'y='
                        else:
                            new_line += "@" + str(value).rjust(4, '0') + ';' + chinese_str[1]
                    else:
                        if str1 == list1[-1]:
                            new_line += str1
                        else:
                            new_line += str1 + 'y='
                f.writelines(new_line)
            else:
                f.writelines(line)

    with open(str_out, 'w') as f:
        for key, value in chinese_dict.items():
            line = "IMS_DSSTRING_" + str(value).rjust(4, '0') + '\t' + key + '\t' + "DS\n"
            f.writelines(line)

    debug_list = []
    with open(formula_out, 'r') as f:
        for line in f.readlines():
            flag = is_contains_chinese(line)
            if flag:
                debug_list.append(line)

    with open(debug_file, 'w') as f:
        for line in debug_list:
            f.writelines(line)


def is_contains_chinese(strs):
    for _char in strs:
        if '\u4e00' <= _char <= '\u9fa5':
            return True
    return False


def judge_list_chinese_in_string(list1):
    for line in list1:
        flag = is_contains_chinese(line)
        if flag:
            chinese_str = line.split(';')[0]
            if chinese_str not in chinese_list:
                chinese_list.append(chinese_str)


if __name__ == "__main__":
    file_path = r'D:\JBT\常开\xinnengyuan\哪吒汽车\NETA\解析_v10.01\IMS_EXPRESS.txt'
    formula_out = r'D:\JBT\常开\xinnengyuan\哪吒汽车\NETA\解析_v10.01\out.txt'
    str_out = r'D:\JBT\常开\xinnengyuan\哪吒汽车\NETA\解析_v10.01\str_out.txt'
    debug_file = r'D:\JBT\常开\xinnengyuan\哪吒汽车\NETA\解析_v10.01\debug.txt'
    judge_file_chinese_in_string(file_path, formula_out, str_out, debug_file)
