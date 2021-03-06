
    车型ID：570b

    模拟：协议模拟-->570b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:730 02 10 03 00 00 00 00 00       $~  ANS000:738 02 10 03 00 00 00 00 00
  $~~ REQ001:730 02 27 01 00 00 00 00 00       $~~ ANS001:738 02 27 01 00 00 00 00 00
  $~~ REQ002:730 06 27 02 00 00 00 00 00       $~~ ANS002:738 06 27 02 00 00 00 00 00

空闲命令:

  $!  REQ000:730 02 3E 00 00 00 00 00 00       $!  ANS000:738 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:730 03 19 02 09 00 00 00 00       $#  ANS000:738 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/44000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:730 04 14 FF FF FF 00 00 00       $$  ANS000:738 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:730 03 22 F1 83 00 00 00 00       $%  ANS000:738 03 22 F1 83 00 00 00 00
  $%  REQ001:730 03 22 F1 87 00 00 00 00       $%  ANS001:738 03 22 F1 87 00 00 00 00
  $%  REQ002:730 03 22 F1 8A 00 00 00 00       $%  ANS002:738 03 22 F1 8A 00 00 00 00
  $%  REQ003:730 03 22 F1 8B 00 00 00 00       $%  ANS003:738 03 22 F1 8B 00 00 00 00
  $%  REQ004:730 03 22 F1 8C 00 00 00 00       $%  ANS004:738 03 22 F1 8C 00 00 00 00
  $%  REQ005:730 03 22 F1 90 00 00 00 00       $%  ANS005:738 03 22 F1 90 00 00 00 00
  $%  REQ006:730 03 22 F1 91 00 00 00 00       $%  ANS006:738 03 22 F1 91 00 00 00 00
  $%  REQ007:730 03 22 F1 93 00 00 00 00       $%  ANS007:738 03 22 F1 93 00 00 00 00
  $%  REQ008:730 03 22 F1 95 00 00 00 00       $%  ANS008:738 03 22 F1 95 00 00 00 00
  $%  REQ009:730 03 22 F1 99 00 00 00 00       $%  ANS009:738 03 22 F1 99 00 00 00 00

  $%  000:引导加载软件参考号:        $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:电控单元零件号:            $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  002:生产厂商代码:              $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:电控单元制造日期:          $%    $%  ANS003.BYTE004  $%  y=SPRINTF([20%02x%s%02x%s%02x%s],x1,@0007,x2,@0008,x3,@0009);
  $%  004:供应商ECU序列号:           $%    $%  ANS004.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:VIN码:                     $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  006:电控单元硬件号:            $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  007:供应商硬件版本号:          $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $%  008:供应商软件版本号:          $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:编程日期:                  $%    $%  ANS009.BYTE004  $%  y=SPRINTF([20%02x%s%02x%s%02x%s],x1,@0007,x2,@0008,x3,@0009);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:730 03 22 02 00 00 00 00 00       $  ANS000:738 03 22 02 00 00 00 00 00
  $  REQ001:730 03 22 02 01 00 00 00 00       $  ANS001:738 03 22 02 01 00 00 00 00
  $  REQ002:730 03 22 02 02 00 00 00 00       $  ANS002:738 03 22 02 02 00 00 00 00
  $  REQ003:730 03 22 02 03 00 00 00 00       $  ANS003:738 03 22 02 03 00 00 00 00
  $  REQ004:730 03 22 02 05 00 00 00 00       $  ANS004:738 03 22 02 05 00 00 00 00
  $  REQ005:730 03 22 02 06 00 00 00 00       $  ANS005:738 03 22 02 06 00 00 00 00
  $  REQ006:730 03 22 02 07 00 00 00 00       $  ANS006:738 03 22 02 07 00 00 00 00
  $  REQ007:730 03 22 02 08 00 00 00 00       $  ANS007:738 03 22 02 08 00 00 00 00
  $  REQ008:730 03 22 02 09 00 00 00 00       $  ANS008:738 03 22 02 09 00 00 00 00
  $  REQ009:730 03 22 02 0A 00 00 00 00       $  ANS009:738 03 22 02 0A 00 00 00 00
  $  REQ010:730 03 22 02 11 00 00 00 00       $  ANS010:738 03 22 02 11 00 00 00 00
  $  REQ011:730 03 22 02 12 00 00 00 00       $  ANS011:738 03 22 02 12 00 00 00 00
  $  REQ012:730 03 22 02 14 00 00 00 00       $  ANS012:738 03 22 02 14 00 00 00 00
  $  REQ013:730 03 22 02 15 00 00 00 00       $  ANS013:738 03 22 02 15 00 00 00 00
  $  REQ014:730 03 22 02 16 00 00 00 00       $  ANS014:738 03 22 02 16 00 00 00 00
  $  REQ015:730 03 22 02 17 00 00 00 00       $  ANS015:738 03 22 02 17 00 00 00 00
  $  REQ016:730 03 22 02 18 00 00 00 00       $  ANS016:738 03 22 02 18 00 00 00 00
  $  REQ017:730 03 22 02 19 00 00 00 00       $  ANS017:738 03 22 02 19 00 00 00 00
  $  REQ018:730 03 22 02 1B 00 00 00 00       $  ANS018:738 03 22 02 1B 00 00 00 00
  $  REQ019:730 03 22 02 20 00 00 00 00       $  ANS019:738 03 22 02 20 00 00 00 00
  $  REQ020:730 03 22 02 21 00 00 00 00       $  ANS020:738 03 22 02 21 00 00 00 00
  $  REQ021:730 03 22 02 22 00 00 00 00       $  ANS021:738 03 22 02 22 00 00 00 00
  $  REQ022:730 03 22 02 23 00 00 00 00       $  ANS022:738 03 22 02 23 00 00 00 00
  $  REQ023:730 03 22 02 24 00 00 00 00       $  ANS023:738 03 22 02 24 00 00 00 00
  $  REQ024:730 03 22 02 25 00 00 00 00       $  ANS024:738 03 22 02 25 00 00 00 00
  $  REQ025:730 03 22 02 26 00 00 00 00       $  ANS025:738 03 22 02 26 00 00 00 00
  $  REQ026:730 03 22 02 27 00 00 00 00       $  ANS026:738 03 22 02 27 00 00 00 00
  $  REQ027:730 03 22 02 28 00 00 00 00       $  ANS027:738 03 22 02 28 00 00 00 00
  $  REQ028:730 03 22 02 2B 00 00 00 00       $  ANS028:738 03 22 02 2B 00 00 00 00
  $  REQ029:730 03 22 02 2D 00 00 00 00       $  ANS029:738 03 22 02 2D 00 00 00 00
  $  REQ030:730 03 22 02 2E 00 00 00 00       $  ANS030:738 03 22 02 2E 00 00 00 00
  $  REQ031:730 03 22 02 2F 00 00 00 00       $  ANS031:738 03 22 02 2F 00 00 00 00
  $  REQ032:730 03 22 02 32 00 00 00 00       $  ANS032:738 03 22 02 32 00 00 00 00

  $  000.BMS(电池管理系统)充电电流请求       $    $  A            $    $  ANS000.BYTE004  $  y=x1*25.6+x2*0.1;
  $  001.BMS(电池管理系统)充电电压请求       $    $  V            $    $  ANS001.BYTE004  $  y=x1*25.6+x2*0.1;
  $  002.OBC(车载充电机)输入最大电流         $    $  V            $    $  ANS002.BYTE004  $  y=x1;
  $  003.电池包总电流                        $    $  A            $    $  ANS003.BYTE004  $  y=x1*25.6+x2*0.1-1000;
  $  004.电池包的绝缘值                      $    $  kOhm         $    $  ANS004.BYTE004  $  y=x1*256+x2;
  $  005.CC检测状态                          $    $               $    $  ANS005.BYTE004  $  if(x1&0x01) y=@0547;else y=@0548;
  $  006.SOH(电池健康状态)值                 $    $  %            $    $  ANS006.BYTE004  $  y=x1;
  $  007.SOC(电池剩余电量)值                 $    $  %            $    $  ANS007.BYTE004  $  y=x1;
  $  008.电池包充放电次数                    $    $               $    $  ANS008.BYTE004  $  y=x1*256+x2;
  $  009.电池包充电剩余时间                  $    $  min          $    $  ANS009.BYTE004  $  y=x1*256+x2;
  $  010.电池包充电截止电压                  $    $  V            $    $  ANS010.BYTE004  $  y=x1*25.6+x2*0.1;
  $  011.电池包总电压                        $    $  V            $    $  ANS011.BYTE004  $  y=x1*25.6+x2*0.1;
  $  012.电池包最高单体电压                  $    $  mV           $    $  ANS012.BYTE004  $  y=x1*256+x2;
  $  013.电池包最高单体电压位置              $    $               $    $  ANS013.BYTE004  $  y=x1;
  $  014.电池包最低单体电压                  $    $  mV           $    $  ANS014.BYTE004  $  y=x1*256+x2;
  $  015.电池包最低单体电压位置              $    $               $    $  ANS015.BYTE004  $  y=x1;
  $  016.电池包状态                          $    $               $    $  ANS016.BYTE004  $  if(x1&0x01) y=@000c;else y=@000d;
  $  017.电池包慢充充电状态信号              $    $               $    $  ANS017.BYTE004  $  switxh(x1&0x03) 0x00: y=@000e;0x01: y=@000f;0x02: y=@0010;default: y=@003f;
  $  018.电池包主继电器状态                  $    $               $    $  ANS018.BYTE004  $  if(x1&0x01) y=@0011;else y=@0012;
  $  019.电池包最高温度                      $    $  degree C     $    $  ANS019.BYTE004  $  y=x1-50;
  $  020.电池包最高温度位置                  $    $               $    $  ANS020.BYTE004  $  y=x1;
  $  021.电池包平均温度                      $    $  degree C     $    $  ANS021.BYTE004  $  y=x1-50;
  $  022.电池包最低温度                      $    $  degree C     $    $  ANS022.BYTE004  $  y=x1-50;
  $  023.电池包最低温度位置                  $    $               $    $  ANS023.BYTE004  $  y=x1;
  $  024.电池包告警级别                      $    $               $    $  ANS024.BYTE004  $  switxh(x1&0x03) 0x00: y=@0549;0x01: y=@01dc;0x02: y=@0015;0x03: y=@01dd;default: y=@003f;
  $  025.电池包单体电压告警状态              $    $               $    $  ANS025.BYTE004  $  switxh(x1&0x03) 0x00: y=@0013;0x01: y=@0017;0x02: y=@0018;0x03: y=@0019;default: y=@003f;
  $  026.电池包总电压状态                    $    $               $    $  ANS026.BYTE004  $  switxh(x1&0x03) 0x00: y=@0013;0x01: y=@0017;0x02: y=@0018;default: y=@003f;
  $  027.电池包温度状态                      $    $               $    $  ANS027.BYTE004  $  switxh(x1&0x03) 0x00: y=@0013;0x01: y=@001a;0x02: y=@001b;0x03: y=@0019;default: y=@003f;
  $  028.电池包绝缘报警指示                  $    $               $    $  ANS028.BYTE004  $  if(x1&0x01) y=@001e;else y=@0013;
  $  029.电池包温度传感器异常                $    $               $    $  ANS029.BYTE004  $  if(x1&0x01) y=@001d;else y=@0013;
  $  030.电池包电流传感器异常                $    $               $    $  ANS030.BYTE004  $  if(x1&0x01) y=@001d;else y=@0013;
  $  031.电池包单体电压断线告警              $    $               $    $  ANS031.BYTE004  $  if(x1&0x01) y=@054a;else y=@0013;
  $  032.主控软件版本                        $    $               $    $  ANS032.BYTE004  $  ASCII(x1,x2,x3,x4);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:730 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
