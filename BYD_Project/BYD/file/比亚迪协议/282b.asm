
    车型ID：282b

    模拟：协议模拟-->282b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:720 02 10 01 00 00 00 00 00       $~  ANS000:728 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:720 02 3E 80 00 00 00 00 00       $!  ANS000:728 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:720 03 19 02 09 00 00 00 00       $#  ANS000:728 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/92000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:720 04 14 FF FF FF 00 00 00       $$  ANS000:728 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:720 03 22 F1 93 00 00 00 00       $%  ANS000:728 03 22 F1 93 00 00 00 00
  $%  REQ001:720 03 22 F1 94 00 00 00 00       $%  ANS001:728 03 22 F1 94 00 00 00 00
  $%  REQ002:720 03 22 F1 95 00 00 00 00       $%  ANS002:728 03 22 F1 95 00 00 00 00
  $%  REQ003:720 03 22 F1 80 00 00 00 00       $%  ANS003:728 03 22 F1 80 00 00 00 00
  $%  REQ004:720 03 22 00 02 00 00 00 00       $%  ANS004:728 03 22 00 02 00 00 00 00
  $%  REQ005:720 03 22 00 0A 00 00 00 00       $%  ANS005:728 03 22 00 0A 00 00 00 00
  $%  REQ006:720 03 22 00 0D 00 00 00 00       $%  ANS006:728 03 22 00 0D 00 00 00 00

  $%  000:硬件版本:                           $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:                           $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:                           $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:                           $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:                           $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:                           $%    $%  ANS002.BYTE009  $%  y=x1;
  $%  006:引导程序软件版本号/日期(年):        $%    $%  ANS003.BYTE004  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@03bf,x3,@04a1);
  $%  007:软件版本_1:                         $%    $%  ANS003.BYTE007  $%  y=SPRINTF([%02d.%02d.%02d.],x1,x2,x3);
  $%  008:日期:                               $%    $%  ANS003.BYTE010  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  009:序列号:                             $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X %02X %02X %02X %02X %02X],x1,x2,x3,x4,x5,x6);
  $%  010:已匹配钥匙数:                       $%    $%  ANS005.BYTE004  $%  y=x1;
  $%  011:内部供电状况:                       $%    $%  ANS006.BYTE004  $%  switxh(x1)0x00: y=@026c;0xff: y=@026d;default: y=@0019;
  $%  012:读卡器是否失去通信:                 $%    $%  ANS006.BYTE005  $%  switxh(x1)0x00: y=@026a;0xff: y=@026b;default: y=@0019;
  $%  013:内部天线状态:                       $%    $%  ANS006.BYTE006  $%  switxh(x1)0x00: y=@0022;0xff: y=@003a;default: y=@0019;
  $%  014:钥匙状态:                           $%    $%  ANS006.BYTE007  $%  switxh(x1)0x02: y=@0264;0x03: y=@0261;0x04: y=@0262;0x06: y=@0263;default: y=@0019;
  $%  015:钥匙ID:                             $%    $%  ANS006.BYTE008  $%  y=SPRINTF([%02X%02X%02X%02X],x1,x2,x3,x4);
  $%  016:钥匙序号:                           $%    $%  ANS006.BYTE012  $%  HEX(x1);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:720 03 22 20 05 00 00 00 00       $  ANS000:728 03 22 20 05 00 00 00 00
  $  REQ001:720 03 22 20 06 00 00 00 00       $  ANS001:728 03 22 20 06 00 00 00 00
  $  REQ002:720 03 22 20 07 00 00 00 00       $  ANS002:728 03 22 20 07 00 00 00 00
  $  REQ003:720 03 22 20 08 00 00 00 00       $  ANS003:728 03 22 20 08 00 00 00 00

  $  000:车型颜色             $    $       $    $  ANS000.BYTE004  $  switxh(x1)0x00: y=@0048;0x01: y=@040c;0x02: y=@040d;0x03: y=@040e;0x04: y=@040f;0x05: y=@0410;0x06: y=@0411;0x07: y=@0412;0x08: y=@0413;0x09: y=@0414;0x0A: y=@0415;0x0B: y=@0416;0x0C: y=@0417;0x0D: y=@0418;0x0E: y=@0419;0x0F: y=@041a;0x10: y=@041b;0x11: y=@041c;0x12: y=@041d;0x13: y=@041e;0x14: y=@041f;0x15: y=@0420;default: y=@001c;
  $  001:车顶行李架配置       $    $       $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@0048;0x01: y=@040a;0x02: y=@040b;0x03: y=@009e;default: y=@001c;
  $  002:外置天线配置         $    $       $    $  ANS002.BYTE004  $  switxh(x1)0x00: y=@0048;0x01: y=@040a;0x02: y=@040b;0x03: y=@009e;default: y=@001c;
  $  003:天窗配置             $    $       $    $  ANS003.BYTE004  $  switxh(x1)0x00: y=@0048;0x01: y=@040a;0x02: y=@0421;0x03: y=@0422;default: y=@001c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:720 30 00 0F 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
