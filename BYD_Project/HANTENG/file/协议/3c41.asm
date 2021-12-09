
    车型ID：3c41

    模拟：协议模拟-->3c41

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E0,7E8

进入命令:

  $~  REQ000:7E0 02 10 03 00 00 00 00 00       $~  ANS000:7E0 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:7E0 02 3E 00 00 00 00 00 00       $!  ANS000:7E0 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E0 03 19 02 09 00 00 00 00       $#  ANS000:7E0 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/3c410000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E0 04 14 FF FF FF 00 00 00       $$  ANS000:7E0 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 03 22 F1 87 00 00 00 00       $%  ANS000:7E0 03 22 F1 87 00 00 00 00
  $%  REQ001:7E0 03 22 F1 8A 00 00 00 00       $%  ANS001:7E0 03 22 F1 8A 00 00 00 00
  $%  REQ002:7E0 03 22 F1 8C 00 00 00 00       $%  ANS002:7E0 03 22 F1 8C 00 00 00 00
  $%  REQ003:7E0 03 22 F1 90 00 00 00 00       $%  ANS003:7E0 03 22 F1 90 00 00 00 00
  $%  REQ004:7E0 03 22 F1 92 00 00 00 00       $%  ANS004:7E0 03 22 F1 92 00 00 00 00
  $%  REQ005:7E0 03 22 F1 93 00 00 00 00       $%  ANS005:7E0 03 22 F1 93 00 00 00 00
  $%  REQ006:7E0 03 22 F1 94 00 00 00 00       $%  ANS006:7E0 03 22 F1 94 00 00 00 00
  $%  REQ007:7E0 03 22 F1 95 00 00 00 00       $%  ANS007:7E0 03 22 F1 95 00 00 00 00

  $%  000:车辆制造商零件号:                 $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:系统数据识别:                     $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:电控单元(ECU)的序列号信息:        $%    $%  ANS002.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:车辆识别码(VIN码):                $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  004:电控单元(ECU)硬件号:              $%    $%  ANS004.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  005:电控单元(ECU)硬件版本号:          $%    $%  ANS005.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  006:电控单元(ECU)软件号:              $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  007:电控单元(ECU)软件版本号:          $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E0 03 22 11 41 00 00 00 00       $  ANS000:7E0 03 22 11 41 00 00 00 00
  $  REQ001:7E0 03 22 11 44 00 00 00 00       $  ANS001:7E0 03 22 11 44 00 00 00 00
  $  REQ002:7E0 03 22 11 45 00 00 00 00       $  ANS002:7E0 03 22 11 45 00 00 00 00
  $  REQ003:7E0 03 22 11 46 00 00 00 00       $  ANS003:7E0 03 22 11 46 00 00 00 00
  $  REQ004:7E0 03 22 11 4B 00 00 00 00       $  ANS004:7E0 03 22 11 4B 00 00 00 00
  $  REQ005:7E0 03 22 11 4E 00 00 00 00       $  ANS005:7E0 03 22 11 4E 00 00 00 00
  $  REQ006:7E0 03 22 11 52 00 00 00 00       $  ANS006:7E0 03 22 11 52 00 00 00 00
  $  REQ007:7E0 03 22 11 55 00 00 00 00       $  ANS007:7E0 03 22 11 55 00 00 00 00
  $  REQ008:7E0 03 22 11 5E 00 00 00 00       $  ANS008:7E0 03 22 11 5E 00 00 00 00
  $  REQ009:7E0 03 22 11 64 00 00 00 00       $  ANS009:7E0 03 22 11 64 00 00 00 00
  $  REQ010:7E0 03 22 11 6F 00 00 00 00       $  ANS010:7E0 03 22 11 6F 00 00 00 00
  $  REQ011:7E0 03 22 11 71 00 00 00 00       $  ANS011:7E0 03 22 11 71 00 00 00 00
  $  REQ012:7E0 03 22 11 90 00 00 00 00       $  ANS012:7E0 03 22 11 90 00 00 00 00
  $  REQ013:7E0 03 22 11 92 00 00 00 00       $  ANS013:7E0 03 22 11 92 00 00 00 00
  $  REQ014:7E0 03 22 11 93 00 00 00 00       $  ANS014:7E0 03 22 11 93 00 00 00 00
  $  REQ015:7E0 03 22 11 9B 00 00 00 00       $  ANS015:7E0 03 22 11 9B 00 00 00 00
  $  REQ016:7E0 03 22 11 9D 00 00 00 00       $  ANS016:7E0 03 22 11 9D 00 00 00 00
  $  REQ017:7E0 03 22 11 9E 00 00 00 00       $  ANS017:7E0 03 22 11 9E 00 00 00 00
  $  REQ018:7E0 03 22 11 A0 00 00 00 00       $  ANS018:7E0 03 22 11 A0 00 00 00 00
  $  REQ019:7E0 03 22 11 A1 00 00 00 00       $  ANS019:7E0 03 22 11 A1 00 00 00 00
  $  REQ020:7E0 03 22 11 A3 00 00 00 00       $  ANS020:7E0 03 22 11 A3 00 00 00 00
  $  REQ021:7E0 03 22 11 A6 00 00 00 00       $  ANS021:7E0 03 22 11 A6 00 00 00 00
  $  REQ022:7E0 03 22 11 AC 00 00 00 00       $  ANS022:7E0 03 22 11 AC 00 00 00 00
  $  REQ023:7E0 03 22 11 BB 00 00 00 00       $  ANS023:7E0 03 22 11 BB 00 00 00 00
  $  REQ024:7E0 03 22 11 BD 00 00 00 00       $  ANS024:7E0 03 22 11 BD 00 00 00 00
  $  REQ025:7E0 03 22 11 BE 00 00 00 00       $  ANS025:7E0 03 22 11 BE 00 00 00 00
  $  REQ026:7E0 03 22 11 C0 00 00 00 00       $  ANS026:7E0 03 22 11 C0 00 00 00 00
  $  REQ027:7E0 03 22 11 C1 00 00 00 00       $  ANS027:7E0 03 22 11 C1 00 00 00 00
  $  REQ028:7E0 03 22 11 D7 00 00 00 00       $  ANS028:7E0 03 22 11 D7 00 00 00 00
  $  REQ029:7E0 03 22 11 E4 00 00 00 00       $  ANS029:7E0 03 22 11 E4 00 00 00 00
  $  REQ030:7E0 03 22 11 E6 00 00 00 00       $  ANS030:7E0 03 22 11 E6 00 00 00 00
  $  REQ031:7E0 03 22 11 E8 00 00 00 00       $  ANS031:7E0 03 22 11 E8 00 00 00 00
  $  REQ032:7E0 03 22 12 00 00 00 00 00       $  ANS032:7E0 03 22 12 00 00 00 00 00
  $  REQ033:7E0 03 22 12 01 00 00 00 00       $  ANS033:7E0 03 22 12 01 00 00 00 00
  $  REQ034:7E0 03 22 12 02 00 00 00 00       $  ANS034:7E0 03 22 12 02 00 00 00 00
  $  REQ035:7E0 03 22 12 03 00 00 00 00       $  ANS035:7E0 03 22 12 03 00 00 00 00
  $  REQ036:7E0 03 22 12 04 00 00 00 00       $  ANS036:7E0 03 22 12 04 00 00 00 00
  $  REQ037:7E0 03 22 12 05 00 00 00 00       $  ANS037:7E0 03 22 12 05 00 00 00 00
  $  REQ038:7E0 03 22 12 06 00 00 00 00       $  ANS038:7E0 03 22 12 06 00 00 00 00
  $  REQ039:7E0 03 22 12 07 00 00 00 00       $  ANS039:7E0 03 22 12 07 00 00 00 00
  $  REQ040:7E0 03 22 12 08 00 00 00 00       $  ANS040:7E0 03 22 12 08 00 00 00 00
  $  REQ041:7E0 03 22 12 12 00 00 00 00       $  ANS041:7E0 03 22 12 12 00 00 00 00
  $  REQ042:7E0 03 22 12 1A 00 00 00 00       $  ANS042:7E0 03 22 12 1A 00 00 00 00
  $  REQ043:7E0 03 22 12 1E 00 00 00 00       $  ANS043:7E0 03 22 12 1E 00 00 00 00
  $  REQ044:7E0 03 22 12 27 00 00 00 00       $  ANS044:7E0 03 22 12 27 00 00 00 00
  $  REQ045:7E0 03 22 12 28 00 00 00 00       $  ANS045:7E0 03 22 12 28 00 00 00 00
  $  REQ046:7E0 03 22 12 35 00 00 00 00       $  ANS046:7E0 03 22 12 35 00 00 00 00
  $  REQ047:7E0 03 22 12 36 00 00 00 00       $  ANS047:7E0 03 22 12 36 00 00 00 00
  $  REQ048:7E0 03 22 12 37 00 00 00 00       $  ANS048:7E0 03 22 12 37 00 00 00 00
  $  REQ049:7E0 03 22 12 38 00 00 00 00       $  ANS049:7E0 03 22 12 38 00 00 00 00
  $  REQ050:7E0 03 22 12 39 00 00 00 00       $  ANS050:7E0 03 22 12 39 00 00 00 00
  $  REQ051:7E0 03 22 12 3F 00 00 00 00       $  ANS051:7E0 03 22 12 3F 00 00 00 00
  $  REQ052:7E0 03 22 12 41 00 00 00 00       $  ANS052:7E0 03 22 12 41 00 00 00 00
  $  REQ053:7E0 03 22 12 43 00 00 00 00       $  ANS053:7E0 03 22 12 43 00 00 00 00
  $  REQ054:7E0 03 22 12 92 00 00 00 00       $  ANS054:7E0 03 22 12 92 00 00 00 00
  $  REQ055:7E0 03 22 12 B0 00 00 00 00       $  ANS055:7E0 03 22 12 B0 00 00 00 00
  $  REQ056:7E0 03 22 12 B1 00 00 00 00       $  ANS056:7E0 03 22 12 B1 00 00 00 00
  $  REQ057:7E0 03 22 12 B4 00 00 00 00       $  ANS057:7E0 03 22 12 B4 00 00 00 00
  $  REQ058:7E0 03 22 12 B5 00 00 00 00       $  ANS058:7E0 03 22 12 B5 00 00 00 00
  $  REQ059:7E0 03 22 12 B7 00 00 00 00       $  ANS059:7E0 03 22 12 B7 00 00 00 00
  $  REQ060:7E0 03 22 12 B8 00 00 00 00       $  ANS060:7E0 03 22 12 B8 00 00 00 00
  $  REQ061:7E0 03 22 12 C5 00 00 00 00       $  ANS061:7E0 03 22 12 C5 00 00 00 00
  $  REQ062:7E0 03 22 12 D4 00 00 00 00       $  ANS062:7E0 03 22 12 D4 00 00 00 00
  $  REQ063:7E0 03 22 12 E2 00 00 00 00       $  ANS063:7E0 03 22 12 E2 00 00 00 00
  $  REQ064:7E0 03 22 12 E5 00 00 00 00       $  ANS064:7E0 03 22 12 E5 00 00 00 00
  $  REQ065:7E0 03 22 12 ED 00 00 00 00       $  ANS065:7E0 03 22 12 ED 00 00 00 00
  $  REQ066:7E0 03 22 12 EF 00 00 00 00       $  ANS066:7E0 03 22 12 EF 00 00 00 00
  $  REQ067:7E0 03 22 13 1E 00 00 00 00       $  ANS067:7E0 03 22 13 1E 00 00 00 00
  $  REQ068:7E0 03 22 13 3C 00 00 00 00       $  ANS068:7E0 03 22 13 3C 00 00 00 00
  $  REQ069:7E0 03 22 13 3D 00 00 00 00       $  ANS069:7E0 03 22 13 3D 00 00 00 00
  $  REQ070:7E0 03 22 13 3E 00 00 00 00       $  ANS070:7E0 03 22 13 3E 00 00 00 00
  $  REQ071:7E0 03 22 13 3F 00 00 00 00       $  ANS071:7E0 03 22 13 3F 00 00 00 00
  $  REQ072:7E0 03 22 13 44 00 00 00 00       $  ANS072:7E0 03 22 13 44 00 00 00 00
  $  REQ073:7E0 03 22 13 45 00 00 00 00       $  ANS073:7E0 03 22 13 45 00 00 00 00
  $  REQ074:7E0 03 22 13 46 00 00 00 00       $  ANS074:7E0 03 22 13 46 00 00 00 00
  $  REQ075:7E0 03 22 14 4B 00 00 00 00       $  ANS075:7E0 03 22 14 4B 00 00 00 00
  $  REQ076:7E0 03 22 14 4C 00 00 00 00       $  ANS076:7E0 03 22 14 4C 00 00 00 00
  $  REQ077:7E0 03 22 14 69 00 00 00 00       $  ANS077:7E0 03 22 14 69 00 00 00 00
  $  REQ078:7E0 03 22 14 71 00 00 00 00       $  ANS078:7E0 03 22 14 71 00 00 00 00
  $  REQ079:7E0 03 22 14 72 00 00 00 00       $  ANS079:7E0 03 22 14 72 00 00 00 00
  $  REQ080:7E0 03 22 14 73 00 00 00 00       $  ANS080:7E0 03 22 14 73 00 00 00 00
  $  REQ081:7E0 03 22 14 74 00 00 00 00       $  ANS081:7E0 03 22 14 74 00 00 00 00
  $  REQ082:7E0 03 22 14 75 00 00 00 00       $  ANS082:7E0 03 22 14 75 00 00 00 00
  $  REQ083:7E0 03 22 14 76 00 00 00 00       $  ANS083:7E0 03 22 14 76 00 00 00 00
  $  REQ084:7E0 03 22 14 81 00 00 00 00       $  ANS084:7E0 03 22 14 81 00 00 00 00
  $  REQ085:7E0 03 22 14 82 00 00 00 00       $  ANS085:7E0 03 22 14 82 00 00 00 00
  $  REQ086:7E0 03 22 15 00 00 00 00 00       $  ANS086:7E0 03 22 15 00 00 00 00 00
  $  REQ087:7E0 03 22 15 01 00 00 00 00       $  ANS087:7E0 03 22 15 01 00 00 00 00
  $  REQ088:7E0 03 22 15 09 00 00 00 00       $  ANS088:7E0 03 22 15 09 00 00 00 00
  $  REQ089:7E0 03 22 15 0B 00 00 00 00       $  ANS089:7E0 03 22 15 0B 00 00 00 00
  $  REQ090:7E0 03 22 15 22 00 00 00 00       $  ANS090:7E0 03 22 15 22 00 00 00 00
  $  REQ091:7E0 03 22 15 3D 00 00 00 00       $  ANS091:7E0 03 22 15 3D 00 00 00 00
  $  REQ092:7E0 03 22 15 41 00 00 00 00       $  ANS092:7E0 03 22 15 41 00 00 00 00
  $  REQ093:7E0 03 22 15 42 00 00 00 00       $  ANS093:7E0 03 22 15 42 00 00 00 00
  $  REQ094:7E0 03 22 16 03 00 00 00 00       $  ANS094:7E0 03 22 16 03 00 00 00 00
  $  REQ095:7E0 03 22 16 78 00 00 00 00       $  ANS095:7E0 03 22 16 78 00 00 00 00
  $  REQ096:7E0 03 22 16 79 00 00 00 00       $  ANS096:7E0 03 22 16 79 00 00 00 00

  $  000.电瓶电压                                       $    $  V         $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.空调压缩机电压                                 $    $  V         $    $  ANS001.BYTE004  $  y=x*5.0/255;
  $  002.氧传感器电压(B1-S1)                            $    $  mV        $    $  ANS002.BYTE004  $  y=x*4.34;
  $  003.氧传感器电压(B1-S2)                            $    $  mV        $    $  ANS003.BYTE004  $  y=x*4.34;
  $  004.线性废气再循环(EGR)反馈电压                    $    $  V         $    $  ANS004.BYTE004  $  y=x*0.02;
  $  005.汽缸的真空压力电压                             $    $  V         $    $  ANS005.BYTE004  $  y=x*0.02;
  $  006.线性废气再循环(EGR)标准                        $    $  %         $    $  ANS006.BYTE004  $  y=x*100/255;
  $  007.燃油位置传感器                                 $    $  V         $    $  ANS007.BYTE004  $  y=x*0.02;
  $  008.凸轮轴回转次数                                 $    $  次        $    $  ANS008.BYTE004  $  y=x;
  $  009.车轮/车辆输入速度                              $    $  km/h      $    $  ANS009.BYTE004  $  y=x;
  $  010.冷却液温度                                     $    $  degC      $    $  ANS010.BYTE004  $  y=x-40;
  $  011.碳罐电磁阀占空比                               $    $  %         $    $  ANS011.BYTE004  $  y=x*100.00/255;
  $  012.燃油修正值                                     $    $  Cell      $    $  ANS012.BYTE004  $  y=x;
  $  013.期望怠速转速                                   $    $  rpm       $    $  ANS013.BYTE004  $  y=x*12.5;
  $  014.喷油脉宽                                       $    $  MS        $    $  ANS014.BYTE004  $  y=(x1*996.11+x2*3.89)/255;
  $  015.请求线性废气再循环(EGR)位置                    $    $  %         $    $  ANS015.BYTE004  $  y=x*100.0/255;
  $  016.大气压力                                       $    $  kpa       $    $  ANS016.BYTE004  $  y=x*104.43/255+10.33;
  $  017.空燃比                                         $    $  Ratio     $    $  ANS017.BYTE004  $  y=x*0.1;
  $  018.爆震计数器                                     $    $  次        $    $  ANS018.BYTE004  $  y=x;
  $  019.发动机运行时间                                 $    $  s         $    $  ANS019.BYTE004  $  y=x1*256+x2;
  $  020.转换器的温度                                   $    $  degC      $    $  ANS020.BYTE004  $  y=x*3+300;
  $  021.爆震延迟                                       $    $  °Adv     $    $  ANS021.BYTE004  $  y=x*22.5/255;
  $  022.空气流量                                       $    $  GPS       $    $  ANS022.BYTE004  $  y=x*2.00;
  $  023.废气再循环(EGR) 关闭枢轴位置                   $    $  %         $    $  ANS023.BYTE004  $  y=x1*199.2+x2*0.78;
  $  024.废气再循环(EGR) 测试样本数减速试验             $    $  次        $    $  ANS024.BYTE004  $  y=x;
  $  025.废气再循环(EGR) EWMA阈值                       $    $  次        $    $  ANS025.BYTE004  $  y=x1*256+x2;
  $  026.废气再循环(EGR) EWMA结果(服务)                 $    $  次        $    $  ANS026.BYTE004  $  y=x1*256+x2;
  $  027.废气再循环(EGR) 枢轴位置错误                   $    $  次        $    $  ANS027.BYTE004  $  y=(x1*398.44+x2*1.56)/255;
  $  028.Bank1 前氧稀浓转换                             $    $  次        $    $  ANS028.BYTE004  $  y=x1*256+x2;
  $  029.气缸失火次数(Cylinder Mode)                    $    $  次        $    $  ANS029.BYTE004  $  y=x1*256+x2;
  $  030.气缸失火次数(Revolution Mode)                  $    $  次        $    $  ANS030.BYTE004  $  y=x1*256+x2;
  $  031.气缸失火延迟次数                               $    $  次        $    $  ANS031.BYTE004  $  y=x;
  $  032.总失火次数(当前)                               $    $  次        $    $  ANS032.BYTE004  $  if(x<0x80) y=0;else y=1;
  $  033.历史气缸失火次数#1                             $    $  次        $    $  ANS033.BYTE004  $  y=x1*256+x2;
  $  034.历史气缸失火次数#2                             $    $  次        $    $  ANS034.BYTE004  $  y=x1*256+x2;
  $  035.历史气缸失火次数#3                             $    $  次        $    $  ANS035.BYTE004  $  y=x1*256+x2;
  $  036.历史气缸失火次数#4                             $    $  次        $    $  ANS036.BYTE004  $  y=x1*256+x2;
  $  037.当前气缸失火次数#1                             $    $  次        $    $  ANS037.BYTE004  $  y=x;
  $  038.当前气缸失火次数#2                             $    $  次        $    $  ANS038.BYTE004  $  y=x;
  $  039.当前气缸失火次数#3                             $    $  次        $    $  ANS039.BYTE004  $  y=x;
  $  040.当前气缸失火次数#4                             $    $  次        $    $  ANS040.BYTE004  $  y=x;
  $  041.Bank1 前氧浓-稀与稀-浓响应                     $    $  Ratio     $    $  ANS041.BYTE004  $  y=x*0.6;
  $  042.Bank1 前氧浓稀转换                             $    $  次        $    $  ANS042.BYTE004  $  y=x1*256+x2;
  $  043.发动机行驶里程                                 $    $  km        $    $  ANS043.BYTE004  $  y=x1*2560+x2*10;
  $  044.首次故障后气缸失火次数                         $    $  次        $    $  ANS044.BYTE004  $  y=x1*256+x2;
  $  045.失火诊断第一次失火失败后的Pass次数             $    $  次        $    $  ANS045.BYTE004  $  y=x1*256+x2;
  $  046.冻结帧里，第一次出故障时的里程                 $    $  km        $    $  ANS046.BYTE004  $  y=x1*1280+x2*5;
  $  047.最近行驶里程                                   $    $  km        $    $  ANS047.BYTE004  $  y=x1*1280+x2*5;
  $  048.IG点火循环周期故障条件成立次数                 $    $  次        $    $  ANS048.BYTE004  $  y=x;
  $  049.IG点火循环周期故障条件失败次数                 $    $  次        $    $  ANS049.BYTE004  $  y=x;
  $  050.诊断没有使能的启动数量                         $    $  次        $    $  ANS050.BYTE004  $  y=x;
  $  051.Bank1前氧由稀到浓响应时间                      $    $  ms        $    $  ANS051.BYTE004  $  y=x1*1999.36+x2*7.81;
  $  052.Bank1前氧由浓到稀响应时间                      $    $  ms        $    $  ANS052.BYTE004  $  y=x1*1999.36+x2*7.81;
  $  053.Bank1前氧由稀动浓平均响应时间                  $    $  ms        $    $  ANS053.BYTE004  $  y=x1*0.5+x2*0.5/255;
  $  054.发动机怠速错误值                               $    $  rpm       $    $  ANS054.BYTE004  $  y=(x1*256+x2)/8-4096;
  $  055.电子节气门(ETC)油门踏板位置                    $    $  %         $    $  ANS055.BYTE004  $  y=x1*0.78+x2*0.78/255;
  $  056.电子节气门(ETC)节气门位置                      $    $  %         $    $  ANS056.BYTE004  $  y=x1*0.5+x2*0.5/255;
  $  057.电子节气门(ETC)踏板位置传感器#1                $    $  %         $    $  ANS057.BYTE004  $  y=x1*0.78+x2*0.78/255;
  $  058.电子节气门(ETC)踏板位置传感器#2                $    $  %         $    $  ANS058.BYTE004  $  y=x1*0.78+x2*0.78/255;
  $  059.电子节气门(ETC)节气门位置传感器#1              $    $  %         $    $  ANS059.BYTE004  $  y=x1*0.78+x2*0.78/255;
  $  060.电子节气门(ETC)节气门位置传感器#2              $    $  %         $    $  ANS060.BYTE004  $  y=x1*0.78+x2*0.78/255;
  $  061.燃料输出等级                                   $    $  %         $    $  ANS061.BYTE004  $  y=x*100/255;
  $  062.Bank1前氧浓到稀平均响应时间                    $    $  ms        $    $  ANS062.BYTE004  $  y=x1*0.5+x2*0.5/255;
  $  063.起动进气温度                                   $    $  degC      $    $  ANS063.BYTE004  $  y=x-40;
  $  064.进气歧管压力变化差                             $    $  kpa       $    $  ANS064.BYTE004  $  y=x1*2+x2*2/256-256;
  $  065.G传感器                                        $    $  V         $    $  ANS065.BYTE004  $  y=(x*256-32768)/4096;
  $  066.尝试学齿                                       $    $  次        $    $  ANS066.BYTE004  $  y=x;
  $  067.期望节气门位置                                 $    $  %         $    $  ANS067.BYTE004  $  y=x1*0.5+x2*0.5/255;
  $  068.1缸学齿值                                      $    $  次        $    $  ANS068.BYTE004  $  y=x1*256+x2;
  $  069.2缸学齿值                                      $    $  次        $    $  ANS069.BYTE004  $  y=x1*256+x2;
  $  070.3缸学齿值                                      $    $  次        $    $  ANS070.BYTE004  $  y=x1*256+x2;
  $  071.4缸学齿值                                      $    $  次        $    $  ANS071.BYTE004  $  y=x1*256+x2;
  $  072.经EWMA滤波后废气再循环(EGR) flow测试结果       $    $  次        $    $  ANS072.BYTE004  $  y=x1*256+x2;
  $  073.触发EWMA更新后累计的pass次数                   $    $  次        $    $  ANS073.BYTE004  $  y=x1*256+x2;
  $  074.触发EWMA更新后累计的fail次数                   $    $  次        $    $  ANS074.BYTE004  $  y=x1*256+x2;
  $  075.催化器诊断储氧时间滤波值                       $    $  s         $    $  ANS075.BYTE004  $  y=x1*4+x2*0.02/255;
  $  076.催化器诊断储氧时间失效值                       $    $  s         $    $  ANS076.BYTE004  $  y=x1*4+x2*0.02/255;
  $  077.空调压缩机压力                                 $    $  kpa       $    $  ANS077.BYTE004  $  y=(x1*256+x2)/8-4096;
  $  078.进气门凸轮相位器要求位置                       $    $            $    $  ANS078.BYTE004  $  y=x-127;
  $  079.排气孔凸轮项位器要求位置                       $    $            $    $  ANS079.BYTE004  $  y=x-127;
  $  080.进气门凸轮相位器当前位置                       $    $            $    $  ANS080.BYTE004  $  y=x-127;
  $  081.排气孔凸轮相位器当前位置                       $    $            $    $  ANS081.BYTE004  $  y=x-127;
  $  082.进气门凸轮相位器工作周期                       $    $  E%        $    $  ANS082.BYTE004  $  y=x*1.00/255;
  $  083.排气孔凸轮相位器工作周期                       $    $  E%        $    $  ANS083.BYTE004  $  y=x*1.00/255;
  $  084.氧传感器加热反馈电流1                          $    $  E         $    $  ANS084.BYTE004  $  y=x1*5.12+x2*5.10/255;
  $  085.氧传感器加热反馈电流2                          $    $  E         $    $  ANS085.BYTE004  $  y=x1*5.12+x2*5.10/255;
  $  086.使能ICMD最小的催化剂温度                       $    $  degC      $    $  ANS086.BYTE004  $  y=x1*16+x2*16/256-2048;
  $  087.使能ICMD最大的催化剂温度                       $    $  degC      $    $  ANS087.BYTE004  $  y=x1*16+x2*16/256-2048;
  $  088.上次催化器诊断结果                             $    $  s         $    $  ANS088.BYTE004  $  y=x1*4+x2*0.02/255;
  $  089.催化器诊断阶段计时器                           $    $  s         $    $  ANS089.BYTE004  $  y=x1*4+x2*0.02/255;
  $  090.节气门位置                                     $    $  %         $    $  ANS090.BYTE004  $  y=x1*0.5+x2*0.5/255;
  $  091.巡航车速错误                                   $    $  km/h      $    $  ANS091.BYTE004  $  y=x1*2+x2*2/256-256;
  $  092.巡航目标车速                                   $    $  km/h      $    $  ANS092.BYTE004  $  y=x1*2+x2*2/256;
  $  093.巡航所需的发动机扭矩                           $    $  Nm        $    $  ANS093.BYTE004  $  y=x1*16+x2*16/256-2048;
  $  094.使能VCPC油温                                   $    $  degC      $    $  ANS094.BYTE004  $  y=x-40;
  $  095.氧传感器加热电流(B1-S1)                        $    $  amps      $    $  ANS095.BYTE004  $  y=x1*0.5+x2*0.5/255;
  $  096.氧传感器加热电流(B1-S2)                        $    $  amps      $    $  ANS096.BYTE004  $  y=x1*0.5+x2*0.5/255;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
