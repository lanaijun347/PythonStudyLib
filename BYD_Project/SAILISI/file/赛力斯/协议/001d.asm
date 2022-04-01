
    车型ID：001d

    模拟：协议模拟-->001d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7B7

进入命令:

  $~  REQ000:737 02 10 01 00 00 00 00 00       $~  ANS000:7B7 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:737 02 3E 80 00 00 00 00 00       $!  ANS000:7B7 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:737 03 19 02 09 00 00 00 00       $#  ANS000:7B7 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/1c000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:737 04 14 FF FF FF 00 00 00       $$  ANS000:7B7 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:737 03 22 F1 80 00 00 00 00       $%  ANS000:7B7 03 22 F1 80 00 00 00 00
  $%  REQ001:737 03 22 F1 87 00 00 00 00       $%  ANS001:7B7 03 22 F1 87 00 00 00 00
  $%  REQ002:737 03 22 F1 8A 00 00 00 00       $%  ANS002:7B7 03 22 F1 8A 00 00 00 00
  $%  REQ003:737 03 22 F1 97 00 00 00 00       $%  ANS003:7B7 03 22 F1 97 00 00 00 00
  $%  REQ004:737 03 22 F1 93 00 00 00 00       $%  ANS004:7B7 03 22 F1 93 00 00 00 00
  $%  REQ005:737 03 22 F1 95 00 00 00 00       $%  ANS005:7B7 03 22 F1 95 00 00 00 00
  $%  REQ006:737 03 22 F1 8C 00 00 00 00       $%  ANS006:7B7 03 22 F1 8C 00 00 00 00
  $%  REQ007:737 03 22 F1 90 00 00 00 00       $%  ANS007:7B7 03 22 F1 90 00 00 00 00
  $%  REQ008:737 03 22 F0 10 00 00 00 00       $%  ANS008:7B7 03 22 F0 10 00 00 00 00

  $%  000:引导加载程序版本号:          $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  001:零件号:                      $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  002:系统供应商号:                $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:系统名称:                    $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:系统供应商硬件版本号:        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:系统供应商软件版本号:        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);
  $%  006:ECU序列号:                   $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  007:VIN码:                       $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  008:下线配置编码:                $%    $%  ANS008.BYTE004  $%  HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:737 03 22 10 00 00 00 00 00       $  ANS000:7B7 03 22 10 00 00 00 00 00
  $  REQ001:737 03 22 10 01 00 00 00 00       $  ANS001:7B7 03 22 10 01 00 00 00 00
  $  REQ002:737 03 22 10 02 00 00 00 00       $  ANS002:7B7 03 22 10 02 00 00 00 00
  $  REQ003:737 03 22 10 03 00 00 00 00       $  ANS003:7B7 03 22 10 03 00 00 00 00
  $  REQ004:737 03 22 10 04 00 00 00 00       $  ANS004:7B7 03 22 10 04 00 00 00 00
  $  REQ005:737 03 22 10 05 00 00 00 00       $  ANS005:7B7 03 22 10 05 00 00 00 00
  $  REQ006:737 03 22 10 06 00 00 00 00       $  ANS006:7B7 03 22 10 06 00 00 00 00
  $  REQ007:737 03 22 10 07 00 00 00 00       $  ANS007:7B7 03 22 10 07 00 00 00 00
  $  REQ008:737 03 22 10 08 00 00 00 00       $  ANS008:7B7 03 22 10 08 00 00 00 00
  $  REQ009:737 03 22 10 09 00 00 00 00       $  ANS009:7B7 03 22 10 09 00 00 00 00
  $  REQ010:737 03 22 10 10 00 00 00 00       $  ANS010:7B7 03 22 10 10 00 00 00 00
  $  REQ011:737 03 22 10 11 00 00 00 00       $  ANS011:7B7 03 22 10 11 00 00 00 00
  $  REQ012:737 03 22 10 12 00 00 00 00       $  ANS012:7B7 03 22 10 12 00 00 00 00
  $  REQ013:737 03 22 10 13 00 00 00 00       $  ANS013:7B7 03 22 10 13 00 00 00 00
  $  REQ014:737 03 22 10 14 00 00 00 00       $  ANS014:7B7 03 22 10 14 00 00 00 00
  $  REQ015:737 03 22 10 15 00 00 00 00       $  ANS015:7B7 03 22 10 15 00 00 00 00
  $  REQ016:737 03 22 10 16 00 00 00 00       $  ANS016:7B7 03 22 10 16 00 00 00 00
  $  REQ017:737 03 22 10 17 00 00 00 00       $  ANS017:7B7 03 22 10 17 00 00 00 00
  $  REQ018:737 03 22 10 18 00 00 00 00       $  ANS018:7B7 03 22 10 18 00 00 00 00
  $  REQ019:737 03 22 10 19 00 00 00 00       $  ANS019:7B7 03 22 10 19 00 00 00 00
  $  REQ020:737 03 22 10 20 00 00 00 00       $  ANS020:7B7 03 22 10 20 00 00 00 00
  $  REQ021:737 03 22 10 21 00 00 00 00       $  ANS021:7B7 03 22 10 21 00 00 00 00
  $  REQ022:737 03 22 10 22 00 00 00 00       $  ANS022:7B7 03 22 10 22 00 00 00 00
  $  REQ023:737 03 22 10 23 00 00 00 00       $  ANS023:7B7 03 22 10 23 00 00 00 00
  $  REQ024:737 03 22 10 24 00 00 00 00       $  ANS024:7B7 03 22 10 24 00 00 00 00

  $  000.OBC(车载充电器)工作状态         $    $            $    $  ANS000.BYTE004  $  switxh(x1&0x0F) 0: y=@0081; 1: y=@0082; 2: y=@0083; 3: y=@0084; 4: y=@0085; 5: y=@0086; 6: y=@0087; 7: y=@0088; 8: y=@0089; 9: y=@008a; 10: y=@008b; 11: y=@008c; 12: y=@008d; default: y=@007f;
  $  001.OBC(车载充电器)故障标志位       $    $            $    $  ANS001.BYTE004  $  if(x1==0) y=@006f;else if(x1==1) y=@0070;else if(x1==2) y=@0071;else if(x1==3) y=@0072;else if(x1==4) y=@0073;else if(x1==5) y=@0074;else if(x1==6) y=@0075;else if(x1==7) y=@0076;else if(x1==8) y=@0077;else if(x1==9) y=@0078;else if(x1==10) y=@0079;else if(x1==11) y=@007a;else if(x1==12) y=@007b;else if(x1==13) y=@007c;else if(x1==14) y=@007d;else if(x1==15) y=@007e;else y=@007f;
  $  002.OBC(车载充电器)限功率模式       $    $            $    $  ANS002.BYTE004  $  if(x1==0) y=@0046;else if(x1==1) y=@0080;else y=@0003;
  $  003.OBC(车载充电器)温度             $    $  deg C     $    $  ANS003.BYTE004  $  y = SPRINTF([%d], (x1*256+x2)-40);
  $  004.OBC(车载充电器)输出电压         $    $  V         $    $  ANS004.BYTE004  $  y = SPRINTF([%.1f], (x1*256+x2)*0.1);
  $  005.OBC(车载充电器)输出电流         $    $  A         $    $  ANS005.BYTE004  $  y = SPRINTF([%.1f], (x1*256+x2)*0.1);
  $  006.BMS(电池管理系统)目标电压       $    $  V         $    $  ANS006.BYTE004  $  y = SPRINTF([%.1f], (x1*256+x2)*0.1);
  $  007.BMS(电池管理系统)目标电流       $    $  A         $    $  ANS007.BYTE004  $  y = SPRINTF([%.1f], (x1*256+x2)*0.1);
  $  008.OBC(车载充电器)输入电压         $    $  V         $    $  ANS008.BYTE004  $  y = SPRINTF([%.1f], (x1*256+x2)*0.1);
  $  009.OBC(车载充电器)输入电流         $    $  A         $    $  ANS009.BYTE004  $  y = SPRINTF([%.1f], (x1*256+x2)*0.1);
  $  010.OBC(车载充电器)限定电流         $    $  A         $    $  ANS010.BYTE004  $  y = SPRINTF([%.1f], (x1*256+x2)*0.1);
  $  011.充电桩最大供电电流              $    $  A         $    $  ANS011.BYTE004  $  y = SPRINTF([%.1f], (x1*256+x2)*0.1);
  $  012.FPC电压                         $    $  V         $    $  ANS012.BYTE004  $  y = SPRINTF([%.1f], (x1*256+x2)*0.1);
  $  013.高压电池电压                    $    $  V         $    $  ANS013.BYTE004  $  y = SPRINTF([%.1f], (x1*256+x2)*0.1);
  $  014.充电口温度1                     $    $  deg C     $    $  ANS014.BYTE004  $  y = SPRINTF([%d], (x1*256+x2)-40);
  $  015.充电口温度2                     $    $  deg C     $    $  ANS015.BYTE004  $  y = SPRINTF([%d], (x1*256+x2)-40);
  $  016.CP占空比                        $    $            $    $  ANS016.BYTE004  $  y = SPRINTF([%.1f], x1*0.1);
  $  017.CP电压                          $    $  V         $    $  ANS017.BYTE004  $  y = SPRINTF([%.1f], x1*0.1);
  $  018.CC电阻值                        $    $            $    $  ANS018.BYTE004  $  if(x1==0) y=@0061;else if(x1==1) y=@0062;else if(x1==2) y=@0063;else if(x1==3) y=@0064;else if(x1==4) y=@0065;else if(x1==5) y=@0066;else if(x1==6) y=@0067;else if(x1==7) y=@0068;else if(x1==8) y=@0069;else if(x1==9) y=@006a;else y=@0003;
  $  019.电子锁状态                      $    $            $    $  ANS019.BYTE004  $  if(x1==0) y=@006b;else if(x1==1) y=@006c;else if(x1==2) y=@006d;else if(x1==3) y=@006e;else y=@0003;
  $  020.S2开关状态                      $    $            $    $  ANS020.BYTE004  $  if(x1==0) y=@005d;else if(x1==1) y=@005e;else y=@0003;
  $  021.VCU(整车控制器)唤醒功能         $    $            $    $  ANS021.BYTE004  $  if(x1==0) y=@005f;else if(x1==1) y=@0060;else y=@0003;
  $  022.OBC(车载充电器)工作时间         $    $  h         $    $  ANS022.BYTE004  $  y = SPRINTF([%d], (x1*256+x2));
  $  023.功率标志位                      $    $            $    $  ANS023.BYTE004  $  if(x1==0) y=@0058;else if(x1==1) y=@0059;else if(x1==2) y=@005a;else y=@0003;
  $  024.电池连接状态                    $    $            $    $  ANS024.BYTE004  $  if(x1==0) y=@005b;else if(x1==1) y=@005c;else y=@0003;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:737 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
