


def judge_file_chinese_in_string(file_path):
    with open(file_path, 'r') as f:
        for line in f.readlines():
            flag = is_contains_chinese(line)
            if flag:
                print(line)
    pass


def is_contains_chinese(strs):
    for _char in strs:
        if '\u4e00' <= _char <= '\u9fa5':
            return True
    return False


if __name__ == "__main__":
    file_path = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\IMS_EXPRESS.txt'
    judge_file_chinese_in_string(file_path)
