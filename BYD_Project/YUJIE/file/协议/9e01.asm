
    车型ID：9e01

    模拟：协议模拟-->9e01

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A4

进入命令:

  $~  REQ000:724 02 10 01 00 00 00 00 00       $~  ANS000:7A4 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:724 02 3E 00 00 00 00 00 00       $!  ANS000:7A4 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:724 03 19 02 09 00 00 00 00       $#  ANS000:7A4 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/26000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:724 04 14 FF FF FF 00 00 00       $$  ANS000:7A4 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:724 03 22 F1 87 00 00 00 00       $%  ANS000:7A4 03 22 F1 87 00 00 00 00
  $%  REQ001:724 03 22 F1 8A 00 00 00 00       $%  ANS001:7A4 03 22 F1 8A 00 00 00 00
  $%  REQ002:724 03 22 F1 93 00 00 00 00       $%  ANS002:7A4 03 22 F1 93 00 00 00 00
  $%  REQ003:724 03 22 F1 95 00 00 00 00       $%  ANS003:7A4 03 22 F1 95 00 00 00 00
  $%  REQ004:724 03 22 F1 8C 00 00 00 00       $%  ANS004:7A4 03 22 F1 8C 00 00 00 00
  $%  REQ005:724 03 22 F1 90 00 00 00 00       $%  ANS005:7A4 03 22 F1 90 00 00 00 00

  $%  000:零件号:              $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  001:供应商标识符:        $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:硬件版本号:          $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%s%02X%s%02X%s%02X%02X%02X%02X],@008e,X1,@008f,X2,@0090,X6,X5,X4,X3);
  $%  003:软件版本号:          $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%s%02X%s%02X%s%02X%02X%02X%02X],@008e,X1,@009a,X2,@0090,X6,X5,X4,X3);
  $%  004:ECU序列号:           $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  005:VIN:                 $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:724 03 22 40 00 00 00 00 00       $  ANS000:7A4 03 22 40 00 00 00 00 00
  $  REQ001:724 03 22 40 01 00 00 00 00       $  ANS001:7A4 03 22 40 01 00 00 00 00
  $  REQ002:724 03 22 40 02 00 00 00 00       $  ANS002:7A4 03 22 40 02 00 00 00 00
  $  REQ003:724 03 22 40 03 00 00 00 00       $  ANS003:7A4 03 22 40 03 00 00 00 00
  $  REQ004:724 03 22 40 04 00 00 00 00       $  ANS004:7A4 03 22 40 04 00 00 00 00
  $  REQ005:724 03 22 40 05 00 00 00 00       $  ANS005:7A4 03 22 40 05 00 00 00 00
  $  REQ006:724 03 22 40 06 00 00 00 00       $  ANS006:7A4 03 22 40 06 00 00 00 00

  $  000.左前车轮速度       $    $  km/h     $    $  ANS000.BYTE004  $  y=x1*256*0.01+x2*0.01;
  $  001.右前车轮速度       $    $  km/h     $    $  ANS001.BYTE004  $  y=x1*256*0.01+x2*0.01;
  $  002.后左车轮速度       $    $  km/h     $    $  ANS002.BYTE004  $  y=x1*256*0.01+x2*0.01;
  $  003.后右车轮速度       $    $  km/h     $    $  ANS003.BYTE004  $  y=x1*256*0.01+x2*0.01;
  $  004.车速               $    $  km/h     $    $  ANS004.BYTE004  $  y=x1*256*0.1+x2*0.1;
  $  005.当前电压           $    $  V        $    $  ANS005.BYTE004  $  y=x1*0.1;
  $  006.制动信号状态       $    $           $    $  ANS006.BYTE004  $  switxh(x1) 0x00: y=@0006;0xff: y=@0007;default: y=@0008;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:724 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
