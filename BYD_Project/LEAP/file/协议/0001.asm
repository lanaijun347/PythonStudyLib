
    车型ID：0001

    模拟：协议模拟-->0001

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~728

进入命令:

  $~  REQ000:720 02 10 01 00 00 00 00 00       $~  ANS000:728 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:720 02 3E 80 00 00 00 00 00       $!  ANS000:728 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:720 03 19 02 09 00 00 00 00       $#  ANS000:728 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/00000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:720 04 14 FF FF FF 00 00 00       $$  ANS000:728 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:720 03 22 F1 B0 00 00 00 00       $%  ANS000:728 03 22 F1 B0 00 00 00 00
  $%  REQ001:720 03 22 F1 90 00 00 00 00       $%  ANS001:728 03 22 F1 90 00 00 00 00
  $%  REQ002:720 03 22 F1 87 00 00 00 00       $%  ANS002:728 03 22 F1 87 00 00 00 00
  $%  REQ003:720 03 22 F1 8B 00 00 00 00       $%  ANS003:728 03 22 F1 8B 00 00 00 00
  $%  REQ004:720 03 22 F1 50 00 00 00 00       $%  ANS004:728 03 22 F1 50 00 00 00 00
  $%  REQ005:720 03 22 F1 89 00 00 00 00       $%  ANS005:728 03 22 F1 89 00 00 00 00
  $%  REQ006:720 03 22 F1 80 00 00 00 00       $%  ANS006:728 03 22 F1 80 00 00 00 00
  $%  REQ007:720 03 22 F1 99 00 00 00 00       $%  ANS007:728 03 22 F1 99 00 00 00 00

  $%  000:车型代码:                 $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  001:VIN码:                    $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  002:物料号:                   $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  003:ECU生厂日期:              $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  004:车厂ECU硬件版本号:        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  005:车厂ECU软件版本号:        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  006:Boot软件标识:             $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  007:升级程序日期:             $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:720 03 22 01 09 00 00 00 00       $  ANS000:728 03 22 01 09 00 00 00 00
  $  REQ001:720 03 22 01 0A 00 00 00 00       $  ANS001:728 03 22 01 0A 00 00 00 00
  $  REQ002:720 03 22 01 0B 00 00 00 00       $  ANS002:728 03 22 01 0B 00 00 00 00
  $  REQ003:720 03 22 01 0C 00 00 00 00       $  ANS003:728 03 22 01 0C 00 00 00 00
  $  REQ004:720 03 22 01 0D 00 00 00 00       $  ANS004:728 03 22 01 0D 00 00 00 00
  $  REQ005:720 03 22 01 0E 00 00 00 00       $  ANS005:728 03 22 01 0E 00 00 00 00
  $  REQ006:720 03 22 01 06 00 00 00 00       $  ANS006:728 03 22 01 06 00 00 00 00
  $  REQ007:720 03 22 01 02 00 00 00 00       $  ANS007:728 03 22 01 02 00 00 00 00
  $  REQ008:720 03 22 01 07 00 00 00 00       $  ANS008:728 03 22 01 07 00 00 00 00
  $  REQ009:720 03 22 01 08 00 00 00 00       $  ANS009:728 03 22 01 08 00 00 00 00
  $  REQ010:720 03 22 01 0F 00 00 00 00       $  ANS010:728 03 22 01 0F 00 00 00 00
  $  REQ011:720 03 22 01 10 00 00 00 00       $  ANS011:728 03 22 01 10 00 00 00 00

  $  000.真空度                                         $    $         $    $  ANS000.BYTE004  $  y = SPRINTF([%.2f], x1*0.01);
  $  001.电机进水口温度                                 $    $  ℃     $    $  ANS001.BYTE004  $  y = SPRINTF([%.1f], x1*0.5-20);
  $  002.快充口温度                                     $    $  ℃     $    $  ANS002.BYTE004  $  y = SPRINTF([%.1f], x1*0.5-20);
  $  003.慢充口温度                                     $    $  ℃     $    $  ANS003.BYTE004  $  y = SPRINTF([%.1f], x1*0.5-20);
  $  004.加速踏板值                                     $    $         $    $  ANS004.BYTE004  $  y = SPRINTF([%.3f], x1*0.393);
  $  005.刹车状态                                       $    $         $    $  ANS005.BYTE004  $  switxh(x1&0x03) 0x00: y=@00bc; 0x01: y=@00bd; 0x02: y=@0008; 0x03: y=@0004; default: y=@0008;
  $  006.BCM(车身控制器) ON1电指示                      $    $         $    $  ANS006.BYTE004  $  if(((x1>>0)&1)) y=@0093;else y=@0092;
  $  007.BCM(车身控制器) ON2电指示                      $    $         $    $  ANS006.BYTE004  $  if(((x1>>1)&1)) y=@0093;else y=@0092;
  $  008.BCM(车身控制器) ON3电指示                      $    $         $    $  ANS006.BYTE004  $  if(((x1>>2)&1)) y=@0093;else y=@0092;
  $  009.PTC控制状态                                    $    $         $    $  ANS006.BYTE004  $  if(((x1>>4)&1)) y=@0093;else y=@0092;
  $  010.制动系统故障状态                               $    $         $    $  ANS006.BYTE004  $  if(((x1>>5)&1)) y=@0093;else y=@0092;
  $  011.真空泵工作状态                                 $    $         $    $  ANS006.BYTE004  $  if(((x1>>6)&1)) y=@0093;else y=@0092;
  $  012.BMS(电池管理系统)电源输出                      $    $         $    $  ANS006.BYTE004  $  if(((x1>>7)&1)) y=@0093;else y=@0092;
  $  013.MCU(电机控制器)电源输出                        $    $         $    $  ANS006.BYTE005  $  if(((x1>>0)&1)) y=@0093;else y=@0092;
  $  014.高压互锁PTC1状态                               $    $         $    $  ANS006.BYTE005  $  if(((x1>>1)&1)) y=@009f;else y=@0087;
  $  015.高压互锁PTC2状态                               $    $         $    $  ANS006.BYTE005  $  if(((x1>>2)&1)) y=@009f;else y=@0087;
  $  016.高压互锁CCM1状态                               $    $         $    $  ANS006.BYTE005  $  if(((x1>>3)&1)) y=@009f;else y=@0087;
  $  017.高压互锁CCM2状态                               $    $         $    $  ANS006.BYTE005  $  if(((x1>>4)&1)) y=@009f;else y=@0087;
  $  018.高压互锁慢充状态                               $    $         $    $  ANS006.BYTE005  $  if(((x1>>5)&1)) y=@009f;else y=@0087;
  $  019.高压互锁快充状态                               $    $         $    $  ANS006.BYTE005  $  if(((x1>>6)&1)) y=@009f;else y=@0087;
  $  020.高压互锁IPU1状态                               $    $         $    $  ANS006.BYTE005  $  if(((x1>>7)&1)) y=@009f;else y=@0087;
  $  021.高压互锁IPU2状态                               $    $         $    $  ANS006.BYTE006  $  if(((x1>>0)&1)) y=@009f;else y=@0087;
  $  022.VCU_MCU(整车控制器_电机控制器)通信状态         $    $         $    $  ANS006.BYTE006  $  if(((x1>>1)&1)) y=@008a;else y=@00a0;
  $  023.VCU_BMS(整车控制器_电池管理系统)通信状态       $    $         $    $  ANS006.BYTE006  $  if(((x1>>2)&1)) y=@008a;else y=@00a0;
  $  024.PTC工作状态                                    $    $         $    $  ANS006.BYTE006  $  if(((x1>>3)&1)) y=@0093;else y=@0092;
  $  025.档位硬件状态                                   $    $         $    $  ANS006.BYTE006  $  switxh((x1&0x30)>>4) 0x00: y=@00a1; 0x01: y=@00a2; 0x02: y=@00a3; 0x03: y=@00a4;
  $  026.档位状态                                       $    $         $    $  ANS006.BYTE006  $  switxh((x1&0xC0)>>6) 0x00: y=@00a5; 0x01: y=@00a2; 0x02: y=@00a3; 0x03: y=@00a4;
  $  027.DCDC(直流电源转换器)工作状态                   $    $         $    $  ANS006.BYTE007  $  switxh(x1&0x03) 0x00: y=@0002; 0x01: y=@0003; 0x02: y=@0004; 0x03: y=@0008;
  $  028.VCU(整车控制器)主电源12V                       $    $  V      $    $  ANS007.BYTE004  $  y = SPRINTF([%.3f], x1*0.125);
  $  029.VCU DC(整车控制器 直流)充电12V                 $    $  V      $    $  ANS008.BYTE004  $  y = SPRINTF([%.3f], x1*0.125);
  $  030.VCU AC(整车控制器 交流)充电12V                 $    $  V      $    $  ANS009.BYTE004  $  y = SPRINTF([%.3f], x1*0.125);
  $  031.MCU(电机控制器) 12V电源电流                    $    $  A      $    $  ANS010.BYTE004  $  y = SPRINTF([%.2f], x1*0.02);
  $  032.BMS(电池管理系统) 12V电源电流                  $    $  A      $    $  ANS011.BYTE004  $  y = SPRINTF([%.2f], x1*0.02);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:720 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
