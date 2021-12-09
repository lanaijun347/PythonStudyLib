
    车型ID：1f0d

    模拟：协议模拟-->1f0d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:773 02 10 01 00 00 00 00 00       $~  ANS000:77B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:773 02 3E 80 00 00 00 00 00       $!  ANS000:77B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:773 03 19 02 09 00 00 00 00       $#  ANS000:77B 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:773 04 14 FF FF FF 00 00 00       $$  ANS000:77B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:773 03 22 F1 93 00 00 00 00       $%  ANS000:77B 03 22 F1 93 00 00 00 00
  $%  REQ001:773 03 22 F1 94 00 00 00 00       $%  ANS001:77B 03 22 F1 94 00 00 00 00
  $%  REQ002:773 03 22 F1 95 00 00 00 00       $%  ANS002:77B 03 22 F1 95 00 00 00 00
  $%  REQ003:773 03 22 00 01 00 00 00 00       $%  ANS003:77B 03 22 00 01 00 00 00 00
  $%  REQ004:773 03 22 00 03 00 00 00 00       $%  ANS004:77B 03 22 00 03 00 00 00 00

  $%  000:硬件版本:               $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:               $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:               $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:               $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:               $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:               $%    $%  ANS002.BYTE009  $%  y=x1;
  $%  006:MCU软件版本:            $%    $%  ANS003.BYTE004  $%  y=x1*0.1;
  $%  007:全景软件平台:           $%    $%  ANS003.BYTE006  $%  y=x1*0.1;
  $%  008:MCU软件生产日期:        $%    $%  ANS003.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  009:MCU硬件版本:            $%    $%  ANS004.BYTE004  $%  y=x1*0.1;
  $%  010:全景硬件平台:           $%    $%  ANS004.BYTE006  $%  y=x1*0.1;
  $%  011:MCU硬件生产日期:        $%    $%  ANS004.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:773 03 22 00 06 00 00 00 00       $  ANS000:77B 03 22 00 06 00 00 00 00
  $  REQ001:773 03 22 00 08 00 00 00 00       $  ANS001:77B 03 22 00 08 00 00 00 00

  $  000:前摄像头配置信息       $    $       $    $  ANS000.BYTE004  $  if(x1==0x00)y=@003c;else if(x1==0x01)y=@003d;else  y=x1;
  $  001:后摄像头配置信息       $    $       $    $  ANS000.BYTE005  $  if(x1==0x00)y=@003c;else if(x1==0x01)y=@003d;else  y=x1;
  $  002:左摄像头配置信息       $    $       $    $  ANS000.BYTE006  $  if(x1==0x00)y=@003c;else if(x1==0x01)y=@003d;else  y=x1;
  $  003:右摄像头配置信息       $    $       $    $  ANS000.BYTE007  $  if(x1==0x00)y=@003c;else if(x1==0x01)y=@003d;else  y=x1;
  $  004:倒车雷达使能状态       $    $       $    $  ANS000.BYTE008  $  if(x1==0x00)y=@0043;else if(x1==0x01)y=@0044;else y=@001c;
  $  005:全景匹配状态           $    $       $    $  ANS001.BYTE004  $  if(x1==0x00)y=@001a;else if(x1==0x01)y=@001b;else y=@001c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:773 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
