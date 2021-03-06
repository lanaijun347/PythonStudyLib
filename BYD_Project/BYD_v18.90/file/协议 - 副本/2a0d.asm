
    车型ID：2a0d

    模拟：协议模拟-->2a0d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~77B

进入命令:

  $~  REQ000:773 02 10 01 00 00 00 00 00       $~  ANS000:77B 02 10 01 00 00 00 00 00
  $~  REQ001:773 02 10 01 00 00 00 00 00       $~  ANS001:77B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:773 02 3E 80 00 00 00 00 00       $!  ANS000:77B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:773 03 19 02 09 00 00 00 00       $#  ANS000:77B 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/b4000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:773 04 14 FF FF FF 00 00 00       $$  ANS000:77B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:773 03 22 F1 93 00 00 00 00       $%  ANS000:77B 03 22 F1 93 00 00 00 00
  $%  REQ001:773 03 22 F1 94 00 00 00 00       $%  ANS001:77B 03 22 F1 94 00 00 00 00
  $%  REQ002:773 03 22 F1 95 00 00 00 00       $%  ANS002:77B 03 22 F1 95 00 00 00 00
  $%  REQ003:773 03 22 F1 8C 00 00 00 00       $%  ANS003:77B 03 22 F1 8C 00 00 00 00

  $%  000:硬件版本:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:              $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  002:软件编号:              $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:              $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  005:修改次数:              $%    $%  ANS002.BYTE009  $%  y=x1;
  $%  006:全景产品序列号:        $%    $%  ANS003.BYTE004  $%  HEX(x1,x2,x3);
  $%  007:生产日期:              $%    $%  ANS003.BYTE007  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:773 03 22 00 06 00 00 00 00       $  ANS000:77B 03 22 00 06 00 00 00 00
  $  REQ001:773 03 22 00 08 00 00 00 00       $  ANS001:77B 03 22 00 08 00 00 00 00

  $  000.前摄像头配置信息             $    $       $    $  ANS000.BYTE004  $  if((x1==0)) y=@0015;else if((x1==1)) y=@0840;else if((x1>=2)&&(x1<=255)) y=x1;else y=@0001;
  $  001.后摄像头配置信息             $    $       $    $  ANS000.BYTE005  $  if((x1==0)) y=@0015;else if((x1==1)) y=@0840;else if((x1>=2)&&(x1<=255)) y=x1;else y=@0001;
  $  002.左摄像头配置信息             $    $       $    $  ANS000.BYTE006  $  if((x1==0)) y=@0015;else if((x1==1)) y=@0840;else if((x1>=2)&&(x1<=255)) y=x1;else y=@0001;
  $  003.右摄像头配置信息             $    $       $    $  ANS000.BYTE007  $  if((x1==0)) y=@0015;else if((x1==1)) y=@0840;else if((x1>=2)&&(x1<=255)) y=x1;else y=@0001;
  $  004.倒车雷达使能状态(预留)       $    $       $    $  ANS000.BYTE008  $  switxh(x1)0x00: y=@0013;0x01: y=@0014;default: y=@0001;
  $  005.全景匹配状态                 $    $       $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@0192;0x01: y=@0191;default: y=@0001;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:773 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
