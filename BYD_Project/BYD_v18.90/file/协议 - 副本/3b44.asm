
    车型ID：3b44

    模拟：协议模拟-->3b44

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7AC

进入命令:

  $~  REQ000:7A4 02 10 01 00 00 00 00 00       $~  ANS000:7AC 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A4 02 3E 80 00 00 00 00 00       $!  ANS000:7AC 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7A4 03 19 02 09 00 00 00 00       $#  ANS000:7AC 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/0a000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A4 04 14 FF FF FF 00 00 00       $$  ANS000:7AC 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A4 03 22 F1 93 00 00 00 00       $%  ANS000:7AC 03 22 F1 93 00 00 00 00
  $%  REQ001:7A4 03 22 F1 94 00 00 00 00       $%  ANS001:7AC 03 22 F1 94 00 00 00 00
  $%  REQ002:7A4 03 22 F1 95 00 00 00 00       $%  ANS002:7AC 03 22 F1 95 00 00 00 00
  $%  REQ003:7A4 03 22 F1 90 00 00 00 00       $%  ANS003:7AC 03 22 F1 90 00 00 00 00

  $%  000:硬件版本:               $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:               $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  002:软件编号:               $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:               $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:               $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  005:修改次数:               $%    $%  ANS002.BYTE009  $%  y=x1;
  $%  006:VIN(车辆识别码):        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7A4 03 22 21 18 00 00 00 00       $  ANS000:7AC 03 22 21 18 00 00 00 00
  $  REQ001:7A4 03 22 21 19 00 00 00 00       $  ANS001:7AC 03 22 21 19 00 00 00 00
  $  REQ002:7A4 03 22 21 1A 00 00 00 00       $  ANS002:7AC 03 22 21 1A 00 00 00 00
  $  REQ003:7A4 03 22 21 1B 00 00 00 00       $  ANS003:7AC 03 22 21 1B 00 00 00 00
  $  REQ004:7A4 03 22 21 1C 00 00 00 00       $  ANS004:7AC 03 22 21 1C 00 00 00 00
  $  REQ005:7A4 03 22 21 1D 00 00 00 00       $  ANS005:7AC 03 22 21 1D 00 00 00 00
  $  REQ006:7A4 03 22 21 1E 00 00 00 00       $  ANS006:7AC 03 22 21 1E 00 00 00 00
  $  REQ007:7A4 03 22 21 20 00 00 00 00       $  ANS007:7AC 03 22 21 20 00 00 00 00

  $  000.GUID(全球唯一识别符)       $    $       $    $  ANS000.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  001.UUID(通用唯一识别码)       $    $       $    $  ANS001.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  002.车型                       $    $       $    $  ANS002.BYTE004  $  ASCII(x1);
  $  003.ISMI卡号                   $    $       $    $  ANS003.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  004.ICCID卡号                  $    $       $    $  ANS004.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);
  $  005.EC20版本                   $    $       $    $  ANS005.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $  006.IMEI号                     $    $       $    $  ANS006.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $  007.小电池电压                 $    $       $    $  ANS007.BYTE004  $  ASCII(x4,x3,x2,x1);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A4 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
