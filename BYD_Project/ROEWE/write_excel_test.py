import xlwt
import os


def test(out_xls):
    # 创建一个workbook 设置编码
    workbook = xlwt.Workbook(encoding='utf-8')
    # 创建一个worksheet,左下角小表名称
    worksheet = workbook.add_sheet('车辆预览')
    # 设置单元格宽度 0为 第0列
    worksheet.col(0).width = 5000
    # 初始化字样
    style = xlwt.XFStyle()
    # 为字样创建字体
    font = xlwt.Font()
    font.name = 'Font'
    # 黑体
    font.bold = True
    # 设置样式
    style.font = font

    style1 = xlwt.XFStyle()
    font1 = xlwt.Font()
    font1.name = 'Times New Roman'
    font1.bold = True
    style1.font = font1

    #  DASHED虚线、NO_LINE没有、THIN实线
    borders = xlwt.Borders()  # Create Borders
    borders.left = xlwt.Borders.THIN
    borders.right = xlwt.Borders.THIN
    borders.top = xlwt.Borders.THIN
    borders.bottom = xlwt.Borders.THIN
    borders.left_colour = 0x60
    borders.right_colour = 0x60
    borders.top_colour = 0x60
    borders.bottom_colour = 0x60
    style.borders = borders

    # 合并写入
    worksheet.write_merge(0, 0, 0, 3, 'First Merge')
    # 合并行1到2的列0到3
    worksheet.write_merge(1, 2, 0, 3, 'Second Merge', style)

    # 写入参数对应 行, 列, 值， 样式（可省略）
    # worksheet.write(0, 0, 'this is test')
    # worksheet.write(1, 0, 'this is test', style)
    # worksheet.write(2, 0, 'this is test', style1)

    workbook.save(out_xls)


def write_menu_excel(menu, excel):
    if os.path.exists(excel):
        os.remove(excel)
    menu_line_list = []
    with open(menu, 'r') as f:
        for line in f.readlines():
            tmp = line.split('\\')
            menu_line_list.append(tmp[:-2])
    # 表格属性
    workbook = xlwt.Workbook(encoding='utf-8')
    worksheet = workbook.add_sheet('可测车预览')
    # 初始化字样
    style = xlwt.XFStyle()
    font = xlwt.Font()
    font.name = 'Font'
    font.bold = True
    style.font = font

    al = xlwt.Alignment()
    al.horz = 0x02  # 设置水平居中
    al.vert = 0x01  # 设置垂直居中
    style.alignment = al

    for i in range(3):worksheet.col(i).width = 5000

    worksheet.write(0, 0, '车型名称', style)
    worksheet.write(0, 1, '系统名称', style)
    worksheet.write(0, 2, '版本号', style)

    flag = 1
    for car_list in menu_line_list:
        if len(car_list) > 2:
            pass
        else:
            pass

    workbook.save(excel)
    pass


if __name__ == '__main__':
    menu_path = r'D:\BYD_Project\ROEWE\file\荣威菜单.txt'
    path = r'D:\BYD_Project\ROEWE\生成协议\可测车预览表.xls'
    # test(path)
    write_menu_excel(menu_path, path)
