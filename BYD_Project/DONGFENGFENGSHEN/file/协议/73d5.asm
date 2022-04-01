
    车型ID：73d5

    模拟：协议模拟-->73d5

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7EB

进入命令:

  $~  REQ000:7E3 02 10 01 00 00 00 00 00       $~  ANS000:7EB 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E3 02 3E 00 00 00 00 00 00       $!  ANS000:7EB 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E3 03 19 02 09 00 00 00 00       $#  ANS000:7EB 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/62000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E3 04 14 FF FF FF 00 00 00       $$  ANS000:7EB 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E3 03 22 F1 87 00 00 00 00       $%  ANS000:7EB 03 22 F1 87 00 00 00 00
  $%  REQ001:7E3 03 22 F1 88 00 00 00 00       $%  ANS001:7EB 03 22 F1 88 00 00 00 00
  $%  REQ002:7E3 03 22 F1 91 00 00 00 00       $%  ANS002:7EB 03 22 F1 91 00 00 00 00
  $%  REQ003:7E3 03 22 F1 97 00 00 00 00       $%  ANS003:7EB 03 22 F1 97 00 00 00 00
  $%  REQ004:7E3 03 22 F1 8A 00 00 00 00       $%  ANS004:7EB 03 22 F1 8A 00 00 00 00
  $%  REQ005:7E3 03 22 F1 89 00 00 00 00       $%  ANS005:7EB 03 22 F1 89 00 00 00 00
  $%  REQ006:7E3 03 22 F1 95 00 00 00 00       $%  ANS006:7EB 03 22 F1 95 00 00 00 00
  $%  REQ007:7E3 03 22 F1 79 00 00 00 00       $%  ANS007:7EB 03 22 F1 79 00 00 00 00
  $%  REQ008:7E3 03 22 F1 93 00 00 00 00       $%  ANS008:7EB 03 22 F1 93 00 00 00 00
  $%  REQ009:7E3 03 22 F1 99 00 00 00 00       $%  ANS009:7EB 03 22 F1 99 00 00 00 00
  $%  REQ010:7E3 03 22 F1 7F 00 00 00 00       $%  ANS010:7EB 03 22 F1 7F 00 00 00 00
  $%  REQ011:7E3 03 22 F1 A1 00 00 00 00       $%  ANS011:7EB 03 22 F1 A1 00 00 00 00

;  $%  000:零件号(OEM):           $%    $%  ANS000.BYTE004  $%  
;  $%  001:软件零件号:            $%    $%  ANS001.BYTE004  $%  
;  $%  002:硬件零件号:            $%    $%  ANS002.BYTE004  $%  
  $%  003:系统名称:              $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:供应商代码:            $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  005:软件版本号(OEM):       $%    $%  ANS005.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  006:软件版本号(SYS):       $%    $%  ANS006.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  007:硬件版本号(OEM):       $%    $%  ANS007.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  008:硬件版本号(SYS):       $%    $%  ANS008.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  009:软件发布日期:          $%    $%  ANS009.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  010:软件校验码:            $%    $%  ANS010.BYTE004  $%  HEX(x1,x2);
  $%  011:维修店编码:            $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  012:维修日期:              $%    $%  ANS011.BYTE009  $%  HEX(x1,x2,x3,x4);
  $%  013:维修时的里程:          $%    $%  ANS011.BYTE013  $%  y=x1*65536+x2*256+x3;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E3 03 22 FD 01 00 00 00 00       $  ANS000:7EB 03 22 FD 01 00 00 00 00
  $  REQ001:7E3 03 22 FD 02 00 00 00 00       $  ANS001:7EB 03 22 FD 02 00 00 00 00
  $  REQ002:7E3 03 22 FD 03 00 00 00 00       $  ANS002:7EB 03 22 FD 03 00 00 00 00
  $  REQ003:7E3 03 22 FD 04 00 00 00 00       $  ANS003:7EB 03 22 FD 04 00 00 00 00
  $  REQ004:7E3 03 22 FD 05 00 00 00 00       $  ANS004:7EB 03 22 FD 05 00 00 00 00

  $  000.电源电压          $    $  V     $    $  ANS000.BYTE004  $  y=x1*0.1;
  $  001.5V系统电压        $    $  V     $    $  ANS001.BYTE004  $  y=x1*0.1;
  $  002.左2阶标定值       $    $        $    $  ANS002.BYTE004  $  HEX(x1,x2);
  $  003.左1阶标定值       $    $        $    $  ANS002.BYTE006  $  HEX(x1,x2);
  $  004.中阶标定值        $    $        $    $  ANS002.BYTE008  $  HEX(x1,x2);
  $  005.右1阶标定值       $    $        $    $  ANS002.BYTE010  $  HEX(x1,x2);
  $  006.右2阶标定值       $    $        $    $  ANS002.BYTE012  $  HEX(x1,x2);
  $  007.霍尔传感器        $    $        $    $  ANS003.BYTE004  $  HEX(x1,x2);
  $  008.P档按键状态       $    $        $    $  ANS004.BYTE004  $  if(x==0)y=@00dd;else if(x==1)y=@0140;else if(x==2)y=@01d8;else y=@000a;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E3 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
