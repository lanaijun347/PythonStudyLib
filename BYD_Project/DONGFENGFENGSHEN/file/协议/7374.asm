
    车型ID：7374

    模拟：协议模拟-->7374

;******************************************************************************************************************************************************

    通讯线: $~03$~08$~500k$~768

进入命令:

  $~  REQ000:760 02 10 01 00 00 00 00 00       $~  ANS000:768 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:760 02 3E 00 00 00 00 00 00       $!  ANS000:768 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:760 03 19 02 09 00 00 00 00       $#  ANS000:768 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/36000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:760 04 14 FF FF FF 00 00 00       $$  ANS000:768 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:760 03 22 F1 87 00 00 00 00       $%  ANS000:768 03 22 F1 87 00 00 00 00
  $%  REQ001:760 03 22 F1 97 00 00 00 00       $%  ANS001:768 03 22 F1 97 00 00 00 00
  $%  REQ002:760 03 22 F1 8A 00 00 00 00       $%  ANS002:768 03 22 F1 8A 00 00 00 00
  $%  REQ003:760 03 22 F1 89 00 00 00 00       $%  ANS003:768 03 22 F1 89 00 00 00 00
  $%  REQ004:760 03 22 F1 79 00 00 00 00       $%  ANS004:768 03 22 F1 79 00 00 00 00
  $%  REQ005:760 03 22 F1 7F 00 00 00 00       $%  ANS005:768 03 22 F1 7F 00 00 00 00
  $%  REQ006:760 03 22 F1 99 00 00 00 00       $%  ANS006:768 03 22 F1 99 00 00 00 00
  $%  REQ007:760 03 22 F1 A2 00 00 00 00       $%  ANS007:768 03 22 F1 A2 00 00 00 00
  $%  REQ008:760 03 22 F1 A1 00 00 00 00       $%  ANS008:768 03 22 F1 A1 00 00 00 00
  $%  REQ009:760 03 22 F1 8C 00 00 00 00       $%  ANS009:768 03 22 F1 8C 00 00 00 00
  $%  REQ010:760 03 22 F1 90 00 00 00 00       $%  ANS010:768 03 22 F1 90 00 00 00 00
  $%  REQ011:760 03 22 F1 93 00 00 00 00       $%  ANS011:768 03 22 F1 93 00 00 00 00
  $%  REQ012:760 03 22 F1 95 00 00 00 00       $%  ANS012:768 03 22 F1 95 00 00 00 00
  $%  REQ013:760 03 22 F1 8B 00 00 00 00       $%  ANS013:768 03 22 F1 8B 00 00 00 00

  $%  000:零件编号:              $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  001:系统名称:              $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3);
  $%  002:供应商代码:            $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:软件版本(OEM):         $%    $%  ANS003.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  004:硬件版本(OEM):         $%    $%  ANS004.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  005:软件校验码:            $%    $%  ANS005.BYTE004  $%  HEX(x1,x2);
  $%  006:软件发布日期:          $%    $%  ANS006.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  007:保养时的里程:          $%    $%  ANS007.BYTE004  $%  y=(x1<<16)+(x2<<8)+x3;
  $%  008:维修店编码:            $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  009:维修时间:              $%    $%  ANS008.BYTE009  $%  HEX(x1,x2,x3,x4);
  $%  010:维修时的总里程:        $%    $%  ANS008.BYTE013  $%  y=(x1<<16)+(x2<<8)+x3;
  $%  011:生产序列号:            $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  012:VIN码:                 $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  013:硬件版本号(SYS):       $%    $%  ANS011.BYTE004  $%  HEX(x1,x2);
  $%  014:软件版本号(SYS):       $%    $%  ANS012.BYTE004  $%  HEX(x1,x2);
  $%  015:生产日期:              $%    $%  ANS013.BYTE004  $%  HEX(x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.数据流
  $  00.数据流
  $  REQ000:760 03 22 FD 84 00 00 00 00       $  ANS000:768 03 22 FD 84 00 00 00 00
  $  REQ001:760 03 22 FD 85 00 00 00 00       $  ANS001:768 03 22 FD 85 00 00 00 00
  $  REQ002:760 03 22 FD 86 00 00 00 00       $  ANS002:768 03 22 FD 86 00 00 00 00
  $  REQ003:760 03 22 FD 8D 00 00 00 00       $  ANS003:768 03 22 FD 8D 00 00 00 00
  $  REQ004:760 03 22 FD 8E 00 00 00 00       $  ANS004:768 03 22 FD 8E 00 00 00 00
  $  REQ005:760 03 22 F0 12 00 00 00 00       $  ANS005:768 03 22 F0 12 00 00 00 00
  $  REQ006:760 03 22 F0 13 00 00 00 00       $  ANS006:768 03 22 F0 13 00 00 00 00
  $  REQ007:760 03 22 FD 87 00 00 00 00       $  ANS007:768 03 22 FD 87 00 00 00 00
  $  REQ008:760 03 22 08 02 00 00 00 00       $  ANS008:768 03 22 08 02 00 00 00 00
  $  REQ009:760 03 22 08 03 00 00 00 00       $  ANS009:768 03 22 08 03 00 00 00 00

  $  000.车速                               $    $  km/h        $    $  ANS000.BYTE004  $  y=((x1<<8)+x2)*0.01;
  $  001.转速                               $    $  rpm         $    $  ANS001.BYTE004  $  y = ((x1<<8)+x2)*0.125;
  $  002.油量阻值输入                       $    $  ohm         $    $  ANS002.BYTE004  $  if(((x1<<8)+x2)==0x00)y=@0019;else if(((x1<<8)+x2)==0xFFFF)y=@001a;else y=SPRINTF([%d],x1*256+x2);
  $  003.续航里程                           $    $  km          $    $  ANS003.BYTE004  $  y=((x1<<8)+x2)*0.1;
  $  004.用于计算续航里程的平均油耗值       $    $  L/100km     $    $  ANS004.BYTE004  $  y=((x1<<8)+x2)*0.01;
  $  005.电池电压                           $    $  V           $    $  ANS005.BYTE004  $  y=x*0.1;
  $  006.总计里程                           $    $  km          $    $  ANS006.BYTE004  $  y=(x1<<16)+(x2<<8)+x3;
  $  007.制动液开关                         $    $              $    $  ANS007.BYTE004  $  if(((x>>0)&1))y=@0000;else y=@0001;
  $  008.手刹开关                           $    $              $    $  ANS007.BYTE004  $  if(((x>>1)&1))y=@0000;else y=@0001;
  $  009.司机安全带开关                     $    $              $    $  ANS007.BYTE004  $  if(((x>>2)&1))y=@0000;else y=@0001;
  $  010.安全气囊警告                       $    $              $    $  ANS007.BYTE004  $  if(((x>>3)&1))y=@0000;else y=@0001;
  $  011.低油压                             $    $              $    $  ANS007.BYTE004  $  if(((x>>4)&1))y=@0000;else y=@0001;
  $  012.清除总里程的计数                   $    $  counts      $    $  ANS008.BYTE004  $  y=x;
  $  013.亮度调节                           $    $              $    $  ANS009.BYTE004  $  y=x;

  $)  01.配置信息
  $  01.配置信息
  $  REQ000:760 03 22 F0 10 00 00 00 00       $  ANS000:768 03 22 F0 10 00 00 00 00

  $  000.变速箱类型                  $    $        $    $  ANS000.BYTE004  $  if(x==0x00)y=@000b;else if(x==0x01)y=@000c;else if(x==0x02)y=@000d;else if(x==0x03)y=@01d5;else if(x==0x04)y=@0555;else if(x==0x05)y=@0556;else y=@000a;
  $  001.发动机类型                  $    $        $    $  ANS000.BYTE005  $  if(x==0x00)y=@0002;else if(x==0x01)y=@0003;else if(x==0x02)y=@0004;else if(x==0x03)y=@0005;else if(x==0x04)y=@0006;else if(x==0x05)y=@0007;else if(x==0x06)y=@0008;else if(x==0x07)y=@0009;else y=@000a;
  $  002.STT(智能启停)               $    $        $    $  ANS000.BYTE006  $  if(((x>>0)&1))y=@0000;else y=@0001;
  $  003.PEPS(智能进入系统)          $    $        $    $  ANS000.BYTE006  $  if(((x>>1)&1))y=@0000;else y=@0001;
  $  004.DMTR(稳压电源)              $    $        $    $  ANS000.BYTE006  $  if(((x>>2)&1))y=@0000;else y=@0001;
  $  005.网关                        $    $        $    $  ANS000.BYTE006  $  if(((x>>3)&1))y=@0000;else y=@0001;
  $  006.TBOX(车联网主机)            $    $        $    $  ANS000.BYTE006  $  if(((x>>4)&1))y=@0000;else y=@0001;
  $  007.前雾灯                      $    $        $    $  ANS000.BYTE006  $  if(((x>>5)&1))y=@0000;else y=@0001;
  $  008.AFS(自适应前照灯系统)       $    $        $    $  ANS000.BYTE006  $  if(((x>>6)&1))y=@0000;else y=@0001;
  $  009.车门未关提醒                $    $        $    $  ANS000.BYTE007  $  if(((x>>0)&1))y=@0000;else y=@0001;
  $  010.后排安全带未系提醒          $    $        $    $  ANS000.BYTE007  $  if(((x>>1)&1))y=@0000;else y=@0001;
  $  011.副驾驶安全带未系提醒        $    $        $    $  ANS000.BYTE007  $  if(((x>>2)&1))y=@0000;else y=@0001;
  $  012.保养提醒                    $    $        $    $  ANS000.BYTE007  $  if(((x>>3)&1))y=@0000;else y=@0001;
  $  013.超速提醒                    $    $        $    $  ANS000.BYTE007  $  if(((x>>4)&1))y=@0000;else y=@0001;
  $  014.经济模式                    $    $        $    $  ANS000.BYTE007  $  if(((x>>5)&1))y=@0000;else y=@0001;
  $  015.运动模式                    $    $        $    $  ANS000.BYTE007  $  if(((x>>6)&1))y=@0000;else y=@0001;
  $  016.雪花模式                    $    $        $    $  ANS000.BYTE007  $  if(((x>>7)&1))y=@0000;else y=@0001;
  $  017.默认语言                    $    $        $    $  ANS000.BYTE008  $  if((x&0x07)==0x00)y=@0016;else if((x&0x07)==0x01)y=@0017;else if((x&0x07)==0x02)y=@0018;else y=@000a;
  $  018.排放标准                    $    $        $    $  ANS000.BYTE008  $  if((x&0x18)==0x00)y=@0014;else if((x&0x18)==0x08)y=@0015;else y=@000a;
  $  019.TPMS(胎压监测)模式          $    $        $    $  ANS000.BYTE009  $  if((x&0x03)==0x00)y=@0011;else if((x&0x03)==0x01)y=@055e;else if((x&0x03)==0x02)y=@055f;else y=@000a;
  $  020.自动泊车                    $    $        $    $  ANS000.BYTE009  $  if((x&0x0C)==0x00)y=@0011;else if((x&0x0C)==0x04)y=@0023;else if((x&0x0C)==0x08)y=@0024;else y=@000a;
  $  021.刹车系统类型                $    $        $    $  ANS000.BYTE009  $  if((x&0x30)==0x00)y=@0011;else if((x&0x30)==0x10)y=@01d2;else if((x&0x30)==0x20)y=@00e5;else y=@000a;
  $  022.巡航类型                    $    $        $    $  ANS000.BYTE009  $  if((x&0xC0)==0x00)y=@0011;else if((x&0xC0)==0x40)y=@055c;else if((x&0xC0)==0xC0)y=@055d;else y=@000a;
  $  023.AUTOHOLD(自动驻车)          $    $        $    $  ANS000.BYTE010  $  if(((x>>0)&1))y=@0000;else y=@0001;
  $  024.FCW(前向碰撞预警)           $    $        $    $  ANS000.BYTE010  $  if(((x>>1)&1))y=@0000;else y=@0001;
  $  025.刹车类型                    $    $        $    $  ANS000.BYTE010  $  if(((x>>2)&1))y=@055b;else y=@001e;
  $  026.AEB(自动紧急制动辅助)       $    $        $    $  ANS000.BYTE010  $  if(((x>>3)&1))y=@0000;else y=@0001;
  $  027.BSD(盲区监测)               $    $        $    $  ANS000.BYTE010  $  if(((x>>4)&1))y=@0000;else y=@0001;
  $  028.倒车雷达                    $    $        $    $  ANS000.BYTE010  $  if(((x>>5)&1))y=@0000;else y=@0001;
  $  029.EPS(助力转向)               $    $        $    $  ANS000.BYTE010  $  if(((x>>6)&1))y=@0000;else y=@0001;
  $  030.电子换档                    $    $        $    $  ANS000.BYTE010  $  if(((x>>7)&1))y=@0000;else y=@0001;
  $  031.官方油耗                    $    $  L     $    $  ANS000.BYTE014  $  y=(x*256+x2)*0.01;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:760 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
