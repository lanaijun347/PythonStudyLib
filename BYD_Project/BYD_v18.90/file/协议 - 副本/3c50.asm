
    车型ID：3c50

    模拟：协议模拟-->3c50

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7DE

进入命令:

  $~  REQ000:7D6 02 10 01 00 00 00 00 00       $~  ANS000:7DE 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7D6 02 3E 80 00 00 00 00 00       $!  ANS000:7DE 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7D6 03 19 02 09 00 00 00 00       $#  ANS000:7DE 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/00000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7D6 04 14 FF FF FF 00 00 00       $$  ANS000:7DE 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7D6 03 22 F1 93 00 00 00 00       $%  ANS000:7DE 03 22 F1 93 00 00 00 00
  $%  REQ001:7D6 03 22 F1 94 00 00 00 00       $%  ANS001:7DE 03 22 F1 94 00 00 00 00
  $%  REQ002:7D6 03 22 F1 95 00 00 00 00       $%  ANS002:7DE 03 22 F1 95 00 00 00 00
  $%  REQ003:7D6 03 22 F1 80 00 00 00 00       $%  ANS003:7DE 03 22 F1 80 00 00 00 00

  $%  000:硬件版本:                       $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:                       $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  002:软件编号:                       $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:                       $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:                       $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  005:修改次数:                       $%    $%  ANS002.BYTE009  $%  y=x1;
  $%  006:引导程序软件版本号/日期:        $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%d%s%02d%s%02d%s],x1+2000,@0197,x2,@019a,x3,@019b);
  $%  007:软件版本:                       $%    $%  ANS003.BYTE007  $%  y=SPRINTF([%02X.%02X.%02X],x1,x2,x3);
  $%  008:日期:                           $%    $%  ANS003.BYTE010  $%  y=SPRINTF([%d%s%02d%s%02d%s],x1+2000,@0197,x2,@019a,x3,@0199);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7D6 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
