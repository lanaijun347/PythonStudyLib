
    车型ID：107c

    模拟：协议模拟-->107c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:728 02 10 01 00 00 00 00 00       $~  ANS000:7A8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:728 02 3E 80 00 00 00 00 00       $!  ANS000:7A8 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:728 03 19 02 09 00 00 00 00       $#  ANS000:7A8 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/7c000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:728 04 14 FF FF FF 00 00 00       $$  ANS000:7A8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:728 03 22 F1 A0 00 00 00 00       $%  ANS000:7A8 03 22 F1 A0 00 00 00 00
  $%  REQ001:728 03 22 F1 83 00 00 00 00       $%  ANS001:7A8 03 22 F1 83 00 00 00 00
  $%  REQ002:728 03 22 F1 A1 00 00 00 00       $%  ANS002:7A8 03 22 F1 A1 00 00 00 00
  $%  REQ003:728 03 22 F1 8B 00 00 00 00       $%  ANS003:7A8 03 22 F1 8B 00 00 00 00
  $%  REQ004:728 03 22 F1 91 00 00 00 00       $%  ANS004:7A8 03 22 F1 91 00 00 00 00
  $%  REQ005:728 03 22 F1 A2 00 00 00 00       $%  ANS005:7A8 03 22 F1 A2 00 00 00 00
  $%  REQ006:728 03 22 F1 87 00 00 00 00       $%  ANS006:7A8 03 22 F1 87 00 00 00 00
  $%  REQ007:728 03 22 F1 10 00 00 00 00       $%  ANS007:7A8 03 22 F1 10 00 00 00 00
  $%  REQ008:728 03 22 F1 92 00 00 00 00       $%  ANS008:7A8 03 22 F1 92 00 00 00 00
  $%  REQ009:728 03 22 F1 8C 00 00 00 00       $%  ANS009:7A8 03 22 F1 8C 00 00 00 00
  $%  REQ010:728 03 22 F1 94 00 00 00 00       $%  ANS010:7A8 03 22 F1 94 00 00 00 00
  $%  REQ011:728 03 22 F1 8A 00 00 00 00       $%  ANS011:7A8 03 22 F1 8A 00 00 00 00
  $%  REQ012:728 03 22 F1 90 00 00 00 00       $%  ANS012:7A8 03 22 F1 90 00 00 00 00
  $%  REQ013:728 03 22 F1 A8 00 00 00 00       $%  ANS013:7A8 03 22 F1 A8 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  002:电控单元标定软件号:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元制造日期:                $%    $%  ANS003.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);
  $%  004:电控单元硬件号:                  $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  005:电控单元网络文件参考号:          $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号:                  $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  007:电控单元零件号(上次):            $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  008:测试参考号(上次):                $%    $%  ANS007.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  009:里程读数(上次)KM:                $%    $%  ANS007.BYTE015  $%  y=(x1*256*256+x2*256+x3);
  $%  010:供应商电控单元硬件参考号:        $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:供应商电控单元序列号:            $%    $%  ANS009.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  012:供应商电控单元软件参考号:        $%    $%  ANS010.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  013:系统供应商识别码:                $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  014:VIN码:                           $%    $%  ANS012.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  015:车辆特征信息:                    $%    $%  ANS013.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:728 03 22 E0 52 00 00 00 00       $  ANS000:7A8 03 22 E0 52 00 00 00 00
  $  REQ001:728 03 22 E0 53 00 00 00 00       $  ANS001:7A8 03 22 E0 53 00 00 00 00
  $  REQ002:728 03 22 E0 29 00 00 00 00       $  ANS002:7A8 03 22 E0 29 00 00 00 00
  $  REQ003:728 03 22 E0 30 00 00 00 00       $  ANS003:7A8 03 22 E0 30 00 00 00 00
  $  REQ004:728 03 22 E0 31 00 00 00 00       $  ANS004:7A8 03 22 E0 31 00 00 00 00
  $  REQ005:728 03 22 E0 08 00 00 00 00       $  ANS005:7A8 03 22 E0 08 00 00 00 00
  $  REQ006:728 03 22 E0 09 00 00 00 00       $  ANS006:7A8 03 22 E0 09 00 00 00 00
  $  REQ007:728 03 22 E0 03 00 00 00 00       $  ANS007:7A8 03 22 E0 03 00 00 00 00
  $  REQ008:728 03 22 E0 02 00 00 00 00       $  ANS008:7A8 03 22 E0 02 00 00 00 00
  $  REQ009:728 03 22 E0 00 00 00 00 00       $  ANS009:7A8 03 22 E0 00 00 00 00 00
  $  REQ010:728 03 22 E0 01 00 00 00 00       $  ANS010:7A8 03 22 E0 01 00 00 00 00
  $  REQ011:728 03 22 E0 24 00 00 00 00       $  ANS011:7A8 03 22 E0 24 00 00 00 00
  $  REQ012:728 03 22 E0 23 00 00 00 00       $  ANS012:7A8 03 22 E0 23 00 00 00 00
  $  REQ013:728 03 22 E0 20 00 00 00 00       $  ANS013:7A8 03 22 E0 20 00 00 00 00
  $  REQ014:728 03 22 E0 16 00 00 00 00       $  ANS014:7A8 03 22 E0 16 00 00 00 00
  $  REQ015:728 03 22 E0 25 00 00 00 00       $  ANS015:7A8 03 22 E0 25 00 00 00 00
  $  REQ016:728 03 22 E0 22 00 00 00 00       $  ANS016:7A8 03 22 E0 22 00 00 00 00
  $  REQ017:728 03 22 E0 55 00 00 00 00       $  ANS017:7A8 03 22 E0 55 00 00 00 00
  $  REQ018:728 03 22 E0 17 00 00 00 00       $  ANS018:7A8 03 22 E0 17 00 00 00 00
  $  REQ019:728 03 22 E0 18 00 00 00 00       $  ANS019:7A8 03 22 E0 18 00 00 00 00
  $  REQ020:728 03 22 E0 14 00 00 00 00       $  ANS020:7A8 03 22 E0 14 00 00 00 00
  $  REQ021:728 03 22 E0 13 00 00 00 00       $  ANS021:7A8 03 22 E0 13 00 00 00 00
  $  REQ022:728 03 22 E0 19 00 00 00 00       $  ANS022:7A8 03 22 E0 19 00 00 00 00
  $  REQ023:728 03 22 E0 15 00 00 00 00       $  ANS023:7A8 03 22 E0 15 00 00 00 00
  $  REQ024:728 03 22 E0 10 00 00 00 00       $  ANS024:7A8 03 22 E0 10 00 00 00 00
  $  REQ025:728 03 22 E0 46 00 00 00 00       $  ANS025:7A8 03 22 E0 46 00 00 00 00
  $  REQ026:728 03 22 E0 21 00 00 00 00       $  ANS026:7A8 03 22 E0 21 00 00 00 00
  $  REQ027:728 03 22 E0 05 00 00 00 00       $  ANS027:7A8 03 22 E0 05 00 00 00 00
  $  REQ028:728 03 22 E0 04 00 00 00 00       $  ANS028:7A8 03 22 E0 04 00 00 00 00
  $  REQ029:728 03 22 E0 11 00 00 00 00       $  ANS029:7A8 03 22 E0 11 00 00 00 00
  $  REQ030:728 03 22 E0 12 00 00 00 00       $  ANS030:7A8 03 22 E0 12 00 00 00 00
  $  REQ031:728 03 22 E0 61 00 00 00 00       $  ANS031:7A8 03 22 E0 61 00 00 00 00
  $  REQ032:728 03 22 E0 57 00 00 00 00       $  ANS032:7A8 03 22 E0 57 00 00 00 00
  $  REQ033:728 03 22 E0 58 00 00 00 00       $  ANS033:7A8 03 22 E0 58 00 00 00 00
  $  REQ034:728 03 22 E0 59 00 00 00 00       $  ANS034:7A8 03 22 E0 59 00 00 00 00
  $  REQ035:728 03 22 E0 06 00 00 00 00       $  ANS035:7A8 03 22 E0 06 00 00 00 00
  $  REQ036:728 03 22 E0 07 00 00 00 00       $  ANS036:7A8 03 22 E0 07 00 00 00 00
  $  REQ037:728 03 22 E0 56 00 00 00 00       $  ANS037:7A8 03 22 E0 56 00 00 00 00
  $  REQ038:728 03 22 E0 60 00 00 00 00       $  ANS038:7A8 03 22 E0 60 00 00 00 00
  $  REQ039:728 03 22 E0 33 00 00 00 00       $  ANS039:7A8 03 22 E0 33 00 00 00 00
  $  REQ040:728 03 22 E0 34 00 00 00 00       $  ANS040:7A8 03 22 E0 34 00 00 00 00
  $  REQ041:728 03 22 E0 35 00 00 00 00       $  ANS041:7A8 03 22 E0 35 00 00 00 00
  $  REQ042:728 03 22 E0 36 00 00 00 00       $  ANS042:7A8 03 22 E0 36 00 00 00 00
  $  REQ043:728 03 22 E0 37 00 00 00 00       $  ANS043:7A8 03 22 E0 37 00 00 00 00
  $  REQ044:728 03 22 E0 38 00 00 00 00       $  ANS044:7A8 03 22 E0 38 00 00 00 00
  $  REQ045:728 03 22 E0 26 00 00 00 00       $  ANS045:7A8 03 22 E0 26 00 00 00 00
  $  REQ046:728 03 22 E0 28 00 00 00 00       $  ANS046:7A8 03 22 E0 28 00 00 00 00
  $  REQ047:728 03 22 E0 32 00 00 00 00       $  ANS047:7A8 03 22 E0 32 00 00 00 00
  $  REQ048:728 03 22 E0 27 00 00 00 00       $  ANS048:7A8 03 22 E0 27 00 00 00 00
  $  REQ049:728 03 22 E0 47 00 00 00 00       $  ANS049:7A8 03 22 E0 47 00 00 00 00
  $  REQ050:728 03 22 E0 48 00 00 00 00       $  ANS050:7A8 03 22 E0 48 00 00 00 00
  $  REQ051:728 03 22 E0 49 00 00 00 00       $  ANS051:7A8 03 22 E0 49 00 00 00 00
  $  REQ052:728 03 22 E0 50 00 00 00 00       $  ANS052:7A8 03 22 E0 50 00 00 00 00
  $  REQ053:728 03 22 D2 00 00 00 00 00       $  ANS053:7A8 03 22 D2 00 00 00 00 00
  $  REQ054:728 03 22 E0 63 00 00 00 00       $  ANS054:7A8 03 22 E0 63 00 00 00 00
  $  REQ055:728 03 22 E0 66 00 00 00 00       $  ANS055:7A8 03 22 E0 66 00 00 00 00
  $  REQ056:728 03 22 E0 67 00 00 00 00       $  ANS056:7A8 03 22 E0 67 00 00 00 00
  $  REQ057:728 03 22 E0 64 00 00 00 00       $  ANS057:7A8 03 22 E0 64 00 00 00 00
  $  REQ058:728 03 22 E0 65 00 00 00 00       $  ANS058:7A8 03 22 E0 65 00 00 00 00
  $  REQ059:728 03 22 E0 62 00 00 00 00       $  ANS059:7A8 03 22 E0 62 00 00 00 00
  $  REQ060:728 03 22 E0 41 00 00 00 00       $  ANS060:7A8 03 22 E0 41 00 00 00 00
  $  REQ061:728 03 22 E0 42 00 00 00 00       $  ANS061:7A8 03 22 E0 42 00 00 00 00
  $  REQ062:728 03 22 E0 39 00 00 00 00       $  ANS062:7A8 03 22 E0 39 00 00 00 00
  $  REQ063:728 03 22 E0 45 00 00 00 00       $  ANS063:7A8 03 22 E0 45 00 00 00 00
  $  REQ064:728 03 22 E0 43 00 00 00 00       $  ANS064:7A8 03 22 E0 43 00 00 00 00
  $  REQ065:728 03 22 E0 44 00 00 00 00       $  ANS065:7A8 03 22 E0 44 00 00 00 00
  $  REQ066:728 03 22 E0 40 00 00 00 00       $  ANS066:7A8 03 22 E0 40 00 00 00 00
  $  REQ067:728 03 22 E0 54 00 00 00 00       $  ANS067:7A8 03 22 E0 54 00 00 00 00
  $  REQ068:728 03 22 E0 51 00 00 00 00       $  ANS068:7A8 03 22 E0 51 00 00 00 00
  $  REQ069:728 03 22 C0 01 00 00 00 00       $  ANS069:7A8 03 22 C0 01 00 00 00 00
  $  REQ070:728 03 22 D2 01 00 00 00 00       $  ANS070:7A8 03 22 D2 01 00 00 00 00
  $  REQ071:728 03 22 D2 02 00 00 00 00       $  ANS071:7A8 03 22 D2 02 00 00 00 00
  $  REQ072:728 03 22 D2 03 00 00 00 00       $  ANS072:7A8 03 22 D2 03 00 00 00 00

  $  000.CVM平均单体电压                                $    $  mV           $    $  ANS000.BYTE004  $  y=(x1*256+x2)-5000;
  $  001.CVM温度                                        $    $  degree C     $    $  ANS001.BYTE004  $  y=x-40;
  $  002.氢瓶压力                                       $    $  mPa          $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.1;
  $  003.HMS氢瓶1温度                                   $    $  degree C     $    $  ANS003.BYTE004  $  y=x-50;
  $  004.气缸2温度                                      $    $  degree C     $    $  ANS004.BYTE004  $  y=x-50;
  $  005.DCF电流设定                                    $    $  A            $    $  ANS005.BYTE004  $  y=(x1*256+x2);
  $  006.DCF使能信号                                    $    $               $    $  ANS006.BYTE004  $  y=x;
  $  007.DCF输入电流                                    $    $  A            $    $  ANS007.BYTE004  $  y=(x1*256+x2)*0.1;
  $  008.DCF输入电压                                    $    $  V            $    $  ANS008.BYTE004  $  y=(x1*256+x2)*0.1;
  $  009.DCF输出电流                                    $    $  A            $    $  ANS009.BYTE004  $  y=(x1*256+x2)*0.1;
  $  010.DCF输出电压                                    $    $  V            $    $  ANS010.BYTE004  $  y=(x1*256+x2)*0.1;
  $  011.FCS(燃料电池系统)空压机转速反馈                $    $  rpm          $    $  ANS011.BYTE004  $  y=(x1*256+x2)*5;
  $  012.FCS(燃料电池系统)空压机转速设定                $    $  rpm          $    $  ANS012.BYTE004  $  y=(x1*256+x2)*5;
  $  013.FCS(燃料电池系统)空气流量                      $    $  g/s          $    $  ANS013.BYTE004  $  y=(x1*256+x2);
  $  014.FCS(燃料电池系统)空气进堆压力                  $    $  kPa          $    $  ANS014.BYTE004  $  y=(x1*256+x2)*0.1;
  $  015.FCS(燃料电池系统)CVM2最小单体电压              $    $  mV           $    $  ANS015.BYTE004  $  y=(x1*256+x2);
  $  016.FCS(燃料电池系统)排气节气门设定                $    $  %            $    $  ANS016.BYTE004  $  y=x;
  $  017.FCS(燃料电池系统)进气节气门设定                $    $  %            $    $  ANS017.BYTE004  $  y=x;
  $  018.FCS(燃料电池系统)氢气进堆压力                  $    $  kPa          $    $  ANS018.BYTE004  $  y=(x1*256+x2)*0.1-50.0;
  $  019.FCS(燃料电池系统)冷却水出堆温度                $    $  degree C     $    $  ANS019.BYTE004  $  y=(x1*256+x2)*0.1-40.0;
  $  020.FCS(燃料电池系统)冷却水进堆压力                $    $  kPa          $    $  ANS020.BYTE004  $  y=(x1*256+x2)*0.1-50.0;
  $  021.FCS(燃料电池系统)最大功率                      $    $  kW           $    $  ANS021.BYTE004  $  y=x*0.5;
  $  022.FCS(燃料电池系统)最小功率                      $    $  kW           $    $  ANS022.BYTE004  $  y=x*0.5;
  $  023.FCS(燃料电池系统)冷却水出堆温度                $    $  degree C     $    $  ANS023.BYTE004  $  y=(x1*256+x2)*0.1-40.0;
  $  024.FCS(燃料电池系统)功率                          $    $  kW           $    $  ANS024.BYTE004  $  y=(x1*256+x2)*0.1;
  $  025.FCS(燃料电池系统)功率设定                      $    $  kW           $    $  ANS025.BYTE004  $  y=(x1*256+x2)*0.1;
  $  026.FCS(燃料电池系统)排氢阀温度                    $    $  degree C     $    $  ANS026.BYTE004  $  y=(x1*256+x2)*0.1-40.0;
  $  027.FCS(燃料电池系统)软件版本号第三位              $    $               $    $  ANS027.BYTE004  $  y=x;
  $  028.FCS(燃料电池系统)软件版本号第四位              $    $               $    $  ANS028.BYTE004  $  y=x;
  $  029.FCS(燃料电池系统)电堆电流                      $    $  A            $    $  ANS029.BYTE004  $  y=(x1*256+x2)*0.1;
  $  030.FCS(燃料电池系统)电堆电压                      $    $  V            $    $  ANS030.BYTE004  $  y=(x1*256+x2)*0.1;
  $  031.FCS(燃料电池系统)水泵电机温度                  $    $  degree C     $    $  ANS031.BYTE004  $  y=x-40;
  $  032.FCS(燃料电池系统)水泵转速设定                  $    $  rpm          $    $  ANS032.BYTE004  $  y=x*20;
  $  033.FCS(燃料电池系统)水泵转速                      $    $  rpm          $    $  ANS033.BYTE004  $  y=(x1*256+x2);
  $  034.FCS(燃料电池系统)水泵电压                      $    $  V            $    $  ANS034.BYTE004  $  y=(x1*256+x2)*0.5;
  $  035.FCS(燃料电池系统)软件版本号第二位              $    $               $    $  ANS035.BYTE004  $  y=x;
  $  036.FCS(燃料电池系统)软件版本号第一位              $    $               $    $  ANS036.BYTE004  $  y=x;
  $  037.FCS(燃料电池系统)节温器PWM(脉宽调制)设定       $    $  %            $    $  ANS037.BYTE004  $  y=x;
  $  038.FCS(燃料电池系统)水泵电流                      $    $  A            $    $  ANS038.BYTE004  $  y=x*0.02;
  $  039.HMS氢气泄露传感器1浓度值                       $    $  ppm          $    $  ANS039.BYTE004  $  y=x*200;
  $  040.HMS氢气泄露传感器2浓度值                       $    $  ppm          $    $  ANS040.BYTE004  $  y=x*200;
  $  041.HMS氢气泄露传感器3浓度值                       $    $  ppm          $    $  ANS041.BYTE004  $  y=x*200;
  $  042.HMS氢气泄露传感器4浓度值                       $    $  ppm          $    $  ANS042.BYTE004  $  y=x*200;
  $  043.HMS氢气泄露传感器5浓度值                       $    $  ppm          $    $  ANS043.BYTE004  $  y=x*200;
  $  044.HMS氢气泄露传感器6浓度值                       $    $  ppm          $    $  ANS044.BYTE004  $  y=x*200;
  $  045.HMS氢泄露浓度                                  $    $  ppm          $    $  ANS045.BYTE004  $  y=x*200;
  $  046.HMS氢低压压力                                  $    $  kPa          $    $  ANS046.BYTE004  $  y=(x1*256+x2);
  $  047.HMS氢中压压力                                  $    $  mPa          $    $  ANS047.BYTE004  $  y=x*0.01;
  $  048.HMS氢气SOC(电池电量)                           $    $  %            $    $  ANS048.BYTE004  $  y=(x1*256+x2)*0.1;
  $  049.最大电压                                       $    $  mV           $    $  ANS049.BYTE004  $  y=(x1*256+x2)-5000;
  $  050.CVM最大单体电压通道                            $    $               $    $  ANS050.BYTE004  $  y=x;
  $  051.最小电压                                       $    $  mV           $    $  ANS051.BYTE004  $  y=(x1*256+x2)-5000;
  $  052.CVM最小单体电压通道                            $    $               $    $  ANS052.BYTE004  $  y=x;
  $  053.安全线                                         $    $               $    $  ANS053.BYTE004  $  if((x&0x80)==0x80)y=@00ad;else y=@002e;
  $  054.VMS加油开关                                    $    $               $    $  ANS053.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  055.充电线揽连接                                   $    $               $    $  ANS053.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  056.FC开关                                         $    $               $    $  ANS053.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  057.PT加油准备                                     $    $               $    $  ANS053.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  058.HMS使能                                        $    $               $    $  ANS053.BYTE004  $  if((x&0x04)==0x04)y=@00f0;else y=@00f1;
  $  059.燃料电池高压继电器                             $    $               $    $  ANS053.BYTE005  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  060.FCS高压继电器预充电                            $    $               $    $  ANS053.BYTE005  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  061.HMS气阀1状态                                   $    $               $    $  ANS053.BYTE005  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  062.HMS气阀2状态                                   $    $               $    $  ANS053.BYTE005  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  063.PTC使能请求                                    $    $               $    $  ANS053.BYTE005  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  064.FCS氢气净化阀1                                 $    $               $    $  ANS053.BYTE005  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  065.FCS氢气净化阀2                                 $    $               $    $  ANS053.BYTE005  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  066.高热模块使能                                   $    $               $    $  ANS053.BYTE005  $  if((x&0x01)==0x01)y=@00f0;else y=@00f1;
  $  067.PTC基本状态位                                  $    $               $    $  ANS054.BYTE004  $  y=x;
  $  068.PTC高压总线电压                                $    $  V            $    $  ANS055.BYTE004  $  y=x*2;
  $  069.PTC进口温度                                    $    $  degree C     $    $  ANS056.BYTE004  $  y=x-40;
  $  070.PTC功率                                        $    $  W            $    $  ANS057.BYTE004  $  y=x*50;
  $  071.PTC功率设定                                    $    $  W            $    $  ANS058.BYTE004  $  y=x*50;
  $  072.PTC温度                                        $    $  degree C     $    $  ANS059.BYTE004  $  y=x-40;
  $  073.HMS加注氢气类型                                $    $               $    $  ANS060.BYTE004  $  y=x;
  $  074.HMS加注主机协议ID                              $    $               $    $  ANS061.BYTE004  $  y=x;
  $  075.HMS加氢主机版本号                              $    $               $    $  ANS062.BYTE004  $  y=(x1*256+x2)*0.01;
  $  076.HMS加氢红外版本软件号                          $    $               $    $  ANS063.BYTE004  $  y=(x1*256+x2)*0.01;
  $  077.HMS加注从机协议ID                              $    $               $    $  ANS064.BYTE004  $  y=x;
  $  078.HMS加氢从机版本号                              $    $               $    $  ANS065.BYTE004  $  y=(x1*256+x2)*0.01;
  $  079.HMS加氢罐容积                                  $    $  L            $    $  ANS066.BYTE004  $  y=(x1*256+x2)*0.01;
  $  080.FCS氢循环泵速度设定                            $    $  rpm          $    $  ANS067.BYTE004  $  y=(x1*256+x2);
  $  081.总电压                                         $    $  V            $    $  ANS068.BYTE004  $  y=(x1*256+x2)-1000;
  $  082.SRS启用                                        $    $               $    $  ANS069.BYTE004  $  if((x&0x01)==0x01)y=@00dc;else y=@00db;
  $  083.BMS基本状态位                                  $    $               $    $  ANS070.BYTE004  $  if((x&0x3C)==0x00) y=@00bc;else if((x&0x3C)==0x04) y=@09ef;else if((x&0x3C)==0x08) y=@09fb;else if((x&0x3C)==0x0C) y=@09f0;else if((x&0x3C)==0x10) y=@09fc;else if((x&0x3C)==0x14) y=@09fd;else if((x&0x3C)==0x18) y=@09fe;else if((x&0x3C)==0x1C) y=@09ff;else if((x&0x3C)==0x20) y=@0a00;else if((x&0x3C)==0x24) y=@0a01;else if((x&0x3C)==0x28) y=@0a02;else if((x&0x3C)==0x30) y=@0a03;else if((x&0x3C)==0x34) y=@0a04;else if((x&0x3C)==0x38) y=@0a05;else if((x&0x3C)==0x3C) y=@00b3;else y=@01a9;
  $  084.DCF不达标                                      $    $               $    $  ANS070.BYTE004  $  if((x&0x03)==0x00) y=@01d1;else if((x&0x03)==0x01) y=@0a06;else if((x&0x03)==0x02) y=@0a07;else y=@01a9;
  $  085.DCF基本状态位                                  $    $               $    $  ANS070.BYTE005  $  if((x&0xE0)==0x00) y=@0007;else if((x&0xE0)==0x20) y=@01a9;else if((x&0xE0)==0x40) y=@00f0;else if((x&0xE0)==0x60) y=@080e;else if((x&0xE0)==0x80) y=@00bc;else if((x&0xE0)==0xA0) y=@00b3;else if((x&0xE0)==0xC0) y=@000c;else y=@0136;
  $  086.ETC状态位2                                     $    $               $    $  ANS070.BYTE005  $  if((x&0x1E)==0x00) y=@000f;else if((x&0x1E)==0x02) y=@0019;else if((x&0x1E)==0x04) y=@0a08;else if((x&0x1E)==0x06) y=@0a09;else if((x&0x1E)==0x08) y=@0a0a;else if((x&0x1E)==0x0A) y=@0a0b;else if((x&0x1E)==0x0C) y=@0a0c;else if((x&0x1E)==0x0E) y=@0a0d;else if((x&0x1E)==0x10) y=@0a0e;else if((x&0x1E)==0x12) y=@0a0f;else if((x&0x1E)==0x14) y=@07aa;else if((x&0x1E)==0x16) y=@0a10;else if((x&0x1E)==0x18) y=@0a11;else if((x&0x1E)==0x1A) y=@0a12;else if((x&0x1E)==0x1C) y=@0a13;else y=@0a14;
  $  087.PTC错误                                        $    $               $    $  ANS070.BYTE005  $  if((x&0x01)==0x01)y=@0474;else y=@01d1;
  $  088.FCS水泵基本状态                                $    $               $    $  ANS071.BYTE004  $  if((x&0xE0)==0x00) y=@0007;else if((x&0xE0)==0x20) y=@01a9;else if((x&0xE0)==0x40) y=@00f0;else if((x&0xE0)==0x60) y=@01a9;else if((x&0xE0)==0x80) y=@01a9;else if((x&0xE0)==0xA0) y=@00b3;else if((x&0xE0)==0xC0) y=@01a9;else y=@01a9;
  $  089.HMS基本状态                                    $    $               $    $  ANS071.BYTE004  $  if((x&0x1C)==0x00) y=@01d1;else if((x&0x1C)==0x04) y=@01a9;else if((x&0x1C)==0x08) y=@00f0;else if((x&0x1C)==0x0C) y=@0a17;else if((x&0x1C)==0x10) y=@00bc;else if((x&0x1C)==0x14) y=@00b3;else if((x&0x1C)==0x18) y=@0a18;else y=@01a9;
  $  090.HMS错误等级                                    $    $               $    $  ANS071.BYTE004  $  if((x&0x03)==0x00) y=@01d1;else if((x&0x03)==0x01) y=@0a06;else if((x&0x03)==0x02) y=@0a07;else y=@01a9;
  $  091.HCP过流                                        $    $               $    $  ANS071.BYTE004  $  if((x&0x80)==0x80)y=@0474;else y=@01d1;
  $  092.HCP温度限制                                    $    $               $    $  ANS071.BYTE004  $  if((x&0x40)==0x40)y=@0474;else y=@01d1;
  $  093.HCP可信错误                                    $    $               $    $  ANS071.BYTE004  $  if((x&0x20)==0x20)y=@0474;else y=@01d1;
  $  094.HCP错误电压                                    $    $               $    $  ANS071.BYTE004  $  if((x&0x10)==0x10)y=@0474;else y=@01d1;
  $  095.HCP通电                                        $    $               $    $  ANS071.BYTE004  $  if((x&0x08)==0x08)y=@0474;else y=@01d1;
  $  096.HCP的MAF错误                                   $    $               $    $  ANS071.BYTE004  $  if((x&0x04)==0x04)y=@0474;else y=@01d1;
  $  097.HCP质量流调速器启用                            $    $               $    $  ANS071.BYTE004  $  if((x&0x02)==0x02)y=@0474;else y=@01d1;
  $  098.水泵使能                                       $    $               $    $  ANS071.BYTE004  $  if((x&0x01)==0x01)y=@0474;else y=@01d1;
  $  099.FCS(燃料电池系统)错误等级                      $    $               $    $  ANS072.BYTE004  $  if((x&0xC0)==0x00) y=@01d1;else if((x&0xC0)==0x40) y=@0a06;else if((x&0xC0)==0x80) y=@0a07;else y=@01a9;
  $  100.FCS(燃料电池系统)基本状态                      $    $               $    $  ANS072.BYTE004  $  if((x&0x38)==0x00) y=@0007;else if((x&0x38)==0x10) y=@00f0;else if((x&0x38)==0x20) y=@00bc;else if((x&0x38)==0x28) y=@00b3;else y=@01a9;
  $  101.FCS(燃料电池系统)扩展状态                      $    $               $    $  ANS072.BYTE004  $  if((x&0x07)==0x00) y=@0a15;else if((x&0x07)==0x01) y=@009e;else if((x&0x07)==0x02) y=@000f;else if((x&0x07)==0x03) y=@0412;else if((x&0x07)==0x04) y=@01a9;else if((x&0x07)==0x05) y=@01a9;else if((x&0x07)==0x06) y=@0a16;else y=@080e;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:728 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
