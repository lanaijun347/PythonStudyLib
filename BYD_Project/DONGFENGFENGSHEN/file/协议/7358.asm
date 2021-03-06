
    车型ID：7358

    模拟：协议模拟-->7358

;******************************************************************************************************************************************************

    通讯线: $~11$~12$~500k$~7DB

进入命令:

  $~  REQ000:7D3 02 10 01 00 00 00 00 00       $~  ANS000:7DB 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7D3 02 3E 00 00 00 00 00 00       $!  ANS000:7DB 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7D3 03 19 02 09 00 00 00 00       $#  ANS000:7DB 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/4c000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7D3 04 14 FF FF FF 00 00 00       $$  ANS000:7DB 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7D3 03 22 F1 87 00 00 00 00       $%  ANS000:7DB 03 22 F1 87 00 00 00 00
  $%  REQ001:7D3 03 22 F1 89 00 00 00 00       $%  ANS001:7DB 03 22 F1 89 00 00 00 00
  $%  REQ002:7D3 03 22 F1 79 00 00 00 00       $%  ANS002:7DB 03 22 F1 79 00 00 00 00
  $%  REQ003:7D3 03 22 F1 97 00 00 00 00       $%  ANS003:7DB 03 22 F1 97 00 00 00 00
  $%  REQ004:7D3 03 22 F1 99 00 00 00 00       $%  ANS004:7DB 03 22 F1 99 00 00 00 00
  $%  REQ005:7D3 03 22 F1 7F 00 00 00 00       $%  ANS005:7DB 03 22 F1 7F 00 00 00 00
  $%  REQ006:7D3 03 22 F1 8A 00 00 00 00       $%  ANS006:7DB 03 22 F1 8A 00 00 00 00
  $%  REQ007:7D3 03 22 F1 8C 00 00 00 00       $%  ANS007:7DB 03 22 F1 8C 00 00 00 00
  $%  REQ008:7D3 03 22 F1 93 00 00 00 00       $%  ANS008:7DB 03 22 F1 93 00 00 00 00
  $%  REQ009:7D3 03 22 F1 95 00 00 00 00       $%  ANS009:7DB 03 22 F1 95 00 00 00 00
  $%  REQ010:7D3 03 22 F1 A1 00 00 00 00       $%  ANS010:7DB 03 22 F1 A1 00 00 00 00

  $%  000:主机厂ECU编号(零件号OEM):       $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  001:软件版本(OEM):                  $%    $%  ANS001.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  002:硬件版本(OEM):                  $%    $%  ANS002.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  003:系统名称:                       $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3);
  $%  004:软件发布日期:                   $%    $%  ANS004.BYTE004  $%  if((x1==0xff&&x2==0xff&&x3==0xff&&x4==0xff)||(x1==0&&x2==0&&x3==0&&x4==0))y=@0425;else y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:软件校验码:                     $%    $%  ANS005.BYTE004  $%  HEX(x1,x2);
  $%  006:供应商代码:                     $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  007:控制器序列号:                   $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%c%c%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  008:软件版本(Sys):                  $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  009:硬件版本(Sys):                  $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  010:维修信息(维修店编码):           $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  011:维修信息(维修日期):             $%    $%  ANS010.BYTE009  $%  if((x1==0xff&&x2==0xff&&x3==0xff&&x4==0xff)||(x1==0&&x2==0&&x3==0&&x4==0))y=@0425;else y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:维修信息(维修里程):             $%    $%  ANS010.BYTE013  $%  y=x1*65536+x2*256+x3;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7D3 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
