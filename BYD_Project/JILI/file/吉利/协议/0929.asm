
    车型ID：0929

    模拟：协议模拟-->0929

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~75A,75C

进入命令:

  $~  REQ000:752 02 10 01 00 00 00 00 00       $~  ANS000:75A 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:752 02 3E 00 00 00 00 00 00       $!  ANS000:75A 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:752 03 19 02 09 00 00 00 00       $#  ANS000:75A 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/28000000


  $#  01.读故障码库
  $#  REQ000:752 02 19 0A 00 00 00 00 00       $#  ANS000:75A 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/28000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:752 04 14 FF FF FF 00 00 00       $$  ANS000:75A 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:752 03 22 F1 12 00 00 00 00       $%  ANS000:75A 03 22 F1 12 00 00 00 00
  $%  REQ001:752 03 22 F1 80 00 00 00 00       $%  ANS001:75A 03 22 F1 80 00 00 00 00
  $%  REQ002:752 03 22 F1 87 00 00 00 00       $%  ANS002:75A 03 22 F1 87 00 00 00 00
  $%  REQ003:752 03 22 F1 8A 00 00 00 00       $%  ANS003:75A 03 22 F1 8A 00 00 00 00
  $%  REQ004:752 03 22 F1 8B 00 00 00 00       $%  ANS004:75A 03 22 F1 8B 00 00 00 00
  $%  REQ005:752 03 22 F1 8C 00 00 00 00       $%  ANS005:75A 03 22 F1 8C 00 00 00 00
  $%  REQ006:752 03 22 F1 90 00 00 00 00       $%  ANS006:75A 03 22 F1 90 00 00 00 00
  $%  REQ007:752 03 22 F1 93 00 00 00 00       $%  ANS007:75A 03 22 F1 93 00 00 00 00
  $%  REQ008:752 03 22 F1 95 00 00 00 00       $%  ANS008:75A 03 22 F1 95 00 00 00 00
  $%  REQ009:752 03 22 F1 98 00 00 00 00       $%  ANS009:75A 03 22 F1 98 00 00 00 00
  $%  REQ010:752 03 22 F1 99 00 00 00 00       $%  ANS010:75A 03 22 F1 99 00 00 00 00
  $%  REQ011:752 03 22 F1 9D 00 00 00 00       $%  ANS011:75A 03 22 F1 9D 00 00 00 00
  $%  REQ012:752 03 22 F1 82 00 00 00 00       $%  ANS012:75A 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:引导程序软件识别号:                          $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  002:零件号:                                      $%    $%  ANS002.BYTE004  $%  0 ASCII
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:                     $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:ECU(电子控制器)刷写日期:                     $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  011:ECU(电子控制器)安装日期:                     $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:标定软件版本号:                              $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.读数据流
  $  00.读数据流
  $  REQ000:752 03 22 DF 00 00 00 00 00       $  ANS000:75A 03 22 DF 00 00 00 00 00
  $  REQ001:752 03 22 72 00 00 00 00 00       $  ANS001:75A 03 22 72 00 00 00 00 00
  $  REQ002:752 03 22 72 02 00 00 00 00       $  ANS002:75A 03 22 72 02 00 00 00 00
  $  REQ003:752 03 22 72 03 00 00 00 00       $  ANS003:75A 03 22 72 03 00 00 00 00
  $  REQ004:752 03 22 72 04 00 00 00 00       $  ANS004:75A 03 22 72 04 00 00 00 00
  $  REQ005:752 03 22 72 05 00 00 00 00       $  ANS005:75A 03 22 72 05 00 00 00 00
  $  REQ006:752 03 22 72 06 00 00 00 00       $  ANS006:75A 03 22 72 06 00 00 00 00
  $  REQ007:752 03 22 72 07 00 00 00 00       $  ANS007:75A 03 22 72 07 00 00 00 00
  $  REQ008:752 03 22 72 08 00 00 00 00       $  ANS008:75A 03 22 72 08 00 00 00 00
  $  REQ009:752 03 22 72 09 00 00 00 00       $  ANS009:75A 03 22 72 09 00 00 00 00
  $  REQ010:752 03 22 72 10 00 00 00 00       $  ANS010:75A 03 22 72 10 00 00 00 00
  $  REQ011:752 03 22 72 11 00 00 00 00       $  ANS011:75A 03 22 72 11 00 00 00 00
  $  REQ012:752 03 22 72 12 00 00 00 00       $  ANS012:75A 03 22 72 12 00 00 00 00
  $  REQ013:752 03 22 72 13 00 00 00 00       $  ANS013:75A 03 22 72 13 00 00 00 00
  $  REQ014:752 03 22 72 14 00 00 00 00       $  ANS014:75A 03 22 72 14 00 00 00 00
  $  REQ015:752 03 22 72 15 00 00 00 00       $  ANS015:75A 03 22 72 15 00 00 00 00
  $  REQ016:752 03 22 72 16 00 00 00 00       $  ANS016:75A 03 22 72 16 00 00 00 00
  $  REQ017:752 03 22 72 17 00 00 00 00       $  ANS017:75A 03 22 72 17 00 00 00 00
  $  REQ018:752 03 22 72 18 00 00 00 00       $  ANS018:75A 03 22 72 18 00 00 00 00
  $  REQ019:752 03 22 72 19 00 00 00 00       $  ANS019:75A 03 22 72 19 00 00 00 00
  $  REQ020:752 03 22 72 20 00 00 00 00       $  ANS020:75A 03 22 72 20 00 00 00 00
  $  REQ021:752 03 22 72 21 00 00 00 00       $  ANS021:75A 03 22 72 21 00 00 00 00
  $  REQ022:752 03 22 72 22 00 00 00 00       $  ANS022:75A 03 22 72 22 00 00 00 00
  $  REQ023:752 03 22 72 23 00 00 00 00       $  ANS023:75A 03 22 72 23 00 00 00 00
  $  REQ024:752 03 22 72 24 00 00 00 00       $  ANS024:75A 03 22 72 24 00 00 00 00
  $  REQ025:752 03 22 72 26 00 00 00 00       $  ANS025:75A 03 22 72 26 00 00 00 00
  $  REQ026:752 03 22 72 27 00 00 00 00       $  ANS026:75A 03 22 72 27 00 00 00 00
  $  REQ027:752 03 22 72 28 00 00 00 00       $  ANS027:75A 03 22 72 28 00 00 00 00
  $  REQ028:752 03 22 72 31 00 00 00 00       $  ANS028:75A 03 22 72 31 00 00 00 00
  $  REQ029:752 03 22 72 32 00 00 00 00       $  ANS029:75A 03 22 72 32 00 00 00 00

  $  000.ECU(电子控制器)供电电压                                              $    $  V     $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.DDM(司机门模块)灯光输入状态(左转向输入)                              $    $  /     $    $  ANS001.BYTE004  $  if(((x>>0)&1)) y=@001c; else y=@001d;
  $  002.驾驶门车窗控制系统数字输入(玻璃锁止开关)                             $    $  /     $    $  ANS002.BYTE004  $  if(((x>>0)&1)) y=@0170; else y=@010e;
  $  003.驾驶门锁系统数字输入(中控锁状态开关)                                 $    $  /     $    $  ANS003.BYTE004  $  if(((x>>0)&1)) y=@0170; else y=@010e;
  $  004.驾驶门辅助系统数字输入(记忆设置开关)                                 $    $  /     $    $  ANS004.BYTE004  $  if(((x>>0)&1)) y=@0170; else y=@010e;
  $  005.驾驶门辅助系统数字输入(折叠开关)                                     $    $  /     $    $  ANS004.BYTE004  $  if(((x>>2)&1)) y=@0170; else y=@010e;
  $  006.左前门玻璃升降开关状态(自动上升)                                     $    $  /     $    $  ANS005.BYTE004  $  if(((x>>0)&1)) y=@001c; else y=@001d;
  $  007.左前门玻璃升降开关状态(手动上升)                                     $    $  /     $    $  ANS005.BYTE004  $  if(((x>>1)&1)) y=@001c; else y=@001d;
  $  008.左前门玻璃升降开关状态(自动下降)                                     $    $  /     $    $  ANS005.BYTE004  $  if(((x>>2)&1)) y=@001c; else y=@001d;
  $  009.左前门玻璃升降开关状态(手动下降)                                     $    $  /     $    $  ANS005.BYTE004  $  if(((x>>3)&1)) y=@001c; else y=@001d;
  $  010.右前门玻璃升降开关状态(自动上升)                                     $    $  /     $    $  ANS006.BYTE004  $  if(((x>>0)&1)) y=@001c; else y=@001d;
  $  011.右前门玻璃升降开关状态(手动上升)                                     $    $  /     $    $  ANS006.BYTE004  $  if(((x>>1)&1)) y=@001c; else y=@001d;
  $  012.右前门玻璃升降开关状态(自动下降)                                     $    $  /     $    $  ANS006.BYTE004  $  if(((x>>2)&1)) y=@001c; else y=@001d;
  $  013.右前门玻璃升降开关状态(手动下降)                                     $    $  /     $    $  ANS006.BYTE004  $  if(((x>>3)&1)) y=@001c; else y=@001d;
  $  014.左后门玻璃升降开关状态(自动上升)                                     $    $  /     $    $  ANS007.BYTE004  $  if(((x>>0)&1)) y=@001c; else y=@001d;
  $  015.左后门玻璃升降开关状态(手动上升)                                     $    $  /     $    $  ANS007.BYTE004  $  if(((x>>1)&1)) y=@001c; else y=@001d;
  $  016.左后门玻璃升降开关状态(自动下降)                                     $    $  /     $    $  ANS007.BYTE004  $  if(((x>>2)&1)) y=@001c; else y=@001d;
  $  017.左后门玻璃升降开关状态(手动下降)                                     $    $  /     $    $  ANS007.BYTE004  $  if(((x>>3)&1)) y=@001c; else y=@001d;
  $  018.右后门玻璃升降开关状态(自动上升)                                     $    $  /     $    $  ANS008.BYTE004  $  if(((x>>0)&1)) y=@001c; else y=@001d;
  $  019.右后门玻璃升降开关状态(手动上升)                                     $    $  /     $    $  ANS008.BYTE004  $  if(((x>>1)&1)) y=@001c; else y=@001d;
  $  020.右后门玻璃升降开关状态(自动下降)                                     $    $  /     $    $  ANS008.BYTE004  $  if(((x>>2)&1)) y=@001c; else y=@001d;
  $  021.右后门玻璃升降开关状态(手动下降)                                     $    $  /     $    $  ANS008.BYTE004  $  if(((x>>3)&1)) y=@001c; else y=@001d;
  $  022.外后视镜镜片方向调节开关(后视镜向上调节)                             $    $  /     $    $  ANS009.BYTE004  $  if(((x>>0)&1)) y=@001c; else y=@001d;
  $  023.外后视镜镜片方向调节开关(后视镜向下调节)                             $    $  /     $    $  ANS009.BYTE004  $  if(((x>>1)&1)) y=@001c; else y=@001d;
  $  024.外后视镜镜片方向调节开关(后视镜向左调节)                             $    $  /     $    $  ANS009.BYTE004  $  if(((x>>2)&1)) y=@001c; else y=@001d;
  $  025.外后视镜镜片方向调节开关(后视镜向右调节)                             $    $  /     $    $  ANS009.BYTE004  $  if(((x>>3)&1)) y=@001c; else y=@001d;
  $  026.外后视镜左右选择开关(选择左后视镜)                                   $    $  /     $    $  ANS010.BYTE004  $  if(((x>>0)&1)) y=@001c; else y=@001d;
  $  027.外后视镜左右选择开关(选择右后视镜)                                   $    $  /     $    $  ANS010.BYTE004  $  if(((x>>1)&1)) y=@001c; else y=@001d;
  $  028.中控解闭锁开(中控上锁)                                               $    $  /     $    $  ANS011.BYTE004  $  if(((x>>0)&1)) y=@001c; else y=@001d;
  $  029.中控解闭锁开(中控解锁)                                               $    $  /     $    $  ANS011.BYTE004  $  if(((x>>1)&1)) y=@001c; else y=@001d;
  $  030.记忆位置开关(记忆位置1)                                              $    $  /     $    $  ANS012.BYTE004  $  if(((x>>0)&1)) y=@001c; else y=@001d;
  $  031.记忆位置开关(记忆位置2)                                              $    $  /     $    $  ANS012.BYTE004  $  if(((x>>1)&1)) y=@001c; else y=@001d;
  $  032.玻璃锁止开关/儿童锁开关                                              $    $  /     $    $  ANS013.BYTE004  $  if(((x>>0)&1)) y=@0cc4; else y=@0cc5;
  $  033.左前门玻璃升降开关电压                                               $    $  V     $    $  ANS014.BYTE004  $  y=x*0.1;
  $  034.右前门玻璃升降开关电压                                               $    $  V     $    $  ANS015.BYTE004  $  y=x*0.1;
  $  035.左后门玻璃升降开关电压                                               $    $  V     $    $  ANS016.BYTE004  $  y=x*0.1;
  $  036.右后门玻璃升降开关电压                                               $    $  V     $    $  ANS017.BYTE004  $  y=x*0.1;
  $  037.外后视镜镜片方向调节开关电压                                         $    $  V     $    $  ANS018.BYTE004  $  y=x*0.1;
  $  038.外后视镜左右选择开关电压                                             $    $  V     $    $  ANS019.BYTE004  $  y=x*0.1;
  $  039.外后视镜加热折叠开关电压                                             $    $  V     $    $  ANS020.BYTE004  $  y=x*0.1;
  $  040.中控解闭锁开关电压                                                   $    $  V     $    $  ANS021.BYTE004  $  y=x*0.1;
  $  041.记忆位置开关电压                                                     $    $  V     $    $  ANS022.BYTE004  $  y=x*0.1;
  $  042.外后视镜镜片左右位置反馈电压                                         $    $  V     $    $  ANS023.BYTE004  $  y=x*0.1;
  $  043.外后视镜镜片上下位置反馈电压                                         $    $  V     $    $  ANS024.BYTE004  $  y=x*0.1;
  $  044.遥控钥匙命令                                                         $    $  /     $    $  ANS025.BYTE004  $  if(x==0x00) y=@0cbb; else if(x==0x01) y=@0cb7;else if(x==0x03) y=@0cb9; else if(x==0x04) y=@0cbc; else if(x==0x05) y=@0cbd; else if(x==0x06) y=@0cbe;else if(x==0x07) y=@0cbf;else if(x==0x08) y=@0cc0;else if(x==0x09) y=@0cc1;else y=@0220;
  $  045.PePs上锁解锁命令                                                     $    $  /     $    $  ANS026.BYTE004  $  if(x==0x00) y=@0cbb; else if(x==0x01) y=@0cb7;else if(x==0x03) y=@0cb9; else if(x==0x04) y=@0cbc; else if(x==0x05) y=@0cbd;else y=@0220;
  $  046.PEPS(无钥匙进入一键式启动单元)电源模式(PEPS电源模式有效指示位)       $    $  /     $    $  ANS027.BYTE004  $  y=x;
  $  047.PEPS(无钥匙进入一键式启动单元)电源模式(PEPS 电源模式)                $    $  /     $    $  ANS027.BYTE005  $  y=x;
  $  048.点火信号                                                             $    $  /     $    $  ANS028.BYTE004  $  if(((x>>0)&1)) y=@04d6; else y=@01cf;
  $  049.(左后门)本地玻璃升降开关电压                                         $    $  /     $    $  ANS029.BYTE004  $  y=x*0.1;

  $)  01.闭锁 源历史记录
  $  01.闭锁 源历史记录
  $  REQ000:752 03 22 72 01 00 00 00 00       $  ANS000:75A 03 22 72 01 00 00 00 00

  $  000.记录最近一次开锁闭锁命令                   $    $  /     $    $  ANS000.BYTE004  $  if(x==0x00) y=@0002; else if(x==0x01) y=@0cb7; else if(x==0x02) y=@0cb8; else if(x==0x03) y=@0cb9; else y=@0cba;
  $  001.记录最近一次命令发生的日期时间信息         $    $  /     $    $  ANS000.BYTE005  $  y=SPRINTF([%02x:%02x:%02x:%02x:%02x:%02x],X6,X5,X4,X3,X2,X1);
  $  002.记录倒数第二次开锁闭锁命令                 $    $  /     $    $  ANS000.BYTE011  $  if(x==0x00) y=@0002; else if(x==0x01) y=@0cb7; else if(x==0x02) y=@0cb8; else if(x==0x03) y=@0cb9; else y=@0cba;
  $  003.记录倒数第二次命令发生的日期时间信息       $    $  /     $    $  ANS000.BYTE012  $  y=SPRINTF([%02x:%02x:%02x:%02x:%02x:%02x],X6,X5,X4,X3,X2,X1);
  $  004.记录倒数第三次开锁闭锁命令                 $    $  /     $    $  ANS000.BYTE018  $  if(x==0x00) y=@0002; else if(x==0x01) y=@0cb7; else if(x==0x02) y=@0cb8; else if(x==0x03) y=@0cb9; else y=@0cba;
  $  005.记录倒数第三次命令发生的日期时间信息       $    $  /     $    $  ANS000.BYTE019  $  y=SPRINTF([%02x:%02x:%02x:%02x:%02x:%02x],X6,X5,X4,X3,X2,X1);
  $  006.记录倒数第四次开锁闭锁命令                 $    $  /     $    $  ANS000.BYTE025  $  if(x==0x00) y=@0002; else if(x==0x01) y=@0cb7; else if(x==0x02) y=@0cb8; else if(x==0x03) y=@0cb9; else y=@0cba;
  $  007.记录倒数第四次命令发生的日期时间信息       $    $  /     $    $  ANS000.BYTE026  $  y=SPRINTF([%02x:%02x:%02x:%02x:%02x:%02x],X6,X5,X4,X3,X2,X1);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:752 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:752 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
