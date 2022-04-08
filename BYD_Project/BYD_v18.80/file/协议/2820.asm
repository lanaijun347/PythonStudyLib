
    车型ID：2820

    模拟：协议模拟-->2820

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7CA

进入命令:

  $~  REQ000:7C2 02 10 01 00 00 00 00 00       $~  ANS000:7CA 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7C2 02 3E 80 00 00 00 00 00       $!  ANS000:7CA 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7C2 03 19 02 09 00 00 00 00       $#  ANS000:7CA 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7C2 04 14 FF FF FF 00 00 00       $$  ANS000:7CA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7C2 03 22 F1 93 00 00 00 00       $%  ANS000:7CA 03 22 F1 93 00 00 00 00
  $%  REQ001:7C2 03 22 F1 94 00 00 00 00       $%  ANS001:7CA 03 22 F1 94 00 00 00 00
  $%  REQ002:7C2 03 22 F1 95 00 00 00 00       $%  ANS002:7CA 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7C2 03 22 00 07 00 00 00 00       $  ANS000:7CA 03 22 00 07 00 00 00 00
  $  REQ001:7C2 03 22 00 08 00 00 00 00       $  ANS001:7CA 03 22 00 08 00 00 00 00
  $  REQ002:7C2 03 22 00 09 00 00 00 00       $  ANS002:7CA 03 22 00 09 00 00 00 00
  $  REQ003:7C2 03 22 00 11 00 00 00 00       $  ANS003:7CA 03 22 00 11 00 00 00 00
  $  REQ004:7C2 03 22 00 12 00 00 00 00       $  ANS004:7CA 03 22 00 12 00 00 00 00
  $  REQ005:7C2 03 22 00 13 00 00 00 00       $  ANS005:7CA 03 22 00 13 00 00 00 00
  $  REQ006:7C2 03 22 00 14 00 00 00 00       $  ANS006:7CA 03 22 00 14 00 00 00 00
  $  REQ007:7C2 03 22 00 15 00 00 00 00       $  ANS007:7CA 03 22 00 15 00 00 00 00
  $  REQ008:7C2 03 22 00 16 00 00 00 00       $  ANS008:7CA 03 22 00 16 00 00 00 00
  $  REQ009:7C2 03 22 F1 A1 00 00 00 00       $  ANS009:7CA 03 22 F1 A1 00 00 00 00

  $  000.ECU供电电压              $    $  V            $    $  ANS000.BYTE004  $  y=x1*0.1;
  $  001.车速                     $    $               $    $  ANS001.BYTE004  $  y=(x1<<8)+x2;
  $  002.偏航率                   $    $               $    $  ANS002.BYTE004  $  y=((x1<<8)+x2)*0.02;
  $  003.副雷达ECU供电电压        $    $  V            $    $  ANS003.BYTE004  $  y=x1*0.1;
  $  004.副雷达内部温度           $    $  degree C     $    $  ANS004.BYTE004  $  y=x1-40;
  $  005.主雷达内部温度           $    $  degree C     $    $  ANS005.BYTE004  $  y=x1-40;
  $  006.主雷达自动标定角度       $    $               $    $  ANS006.BYTE004  $  y=((x1<<8)+x2)*0.01;
  $  007.副雷达自动标定角度       $    $               $    $  ANS007.BYTE004  $  y=((x1<<8)+x2)*0.01;
  $  008.系统状态                 $    $               $    $  ANS008.BYTE004  $  switxh(x1)0x00: y=@0000;0x01: y=@000e;0x02: y=@057a;0x03: y=@057b;default: y=@057c;
  $  009.主副雷达下线标定值       $    $               $    $  ANS009.BYTE004  $  if((x1==0)) y=@003b;else if((x1==1)) y=@05a3;else if((x1==2)) y=@046b;else if((x1==3)) y=@00f8;else if((x1==4)) y=@0448;else if((x1==5)) y=@044b;else if((x1==6)) y=@0108;else if((x1>=7)&&(x1<=255)) y=@06ff;else y=@0002;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7C2 30 08 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
