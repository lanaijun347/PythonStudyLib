
    车型ID：06b1

    模拟：协议模拟-->06b1

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

  $*$*DTC/b2000000


  $#  01.读故障码库
  $#  REQ000:7E0 02 19 0A 00 00 00 00 00       $#  ANS000:7E8 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/b2000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="0"/>
   </FUNCTION>
  <FUNCTION type="0" num="1">
     <param type="string" value="0"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E0 04 14 FF FF FF 00 00 00       $$  ANS000:7E8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 03 22 F1 12 00 00 00 00       $%  ANS000:7E8 03 22 F1 12 00 00 00 00
  $%  REQ001:7E0 03 22 F1 87 00 00 00 00       $%  ANS001:7E8 03 22 F1 87 00 00 00 00
  $%  REQ002:7E0 03 22 F1 89 00 00 00 00       $%  ANS002:7E8 03 22 F1 89 00 00 00 00
  $%  REQ003:7E0 03 22 F1 8A 00 00 00 00       $%  ANS003:7E8 03 22 F1 8A 00 00 00 00
  $%  REQ004:7E0 03 22 F1 90 00 00 00 00       $%  ANS004:7E8 03 22 F1 90 00 00 00 00
  $%  REQ005:7E0 03 22 F1 93 00 00 00 00       $%  ANS005:7E8 03 22 F1 93 00 00 00 00
  $%  REQ006:7E0 03 22 F1 95 00 00 00 00       $%  ANS006:7E8 03 22 F1 95 00 00 00 00
  $%  REQ007:7E0 03 22 F1 9D 00 00 00 00       $%  ANS007:7E8 03 22 F1 9D 00 00 00 00
  $%  REQ008:7E0 03 22 F1 98 00 00 00 00       $%  ANS008:7E8 03 22 F1 98 00 00 00 00
  $%  REQ009:7E0 03 22 F1 99 00 00 00 00       $%  ANS009:7E8 03 22 F1 99 00 00 00 00

  $%  000:车辆名称:                        $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                          $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:Geely软件版本号:                 $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3);
  $%  003:供应商代号:                      $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:车辆识别号（VIN码）:             $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  005:ECU(电子控制器)硬件版本号:       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  006:ECU(电子控制器)软件版本号:       $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)安装日期:         $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  008:维修店代号:                      $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  009:维修日期:                        $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E0 03 22 01 01 00 00 00 00       $  ANS000:7E8 03 22 01 01 00 00 00 00
  $  REQ001:7E0 03 22 01 02 00 00 00 00       $  ANS001:7E8 03 22 01 02 00 00 00 00
  $  REQ002:7E0 03 22 01 03 00 00 00 00       $  ANS002:7E8 03 22 01 03 00 00 00 00
  $  REQ003:7E0 03 22 01 04 00 00 00 00       $  ANS003:7E8 03 22 01 04 00 00 00 00
  $  REQ004:7E0 03 22 01 05 00 00 00 00       $  ANS004:7E8 03 22 01 05 00 00 00 00
  $  REQ005:7E0 03 22 01 08 00 00 00 00       $  ANS005:7E8 03 22 01 08 00 00 00 00
  $  REQ006:7E0 03 22 01 09 00 00 00 00       $  ANS006:7E8 03 22 01 09 00 00 00 00
  $  REQ007:7E0 03 22 01 0A 00 00 00 00       $  ANS007:7E8 03 22 01 0A 00 00 00 00
  $  REQ008:7E0 03 22 01 0B 00 00 00 00       $  ANS008:7E8 03 22 01 0B 00 00 00 00
  $  REQ009:7E0 03 22 01 0D 00 00 00 00       $  ANS009:7E8 03 22 01 0D 00 00 00 00
  $  REQ010:7E0 03 22 01 0E 00 00 00 00       $  ANS010:7E8 03 22 01 0E 00 00 00 00
  $  REQ011:7E0 03 22 01 10 00 00 00 00       $  ANS011:7E8 03 22 01 10 00 00 00 00
  $  REQ012:7E0 03 22 01 11 00 00 00 00       $  ANS012:7E8 03 22 01 11 00 00 00 00
  $  REQ013:7E0 03 22 01 14 00 00 00 00       $  ANS013:7E8 03 22 01 14 00 00 00 00
  $  REQ014:7E0 03 22 01 1B 00 00 00 00       $  ANS014:7E8 03 22 01 1B 00 00 00 00
  $  REQ015:7E0 03 22 01 1E 00 00 00 00       $  ANS015:7E8 03 22 01 1E 00 00 00 00
  $  REQ016:7E0 03 22 01 20 00 00 00 00       $  ANS016:7E8 03 22 01 20 00 00 00 00
  $  REQ017:7E0 03 22 01 23 00 00 00 00       $  ANS017:7E8 03 22 01 23 00 00 00 00
  $  REQ018:7E0 03 22 01 25 00 00 00 00       $  ANS018:7E8 03 22 01 25 00 00 00 00
  $  REQ019:7E0 03 22 01 27 00 00 00 00       $  ANS019:7E8 03 22 01 27 00 00 00 00
  $  REQ020:7E0 03 22 01 28 00 00 00 00       $  ANS020:7E8 03 22 01 28 00 00 00 00
  $  REQ021:7E0 03 22 01 29 00 00 00 00       $  ANS021:7E8 03 22 01 29 00 00 00 00
  $  REQ022:7E0 03 22 01 2B 00 00 00 00       $  ANS022:7E8 03 22 01 2B 00 00 00 00
  $  REQ023:7E0 03 22 01 2C 00 00 00 00       $  ANS023:7E8 03 22 01 2C 00 00 00 00
  $  REQ024:7E0 03 22 01 2D 00 00 00 00       $  ANS024:7E8 03 22 01 2D 00 00 00 00
  $  REQ025:7E0 03 22 01 2F 00 00 00 00       $  ANS025:7E8 03 22 01 2F 00 00 00 00
  $  REQ026:7E0 03 22 01 31 00 00 00 00       $  ANS026:7E8 03 22 01 31 00 00 00 00
  $  REQ027:7E0 03 22 01 32 00 00 00 00       $  ANS027:7E8 03 22 01 32 00 00 00 00
  $  REQ028:7E0 03 22 01 36 00 00 00 00       $  ANS028:7E8 03 22 01 36 00 00 00 00
  $  REQ029:7E0 03 22 01 37 00 00 00 00       $  ANS029:7E8 03 22 01 37 00 00 00 00
  $  REQ030:7E0 03 22 01 3A 00 00 00 00       $  ANS030:7E8 03 22 01 3A 00 00 00 00
  $  REQ031:7E0 03 22 01 3B 00 00 00 00       $  ANS031:7E8 03 22 01 3B 00 00 00 00
  $  REQ032:7E0 03 22 01 3C 00 00 00 00       $  ANS032:7E8 03 22 01 3C 00 00 00 00
  $  REQ033:7E0 03 22 01 3D 00 00 00 00       $  ANS033:7E8 03 22 01 3D 00 00 00 00
  $  REQ034:7E0 03 22 01 3F 00 00 00 00       $  ANS034:7E8 03 22 01 3F 00 00 00 00
  $  REQ035:7E0 03 22 01 40 00 00 00 00       $  ANS035:7E8 03 22 01 40 00 00 00 00
  $  REQ036:7E0 03 22 01 41 00 00 00 00       $  ANS036:7E8 03 22 01 41 00 00 00 00
  $  REQ037:7E0 03 22 01 45 00 00 00 00       $  ANS037:7E8 03 22 01 45 00 00 00 00
  $  REQ038:7E0 03 22 01 46 00 00 00 00       $  ANS038:7E8 03 22 01 46 00 00 00 00
  $  REQ039:7E0 03 22 01 47 00 00 00 00       $  ANS039:7E8 03 22 01 47 00 00 00 00
  $  REQ040:7E0 03 22 01 48 00 00 00 00       $  ANS040:7E8 03 22 01 48 00 00 00 00
  $  REQ041:7E0 03 22 01 49 00 00 00 00       $  ANS041:7E8 03 22 01 49 00 00 00 00
  $  REQ042:7E0 03 22 01 52 00 00 00 00       $  ANS042:7E8 03 22 01 52 00 00 00 00
  $  REQ043:7E0 03 22 01 54 00 00 00 00       $  ANS043:7E8 03 22 01 54 00 00 00 00
  $  REQ044:7E0 03 22 01 56 00 00 00 00       $  ANS044:7E8 03 22 01 56 00 00 00 00
  $  REQ045:7E0 03 22 01 57 00 00 00 00       $  ANS045:7E8 03 22 01 57 00 00 00 00
  $  REQ046:7E0 03 22 01 58 00 00 00 00       $  ANS046:7E8 03 22 01 58 00 00 00 00
  $  REQ047:7E0 03 22 01 5B 00 00 00 00       $  ANS047:7E8 03 22 01 5B 00 00 00 00
  $  REQ048:7E0 03 22 01 5C 00 00 00 00       $  ANS048:7E8 03 22 01 5C 00 00 00 00
  $  REQ049:7E0 03 22 01 60 00 00 00 00       $  ANS049:7E8 03 22 01 60 00 00 00 00
  $  REQ050:7E0 03 22 01 62 00 00 00 00       $  ANS050:7E8 03 22 01 62 00 00 00 00
  $  REQ051:7E0 03 22 01 63 00 00 00 00       $  ANS051:7E8 03 22 01 63 00 00 00 00
  $  REQ052:7E0 03 22 01 64 00 00 00 00       $  ANS052:7E8 03 22 01 64 00 00 00 00
  $  REQ053:7E0 03 22 01 65 00 00 00 00       $  ANS053:7E8 03 22 01 65 00 00 00 00
  $  REQ054:7E0 03 22 01 66 00 00 00 00       $  ANS054:7E8 03 22 01 66 00 00 00 00
  $  REQ055:7E0 03 22 01 67 00 00 00 00       $  ANS055:7E8 03 22 01 67 00 00 00 00
  $  REQ056:7E0 03 22 01 6D 00 00 00 00       $  ANS056:7E8 03 22 01 6D 00 00 00 00
  $  REQ057:7E0 03 22 01 6E 00 00 00 00       $  ANS057:7E8 03 22 01 6E 00 00 00 00
  $  REQ058:7E0 03 22 01 70 00 00 00 00       $  ANS058:7E8 03 22 01 70 00 00 00 00
  $  REQ059:7E0 03 22 01 71 00 00 00 00       $  ANS059:7E8 03 22 01 71 00 00 00 00
  $  REQ060:7E0 03 22 01 72 00 00 00 00       $  ANS060:7E8 03 22 01 72 00 00 00 00
  $  REQ061:7E0 03 22 01 73 00 00 00 00       $  ANS061:7E8 03 22 01 73 00 00 00 00
  $  REQ062:7E0 03 22 01 74 00 00 00 00       $  ANS062:7E8 03 22 01 74 00 00 00 00
  $  REQ063:7E0 03 22 01 75 00 00 00 00       $  ANS063:7E8 03 22 01 75 00 00 00 00
  $  REQ064:7E0 03 22 01 76 00 00 00 00       $  ANS064:7E8 03 22 01 76 00 00 00 00
  $  REQ065:7E0 03 22 01 77 00 00 00 00       $  ANS065:7E8 03 22 01 77 00 00 00 00
  $  REQ066:7E0 03 22 01 7C 00 00 00 00       $  ANS066:7E8 03 22 01 7C 00 00 00 00
  $  REQ067:7E0 03 22 01 7D 00 00 00 00       $  ANS067:7E8 03 22 01 7D 00 00 00 00
  $  REQ068:7E0 03 22 01 7E 00 00 00 00       $  ANS068:7E8 03 22 01 7E 00 00 00 00
  $  REQ069:7E0 03 22 01 7F 00 00 00 00       $  ANS069:7E8 03 22 01 7F 00 00 00 00
  $  REQ070:7E0 03 22 01 80 00 00 00 00       $  ANS070:7E8 03 22 01 80 00 00 00 00
  $  REQ071:7E0 03 22 01 81 00 00 00 00       $  ANS071:7E8 03 22 01 81 00 00 00 00
  $  REQ072:7E0 03 22 01 82 00 00 00 00       $  ANS072:7E8 03 22 01 82 00 00 00 00
  $  REQ073:7E0 03 22 01 83 00 00 00 00       $  ANS073:7E8 03 22 01 83 00 00 00 00
  $  REQ074:7E0 03 22 01 88 00 00 00 00       $  ANS074:7E8 03 22 01 88 00 00 00 00
  $  REQ075:7E0 03 22 01 89 00 00 00 00       $  ANS075:7E8 03 22 01 89 00 00 00 00
  $  REQ076:7E0 03 22 01 96 00 00 00 00       $  ANS076:7E8 03 22 01 96 00 00 00 00
  $  REQ077:7E0 03 22 01 97 00 00 00 00       $  ANS077:7E8 03 22 01 97 00 00 00 00
  $  REQ078:7E0 03 22 01 98 00 00 00 00       $  ANS078:7E8 03 22 01 98 00 00 00 00
  $  REQ079:7E0 03 22 01 B0 00 00 00 00       $  ANS079:7E8 03 22 01 B0 00 00 00 00
  $  REQ080:7E0 03 22 02 02 00 00 00 00       $  ANS080:7E8 03 22 02 02 00 00 00 00
  $  REQ081:7E0 03 22 20 00 00 00 00 00       $  ANS081:7E8 03 22 20 00 00 00 00 00
  $  REQ082:7E0 03 22 21 00 00 00 00 00       $  ANS082:7E8 03 22 21 00 00 00 00 00
  $  REQ083:7E0 03 22 21 01 00 00 00 00       $  ANS083:7E8 03 22 21 01 00 00 00 00
  $  REQ084:7E0 03 22 21 03 00 00 00 00       $  ANS084:7E8 03 22 21 03 00 00 00 00
  $  REQ085:7E0 03 22 21 05 00 00 00 00       $  ANS085:7E8 03 22 21 05 00 00 00 00
  $  REQ086:7E0 03 22 20 01 00 00 00 00       $  ANS086:7E8 03 22 20 01 00 00 00 00
  $  REQ087:7E0 03 22 20 02 00 00 00 00       $  ANS087:7E8 03 22 20 02 00 00 00 00

  $  000.期望指示扭矩                                      $    $  %           $    $  ANS000.BYTE004  $  y=(x1*0x100+x2)*0.001525879;
  $  001.实际指示扭矩                                      $    $  %           $    $  ANS001.BYTE004  $  y=(x1*0x100+x2)*0.001525879;
  $  002.发动机温度                                        $    $  Grad C      $    $  ANS002.BYTE004  $  y=x*0.75-48;
  $  003.发动机转速                                        $    $  rpm         $    $  ANS003.BYTE004  $  y=INT((x1*0x100+x2)*0.25);
  $  004.启动结束后时间                                    $    $  s           $    $  ANS004.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  005.车速                                              $    $  km/h        $    $  ANS005.BYTE004  $  y=INT((x1*0x100+x2)*0.0078125);
  $  006.环境压力                                          $    $  hPa         $    $  ANS006.BYTE004  $  y=(x1*0x100+x2)*0.0390625;
  $  007.电瓶电压                                          $    $  V           $    $  ANS007.BYTE004  $  y=(x1*0x100+x2)*0.000390625;
  $  008.节气门相对于机械下止点的开度角                    $    $  %DK         $    $  ANS008.BYTE004  $  if(x1>0x7f) y=(x1*0x100+x2-0x10000)*0.024414063;else y=(x1*0x100+x2)*0.024414063;
  $  009.进气温度                                          $    $  Grad  C     $    $  ANS009.BYTE004  $  y=x*0.75-48;
  $  010.环境温度                                          $    $  Grad  C     $    $  ANS010.BYTE004  $  y=x*0.75-48;
  $  011.标准化加速踏板角度                                $    $  %PED        $    $  ANS011.BYTE004  $  y=(x1*0x100+x2)*0.001525879;
  $  012.燃油流量                                          $    $  mL/s        $    $  ANS012.BYTE004  $  y=(x1*0x100+x2)*0.000596046;
  $  013.模型歧管排气温度                                  $    $  Grad  C     $    $  ANS013.BYTE004  $  y=(x1*0x100+x2)*0.0234375-273.15;
  $  014.空气质量流量                                      $    $  kg/h        $    $  ANS014.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  015.相对负荷 (参考J1979)                              $    $  %           $    $  ANS015.BYTE004  $  y=x*0.390625;
  $  016.进气量                                            $    $  kg/h        $    $  ANS016.BYTE004  $  y=x*4;
  $  017.下游氧传感器输出电压                              $    $  V           $    $  ANS017.BYTE004  $  y=x*0.005228758-0.2;
  $  018.相对负荷                                          $    $  %           $    $  ANS018.BYTE004  $  y=x*0.75;
  $  019.ETS(电子牵引力控制系统)路径监控诊断环境条件       $    $  /           $    $  ANS019.BYTE004  $  y=x*1;
  $  020.扭矩路径诊断监控条件                              $    $  /           $    $  ANS020.BYTE004  $  y=x*1;
  $  021.监控计算扭矩                                      $    $  %           $    $  ANS021.BYTE004  $  y=x*0.390625;
  $  022.在错误时使用的发动机温度替代值                    $    $  Grad  C     $    $  ANS022.BYTE004  $  y=x*0.75-48;
  $  023.相对于机械下止点的目标节气门开度                  $    $  %DK         $    $  ANS023.BYTE004  $  y=x*0.392156863;
  $  024.催化器下游废弃温度                                $    $  Grad  C     $    $  ANS024.BYTE004  $  y=x*5-50;
  $  025.冷却液温度计算值                                  $    $  Grad  C     $    $  ANS025.BYTE004  $  y=x*0.75-48;
  $  026.功能监控中的计算扭矩                              $    $  %           $    $  ANS026.BYTE004  $  y=x*0.390625;
  $  027.档位                                              $    $  /           $    $  ANS027.BYTE004  $  y=x*1;
  $  028.实际点火角                                        $    $  Grad KW     $    $  ANS028.BYTE004  $  if(x>0x7f) y=(x-256)*0.75;else y=x*0.75;
  $  029.质量流量负荷信号修正系数                          $    $  /           $    $  ANS029.BYTE004  $  y=(x1*0x100+x2)*0.0000610352;
  $  030.节气门电位计1的位置信号                           $    $  %DK         $    $  ANS030.BYTE004  $  if(x1>0x7f) y=(x1*0x100+x2-0x10000)*0.024414063;else y=(x1*0x100+x2)*0.024414063;
  $  031.节气门电位计2的位置信号                           $    $  %DK         $    $  ANS031.BYTE004  $  if(x1>0x7f) y=(x1*0x100+x2-0x10000)*0.024414063;else y=(x1*0x100+x2)*0.024414063;
  $  032.节气门体控制信号占空比                            $    $  %           $    $  ANS032.BYTE004  $  y=(x1*0x100+x2)*0.001525879;
  $  033.模型模式下节气门位置                              $    $  %DK         $    $  ANS033.BYTE004  $  y=x*0.392156863;
  $  034.跛行模式下，节气门电位计1电压信号                 $    $  V           $    $  ANS034.BYTE004  $  y=(x1*0x100+x2)*0.392156863;
  $  035.机械下止点处的节气门电位计1电压信号               $    $  V           $    $  ANS035.BYTE004  $  y=x*0.01953125;
  $  036.车辆加速度                                        $    $  m/s^2       $    $  ANS036.BYTE004  $  if(x>0x7f) y=(x-0x100)*0.217;else y=x*0.217;
  $  037.绝对进气歧管压力                                  $    $  hPa         $    $  ANS037.BYTE004  $  y=(x1*0x100+x2)*0.0390625;
  $  038.离合器数                                          $    $  /           $    $  ANS038.BYTE004  $  y=x;
  $  039.进气温度计算值                                    $    $  degC        $    $  ANS039.BYTE004  $  y=x*0.75-48;
  $  040.车速输出值                                        $    $  km/h        $    $  ANS040.BYTE004  $  y=INT((x1*0x100+x2)*0.0078125);
  $  041.电瓶电压采样值                                    $    $  V           $    $  ANS041.BYTE004  $  y=(x1*0x100+x2)*0.0176;
  $  042.进气阀相对于LWOT的开度角                          $    $  kW          $    $  ANS042.BYTE004  $  if(x1>0x7f) y=(x1*0x100+x2-0x10000)*0.0078125;else y=(x1*0x100+x2)*0.0078125;
  $  043.期望进气阀相对于LWOT的开度角                      $    $  kW          $    $  ANS043.BYTE004  $  if(x1>0x7f) y=(x1*0x100+x2-0x10000)*0.0078125;else y=(x1*0x100+x2)*0.0078125;
  $  044.油温                                              $    $  degC        $    $  ANS044.BYTE004  $  y=(x1*0x100+x2)*0.0234375-273.15;
  $  045.短期燃油修正系数                                  $    $  /           $    $  ANS045.BYTE004  $  y=(x1*0x100+x2)*0.0000305176;
  $  046.长期燃油修正系数                                  $    $  /           $    $  ANS046.BYTE004  $  y=(x1*0x100+x2)*0.0000305176;
  $  047.节气门电位计1信号电压                             $    $  V           $    $  ANS047.BYTE004  $  y=(x1*0x100+x2)*0.001220703;
  $  048.节气门电位计2信号电压                             $    $  V           $    $  ANS048.BYTE004  $  y=(x1*0x100+x2)*0.001220703;
  $  049.混合气调整附加修正系数                            $    $  /           $    $  ANS049.BYTE004  $  if(x1>0x7f) y=(x1*0x100+x2-0x10000)*0.046875;else y=(x1*0x100+x2)*0.046875;
  $  050.PWG(排气门)电位计1电压                            $    $  V           $    $  ANS050.BYTE004  $  y=(x1*0x100+x2)*0.004882813;
  $  051.PWG(排气门)电位计2电压                            $    $  V           $    $  ANS051.BYTE004  $  y=(x1*0x100+x2)*0.004882813;
  $  052.翻倍的PWG(排气门)电位计2电压                      $    $  V           $    $  ANS052.BYTE004  $  y=(x1*0x100+x2)*0.004882813;
  $  053.下游氧传感器内部阻抗                              $    $  ohm         $    $  ANS053.BYTE004  $  y=(x1*0x100+x2)*2;
  $  054.模型排气温度                                      $    $  degC        $    $  ANS054.BYTE004  $  y=(x1*0x100+x2)*0.0234375-273.15;
  $  055.HFM(热膜式空气流量计)空气质量                     $    $  kg/h        $    $  ANS055.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  056.喷油时间                                          $    $  ms          $    $  ANS056.BYTE004  $  y=(x1*0x100+x2)*0.016;
  $  057.怠速转速                                          $    $  rpm         $    $  ANS057.BYTE004  $  y=x*10;
  $  058.1缸点火延迟角                                     $    $  Grad KW     $    $  ANS058.BYTE004  $  if(x>0x7f) y=(x-256)*0.75;else y=x*0.75;
  $  059.2缸点火延迟角                                     $    $  Grad KW     $    $  ANS059.BYTE004  $  if(x>0x7f) y=(x-256)*0.75;else y=x*0.75;
  $  060.3缸点火延迟角                                     $    $  Grad KW     $    $  ANS060.BYTE004  $  if(x>0x7f) y=(x-256)*0.75;else y=x*0.75;
  $  061.4缸点火延迟角                                     $    $  Grad KW     $    $  ANS061.BYTE004  $  if(x>0x7f) y=(x-256)*0.75;else y=x*0.75;
  $  062.1缸爆震传感器参考电平                             $    $  V           $    $  ANS062.BYTE004  $  y=x*0.01953125;
  $  063.2缸爆震传感器参考电平                             $    $  V           $    $  ANS063.BYTE004  $  y=x*0.01953125;
  $  064.3缸爆震传感器参考电平                             $    $  V           $    $  ANS064.BYTE004  $  y=x*0.01953125;
  $  065.4缸爆震传感器参考电平                             $    $  V           $    $  ANS065.BYTE004  $  y=x*0.01953125;
  $  066.发动机启动时的温度                                $    $  degC        $    $  ANS066.BYTE004  $  y=x*0.75-48;
  $  067.标准化炭罐流量                                    $    $  kg/h        $    $  ANS067.BYTE004  $  y=(x1*0x100+x2)*0.0390625;
  $  068.基本点火角                                        $    $  Grad KW     $    $  ANS068.BYTE004  $  if(x>0x7f) y=(x-256)*0.75;else y=x*0.75;
  $  069.总失火次数                                        $    $  /           $    $  ANS069.BYTE004  $  y=x1*0x100+x2;
  $  070.1缸失火次数                                       $    $  /           $    $  ANS070.BYTE004  $  y=x1*0x100+x2;
  $  071.2缸失火次数                                       $    $  /           $    $  ANS071.BYTE004  $  y=x1*0x100+x2;
  $  072.3缸失火次数                                       $    $  /           $    $  ANS072.BYTE004  $  y=x1*0x100+x2;
  $  073.4缸失火次数                                       $    $  /           $    $  ANS073.BYTE004  $  y=x1*0x100+x2;
  $  074.运行指令测试时的计算结果                          $    $  /           $    $  ANS074.BYTE004  $  y=x1*0x100+x2;
  $  075.怠速控制器的扭矩修正请求(PD部分)                  $    $  %           $    $  ANS075.BYTE004  $  if(x1>0x7f) y=(x1*0x100+x2-0x10000)*0.003051758;else y=(x1*0x100+x2)*0.003051758;
  $  076.最大可达指示扭矩                                  $    $  %           $    $  ANS076.BYTE004  $  y=(x1*0x100+x2)*0.001525879;
  $  077.进气VVT(可变气门正时)角度                         $    $  Grad KW     $    $  ANS077.BYTE004  $  if(x1>0x7f) y=(x1*0x100+x2-0x10000)*0.0078125;else y=(x1*0x100+x2)*0.0078125;
  $  078.排气VVT(可变气门正时)角度                         $    $  Grad KW     $    $  ANS078.BYTE004  $  if(x1>0x7f) y=(x1*0x100+x2-0x10000)*0.0078125;else y=(x1*0x100+x2)*0.0078125;
  $  079.汽油或甲醇自学习值状态                            $    $  /           $    $  ANS079.BYTE004  $  if(x==0x00) y=@0586;else if(x==0x01) y=@0587;else y=@0009;
  $  080.ECU(电子控制器)防盗系统状态                       $    $  /           $    $  ANS080.BYTE004  $  if(x==0x01) y=@0588;else y=@0130;
  $  081.炭罐控制阀的控制占空比                            $    $  %           $    $  ANS081.BYTE004  $  y=x*0.390625;
  $  082.燃油泵继电器状态                                  $    $  /           $    $  ANS082.BYTE004  $  if(x==0x00) y=@0000;else if(x=0x01) y=@0001;else y=@0009;
  $  083.冷却风扇1                                         $    $  /           $    $  ANS083.BYTE004  $  if(x==0x00) y=@0000;else if(x=0x01) y=@0001;else y=@0009;
  $  084.冷却风扇2                                         $    $  /           $    $  ANS083.BYTE004  $  if(x==0x00) y=@0000;else if(x=0x01) y=@0001;else y=@0009;
  $  085.空调离合器状态                                    $    $  /           $    $  ANS084.BYTE004  $  if(x==0x00) y=@0000;else if(x=0x01) y=@0001;else y=@0009;
  $  086.冷却风扇PWM(脉宽调制)                             $    $  %           $    $  ANS085.BYTE004  $  y=x*0.390625;
  $  087.电子节气门开度                                    $    $  %DK         $    $  ANS086.BYTE004  $  y=x*0.390625;
  $  088.期望怠速值                                        $    $  rpm         $    $  ANS087.BYTE004  $  y=x*10;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
