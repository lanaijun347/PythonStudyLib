
    车型ID：1134

    模拟：协议模拟-->1134

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7BA

进入命令:

  $~  REQ000:7B2 02 10 01 00 00 00 00 00       $~  ANS000:7BA 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7B2 02 3E 80 00 00 00 00 00       $!  ANS000:7BA 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7B2 03 19 02 09 00 00 00 00       $#  ANS000:7BA 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7B2 04 14 FF FF FF 00 00 00       $$  ANS000:7BA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7B2 03 22 F1 93 00 00 00 00       $%  ANS000:7BA 03 22 F1 93 00 00 00 00
  $%  REQ001:7B2 03 22 F1 94 00 00 00 00       $%  ANS001:7BA 03 22 F1 94 00 00 00 00
  $%  REQ002:7B2 03 22 F1 95 00 00 00 00       $%  ANS002:7BA 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7B2 03 22 00 04 00 00 00 00       $  ANS000:7BA 03 22 00 04 00 00 00 00

  $  000.后驱动电机控制器主动泄放状态       $    $       $    $  ANS000.BYTE004  $  if(x1==0x00)y=@00e6;else if(x1==0x01)y=@00e7;else if(x1==0x02)y=@00e8;else if(x1==0x03)y=@00e9;else y=@0002;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7B2 30 01 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
