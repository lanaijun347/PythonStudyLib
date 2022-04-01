
    车型ID：73ce

    模拟：协议模拟-->73ce

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7CA

进入命令:

  $~  REQ000:7C2 02 10 01 00 00 00 00 00       $~  ANS000:7CA 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7C2 02 3E 00 00 00 00 00 00       $!  ANS000:7CA 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7C2 03 19 02 09 00 00 00 00       $#  ANS000:7CA 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/c4000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7C2 04 14 FF FF FF 00 00 00       $$  ANS000:7CA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7C2 03 22 F1 86 00 00 00 00       $%  ANS000:7CA 03 22 F1 86 00 00 00 00
  $%  REQ001:7C2 03 22 F1 87 00 00 00 00       $%  ANS001:7CA 03 22 F1 87 00 00 00 00
  $%  REQ002:7C2 03 22 F1 90 00 00 00 00       $%  ANS002:7CA 03 22 F1 90 00 00 00 00
  $%  REQ003:7C2 03 22 F1 95 00 00 00 00       $%  ANS003:7CA 03 22 F1 95 00 00 00 00

  $%  000:诊断会话类型:        $%    $%  ANS000.BYTE004  $%  if(x==1)y=@0433;else if(x==2)y=@0434;else if(x==3)y=@0435;else y=@0436;
  $%  001:ECU硬件版本号:       $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  002:VIN:                 $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  003:软件版本编号:        $%    $%  ANS003.BYTE004  $%  y=SPRINTF([V%X.%02X.%02X],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.速度信息
  $  00.速度信息
  $  REQ000:7C2 03 22 FD 00 00 00 00 00       $  ANS000:7CA 03 22 FD 00 00 00 00 00

  $  000.车速           $    $  km/h     $    $  ANS000.BYTE004  $  if(x<0x80)y=(x1*256+x2)*0.05625;else y=(x1*256+x2-65536)*0.05625;
  $  001.左前轮速       $    $  km/h     $    $  ANS000.BYTE006  $  if(x<0x80)y=(x1*256+x2)*0.05625;else y=(x1*256+x2-65536)*0.05625;
  $  002.右前轮速       $    $  km/h     $    $  ANS000.BYTE008  $  if(x<0x80)y=(x1*256+x2)*0.05625;else y=(x1*256+x2-65536)*0.05625;
  $  003.左后轮速       $    $  km/h     $    $  ANS000.BYTE010  $  if(x<0x80)y=(x1*256+x2)*0.05625;else y=(x1*256+x2-65536)*0.05625;
  $  004.右后轮速       $    $  km/h     $    $  ANS000.BYTE012  $  if(x<0x80)y=(x1*256+x2)*0.05625;else y=(x1*256+x2-65536)*0.05625;

  $)  01.输入数据
  $  01.输入数据
  $  REQ000:7C2 03 22 FD 01 00 00 00 00       $  ANS000:7CA 03 22 FD 01 00 00 00 00

  $  000.电瓶电压         $    $  V     $    $  ANS000.BYTE004  $  y=x*20.4/255;
  $  001.制动灯开关       $    $        $    $  ANS000.BYTE005  $  if(x==0x00)y=@0431;else if(x==0x01)y=@0432;else y=@004e;

  $)  02.激活状态
  $  02.激活状态
  $  REQ000:7C2 03 22 FD 02 00 00 00 00       $  ANS000:7CA 03 22 FD 02 00 00 00 00

  $  000.阀门继电器状态                                             $    $       $    $  ANS000.BYTE004  $  if(x==0x00)y=@0431;else if(x==0x01)y=@0432;else y=@004e;
  $  001.泵马达状态                                                 $    $       $    $  ANS000.BYTE005  $  if(x==0x00)y=@0431;else if(x==0x01)y=@0432;else y=@004e;
  $  002.阀门激活状态：左前进油阀(EVFL)                             $    $       $    $  ANS000.BYTE006  $  if(((x>>0)&1))y=@0000;else y=@0001;
  $  003.阀门激活状态：左前出油阀(AVFL)                             $    $       $    $  ANS000.BYTE006  $  if(((x>>1)&1))y=@0000;else y=@0001;
  $  004.阀门激活状态：右前进油阀(EVFR)                             $    $       $    $  ANS000.BYTE006  $  if(((x>>2)&1))y=@0000;else y=@0001;
  $  005.阀门激活状态：右前出油阀(AVFR)                             $    $       $    $  ANS000.BYTE006  $  if(((x>>3)&1))y=@0000;else y=@0001;
  $  006.阀门激活状态：左后进油阀(EVRL)                             $    $       $    $  ANS000.BYTE006  $  if(((x>>4)&1))y=@0000;else y=@0001;
  $  007.阀门激活状态：左后出油阀(AVRL)                             $    $       $    $  ANS000.BYTE006  $  if(((x>>5)&1))y=@0000;else y=@0001;
  $  008.阀门激活状态：右后进油阀(EVRR)                             $    $       $    $  ANS000.BYTE006  $  if(((x>>6)&1))y=@0000;else y=@0001;
  $  009.阀门激活状态：右后出油阀(AVRR)                             $    $       $    $  ANS000.BYTE006  $  if(((x>>7)&1))y=@0000;else y=@0001;
  $  010.阀门激活状态：主缸隔离阀1(USV1)(仅ESP(电子稳定程序))       $    $       $    $  ANS000.BYTE007  $  if(((x>>0)&1))y=@0000;else y=@0001;
  $  011.阀门激活状态：主缸隔离阀2(USV2)(仅ESP(电子稳定程序))       $    $       $    $  ANS000.BYTE007  $  if(((x>>1)&1))y=@0000;else y=@0001;
  $  012.阀门激活状态：低压供液阀1(HSV1)(仅ESP(电子稳定程序))       $    $       $    $  ANS000.BYTE007  $  if(((x>>2)&1))y=@0000;else y=@0001;
  $  013.阀门激活状态：低压供液阀2(HSV2)(仅ESP(电子稳定程序))       $    $       $    $  ANS000.BYTE007  $  if(((x>>3)&1))y=@0000;else y=@0001;

  $)  03.其他
  $  03.其他
  $  REQ000:7C2 03 22 FD 03 00 00 00 00       $  ANS000:7CA 03 22 FD 03 00 00 00 00
  $  REQ001:7C2 03 22 FD 04 00 00 00 00       $  ANS001:7CA 03 22 FD 04 00 00 00 00
  $  REQ002:7C2 03 22 FD 06 00 00 00 00       $  ANS002:7CA 03 22 FD 06 00 00 00 00

  $  000.填充状态                             $    $       $    $  ANS000.BYTE004  $  if(x==0x00)y=@0102;else if(x==0xaa)y=@0103;else if(x==0xee)y=@0104;else y=@004e;
  $  001.EOL(下线测试)状态                    $    $       $    $  ANS001.BYTE004  $  if(x==0x00)y=@00ff;else if(x==0xaa)y=@0100;else if(x==0xee)y=@0101;else y=@004e;
  $  002.设备编码:(仅ESP(电子稳定程序))       $    $       $    $  ANS002.BYTE004  $  y=x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7C2 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
