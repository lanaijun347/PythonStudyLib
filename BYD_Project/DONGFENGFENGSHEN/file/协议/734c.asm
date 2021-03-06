
    车型ID：734c

    模拟：协议模拟-->734c

;******************************************************************************************************************************************************

    通讯线: $~03$~08$~500k$~71F

进入命令:

  $~  REQ000:717 02 10 01 00 00 00 00 00       $~  ANS000:71F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:717 02 3E 00 00 00 00 00 00       $!  ANS000:71F 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:717 03 19 02 09 00 00 00 00       $#  ANS000:71F 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/32000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:717 04 14 FF FF FF 00 00 00       $$  ANS000:71F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:717 03 22 F1 87 00 00 00 00       $%  ANS000:71F 03 22 F1 87 00 00 00 00
  $%  REQ001:717 03 22 F1 97 00 00 00 00       $%  ANS001:71F 03 22 F1 97 00 00 00 00
  $%  REQ002:717 03 22 F1 8A 00 00 00 00       $%  ANS002:71F 03 22 F1 8A 00 00 00 00
  $%  REQ003:717 03 22 F1 89 00 00 00 00       $%  ANS003:71F 03 22 F1 89 00 00 00 00
  $%  REQ004:717 03 22 F1 79 00 00 00 00       $%  ANS004:71F 03 22 F1 79 00 00 00 00
  $%  REQ005:717 03 22 F1 7F 00 00 00 00       $%  ANS005:71F 03 22 F1 7F 00 00 00 00
  $%  REQ006:717 03 22 F1 9C 00 00 00 00       $%  ANS006:71F 03 22 F1 9C 00 00 00 00
  $%  REQ007:717 03 22 F1 99 00 00 00 00       $%  ANS007:71F 03 22 F1 99 00 00 00 00
  $%  REQ008:717 03 22 F1 8C 00 00 00 00       $%  ANS008:71F 03 22 F1 8C 00 00 00 00
  $%  REQ009:717 03 22 F1 93 00 00 00 00       $%  ANS009:71F 03 22 F1 93 00 00 00 00
  $%  REQ010:717 03 22 F1 95 00 00 00 00       $%  ANS010:71F 03 22 F1 95 00 00 00 00

  $%  000:零件号:                $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  001:系统名称:              $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3);
  $%  002:供应商代码:            $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:软件版本(OEM):         $%    $%  ANS003.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4)&0x0F,(x1&0x0F),x2);
  $%  004:硬件版本(OEM):         $%    $%  ANS004.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4)&0x0F,(x1&0x0F),x2);
  $%  005:软件校验码:            $%    $%  ANS005.BYTE004  $%  HEX(x1,x2);
  $%  006:标定软件版本:          $%    $%  ANS006.BYTE004  $%  HEX(x1,x2,x3);
  $%  007:软件发布日期:          $%    $%  ANS007.BYTE004  $%  if((x1==0xff&&x2==0xff&&x3==0xff&&x4==0xff)||(x1==0&&x2==0&&x3==0&&x4==0))y=@0425;else y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  008:ECU生产序列号:         $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  009:硬件版本号(SYS):       $%    $%  ANS009.BYTE004  $%  HEX(x1,x2);
  $%  010:软件版本号(SYS):       $%    $%  ANS010.BYTE004  $%  HEX(x1,x2);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.开关信息
  $  00.开关信息
  $  REQ000:717 03 22 FD 01 00 00 00 00       $  ANS000:71F 03 22 FD 01 00 00 00 00

  $  000.自动泊车开关                             $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1))y=@00dd;else y=@00de;
  $  001.MP5(多媒体影音系统)开关                  $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1))y=@00dd;else y=@00de;
  $  002.STT OFF(智能启停)/低速提醒暂停开关       $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1))y=@00dd;else y=@00de;
  $  003.ESC(电子车身稳定系统) 开关               $    $       $    $  ANS000.BYTE004  $  if(((x>>3)&1))y=@00dd;else y=@00de;
  $  004.危险报警灯开关                           $    $       $    $  ANS000.BYTE004  $  if(((x>>4)&1))y=@00dd;else y=@00de;
  $  005.经济模式开关/雪地模式开关                $    $       $    $  ANS000.BYTE004  $  if(((x>>5)&1))y=@00dd;else y=@00de;
  $  006.运动模式开关                             $    $       $    $  ANS000.BYTE004  $  if(((x>>6)&1))y=@00dd;else y=@00de;
  $  007.雷达开启                                 $    $       $    $  ANS000.BYTE004  $  if(((x>>7)&1))y=@00dd;else y=@00de;

  $)  01.LED 信息
  $  01.LED 信息
  $  REQ000:717 03 22 FD 02 00 00 00 00       $  ANS000:71F 03 22 FD 02 00 00 00 00

  $  000.STT OFF/低速提醒暂停开关灯         $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1))y=@0000;else y=@0001;
  $  001.ESC(电子车身稳定系统) 开关灯       $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1))y=@0000;else y=@0001;
  $  002.雷达开启                           $    $       $    $  ANS000.BYTE004  $  if(((x>>3)&1))y=@0000;else y=@0001;

  $)  02.车型配置
  $  02.车型配置
  $  REQ000:717 03 22 F0 10 00 00 00 00       $  ANS000:71F 03 22 F0 10 00 00 00 00

  $  000.发动机类型                  $    $       $    $  ANS000.BYTE004  $  if(x==0x00)y=@00db;else if(x==0x01)y=@0007;else if(x==0x02)y=@058e;else y=@0027;
  $  001.变速箱类型                  $    $       $    $  ANS000.BYTE005  $  if(x==0x00)y=@000c;else if(x==0x01)y=@000d;else y=@0027;
  $  002.APA(自动泊车开关)           $    $       $    $  ANS000.BYTE006  $  if(((x>>0)&1))y=@00d7;else y=@00d8;
  $  003.STT/低速提醒                $    $       $    $  ANS000.BYTE006  $  if(((x>>1)&1))y=@058c;else y=@058d;
  $  004.ECO/SNOW(经济/雪地)         $    $       $    $  ANS000.BYTE006  $  if((x&0x0c)==0x00)y=@00d8;else if((x&0x0c)==0x04)y=@058a;else if((x&0x0c)==0x08)y=@058b;else y=@0027;
  $  005.运动模式、HEV/EV 开关       $    $       $    $  ANS000.BYTE006  $  if((x&0x30)==0x00)y=@00d8;else if((x&0x30)==0x10)y=@0588;else if((x&0x30)==0x20)y=@0589;else y=@0027;
  $  006.雷达                        $    $       $    $  ANS000.BYTE006  $  if(((x>>6)&1))y=@00d7;else y=@00d8;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:717 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
