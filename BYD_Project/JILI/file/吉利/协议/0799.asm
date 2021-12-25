
    车型ID：0799

    模拟：协议模拟-->0799

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E8

进入命令:

  $~  REQ000:7E0 02 10 01 00 00 00 00 00       $~  ANS000:7E8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E0 02 3E 00 00 00 00 00 00       $!  ANS000:7E8 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7E0 03 19 02 09 00 00 00 00       $#  ANS000:7E8 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/05000000


  $#  01.读故障码库
  $#  REQ000:7E0 02 19 0A 00 00 00 00 00       $#  ANS000:7E8 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/05000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E0 04 14 FF FF FF 00 00 00       $$  ANS000:7E8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 03 22 F1 12 00 00 00 00       $%  ANS000:7E8 03 22 F1 12 00 00 00 00
  $%  REQ001:7E0 03 22 F1 8A 00 00 00 00       $%  ANS001:7E8 03 22 F1 8A 00 00 00 00
  $%  REQ002:7E0 03 22 F1 90 00 00 00 00       $%  ANS002:7E8 03 22 F1 90 00 00 00 00
  $%  REQ003:7E0 03 22 F1 92 00 00 00 00       $%  ANS003:7E8 03 22 F1 92 00 00 00 00
  $%  REQ004:7E0 03 22 F1 94 00 00 00 00       $%  ANS004:7E8 03 22 F1 94 00 00 00 00
  $%  REQ005:7E0 03 22 F1 96 00 00 00 00       $%  ANS005:7E8 03 22 F1 96 00 00 00 00
  $%  REQ006:7E0 03 22 F1 97 00 00 00 00       $%  ANS006:7E8 03 22 F1 97 00 00 00 00
  $%  REQ007:7E0 03 22 F1 98 00 00 00 00       $%  ANS007:7E8 03 22 F1 98 00 00 00 00
  $%  REQ008:7E0 03 22 F1 99 00 00 00 00       $%  ANS008:7E8 03 22 F1 99 00 00 00 00

  $%  000:车辆名称:                                  $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:供应商代号:                                $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:车辆识别号(VIN码):                         $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  003:系统供应商ECU(电子控制器)硬件版本号:       $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  004:系统供应商ECU(电子控制器)软件版本号:       $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  005:排放法规或形式认证号:                      $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  006:系统名称或发动机类型:                      $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  007:维修店代号:                                $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  008:编程日期:                                  $%    $%  ANS008.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E0 03 22 01 04 00 00 00 00       $  ANS000:7E8 03 22 01 04 00 00 00 00
  $  REQ001:7E0 03 22 01 05 00 00 00 00       $  ANS001:7E8 03 22 01 05 00 00 00 00
  $  REQ002:7E0 03 22 01 08 00 00 00 00       $  ANS002:7E8 03 22 01 08 00 00 00 00
  $  REQ003:7E0 03 22 01 09 00 00 00 00       $  ANS003:7E8 03 22 01 09 00 00 00 00
  $  REQ004:7E0 03 22 01 0A 00 00 00 00       $  ANS004:7E8 03 22 01 0A 00 00 00 00
  $  REQ005:7E0 03 22 01 0B 00 00 00 00       $  ANS005:7E8 03 22 01 0B 00 00 00 00
  $  REQ006:7E0 03 22 01 0D 00 00 00 00       $  ANS006:7E8 03 22 01 0D 00 00 00 00
  $  REQ007:7E0 03 22 01 0E 00 00 00 00       $  ANS007:7E8 03 22 01 0E 00 00 00 00
  $  REQ008:7E0 03 22 01 10 00 00 00 00       $  ANS008:7E8 03 22 01 10 00 00 00 00
  $  REQ009:7E0 03 22 01 11 00 00 00 00       $  ANS009:7E8 03 22 01 11 00 00 00 00
  $  REQ010:7E0 03 22 01 14 00 00 00 00       $  ANS010:7E8 03 22 01 14 00 00 00 00
  $  REQ011:7E0 03 22 01 1E 00 00 00 00       $  ANS011:7E8 03 22 01 1E 00 00 00 00
  $  REQ012:7E0 03 22 01 20 00 00 00 00       $  ANS012:7E8 03 22 01 20 00 00 00 00
  $  REQ013:7E0 03 22 01 23 00 00 00 00       $  ANS013:7E8 03 22 01 23 00 00 00 00
  $  REQ014:7E0 03 22 01 25 00 00 00 00       $  ANS014:7E8 03 22 01 25 00 00 00 00
  $  REQ015:7E0 03 22 01 27 00 00 00 00       $  ANS015:7E8 03 22 01 27 00 00 00 00
  $  REQ016:7E0 03 22 01 28 00 00 00 00       $  ANS016:7E8 03 22 01 28 00 00 00 00
  $  REQ017:7E0 03 22 01 29 00 00 00 00       $  ANS017:7E8 03 22 01 29 00 00 00 00
  $  REQ018:7E0 03 22 01 2B 00 00 00 00       $  ANS018:7E8 03 22 01 2B 00 00 00 00
  $  REQ019:7E0 03 22 01 2C 00 00 00 00       $  ANS019:7E8 03 22 01 2C 00 00 00 00
  $  REQ020:7E0 03 22 01 2D 00 00 00 00       $  ANS020:7E8 03 22 01 2D 00 00 00 00
  $  REQ021:7E0 03 22 01 2F 00 00 00 00       $  ANS021:7E8 03 22 01 2F 00 00 00 00
  $  REQ022:7E0 03 22 01 31 00 00 00 00       $  ANS022:7E8 03 22 01 31 00 00 00 00
  $  REQ023:7E0 03 22 01 32 00 00 00 00       $  ANS023:7E8 03 22 01 32 00 00 00 00
  $  REQ024:7E0 03 22 01 36 00 00 00 00       $  ANS024:7E8 03 22 01 36 00 00 00 00
  $  REQ025:7E0 03 22 01 37 00 00 00 00       $  ANS025:7E8 03 22 01 37 00 00 00 00
  $  REQ026:7E0 03 22 01 3A 00 00 00 00       $  ANS026:7E8 03 22 01 3A 00 00 00 00
  $  REQ027:7E0 03 22 01 3B 00 00 00 00       $  ANS027:7E8 03 22 01 3B 00 00 00 00
  $  REQ028:7E0 03 22 01 3C 00 00 00 00       $  ANS028:7E8 03 22 01 3C 00 00 00 00
  $  REQ029:7E0 03 22 01 3D 00 00 00 00       $  ANS029:7E8 03 22 01 3D 00 00 00 00
  $  REQ030:7E0 03 22 01 3F 00 00 00 00       $  ANS030:7E8 03 22 01 3F 00 00 00 00
  $  REQ031:7E0 03 22 01 40 00 00 00 00       $  ANS031:7E8 03 22 01 40 00 00 00 00
  $  REQ032:7E0 03 22 01 41 00 00 00 00       $  ANS032:7E8 03 22 01 41 00 00 00 00
  $  REQ033:7E0 03 22 01 45 00 00 00 00       $  ANS033:7E8 03 22 01 45 00 00 00 00
  $  REQ034:7E0 03 22 01 46 00 00 00 00       $  ANS034:7E8 03 22 01 46 00 00 00 00
  $  REQ035:7E0 03 22 01 47 00 00 00 00       $  ANS035:7E8 03 22 01 47 00 00 00 00
  $  REQ036:7E0 03 22 01 48 00 00 00 00       $  ANS036:7E8 03 22 01 48 00 00 00 00
  $  REQ037:7E0 03 22 01 52 00 00 00 00       $  ANS037:7E8 03 22 01 52 00 00 00 00
  $  REQ038:7E0 03 22 01 54 00 00 00 00       $  ANS038:7E8 03 22 01 54 00 00 00 00
  $  REQ039:7E0 03 22 01 55 00 00 00 00       $  ANS039:7E8 03 22 01 55 00 00 00 00
  $  REQ040:7E0 03 22 01 56 00 00 00 00       $  ANS040:7E8 03 22 01 56 00 00 00 00
  $  REQ041:7E0 03 22 01 57 00 00 00 00       $  ANS041:7E8 03 22 01 57 00 00 00 00
  $  REQ042:7E0 03 22 01 58 00 00 00 00       $  ANS042:7E8 03 22 01 58 00 00 00 00
  $  REQ043:7E0 03 22 01 5B 00 00 00 00       $  ANS043:7E8 03 22 01 5B 00 00 00 00
  $  REQ044:7E0 03 22 01 5C 00 00 00 00       $  ANS044:7E8 03 22 01 5C 00 00 00 00
  $  REQ045:7E0 03 22 01 5D 00 00 00 00       $  ANS045:7E8 03 22 01 5D 00 00 00 00
  $  REQ046:7E0 03 22 01 60 00 00 00 00       $  ANS046:7E8 03 22 01 60 00 00 00 00
  $  REQ047:7E0 03 22 01 62 00 00 00 00       $  ANS047:7E8 03 22 01 62 00 00 00 00
  $  REQ048:7E0 03 22 01 63 00 00 00 00       $  ANS048:7E8 03 22 01 63 00 00 00 00
  $  REQ049:7E0 03 22 01 64 00 00 00 00       $  ANS049:7E8 03 22 01 64 00 00 00 00
  $  REQ050:7E0 03 22 01 65 00 00 00 00       $  ANS050:7E8 03 22 01 65 00 00 00 00
  $  REQ051:7E0 03 22 01 66 00 00 00 00       $  ANS051:7E8 03 22 01 66 00 00 00 00
  $  REQ052:7E0 03 22 01 6E 00 00 00 00       $  ANS052:7E8 03 22 01 6E 00 00 00 00
  $  REQ053:7E0 03 22 01 70 00 00 00 00       $  ANS053:7E8 03 22 01 70 00 00 00 00
  $  REQ054:7E0 03 22 01 71 00 00 00 00       $  ANS054:7E8 03 22 01 71 00 00 00 00
  $  REQ055:7E0 03 22 01 72 00 00 00 00       $  ANS055:7E8 03 22 01 72 00 00 00 00
  $  REQ056:7E0 03 22 01 73 00 00 00 00       $  ANS056:7E8 03 22 01 73 00 00 00 00
  $  REQ057:7E0 03 22 01 74 00 00 00 00       $  ANS057:7E8 03 22 01 74 00 00 00 00
  $  REQ058:7E0 03 22 01 75 00 00 00 00       $  ANS058:7E8 03 22 01 75 00 00 00 00
  $  REQ059:7E0 03 22 01 76 00 00 00 00       $  ANS059:7E8 03 22 01 76 00 00 00 00
  $  REQ060:7E0 03 22 01 77 00 00 00 00       $  ANS060:7E8 03 22 01 77 00 00 00 00
  $  REQ061:7E0 03 22 01 7C 00 00 00 00       $  ANS061:7E8 03 22 01 7C 00 00 00 00
  $  REQ062:7E0 03 22 01 7D 00 00 00 00       $  ANS062:7E8 03 22 01 7D 00 00 00 00
  $  REQ063:7E0 03 22 01 7E 00 00 00 00       $  ANS063:7E8 03 22 01 7E 00 00 00 00
  $  REQ064:7E0 03 22 01 7F 00 00 00 00       $  ANS064:7E8 03 22 01 7F 00 00 00 00
  $  REQ065:7E0 03 22 01 80 00 00 00 00       $  ANS065:7E8 03 22 01 80 00 00 00 00
  $  REQ066:7E0 03 22 01 81 00 00 00 00       $  ANS066:7E8 03 22 01 81 00 00 00 00
  $  REQ067:7E0 03 22 01 82 00 00 00 00       $  ANS067:7E8 03 22 01 82 00 00 00 00
  $  REQ068:7E0 03 22 01 83 00 00 00 00       $  ANS068:7E8 03 22 01 83 00 00 00 00
  $  REQ069:7E0 03 22 01 89 00 00 00 00       $  ANS069:7E8 03 22 01 89 00 00 00 00

  $  000.发动机转速                                        $    $  rpm         $    $  ANS000.BYTE004  $  y=INT((x1*0x100+x2)*0.25);
  $  001.起动结束后时间                                    $    $  s           $    $  ANS001.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  002.车速                                              $    $  km/h        $    $  ANS002.BYTE004  $  y=INT((x1*0x100+x2)*0.0078125);
  $  003.环境压力                                          $    $  hPa         $    $  ANS003.BYTE004  $  y=(x1*0x100+x2)*0.0390625;
  $  004.电瓶电压                                          $    $  V           $    $  ANS004.BYTE004  $  y=(x1*0x100+x2)*0.000390625;
  $  005.节气门相对于机械下止点的开度角                    $    $  %DK         $    $  ANS005.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.0244140625;else y=(x*0x100+x2-65536)*0.0244140625;
  $  006.进气温度                                          $    $  degC        $    $  ANS006.BYTE004  $  y=x*0.75-48;
  $  007.环境温度                                          $    $  degC        $    $  ANS007.BYTE004  $  y=x*0.75-48;
  $  008.加速踏板开度                                      $    $  %PED        $    $  ANS008.BYTE004  $  y=(x1*0x100+x2)*0.00152587890625;
  $  009.燃油流量(毫升/秒)                                 $    $  mL/s        $    $  ANS009.BYTE004  $  y=(x1*0x100+x2)*0.000596046447753906;
  $  010.排气歧管中的排气温度模型值                        $    $  degC        $    $  ANS010.BYTE004  $  y=(x1*0x100+x2)*0.0234375-273.15;
  $  011.相对进气量                                        $    $  %           $    $  ANS011.BYTE004  $  y=x*0.390625;
  $  012.进气流量                                          $    $  kg/h        $    $  ANS012.BYTE004  $  y=x*4;
  $  013.催化器下游氧传感器输出电压                        $    $  V           $    $  ANS013.BYTE004  $  y=x*0.00522875816993464-0.2;
  $  014.相对充气量                                        $    $  %           $    $  ANS014.BYTE004  $  y=x*0.75;
  $  015.ETS(电子牵引力控制系统)路径监控诊断环境条件       $    $  /           $    $  ANS015.BYTE004  $  y=x;
  $  016.扭矩路径诊断监控条件                              $    $  /           $    $  ANS016.BYTE004  $  y=x;
  $  017.监控功能用于扭矩比较的实际扭矩                    $    $  %           $    $  ANS017.BYTE004  $  y=x*0.390625;
  $  018.在错误时使用的发动机温度替代值                    $    $  degC        $    $  ANS018.BYTE004  $  y=x*0.75-48;
  $  019.相对于机械下止点的目标节气门开度                  $    $  %DK         $    $  ANS019.BYTE004  $  y=x*0.392156862745098;
  $  020.催化器下游排气温度模型值                          $    $  degC        $    $  ANS020.BYTE004  $  y=x*5-50;
  $  021.发动机冷却液温度                                  $    $  degC        $    $  ANS021.BYTE004  $  y=x*0.75-48;
  $  022.监控功能的计算实际扭矩                            $    $  %           $    $  ANS022.BYTE004  $  y=x*0.390625;
  $  023.当前档位                                          $    $  /           $    $  ANS023.BYTE004  $  y=x;
  $  024.实际点火角                                        $    $  Grad KW     $    $  ANS024.BYTE004  $  if(x<0x80) y=x*0.75;else y=(x-256)*0.75;
  $  025.替代负荷信号的流量修正系数                        $    $  /           $    $  ANS025.BYTE004  $  y=(x1*0x100+x2)*0.00006103515625;
  $  026.节气门电位计1的位置信号                           $    $  %DK         $    $  ANS026.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.0244140625;else y=(x*0x100+x2-65536)*0.0244140625;
  $  027.节气门电位计2的位置信号                           $    $  %DK         $    $  ANS027.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.0244140625;else y=(x*0x100+x2-65536)*0.0244140625;
  $  028.节气门体控制信号占空比                            $    $  %           $    $  ANS028.BYTE004  $  y=(x1*0x100+x2)*0.00152587890625;
  $  029.跛行模式下节气门位置                              $    $  %DK         $    $  ANS029.BYTE004  $  y=x*0.392156862745098;
  $  030.跛行模式下节气门电位计1电压                       $    $  V           $    $  ANS030.BYTE004  $  y=(x1*0x100+x2)*0.001220703125;
  $  031.机械下止点处的节气门电位计1电压信号               $    $  V           $    $  ANS031.BYTE004  $  y=x*0.01953125;
  $  032.车辆前进方向加速度                                $    $  m/s^2       $    $  ANS032.BYTE004  $  if(x<0x80) y=x*0.217;else y=(x-256)*0.217;
  $  033.进气歧管绝对压力                                  $    $  hPa         $    $  ANS033.BYTE004  $  y=(x1*0x100+x2)*0.0390625;
  $  034.离合器数                                          $    $  /           $    $  ANS034.BYTE004  $  y=x;
  $  035.进气温度                                          $    $  degC        $    $  ANS035.BYTE004  $  y=x*0.75-48;
  $  036.车速输出值                                        $    $  km/h        $    $  ANS036.BYTE004  $  y=INT((x1*0x100+x2)*0.0078125);
  $  037.进气VVT(可变气门正时)相对角度                     $    $  Grad KW     $    $  ANS037.BYTE004  $  y=INT((x1*0x100+x2)*0.0078125);
  $  038.目标进气VVT(可变气门正时)角度                     $    $  Grad KW     $    $  ANS038.BYTE004  $  y=INT((x1*0x100+x2)*0.0078125);
  $  039.曲轴与凸轮轴相对角度                              $    $  kW          $    $  ANS039.BYTE004  $  y=(x1*0x100+x2)*0.015625;
  $  040.机油温度                                          $    $  degC        $    $  ANS040.BYTE004  $  y=(x1*0x100+x2)*0.0234375-273.15;
  $  041.空燃比控制输出                                    $    $  /           $    $  ANS041.BYTE004  $  y=(x1*0x100+x2)*0.000030517578125;
  $  042.混合气自学习乘法修正系数                          $    $  /           $    $  ANS042.BYTE004  $  y=(x1*0x100+x2)*0.000030517578125;
  $  043.节气门开度电位计1信号电压                         $    $  V           $    $  ANS043.BYTE004  $  y=(x1*0x100+x2)*0.001220703125;
  $  044.节气门开度电位计2信号电压                         $    $  V           $    $  ANS044.BYTE004  $  y=(x1*0x100+x2)*0.001220703125;
  $  045.进气VVT(可变气门正时)控制占空比                   $    $  %           $    $  ANS045.BYTE004  $  y=(x1*0x100+x2)*0.0015258789;
  $  046.混合气自学习加法修正系数                          $    $  /           $    $  ANS046.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.046875;else  y=(x1*0x100+x2-65536)*0.046875;
  $  047.PWG(排气门)电位计电压                             $    $  V           $    $  ANS047.BYTE004  $  y=(x1*0x100+x2)*0.0048828125;
  $  048.PWG(排气门)电位计2电压                            $    $  V           $    $  ANS048.BYTE004  $  y=(x1*0x100+x2)*0.0048828125;
  $  049.翻倍的PWG(排气门)电位计2电压                      $    $  V           $    $  ANS049.BYTE004  $  y=(x1*0x100+x2)*0.0048828125;
  $  050.下游氧传感器陶瓷体内阻                            $    $  ohm         $    $  ANS050.BYTE004  $  y=(x1*0x100+x2)*2;
  $  051.前催化器上游排气温度模型值                        $    $  degC        $    $  ANS051.BYTE004  $  y=(x1*0x100+x2)*0.0234375-273.15;
  $  052.目标怠速                                          $    $  rpm         $    $  ANS052.BYTE004  $  y=x*10;
  $  053.1缸动态点火角推迟                                 $    $  Grad KW     $    $  ANS053.BYTE004  $  if(x<0x80) y=x*0.75;else y=(x-256)*0.75;
  $  054.2缸动态点火角推迟                                 $    $  Grad KW     $    $  ANS054.BYTE004  $  if(x<0x80) y=x*0.75;else y=(x-256)*0.75;
  $  055.3缸动态点火角推迟                                 $    $  Grad KW     $    $  ANS055.BYTE004  $  if(x<0x80) y=x*0.75;else y=(x-256)*0.75;
  $  056.4缸动态点火角推迟                                 $    $  Grad KW     $    $  ANS056.BYTE004  $  if(x<0x80) y=x*0.75;else y=(x-256)*0.75;
  $  057.1缸爆震信号参考电平                               $    $  V           $    $  ANS057.BYTE004  $  y=(x1*0x100+x2)*0.0000762939453125;
  $  058.2缸爆震信号参考电平                               $    $  V           $    $  ANS058.BYTE004  $  y=(x1*0x100+x2)*0.0000762939453125;
  $  059.3缸爆震信号参考电平                               $    $  V           $    $  ANS059.BYTE004  $  y=(x1*0x100+x2)*0.0000762939453125;
  $  060.4缸爆震信号参考电平                               $    $  V           $    $  ANS060.BYTE004  $  y=(x1*0x100+x2)*0.0000762939453125;
  $  061.发动机起动水温                                    $    $  degC        $    $  ANS061.BYTE004  $  y=x*0.75-48;
  $  062.碳罐阀流量                                        $    $  kg/h        $    $  ANS062.BYTE004  $  y=(x1*0x100+x2)*0.000390625;
  $  063.基础点火角                                        $    $  Grad KW     $    $  ANS063.BYTE004  $  if(x<0x80) y=x*0.75;else y=(x-256)*0.75;
  $  064.失火率                                            $    $  /           $    $  ANS064.BYTE004  $  y=(x1*0x100+x2);
  $  065.1缸失火次数                                       $    $  /           $    $  ANS065.BYTE004  $  y=(x1*0x100+x2);
  $  066.2缸失火次数                                       $    $  /           $    $  ANS066.BYTE004  $  y=(x1*0x100+x2);
  $  067.3缸失火次数                                       $    $  /           $    $  ANS067.BYTE004  $  y=(x1*0x100+x2);
  $  068.4缸失火次数                                       $    $  /           $    $  ANS068.BYTE004  $  y=(x1*0x100+x2);
  $  069.怠速控制扭矩修正                                  $    $  %           $    $  ANS069.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.0030517578125;else y=(x1*0x100+x2-65536)*0.0030517578125;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
