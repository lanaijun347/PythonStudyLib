
    车型ID：c105

    模拟：协议模拟-->c105

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A6

进入命令:

  $~  REQ000:726 02 10 03 00 00 00 00 00       $~  ANS000:7A6 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:726 02 3E 00 00 00 00 00 00       $!  ANS000:7A6 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:726 03 19 02 09 00 00 00 00       $#  ANS000:7A6 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/c5000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:726 04 14 FF FF FF 00 00 00       $$  ANS000:7A6 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:726 03 22 F1 87 00 00 00 00       $%  ANS000:7A6 03 22 F1 87 00 00 00 00
  $%  REQ001:726 03 22 F1 8A 00 00 00 00       $%  ANS001:7A6 03 22 F1 8A 00 00 00 00
  $%  REQ002:726 03 22 F1 8C 00 00 00 00       $%  ANS002:7A6 03 22 F1 8C 00 00 00 00
  $%  REQ003:726 03 22 F1 93 00 00 00 00       $%  ANS003:7A6 03 22 F1 93 00 00 00 00
  $%  REQ004:726 03 22 F1 95 00 00 00 00       $%  ANS004:7A6 03 22 F1 95 00 00 00 00

  $%  000:零件号:             $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  001:供应商代码:         $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:ECU流水编号:        $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:硬件版本号:         $%    $%  ANS003.BYTE004  $%  SPRINTF([%s%02X%s%02X%s%02X%02X%02X%02X],@001e,X1,@001f,X2,@0020,X6,X5,X4,X3);
  $%  004:软件版本号:         $%    $%  ANS004.BYTE004  $%  SPRINTF([%s%02X%s%02X%s%02X%02X%02X%02X],@001e,X1,@0021,X2,@0020,X6,X5,X4,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:726 03 22 10 06 00 00 00 00       $  ANS000:7A6 03 22 10 06 00 00 00 00
  $  REQ001:726 03 22 10 08 00 00 00 00       $  ANS001:7A6 03 22 10 08 00 00 00 00
  $  REQ002:726 03 22 10 11 00 00 00 00       $  ANS002:7A6 03 22 10 11 00 00 00 00
  $  REQ003:726 03 22 10 13 00 00 00 00       $  ANS003:7A6 03 22 10 13 00 00 00 00
  $  REQ004:726 03 22 20 06 00 00 00 00       $  ANS004:7A6 03 22 20 06 00 00 00 00

  $  000.电机电压                        $    $  V      $    $  ANS000.BYTE004  $  y=x1*0.1;
  $  001.电机电流                        $    $  A      $    $  ANS001.BYTE004  $  y=x1*0.1;
  $  002.夹紧力                          $    $  KN     $    $  ANS002.BYTE004  $  y=x1*0.01;
  $  003.EPB(电子驻车系统)开关状态       $    $         $    $  ANS003.BYTE004  $  switxh(x1) 0x00: y=@002a;0x01: y=@002b;0x02: y=@002c;0x04: y=@002d;default: y=@0013;
  $  004.IGN开关次数                     $    $         $    $  ANS004.BYTE004  $  y=x1*256*256*256+x2*256*256+x3*256+x4*1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:726 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
