import os
import shutil
import re

class CmdSimulation:
    def __init__(self, basic_param):
        self.cmd_type = basic_param['cmd_type']
        self.baud = basic_param['baud']
        self.frame_id = basic_param['frame_id']
        self.reply_id = basic_param['reply_id']
        self.cmd_list = basic_param['cmd_list']
        self.dll_path = basic_param['dll_path']
        self.out_path = basic_param['out_path']
        if not os.path.exists(self.out_path):
            os.mkdir(self.out_path)

    def GetCmdSimulation(self):
        if self.cmd_type == '0':
            self.StandardCan()
        elif self.cmd_type == '1':
            pass
        elif self.cmd_type == '2':
            pass
        else:
            pass
        pass

    def StandardCan(self):
        dll_name = 'rev_snd.dll'
        bin_name = 'CAN.bin'
        dll_file = self.dll_path + '/' + dll_name
        bin_file = self.dll_path + '/' + bin_name
        text_file = self.out_path + '/text.txt'
        shutil.copy(dll_file, self.out_path)
        shutil.copy(bin_file, self.out_path)
        self.CanCmd()
        with open(text_file, 'w') as f:
            f.writelines(';************控制字数据*************\n')
            f.writelines(';;发送表总数  发送表列数   通信类型(串行为0,CAN为1)  口线A   口线B   逻辑电压   若果为CAN通信,此为帧格式(标准帧为0,扩展帧为1)\n')
        pass

    def Kwp2000(self):
        pass

    def CanCmd(self):
        cmp_list = []
        send_list = []
        send_frame_list = []
        recive_table = []
        out = ''
        count = 0
        offset = 0
        datastrme_comand = 0
        recive_frame_sum = 0
        for line in self.cmd_list:
            line = line.upper()
            if ';' in line:
                cmd, type_str = line.split(';')
                comands = cmd.replace(self.frame_id, '').strip(" ").split(" ")
                if re.compile(r'DS', re.I).findall(line):
                    pass
                # 版本信息命令处理
                elif re.compile(r'ECU', re.I).findall(line):
                    comand_lenth = int(re.compile(r'(?<=;).*(?=ECU)', re.I).findall(line)[0].strip())
                    comand_lenth_str = "{:0>2X}".format(comand_lenth)  # 帧长格式化
                    byte_num = 30
                    # 单帧
                    if comand_lenth <= 7:
                        recive_comand = comand_lenth_str + ' '
                        for i in range(1, 4):
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
                        recive_comand = "10" + ' ' + comand_lenth_str + " "
                        for i in range(1, 4):
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
                            # recive_comand = recive_head_1 + ' ' + recive_head_2 + ' ' + frame_id + " "
                            recive_comand = " " + frame_id + " "
                            for j in range(0, 7):
                                byte_str = str(byte_num)
                                byte_num = byte_num + 1
                                recive_comand = recive_comand + byte_str + " "
                            recive_comand = recive_comand.strip(" ") + "   " + ";" + '{:0>4d}'.format(
                                recive_frame_sum) + " " + '{:0>4X}'.format(recive_frame_sum)
                            recive_frame_sum = recive_frame_sum + 1
                            recive_table.append(recive_comand)  # 比较表数据
                    pass
                pass
            else:
                tmp = line.replace(self.frame_id, '').strip()
                offset_str = hex(offset).replace('0x', '').upper().rjust(4, '0')
                count_str = str(count).rjust(4, '0')
                tmp_0 = '08' + 3*' ' + tmp + 8*' ' + offset_str + 8*' ' + '01 00\n'
                tmp_1 = tmp[0:3] + hex(int(tmp[3:5], 16) + 64).replace('0x', '') + tmp[5:] + '   ;' + count_str + ' ' + offset_str + '\n'
                cmp_list.append(tmp_0)
                send_list.append(tmp_1)
                offset += 1
            count += 1
        pass


if __name__ == '__main__':
    data = {'cmd_type': '0',
            'baud': '500K',
            'frame_id': '7E0',
            'reply_id': '7E8',
            'cmd_list': ['7E0 02 10 03 00 00 00 00 00', '7E0 03 22 F3 91 00 00 00 00;7ECU', '7E0 03 22 F1 91 00 00 00 00;20ECU', '7E0 03 19 02 6F 00 00 00 00;20DS', '7E0 03 22 F1 92 00 00 00 00;20ECU'],
            'dll_path': './CmdDll',
            'out_path': './test_cmd'
            }
    cmd = CmdSimulation(data)
    cmd.GetCmdSimulation()
