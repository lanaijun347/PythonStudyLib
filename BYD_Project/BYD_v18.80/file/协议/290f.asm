
    车型ID：290f

    模拟：协议模拟-->290f

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7AB

进入命令:

  $~  REQ000:7A3 02 10 01 00 00 00 00 00       $~  ANS000:7AB 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A3 02 3E 80 00 00 00 00 00       $!  ANS000:7AB 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7A3 03 19 02 09 00 00 00 00       $#  ANS000:7AB 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/9b000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A3 04 14 FF FF FF 00 00 00       $$  ANS000:7AB 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A3 03 22 F1 93 00 00 00 00       $%  ANS000:7AB 03 22 F1 93 00 00 00 00
  $%  REQ001:7A3 03 22 F1 94 00 00 00 00       $%  ANS001:7AB 03 22 F1 94 00 00 00 00
  $%  REQ002:7A3 03 22 F1 95 00 00 00 00       $%  ANS002:7AB 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7A3 03 22 21 28 00 00 00 00       $  ANS000:7AB 03 22 21 28 00 00 00 00
  $  REQ001:7A3 03 22 21 29 00 00 00 00       $  ANS001:7AB 03 22 21 29 00 00 00 00
  $  REQ002:7A3 03 22 21 2A 00 00 00 00       $  ANS002:7AB 03 22 21 2A 00 00 00 00
  $  REQ003:7A3 03 22 21 2B 00 00 00 00       $  ANS003:7AB 03 22 21 2B 00 00 00 00
  $  REQ004:7A3 03 22 21 2C 00 00 00 00       $  ANS004:7AB 03 22 21 2C 00 00 00 00
  $  REQ005:7A3 03 22 21 2D 00 00 00 00       $  ANS005:7AB 03 22 21 2D 00 00 00 00
  $  REQ006:7A3 03 22 21 2E 00 00 00 00       $  ANS006:7AB 03 22 21 2E 00 00 00 00
  $  REQ007:7A3 03 22 21 20 00 00 00 00       $  ANS007:7AB 03 22 21 20 00 00 00 00

  $  000.GUID             $    $        $    $  ANS000.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22);
  $  001.UUID             $    $        $    $  ANS001.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22);
  $  002.车型             $    $        $    $  ANS002.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22);
  $  003.ISMI卡号         $    $        $    $  ANS003.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22);
  $  004.ICCID卡号        $    $        $    $  ANS004.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22);
  $  005.EC20版本         $    $        $    $  ANS005.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22);
  $  006.IMEI             $    $        $    $  ANS006.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22);
  $  007.小电池电压       $    $  V     $    $  ANS007.BYTE004  $  y=UINT(x1*0x1000000+x2*0x10000+x3*0x100+x4);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A3 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
