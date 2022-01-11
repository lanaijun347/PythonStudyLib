import file_path as Pa
import basics as Bs
import re


def dtc_out_lib(link_path, dtc_link_2byte, dict1, dict2):
    dtc_id = []
    with open(link_path, 'r') as f:
        for line in f.readlines():
            dtc_id.append(line.replace('\n', ''))

    for i in dtc_id:
        if '000000' == i[2:]:
            tmp = i[0:2]
        elif '0000' == i[4:]:
            tmp = i[0:4]
        else:
            tmp = i[0:6]
        # path = 'd:\\BYD_Project\\BYD\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'd:\\BYD_Project\\DATONG\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'd:\\BYD_Project\\BenTeng\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'd:\\BYD_Project\\CHUANQI\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'd:\\BYD_Project\\ZHONGTAI\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'd:\\BYD_Project\\LIFAN\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'd:\\BYD_Project\\HAIMA\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'd:\\BYD_Project\\KARRY_TF\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\wuling_x431\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'd:\\BYD_Project\\JMEV\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'd:\\BYD_Project\\JINBEI\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'd:\\BYD_Project\\YEMA\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'd:\\BYD_Project\\WM\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'd:\\BYD_Project\\HANTENG\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'd:\\BYD_Project\\LINGTU\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'd:\\BYD_Project\\SWM\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\BYD_v18.90\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\BJQC\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\JILI\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\POCCO\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\DAYUN\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\LEAP\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\RUICHI\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\SAILISI\\file\\码库\\DTC\\' + i + '.asm'
        # path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\SUDA\\file\\码库\\DTC\\' + i + '.asm'
        path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\YUJIE\\file\\码库\\DTC\\' + i + '.asm'
        with open(path, 'w') as f1:
            print('正在执行：' + i + '.asm')
            symbol = '     $*     '
            str1 = '^(' + tmp + ')*'
            for key, value in dict1.items():
                aa = re.findall(str1, key)
                if len(aa[0]) > 1:
                    len1 = len(aa[0])
                    str2 = key[len1:] + symbol + value + '\n'
                    f1.writelines(str2)
            for key, value in dict2.items():
                aa = re.findall(str1, key)
                if len(aa[0]) > 1:
                    len2 = len(aa[0])
                    str3 = key[len2:] + symbol + value + '\n'
                    f1.writelines(str3)
    two_byte_dtc_out_lib(dtc_link_2byte, dict1, dict2)
    print('完成！')


def two_byte_dtc_out_lib(dtc_link_2byte, dict1, dict2):
    dtc_id = []
    with open(dtc_link_2byte, 'r') as f:
        for line in f.readlines():
            dtc_id.append(line.replace('\n', ''))

    for i in dtc_id:
        tmp = i[0:4]
        # path = 'd:\\BYD_Project\\BYD\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'd:\\BYD_Project\\DATONG\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'd:\\BYD_Project\\BenTeng\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'd:\\BYD_Project\\CHUANQI\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'd:\\BYD_Project\\ZHONGTAI\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'd:\\BYD_Project\\LIFAN\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'd:\\BYD_Project\\HAIMA\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'd:\\BYD_Project\\KARRY_TF\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\wuling_x431\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'd:\\BYD_Project\\SINOGOLD\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'd:\\BYD_Project\\JMEV\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'd:\\BYD_Project\\JINBEI\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'd:\\BYD_Project\\YEMA\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'd:\\BYD_Project\\WM\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'd:\\BYD_Project\\HANTENG\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'd:\\BYD_Project\\LINGTU\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'd:\\BYD_Project\\SWM\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\BYD_v18.90\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\BJQC\\ file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\JILI\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\POCCO\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\DAYU\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\LEAP\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\RUICHI\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\SAILISI\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        # path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\SUDA\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        path = 'D:\\xiaolan\\PythonStudyLib\\BYD_Project\\YUJIE\\file\\码库\\DTC\\' + i + '_2BYTE' + '.asm'
        with open(path, 'w') as f1:
            print('正在执行：' + i + '_2BYTE.asm')
            symbol = '     $*     '
            str1 = '^(' + tmp + ')*'
            for key, value in dict1.items():
                aa = re.findall(str1, key)
                if len(aa[0]) > 1:
                    len1 = len(aa[0])
                    str2 = key[len1:] + symbol + value + '\n'
                    f1.writelines(str2)
            for key, value in dict2.items():
                aa = re.findall(str1, key)
                if len(aa[0]) > 1:
                    len2 = len(aa[0])
                    str3 = key[len2:] + symbol + value + '\n'
                    f1.writelines(str3)


if __name__ == '__main__':
    # tcode = Bs.file_to_dict(r'd:\BYD_Project\BYD\file\码库\TCODE_CN.txt')
    # tcode1 = Bs.file_to_dict(r'd:\BYD_Project\BYD\file\码库\TCODE1_CN.txt')
    # tcode = Bs.file_to_dict(r'd:\BYD_Project\DATONG\file\码库\TCODE_CN.txt')
    # tcode1 = Bs.file_to_dict(r'd:\BYD_Project\DATONG\file\码库\TCODE1_CN.txt')
    # tcode = Bs.file_to_dict(r'd:\BYD_Project\BenTeng\file\码库\TCODE_CN.txt')
    # tcode1 = Bs.file_to_dict(r'd:\BYD_Project\BenTeng\file\码库\TCODE1_CN.txt')
    # tcode = Bs.file_to_dict(r'd:\BYD_Project\CHUANQI\file\码库\TCODE_CN.txt')
    # tcode1 = Bs.file_to_dict(r'd:\BYD_Project\CHUANQI\file\码库\TCODE1_CN.txt')
    # tcode = Bs.file_to_dict(r'd:\BYD_Project\ZHONGTAI\file\码库\TCODE_CN.txt')
    # tcode1 = Bs.file_to_dict(r'd:\BYD_Project\ZHONGTAI\file\码库\TCODE1_CN.txt')
    # tcode = Bs.file_to_dict(r'd:\BYD_Project\LIFAN\file\码库\TCODE_CN.txt')
    # tcode1 = Bs.file_to_dict(r'd:\BYD_Project\LIFAN\file\码库\TCODE1_CN.txt')
    # tcode = Bs.file_to_dict(r'd:\BYD_Project\KARRY_TF\file\码库\TCODE_CN.txt')
    # tcode1 = Bs.file_to_dict(r'd:\BYD_Project\KARRY_TF\file\码库\TCODE1_CN.txt')
    # tcode = Bs.file_to_dict(r'd:\BYD_Project\SINOGOLD\file\码库\TCODE_CN.txt')
    # tcode1 = Bs.file_to_dict(r'd:\BYD_Project\SINOGOLD\file\码库\TCODE1_CN.txt')
    # tcode = Bs.file_to_dict(r'd:\BYD_Project\JMEV\file\码库\TCODE_CN.txt')
    # tcode1 = Bs.file_to_dict(r'd:\BYD_Project\JMEV\file\码库\TCODE1_CN.txt')
    # tcode = Bs.file_to_dict(r'd:\BYD_Project\JINBEI\file\码库\TCODE_CN.txt')
    # tcode1 = Bs.file_to_dict(r'd:\BYD_Project\JINBEI\file\码库\TCODE1_CN.txt')
    # tcode = Bs.file_to_dict(r'd:\BYD_Project\YEMA\file\码库\TCODE_CN.txt')
    # tcode = Bs.file_to_dict(r'd:\BYD_Project\WM\file\码库\TCODE_CN.txt')
    # tcode = Bs.file_to_dict(r'd:\BYD_Project\HANTENG\file\码库\TCODE_CN.txt')
    # tcode = Bs.file_to_dict(r'd:\BYD_Project\LINGTU\file\码库\TCODE_CN.txt')
    # tcode = Bs.file_to_dict(r'd:\BYD_Project\SWM\file\码库\TCODE_CN.txt')
    # tcode = Bs.file_to_dict(r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\码库\TCODE_CN.txt')
    # tcode1 = Bs.file_to_dict(r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\码库\TCODE1_CN.txt')
    # tcode = Bs.file_to_dict(r'D:\xiaolan\PythonStudyLib\BYD_Project\BJQC\file\码库\TCODE_CN.txt')
    # tcode1 = Bs.file_to_dict(r'D:\xiaolan\PythonStudyLib\BYD_Project\BJQC\file\码库\TCODE1_CN.txt')
    # tcode = Bs.file_to_dict(r'D:\xiaolan\PythonStudyLib\BYD_Project\JILI\file\码库\TCODE_CN.txt')
    # tcode = Bs.file_to_dict(r'D:\xiaolan\PythonStudyLib\BYD_Project\wuling_x431\file\码库\TCODE_CN.txt')
    # tcode1 = Bs.file_to_dict(r'D:\xiaolan\PythonStudyLib\BYD_Project\wuling_x431\file\码库\TCODE1_CN.txt')
    # tcode = Bs.file_to_dict(r'D:\xiaolan\PythonStudyLib\BYD_Project\POCCO\file\码库\TCODE_CN.txt')
    # tcode = Bs.file_to_dict(r'D:\xiaolan\PythonStudyLib\BYD_Project\DAYUN\file\码库\TCODE_CN.txt')
    # tcode = Bs.file_to_dict(r'D:\xiaolan\PythonStudyLib\BYD_Project\LEAP\file\码库\TCODE_CN.txt')
    # tcode = Bs.file_to_dict(r'D:\xiaolan\PythonStudyLib\BYD_Project\RUICHI\file\码库\TCODE_CN.txt')
    # tcode = Bs.file_to_dict(r'D:\xiaolan\PythonStudyLib\BYD_Project\SAILISI\file\码库\TCODE_CN.txt')
    # tcode = Bs.file_to_dict(r'D:\xiaolan\PythonStudyLib\BYD_Project\SUDA\file\码库\TCODE_CN.txt')
    tcode = Bs.file_to_dict(r'D:\xiaolan\PythonStudyLib\BYD_Project\YUJIE\file\码库\TCODE_CN.txt')
    dtc_out_lib(Pa.dtc_link, Pa.dtc_link_2byte, tcode, {})

