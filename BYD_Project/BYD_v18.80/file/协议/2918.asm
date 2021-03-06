
    车型ID：2918

    模拟：协议模拟-->2918

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7EF

进入命令:

  $~  REQ000:7E7 02 10 01 00 00 00 00 00       $~  ANS000:7EF 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E7 02 3E 80 00 00 00 00 00       $!  ANS000:7EF 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E7 03 19 02 09 00 00 00 00       $#  ANS000:7EF 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E7 04 14 FF FF FF 00 00 00       $$  ANS000:7EF 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E7 03 22 F1 93 00 00 00 00       $%  ANS000:7EF 03 22 F1 93 00 00 00 00
  $%  REQ001:7E7 03 22 F1 94 00 00 00 00       $%  ANS001:7EF 03 22 F1 94 00 00 00 00
  $%  REQ002:7E7 03 22 F1 95 00 00 00 00       $%  ANS002:7EF 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E7 03 22 00 04 00 00 00 00       $  ANS000:7EF 03 22 00 04 00 00 00 00
  $  REQ001:7E7 03 22 00 05 00 00 00 00       $  ANS001:7EF 03 22 00 05 00 00 00 00
  $  REQ002:7E7 03 22 00 06 00 00 00 00       $  ANS002:7EF 03 22 00 06 00 00 00 00
  $  REQ003:7E7 03 22 00 07 00 00 00 00       $  ANS003:7EF 03 22 00 07 00 00 00 00

  $  000.车道系统开关状态-0       $    $       $    $  ANS000.BYTE004  $  switxh(x1)0x00: y=@0000;0x01: y=@0001;default: y=@0002;
  $  001.车道故障状态-0           $    $       $    $  ANS000.BYTE005  $  switxh(x1)0x00: y=@0046;0x01: y=@0045;default: y=@0002;
  $  002.当前车速-0               $    $       $    $  ANS000.BYTE006  $  switxh(x1)0x00: y=@0046;0x01: y=@0045;default: y=@0002;
  $  003.车速阀值-0               $    $       $    $  ANS000.BYTE007  $  switxh(x1)0x00: y=@0046;0x01: y=@0045;default: y=@0002;
  $  004.当前报警状态-0           $    $       $    $  ANS000.BYTE008  $  switxh(x1)0x00: y=@035b;0x01: y=@035c;0x02: y=@035d;default: y=@0002;
  $  005.Flash状态-0              $    $       $    $  ANS000.BYTE009  $  switxh(x1)0x00: y=@0046;0x01: y=@0045;default: y=@0002;
  $  006.温度高字节-0             $    $       $    $  ANS000.BYTE010  $  y=(x1<<8)+x2;
  $  007.左侧报警阈值-0           $    $       $    $  ANS000.BYTE012  $  y=(x1<<8)+x2;
  $  008.右侧报警阈值-0           $    $       $    $  ANS000.BYTE014  $  y=(x1<<8)+x2;
  $  009.天空线高度-0             $    $       $    $  ANS000.BYTE016  $  y=(x1<<8)+x2;
  $  010.地线高度-0               $    $       $    $  ANS000.BYTE018  $  y=(x1<<8)+x2;
  $  011.车道系统开关状态         $    $       $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@0000;0x01: y=@0001;default: y=@0002;
  $  012.车道故障状态             $    $       $    $  ANS001.BYTE005  $  switxh(x1)0x00: y=@0046;0x01: y=@0045;default: y=@0002;
  $  013.当前车速                 $    $       $    $  ANS001.BYTE006  $  switxh(x1)0x00: y=@0046;0x01: y=@0045;default: y=@0002;
  $  014.车速阀值                 $    $       $    $  ANS001.BYTE007  $  switxh(x1)0x00: y=@0046;0x01: y=@0045;default: y=@0002;
  $  015.当前报警状态             $    $       $    $  ANS001.BYTE008  $  switxh(x1)0x00: y=@035b;0x01: y=@035c;0x02: y=@035d;default: y=@0002;
  $  016.Flash状态                $    $       $    $  ANS001.BYTE009  $  switxh(x1)0x00: y=@0046;0x01: y=@0045;default: y=@0002;
  $  017.温度高字节               $    $       $    $  ANS001.BYTE010  $  y=(x1<<8)+x2;
  $  018.匹配失败原因             $    $       $    $  ANS002.BYTE004  $  switxh(x1)0x03: y=@081c;0x04: y=@081d;0x05: y=@081e;default: y=@0045;
  $  019.左侧识别阈值             $    $       $    $  ANS002.BYTE005  $  y=(x1<<8)+x2;
  $  020.右侧识别阈值             $    $       $    $  ANS002.BYTE007  $  y=(x1<<8)+x2;
  $  021.天空值                   $    $       $    $  ANS002.BYTE009  $  y=(x1<<8)+x2;
  $  022.左转向灯状态             $    $       $    $  ANS003.BYTE004  $  switxh(x1)0x00: y=@081f;0x01: y=@0820;default: y=@0002;
  $  023.右转向灯状态             $    $       $    $  ANS003.BYTE005  $  switxh(x1)0x00: y=@081f;0x01: y=@0820;default: y=@0002;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E7 30 08 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
