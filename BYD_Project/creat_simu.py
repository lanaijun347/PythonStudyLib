# -*- coding:utf-8 -*-
import os
import re
import chardet
import shutil
"""
生成KWP2000类型 模拟数据
moni_cmds:命令列表
"""
def Create_KWP_simu_data(moni_parameter, moni_cmds, filename):
    temp_list = []
    send_table_cmd_len = []
    send_table_cmd = []
    send_table_index = []
    send_table_list=[]
    respone_cmd_list=[]
    respone_table_list=[]
    send_comand_num = 0
    ds_cmd_count = 0
    index = 0
    # 命令去重
    for cmd in moni_cmds:
        if cmd not in temp_list:
            temp_list.append(cmd)
    for line in temp_list:
        if line.strip() == "":  # 判断是否为空
            continue
        else:
            temp_list0 = line.strip(" ").split(" ")  # 以空格分隔
            # 去掉所有的空符号
            for i in range(0, temp_list0.count("")):
                if "" in temp_list0:
                    temp_list0.remove("")
            # 非8X开头的命令暂时不处理
            if temp_list0[0][0:1] != "8":
                continue
            else:
                send_comand_num = send_comand_num + 1
            addr_byte1 = temp_list0[1]
            addr_byte2 = temp_list0[2]
            # 数据流处理
            if re.compile(r"DS").findall(line):
                # 根据帧长位置处理
                if temp_list0[0] != "80":  # 非80帧
                    cmd_len = int("0x" + temp_list0[0][1:], 16) + 4#发送命令总字节数
                    value=4
                else:#80帧
                    cmd_len = int("0x" + temp_list0[3], 16) + 5
                    value=5
                send_table_cmd_len.append(cmd_len)  # 发送命令长度
                send_table_cmd.append(" ".join(temp_list0[0:cmd_len]))  # 发送命令
                send_table_index.append(index)  # 对应回复命令行数
                respone_len = int(temp_list0[cmd_len + 1], 10)  # 回复长度:; 13 DS
                if respone_len < 13:
                    # ******回复命令第一行*******
                    respone_len_hex = "{:0>2X}".format(respone_len)
                    temp_byte = hex(int("0x" + temp_list0[value-1], 16) + 0x40)[2:]
                    # 拼接地址码
                    respone_cmd = "80" + " " + addr_byte2 + " " + addr_byte1 + " " + respone_len_hex + " " + temp_byte
                    # 拼接发送命令中的关键字节
                    for i in range(0, cmd_len - value):
                        respone_cmd = respone_cmd + " " + temp_list0[value + i]
                    # 拼接回复制定长度数据
                    for i in range(0, 11 - (cmd_len - value) - 1):
                        respone_cmd = respone_cmd + " " + "{:0>2X}".format(i + cmd_len + 1)
                    # 拼接最后一字节
                    respone_cmd = respone_cmd + " " + "{:0>2X}".format(ds_cmd_count)
                    respone_cmd_list.append(respone_cmd)
                    index = index + 1
                    # ******第一行处理结束*******
                else:
                    # ******回复命令第一行*******
                    respone_len_hex = "{:0>2X}".format(respone_len)
                    temp_byte = hex(int("0x" + temp_list0[value-1], 16) + 0x40)[2:]
                    # 拼接地址码
                    respone_cmd = "80" + " " + addr_byte2 + " " + addr_byte1 + " " + respone_len_hex + " " + temp_byte
                    # 拼接发送命令中的关键字节
                    for i in range(0, cmd_len - value):
                        respone_cmd = respone_cmd + " " + temp_list0[value + i]
                    # 拼接回复制定长度数据
                    for i in range(0, 11 - (cmd_len - value) - 1):
                        respone_cmd = respone_cmd + " " + "{:0>2X}".format(i + cmd_len + 1)
                    respone_cmd = respone_cmd + " " + "{:0>2X}".format(ds_cmd_count)
                    respone_cmd_list.append(respone_cmd)
                    index = index + 1
                    # ******第一行处理结束*******
                    # ******其余多行******
                    other_row = (respone_len - 12) // 16
                    for i in range(0, other_row):
                        a = []
                        k = (i + 1) * 16
                        for j in range(0, 15):
                            a.append("{:0>2X}".format(k+j))
                        # 拼接最后一字节
                        a.append("{:0>2X}".format(ds_cmd_count))
                        respone_cmd = " ".join(a)
                        respone_cmd_list.append(respone_cmd)
                        index = index + 1
                    # 最后一行
                    if (respone_len - 12) % 16 > 0:
                        a = []
                        for i in range(0, (respone_len - 12) % 16):
                            a.append("{:0>2X}".format(other_row * 16 + 16 + i))
                        for j in range(0, 16 - ((respone_len - 12) % 16)):
                            a.append("{:0>2X}".format(ds_cmd_count))
                        respone_cmd = " ".join(a)
                        respone_cmd_list.append(respone_cmd)
                        index = index + 1
                ds_cmd_count = ds_cmd_count + 1
            # 版本信息处理
            elif re.compile(r"ECU").findall(line):
                # 根据帧长位置处理
                if temp_list0[0] != "80":  # 非80帧
                    cmd_len = int("0x" + temp_list0[0][1:], 16) + 4#发送命令总字节数
                    value=4
                else:#80帧
                    cmd_len = int("0x" + temp_list0[3], 16) + 5
                    value=5
                send_table_cmd_len.append(cmd_len)  # 发送命令长度
                send_table_cmd.append(" ".join(temp_list0[0:cmd_len]))  # 发送命令
                send_table_index.append(index)  # 对应回复命令行数
                respone_len = int(temp_list0[cmd_len + 1], 10)  # 回复长度:; 13 DS
                if respone_len < 13:
                    # ******回复命令第一行*******
                    respone_len_hex = "{:0>2X}".format(respone_len)
                    temp_byte = hex(int("0x" + temp_list0[value-1], 16) + 0x40)[2:]
                    # 拼接地址码
                    respone_cmd = "80" + " " + addr_byte2 + " " + addr_byte1 + " " + respone_len_hex + " " + temp_byte
                    # 拼接发送命令中的关键字节
                    for i in range(0, cmd_len - value):
                        respone_cmd = respone_cmd + " " + temp_list0[value + i]
                    # 拼接其余数据
                    k=48
                    for i in range(0, 12 - (cmd_len - value) - 1):
                        if k>57:
                            k=48
                        respone_cmd = respone_cmd + " " + "{:0>2X}".format(k)#从0x30开始回复
                        k=k+1
                    respone_cmd_list.append(respone_cmd)
                    index = index + 1
                    # ******第一行处理结束*******
                else:
                    # ******回复命令第一行*******
                    respone_len_hex = "{:0>2X}".format(respone_len)
                    temp_byte = hex(int("0x" + temp_list0[value-1], 16) + 0x40)[2:]
                    # 拼接地址码
                    respone_cmd = "80" + " " + addr_byte2 + " " + addr_byte1 + " " + respone_len_hex + " " + temp_byte
                    # 拼接发送命令中的关键字节
                    for i in range(0, cmd_len - value):
                        respone_cmd = respone_cmd + " " + temp_list0[value + i]
                    # 拼接回复制定长度数据
                    k=48
                    for i in range(0, 12 - (cmd_len - value) - 1):
                        if k>57:
                            k=48
                        respone_cmd = respone_cmd + " " + "{:0>2X}".format(k)
                        k = k + 1
                    respone_cmd_list.append(respone_cmd)
                    index = index + 1
                    # ******第一行处理结束*******
                    # ******其余多行******
                    other_row = (respone_len - 12) // 16
                    for i in range(0, other_row):
                        a = []
                        for j in range(0, 16):
                            if k > 57:
                                k = 48
                            a.append("{:0>2X}".format(k))
                            k = k + 1
                        respone_cmd = " ".join(a)
                        respone_cmd_list.append(respone_cmd)
                        index = index + 1
                    # 最后一行
                    if (respone_len - 12) % 16 > 0:
                        a = []
                        for i in range(0, (respone_len - 12) % 16):
                            if k > 57:
                                k = 48
                            a.append("{:0>2X}".format(k))
                            k = k + 1
                        for j in range(0, 16 - ((respone_len - 12) % 16)):
                            a.append("FF")
                        respone_cmd = " ".join(a)
                        respone_cmd_list.append(respone_cmd)
                        index = index + 1
            else:#其他命令处理
                # 根据帧长位置处理
                if temp_list0[0] != "80":  # 非80帧
                    cmd_len = int("0x" + temp_list0[0][1:], 16) + 4  # 发送命令总字节数
                    value = 4
                else:  # 80帧
                    cmd_len = int("0x" + temp_list0[3], 16) + 5
                    value = 5
                send_table_cmd_len.append(cmd_len)  # 发送命令长度
                send_table_cmd.append(" ".join(temp_list0[0:cmd_len]))  # 发送命令
                send_table_index.append(index)  # 对应回复命令行数
                respone_len_hex = "{:0>2X}".format(cmd_len-value)
                temp_byte = hex(int("0x" + temp_list0[value - 1], 16) + 0x40)[2:]
                # 拼接地址码
                respone_cmd = "80" + " " + addr_byte2 + " " + addr_byte1 + " " + respone_len_hex + " " + temp_byte
                # 拼接发送命令中的关键字节
                for i in range(0, cmd_len - value):
                    respone_cmd = respone_cmd + " " + temp_list0[value + i]
                # 拼接其余数据
                for i in range(0, 12 - (cmd_len - value) - 1):
                    respone_cmd = respone_cmd + " " + "FF"
                respone_cmd_list.append(respone_cmd)
                index = index + 1
                # ******第一行处理结束*******
    #处理发送表数据
    max_cmd_len=0
    for cmd  in send_table_cmd:
        cmd_len=len(cmd)
        if cmd_len>max_cmd_len:
            max_cmd_len=cmd_len
    for i in range(0,len(send_table_cmd)):
        tempstr="{:0>2X}".format(send_table_cmd_len[i])+"   "+send_table_cmd[i]+(max_cmd_len+5-len(send_table_cmd[i]))*" "\
                +"{:0>4X}".format(send_table_index[i])+"       01 00"
        send_table_list.append(tempstr)
    #处理回应命令表
    for i in range(0,len(respone_cmd_list)):
        tempstr=respone_cmd_list[i]+"   "+";"+"{:0>4}".format(i)+" "+"{:0>4X}".format(i)
        respone_table_list.append(tempstr)
    write_KWP_simu_to_file(respone_table_list, send_table_list, moni_parameter, filename)

def write_KWP_simu_to_file(respone_table_list,send_table_list,moni_parameter,filename):
    baud_rate = moni_parameter["baud_rate"]#波特率
    data_sum = "{:0>8X}".format(len(respone_table_list) * 16)#发送表总字节数
    send_table_len = data_sum[6:] + " " + data_sum[4:6] + " " + data_sum[2:4] + " " + data_sum[0:2]
    recive_pin = moni_parameter["recive_pin"]  # 接收PIN脚
    send_pin = moni_parameter["send_pin"]  # 发送PIN脚

    str1=send_table_len+"    10            00                                                                     "+recive_pin+"      "+send_pin+"      02         00\n"
    str2=baud_rate+"    00 FF 00 FF   FF FF FF 7F   08 00 00 00   30 00 00 00\n"
    str3="7B 04          00 00 00 00      01                        00 00 00\n"
    str4="33      00 00 00 00 00 00 00 00 00\n"
    try:
        with open(filename,"w+")as f:
            f.write(";************控制字数据*************\n")
            f.write(";发送表长度   发送表列数 通信类型(KWP:0,地址码+KWP:1,686A:2,03取反+地址码:3,首字节是帧长+地址码:7)  口线A   口线B   逻辑电压   预留\n")
            f.write(str1)
            f.write(";00 01 02 03   04            05                                                                     06      07      08         09\n")
            f.write(";通信波特率    验收码        屏蔽码        字节间隔      帧间隔    ;此行20字节\n")
            f.write(str2)
            f.write(";10 11 12 13   14 15 16 17   18 19 20 21   22 23 24 25   26 27 28 29\n")
            f.write(";数据表总大小，自动填充         是否自动回复(0自动回复) 预留    ;此行10个字节\n")
            f.write(";DataBuf[37]:控制校验和方式(00:校验和,01:校验和取反+1,02:校验和取反,>=03:不进行校验)\n")
            f.write(str3)
            f.write(";30 31         32 33 34 35      36                        37 38 39\n")
            f.write(";地址码 预留                         ;此行10个字节\n")
            f.write(str4)
            f.write(";40 		41 42 43 44 45 46 47 48 49(47:是否等待接收取反字节-非0:不接收，0:接收  48:回复地址码的字节个数(0:回复3个字节)  49:是否回复地址码取反字节-非0:不回复，0:回复)\n")
            f.write(";************发送表数据*****686a资源填写 第1个字节表示帧长 0A 48 6B*****\n")
            f.write(";00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15\n")
            for line in respone_table_list:
                f.write(line+"\n")
            f.write(";************比较表数据*************\n")
            f.write(";比较个数    比较数据                对应比较表行数(2字节)     连续发送帧数   预留\n")
            for line in send_table_list:
                f.write(line + "\n")
    except IOError:
        print("生成模拟失败")

"""
生成标准CAN类型模拟数据
moni_cmds:命令列表
"""
def Create_CAN_simu_data(moni_parameter,moni_cmds,filename):
    recive_frame_sum=0
    send_comand_num=0
    datastrme_comand=0
    send_heads=[]
    recive_heads=[]
    send_frame_list=[]
    send_table=[]
    recive_table=[]
    id_table=[]
    temp_list=[]
    protocal_type=0
    #命令去重
    for cmd in moni_cmds:
        if cmd not  in temp_list:
            temp_list.append(cmd)
    for line in temp_list:
        if line.strip() == "":# 判断是否为空
            continue
        else:
            send_comand_num = send_comand_num + 1
            temp_list0=line.strip(" ").split(" ")#以空格分隔
            if len(temp_list0[0])>3:#根据帧ID判断CAN类型
                protocal_type=1     #1:扩展CAN  0:标准CAN
            # 去掉所有的空符号
            for i in range(0,temp_list0.count("")):
                if "" in temp_list0:
                    temp_list0.remove("")
            frame_id_str="0"*(8-len(temp_list0[0]))+temp_list0[0]#帧ID补齐8位并存入列表
            filter_id_str="0"*(8-len(temp_list0[9]))+temp_list0[9]
            if frame_id_str not in send_heads:
                send_heads.append(frame_id_str)  # 保存帧ID
                recive_heads.append(filter_id_str)# 保存滤波ID

            frame_head="0"*(8-len(temp_list0[0]))+temp_list0[0]
            filter_head="0"*(8-len(temp_list0[9]))+temp_list0[9]
            comands=temp_list0
            # 扩展CAN帧ID处理
            if protocal_type==1:
                b = re.findall(r'.{2}', frame_head)
                send_comand_head = " ".join(b)
                b = re.findall(r'.{2}', filter_head)
                recive_comand_head = " ".join(b)
                send_comand = "0C" + "  " + send_comand_head + ' '
            else:#标准CAN帧ID处理
                b = re.findall(r'.{2}', frame_head[4:])
                send_comand_head = " ".join(b)
                b = re.findall(r'.{2}', filter_head[4:])
                recive_comand_head = " ".join(b)
                send_comand = "0A" + "  " + send_comand_head + ' '
            recive_comand = recive_comand_head + " "

            #保存发送表数据
            for i in range(1, 9):
                send_comand = send_comand + comands[i] + ' '
            send_table.append(send_comand)  # 保存发送命令

            # 数据流命令处理
            if re.compile(r'DS', re.I).findall(line):
                comand_lenth = int(re.compile(r'(?<=;).*(?=DS)', re.I).findall(line)[0].strip())
                comand_lenth_str = "{:0>2X}".format(comand_lenth)  # 帧长格式化
                datastrme_comand_str = "{:0>2X}".format(datastrme_comand)  # 帧长格式化
                datastrme_comand = datastrme_comand + 1
                # 数据流单帧命令组合
                if comand_lenth <= 7:
                    recive_comand = recive_comand + comand_lenth_str + ' '
                    for i in range(11, 15):
                        recive_comand = recive_comand + comands[i] + ' '
                    if comand_lenth > 4:
                        for i in range(0, 2):
                            if i + 4 < comand_lenth:
                                by = "{:0>2X}".format(i)
                                recive_comand = recive_comand + by + " "
                            else:
                                recive_comand = recive_comand + '00' + " "
                    else:
                        for i in range(0, 2):
                            recive_comand = recive_comand + '00' + " "

                    recive_comand = recive_comand + datastrme_comand_str
                    send_frame_list.append(recive_frame_sum)
                    recive_comand = recive_comand.strip(" ") + "   " + ";" + '{:0>4d}'.format(
                        recive_frame_sum) + " " + '{:0>4X}'.format(recive_frame_sum)
                    recive_frame_sum = recive_frame_sum + 1
                    recive_table.append(recive_comand)  # 比较表数据
                # DS多帧命令组合
                if comand_lenth > 7:
                    frames_num = int(comand_lenth / 7 + 1)  # 一条命令有多少帧
                    # 第一帧
                    recive_comand = recive_comand + "10" + ' ' + comand_lenth_str + " "
                    for i in range(11, 14):
                        recive_comand = recive_comand + comands[i] + ' '
                    recive_comand = recive_comand + '04' + " " + '05' + " " + datastrme_comand_str
                    send_frame_list.append(recive_frame_sum)
                    recive_comand = recive_comand.strip(" ") + "   " + ";" + '{:0>4d}'.format(
                        recive_frame_sum) + " " + '{:0>4X}'.format(recive_frame_sum)
                    recive_frame_sum = recive_frame_sum + 1
                    recive_table.append(recive_comand)  # 比较表数据
                    # 剩下的多帧
                    k = 20
                    for i in range(0, frames_num - 1):
                        l = 7 * (i + 1)
                        k = k + 1
                        if k > 29:
                            k = 21
                        frame_id = '{:0>2d}'.format(k)
                        recive_comand = recive_comand_head + " " + frame_id + " "
                        for j in range(0, 6):
                            byte_str = '{:0>2X}'.format(l)
                            l = l + 1
                            if l > 255:
                                l = 1
                            recive_comand = recive_comand + byte_str + " "
                        recive_comand = recive_comand + datastrme_comand_str
                        recive_comand = recive_comand.strip(" ") + "   " + ";" + '{:0>4d}'.format(
                            recive_frame_sum) + " " + '{:0>4X}'.format(recive_frame_sum)
                        recive_frame_sum = recive_frame_sum + 1
                        recive_table.append(recive_comand)  # 比较表数据
            # 版本信息命令处理
            elif re.compile(r'ECU', re.I).findall(line):
                comand_lenth = int(re.compile(r'(?<=;).*(?=ECU)', re.I).findall(line)[0].strip())
                comand_lenth_str = "{:0>2X}".format(comand_lenth)  # 帧长格式化
                byte_num = 30
                # 单帧
                if comand_lenth <= 7:
                    recive_comand = recive_comand + comand_lenth_str + ' '
                    for i in range(11, 15):
                        recive_comand = recive_comand + comands[i] + ' '
                    if comand_lenth > 4:
                        for i in range(0, 3):
                            if i + 4 < comand_lenth:
                                by = str(byte_num)
                                recive_comand = recive_comand + by + " "
                                byte_num = byte_num + 1
                            else:
                                recive_comand = recive_comand + '00' + " "
                    else:
                        for i in range(0, 3):
                            recive_comand = recive_comand + '00' + " "
                    send_frame_list.append(recive_frame_sum)
                    recive_comand = recive_comand.strip(" ") + "   " + ";" + '{:0>4d}'.format(
                        recive_frame_sum) + " " + '{:0>4X}'.format(recive_frame_sum)
                    recive_frame_sum = recive_frame_sum + 1
                    recive_table.append(recive_comand)  # 比较表数据
                # 多帧命令组合
                if comand_lenth > 7:
                    frames_num = int(comand_lenth / 7 + 1)
                    # 第一帧
                    recive_comand = recive_comand + "10" + ' ' + comand_lenth_str + " "
                    for i in range(11, 14):
                        recive_comand = recive_comand + comands[i] + ' '
                    recive_comand = recive_comand + '30' + " " + '31' + " " + '32'
                    send_frame_list.append(recive_frame_sum)
                    recive_comand = recive_comand.strip(" ") + "   " + ";" + '{:0>4d}'.format(
                        recive_frame_sum) + " " + '{:0>4X}'.format(recive_frame_sum)
                    recive_frame_sum = recive_frame_sum + 1
                    recive_table.append(recive_comand)  # 比较表数据
                    # 剩下的多帧
                    k = 20
                    byte_num = 33
                    for i in range(0, frames_num - 1):
                        if byte_num >= 40:
                            byte_num = 30
                        k = k + 1
                        if k > 29:
                            k = 20
                        frame_id = "{:2d}".format(k)
                        #recive_comand = recive_head_1 + ' ' + recive_head_2 + ' ' + frame_id + " "
                        recive_comand = recive_comand_head+" "+ frame_id + " "
                        for j in range(0, 7):
                            byte_str = str(byte_num)
                            byte_num = byte_num + 1
                            recive_comand = recive_comand + byte_str + " "
                        recive_comand = recive_comand.strip(" ") + "   " + ";" + '{:0>4d}'.format(
                            recive_frame_sum) + " " + '{:0>4X}'.format(recive_frame_sum)
                        recive_frame_sum = recive_frame_sum + 1
                        recive_table.append(recive_comand)  # 比较表数据
            # 其他命令处理
            else:
                for i in range(10, 18):
                    recive_comand = recive_comand + comands[i] + ' '
                send_frame_list.append(recive_frame_sum)
                recive_comand = recive_comand.strip(" ") + "   " + ";" + '{:0>4d}'.format(
                    recive_frame_sum) + " " + '{:0>4X}'.format(recive_frame_sum)
                recive_frame_sum = recive_frame_sum + 1
                recive_table.append(recive_comand)  # 比较表数据
    #发送表数据
    for i in range(0,len(send_frame_list)):
        send_table[i]=send_table[i]+" "+'{:0>4X}'.format(send_frame_list[i])+"    "+"01"+" "+"00"
    #处理ID表数据
    for i in range(0,len(send_heads)):
        b = re.findall(r'.{2}', send_heads[i])
        send_comand_head = " ".join(b)
        b = re.findall(r'.{2}', recive_heads[i])
        recive_comand_head = " ".join(b)
        #tempst格式:r05     00 00 07 DF     00 00 07 E8    00 ;00
        tempstr="05     "+send_comand_head+"     "+recive_comand_head+"    00 ;"+'{:0>2d}'.format(i+1)
        id_table.append(tempstr)
    #将数据写入模拟文件
    write_CAN_simu_to_file(recive_table, id_table, send_table, protocal_type, moni_parameter, filename)



"""
生成模拟
"""
def write_CAN_simu_to_file(recive_table,id_table,send_table,protocal_type,moni_parameter,filename):
    pcmn=[]
    protocal_type = moni_parameter["protocal_type"]
    baud_rate=moni_parameter["baud_rate"]#波特率
    recive_pin = moni_parameter["recive_pin"]  # 接收PIN脚
    send_pin = moni_parameter["send_pin"]  # 发送PIN脚
    #比较表大小
    if protocal_type==1:#扩展CAN:1，标准CAN:0
        data_sum = "{:0>8X}".format(len(recive_table) * 12)
    else:
        data_sum = "{:0>8X}".format(len(recive_table) * 10)
    datastr = data_sum[6:] + " " + data_sum[4:6] + " " + data_sum[2:4] + " " + data_sum[0:2]
    #通信类型
    comunication_type="01"
    #滤波ID个数
    id_groud="{:0>2d}".format(len(id_table)+1)
    row3=datastr+"      0A           "+comunication_type+"                             "+recive_pin+"  "+send_pin+"      03        "+str(protocal_type)+"    ;00~09"
    row5=baud_rate+"    00 FF 00 FF   00 00 00 00   00 00 00 00   05 00 00 00    ;10~29"
    row7="00 00        00 00 00 00  "+id_groud+"   01                               03                               ;30~38"
    pcmn.append(";************控制字数据*************")
    pcmn.append(";;发送表总数  发送表列数   通信类型(串行为0,CAN为1)  口线A   口线B   逻辑电压   若果为CAN通信,此为帧格式(标准帧为0,扩展帧为1)")
    pcmn.append(row3)
    pcmn.append(";;通信波特率   验收码        屏蔽码        字节间隔      帧间隔(ms)  ")
    pcmn.append(row5)
    pcmn.append(";比较表总数,自动填充     ID组 是否自动回复(0自动回复,80多帧时自动回复多帧)   (BIT0:比较ID,BIT1:发送表填ID,BIT2:宝马特殊协议,BIT3:跳过ID之后1个字节比较) ")
    pcmn.append(row7)
    pcmn.append(";(BIT0=1:定时狂回,BIT1=1:插帧狂回,BIT2:模拟先发数)   ;模拟先发的情况下发送的帧长(范围:1~8) ")
    pcmn.append("00                                                   08                                     ;39~40")
    pcmn.append(";预留9个字节")
    pcmn.append("00 00 00 00 00 00 00 00 00    ;41~49")
    pcmn.append(";************发送表数据*************")
    pcmn.append(";00 01 02 03 04 05 06 07 08 09")
    for conent in recive_table:
        pcmn.append(conent)
    pcmn.append(";************ID表数据*************")
    pcmn.append(";宝马ID系统用ID之后那个字节确定系统")
    pcmn.append(";         发送ID        接收ID        预留")
    pcmn.append("05     00 00 07 DF     00 00 07 E8    00 ;00")
    for conent in id_table:
        pcmn.append(conent)
    pcmn.append(";************比较表数据*********")
    pcmn.append(";比较个数   比较数据                对应比较表行数(2字节)    连续发送帧数   预留(BIT7:狂回,BIT6:连续发送帧ID不同,BIT5:狂回退出命令,其他:预留)")
    for conent in send_table:
        pcmn.append(conent)
    with open(filename,"w+",encoding="utf-8") as f:
        for conent in pcmn:
            conent=conent+"\n"
            f.write(conent)
"""
获取车型信息
"""
def get_carinfo(filename):
    str=u"系统选择"
    carinfolist=[]
    carinfo={"cartypename":"","sysname":"","sysid":""}

    f3 = open(filename,'rb')  # 以二进制模式读取文件
    data = f3.read()  # 获取文件内容
    f3.close()  # 关闭文件
    result = chardet.detect(data)  # 检测文件内容
    try:
        with open(filename,"r",encoding=result["encoding"])as f:
            paths=f.readlines()
            for path in paths:
                result=re.compile(str).findall(path)
                if result:
                    templist=path.split("/")
                    try:
                        carinfo["cartypename"] = templist[-5].strip(" ")
                        carinfo["sysname"] = templist[-3].strip(" ")
                        carinfo["sysid"] = templist[-2].strip(" ").upper()
                        carinfolist.append(carinfo.copy())
                    except IndexError:
                        continue
    except IOError:
        print("打开%s文件失败" %filename)
    finally:
        return carinfolist

def handle_simudata(filename):
    carinfolist=get_carinfo(filename)
    for carinfo in carinfolist:
        cartype=carinfo["cartypename"]
        sysname=carinfo["sysname"]
        sysid=carinfo["sysid"]
        cartypepath="./模拟数据/按系统名称分/" + cartype
        source="./模拟数据/按系统ID分/" + sysid
        target=cartypepath+"/"+sysname
        if os.path.exists(cartypepath) == False:
            os.mkdir(cartypepath)
        try:
            shutil.copytree(source,target)
        except FileNotFoundError:
            continue
        except FileExistsError:
            continue

def handle_protocaldata(filename):
    carinfolist=get_carinfo(filename)
    for carinfo in carinfolist:
        cartype=carinfo["cartypename"]
        sysname=carinfo["sysname"]
        sysid=carinfo["sysid"]
        cartypepath="./协议数据/按系统名称分/" + cartype
        source="./协议数据/按系统ID分/" + sysid+".asm"
        target=cartypepath+"/"+sysname+".asm"
        if os.path.exists(cartypepath) == False:
            os.mkdir(cartypepath)
        try:
            shutil.copyfile(source,target)
        except FileNotFoundError:
            continue
        except FileExistsError:
            continue

"""
获取用于生成模拟数据的一些参数
"""
def get_moniparameter(sys_parameter):
    CAN_TYPE = [2, 3, 7]
    GNE_TYPE = [1, 6, 8]  # 串行协议
    moni_parameter={"protocal_type":0,#协议类型:标准CAN:0  扩展CAN:1   kwp2000:2
                    "baud_rate":"00 0A 05 04", #波特率
                    "recive_pin":"05",#接收引脚
                    "send_pin":"0D"#发送引脚
                    }
    SYS_TYPE=sys_parameter[0]
    if SYS_TYPE in CAN_TYPE:
        if SYS_TYPE==2:
            moni_parameter["protocal_type"] = 0#标准CAN
        else:
            moni_parameter["protocal_type"] = 1#扩展CAN
        if sys_parameter[3][3] == 3:
            moni_parameter["baud_rate"] = "00 0A 05 04"  # 波特率500k
        if sys_parameter[3][3] == 4:
            moni_parameter["baud_rate"] = "00 0A 05 08"  # 波特率250k
        if sys_parameter[3][3] == 5:
            moni_parameter["baud_rate"] = "00 09 04 12"  # 波特率125k
        recive_pin = sys_parameter[3][4]  # 接收PIN脚
        if recive_pin!=1:
            moni_parameter["recive_pin"] = "{:0>2X}".format(recive_pin-1)
        else:
            moni_parameter["recive_pin"] = "03"
        send_pin = sys_parameter[3][5]  # 发送PIN脚
        if recive_pin!=1:
            moni_parameter["send_pin"] = "{:0>2X}".format(send_pin-1)
        else:
            moni_parameter["send_pin"] = "03"

    elif SYS_TYPE in GNE_TYPE:
        moni_parameter["protocal_type"] = 2
        var1 = "{:0>8X}".format(sys_parameter[2][3])
        moni_parameter["baud_rate"] = var1[6:] + " " + var1[4:6] + " " + var1[2:4] + " " + var1[0:2]  # 波特率
        moni_parameter["recive_pin"] = "{:0>2}".format(sys_parameter[2][4] - 1)
        moni_parameter["send_pin"] = "{:0>2}".format(sys_parameter[2][4] - 1)
    return moni_parameter



"""
生成模拟
"""
# def creat_simulation(moni_parameter,moni_cmds,filename):
#     protocal_type=moni_parameter["protocal_type"]
#     if protocal_type ==0 or protocal_type ==1:
#         #生成CAN类型协议模拟
#         print(moni_cmds)
#         Create_CAN_simu_data(moni_parameter,moni_cmds,filename)
#     elif protocal_type == 2:
#         #生成KWP2000类型协议模拟
#         print(moni_cmds)
#         Create_KWP_simu_data(moni_parameter,moni_cmds,filename)
#     else:
#         print("未知协议类型，该类型协议模拟程序未开发")




"""
生成模拟
    moni_parameter={"protocal_type":0,         #协议类型:标准CAN:0  扩展CAN:1   kwp2000:2
                    "baud_rate":"00 0A 05 04", #波特率
                    "recive_pin":"05",         #接收引脚
                    "send_pin":"0D"            #发送引脚
                    }
    moni_cmds=['740 02 10 01 00 00 00 00 00        0750 02 50 01 00 00 00 00 00', '740 03 22 F1 87 00 00 00 00        0750 03 62 F1 87 00 00 00 00 ; 34 ECU', '740 03 22 F1 87 00 00 00 00        0750 03 62 F1 87 00 00 00 00 ; 34 DS']
    moni_cmds=['81 28 F1 81 1B', '82 28 F1 10 81 2C', '82 28 F1 3E 01 DA', '82 28 F1 1A 80 35 ; 34 ECU', '82 28 F1 1A 80 35 ; 20 DS']
    filename:模拟数据/按系统ID分/3A91/text.txt (模拟数据文件名)
"""
def creat_simulation(moni_parameter,moni_cmds,filename):
    print(filename)
    protocal_type=moni_parameter["protocal_type"]
    if protocal_type ==0 or protocal_type ==1:
        #生成CAN类型协议模拟
        print(moni_cmds)
        Create_CAN_simu_data(moni_parameter,moni_cmds,filename)
    elif protocal_type == 2:
        #生成KWP2000类型协议模拟
        print(moni_cmds)
        Create_KWP_simu_data(moni_parameter,moni_cmds,filename)
    else:
        print("未知协议类型，该类型协议模拟程序未开发")
