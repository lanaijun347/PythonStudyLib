
    车型ID：1126

    模拟：协议模拟-->1126

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:707 02 10 01 00 00 00 00 00       $~  ANS000:70F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:707 02 3E 80 00 00 00 00 00       $!  ANS000:70F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:707 03 19 02 09 00 00 00 00       $#  ANS000:70F 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:707 04 14 FF FF FF 00 00 00       $$  ANS000:70F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:707 03 22 F1 93 00 00 00 00       $%  ANS000:70F 03 22 F1 93 00 00 00 00
  $%  REQ001:707 03 22 F1 94 00 00 00 00       $%  ANS001:70F 03 22 F1 94 00 00 00 00
  $%  REQ002:707 03 22 F1 95 00 00 00 00       $%  ANS002:70F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:707 03 22 00 03 00 00 00 00       $  ANS000:70F 03 22 00 03 00 00 00 00
  $  REQ001:707 03 22 00 04 00 00 00 00       $  ANS001:70F 03 22 00 04 00 00 00 00
  $  REQ002:707 03 22 00 05 00 00 00 00       $  ANS002:70F 03 22 00 05 00 00 00 00
  $  REQ003:707 03 22 00 06 00 00 00 00       $  ANS003:70F 03 22 00 06 00 00 00 00
  $  REQ004:707 03 22 00 07 00 00 00 00       $  ANS004:70F 03 22 00 07 00 00 00 00

  $  000:电源电压                            $    $  V            $    $  ANS000.BYTE004  $  if(x1<=0xFA) y=x1*0.125;else if(x1 == 0xFF) y=@0775;else y=@001c;
  $  001:冷凝风扇实际工作的占空比            $    $  %            $    $  ANS001.BYTE004  $  if(x1<=0x64) y=x1;else if(x1 == 0xFF) y=@0775;else y=@001c;
  $  002:冷却风扇实际工作的占空比            $    $  %            $    $  ANS002.BYTE004  $  if(x1<=0x64) y=x1;else if(x1 == 0xFF) y=@0775;else y=@001c;
  $  003:冷凝/冷却风扇预置工作的占空比       $    $  %            $    $  ANS003.BYTE004  $  if(x1<=0x64) y=x1;else if(x1 == 0xFF) y=@0775;else y=@001c;
  $  004:模块温度                            $    $  degree C     $    $  ANS004.BYTE004  $  if(x1<=0xD2) y=x1-40;else if(x1 == 0xFF) y=@0775;else y=@001c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:707 30 01 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
