# 将比亚迪新能源部分xml复制到对应新能源文件夹下
import os
from lxml import etree
import shutil
import basics as Bs


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
        # print('正在执行 ' + i + ' 文件夹...')
        path_i = in_path + '\\' + i
        path_o = out_path + '\\' + i
        if not path_i:
            print('警告：未找到 ' + i)
        if not os.path.exists(path_o):
            shutil.copytree(path_i, path_o)
    print('复制完成。')


def copy_files_via_menu(menu, file_path, out_path):
    """
    根据菜单ID拷贝协议到某个文件夹
    :param menu: 菜单文件
    :param file_path: 协议文件夹
    :param out_path: 输出文件夹
    :return:
    """
    ids = Bs.return_menu_id_str(menu)
    print('共' + str(len(ids)) + '个文件要复制！')
    for name in ids:
        name = name.rjust(4, '0').lower()
        path_i = file_path + '\\' + name + '.asm'
        path_o = out_path + '\\' + name + '.asm'
        if not path_i:
            print('警告：未找到 ' + name)
        if not os.path.exists(path_o):
            shutil.copyfile(path_i, path_o)
    print('复制完成。')

    pass


if __name__ == '__main__':
    # 比亚迪
    # new_energy_menu_path = 'D:\JBT\诊断项目\JBT_新能源车\B_003_比亚迪\比亚迪新能源-研发文档\IMS-Decoder\调试版-比亚迪新能源\DiagnosisProgram\China\BYDNE\Menu.xml'
    # byd_path = r'D:\JBT\诊断项目\JBT_汽油车型\B_011_比亚迪\比亚迪-研发文档\IMS-Decoder\调试版-比亚迪\DiagnosisProgram\China\BYD'
    # bydne_path = r'D:\JBT\诊断项目\JBT_新能源车\B_003_比亚迪\比亚迪新能源-研发文档\IMS-Decoder\调试版-比亚迪新能源\DiagnosisProgram\China\BYDNE'

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
    # menu_id = get_menu_id(new_energy_menu_path)
    # copy_file_to_BYDNewEnergy(menu_id, byd_path, bydne_path)

    # menu = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\menu_EV.txt'
    # file_path = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\协议 - 副本'
    # out_path = r'D:\xiaolan\PythonStudyLib\BYD_Project\BYD_v18.90\file\新能源协议'
    # copy_files_via_menu(menu, file_path, out_path)

    # 奇瑞
    # new_energy_menu_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\IMS-Decoder\资源\China\CHERY\Menu.xml'
    # byd_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\Vehicle Protocol\Protocol\XML'
    # bydne_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\IMS-Decoder\资源\China\CHERY\DATA'

    # 奇瑞新能源
    # new_energy_menu_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\IMS-Decoder\资源\China\奇瑞新能源\QIRUIXNY\Menu.xml'
    # byd_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\Vehicle Protocol\Protocol\XML'
    # bydne_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\IMS-Decoder\资源\China\奇瑞新能源\QIRUIXNY\DATA'

    # 开瑞
    # new_energy_menu_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\IMS-Decoder\资源\开瑞\China\KARRY\Menu.xml'
    # byd_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\Vehicle Protocol\Protocol\XML'
    # bydne_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\IMS-Decoder\资源\开瑞\China\KARRY\DATA'

    # 瑞麟
    # new_energy_menu_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\IMS-Decoder\资源\瑞麟\China\Riich\Menu.xml'
    # byd_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\Vehicle Protocol\Protocol\XML'
    # bydne_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\IMS-Decoder\资源\瑞麟\China\Riich\DATA'

    # 威麟
    # new_energy_menu_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\IMS-Decoder\资源\威麟\China\Rely\Menu.xml'
    # byd_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\Vehicle Protocol\Protocol\XML'
    # bydne_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\IMS-Decoder\资源\威麟\China\Rely\DATA'

    # 星途
    # new_energy_menu_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\IMS-Decoder\资源\星途\China\EXEED\Menu.xml'
    # byd_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\Vehicle Protocol\Protocol\XML'
    # bydne_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\IMS-Decoder\资源\星途\China\EXEED\DATA'

    # 捷途
    # new_energy_menu_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\IMS-Decoder\资源\捷途\China\JETOUR\Menu.xml'
    # byd_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\Vehicle Protocol\Protocol\XML'
    # bydne_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\IMS-Decoder\资源\捷途\China\JETOUR\DATA'

    # 捷途新能源
    new_energy_menu_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\IMS-Decoder\资源\捷途新能源\China\JETOUR_EV\Menu.xml'
    byd_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\Vehicle Protocol\Protocol\XML'
    bydne_path = r'D:\JBT\诊断项目\奇瑞(D117)研发文档V1.0\IMS-Decoder\资源\捷途新能源\China\JETOUR_EV\DATA'

    menu_id = get_menu_id(new_energy_menu_path)
    copy_file_to_BYDNewEnergy(menu_id, byd_path, bydne_path)
    pass
