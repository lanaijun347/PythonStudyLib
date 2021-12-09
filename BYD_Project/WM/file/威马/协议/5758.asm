
    车型ID：5758

    模拟：协议模拟-->5758

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~784

进入命令:

  $~  REQ000:704 02 10 03 00 00 00 00 00       $~  ANS000:784 02 10 03 00 00 00 00 00
  $~~ REQ001:704 02 27 01 00 00 00 00 00       $~~ ANS001:784 02 27 01 00 00 00 00 00
  $~~ REQ002:704 06 27 02 D6 F3 3A 99 00       $~~ ANS002:784 06 27 02 D6 F3 3A 99 00

空闲命令:

  $!  REQ000:704 02 3E 00 00 00 00 00 00       $!  ANS000:784 02 3E 00 00 00 00 00 00

退出命令:

  $@  REQ000:704 02 10 01 00 00 00 00 00       $@  ANS000:784 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:704 03 19 02 09 00 00 00 00       $#  ANS000:784 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/57000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:704 04 14 FF FF FF 00 00 00       $$  ANS000:784 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:704 03 22 F1 87 00 00 00 00       $%  ANS000:784 03 22 F1 87 00 00 00 00
  $%  REQ001:704 03 22 F1 88 00 00 00 00       $%  ANS001:784 03 22 F1 88 00 00 00 00
  $%  REQ002:704 03 22 F1 8A 00 00 00 00       $%  ANS002:784 03 22 F1 8A 00 00 00 00
  $%  REQ003:704 03 22 F1 97 00 00 00 00       $%  ANS003:784 03 22 F1 97 00 00 00 00
  $%  REQ004:704 03 22 F1 91 00 00 00 00       $%  ANS004:784 03 22 F1 91 00 00 00 00
  $%  REQ005:704 03 22 F1 8C 00 00 00 00       $%  ANS005:784 03 22 F1 8C 00 00 00 00
  $%  REQ006:704 03 22 F1 90 00 00 00 00       $%  ANS006:784 03 22 F1 90 00 00 00 00
  $%  REQ007:704 03 22 F1 5E 00 00 00 00       $%  ANS007:784 03 22 F1 5E 00 00 00 00
  $%  REQ008:704 03 22 F1 60 00 00 00 00       $%  ANS008:784 03 22 F1 60 00 00 00 00
  $%  REQ009:704 03 22 F1 63 00 00 00 00       $%  ANS009:784 03 22 F1 63 00 00 00 00
  $%  REQ010:704 03 22 F1 9E 00 00 00 00       $%  ANS010:784 03 22 F1 9E 00 00 00 00
  $%  REQ011:704 03 22 F1 5B 00 00 00 00       $%  ANS011:784 03 22 F1 5B 00 00 00 00

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

  $  REQ000:704 03 22 CF 00 00 00 00 00       $  ANS000:784 03 22 CF 00 00 00 00 00
  $  REQ001:704 03 22 CF 01 00 00 00 00       $  ANS001:784 03 22 CF 01 00 00 00 00
  $  REQ002:704 03 22 CF 02 00 00 00 00       $  ANS002:784 03 22 CF 02 00 00 00 00
  $  REQ003:704 03 22 CF 03 00 00 00 00       $  ANS003:784 03 22 CF 03 00 00 00 00
  $  REQ004:704 03 22 CF 04 00 00 00 00       $  ANS004:784 03 22 CF 04 00 00 00 00
  $  REQ005:704 03 22 CF 20 00 00 00 00       $  ANS005:784 03 22 CF 20 00 00 00 00
  $  REQ006:704 03 22 CF 21 00 00 00 00       $  ANS006:784 03 22 CF 21 00 00 00 00
  $  REQ007:704 03 22 05 00 00 00 00 00       $  ANS007:784 03 22 05 00 00 00 00 00
  $  REQ008:704 03 22 05 01 00 00 00 00       $  ANS008:784 03 22 05 01 00 00 00 00
  $  REQ009:704 03 22 05 02 00 00 00 00       $  ANS009:784 03 22 05 02 00 00 00 00
  $  REQ010:704 03 22 05 03 00 00 00 00       $  ANS010:784 03 22 05 03 00 00 00 00
  $  REQ011:704 03 22 05 04 00 00 00 00       $  ANS011:784 03 22 05 04 00 00 00 00
  $  REQ012:704 03 22 05 05 00 00 00 00       $  ANS012:784 03 22 05 05 00 00 00 00
  $  REQ013:704 03 22 05 06 00 00 00 00       $  ANS013:784 03 22 05 06 00 00 00 00
  $  REQ014:704 03 22 CF 70 00 00 00 00       $  ANS014:784 03 22 CF 70 00 00 00 00
  $  REQ015:704 03 22 CF 71 00 00 00 00       $  ANS015:784 03 22 CF 71 00 00 00 00
  $  REQ016:704 03 22 CF 72 00 00 00 00       $  ANS016:784 03 22 CF 72 00 00 00 00
  $  REQ017:704 03 22 CF 73 00 00 00 00       $  ANS017:784 03 22 CF 73 00 00 00 00

  $  000.控制器电源模式             $    $           $    $  ANS000.BYTE004  $  switxh(x&0x03) 0x00:y=关;0x01:y=ACC_Reserved;0x02:y=开;0x03:y=启动;default: y=无效;
  $  001.车速                       $    $  Km/h     $    $  ANS001.BYTE004  $  y=((x1*256+x2)&0x1FFF)*0.05625;
  $  002.控制器电源电压             $    $  V        $    $  ANS002.BYTE004  $  y=x*0.1;
  $  003.第一次故障的里程值         $    $  km       $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0x100+x3;
  $  004.最后一次故障的里程值       $    $  km       $    $  ANS004.BYTE004  $  y=(x1*256+x2)*0x100+x3;
  $  005.错误计数                   $    $           $    $  ANS005.BYTE004  $  y=x;
  $  006.历史计数                   $    $           $    $  ANS006.BYTE004  $  y=x;
  $  007.DC/DC故障数量              $    $           $    $  ANS007.BYTE004  $  y=x;
  $  008.DC/DC故障等级              $    $           $    $  ANS008.BYTE004  $  y=x;
  $  009.实际输入电压               $    $  V        $    $  ANS009.BYTE004  $  y=(x1*256+x2)*0.1;
  $  010.实际输出电压               $    $  V        $    $  ANS010.BYTE004  $  y=(x1*256+x2)*0.01;
  $  011.实际输出电流               $    $  A        $    $  ANS011.BYTE004  $  y=(x1*256+x2)*0.1;
  $  012.控制器温度                 $    $  ℃       $    $  ANS012.BYTE004  $  y=x-40;
  $  013.故障标志位                 $    $           $    $  ANS013.BYTE004  $  y=HEX(x1,x2,x3,x4);
  $  014.输入电压                   $    $  V        $    $  ANS014.BYTE004  $  y=(x1*256+x2)*0.1;
  $  015.输出电压                   $    $  V        $    $  ANS015.BYTE004  $  y=(x1*256+x2)*0.01;
  $  016.输出电流                   $    $  A        $    $  ANS016.BYTE004  $  y=(x1*256+x2)*0.1;
  $  017.控制器温度                 $    $  ℃       $    $  ANS017.BYTE004  $  y=x-40;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:704 30 00 01 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
