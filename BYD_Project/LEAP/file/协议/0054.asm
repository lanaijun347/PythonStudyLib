
    车型ID：0054

    模拟：协议模拟-->0054

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7F9

进入命令:

  $~  REQ000:7F1 02 10 01 00 00 00 00 00       $~  ANS000:7F9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7F1 02 3E 80 00 00 00 00 00       $!  ANS000:7F9 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7F1 03 19 02 09 00 00 00 00       $#  ANS000:7F9 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/3d000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7F1 04 14 FF FF FF 00 00 00       $$  ANS000:7F9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7F1 03 22 F1 90 00 00 00 00       $%  ANS000:7F9 03 22 F1 90 00 00 00 00
  $%  REQ001:7F1 03 22 F1 87 00 00 00 00       $%  ANS001:7F9 03 22 F1 87 00 00 00 00
  $%  REQ002:7F1 03 22 F1 8A 00 00 00 00       $%  ANS002:7F9 03 22 F1 8A 00 00 00 00
  $%  REQ003:7F1 03 22 F1 8B 00 00 00 00       $%  ANS003:7F9 03 22 F1 8B 00 00 00 00
  $%  REQ004:7F1 03 22 F1 50 00 00 00 00       $%  ANS004:7F9 03 22 F1 50 00 00 00 00
  $%  REQ005:7F1 03 22 F1 89 00 00 00 00       $%  ANS005:7F9 03 22 F1 89 00 00 00 00
  $%  REQ006:7F1 03 22 F1 88 00 00 00 00       $%  ANS006:7F9 03 22 F1 88 00 00 00 00
  $%  REQ007:7F1 03 22 F1 97 00 00 00 00       $%  ANS007:7F9 03 22 F1 97 00 00 00 00
  $%  REQ008:7F1 03 22 F1 80 00 00 00 00       $%  ANS008:7F9 03 22 F1 80 00 00 00 00
  $%  REQ009:7F1 03 22 F1 99 00 00 00 00       $%  ANS009:7F9 03 22 F1 99 00 00 00 00
  $%  REQ010:7F1 03 22 FF 00 00 00 00 00       $%  ANS010:7F9 03 22 FF 00 00 00 00 00
  $%  REQ011:7F1 03 22 F1 84 00 00 00 00       $%  ANS011:7F9 03 22 F1 84 00 00 00 00
  $%  REQ012:7F1 03 22 F1 EF 00 00 00 00       $%  ANS012:7F9 03 22 F1 EF 00 00 00 00

  $%  000:VIN码:                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:物料号:                   $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  002:供应商代码:               $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:ECU生产日期:              $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  004:车厂ECU硬件版本号:        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  005:车厂ECU软件版本号:        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  006:车厂ECU软件号:            $%    $%  ANS006.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  007:产品型号:                 $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:Boot软件标识:             $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:升级程序日期:             $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  010:UDS版本号:                $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%X.%X.%X.%X],x1,x2,x3,x4);
  $%  011:应用软件指纹:             $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  012:BOOT软件分区标识:         $%    $%  ANS012.BYTE004  $%  if(x==0) y=@000b; else if(x==1) y=@000c; else  y=@0008;

;******************************************************************************************************************************************************

读数据流: 

  $)  00.事件数据记录1
  $  00.事件数据记录1
  $  REQ000:7F1 03 22 FA 13 00 00 00 00       $  ANS000:7F9 03 22 FA 13 00 00 00 00

  $  000.纵向delta-V 1                                        $    $  km/h     $    $  ANS000.BYTE004  $  y = SPRINTF([%d], x1-127);
  $  001.纵向delta-V 2                                        $    $  km/h     $    $  ANS000.BYTE005  $  y = SPRINTF([%d], x1-127);
  $  002.纵向delta-V 3                                        $    $  km/h     $    $  ANS000.BYTE006  $  y = SPRINTF([%d], x1-127);
  $  003.纵向delta-V 4                                        $    $  km/h     $    $  ANS000.BYTE007  $  y = SPRINTF([%d], x1-127);
  $  004.纵向delta-V 5                                        $    $  km/h     $    $  ANS000.BYTE008  $  y = SPRINTF([%d], x1-127);
  $  005.纵向delta-V 6                                        $    $  km/h     $    $  ANS000.BYTE009  $  y = SPRINTF([%d], x1-127);
  $  006.纵向delta-V 7                                        $    $  km/h     $    $  ANS000.BYTE010  $  y = SPRINTF([%d], x1-127);
  $  007.纵向delta-V 8                                        $    $  km/h     $    $  ANS000.BYTE011  $  y = SPRINTF([%d], x1-127);
  $  008.纵向delta-V 9                                        $    $  km/h     $    $  ANS000.BYTE012  $  y = SPRINTF([%d], x1-127);
  $  009.纵向delta-V 10                                       $    $  km/h     $    $  ANS000.BYTE013  $  y = SPRINTF([%d], x1-127);
  $  010.纵向delta-V 11                                       $    $  km/h     $    $  ANS000.BYTE014  $  y = SPRINTF([%d], x1-127);
  $  011.纵向delta-V 12                                       $    $  km/h     $    $  ANS000.BYTE015  $  y = SPRINTF([%d], x1-127);
  $  012.纵向delta-V 13                                       $    $  km/h     $    $  ANS000.BYTE016  $  y = SPRINTF([%d], x1-127);
  $  013.纵向delta-V 14                                       $    $  km/h     $    $  ANS000.BYTE017  $  y = SPRINTF([%d], x1-127);
  $  014.纵向delta-V 15                                       $    $  km/h     $    $  ANS000.BYTE018  $  y = SPRINTF([%d], x1-127);
  $  015.纵向delta-V 16                                       $    $  km/h     $    $  ANS000.BYTE019  $  y = SPRINTF([%d], x1-127);
  $  016.纵向delta-V 17                                       $    $  km/h     $    $  ANS000.BYTE020  $  y = SPRINTF([%d], x1-127);
  $  017.纵向delta-V 18                                       $    $  km/h     $    $  ANS000.BYTE021  $  y = SPRINTF([%d], x1-127);
  $  018.纵向delta-V 19                                       $    $  km/h     $    $  ANS000.BYTE022  $  y = SPRINTF([%d], x1-127);
  $  019.纵向delta-V 20                                       $    $  km/h     $    $  ANS000.BYTE023  $  y = SPRINTF([%d], x1-127);
  $  020.纵向delta-V 21                                       $    $  km/h     $    $  ANS000.BYTE024  $  y = SPRINTF([%d], x1-127);
  $  021.纵向delta-V 22                                       $    $  km/h     $    $  ANS000.BYTE025  $  y = SPRINTF([%d], x1-127);
  $  022.纵向delta-V 23                                       $    $  km/h     $    $  ANS000.BYTE026  $  y = SPRINTF([%d], x1-127);
  $  023.纵向delta-V 24                                       $    $  km/h     $    $  ANS000.BYTE027  $  y = SPRINTF([%d], x1-127);
  $  024.纵向delta-V 25                                       $    $  km/h     $    $  ANS000.BYTE028  $  y = SPRINTF([%d], x1-127);
  $  025.纵向delta-V 26                                       $    $  km/h     $    $  ANS000.BYTE029  $  y = SPRINTF([%d], x1-127);
  $  026.最大记录纵向delta-V                                  $    $  km/h     $    $  ANS000.BYTE030  $  y = SPRINTF([%d], x1-127);
  $  027.达到最大记录纵向delta-V时间                          $    $  ms       $    $  ANS000.BYTE031  $  y = SPRINTF([%.1f], x1*2.5);
  $  028.车辆速度1                                            $    $  km/h     $    $  ANS000.BYTE034  $  y = SPRINTF([%d], x1);
  $  029.车辆速度2                                            $    $  km/h     $    $  ANS000.BYTE035  $  y = SPRINTF([%d], x1);
  $  030.车辆速度3                                            $    $  km/h     $    $  ANS000.BYTE036  $  y = SPRINTF([%d], x1);
  $  031.车辆速度4                                            $    $  km/h     $    $  ANS000.BYTE037  $  y = SPRINTF([%d], x1);
  $  032.车辆速度5                                            $    $  km/h     $    $  ANS000.BYTE038  $  y = SPRINTF([%d], x1);
  $  033.车辆速度6                                            $    $  km/h     $    $  ANS000.BYTE039  $  y = SPRINTF([%d], x1);
  $  034.车辆速度7                                            $    $  km/h     $    $  ANS000.BYTE040  $  y = SPRINTF([%d], x1);
  $  035.车辆速度8                                            $    $  km/h     $    $  ANS000.BYTE041  $  y = SPRINTF([%d], x1);
  $  036.车辆速度9                                            $    $  km/h     $    $  ANS000.BYTE042  $  y = SPRINTF([%d], x1);
  $  037.车辆速度10                                           $    $  km/h     $    $  ANS000.BYTE043  $  y = SPRINTF([%d], x1);
  $  038.车辆速度11                                           $    $  km/h     $    $  ANS000.BYTE044  $  y = SPRINTF([%d], x1);
  $  039.行车制动，开启或关闭1                                $    $           $    $  ANS000.BYTE045  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  040.行车制动，开启或关闭2                                $    $           $    $  ANS000.BYTE046  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  041.行车制动，开启或关闭3                                $    $           $    $  ANS000.BYTE047  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  042.行车制动，开启或关闭4                                $    $           $    $  ANS000.BYTE048  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  043.行车制动，开启或关闭5                                $    $           $    $  ANS000.BYTE049  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  044.行车制动，开启或关闭6                                $    $           $    $  ANS000.BYTE050  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  045.行车制动，开启或关闭7                                $    $           $    $  ANS000.BYTE051  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  046.行车制动，开启或关闭8                                $    $           $    $  ANS000.BYTE052  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  047.行车制动，开启或关闭9                                $    $           $    $  ANS000.BYTE053  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  048.行车制动，开启或关闭10                               $    $           $    $  ANS000.BYTE054  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  049.行车制动，开启或关闭11                               $    $           $    $  ANS000.BYTE055  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  050.车辆识别代号                                         $    $           $    $  ANS000.BYTE085  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $  051.记录EDR(汽车事件数据记录系统)数据的ECU硬件编号       $    $           $    $  ANS000.BYTE102  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x35,x37,x38,x39,x40,x41,x42,x43,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64);
  $  052.记录EDR(汽车事件数据记录系统)数据的ECU序列号         $    $           $    $  ANS000.BYTE166  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x35,x37,x38,x39,x40,x41,x42,x43,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64);
  $  053.记录EDR(汽车事件数据记录系统)数据的ECU软件编号       $    $           $    $  ANS000.BYTE230  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x35,x37,x38,x39,x40,x41,x42,x43,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64);
  $  054.年                                                   $    $  年       $    $  ANS000.BYTE110  $  y = SPRINTF([%d], x1+2000);
  $  055.月                                                   $    $  月       $    $  ANS000.BYTE111  $  y = SPRINTF([%d], x1);
  $  056.日                                                   $    $  日       $    $  ANS000.BYTE112  $  y = SPRINTF([%d], x1);
  $  057.时                                                   $    $  时       $    $  ANS000.BYTE113  $  y = SPRINTF([%d], x1);
  $  058.分                                                   $    $  分       $    $  ANS000.BYTE114  $  y = SPRINTF([%d], x1);
  $  059.秒                                                   $    $  秒       $    $  ANS000.BYTE115  $  y = SPRINTF([%d], x1);

  $)  01.事件数据记录2
  $  01.事件数据记录2
  $  REQ000:7F1 03 22 FA 14 00 00 00 00       $  ANS000:7F9 03 22 FA 14 00 00 00 00

  $  000.纵向delta-V 1                                        $    $  km/h     $    $  ANS000.BYTE004  $  y = SPRINTF([%d], x1-127);
  $  001.纵向delta-V 2                                        $    $  km/h     $    $  ANS000.BYTE005  $  y = SPRINTF([%d], x1-127);
  $  002.纵向delta-V 3                                        $    $  km/h     $    $  ANS000.BYTE006  $  y = SPRINTF([%d], x1-127);
  $  003.纵向delta-V 4                                        $    $  km/h     $    $  ANS000.BYTE007  $  y = SPRINTF([%d], x1-127);
  $  004.纵向delta-V 5                                        $    $  km/h     $    $  ANS000.BYTE008  $  y = SPRINTF([%d], x1-127);
  $  005.纵向delta-V 6                                        $    $  km/h     $    $  ANS000.BYTE009  $  y = SPRINTF([%d], x1-127);
  $  006.纵向delta-V 7                                        $    $  km/h     $    $  ANS000.BYTE010  $  y = SPRINTF([%d], x1-127);
  $  007.纵向delta-V 8                                        $    $  km/h     $    $  ANS000.BYTE011  $  y = SPRINTF([%d], x1-127);
  $  008.纵向delta-V 9                                        $    $  km/h     $    $  ANS000.BYTE012  $  y = SPRINTF([%d], x1-127);
  $  009.纵向delta-V 10                                       $    $  km/h     $    $  ANS000.BYTE013  $  y = SPRINTF([%d], x1-127);
  $  010.纵向delta-V 11                                       $    $  km/h     $    $  ANS000.BYTE014  $  y = SPRINTF([%d], x1-127);
  $  011.纵向delta-V 12                                       $    $  km/h     $    $  ANS000.BYTE015  $  y = SPRINTF([%d], x1-127);
  $  012.纵向delta-V 13                                       $    $  km/h     $    $  ANS000.BYTE016  $  y = SPRINTF([%d], x1-127);
  $  013.纵向delta-V 14                                       $    $  km/h     $    $  ANS000.BYTE017  $  y = SPRINTF([%d], x1-127);
  $  014.纵向delta-V 15                                       $    $  km/h     $    $  ANS000.BYTE018  $  y = SPRINTF([%d], x1-127);
  $  015.纵向delta-V 16                                       $    $  km/h     $    $  ANS000.BYTE019  $  y = SPRINTF([%d], x1-127);
  $  016.纵向delta-V 17                                       $    $  km/h     $    $  ANS000.BYTE020  $  y = SPRINTF([%d], x1-127);
  $  017.纵向delta-V 18                                       $    $  km/h     $    $  ANS000.BYTE021  $  y = SPRINTF([%d], x1-127);
  $  018.纵向delta-V 19                                       $    $  km/h     $    $  ANS000.BYTE022  $  y = SPRINTF([%d], x1-127);
  $  019.纵向delta-V 20                                       $    $  km/h     $    $  ANS000.BYTE023  $  y = SPRINTF([%d], x1-127);
  $  020.纵向delta-V 21                                       $    $  km/h     $    $  ANS000.BYTE024  $  y = SPRINTF([%d], x1-127);
  $  021.纵向delta-V 22                                       $    $  km/h     $    $  ANS000.BYTE025  $  y = SPRINTF([%d], x1-127);
  $  022.纵向delta-V 23                                       $    $  km/h     $    $  ANS000.BYTE026  $  y = SPRINTF([%d], x1-127);
  $  023.纵向delta-V 24                                       $    $  km/h     $    $  ANS000.BYTE027  $  y = SPRINTF([%d], x1-127);
  $  024.纵向delta-V 25                                       $    $  km/h     $    $  ANS000.BYTE028  $  y = SPRINTF([%d], x1-127);
  $  025.纵向delta-V 26                                       $    $  km/h     $    $  ANS000.BYTE029  $  y = SPRINTF([%d], x1-127);
  $  026.最大记录纵向delta-V                                  $    $  km/h     $    $  ANS000.BYTE030  $  y = SPRINTF([%d], x1-127);
  $  027.达到最大记录纵向delta-V时间                          $    $  ms       $    $  ANS000.BYTE031  $  y = SPRINTF([%.1f], x1*2.5);
  $  028.车辆速度1                                            $    $  km/h     $    $  ANS000.BYTE034  $  y = SPRINTF([%d], x1);
  $  029.车辆速度2                                            $    $  km/h     $    $  ANS000.BYTE035  $  y = SPRINTF([%d], x1);
  $  030.车辆速度3                                            $    $  km/h     $    $  ANS000.BYTE036  $  y = SPRINTF([%d], x1);
  $  031.车辆速度4                                            $    $  km/h     $    $  ANS000.BYTE037  $  y = SPRINTF([%d], x1);
  $  032.车辆速度5                                            $    $  km/h     $    $  ANS000.BYTE038  $  y = SPRINTF([%d], x1);
  $  033.车辆速度6                                            $    $  km/h     $    $  ANS000.BYTE039  $  y = SPRINTF([%d], x1);
  $  034.车辆速度7                                            $    $  km/h     $    $  ANS000.BYTE040  $  y = SPRINTF([%d], x1);
  $  035.车辆速度8                                            $    $  km/h     $    $  ANS000.BYTE041  $  y = SPRINTF([%d], x1);
  $  036.车辆速度9                                            $    $  km/h     $    $  ANS000.BYTE042  $  y = SPRINTF([%d], x1);
  $  037.车辆速度10                                           $    $  km/h     $    $  ANS000.BYTE043  $  y = SPRINTF([%d], x1);
  $  038.车辆速度11                                           $    $  km/h     $    $  ANS000.BYTE044  $  y = SPRINTF([%d], x1);
  $  039.行车制动，开启或关闭1                                $    $           $    $  ANS000.BYTE045  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  040.行车制动，开启或关闭2                                $    $           $    $  ANS000.BYTE046  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  041.行车制动，开启或关闭3                                $    $           $    $  ANS000.BYTE047  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  042.行车制动，开启或关闭4                                $    $           $    $  ANS000.BYTE048  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  043.行车制动，开启或关闭5                                $    $           $    $  ANS000.BYTE049  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  044.行车制动，开启或关闭6                                $    $           $    $  ANS000.BYTE050  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  045.行车制动，开启或关闭7                                $    $           $    $  ANS000.BYTE051  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  046.行车制动，开启或关闭8                                $    $           $    $  ANS000.BYTE052  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  047.行车制动，开启或关闭9                                $    $           $    $  ANS000.BYTE053  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  048.行车制动，开启或关闭10                               $    $           $    $  ANS000.BYTE054  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  049.行车制动，开启或关闭11                               $    $           $    $  ANS000.BYTE055  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  050.车辆识别代号                                         $    $           $    $  ANS000.BYTE085  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $  051.记录EDR(汽车事件数据记录系统)数据的ECU硬件编号       $    $           $    $  ANS000.BYTE102  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x35,x37,x38,x39,x40,x41,x42,x43,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64);
  $  052.记录EDR(汽车事件数据记录系统)数据的ECU序列号         $    $           $    $  ANS000.BYTE166  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x35,x37,x38,x39,x40,x41,x42,x43,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64);
  $  053.记录EDR(汽车事件数据记录系统)数据的ECU软件编号       $    $           $    $  ANS000.BYTE230  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x35,x37,x38,x39,x40,x41,x42,x43,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64);
  $  054.年                                                   $    $  年       $    $  ANS000.BYTE110  $  y = SPRINTF([%d], x1+2000);
  $  055.月                                                   $    $  月       $    $  ANS000.BYTE111  $  y = SPRINTF([%d], x1);
  $  056.日                                                   $    $  日       $    $  ANS000.BYTE112  $  y = SPRINTF([%d], x1);
  $  057.时                                                   $    $  时       $    $  ANS000.BYTE113  $  y = SPRINTF([%d], x1);
  $  058.分                                                   $    $  分       $    $  ANS000.BYTE114  $  y = SPRINTF([%d], x1);
  $  059.秒                                                   $    $  秒       $    $  ANS000.BYTE115  $  y = SPRINTF([%d], x1);

  $)  02.事件数据记录3
  $  02.事件数据记录3
  $  REQ000:7F1 03 22 FA 15 00 00 00 00       $  ANS000:7F9 03 22 FA 15 00 00 00 00

  $  000.纵向delta-V 1                                        $    $  km/h     $    $  ANS000.BYTE004  $  y = SPRINTF([%d], x1-127);
  $  001.纵向delta-V 2                                        $    $  km/h     $    $  ANS000.BYTE005  $  y = SPRINTF([%d], x1-127);
  $  002.纵向delta-V 3                                        $    $  km/h     $    $  ANS000.BYTE006  $  y = SPRINTF([%d], x1-127);
  $  003.纵向delta-V 4                                        $    $  km/h     $    $  ANS000.BYTE007  $  y = SPRINTF([%d], x1-127);
  $  004.纵向delta-V 5                                        $    $  km/h     $    $  ANS000.BYTE008  $  y = SPRINTF([%d], x1-127);
  $  005.纵向delta-V 6                                        $    $  km/h     $    $  ANS000.BYTE009  $  y = SPRINTF([%d], x1-127);
  $  006.纵向delta-V 7                                        $    $  km/h     $    $  ANS000.BYTE010  $  y = SPRINTF([%d], x1-127);
  $  007.纵向delta-V 8                                        $    $  km/h     $    $  ANS000.BYTE011  $  y = SPRINTF([%d], x1-127);
  $  008.纵向delta-V 9                                        $    $  km/h     $    $  ANS000.BYTE012  $  y = SPRINTF([%d], x1-127);
  $  009.纵向delta-V 10                                       $    $  km/h     $    $  ANS000.BYTE013  $  y = SPRINTF([%d], x1-127);
  $  010.纵向delta-V 11                                       $    $  km/h     $    $  ANS000.BYTE014  $  y = SPRINTF([%d], x1-127);
  $  011.纵向delta-V 12                                       $    $  km/h     $    $  ANS000.BYTE015  $  y = SPRINTF([%d], x1-127);
  $  012.纵向delta-V 13                                       $    $  km/h     $    $  ANS000.BYTE016  $  y = SPRINTF([%d], x1-127);
  $  013.纵向delta-V 14                                       $    $  km/h     $    $  ANS000.BYTE017  $  y = SPRINTF([%d], x1-127);
  $  014.纵向delta-V 15                                       $    $  km/h     $    $  ANS000.BYTE018  $  y = SPRINTF([%d], x1-127);
  $  015.纵向delta-V 16                                       $    $  km/h     $    $  ANS000.BYTE019  $  y = SPRINTF([%d], x1-127);
  $  016.纵向delta-V 17                                       $    $  km/h     $    $  ANS000.BYTE020  $  y = SPRINTF([%d], x1-127);
  $  017.纵向delta-V 18                                       $    $  km/h     $    $  ANS000.BYTE021  $  y = SPRINTF([%d], x1-127);
  $  018.纵向delta-V 19                                       $    $  km/h     $    $  ANS000.BYTE022  $  y = SPRINTF([%d], x1-127);
  $  019.纵向delta-V 20                                       $    $  km/h     $    $  ANS000.BYTE023  $  y = SPRINTF([%d], x1-127);
  $  020.纵向delta-V 21                                       $    $  km/h     $    $  ANS000.BYTE024  $  y = SPRINTF([%d], x1-127);
  $  021.纵向delta-V 22                                       $    $  km/h     $    $  ANS000.BYTE025  $  y = SPRINTF([%d], x1-127);
  $  022.纵向delta-V 23                                       $    $  km/h     $    $  ANS000.BYTE026  $  y = SPRINTF([%d], x1-127);
  $  023.纵向delta-V 24                                       $    $  km/h     $    $  ANS000.BYTE027  $  y = SPRINTF([%d], x1-127);
  $  024.纵向delta-V 25                                       $    $  km/h     $    $  ANS000.BYTE028  $  y = SPRINTF([%d], x1-127);
  $  025.纵向delta-V 26                                       $    $  km/h     $    $  ANS000.BYTE029  $  y = SPRINTF([%d], x1-127);
  $  026.最大记录纵向delta-V                                  $    $  km/h     $    $  ANS000.BYTE030  $  y = SPRINTF([%d], x1-127);
  $  027.达到最大记录纵向delta-V时间                          $    $  ms       $    $  ANS000.BYTE031  $  y = SPRINTF([%.1f], x1*2.5);
  $  028.车辆速度1                                            $    $  km/h     $    $  ANS000.BYTE034  $  y = SPRINTF([%d], x1);
  $  029.车辆速度2                                            $    $  km/h     $    $  ANS000.BYTE035  $  y = SPRINTF([%d], x1);
  $  030.车辆速度3                                            $    $  km/h     $    $  ANS000.BYTE036  $  y = SPRINTF([%d], x1);
  $  031.车辆速度4                                            $    $  km/h     $    $  ANS000.BYTE037  $  y = SPRINTF([%d], x1);
  $  032.车辆速度5                                            $    $  km/h     $    $  ANS000.BYTE038  $  y = SPRINTF([%d], x1);
  $  033.车辆速度6                                            $    $  km/h     $    $  ANS000.BYTE039  $  y = SPRINTF([%d], x1);
  $  034.车辆速度7                                            $    $  km/h     $    $  ANS000.BYTE040  $  y = SPRINTF([%d], x1);
  $  035.车辆速度8                                            $    $  km/h     $    $  ANS000.BYTE041  $  y = SPRINTF([%d], x1);
  $  036.车辆速度9                                            $    $  km/h     $    $  ANS000.BYTE042  $  y = SPRINTF([%d], x1);
  $  037.车辆速度10                                           $    $  km/h     $    $  ANS000.BYTE043  $  y = SPRINTF([%d], x1);
  $  038.车辆速度11                                           $    $  km/h     $    $  ANS000.BYTE044  $  y = SPRINTF([%d], x1);
  $  039.行车制动，开启或关闭1                                $    $           $    $  ANS000.BYTE045  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  040.行车制动，开启或关闭2                                $    $           $    $  ANS000.BYTE046  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  041.行车制动，开启或关闭3                                $    $           $    $  ANS000.BYTE047  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  042.行车制动，开启或关闭4                                $    $           $    $  ANS000.BYTE048  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  043.行车制动，开启或关闭5                                $    $           $    $  ANS000.BYTE049  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  044.行车制动，开启或关闭6                                $    $           $    $  ANS000.BYTE050  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  045.行车制动，开启或关闭7                                $    $           $    $  ANS000.BYTE051  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  046.行车制动，开启或关闭8                                $    $           $    $  ANS000.BYTE052  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  047.行车制动，开启或关闭9                                $    $           $    $  ANS000.BYTE053  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  048.行车制动，开启或关闭10                               $    $           $    $  ANS000.BYTE054  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  049.行车制动，开启或关闭11                               $    $           $    $  ANS000.BYTE055  $  if(x1==0) y=@0009;else if(x1==1) y=@000a;else y=@0005;
  $  050.车辆识别代号                                         $    $           $    $  ANS000.BYTE085  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $  051.记录EDR(汽车事件数据记录系统)数据的ECU硬件编号       $    $           $    $  ANS000.BYTE102  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x35,x37,x38,x39,x40,x41,x42,x43,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64);
  $  052.记录EDR(汽车事件数据记录系统)数据的ECU序列号         $    $           $    $  ANS000.BYTE166  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x35,x37,x38,x39,x40,x41,x42,x43,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64);
  $  053.记录EDR(汽车事件数据记录系统)数据的ECU软件编号       $    $           $    $  ANS000.BYTE230  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x35,x37,x38,x39,x40,x41,x42,x43,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64);
  $  054.年                                                   $    $  年       $    $  ANS000.BYTE110  $  y = SPRINTF([%d], x1+2000);
  $  055.月                                                   $    $  月       $    $  ANS000.BYTE111  $  y = SPRINTF([%d], x1);
  $  056.日                                                   $    $  日       $    $  ANS000.BYTE112  $  y = SPRINTF([%d], x1);
  $  057.时                                                   $    $  时       $    $  ANS000.BYTE113  $  y = SPRINTF([%d], x1);
  $  058.分                                                   $    $  分       $    $  ANS000.BYTE114  $  y = SPRINTF([%d], x1);
  $  059.秒                                                   $    $  秒       $    $  ANS000.BYTE115  $  y = SPRINTF([%d], x1);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7F1 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
