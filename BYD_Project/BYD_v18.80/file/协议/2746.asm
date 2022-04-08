
    车型ID：2746

    模拟：协议模拟-->2746

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~79A

进入命令:

  $~  REQ000:792 02 10 01 00 00 00 00 00       $~  ANS000:79A 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:792 02 3E 80 00 00 00 00 00       $!  ANS000:79A 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:792 03 19 02 09 00 00 00 00       $#  ANS000:79A 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/76000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:792 04 14 FF FF FF 00 00 00       $$  ANS000:79A 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:792 03 22 F1 93 00 00 00 00       $%  ANS000:79A 03 22 F1 93 00 00 00 00
  $%  REQ001:792 03 22 F1 94 00 00 00 00       $%  ANS001:79A 03 22 F1 94 00 00 00 00
  $%  REQ002:792 03 22 F1 95 00 00 00 00       $%  ANS002:79A 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:792 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
