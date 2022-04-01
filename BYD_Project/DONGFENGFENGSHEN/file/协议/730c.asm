
    车型ID：730c

    模拟：协议模拟-->730c

;******************************************************************************************************************************************************

    通讯线: $~02$~10$~500k$~7FE

进入命令:

  $~  REQ000:7F6 02 10 01 00 00 00 00 00       $~  ANS000:7FE 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7F6 02 3E 00 00 00 00 00 00       $!  ANS000:7FE 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7F6 03 19 02 09 00 00 00 00       $#  ANS000:7FE 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/730c0000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7F6 04 14 FF FF FF 00 00 00       $$  ANS000:7FE 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7F6 03 22 F1 87 00 00 00 00       $%  ANS000:7FE 03 22 F1 87 00 00 00 00
  $%  REQ001:7F6 03 22 F1 89 00 00 00 00       $%  ANS001:7FE 03 22 F1 89 00 00 00 00
  $%  REQ002:7F6 03 22 F1 8A 00 00 00 00       $%  ANS002:7FE 03 22 F1 8A 00 00 00 00
  $%  REQ003:7F6 03 22 F1 79 00 00 00 00       $%  ANS003:7FE 03 22 F1 79 00 00 00 00
  $%  REQ004:7F6 03 22 F1 97 00 00 00 00       $%  ANS004:7FE 03 22 F1 97 00 00 00 00
  $%  REQ005:7F6 03 22 F1 99 00 00 00 00       $%  ANS005:7FE 03 22 F1 99 00 00 00 00

  $%  000:零部件号:            $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  001:软件版本(OEM):       $%    $%  ANS001.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4)&0x0F,(x1&0x0F),x2);
  $%  002:供应商代码:          $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:硬件版本(OEM):       $%    $%  ANS003.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4)&0x0F,(x1&0x0F),x2);
  $%  004:系统名称:            $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3);
  $%  005:软件发布日期:        $%    $%  ANS005.BYTE004  $%  HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7F6 03 22 B3 01 00 00 00 00       $  ANS000:7FE 03 22 B3 01 00 00 00 00

  $  000.电机出口水温       $    $  degC     $    $  ANS000.BYTE004  $  y=x1-40;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7F6 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
