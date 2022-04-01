
    车型ID：7350

    模拟：协议模拟-->7350

;******************************************************************************************************************************************************

    通讯线: $~03$~08$~500k$~769

进入命令:

  $~  REQ000:761 02 10 01 00 00 00 00 00       $~  ANS000:769 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:761 02 3E 00 00 00 00 00 00       $!  ANS000:769 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:761 03 19 02 09 00 00 00 00       $#  ANS000:769 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/3e000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:761 04 14 FF FF FF 00 00 00       $$  ANS000:769 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:761 03 22 F1 97 00 00 00 00       $%  ANS000:769 03 22 F1 97 00 00 00 00
  $%  REQ001:761 03 22 F1 8A 00 00 00 00       $%  ANS001:769 03 22 F1 8A 00 00 00 00
  $%  REQ002:761 03 22 F1 93 00 00 00 00       $%  ANS002:769 03 22 F1 93 00 00 00 00
  $%  REQ003:761 03 22 F1 95 00 00 00 00       $%  ANS003:769 03 22 F1 95 00 00 00 00
  $%  REQ004:761 03 22 F1 87 00 00 00 00       $%  ANS004:769 03 22 F1 87 00 00 00 00
  $%  REQ005:761 03 22 F1 8C 00 00 00 00       $%  ANS005:769 03 22 F1 8C 00 00 00 00
  $%  REQ006:761 03 22 F1 99 00 00 00 00       $%  ANS006:769 03 22 F1 99 00 00 00 00
  $%  REQ007:761 03 22 F1 89 00 00 00 00       $%  ANS007:769 03 22 F1 89 00 00 00 00
  $%  REQ008:761 03 22 F1 79 00 00 00 00       $%  ANS008:769 03 22 F1 79 00 00 00 00
  $%  REQ009:761 03 22 F1 90 00 00 00 00       $%  ANS009:769 03 22 F1 90 00 00 00 00

  $%  000:系统名称:                 $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3);
  $%  001:供应商代码:               $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  002:ECU硬件版本号(SYS):       $%    $%  ANS002.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],x1,x2,x3);
  $%  003:ECU软件版本号(SYS):       $%    $%  ANS003.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],x1,x2,x3);
  $%  004:零件号:                   $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  005:生产序列号:               $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  006:软件发布日期:             $%    $%  ANS006.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  007:软件版本(OEM):            $%    $%  ANS007.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  008:硬件版本(OEM):            $%    $%  ANS008.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  009:VIN码:                    $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:761 03 22 F0 10 00 00 00 00       $  ANS000:769 03 22 F0 10 00 00 00 00

  $  000.自动泊车                     $    $       $    $  ANS000.BYTE004  $  if(((x>>6)&1))y=@00c2;else y=@00c3;
  $  001.环视系统                     $    $       $    $  ANS000.BYTE004  $  if(((x>>5)&1))y=@00c2;else y=@00c3;
  $  002.倒车影像                     $    $       $    $  ANS000.BYTE004  $  if(((x>>4)&1))y=@00c2;else y=@00c3;
  $  003.紧急制动辅助系统软开关       $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1))y=@00c2;else y=@00c3;
  $  004.车型                         $    $       $    $  ANS000.BYTE005  $  if((x&0x1F)==0x00)y=@00c9;else if((x&0x1F)==0x01)y=@00ca;else if((x&0x1F)==0x02)y=@00cb;else if((x&0x1F)==0x03)y=@00cc;else if((x&0x1F)==0x04)y=@059b;else if((x&0x1F)==0x05)y=@00ce;else if((x&0x1F)==0x06)y=@00f3;else y=@000a;
  $  005.类型                         $    $       $    $  ANS000.BYTE005  $  if((x&0xE0)==0x00)y=@00f1;else if((x&0xE0)==0x20)y=@00d0;else if((x&0xE0)==0x40)y=@00d1;else if((x&0xE0)==0x60)y=@00d2;else y=@000a;
  $  006.扬声器类型配置               $    $       $    $  ANS000.BYTE006  $  if((x&0xF0)==0x00)y=@00ee;else if((x&0xF0)==0x10)y=@00ef;else if((x&0xF0)==0x20)y=@00f0;else y=@000a;
  $  007.电动尾门                     $    $       $    $  ANS000.BYTE007  $  if(((x>>5)&1))y=@00c2;else y=@00c3;
  $  008.全液晶仪表                   $    $       $    $  ANS000.BYTE007  $  if(((x>>4)&1))y=@00c2;else y=@00c3;
  $  009.ACC 自适应巡航               $    $       $    $  ANS000.BYTE007  $  if(((x>>3)&1))y=@00c2;else y=@00c3;
  $  010.PM2.5                        $    $       $    $  ANS000.BYTE007  $  if(((x>>2)&1))y=@00c2;else y=@00c3;
  $  011.雷达                         $    $       $    $  ANS000.BYTE007  $  if((x&0x03)==0x00)y=@00f8;else if((x&0x03)==0x01)y=@00f9;else if((x&0x03)==0x02)y=@00fa;else y=@000a;
  $  012.换挡提示软开关               $    $       $    $  ANS000.BYTE008  $  if(((x>>7)&1))y=@00c2;else y=@00c3;
  $  013.氛围灯设置软开关             $    $       $    $  ANS000.BYTE008  $  if(((x>>6)&1))y=@00c2;else y=@00c3;
  $  014.语音控制天窗                 $    $       $    $  ANS000.BYTE008  $  if(((x>>5)&1))y=@00c2;else y=@00c3;
  $  015.语音座椅控制加热功能         $    $       $    $  ANS000.BYTE008  $  if(((x>>4)&1))y=@00c2;else y=@00c3;
  $  016.胎压                         $    $       $    $  ANS000.BYTE008  $  if((x&0x0C)==0x00)y=@00f6;else if((x&0x0C)==0x04)y=@00f7;else y=@000a;
  $  017.盲点监测软开关               $    $       $    $  ANS000.BYTE008  $  if(((x>>1)&1))y=@00c2;else y=@00c3;
  $  018.FCW 前向碰撞预警软开关       $    $       $    $  ANS000.BYTE008  $  if(((x>>0)&1))y=@00c2;else y=@00c3;
  $  019.下雨自动关窗软开关           $    $       $    $  ANS000.BYTE009  $  if(((x>>7)&1))y=@00c2;else y=@00c3;
  $  020.后备厢脚踢软开关             $    $       $    $  ANS000.BYTE009  $  if(((x>>6)&1))y=@00c2;else y=@00c3;
  $  021.陡坡缓降软开关               $    $       $    $  ANS000.BYTE009  $  if(((x>>5)&1))y=@00c2;else y=@00c3;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:761 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
