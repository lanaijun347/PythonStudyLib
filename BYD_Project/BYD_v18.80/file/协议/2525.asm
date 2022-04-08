
    车型ID：2525

    模拟：协议模拟-->2525

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~71D

进入命令:

  $~  REQ000:715 02 10 01 00 00 00 00 00       $~  ANS000:71D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:715 02 3E 80 00 00 00 00 00       $!  ANS000:71D 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:715 03 19 02 09 00 00 00 00       $#  ANS000:71D 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/19000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:715 04 14 FF FF FF 00 00 00       $$  ANS000:71D 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:715 03 22 F1 93 00 00 00 00       $%  ANS000:71D 03 22 F1 93 00 00 00 00
  $%  REQ001:715 03 22 F1 94 00 00 00 00       $%  ANS001:71D 03 22 F1 94 00 00 00 00
  $%  REQ002:715 03 22 F1 95 00 00 00 00       $%  ANS002:71D 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:715 03 22 B0 02 00 00 00 00       $  ANS000:71D 03 22 B0 02 00 00 00 00
  $  REQ001:715 03 22 B0 03 00 00 00 00       $  ANS001:71D 03 22 B0 03 00 00 00 00
  $  REQ002:715 03 22 B0 04 00 00 00 00       $  ANS002:71D 03 22 B0 04 00 00 00 00

  $  000.转向角度                            $    $  °       $    $  ANS000.BYTE004  $  if((((x1<<8)+x2)>=0)&&(((x1<<8)+x2)<=2047))y=(((x1<<8)+x2))*1.0/10;else if((((x1<<8)+x2)>=2048)&&(((x1<<8)+x2)<=4095))y=(2048-(((x1<<8)+x2)))*1.0/10;else y=@0002;
  $  001.转向角速度                          $    $  °/s     $    $  ANS001.BYTE004  $  if((((x1<<8)+x2)>=0)&&(((x1<<8)+x2)<=2047))y=(((x1<<8)+x2))*4;else if((((x1<<8)+x2)>=2048)&&(((x1<<8)+x2)<=4095))y=(2048-(((x1<<8)+x2)))*4;else y=@0002;
  $  002.SAS(方向盘转角传感器)标定状态       $    $           $    $  ANS002.BYTE004  $  if((x1==0)) y=@0013;else if((x1==1)) y=@04c8;else y=@04e8;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:715 30 08 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
