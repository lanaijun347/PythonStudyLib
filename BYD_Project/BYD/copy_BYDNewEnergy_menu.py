# 将比亚迪新能源部分xml复制到对应新能源文件夹下
import os
from lxml import etree
import shutil


# 获取比亚迪新能源菜单ID
def get_menu_id(menu_path):
    # xml解析
    xml = etree.parse(menu_path)
    data = xml.xpath('//menu/@path')
    menu_ids = []
    for path in data:
        menu_id = path.replace('DATA/', '')
        if menu_id not in menu_ids:
            menu_ids.append(menu_id)
    return menu_ids


# 将比亚迪新能源XML资源考入比亚迪新能源中
def copy_file_to_BYDNewEnergy(ids, in_path, out_path):
    print('共' + str(len(ids)) + '个文件夹要复制！')
    for i in ids:
        print('正在执行 ' + i + ' 文件夹...')
        path_i = in_path + '\\' + i
        path_o = out_path + '\\' + i
        if not os.path.exists(path_o):
            shutil.copytree(path_i, path_o)
    print('复制完成。')






if __name__ == '__main__':
    # 比亚迪
    new_energy_menu_path = 'D:\JBT\诊断项目\JBT_新能源车\B_003_比亚迪\比亚迪新能源-研发文档\IMS-Decoder\调试版-比亚迪新能源\DiagnosisProgram\China\BYDNE\Menu.xml'
    byd_path = r'D:\JBT\诊断项目\JBT_汽油车型\B_011_比亚迪\比亚迪-研发文档\IMS-Decoder\调试版-比亚迪\DiagnosisProgram\China\BYD'
    bydne_path = r'D:\JBT\诊断项目\JBT_新能源车\B_003_比亚迪\比亚迪新能源-研发文档\IMS-Decoder\调试版-比亚迪新能源\DiagnosisProgram\China\BYDNE'

    # 上汽大通
    # new_energy_menu_path = 'D:\JBT\诊断项目\JBT_汽油车型\S_080_上汽大通\上汽大通新能源-研发文档\IMS-Decoder\调试版-上汽大通\DiagnosisProgram\China\MRXUSNEW\Menu.xml'
    # byd_path = r'D:\JBT\诊断项目\JBT_汽油车型\S_080_上汽大通\IMS-Decoder\调试版-上汽大通\DiagnosisProgram\China\DATONG\DATA'
    # bydne_path = r'D:\JBT\诊断项目\JBT_汽油车型\S_080_上汽大通\上汽大通新能源-研发文档\IMS-Decoder\调试版-上汽大通\DiagnosisProgram\China\MRXUSNEW\DATA'

    # 广汽传祺
    # new_energy_menu_path = 'D:\JBT\诊断项目\JBT_新能源车\G_008_广汽传祺\广汽传祺新能源-研发文档\IMS-Decoder\调试版\DiagnosisProgram\China\TRUMPCHE\Menu.xml'
    # byd_path = r'D:\JBT\诊断项目\JBT_汽油车型\G_041_广汽传祺\广汽传祺-研发文档\IMS-Decoder\android\DiagnosisProgram\China\TRUMPCHI\DATA'
    # bydne_path = r'D:\JBT\诊断项目\JBT_新能源车\G_008_广汽传祺\广汽传祺新能源-研发文档\IMS-Decoder\调试版\DiagnosisProgram\China\TRUMPCHE\DATA'

    # 职教
    # new_energy_menu_path = 'D:\JBT\诊断项目\JBT_汽油车型\职教-BYD\BYD\Menu.xml'
    # byd_path = r'D:\JBT\诊断项目\JBT_新能源车\B_003_比亚迪\比亚迪新能源-研发文档\IMS-Decoder\调试版-比亚迪新能源\DiagnosisProgram\China\BYDNE'
    # bydne_path = r'D:\JBT\诊断项目\JBT_汽油车型\职教-BYD\BYD\NEW'
    menu_id = get_menu_id(new_energy_menu_path)
    copy_file_to_BYDNewEnergy(menu_id, byd_path, bydne_path)
