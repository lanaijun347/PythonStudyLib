import pypyodbc as mdb
import win32com.client
import os
import xlrd
import glob
import basics as bs
import shutil

# path = r'D:\BYD_Project\WULING\file\business\diagnosticdatabase\vdsdiagdatabase\DTC\DTC.mdb'
# connStr ='Driver={Microsoft Access Driver (*.mdb, *.accdb)};DBQ='+path+';Uid=;PWD=whut123'
# conn = mdb.win_connect_mdb(connStr)
# cur = conn.cursor()
# # sql = "SELECT * FROM " + 'ALLDTCCODE'
# sql = "SELECT name FROM MSYSOBJECTS WHERE TYPE=1 AND NAME NOT LIKE 'Msys*'"
# for row in cur.execute(sql):
#     print(row)
# # cur.execute(sql)
# # all_data = cur.fetchall()
#
# # toltal_rows = len(all_data)
# # toltal_cols = len(all_data[0])
# # print(toltal_cols)
# # print(toltal_rows)
# # print(all_data[0])
# conn.close()


def generate_dtc_lib(in_path, out_path):
    """
    生成五菱原厂码库程序
    :param in_path: Execl表路径
    :param out_path: 输出文件夹路径
    :return: 返回文件名为拼音首字节列表
    """
    file_name_list = []
    if os.path.exists(out_path):
        shutil.rmtree(out_path)
    if not os.path.exists(out_path):
        os.mkdir(out_path)
    if os.path.exists(in_path):
        read_execl = glob.glob(os.path.join(in_path, '*.xls'))
        for file_name in read_execl:
            path, name = os.path.split(file_name)
            str_pinyin = bs.cn_to_first_byte_pinyin(name.replace('.xls', ''))
            file_name_list.append(str_pinyin.upper())
            out_file_path = out_path + '\\' + name.replace('.xls', '.txt')
            with open(out_file_path, 'w', encoding='gbk', errors='ignore') as f:
                write_data = get_write_dtc_lib_str(file_name)
                f.writelines(write_data)
    return file_name_list


def readExcelToList(inReadPath):
    """
    读取五菱原厂码库EXECL表数据
    :param inReadPath:EXECL表路径
    :return:码号为键值，描述为值得字典
    """
    # excelDataList = []
    dtcDict = {}
    if os.path.exists(inReadPath):
        with xlrd.open_workbook(inReadPath) as rExcel:
            sheetNameList = rExcel.sheet_names()
            for rSheetName in sheetNameList:
                rSheet = rExcel.sheet_by_name(rSheetName)
                if rSheet.nrows != 0:
                    line_0 = rSheet.row_values(0)
                    code_p = line_0.index('DTCCode')
                    strCN_p = line_0.index('DiscribeCN')
                    str_EN_p = line_0.index('DiscribeEN')
                    rIndex = 1
                    while rIndex < rSheet.nrows:
                        linesDataList = rSheet.row_values(rIndex)
                        if linesDataList[code_p]:
                            if linesDataList[strCN_p]:
                                dtcDict[linesDataList[code_p].upper().strip().replace(' ', '').replace('0X', '')] = linesDataList[strCN_p].replace('\n', '').replace('$', '#')
                            elif linesDataList[str_EN_p]:
                                dtcDict[linesDataList[code_p].upper().strip().replace(' ', '').replace('0X', '')] = linesDataList[str_EN_p].replace('\n','').replace('$', '#')
                            else:
                                rIndex += 1
                                continue
                        else:
                            print('键值不存在： ' + inReadPath)
                        # excelDataList.append(linesDataList)
                        rIndex += 1
    return dtcDict


def get_write_dtc_lib_str(inReadPath):
    """
    将灯哥工具可生成码库数据写入字符串
    :param inReadPath: Execl表路径
    :return:可写入文本字符串
    """
    write_str = ''
    dtcDict = readExcelToList(inReadPath)
    for key, value in dtcDict.items():
        code = pcbu_to_hex(key)
        if not code:
            continue
        write_str += code + 10 * ' ' + '$*' + 10 * ' ' + key + '\t' + value + '\n'
    return write_str


def pcbu_to_hex(str1):
    """
    PCBU码转十六进制
    :param str1: 码号
    :return: 十六进制码号
    """
    for bit in str1.replace(' ', ''):
        if bit not in '0123456789ABCDEFPU':
            print(str1 + ' ：码号错误。')
            return ''
    if str1[0] == 'P':
        out = str1[1:]
    elif str1[0] == 'C':
        out = hex(4 + int(str1[1])).replace('0x', '').upper() + str1[2:]
    elif str1[0] == 'B':
        out = hex(8 + int(str1[1])).replace('0x', '').upper() + str1[2:]
    elif str1[0] == 'U':
        out = hex(12 + int(str1[1])).replace('0x', '').upper() + str1[2:]
    else:
        out = str1
    return out


if __name__ == '__main__':
    in_path = r'D:\BYD_Project\WULING\file\business\diagnosticdatabase\vdsdiagdatabase\DTC\dtc'
    out_path = r'D:\BYD_Project\WULING\file\生成码库'
    generate_dtc_lib(in_path, out_path)
