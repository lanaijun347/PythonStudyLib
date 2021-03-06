
    车型ID：3c10

    模拟：协议模拟-->3c10

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E8

进入命令:

  $~  REQ000:7E0 02 10 01 00 00 00 00 00       $~  ANS000:7E8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E0 02 3E 00 00 00 00 00 00       $!  ANS000:7E8 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E0 03 19 02 09 00 00 00 00       $#  ANS000:7E8 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/11000000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E0 04 14 FF FF FF 00 00 00       $$  ANS000:7E8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 03 22 F1 87 00 00 00 00       $%  ANS000:7E8 03 22 F1 87 00 00 00 00
  $%  REQ001:7E0 03 22 F1 8A 00 00 00 00       $%  ANS001:7E8 03 22 F1 8A 00 00 00 00
  $%  REQ002:7E0 03 22 F1 8B 00 00 00 00       $%  ANS002:7E8 03 22 F1 8B 00 00 00 00
  $%  REQ003:7E0 03 22 F1 8C 00 00 00 00       $%  ANS003:7E8 03 22 F1 8C 00 00 00 00
  $%  REQ004:7E0 03 22 F1 90 00 00 00 00       $%  ANS004:7E8 03 22 F1 90 00 00 00 00
  $%  REQ005:7E0 03 22 F1 91 00 00 00 00       $%  ANS005:7E8 03 22 F1 91 00 00 00 00
  $%  REQ006:7E0 03 22 F1 92 00 00 00 00       $%  ANS006:7E8 03 22 F1 92 00 00 00 00
  $%  REQ007:7E0 03 22 F1 94 00 00 00 00       $%  ANS007:7E8 03 22 F1 94 00 00 00 00
  $%  REQ008:7E0 03 22 F1 A0 00 00 00 00       $%  ANS008:7E8 03 22 F1 A0 00 00 00 00

  $%  000:装配号:                                         $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:电控单元(ECU)供应商ID:                          $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:电控单元(ECU)制造日期:                          $%    $%  ANS002.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  003:供应商电控单元(ECU)序列号:                      $%    $%  ANS003.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,18,x19,x20);
  $%  004:车辆识别码(VIN码):                              $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  005:OEM(原始设备制造商) 电控单元(ECU)硬件号:        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  006:电控单元(ECU)硬件参考号(平台):                  $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  007:电控单元(ECU)软件参考号:                        $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  008:OEM(原始设备制造商) 电控单元(ECU)软件号:        $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E0 03 22 01 00 00 00 00 00       $  ANS000:7E8 03 22 01 00 00 00 00 00
  $  REQ001:7E0 03 22 01 01 00 00 00 00       $  ANS001:7E8 03 22 01 01 00 00 00 00
  $  REQ002:7E0 03 22 01 02 00 00 00 00       $  ANS002:7E8 03 22 01 02 00 00 00 00
  $  REQ003:7E0 03 22 01 03 00 00 00 00       $  ANS003:7E8 03 22 01 03 00 00 00 00
  $  REQ004:7E0 03 22 01 04 00 00 00 00       $  ANS004:7E8 03 22 01 04 00 00 00 00
  $  REQ005:7E0 03 22 01 05 00 00 00 00       $  ANS005:7E8 03 22 01 05 00 00 00 00
  $  REQ006:7E0 03 22 01 08 00 00 00 00       $  ANS006:7E8 03 22 01 08 00 00 00 00
  $  REQ007:7E0 03 22 01 09 00 00 00 00       $  ANS007:7E8 03 22 01 09 00 00 00 00
  $  REQ008:7E0 03 22 01 0A 00 00 00 00       $  ANS008:7E8 03 22 01 0A 00 00 00 00
  $  REQ009:7E0 03 22 01 0B 00 00 00 00       $  ANS009:7E8 03 22 01 0B 00 00 00 00
  $  REQ010:7E0 03 22 01 0D 00 00 00 00       $  ANS010:7E8 03 22 01 0D 00 00 00 00
  $  REQ011:7E0 03 22 01 0E 00 00 00 00       $  ANS011:7E8 03 22 01 0E 00 00 00 00
  $  REQ012:7E0 03 22 01 10 00 00 00 00       $  ANS012:7E8 03 22 01 10 00 00 00 00
  $  REQ013:7E0 03 22 01 11 00 00 00 00       $  ANS013:7E8 03 22 01 11 00 00 00 00
  $  REQ014:7E0 03 22 01 14 00 00 00 00       $  ANS014:7E8 03 22 01 14 00 00 00 00
  $  REQ015:7E0 03 22 01 1B 00 00 00 00       $  ANS015:7E8 03 22 01 1B 00 00 00 00
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
  $  REQ027:7E0 03 22 01 31 00 00 00 00       $  ANS027:7E8 03 22 01 31 00 00 00 00
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
  $  REQ076:7E0 03 22 01 A0 00 00 00 00       $  ANS076:7E8 03 22 01 A0 00 00 00 00
  $  REQ077:7E0 03 22 01 A1 00 00 00 00       $  ANS077:7E8 03 22 01 A1 00 00 00 00
  $  REQ078:7E0 03 22 01 A2 00 00 00 00       $  ANS078:7E8 03 22 01 A2 00 00 00 00
  $  REQ079:7E0 03 22 01 A4 00 00 00 00       $  ANS079:7E8 03 22 01 A4 00 00 00 00
  $  REQ080:7E0 03 22 01 A5 00 00 00 00       $  ANS080:7E8 03 22 01 A5 00 00 00 00
  $  REQ081:7E0 02 22 01 A6 00 00 00 00       $  ANS081:7E8 02 22 01 A6 00 00 00 00
  $  REQ082:7E0 03 22 20 00 00 00 00 00       $  ANS082:7E8 03 22 20 00 00 00 00 00
  $  REQ083:7E0 03 22 21 00 00 00 00 00       $  ANS083:7E8 03 22 21 00 00 00 00 00
  $  REQ084:7E0 03 22 21 01 00 00 00 00       $  ANS084:7E8 03 22 21 01 00 00 00 00
  $  REQ085:7E0 03 22 21 02 00 00 00 00       $  ANS085:7E8 03 22 21 02 00 00 00 00
  $  REQ086:7E0 03 22 21 03 00 00 00 00       $  ANS086:7E8 03 22 21 03 00 00 00 00
  $  REQ087:7E0 03 22 20 01 00 00 00 00       $  ANS087:7E8 03 22 20 01 00 00 00 00
  $  REQ088:7E0 03 22 20 02 00 00 00 00       $  ANS088:7E8 03 22 20 02 00 00 00 00

  $  000.最大允许指示扭矩                                         $    $  %         $    $  ANS000.BYTE004  $  y=(x1*0x100+x2)*0.001525879;
  $  001.期望的发动机指示扭矩                                     $    $  %         $    $  ANS001.BYTE004  $  y=(x1*0x100+x2)*0.001525879;
  $  002.发动机实际扭矩                                           $    $  %         $    $  ANS002.BYTE004  $  y=(x1*0x100+x2)*0.001525879;
  $  003.发动机温度                                               $    $  degC      $    $  ANS003.BYTE004  $  y=x*0.75-48;
  $  004.发动机转速                                               $    $  rpm       $    $  ANS004.BYTE004  $  y=(x1*0x100+x2)*0.25;
  $  005.起动后时间计数                                           $    $  s         $    $  ANS005.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  006.车速                                                     $    $  km/h      $    $  ANS006.BYTE004  $  y=(x1*0x100+x2)*0.0078125;
  $  007.环境压力                                                 $    $  hPa       $    $  ANS007.BYTE004  $  y=(x1*0x100+x2)*0.0390625;
  $  008.电瓶电压                                                 $    $  V         $    $  ANS008.BYTE004  $  y=(x1*0x100+x2)*0.000390625;
  $  009.相对较低机械止点的节气门角度                             $    $  %DK       $    $  ANS009.BYTE004  $  y=(x1*0x100+x2)*0.024414063;
  $  010.进气温度                                                 $    $  degC      $    $  ANS010.BYTE004  $  y=x*0.75-48;
  $  011.环境空气温度                                             $    $  degC      $    $  ANS011.BYTE004  $  y=x*0.75-48;
  $  012.油门踏板标准角度                                         $    $  %PED      $    $  ANS012.BYTE004  $  y=(x1*0x100+x2)*0.001525879;
  $  013.燃油流量(ml/s)                                           $    $  ml/s      $    $  ANS013.BYTE004  $  y=(x1*0x100+x2)*0.000000596046*1000;
  $  014.歧管的废气温度超范围                                     $    $  degC      $    $  ANS014.BYTE004  $  y=(x1*0x100+x2)*0.0234375-273.15;
  $  015.HFM(热膜式空气流量计)空气流量                            $    $  kg/h      $    $  ANS015.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  016.相对空气质量                                             $    $  %         $    $  ANS016.BYTE004  $  y=x*0.390625;
  $  017.空气质量流量                                             $    $  kg/h      $    $  ANS017.BYTE004  $  y=x*4;
  $  018.催化转换器下游氧传感器输出电压                           $    $  V         $    $  ANS018.BYTE004  $  y=x*0.005228758-0.2;
  $  019.相对进气                                                 $    $  %         $    $  ANS019.BYTE004  $  y=x*0.75;
  $  020.作为诊断功能监测的环境条件的ETS(电子节门系统)-路径       $    $            $    $  ANS020.BYTE004  $  y=x;
  $  021.在功能和功能监测中作为诊断环境条件的扭矩路径             $    $            $    $  ANS021.BYTE004  $  y=x;
  $  022.在功能监测中扭矩比较响应的实际扭矩                       $    $  %         $    $  ANS022.BYTE004  $  y=x*0.390625;
  $  023.在故障情况下的基于模型的替代值                           $    $  degC      $    $  ANS023.BYTE004  $  y=x*0.75-48;
  $  024.相对较低机械止点的节气门角度期望值                       $    $  %DK       $    $  ANS024.BYTE004  $  y=x*0.392156863;
  $  025.催化转换器下游废气温度                                   $    $  degC      $    $  ANS025.BYTE004  $  y=x*5-50;
  $  026.发动机冷却液温度，线性计算                               $    $  degC      $    $  ANS026.BYTE004  $  y=x*0.75-48;
  $  027.功能监控中的实际扭矩计算值                               $    $  %         $    $  ANS027.BYTE004  $  y=x*0.390625;
  $  028.实际点火角                                               $    $  °KW      $    $  ANS028.BYTE004  $  y=x*0.75-96;
  $  029.质量流量代替负荷信号的修正因素                           $    $            $    $  ANS029.BYTE004  $  y=(x1*0x100+x2)*0.0000610352;
  $  030.取决于电位计1的节气门阀片位置                            $    $  %DK       $    $  ANS030.BYTE004  $  y=(x1*0x100+x2)*0.024414063-800;
  $  031.取决于电位计2的节气门阀片位置                            $    $  %DK       $    $  ANS031.BYTE004  $  y=(x1*0x100+x2)*0.024414063-800;
  $  032.DV-E的DLR：PID(参数标识符)元件的总和                     $    $  %         $    $  ANS032.BYTE004  $  y=(x1*0x100+x2)*0.001525879;
  $  033.诊断：wdknlp_w的8位复制作为环境值                        $    $  %DK       $    $  ANS033.BYTE004  $  y=x*0.392156863;
  $  034.NLP的电压DK-电位计1                                      $    $  V         $    $  ANS034.BYTE004  $  y=(x1*0x100+x2)*0.001220703;
  $  035.节气门执行器处于机械止点的电位计1的传感器电压            $    $  V         $    $  ANS035.BYTE004  $  y=x*0.01953125;
  $  036.纵向加速度                                               $    $  m/s^2     $    $  ANS036.BYTE004  $  y=x*0.217-27.776;
  $  037.进气歧管压力                                             $    $  hPa       $    $  ANS037.BYTE004  $  y=(x1*0x100+x2)*0.0390625;
  $  038.检测到离合器运转的次数                                   $    $            $    $  ANS038.BYTE004  $  y=x;
  $  039.进气温度，线性计算                                       $    $  degC      $    $  ANS039.BYTE004  $  y=x*0.75-48;
  $  040.车速输出值至诊断仪                                       $    $  km/h      $    $  ANS040.BYTE004  $  y=(x1*0x100+x2)*0.0078125;
  $  041.电池电压：ADC(模拟数字转换器)诊断值                      $    $  V         $    $  ANS041.BYTE004  $  y=(x1*0x100+x2)*0.004882813;
  $  042.角度：LWOT(节气门全开)相关的进气阀开度                   $    $  KW        $    $  ANS042.BYTE004  $  y=(x1*0x100+x2)*0.0078125-256;
  $  043.进气阀打开时凸轮轴角度期望值                             $    $  KW        $    $  ANS043.BYTE004  $  y=(x1*0x100+x2)*0.0078125-256;
  $  044.机油温度                                                 $    $  degC      $    $  ANS044.BYTE004  $  y=(x1*0x100+x2)*0.0234375-273.15;
  $  045.氧传感器控制器输出                                       $    $            $    $  ANS045.BYTE004  $  y=(x1*0x100+x2)*0.0000305176;
  $  046.混合气自适应的乘法修正                                   $    $            $    $  ANS046.BYTE004  $  y=(x1*0x100+x2)*0.0000305176;
  $  047.节气门电位计1的传感器电压                                $    $  V         $    $  ANS047.BYTE004  $  y=(x1*0x100+x2)*0.001220703;
  $  048.节气门电位计2的传感器电压                                $    $  V         $    $  ANS048.BYTE004  $  y=(x1*0x100+x2)*0.001220703;
  $  049.混合气自适应的加法修正                                   $    $            $    $  ANS049.BYTE004  $  y=(x1*0x100+x2)*0.046875-1536;
  $  050.PWG(踏板位置传感器)电位计1电压                           $    $  V         $    $  ANS050.BYTE004  $  y=(x1*0x100+x2)*0.004882813;
  $  051.PWG(踏板位置传感器)电位计2电压                           $    $  V         $    $  ANS051.BYTE004  $  y=(x1*0x100+x2)*0.004882813;
  $  052.双PWG(踏板位置传感器)电位计2电压                         $    $  V         $    $  ANS052.BYTE004  $  y=(x1*0x100+x2)*0.004882813;
  $  053.催化转换器下游能斯特电池氧传感器-内部电阻Ri实际值        $    $  Ohm       $    $  ANS053.BYTE004  $  y=(x1*0x100+x2)*2;
  $  054.预催化转换器前废气温度超标                               $    $  degC      $    $  ANS054.BYTE004  $  y=(x1*0x100+x2)*0.0234375-273.15;
  $  055.HFM(热膜式空气流量计)空气质量值                          $    $  kg/h      $    $  ANS055.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  056.喷射时间                                                 $    $  ms        $    $  ANS056.BYTE004  $  y=(x1*0x100+x2)*0.016;
  $  057.有效稳定状态怠速                                         $    $  rpm       $    $  ANS057.BYTE004  $  y=x*10;
  $  058.动态延迟的点火正时延迟，气缸#1                           $    $  °KW      $    $  ANS058.BYTE004  $  y=x*0.75;
  $  059.动态延迟的点火正时延迟，气缸#2                           $    $  °KW      $    $  ANS059.BYTE004  $  y=x*0.75;
  $  060.动态延迟的点火正时延迟，气缸#3                           $    $  °KW      $    $  ANS060.BYTE004  $  y=x*0.75;
  $  061.动态延迟的点火正时延迟，气缸#4                           $    $  °KW      $    $  ANS061.BYTE004  $  y=x*0.75;
  $  062.爆震控制参考电平，16位，气缸#1                           $    $  V         $    $  ANS062.BYTE004  $  y=(x1*0x100+x2)*0.0000762939;
  $  063.爆震控制参考电平，16位，气缸#2                           $    $  V         $    $  ANS063.BYTE004  $  y=(x1*0x100+x2)*0.0000762939;
  $  064.爆震控制参考电平，16位，气缸#3                           $    $  V         $    $  ANS064.BYTE004  $  y=(x1*0x100+x2)*0.0000762939;
  $  065.爆震控制参考电平，16位，气缸#4                           $    $  V         $    $  ANS065.BYTE004  $  y=(x1*0x100+x2)*0.0000762939;
  $  066.起动时发动机温度                                         $    $  degC      $    $  ANS066.BYTE004  $  y=x*0.75-48;
  $  067.来自碳罐净化控制的标准质量流量                           $    $  kg/h      $    $  ANS067.BYTE004  $  y=(x1*0x100+x2)*0.000390625;
  $  068.基本点火角度                                             $    $  °KW      $    $  ANS068.BYTE004  $  y=x*0.75-96;
  $  069.全部气缸的排放相关失火故障次数统计                       $    $            $    $  ANS069.BYTE004  $  y=(x1*0x100+x2);
  $  070.失火次数：气缸 #1                                        $    $            $    $  ANS070.BYTE004  $  y=(x1*0x100+x2);
  $  071.失火次数：气缸 #2                                        $    $            $    $  ANS071.BYTE004  $  y=(x1*0x100+x2);
  $  072.失火次数：气缸 #3                                        $    $            $    $  ANS072.BYTE004  $  y=(x1*0x100+x2);
  $  073.失火次数：气缸 #4                                        $    $            $    $  ANS073.BYTE004  $  y=(x1*0x100+x2);
  $  074.强制氧传感器调节的周期                                   $    $            $    $  ANS074.BYTE004  $  y=(x1*0x100+x2);
  $  075.来自怠速控制的扭矩变化期望值                             $    $  %         $    $  ANS075.BYTE004  $  y=(x1*0x100+x2)*0.003051758-100;
  $  076.氧传感器电压(缸组1，传感器1)                             $    $  V         $    $  ANS076.BYTE004  $  y=(x1*0x100+x2)*0.004882813;
  $  077.氧传感器电压(缸组1，传感器2)                             $    $  V         $    $  ANS077.BYTE004  $  y=(x1*0x100+x2)*0.004882813;
  $  078.实际进气歧管压力传感器电压                               $    $  V         $    $  ANS078.BYTE004  $  y=(x1*0x100+x2)*0.004882813;
  $  079.阻力扭矩自适应的阻力扭矩差值                             $    $  %         $    $  ANS079.BYTE004  $  y=(x1*0x100+x2)*0.003051758-100;
  $  080.失火区，最低发动机转速                                   $    $  rpm       $    $  ANS080.BYTE004  $  y=x*40;
  $  081.失火区，最高发动机转速                                   $    $  rpm       $    $  ANS081.BYTE004  $  y=x*40;
  $  082.碳罐净化电磁阀                                           $    $  %         $    $  ANS082.BYTE004  $  y=x*0.390625;
  $  083.燃油泵继电器状态                                         $    $            $    $  ANS083.BYTE004  $  if(x==1) y=@00b3;else y=@00b4;
  $  084.冷却风扇继电器 #1 状态                                   $    $            $    $  ANS084.BYTE004  $  if(x==1) y=@00b3;else y=@00b4;
  $  085.冷却风扇继电器 #2 状态                                   $    $            $    $  ANS085.BYTE004  $  if(x==1) y=@00b3;else y=@00b4;
  $  086.空调离合器状态                                           $    $            $    $  ANS086.BYTE004  $  if(x==1) y=@00b3;else y=@00b4;
  $  087.节气门位置值                                             $    $  %DK       $    $  ANS087.BYTE004  $  y=x*0.3921568;
  $  088.怠速期望值                                               $    $  rpm       $    $  ANS088.BYTE004  $  y=x*10;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
