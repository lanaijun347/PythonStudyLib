
    车型ID：500b

    模拟：协议模拟-->500b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:768 02 10 03 00 00 00 00 00       $~  ANS000:708 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:768 02 3E 00 00 00 00 00 00       $!  ANS000:708 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:768 03 19 02 22 00 00 00 00       $#  ANS000:708 03 19 02 22 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/2b000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:768 04 14 FF FF FF 00 00 00       $$  ANS000:708 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:768 03 22 F1 87 00 00 00 00       $%  ANS000:708 03 22 F1 87 00 00 00 00
  $%  REQ001:768 03 22 F1 8A 00 00 00 00       $%  ANS001:708 03 22 F1 8A 00 00 00 00
  $%  REQ002:768 03 22 F1 8C 00 00 00 00       $%  ANS002:708 03 22 F1 8C 00 00 00 00
  $%  REQ003:768 03 22 F1 90 00 00 00 00       $%  ANS003:708 03 22 F1 90 00 00 00 00
  $%  REQ004:768 03 22 F1 95 00 00 00 00       $%  ANS004:708 03 22 F1 95 00 00 00 00
  $%  REQ005:768 03 22 F1 91 00 00 00 00       $%  ANS005:708 03 22 F1 91 00 00 00 00

  $%  000:零部件号:               $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  001:系统供应商标识号:       $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  002:电控单元序列号:         $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  003:VIN码:                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  004:供应商软件版本号:       $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:电控单元硬件号:         $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:768 03 22 F1 01 00 00 00 00       $  ANS000:708 03 22 F1 01 00 00 00 00
  $  REQ001:768 03 22 F1 02 00 00 00 00       $  ANS001:708 03 22 F1 02 00 00 00 00

  $  000.读取车身角度           $    $  度     $    $  ANS000.BYTE004  $  if(x1<128) y=x1*1;else y=(x1-256)*1;
  $  001.读取离合位置信号       $    $  V      $    $  ANS001.BYTE004  $  y=x1*5/255;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:768 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
