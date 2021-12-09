
    车型ID：221d

    模拟：协议模拟-->221d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:787 02 10 01 00 00 00 00 00       $~  ANS000:78F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:787 02 3E 80 00 00 00 00 00       $!  ANS000:78F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:787 03 19 02 09 00 00 00 00       $#  ANS000:78F 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:787 04 14 FF FF FF 00 00 00       $$  ANS000:78F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:787 03 22 F1 93 00 00 00 00       $%  ANS000:78F 03 22 F1 93 00 00 00 00
  $%  REQ001:787 03 22 F1 94 00 00 00 00       $%  ANS001:78F 03 22 F1 94 00 00 00 00
  $%  REQ002:787 03 22 F1 95 00 00 00 00       $%  ANS002:78F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:787 03 22 00 04 00 00 00 00       $  ANS000:78F 03 22 00 04 00 00 00 00
  $  REQ001:787 03 22 00 05 00 00 00 00       $  ANS001:78F 03 22 00 05 00 00 00 00
  $  REQ002:787 03 22 00 06 00 00 00 00       $  ANS002:78F 03 22 00 06 00 00 00 00
  $  REQ003:787 03 22 00 10 00 00 00 00       $  ANS003:78F 03 22 00 10 00 00 00 00

  $  000:故障监测标志位         $    $       $    $  ANS000.BYTE004  $  switxh(x1)0x00: y=@009e;0x01: y=@0446;0x02: y=@0447;0x03: y=@0448;0x04: y=@0449;0x05: y=@012e;0x06: y=@012f;default: y=@001c;
  $  001:故障监测持续判断       $    $       $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@009e;0x01: y=@0126;0x02: y=@0127;0x03: y=@0128;0x04: y=@0129;default: y=@001c;
  $  002:自身识别档位信号       $    $       $    $  ANS002.BYTE004  $  switxh(x1)0x00: y=@0130;0x01: y=@0132;0x02: y=@00c7;0x03: y=@00c8;0x04: y=@0133;default: y=@001c;
  $  003:P档灯夜间指示          $    $       $    $  ANS003.BYTE004  $  y=((x1<<8)+x2)*1.0/4000;
  $  004:P档灯白天指示          $    $       $    $  ANS003.BYTE006  $  y=((x1<<8)+x2)*1.0/4000;
  $  005:P档灯夜间背光          $    $       $    $  ANS003.BYTE008  $  y=((x1<<8)+x2)*1.0/4000;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:787 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
