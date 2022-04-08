
    车型ID：3117

    模拟：协议模拟-->3117

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~749

进入命令:

  $~  REQ000:741 02 10 01 00 00 00 00 00       $~  ANS000:749 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:741 02 3E 80 00 00 00 00 00       $!  ANS000:749 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:741 03 19 02 09 00 00 00 00       $#  ANS000:749 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/16000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:741 04 14 FF FF FF 00 00 00       $$  ANS000:749 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:741 03 22 F1 80 00 00 00 00       $%  ANS000:749 03 22 F1 80 00 00 00 00
  $%  REQ001:741 03 22 F1 93 00 00 00 00       $%  ANS001:749 03 22 F1 93 00 00 00 00
  $%  REQ002:741 03 22 F1 94 00 00 00 00       $%  ANS002:749 03 22 F1 94 00 00 00 00
  $%  REQ003:741 03 22 F1 95 00 00 00 00       $%  ANS003:749 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:硬件版本:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  003:硬件日期:        $%    $%  ANS001.BYTE005  $%  y=SPRINTF([%d%s%02d%s%02d%s],x1+2000,@0038,x2,@0039,x3,@003a);
  $%  004:软件编号:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  005:软件版本:        $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  006:软件日期:        $%    $%  ANS003.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  007:修改次数:        $%    $%  ANS003.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:741 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
