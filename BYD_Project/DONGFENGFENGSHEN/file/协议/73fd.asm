
    车型ID：73fd

    模拟：协议模拟-->73fd

;******************************************************************************************************************************************************

    通讯线: $~03$~08$~500k$~769

进入命令:

  $~  REQ000:761 02 10 01 00 00 00 00 00       $~  ANS000:769 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:761 02 3E 00 00 00 00 00 00       $!  ANS000:769 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:761 03 19 02 09 00 00 00 00       $#  ANS000:769 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/73ed0000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:761 04 14 FF FF FF 00 00 00       $$  ANS000:769 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:761 03 22 F1 97 00 00 00 00       $%  ANS000:769 03 22 F1 97 00 00 00 00
  $%  REQ001:761 03 22 F1 8A 00 00 00 00       $%  ANS001:769 03 22 F1 8A 00 00 00 00
  $%  REQ002:761 03 22 F1 93 00 00 00 00       $%  ANS002:769 03 22 F1 93 00 00 00 00
  $%  REQ003:761 03 22 F1 95 00 00 00 00       $%  ANS003:769 03 22 F1 95 00 00 00 00
  $%  REQ004:761 03 22 F1 87 00 00 00 00       $%  ANS004:769 03 22 F1 87 00 00 00 00
  $%  REQ005:761 03 22 F1 8C 00 00 00 00       $%  ANS005:769 03 22 F1 8C 00 00 00 00
  $%  REQ006:761 03 22 F1 99 00 00 00 00       $%  ANS006:769 03 22 F1 99 00 00 00 00
  $%  REQ007:761 03 22 F1 89 00 00 00 00       $%  ANS007:769 03 22 F1 89 00 00 00 00
  $%  REQ008:761 03 22 F1 79 00 00 00 00       $%  ANS008:769 03 22 F1 79 00 00 00 00

  $%  000:系统名称:                 $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3);
  $%  001:供应商代码:               $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  002:ECU硬件版本号(SYS):       $%    $%  ANS002.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],x1,x2,x3);
  $%  003:ECU软件版本号(SYS):       $%    $%  ANS003.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],x1,x2,x3);
  $%  004:零件号:                   $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  005:生产序列号:               $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  006:软件发布日期:             $%    $%  ANS006.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  007:软件版本(OEM):            $%    $%  ANS007.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  008:硬件版本(OEM):            $%    $%  ANS008.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:761 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
