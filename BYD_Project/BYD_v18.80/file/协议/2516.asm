
    车型ID：2516

    模拟：协议模拟-->2516

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~78F

进入命令:

  $~  REQ000:787 02 10 01 00 00 00 00 00       $~  ANS000:78F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:787 02 3E 80 00 00 00 00 00       $!  ANS000:78F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:787 03 19 02 09 00 00 00 00       $#  ANS000:78F 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/15000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:787 04 14 FF FF FF 00 00 00       $$  ANS000:78F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:787 03 22 F1 93 00 00 00 00       $%  ANS000:78F 03 22 F1 93 00 00 00 00
  $%  REQ001:787 03 22 F1 94 00 00 00 00       $%  ANS001:78F 03 22 F1 94 00 00 00 00
  $%  REQ002:787 03 22 F1 95 00 00 00 00       $%  ANS002:78F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:787 03 22 00 04 00 00 00 00       $  ANS000:78F 03 22 00 04 00 00 00 00
  $  REQ001:787 03 22 00 05 00 00 00 00       $  ANS001:78F 03 22 00 05 00 00 00 00
  $  REQ002:787 03 22 00 06 00 00 00 00       $  ANS002:78F 03 22 00 06 00 00 00 00
  $  REQ003:787 03 22 00 07 00 00 00 00       $  ANS003:78F 03 22 00 07 00 00 00 00
  $  REQ004:787 03 22 00 09 00 00 00 00       $  ANS004:78F 03 22 00 09 00 00 00 00
  $  REQ005:787 03 22 00 10 00 00 00 00       $  ANS005:78F 03 22 00 10 00 00 00 00

  $  000.故障监测标志位                     $    $       $    $  ANS000.BYTE004  $  switxh(x1)0x00: y=@010e;0x01: y=@011e;0x02: y=@011f;0x03: y=@0120;0x04: y=@0121;0x05: y=@0122;0x06: y=@0123;default: y=@0002;
  $  001.故障监测持续判断                   $    $       $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@010e;0x01: y=@0125;0x02: y=@0126;0x03: y=@0127;0x04: y=@0128;default: y=@0002;
  $  002.自身识别档位信号                   $    $       $    $  ANS002.BYTE004  $  switxh(x1)0x00: y=@0124;0x01: y=@00d7;0x02: y=@0071;0x03: y=@0072;0x04: y=@00d8;default: y=@0002;
  $  003.换挡球头灯当前状态                 $    $       $    $  ANS003.BYTE004  $  switxh(x1)0x00: y=@010e;0x01: y=@010f;0x02: y=@0110;0x03: y=@0111;0x04: y=@0112;0x05: y=@0113;0x06: y=@0114;default: y=@0002;
  $  004.N切R/D在V≤3时是否需要踩刹车       $    $       $    $  ANS004.BYTE004  $  switxh(x1)0x00: y=@001c;0x01: y=@001b;default: y=@0002;
  $  005.P档灯夜间指示                      $    $       $    $  ANS005.BYTE004  $  y=((x1<<8)+x2)*1.0/4000;
  $  006.P档灯白天指示                      $    $       $    $  ANS005.BYTE006  $  y=((x1<<8)+x2)*1.0/4000;
  $  007.P档灯夜间背光                      $    $       $    $  ANS005.BYTE008  $  y=((x1<<8)+x2)*1.0/4000;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:787 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
