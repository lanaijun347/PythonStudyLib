
    车型ID：0648

    模拟：协议模拟-->0648

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

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/c8000000


  $#  01.读故障码库
  $#  REQ000:7E0 02 19 0A 00 00 00 00 00       $#  ANS000:7E8 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/c8000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E0 04 14 FF FF FF 00 00 00       $$  ANS000:7E8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 03 22 F1 12 00 00 00 00       $%  ANS000:7E8 03 22 F1 12 00 00 00 00
  $%  REQ001:7E0 03 22 F1 87 00 00 00 00       $%  ANS001:7E8 03 22 F1 87 00 00 00 00
  $%  REQ002:7E0 03 22 F1 8A 00 00 00 00       $%  ANS002:7E8 03 22 F1 8A 00 00 00 00
  $%  REQ003:7E0 03 22 F1 90 00 00 00 00       $%  ANS003:7E8 03 22 F1 90 00 00 00 00
  $%  REQ004:7E0 03 22 F1 93 00 00 00 00       $%  ANS004:7E8 03 22 F1 93 00 00 00 00
  $%  REQ005:7E0 03 22 F1 95 00 00 00 00       $%  ANS005:7E8 03 22 F1 95 00 00 00 00
  $%  REQ006:7E0 03 22 F1 96 00 00 00 00       $%  ANS006:7E8 03 22 F1 96 00 00 00 00
  $%  REQ007:7E0 03 22 F1 97 00 00 00 00       $%  ANS007:7E8 03 22 F1 97 00 00 00 00
  $%  REQ008:7E0 03 22 F1 99 00 00 00 00       $%  ANS008:7E8 03 22 F1 99 00 00 00 00
  $%  REQ009:7E0 03 22 F1 9D 00 00 00 00       $%  ANS009:7E8 03 22 F1 9D 00 00 00 00

  $%  000:车辆名称:                                  $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                                    $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:供应商代号:                                $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:车辆识别号(VIN码):                         $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  004:系统供应商ECU(电子控制器)硬件版本号:       $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  005:系统供应商ECU(电子控制器)软件版本号:       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  006:排放法规或形式认证号:                      $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  007:系统名称或发动机类型:                      $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  008:编程日期:                                  $%    $%  ANS008.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  009:ECU(电子控制器)安装日期:                   $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

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
  $  REQ008:7E0 03 22 01 0F 00 00 00 00       $  ANS008:7E8 03 22 01 0F 00 00 00 00
  $  REQ009:7E0 03 22 01 10 00 00 00 00       $  ANS009:7E8 03 22 01 10 00 00 00 00
  $  REQ010:7E0 03 22 01 11 00 00 00 00       $  ANS010:7E8 03 22 01 11 00 00 00 00
  $  REQ011:7E0 03 22 01 13 00 00 00 00       $  ANS011:7E8 03 22 01 13 00 00 00 00
  $  REQ012:7E0 03 22 01 14 00 00 00 00       $  ANS012:7E8 03 22 01 14 00 00 00 00
  $  REQ013:7E0 03 22 01 15 00 00 00 00       $  ANS013:7E8 03 22 01 15 00 00 00 00
  $  REQ014:7E0 03 22 01 18 00 00 00 00       $  ANS014:7E8 03 22 01 18 00 00 00 00
  $  REQ015:7E0 03 22 01 1C 00 00 00 00       $  ANS015:7E8 03 22 01 1C 00 00 00 00
  $  REQ016:7E0 03 22 01 1E 00 00 00 00       $  ANS016:7E8 03 22 01 1E 00 00 00 00
  $  REQ017:7E0 03 22 01 20 00 00 00 00       $  ANS017:7E8 03 22 01 20 00 00 00 00
  $  REQ018:7E0 03 22 01 23 00 00 00 00       $  ANS018:7E8 03 22 01 23 00 00 00 00
  $  REQ019:7E0 03 22 01 25 00 00 00 00       $  ANS019:7E8 03 22 01 25 00 00 00 00
  $  REQ020:7E0 03 22 01 27 00 00 00 00       $  ANS020:7E8 03 22 01 27 00 00 00 00
  $  REQ021:7E0 03 22 01 28 00 00 00 00       $  ANS021:7E8 03 22 01 28 00 00 00 00
  $  REQ022:7E0 03 22 01 29 00 00 00 00       $  ANS022:7E8 03 22 01 29 00 00 00 00
  $  REQ023:7E0 03 22 01 2B 00 00 00 00       $  ANS023:7E8 03 22 01 2B 00 00 00 00
  $  REQ024:7E0 03 22 01 2C 00 00 00 00       $  ANS024:7E8 03 22 01 2C 00 00 00 00
  $  REQ025:7E0 03 22 01 2D 00 00 00 00       $  ANS025:7E8 03 22 01 2D 00 00 00 00
  $  REQ026:7E0 03 22 01 2F 00 00 00 00       $  ANS026:7E8 03 22 01 2F 00 00 00 00
  $  REQ027:7E0 03 22 01 30 00 00 00 00       $  ANS027:7E8 03 22 01 30 00 00 00 00
  $  REQ028:7E0 03 22 01 31 00 00 00 00       $  ANS028:7E8 03 22 01 31 00 00 00 00
  $  REQ029:7E0 03 22 01 32 00 00 00 00       $  ANS029:7E8 03 22 01 32 00 00 00 00
  $  REQ030:7E0 03 22 01 33 00 00 00 00       $  ANS030:7E8 03 22 01 33 00 00 00 00
  $  REQ031:7E0 03 22 01 36 00 00 00 00       $  ANS031:7E8 03 22 01 36 00 00 00 00
  $  REQ032:7E0 03 22 01 37 00 00 00 00       $  ANS032:7E8 03 22 01 37 00 00 00 00
  $  REQ033:7E0 03 22 01 3A 00 00 00 00       $  ANS033:7E8 03 22 01 3A 00 00 00 00
  $  REQ034:7E0 03 22 01 3B 00 00 00 00       $  ANS034:7E8 03 22 01 3B 00 00 00 00
  $  REQ035:7E0 03 22 01 3C 00 00 00 00       $  ANS035:7E8 03 22 01 3C 00 00 00 00
  $  REQ036:7E0 03 22 01 3D 00 00 00 00       $  ANS036:7E8 03 22 01 3D 00 00 00 00
  $  REQ037:7E0 03 22 01 3E 00 00 00 00       $  ANS037:7E8 03 22 01 3E 00 00 00 00
  $  REQ038:7E0 03 22 01 3F 00 00 00 00       $  ANS038:7E8 03 22 01 3F 00 00 00 00
  $  REQ039:7E0 03 22 01 40 00 00 00 00       $  ANS039:7E8 03 22 01 40 00 00 00 00
  $  REQ040:7E0 03 22 01 41 00 00 00 00       $  ANS040:7E8 03 22 01 41 00 00 00 00
  $  REQ041:7E0 03 22 01 42 00 00 00 00       $  ANS041:7E8 03 22 01 42 00 00 00 00
  $  REQ042:7E0 03 22 01 44 00 00 00 00       $  ANS042:7E8 03 22 01 44 00 00 00 00
  $  REQ043:7E0 03 22 01 45 00 00 00 00       $  ANS043:7E8 03 22 01 45 00 00 00 00
  $  REQ044:7E0 03 22 01 46 00 00 00 00       $  ANS044:7E8 03 22 01 46 00 00 00 00
  $  REQ045:7E0 03 22 01 47 00 00 00 00       $  ANS045:7E8 03 22 01 47 00 00 00 00
  $  REQ046:7E0 03 22 01 48 00 00 00 00       $  ANS046:7E8 03 22 01 48 00 00 00 00
  $  REQ047:7E0 03 22 01 52 00 00 00 00       $  ANS047:7E8 03 22 01 52 00 00 00 00
  $  REQ048:7E0 03 22 01 54 00 00 00 00       $  ANS048:7E8 03 22 01 54 00 00 00 00
  $  REQ049:7E0 03 22 01 55 00 00 00 00       $  ANS049:7E8 03 22 01 55 00 00 00 00
  $  REQ050:7E0 03 22 01 56 00 00 00 00       $  ANS050:7E8 03 22 01 56 00 00 00 00
  $  REQ051:7E0 03 22 01 57 00 00 00 00       $  ANS051:7E8 03 22 01 57 00 00 00 00
  $  REQ052:7E0 03 22 01 58 00 00 00 00       $  ANS052:7E8 03 22 01 58 00 00 00 00
  $  REQ053:7E0 03 22 01 5B 00 00 00 00       $  ANS053:7E8 03 22 01 5B 00 00 00 00
  $  REQ054:7E0 03 22 01 5C 00 00 00 00       $  ANS054:7E8 03 22 01 5C 00 00 00 00
  $  REQ055:7E0 03 22 01 5D 00 00 00 00       $  ANS055:7E8 03 22 01 5D 00 00 00 00
  $  REQ056:7E0 03 22 01 60 00 00 00 00       $  ANS056:7E8 03 22 01 60 00 00 00 00
  $  REQ057:7E0 03 22 01 62 00 00 00 00       $  ANS057:7E8 03 22 01 62 00 00 00 00
  $  REQ058:7E0 03 22 01 63 00 00 00 00       $  ANS058:7E8 03 22 01 63 00 00 00 00
  $  REQ059:7E0 03 22 01 64 00 00 00 00       $  ANS059:7E8 03 22 01 64 00 00 00 00
  $  REQ060:7E0 03 22 01 65 00 00 00 00       $  ANS060:7E8 03 22 01 65 00 00 00 00
  $  REQ061:7E0 03 22 01 66 00 00 00 00       $  ANS061:7E8 03 22 01 66 00 00 00 00
  $  REQ062:7E0 03 22 01 6E 00 00 00 00       $  ANS062:7E8 03 22 01 6E 00 00 00 00
  $  REQ063:7E0 03 22 01 70 00 00 00 00       $  ANS063:7E8 03 22 01 70 00 00 00 00
  $  REQ064:7E0 03 22 01 71 00 00 00 00       $  ANS064:7E8 03 22 01 71 00 00 00 00
  $  REQ065:7E0 03 22 01 72 00 00 00 00       $  ANS065:7E8 03 22 01 72 00 00 00 00
  $  REQ066:7E0 03 22 01 73 00 00 00 00       $  ANS066:7E8 03 22 01 73 00 00 00 00
  $  REQ067:7E0 03 22 01 76 00 00 00 00       $  ANS067:7E8 03 22 01 76 00 00 00 00
  $  REQ068:7E0 03 22 01 77 00 00 00 00       $  ANS068:7E8 03 22 01 77 00 00 00 00
  $  REQ069:7E0 03 22 01 78 00 00 00 00       $  ANS069:7E8 03 22 01 78 00 00 00 00
  $  REQ070:7E0 03 22 01 79 00 00 00 00       $  ANS070:7E8 03 22 01 79 00 00 00 00
  $  REQ071:7E0 03 22 01 7C 00 00 00 00       $  ANS071:7E8 03 22 01 7C 00 00 00 00
  $  REQ072:7E0 03 22 01 7D 00 00 00 00       $  ANS072:7E8 03 22 01 7D 00 00 00 00
  $  REQ073:7E0 03 22 01 7E 00 00 00 00       $  ANS073:7E8 03 22 01 7E 00 00 00 00
  $  REQ074:7E0 03 22 01 7F 00 00 00 00       $  ANS074:7E8 03 22 01 7F 00 00 00 00
  $  REQ075:7E0 03 22 01 80 00 00 00 00       $  ANS075:7E8 03 22 01 80 00 00 00 00
  $  REQ076:7E0 03 22 01 81 00 00 00 00       $  ANS076:7E8 03 22 01 81 00 00 00 00
  $  REQ077:7E0 03 22 01 82 00 00 00 00       $  ANS077:7E8 03 22 01 82 00 00 00 00
  $  REQ078:7E0 03 22 01 83 00 00 00 00       $  ANS078:7E8 03 22 01 83 00 00 00 00
  $  REQ079:7E0 03 22 01 88 00 00 00 00       $  ANS079:7E8 03 22 01 88 00 00 00 00
  $  REQ080:7E0 03 22 01 89 00 00 00 00       $  ANS080:7E8 03 22 01 89 00 00 00 00
  $  REQ081:7E0 03 22 01 8E 00 00 00 00       $  ANS081:7E8 03 22 01 8E 00 00 00 00
  $  REQ082:7E0 03 22 01 8F 00 00 00 00       $  ANS082:7E8 03 22 01 8F 00 00 00 00
  $  REQ083:7E0 03 22 01 90 00 00 00 00       $  ANS083:7E8 03 22 01 90 00 00 00 00
  $  REQ084:7E0 03 22 01 91 00 00 00 00       $  ANS084:7E8 03 22 01 91 00 00 00 00
  $  REQ085:7E0 03 22 01 93 00 00 00 00       $  ANS085:7E8 03 22 01 93 00 00 00 00
  $  REQ086:7E0 03 22 01 BE 00 00 00 00       $  ANS086:7E8 03 22 01 BE 00 00 00 00
  $  REQ087:7E0 03 22 01 BF 00 00 00 00       $  ANS087:7E8 03 22 01 BF 00 00 00 00
  $  REQ088:7E0 03 22 09 00 00 00 00 00       $  ANS088:7E8 03 22 09 00 00 00 00 00
  $  REQ089:7E0 03 22 09 01 00 00 00 00       $  ANS089:7E8 03 22 09 01 00 00 00 00
  $  REQ090:7E0 03 22 09 04 00 00 00 00       $  ANS090:7E8 03 22 09 04 00 00 00 00
  $  REQ091:7E0 03 22 09 05 00 00 00 00       $  ANS091:7E8 03 22 09 05 00 00 00 00
  $  REQ092:7E0 03 22 09 06 00 00 00 00       $  ANS092:7E8 03 22 09 06 00 00 00 00
  $  REQ093:7E0 03 22 09 07 00 00 00 00       $  ANS093:7E8 03 22 09 07 00 00 00 00

  $  000.发动机转速                                        $    $  rpm         $    $  ANS000.BYTE004  $  y=INT((x1*0x100+x2)*0.25);
  $  001.起动结束后时间                                    $    $  s           $    $  ANS001.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  002.车速                                              $    $  km/h        $    $  ANS002.BYTE004  $  y=INT((x1*0x100+x2)*0.0078125);
  $  003.环境压力                                          $    $  hPa         $    $  ANS003.BYTE004  $  y=(x1*0x100+x2)*0.0390625;
  $  004.电瓶电压                                          $    $  V           $    $  ANS004.BYTE004  $  y=(x1*0x100+x2)*0.000390625;
  $  005.节气门相对于机械下止点的开度角                    $    $  %DK         $    $  ANS005.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.0244140625;else y=(x*0x100+x2-65536)*0.0244140625;
  $  006.进气温度                                          $    $  degC        $    $  ANS006.BYTE004  $  y=x*0.75-48;
  $  007.环境温度                                          $    $  degC        $    $  ANS007.BYTE004  $  y=x*0.75-48;
  $  008.节气门体上游进气压力                              $    $  hPa         $    $  ANS008.BYTE004  $  y=INT((x1*0x100+x2)*0.0078125);
  $  009.加速踏板开度                                      $    $  %PED        $    $  ANS009.BYTE004  $  y=(x1*0x100+x2)*0.00152587890625;
  $  010.燃油流量(毫升/秒)                                 $    $  mL/s        $    $  ANS010.BYTE004  $  y=(x1*0x100+x2)*0.000596046447753906;
  $  011.排气门下游实际排气背压                            $    $  hPa         $    $  ANS011.BYTE004  $  y=INT((x1*0x100+x2)*0.0078125);
  $  012.排气歧管中的排气温度模型值                        $    $  degC        $    $  ANS012.BYTE004  $  y=(x1*0x100+x2)*0.0234375-273.15;
  $  013.排气歧管中的排气温度模型值，第二组                $    $  degC        $    $  ANS013.BYTE004  $  y=(x1*0x100+x2)*0.0234375-273.15;
  $  014.实际空燃比                                        $    $  /           $    $  ANS014.BYTE004  $  y=(x1*0x100+x2)*0.00024414;
  $  015.发动机最大指示扭矩                                $    $  Nm          $    $  ANS015.BYTE004  $  y=x*5;
  $  016.相对进气量                                        $    $  %           $    $  ANS016.BYTE004  $  y=x*0.390625;
  $  017.进气流量                                          $    $  kg/h        $    $  ANS017.BYTE004  $  y=x*4;
  $  018.催化器下游氧传感器输出电压                        $    $  V           $    $  ANS018.BYTE004  $  y=x*0.00522875816993464-0.2;
  $  019.相对充气量                                        $    $  %           $    $  ANS019.BYTE004  $  y=x*0.75;
  $  020.ETS(电子牵引力控制系统)路径监控诊断环境条件       $    $  /           $    $  ANS020.BYTE004  $  y=x;
  $  021.扭矩路径诊断监控条件                              $    $  /           $    $  ANS021.BYTE004  $  y=x;
  $  022.监控功能用于扭矩比较的实际扭矩                    $    $  %           $    $  ANS022.BYTE004  $  y=x*0.390625;
  $  023.在错误时使用的发动机温度替代值                    $    $  degC        $    $  ANS023.BYTE004  $  y=x*0.75-48;
  $  024.相对于机械下止点的目标节气门开度                  $    $  %DK         $    $  ANS024.BYTE004  $  y=x*0.392156862745098;
  $  025.催化器下游排气温度模型值                          $    $  degC        $    $  ANS025.BYTE004  $  y=x*5-50;
  $  026.发动机冷却液温度                                  $    $  degC        $    $  ANS026.BYTE004  $  y=x*0.75-48;
  $  027.发动机冷却液温度模型替代值                        $    $  degC        $    $  ANS027.BYTE004  $  y=x*0.75-48;
  $  028.监控功能的计算实际扭矩                            $    $  %           $    $  ANS028.BYTE004  $  y=x*0.390625;
  $  029.当前档位                                          $    $  /           $    $  ANS029.BYTE004  $  y=x;
  $  030.相对燃油流量                                      $    $  %           $    $  ANS030.BYTE004  $  y=(x1*0x100+x2)*0.046875;
  $  031.实际点火角                                        $    $  Grad KW     $    $  ANS031.BYTE004  $  if(x<0x80) y=x*0.75;else y=(x-256)*0.75;
  $  032.替代负荷信号的流量修正系数                        $    $  /           $    $  ANS032.BYTE004  $  y=(x1*0x100+x2)*0.00006103515625;
  $  033.节气门电位计1的位置信号                           $    $  %DK         $    $  ANS033.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.0244140625;else y=(x*0x100+x2-65536)*0.0244140625;
  $  034.节气门电位计2的位置信号                           $    $  %DK         $    $  ANS034.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.0244140625;else y=(x*0x100+x2-65536)*0.0244140625;
  $  035.节气门体控制信号占空比                            $    $  %           $    $  ANS035.BYTE004  $  y=(x1*0x100+x2)*0.00152587890625;
  $  036.跛行模式下节气门位置                              $    $  %DK         $    $  ANS036.BYTE004  $  y=x*0.392156862745098;
  $  037.跛行模式下节气门电位计2电压                       $    $  V           $    $  ANS037.BYTE004  $  y=(x1*0x100+x2)*0.001220703125;
  $  038.跛行模式下节气门电位计1电压                       $    $  V           $    $  ANS038.BYTE004  $  y=(x1*0x100+x2)*0.001220703125;
  $  039.机械下止点处的节气门电位计1电压信号               $    $  V           $    $  ANS039.BYTE004  $  y=x*0.01953125;
  $  040.车辆前进方向加速度                                $    $  m/s^2       $    $  ANS040.BYTE004  $  if(x<0x80) y=x*0.217;else y=(x-256)*0.217;
  $  041.机械下止点处的节气门电位计2电压信号               $    $  V           $    $  ANS041.BYTE004  $  y=x*0.01953125;
  $  042.环境压力                                          $    $  hPa         $    $  ANS042.BYTE004  $  y=(x1*0x100+x2)*0.0390625;
  $  043.进气歧管绝对压力                                  $    $  hPa         $    $  ANS043.BYTE004  $  y=(x1*0x100+x2)*0.0390625;
  $  044.离合器数                                          $    $  /           $    $  ANS044.BYTE004  $  y=x;
  $  045.进气温度                                          $    $  degC        $    $  ANS045.BYTE004  $  y=x*0.75-48;
  $  046.车速输出值                                        $    $  km/h        $    $  ANS046.BYTE004  $  y=INT((x1*0x100+x2)*0.0078125);
  $  047.进气VVT(可变气门正时)相对角度                     $    $  Grad KW     $    $  ANS047.BYTE004  $  y=INT((x1*0x100+x2)*0.0078125);
  $  048.目标进气VVT(可变气门正时)角度                     $    $  Grad KW     $    $  ANS048.BYTE004  $  y=INT((x1*0x100+x2)*0.0078125);
  $  049.曲轴与凸轮轴相对角度                              $    $  kW          $    $  ANS049.BYTE004  $  y=(x1*0x100+x2)*0.015625;
  $  050.机油温度                                          $    $  degC        $    $  ANS050.BYTE004  $  y=(x1*0x100+x2)*0.0234375-273.15;
  $  051.空燃比控制输出                                    $    $  /           $    $  ANS051.BYTE004  $  y=(x1*0x100+x2)*0.000030517578125;
  $  052.混合气自学习乘法修正系数                          $    $  /           $    $  ANS052.BYTE004  $  y=(x1*0x100+x2)*0.000030517578125;
  $  053.节气门开度电位计1信号电压                         $    $  V           $    $  ANS053.BYTE004  $  y=(x1*0x100+x2)*0.001220703125;
  $  054.节气门开度电位计2信号电压                         $    $  V           $    $  ANS054.BYTE004  $  y=(x1*0x100+x2)*0.001220703125;
  $  055.进气VVT(可变气门正时)控制占空比                   $    $  %           $    $  ANS055.BYTE004  $  y=(x1*0x100+x2)*0.0015258789;
  $  056.混合气自学习加法修正系数                          $    $  /           $    $  ANS056.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.046875;else  y=(x1*0x100+x2-65536)*0.046875;
  $  057.PWG(排气门)电位计电压                             $    $  V           $    $  ANS057.BYTE004  $  y=(x1*0x100+x2)*0.0048828125;
  $  058.PWG(排气门)电位计2电压                            $    $  V           $    $  ANS058.BYTE004  $  y=(x1*0x100+x2)*0.0048828125;
  $  059.翻倍的PWG(排气门)电位计2电压                      $    $  V           $    $  ANS059.BYTE004  $  y=(x1*0x100+x2)*0.0048828125;
  $  060.下游氧传感器陶瓷体内阻                            $    $  ohm         $    $  ANS060.BYTE004  $  y=(x1*0x100+x2)*2;
  $  061.前催化器上游排气温度模型值                        $    $  degC        $    $  ANS061.BYTE004  $  y=(x1*0x100+x2)*0.0234375-273.15;
  $  062.目标怠速                                          $    $  rpm         $    $  ANS062.BYTE004  $  y=x*10;
  $  063.1缸动态点火角推迟                                 $    $  Grad KW     $    $  ANS063.BYTE004  $  if(x<0x80) y=x*0.75;else y=(x-256)*0.75;
  $  064.2缸动态点火角推迟                                 $    $  Grad KW     $    $  ANS064.BYTE004  $  if(x<0x80) y=x*0.75;else y=(x-256)*0.75;
  $  065.3缸动态点火角推迟                                 $    $  Grad KW     $    $  ANS065.BYTE004  $  if(x<0x80) y=x*0.75;else y=(x-256)*0.75;
  $  066.4缸动态点火角推迟                                 $    $  Grad KW     $    $  ANS066.BYTE004  $  if(x<0x80) y=x*0.75;else y=(x-256)*0.75;
  $  067.1缸爆震信号参考电平                               $    $  V           $    $  ANS067.BYTE004  $  y=(x1*0x100+x2)*0.0000762939453125;
  $  068.2缸爆震信号参考电平                               $    $  V           $    $  ANS068.BYTE004  $  y=(x1*0x100+x2)*0.0000762939453125;
  $  069.3缸爆震信号参考电平                               $    $  V           $    $  ANS069.BYTE004  $  y=(x1*0x100+x2)*0.0000762939453125;
  $  070.4缸爆震信号参考电平                               $    $  V           $    $  ANS070.BYTE004  $  y=(x1*0x100+x2)*0.0000762939453125;
  $  071.发动机起动水温                                    $    $  degC        $    $  ANS071.BYTE004  $  y=x*0.75-48;
  $  072.碳罐阀流量                                        $    $  kg/h        $    $  ANS072.BYTE004  $  y=(x1*0x100+x2)*0.000390625;
  $  073.基础点火角                                        $    $  Grad KW     $    $  ANS073.BYTE004  $  if(x<0x80) y=x*0.75;else y=(x-256)*0.75;
  $  074.失火率                                            $    $  /           $    $  ANS074.BYTE004  $  y=(x1*0x100+x2);
  $  075.1缸失火次数                                       $    $  /           $    $  ANS075.BYTE004  $  y=(x1*0x100+x2);
  $  076.2缸失火次数                                       $    $  /           $    $  ANS076.BYTE004  $  y=(x1*0x100+x2);
  $  077.3缸失火次数                                       $    $  /           $    $  ANS077.BYTE004  $  y=(x1*0x100+x2);
  $  078.4缸失火次数                                       $    $  /           $    $  ANS078.BYTE004  $  y=(x1*0x100+x2);
  $  079.空燃比调制周期时间                                $    $  /           $    $  ANS079.BYTE004  $  y=(x1*0x100+x2);
  $  080.怠速控制扭矩修正                                  $    $  %           $    $  ANS080.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.0030517578125;else y=(x1*0x100+x2-65536)*0.0030517578125;
  $  081.失火诊断最小负荷                                  $    $  %           $    $  ANS081.BYTE004  $  y=x*0.390625;
  $  082.失火诊断最大负荷                                  $    $  %           $    $  ANS082.BYTE004  $  y=x*0.390625;
  $  083.最大可达指示扭矩                                  $    $  %           $    $  ANS083.BYTE004  $  y=(x1*0x100+x2)*0.00152587890625;
  $  084.实际指示扭矩                                      $    $  %           $    $  ANS084.BYTE004  $  y=(x1*0x100+x2)*0.00152587890625;
  $  085.发动机温度                                        $    $  degC        $    $  ANS085.BYTE004  $  y=x*0.75-48;
  $  086.失火区域，最大发动机转速                          $    $  rpm         $    $  ANS086.BYTE004  $  y=x*40;
  $  087.失火区域，最小发动机转速                          $    $  rpm         $    $  ANS087.BYTE004  $  y=x*40;
  $  088.碳罐阀控制占空比                                  $    $  %           $    $  ANS088.BYTE004  $  y=(x1*0x100+x2)*0.00152587890625;
  $  089.油泵继电器状态                                    $    $  /           $    $  ANS089.BYTE004  $  if(((x>>0)&1)) y=@0001;else y=@0000;
  $  090.空调离合器状态                                    $    $  /           $    $  ANS090.BYTE004  $  if(((x>>0)&1)) y=@0001;else y=@0000;
  $  091.节气门位置开度                                    $    $  %           $    $  ANS091.BYTE004  $  y=x*0.392156862745098;
  $  092.累计里程                                          $    $  km          $    $  ANS092.BYTE004  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  093.风扇实际输出占空比                                $    $  %           $    $  ANS093.BYTE005  $  y=x*0.390625;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
