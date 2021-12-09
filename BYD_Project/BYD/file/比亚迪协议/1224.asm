
    车型ID：1224

    模拟：协议模拟-->1224

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:767 02 10 01 00 00 00 00 00       $~  ANS000:76F 02 10 01 00 00 00 00 00
  $~  REQ001:767 02 10 03 00 00 00 00 00       $~  ANS001:76F 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:767 02 3E 80 00 00 00 00 00       $!  ANS000:76F 02 3E 80 00 00 00 00 00

退出命令:

  $@  REQ000:767 02 10 01 00 00 00 00 00       $@  ANS000:76F 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:767 03 19 02 09 00 00 00 00       $#  ANS000:76F 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:767 04 14 FF FF FF 00 00 00       $$  ANS000:76F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:767 03 22 F1 93 00 00 00 00       $%  ANS000:76F 03 22 F1 93 00 00 00 00
  $%  REQ001:767 03 22 F1 94 00 00 00 00       $%  ANS001:76F 03 22 F1 94 00 00 00 00
  $%  REQ002:767 03 22 F1 95 00 00 00 00       $%  ANS002:76F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:767 03 22 00 04 00 00 00 00       $  ANS000:76F 03 22 00 04 00 00 00 00
  $  REQ001:767 03 22 B0 04 00 00 00 00       $  ANS001:76F 03 22 B0 04 00 00 00 00
  $  REQ002:767 03 22 B0 05 00 00 00 00       $  ANS002:76F 03 22 B0 05 00 00 00 00
  $  REQ003:767 03 22 B0 06 00 00 00 00       $  ANS003:76F 03 22 B0 06 00 00 00 00
  $  REQ004:767 03 22 B0 07 00 00 00 00       $  ANS004:76F 03 22 B0 07 00 00 00 00

  $  000:座椅水平调节状态                   $    $       $    $  ANS000.BYTE004  $  if(((x1&0x03))==0x00) y=@00d2;else if(((x1&0x03))==0x01) y=@05ce;else if(((x1&0x03))==0x02) y=@05cf;else if(((x1&0x03))==0x03) y=@001c;
  $  001:座椅垂直调节状态                   $    $       $    $  ANS000.BYTE004  $  if((x1&0x0C)==0x00) y=@00d2;else if((x1&0x0C)==0x04) y=@046e;else if((x1&0x0C)==0x08) y=@046f;else if((x1&0x0C)==0x0C) y=@001c;
  $  002:靠背调节状态                       $    $       $    $  ANS000.BYTE004  $  if((x1&0x30)==0x00) y=@00d2;else if((x1&0x30)==0x10) y=@05d0;else if((x1&0x30)==0x20) y=@05d1;else if((x1&0x30)==0x30) y=@001c;
  $  003:座椅水平向前调节按键开关次数       $    $       $    $  ANS001.BYTE004  $  if((x1+x2*256)<50001) y=x1+x2*256;else y=@0472;
  $  004:座椅水平向后调节按键开关次数       $    $       $    $  ANS001.BYTE006  $  if((x1+x2*256)<50001) y=x1+x2*256;else y=@0472;
  $  005:靠背前倾调节按键开关次数           $    $       $    $  ANS002.BYTE004  $  if((x1+x2*256)<50001) y=x1+x2*256;else y=@0472;
  $  006:靠背后倾调节按键开关次数           $    $       $    $  ANS002.BYTE006  $  if((x1+x2*256)<50001) y=x1+x2*256;else y=@0472;
  $  007:座椅高度上调按键开关次数           $    $       $    $  ANS003.BYTE004  $  if((x1+x2*256)<50001) y=x1+x2*256;else y=@0472;
  $  008:座椅高度下调按键开关次数           $    $       $    $  ANS003.BYTE006  $  if((x1+x2*256)<50001) y=x1+x2*256;else y=@0472;
  $  009:座盆向上调节按键开关次数           $    $       $    $  ANS004.BYTE004  $  if((x1+x2*256)<50001) y=x1+x2*256;else y=@0472;
  $  010:座盆向下调节按键开关次数           $    $       $    $  ANS004.BYTE006  $  if((x1+x2*256)<50001) y=x1+x2*256;else y=@0472;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:767 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
