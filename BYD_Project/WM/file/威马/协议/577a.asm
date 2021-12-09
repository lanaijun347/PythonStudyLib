
    车型ID：577a

    模拟：协议模拟-->577a

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~794

进入命令:

  $~  REQ000:714 02 10 03 00 00 00 00 00       $~  ANS000:794 02 10 03 00 00 00 00 00
  $~~ REQ001:714 02 27 01 00 00 00 00 00       $~~ ANS001:794 02 27 01 00 00 00 00 00
  $~~ REQ002:714 06 27 02 5C A6 18 F4 00       $~~ ANS002:794 06 27 02 5C A6 18 F4 00

空闲命令:

  $!  REQ000:714 02 3E 00 00 00 00 00 00       $!  ANS000:794 02 3E 00 00 00 00 00 00

退出命令:

  $@  REQ000:714 02 10 01 00 00 00 00 00       $@  ANS000:794 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:714 03 19 02 09 00 00 00 00       $#  ANS000:794 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/57000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:714 04 14 FF FF FF 00 00 00       $$  ANS000:794 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:714 03 22 F1 87 00 00 00 00       $%  ANS000:794 03 22 F1 87 00 00 00 00
  $%  REQ001:714 03 22 F1 88 00 00 00 00       $%  ANS001:794 03 22 F1 88 00 00 00 00
  $%  REQ002:714 03 22 F1 8A 00 00 00 00       $%  ANS002:794 03 22 F1 8A 00 00 00 00
  $%  REQ003:714 03 22 F1 97 00 00 00 00       $%  ANS003:794 03 22 F1 97 00 00 00 00
  $%  REQ004:714 03 22 F1 91 00 00 00 00       $%  ANS004:794 03 22 F1 91 00 00 00 00
  $%  REQ005:714 03 22 F1 8C 00 00 00 00       $%  ANS005:794 03 22 F1 8C 00 00 00 00
  $%  REQ006:714 03 22 F1 90 00 00 00 00       $%  ANS006:794 03 22 F1 90 00 00 00 00
  $%  REQ007:714 03 22 F1 5E 00 00 00 00       $%  ANS007:794 03 22 F1 5E 00 00 00 00
  $%  REQ008:714 03 22 F1 60 00 00 00 00       $%  ANS008:794 03 22 F1 60 00 00 00 00
  $%  REQ009:714 03 22 F1 63 00 00 00 00       $%  ANS009:794 03 22 F1 63 00 00 00 00
  $%  REQ010:714 03 22 F1 9E 00 00 00 00       $%  ANS010:794 03 22 F1 9E 00 00 00 00
  $%  REQ011:714 03 22 F1 5B 00 00 00 00       $%  ANS011:794 03 22 F1 5B 00 00 00 00

  $%  000:控制器总零件号:           $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:主芯片(MCU)软件号:        $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:供应商识别号:             $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  003:系统识别号:               $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:硬件号:                   $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:序列号:                   $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $%  006:车辆识别编码(VIN):        $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:网络数据库标识符:         $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  008:配置文件号:               $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:驱动软件号:               $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  010:ODX文件号:                $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:读软件指纹:               $%    $%  ANS011.BYTE004  $%  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.传感器数据
  $  00.传感器数据
  $  REQ000:714 03 22 18 03 00 00 00 00       $  ANS000:794 03 22 18 03 00 00 00 00
  $  REQ001:714 03 22 18 04 00 00 00 00       $  ANS001:794 03 22 18 04 00 00 00 00
  $  REQ002:714 03 22 18 0E 00 00 00 00       $  ANS002:794 03 22 18 0E 00 00 00 00

  $  000.记忆开关信号电压                        $    $           $    $  ANS000.BYTE004  $  y=x*0.0784;
  $  001.霍尔传感器供电电压                      $    $           $    $  ANS001.BYTE004  $  y=x*0.0784;
  $  002.整车网络输入状态-车速                   $    $  km/h     $    $  ANS002.BYTE005  $  y=(x2*256+x1)*0.015625;
  $  003.整车网络输入状态-主驾车门打开状态       $    $           $    $  ANS002.BYTE004  $  switxh(x&0xC0) 0x00:y=驾驶侧门关;0x40:y=驾驶侧门关;0x80:y=驾驶侧门半开;default: y=驾驶侧门全开;

  $)  01.电机位置
  $  01.电机位置
  $  REQ000:714 03 22 18 00 00 00 00 00       $  ANS000:794 03 22 18 00 00 00 00 00

  $  000.电机位置计数 - 靠垫前向上/向下位置计数         $    $       $    $  ANS000.BYTE004  $  y=x1*256+x2;
  $  001.电机位置计数 - 靠垫后向上/向下位置计数         $    $       $    $  ANS000.BYTE006  $  y=x1*256+x2;
  $  002.电机位置计数 - 前进/后退位置计数               $    $       $    $  ANS000.BYTE008  $  y=x1*256+x2;
  $  003.电机位置计数 - 后退前进/后退位置计数           $    $       $    $  ANS000.BYTE010  $  y=x1*256+x2;
  $  004.电机位置计数 - 左后视镜向上/向下位置计数       $    $       $    $  ANS000.BYTE012  $  y=x1*256+x2;
  $  005.电机位置计数 - 右后视镜向上/向下位置计数       $    $       $    $  ANS000.BYTE014  $  y=x1*256+x2;
  $  006.电机位置计数 - 左后视镜左/右位置计数           $    $       $    $  ANS000.BYTE016  $  y=x1*256+x2;
  $  007.电机位置计数 - 右后视镜左/右位置计数           $    $       $    $  ANS000.BYTE018  $  y=x1*256+x2;

  $)  02.电机软制点学习状态
  $  02.电机软制点学习状态
  $  REQ000:714 03 22 18 01 00 00 00 00       $  ANS000:794 03 22 18 01 00 00 00 00

  $  000.位置学习状态 - 座椅前进/后退电机           $    $       $    $  ANS000.BYTE004  $  switxh(x&0x80) 0x00:y=无效;default: y=有效;
  $  001.位置学习状态 - 座椅靠背前进/后退电机       $    $       $    $  ANS000.BYTE004  $  switxh(x&0x40) 0x00:y=无效;default: y=有效;
  $  002.位置学习状态 - 座垫前向上/向下电机         $    $       $    $  ANS000.BYTE004  $  switxh(x&0x20) 0x00:y=无效;default: y=有效;
  $  003.位置学习状态 - 座垫后部向上/向下电机       $    $       $    $  ANS000.BYTE004  $  switxh(x&0x10) 0x00:y=无效;default: y=有效;
  $  004.位置学习状态 - 左后视镜向上/向下电机       $    $       $    $  ANS000.BYTE004  $  switxh(x&0x08) 0x00:y=无效;default: y=有效;
  $  005.位置学习状态 - 右后视镜向上/向下电机       $    $       $    $  ANS000.BYTE004  $  switxh(x&0x04) 0x00:y=无效;default: y=有效;
  $  006.位置学习状态 - 左后视镜左/右电机           $    $       $    $  ANS000.BYTE004  $  switxh(x&0x02) 0x00:y=无效;default: y=有效;
  $  007.位置学习状态 - 右后视镜左/右电机           $    $       $    $  ANS000.BYTE004  $  switxh(x&0x01) 0x00:y=无效;default: y=有效;

  $)  03.MSM输入信号的状态
  $  03.MSM输入信号的状态
  $  REQ000:714 03 22 18 02 00 00 00 00       $  ANS000:794 03 22 18 02 00 00 00 00

  $  000.记忆座椅输入状态 - 座椅正向开关状态                               $    $       $    $  ANS000.BYTE004  $  switxh(x&0x80) 0x00:y=无效;default: y=有效;
  $  001.记忆座椅输入状态 - 座椅后退开关状态                               $    $       $    $  ANS000.BYTE004  $  switxh(x&0x40) 0x00:y=无效;default: y=有效;
  $  002.记忆座椅输入状态 - 靠垫前向上开关状态                             $    $       $    $  ANS000.BYTE004  $  switxh(x&0x20) 0x00:y=无效;default: y=有效;
  $  003.记忆座椅输入状态 - 靠垫前向下开关状态                             $    $       $    $  ANS000.BYTE004  $  switxh(x&0x10) 0x00:y=无效;default: y=有效;
  $  004.记忆座椅输入状态 - 靠垫后向上开关状态                             $    $       $    $  ANS000.BYTE004  $  switxh(x&0x08) 0x00:y=无效;default: y=有效;
  $  005.记忆座椅输入状态 - 靠垫后向下开关状态                             $    $       $    $  ANS000.BYTE004  $  switxh(x&0x04) 0x00:y=无效;default: y=有效;
  $  006.记忆座椅输入状态 - 座椅靠背前进开关状态                           $    $       $    $  ANS000.BYTE004  $  switxh(x&0x02) 0x00:y=无效;default: y=有效;
  $  007.记忆座椅输入状态 - 座椅靠背后退开关状态                           $    $       $    $  ANS000.BYTE004  $  switxh(x&0x01) 0x00:y=无效;default: y=有效;
  $  008.记忆座椅输入状态 - 左后视镜向上/向下电机                          $    $       $    $  ANS000.BYTE005  $  switxh(x&0x80) 0x00:y=无效;default: y=有效;
  $  009.记忆座椅输入状态 - 左后视镜向上/向下电机                          $    $       $    $  ANS000.BYTE005  $  switxh(x&0x40) 0x00:y=无效;default: y=有效;
  $  010.记忆座椅输入状态 - 右后视镜上/下电机                              $    $       $    $  ANS000.BYTE005  $  switxh(x&0x20) 0x00:y=无效;default: y=有效;
  $  011.记忆座椅输入状态 - 右后视镜上/下电机                              $    $       $    $  ANS000.BYTE005  $  switxh(x&0x10) 0x00:y=无效;default: y=有效;
  $  012.记忆座椅输入状态 - 左后视镜左/右电机                              $    $       $    $  ANS000.BYTE005  $  switxh(x&0x08) 0x00:y=无效;default: y=有效;
  $  013.记忆座椅输入状态 - 左后视镜左/右电机                              $    $       $    $  ANS000.BYTE005  $  switxh(x&0x04) 0x00:y=无效;default: y=有效;
  $  014.记忆座椅输入状态 - 右后视镜左/右电机                              $    $       $    $  ANS000.BYTE005  $  switxh(x&0x02) 0x00:y=无效;default: y=有效;
  $  015.记忆座椅输入状态 - 右后视镜左/右电机                              $    $       $    $  ANS000.BYTE005  $  switxh(x&0x01) 0x00:y=无效;default: y=有效;
  $  016.记忆座椅输入状态 - 设置开关                                       $    $       $    $  ANS000.BYTE006  $  switxh(x&0x08) 0x00:y=无效;default: y=有效;
  $  017.记忆座椅输入状态 - 内存开关                                       $    $       $    $  ANS000.BYTE006  $  switxh(x&0x03) 0x00:y=怠速;0x01:y=Key1;0x02:y=Key2;default: y=Key3;
  $  018.记忆座椅输入状态 - 驾驶员个性化配置                               $    $       $    $  ANS000.BYTE006  $  switxh(x&0xC0) 0x00:y=无;0x80:y=已设置;default: y=保留;
  $  019.记忆座椅输入状态 - 驾驶员个性化配置（座椅迎宾功能礼让功能）       $    $       $    $  ANS000.BYTE007  $  switxh(x&0x20) 0x00:y=关闭;default: y=开启;

  $)  04.按键记忆位置1存储的12个电机位置
  $  04.按键记忆位置1存储的12个电机位置
  $  REQ000:714 03 22 18 05 00 00 00 00       $  ANS000:794 03 22 18 05 00 00 00 00

  $  000.电机通过按钮记忆位置计数- 倒档左后视镜向上/向下位置计数       $    $       $    $  ANS000.BYTE026  $  y=x1*256+x2;
  $  001.电机通过按钮记忆位置计数- 倒档右后视镜向上/向下位置计数       $    $       $    $  ANS000.BYTE024  $  y=x1*256+x2;
  $  002.电机通过按钮记忆位置计数- 倒档左后视镜左/右位置计数           $    $       $    $  ANS000.BYTE022  $  y=x1*256+x2;
  $  003.电机通过按钮记忆位置计数- 倒档右后视镜左/右位置计数           $    $       $    $  ANS000.BYTE020  $  y=x1*256+x2;
  $  004.电机通过按钮记忆位置计数- 左后视镜向上/向下位置计数           $    $       $    $  ANS000.BYTE018  $  y=x1*256+x2;
  $  005.电机通过按钮记忆位置计数- 右后视镜向上/向下位置计数           $    $       $    $  ANS000.BYTE016  $  y=x1*256+x2;
  $  006.电机通过按钮记忆位置计数- 左后视镜左/右位置计数               $    $       $    $  ANS000.BYTE014  $  y=x1*256+x2;
  $  007.电机通过按钮记忆位置计数- 右后视镜左/右位置计数               $    $       $    $  ANS000.BYTE012  $  y=x1*256+x2;

  $)  05.按键记忆位置2存储的12个电机位置
  $  05.按键记忆位置2存储的12个电机位置
  $  REQ000:714 03 22 18 06 00 00 00 00       $  ANS000:794 03 22 18 06 00 00 00 00

  $  000.电机通过按钮记忆位置计数- 倒档左后视镜向上/向下位置计数       $    $       $    $  ANS000.BYTE026  $  y=x1*256+x2;
  $  001.电机通过按钮记忆位置计数- 倒档右后视镜向上/向下位置计数       $    $       $    $  ANS000.BYTE024  $  y=x1*256+x2;
  $  002.电机通过按钮记忆位置计数- 倒档左后视镜左/右位置计数           $    $       $    $  ANS000.BYTE022  $  y=x1*256+x2;
  $  003.电机通过按钮记忆位置计数- 倒档右后视镜左/右位置计数           $    $       $    $  ANS000.BYTE020  $  y=x1*256+x2;
  $  004.电机通过按钮记忆位置计数- 左后视镜向上/向下位置计数           $    $       $    $  ANS000.BYTE018  $  y=x1*256+x2;
  $  005.电机通过按钮记忆位置计数- 右后视镜向上/向下位置计数           $    $       $    $  ANS000.BYTE016  $  y=x1*256+x2;
  $  006.电机通过按钮记忆位置计数- 左后视镜左/右位置计数               $    $       $    $  ANS000.BYTE014  $  y=x1*256+x2;
  $  007.电机通过按钮记忆位置计数- 右后视镜左/右位置计数               $    $       $    $  ANS000.BYTE012  $  y=x1*256+x2;

  $)  06.按键记忆位置3存储的12个电机位置
  $  06.按键记忆位置3存储的12个电机位置
  $  REQ000:714 03 22 18 07 00 00 00 00       $  ANS000:794 03 22 18 07 00 00 00 00

  $  000.电机通过按钮记忆位置计数- 倒档左后视镜向上/向下位置计数       $    $       $    $  ANS000.BYTE026  $  y=x1*256+x2;
  $  001.电机通过按钮记忆位置计数- 倒档右后视镜向上/向下位置计数       $    $       $    $  ANS000.BYTE024  $  y=x1*256+x2;
  $  002.电机通过按钮记忆位置计数- 倒档左后视镜左/右位置计数           $    $       $    $  ANS000.BYTE022  $  y=x1*256+x2;
  $  003.电机通过按钮记忆位置计数- 倒档右后视镜左/右位置计数           $    $       $    $  ANS000.BYTE020  $  y=x1*256+x2;
  $  004.电机通过按钮记忆位置计数- 左后视镜向上/向下位置计数           $    $       $    $  ANS000.BYTE018  $  y=x1*256+x2;
  $  005.电机通过按钮记忆位置计数- 右后视镜向上/向下位置计数           $    $       $    $  ANS000.BYTE016  $  y=x1*256+x2;
  $  006.电机通过按钮记忆位置计数- 左后视镜左/右位置计数               $    $       $    $  ANS000.BYTE014  $  y=x1*256+x2;
  $  007.电机通过按钮记忆位置计数- 右后视镜左/右位置计数               $    $       $    $  ANS000.BYTE012  $  y=x1*256+x2;

  $)  07.钥匙记忆位置1存储的12个电机位置
  $  07.钥匙记忆位置1存储的12个电机位置
  $  REQ000:714 03 22 18 08 00 00 00 00       $  ANS000:794 03 22 18 08 00 00 00 00

  $  000.电机位置计数通过RKE记忆- 倒档左后视镜向上/向下位置计数       $    $       $    $  ANS000.BYTE026  $  y=x1*256+x2;
  $  001.电机位置计数通过RKE记忆- 倒档右后视镜向上/向下位置计数       $    $       $    $  ANS000.BYTE024  $  y=x1*256+x2;
  $  002.电机位置计数通过RKE记忆- 倒档左后视镜左/右位置计数           $    $       $    $  ANS000.BYTE022  $  y=x1*256+x2;
  $  003.电机位置计数通过RKE记忆- 倒档右后视镜左/右位置计数           $    $       $    $  ANS000.BYTE020  $  y=x1*256+x2;
  $  004.电机位置计数通过RKE记忆- 左后视镜向上/向下位置计数           $    $       $    $  ANS000.BYTE018  $  y=x1*256+x2;
  $  005.电机位置计数通过RKE记忆- 右后视镜向上/向下位置计数           $    $       $    $  ANS000.BYTE016  $  y=x1*256+x2;
  $  006.电机位置计数通过RKE记忆- 左后视镜左/右位置计数               $    $       $    $  ANS000.BYTE014  $  y=x1*256+x2;
  $  007.电机位置计数通过RKE记忆- 右后视镜左/右位置计数               $    $       $    $  ANS000.BYTE012  $  y=x1*256+x2;

  $)  08.钥匙记忆位置2存储的12个电机位置
  $  08.钥匙记忆位置2存储的12个电机位置
  $  REQ000:714 03 22 18 09 00 00 00 00       $  ANS000:794 03 22 18 09 00 00 00 00

  $  000.电机位置计数通过RKE记忆- 倒档左后视镜向上/向下位置计数       $    $       $    $  ANS000.BYTE026  $  y=x1*256+x2;
  $  001.电机位置计数通过RKE记忆- 倒档右后视镜向上/向下位置计数       $    $       $    $  ANS000.BYTE024  $  y=x1*256+x2;
  $  002.电机位置计数通过RKE记忆- 倒档左后视镜左/右位置计数           $    $       $    $  ANS000.BYTE022  $  y=x1*256+x2;
  $  003.电机位置计数通过RKE记忆- 倒档右后视镜左/右位置计数           $    $       $    $  ANS000.BYTE020  $  y=x1*256+x2;
  $  004.电机位置计数通过RKE记忆- 左后视镜向上/向下位置计数           $    $       $    $  ANS000.BYTE018  $  y=x1*256+x2;
  $  005.电机位置计数通过RKE记忆- 右后视镜向上/向下位置计数           $    $       $    $  ANS000.BYTE016  $  y=x1*256+x2;
  $  006.电机位置计数通过RKE记忆- 左后视镜左/右位置计数               $    $       $    $  ANS000.BYTE014  $  y=x1*256+x2;
  $  007.电机位置计数通过RKE记忆- 右后视镜左/右位置计数               $    $       $    $  ANS000.BYTE012  $  y=x1*256+x2;

  $)  09.钥匙记忆位置3存储的12个电机位置
  $  09.钥匙记忆位置3存储的12个电机位置
  $  REQ000:714 03 22 18 0A 00 00 00 00       $  ANS000:794 03 22 18 0A 00 00 00 00

  $  000.电机位置计数通过RKE记忆- 倒档左后视镜向上/向下位置计数       $    $       $    $  ANS000.BYTE026  $  y=x1*256+x2;
  $  001.电机位置计数通过RKE记忆- 倒档右后视镜向上/向下位置计数       $    $       $    $  ANS000.BYTE024  $  y=x1*256+x2;
  $  002.电机位置计数通过RKE记忆- 倒档左后视镜左/右位置计数           $    $       $    $  ANS000.BYTE022  $  y=x1*256+x2;
  $  003.电机位置计数通过RKE记忆- 倒档右后视镜左/右位置计数           $    $       $    $  ANS000.BYTE020  $  y=x1*256+x2;
  $  004.电机位置计数通过RKE记忆- 左后视镜向上/向下位置计数           $    $       $    $  ANS000.BYTE018  $  y=x1*256+x2;
  $  005.电机位置计数通过RKE记忆- 右后视镜向上/向下位置计数           $    $       $    $  ANS000.BYTE016  $  y=x1*256+x2;
  $  006.电机位置计数通过RKE记忆- 左后视镜左/右位置计数               $    $       $    $  ANS000.BYTE014  $  y=x1*256+x2;
  $  007.电机位置计数通过RKE记忆- 右后视镜左/右位置计数               $    $       $    $  ANS000.BYTE012  $  y=x1*256+x2;

  $)  10.钥匙记忆位置4存储的12个电机位置
  $  10.钥匙记忆位置4存储的12个电机位置
  $  REQ000:714 03 22 18 03 00 00 00 00       $  ANS000:794 03 22 18 03 00 00 00 00
  $  REQ001:714 03 22 18 04 00 00 00 00       $  ANS001:794 03 22 18 04 00 00 00 00
  $  REQ002:714 03 22 18 0E 00 00 00 00       $  ANS002:794 03 22 18 0E 00 00 00 00

  $  000.记忆开关信号电压                        $    $           $    $  ANS000.BYTE004  $  y=x*0.0784;
  $  001.霍尔传感器供电电压                      $    $           $    $  ANS001.BYTE004  $  y=x*0.0784;
  $  002.整车网络输入状态-车速                   $    $  km/h     $    $  ANS002.BYTE005  $  y=(x2*256+x1)*0.015625;
  $  003.整车网络输入状态-主驾车门打开状态       $    $           $    $  ANS002.BYTE004  $  switxh(x&0xC0) 0x00:y=驾驶侧门关;0x40:y=驾驶侧门关;0x80:y=驾驶侧门半开;default: y=驾驶侧门全开;

  $)  11.Motor Softstops position counts
  $  11.Motor Softstops position counts
  $  REQ000:714 03 22 18 03 00 00 00 00       $  ANS000:794 03 22 18 03 00 00 00 00
  $  REQ001:714 03 22 18 04 00 00 00 00       $  ANS001:794 03 22 18 04 00 00 00 00
  $  REQ002:714 03 22 18 0E 00 00 00 00       $  ANS002:794 03 22 18 0E 00 00 00 00

  $  000.记忆开关信号电压                        $    $           $    $  ANS000.BYTE004  $  y=x*0.0784;
  $  001.霍尔传感器供电电压                      $    $           $    $  ANS001.BYTE004  $  y=x*0.0784;
  $  002.整车网络输入状态-车速                   $    $  km/h     $    $  ANS002.BYTE005  $  y=(x2*256+x1)*0.015625;
  $  003.整车网络输入状态-主驾车门打开状态       $    $           $    $  ANS002.BYTE004  $  switxh(x&0xC0) 0x00:y=驾驶侧门关;0x40:y=驾驶侧门关;0x80:y=驾驶侧门半开;default: y=驾驶侧门全开;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:714 30 00 01 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
