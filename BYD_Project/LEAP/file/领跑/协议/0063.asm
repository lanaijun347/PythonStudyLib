
    车型ID：0063

    模拟：协议模拟-->0063

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~72B

进入命令:

  $~  REQ000:723 02 10 01 00 00 00 00 00       $~  ANS000:72B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:723 02 3E 80 00 00 00 00 00       $!  ANS000:72B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:723 03 19 02 09 00 00 00 00       $#  ANS000:72B 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/41000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:723 04 14 FF FF FF 00 00 00       $$  ANS000:72B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:723 03 22 F1 90 00 00 00 00       $%  ANS000:72B 03 22 F1 90 00 00 00 00
  $%  REQ001:723 03 22 F1 87 00 00 00 00       $%  ANS001:72B 03 22 F1 87 00 00 00 00
  $%  REQ002:723 03 22 F1 8A 00 00 00 00       $%  ANS002:72B 03 22 F1 8A 00 00 00 00
  $%  REQ003:723 03 22 F1 8B 00 00 00 00       $%  ANS003:72B 03 22 F1 8B 00 00 00 00
  $%  REQ004:723 03 22 F1 50 00 00 00 00       $%  ANS004:72B 03 22 F1 50 00 00 00 00
  $%  REQ005:723 03 22 F1 89 00 00 00 00       $%  ANS005:72B 03 22 F1 89 00 00 00 00
  $%  REQ006:723 03 22 F1 88 00 00 00 00       $%  ANS006:72B 03 22 F1 88 00 00 00 00
  $%  REQ007:723 03 22 F1 97 00 00 00 00       $%  ANS007:72B 03 22 F1 97 00 00 00 00
  $%  REQ008:723 03 22 F1 80 00 00 00 00       $%  ANS008:72B 03 22 F1 80 00 00 00 00
  $%  REQ009:723 03 22 F1 99 00 00 00 00       $%  ANS009:72B 03 22 F1 99 00 00 00 00
  $%  REQ010:723 03 22 FF 00 00 00 00 00       $%  ANS010:72B 03 22 FF 00 00 00 00 00
  $%  REQ011:723 03 22 F1 84 00 00 00 00       $%  ANS011:72B 03 22 F1 84 00 00 00 00
  $%  REQ012:723 03 22 F1 EF 00 00 00 00       $%  ANS012:72B 03 22 F1 EF 00 00 00 00
  $%  REQ013:723 03 22 F1 36 00 00 00 00       $%  ANS013:72B 03 22 F1 36 00 00 00 00

  $%  000:VIN码:                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:物料号:                   $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  002:系统供应商识别符:         $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:ECU生产日期:              $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  004:车厂ECU硬件版本号:        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  005:车厂ECU软件版本号:        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  006:车厂ECU软件号:            $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  007:产品型号:                 $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:Boot软件标识:             $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:升级程序日期:             $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  010:UDS版本号:                $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%X.%X.%X.%X],x1,x2,x3,x4);
  $%  011:应用软件指纹:             $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  012:BOOT应用分区标识:         $%    $%  ANS012.BYTE004  $%  if(x==0) y=@000b; else if(x==1) y=@000c; else if(x==2) y=@0059;else y=@0008;
  $%  013:芯片型号:                 $%    $%  ANS013.BYTE004  $%  if(x==0) y=@0171; else if(x==1) y=@0172; else y=@0008;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:723 03 22 0D A6 00 00 00 00       $  ANS000:72B 03 22 0D A6 00 00 00 00
  $  REQ001:723 03 22 0D A7 00 00 00 00       $  ANS001:72B 03 22 0D A7 00 00 00 00
  $  REQ002:723 03 22 0D A8 00 00 00 00       $  ANS002:72B 03 22 0D A8 00 00 00 00
  $  REQ003:723 03 22 0D A9 00 00 00 00       $  ANS003:72B 03 22 0D A9 00 00 00 00
  $  REQ004:723 03 22 0D A0 00 00 00 00       $  ANS004:72B 03 22 0D A0 00 00 00 00
  $  REQ005:723 03 22 F1 30 00 00 00 00       $  ANS005:72B 03 22 F1 30 00 00 00 00
  $  REQ006:723 03 22 F1 31 00 00 00 00       $  ANS006:72B 03 22 F1 31 00 00 00 00
  $  REQ007:723 03 22 F1 32 00 00 00 00       $  ANS007:72B 03 22 F1 32 00 00 00 00
  $  REQ008:723 03 22 02 B0 00 00 00 00       $  ANS008:72B 03 22 02 B0 00 00 00 00
  $  REQ009:723 03 22 02 B1 00 00 00 00       $  ANS009:72B 03 22 02 B1 00 00 00 00
  $  REQ010:723 03 22 02 B2 00 00 00 00       $  ANS010:72B 03 22 02 B2 00 00 00 00
  $  REQ011:723 03 22 02 B3 00 00 00 00       $  ANS011:72B 03 22 02 B3 00 00 00 00
  $  REQ012:723 03 22 02 B4 00 00 00 00       $  ANS012:72B 03 22 02 B4 00 00 00 00
  $  REQ013:723 03 22 02 B5 00 00 00 00       $  ANS013:72B 03 22 02 B5 00 00 00 00
  $  REQ014:723 03 22 02 B6 00 00 00 00       $  ANS014:72B 03 22 02 B6 00 00 00 00
  $  REQ015:723 03 22 02 B7 00 00 00 00       $  ANS015:72B 03 22 02 B7 00 00 00 00
  $  REQ016:723 03 22 02 B8 00 00 00 00       $  ANS016:72B 03 22 02 B8 00 00 00 00
  $  REQ017:723 03 22 02 B9 00 00 00 00       $  ANS017:72B 03 22 02 B9 00 00 00 00
  $  REQ018:723 03 22 02 BA 00 00 00 00       $  ANS018:72B 03 22 02 BA 00 00 00 00
  $  REQ019:723 03 22 02 BB 00 00 00 00       $  ANS019:72B 03 22 02 BB 00 00 00 00
  $  REQ020:723 03 22 02 BC 00 00 00 00       $  ANS020:72B 03 22 02 BC 00 00 00 00
  $  REQ021:723 03 22 02 BD 00 00 00 00       $  ANS021:72B 03 22 02 BD 00 00 00 00
  $  REQ022:723 03 22 02 BE 00 00 00 00       $  ANS022:72B 03 22 02 BE 00 00 00 00
  $  REQ023:723 03 22 02 BF 00 00 00 00       $  ANS023:72B 03 22 02 BF 00 00 00 00
  $  REQ024:723 03 22 02 FF 00 00 00 00       $  ANS024:72B 03 22 02 FF 00 00 00 00

  $  000.TPMS(胎压监测系统)传感器ID(左前)       $    $       $    $  ANS000.BYTE004  $  y = SPRINTF([%08X], (x1*256+x2*256+x3*256+x4));
  $  001.TPMS(胎压监测系统)传感器ID(右前)       $    $       $    $  ANS001.BYTE004  $  y = SPRINTF([%08X], (x1*256+x2*256+x3*256+x4));
  $  002.TPMS(胎压监测系统)传感器ID(左后)       $    $       $    $  ANS002.BYTE004  $  y = SPRINTF([%08X], (x1*256+x2*256+x3*256+x4));
  $  003.TPMS(胎压监测系统)传感器ID(右后)       $    $       $    $  ANS003.BYTE004  $  y = SPRINTF([%08X], (x1*256+x2*256+x3*256+x4));
  $  004.车轮位置信息                           $    $       $    $  ANS004.BYTE004  $  if(x1==0) y=@003f;else if(x1==1) y=@0040;else if(x1==2) y=@0041;else if(x1==3) y=@0042;else y=@0005;
  $  005.钥匙数量                               $    $       $    $  ANS005.BYTE004  $  y = SPRINTF([%d], x1);
  $  006.按键1信息                              $    $       $    $  ANS006.BYTE004  $  if(x1==0) y=@003c;else if(x1==1) y=@003d;else if(x1==2) y=@003e;else y=@0005;
  $  007.按键2信息                              $    $       $    $  ANS007.BYTE004  $  if(x1==0) y=@003c;else if(x1==1) y=@003d;else if(x1==2) y=@003e;else y=@0005;
  $  008.前雨刮开关状态                         $    $       $    $  ANS008.BYTE004  $  switxh(x1&0x0F) 0x00: y=@0009; 0x01: y=@0173; 0x02: y=@0174; 0x03: y=@0175; 0x04: y=@0176; default: y=@0005;
  $  009.前雨刮运动状态                         $    $       $    $  ANS008.BYTE004  $  switxh((x1>>4)&0x0F) 0x00: y=@0009; 0x01: y=@0173; 0x02: y=@0174; default: y=@0005;
  $  010.后雨刮开关状态                         $    $       $    $  ANS009.BYTE004  $  switxh(x1&0x0F) 0x00: y=@0009; 0x01: y=@000a; default: y=@0005;
  $  011.后雨刮运动状态                         $    $       $    $  ANS009.BYTE004  $  switxh((x1>>4)&0x0F) 0x00: y=@0009; 0x01: y=@000a; default: y=@0005;
  $  012.前洗涤开关状态                         $    $       $    $  ANS010.BYTE004  $  if(((x1>>0)&1)) y=@000a;else y=@0009;
  $  013.前洗涤状态                             $    $       $    $  ANS010.BYTE004  $  if(((x1>>1)&1)) y=@000a;else y=@0009;
  $  014.后洗涤状态                             $    $       $    $  ANS010.BYTE004  $  if(((x1>>2)&1)) y=@000a;else y=@0009;
  $  015.喇叭开关状态                           $    $       $    $  ANS011.BYTE004  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  016.主驾侧左前车窗开关状态                 $    $       $    $  ANS012.BYTE004  $  switxh(x1&0x0F) 0x00: y=@0009; 0x01: y=@0177; 0x02: y=@0178; 0x03: y=@0179; 0x04: y=@017a; default: y=@0005;
  $  017.主驾侧右前车窗开关状态                 $    $       $    $  ANS012.BYTE004  $  switxh((x1>>4)&0x0F) 0x00: y=@0009; 0x01: y=@0177; 0x02: y=@0178; 0x03: y=@0179; 0x04: y=@017a; default: y=@0005;
  $  018.主驾侧左后车窗开关状态                 $    $       $    $  ANS012.BYTE005  $  switxh(x1&0x0F) 0x00: y=@0009; 0x01: y=@0177; 0x02: y=@0178; 0x03: y=@0179; 0x04: y=@017a; default: y=@0005;
  $  019.主驾侧右后车窗开关状态                 $    $       $    $  ANS012.BYTE005  $  switxh((x1>>4)&0x0F) 0x00: y=@0009; 0x01: y=@0177; 0x02: y=@0178; 0x03: y=@0179; 0x04: y=@017a; default: y=@0005;
  $  020.右前本地车窗开关状态                   $    $       $    $  ANS012.BYTE006  $  switxh(x1&0x0F) 0x00: y=@0009; 0x01: y=@0177; 0x02: y=@0178; 0x03: y=@0179; 0x04: y=@017a; default: y=@0005;
  $  021.左后本地车窗开关状态                   $    $       $    $  ANS012.BYTE006  $  switxh((x1>>4)&0x0F) 0x00: y=@0009; 0x01: y=@0177; 0x02: y=@0178; 0x03: y=@0179; 0x04: y=@017a; default: y=@0005;
  $  022.右后本地车窗开关状态                   $    $       $    $  ANS012.BYTE007  $  switxh(x1&0x0F) 0x00: y=@0009; 0x01: y=@0177; 0x02: y=@0178; 0x03: y=@0179; 0x04: y=@017a; default: y=@0005;
  $  023.天窗开关状态                           $    $       $    $  ANS013.BYTE004  $  if(x1==0) y=@017b;else if(x1==1) y=@017c;else if(x1==2) y=@017d;else y=@0005;
  $  024.遮阳帘开关状态                         $    $       $    $  ANS014.BYTE004  $  if(x1==0) y=@017b;else if(x1==1) y=@017c;else if(x1==2) y=@017d;else y=@0005;
  $  025.左前电开门开关状态                     $    $       $    $  ANS015.BYTE004  $  if(((x1>>0)&1)) y=@000a;else y=@0009;
  $  026.右前电开门开关状态                     $    $       $    $  ANS015.BYTE004  $  if(((x1>>1)&1)) y=@000a;else y=@0009;
  $  027.左后电开门开关状态                     $    $       $    $  ANS015.BYTE004  $  if(((x1>>2)&1)) y=@000a;else y=@0009;
  $  028.右后电开门开关状态                     $    $       $    $  ANS015.BYTE004  $  if(((x1>>3)&1)) y=@000a;else y=@0009;
  $  029.后背门开关状态                         $    $       $    $  ANS016.BYTE004  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  030.左前门状态                             $    $       $    $  ANS017.BYTE004  $  if(((x1>>0)&1)) y=@000a;else y=@0009;
  $  031.右前门状态                             $    $       $    $  ANS017.BYTE004  $  if(((x1>>1)&1)) y=@000a;else y=@0009;
  $  032.左后门状态                             $    $       $    $  ANS017.BYTE004  $  if(((x1>>2)&1)) y=@000a;else y=@0009;
  $  033.右后门状态                             $    $       $    $  ANS017.BYTE004  $  if(((x1>>3)&1)) y=@000a;else y=@0009;
  $  034.小灯状态                               $    $       $    $  ANS018.BYTE004  $  if(((x1>>0)&1)) y=@000a;else y=@0009;
  $  035.近光灯状态                             $    $       $    $  ANS018.BYTE004  $  if(((x1>>1)&1)) y=@000a;else y=@0009;
  $  036.远光灯状态                             $    $       $    $  ANS018.BYTE004  $  if(((x1>>2)&1)) y=@000a;else y=@0009;
  $  037.后雾灯状态                             $    $       $    $  ANS018.BYTE004  $  if(((x1>>3)&1)) y=@000a;else y=@0009;
  $  038.刹车灯状态                             $    $       $    $  ANS018.BYTE004  $  if(((x1>>4)&1)) y=@000a;else y=@0009;
  $  039.倒车灯状态                             $    $       $    $  ANS018.BYTE004  $  if(((x1>>5)&1)) y=@000a;else y=@0009;
  $  040.左转向灯状态                           $    $       $    $  ANS018.BYTE004  $  if(((x1>>6)&1)) y=@000a;else y=@0009;
  $  041.右转向灯状态                           $    $       $    $  ANS018.BYTE004  $  if(((x1>>7)&1)) y=@000a;else y=@0009;
  $  042.危险警报灯状态                         $    $       $    $  ANS018.BYTE005  $  if(((x1>>0)&1)) y=@000a;else y=@0009;
  $  043.日行灯状态                             $    $       $    $  ANS018.BYTE005  $  if(((x1>>1)&1)) y=@000a;else y=@0009;
  $  044.左前阅读灯状态                         $    $       $    $  ANS018.BYTE005  $  if(((x1>>2)&1)) y=@000a;else y=@0009;
  $  045.右前阅读灯状态                         $    $       $    $  ANS018.BYTE005  $  if(((x1>>3)&1)) y=@000a;else y=@0009;
  $  046.背景光灯状态                           $    $       $    $  ANS018.BYTE005  $  if(((x1>>4)&1)) y=@000a;else y=@0009;
  $  047.门开警示灯状态                         $    $       $    $  ANS018.BYTE005  $  if(((x1>>5)&1)) y=@000a;else y=@0009;
  $  048.左侧盲区指示灯状态                     $    $       $    $  ANS018.BYTE005  $  if(((x1>>6)&1)) y=@000a;else y=@0009;
  $  049.右侧盲区指示灯状态                     $    $       $    $  ANS018.BYTE005  $  if(((x1>>7)&1)) y=@000a;else y=@0009;
  $  050.照地灯状态                             $    $       $    $  ANS018.BYTE006  $  if(((x1>>0)&1)) y=@000a;else y=@0009;
  $  051.左侧后视镜折叠输出状态                 $    $       $    $  ANS019.BYTE004  $  switxh(x1&0x03) 0x00: y=@016a; 0x01: y=@016b; 0x02: y=@016c; 0x03: y=@0005;
  $  052.左侧后视镜上下调节运动状态             $    $       $    $  ANS019.BYTE004  $  switxh((x1>>2)&0x03) 0x00: y=@016a; 0x01: y=@016d; 0x02: y=@016e; 0x03: y=@0005;
  $  053.左侧后视镜水平调节运动状态             $    $       $    $  ANS019.BYTE004  $  switxh((x1>>4)&0x03) 0x00: y=@016a; 0x01: y=@016f; 0x02: y=@0170; 0x03: y=@0005;
  $  054.右侧后视镜折叠输出状态                 $    $       $    $  ANS019.BYTE005  $  switxh(x1&0x03) 0x00: y=@016a; 0x01: y=@016b; 0x02: y=@016c; 0x03: y=@0005;
  $  055.右侧后视镜上下调节运动状态             $    $       $    $  ANS019.BYTE005  $  switxh((x1>>2)&0x03) 0x00: y=@016a; 0x01: y=@016d; 0x02: y=@016e; 0x03: y=@0005;
  $  056.右侧后视镜左右调节运动状态             $    $       $    $  ANS019.BYTE005  $  switxh((x1>>4)&0x03) 0x00: y=@016a; 0x01: y=@016f; 0x02: y=@0170; 0x03: y=@0005;
  $  057.后视镜加热状态                         $    $       $    $  ANS019.BYTE006  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  058.慢充插头锁状态                         $    $       $    $  ANS020.BYTE004  $  if(x1==0) y=@003c;else if(x1==1) y=@003d;else y=@0005;
  $  059.主驾锁状态                             $    $       $    $  ANS021.BYTE004  $  if(x1==0) y=@003c;else if(x1==1) y=@003d;else y=@0005;
  $  060.主驾乘员状态                           $    $       $    $  ANS022.BYTE004  $  if(x1==0) y=@0169;else if(x1==1) y=@002b;else y=@0005;
  $  061.左后侧儿童锁状态                       $    $       $    $  ANS023.BYTE004  $  if(((x1>>0)&1)) y=@003d;else y=@003c;
  $  062.右后侧儿童锁状态                       $    $       $    $  ANS023.BYTE004  $  if(((x1>>1)&1)) y=@003d;else y=@003c;
  $  063.总里程备份                             $    $       $    $  ANS024.BYTE004  $  y = SPRINTF([%d], (x1*65536+x2*256+x3));

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:723 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
