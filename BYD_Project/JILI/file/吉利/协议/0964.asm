
    车型ID：0964

    模拟：协议模拟-->0964

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

  $*$*DTC/0d000000


  $#  01.读故障码库
  $#  REQ000:7E0 02 19 0A 00 00 00 00 00       $#  ANS000:7E8 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/0d000000


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
  $%  REQ004:7E0 03 22 F1 8B 00 00 00 00       $%  ANS004:7E8 03 22 F1 8B 00 00 00 00
  $%  REQ005:7E0 03 22 F1 8C 00 00 00 00       $%  ANS005:7E8 03 22 F1 8C 00 00 00 00
  $%  REQ006:7E0 03 22 F1 90 00 00 00 00       $%  ANS006:7E8 03 22 F1 90 00 00 00 00
  $%  REQ007:7E0 03 22 F1 93 00 00 00 00       $%  ANS007:7E8 03 22 F1 93 00 00 00 00
  $%  REQ008:7E0 03 22 F1 95 00 00 00 00       $%  ANS008:7E8 03 22 F1 95 00 00 00 00
  $%  REQ009:7E0 03 22 F1 97 00 00 00 00       $%  ANS009:7E8 03 22 F1 97 00 00 00 00
  $%  REQ010:7E0 03 22 F1 98 00 00 00 00       $%  ANS010:7E8 03 22 F1 98 00 00 00 00
  $%  REQ011:7E0 03 22 F1 99 00 00 00 00       $%  ANS011:7E8 03 22 F1 99 00 00 00 00
  $%  REQ012:7E0 03 22 F1 9D 00 00 00 00       $%  ANS012:7E8 03 22 F1 9D 00 00 00 00
  $%  REQ013:7E0 03 22 F1 80 00 00 00 00       $%  ANS013:7E8 03 22 F1 80 00 00 00 00
  $%  REQ014:7E0 03 22 F1 86 00 00 00 00       $%  ANS014:7E8 03 22 F1 86 00 00 00 00
  $%  REQ015:7E0 03 22 F1 96 00 00 00 00       $%  ANS015:7E8 03 22 F1 96 00 00 00 00
  $%  REQ016:7E0 03 22 F1 82 00 00 00 00       $%  ANS016:7E8 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                     $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                                       $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:Geely软件版本号:                              $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:供应商代码:                                   $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:ECU(电子控制器)生产日期:                      $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号(VIN码):                            $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                    $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                    $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)系统名称或发动机类型:          $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  010:ECU(电子控制器)刷写维修店代号或设备号:        $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  011:ECU(电子控制器)刷写日期:                      $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:ECU(电子控制器)安装日期:                      $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  013:驱动层软件版本:                               $%    $%  ANS013.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  014:诊断活动会话:                                 $%    $%  ANS014.BYTE004  $%  switxh(x)0x01:y=@012f;0x02:y=@0837;0x03:y=@0838;0x04:y=@0839;default:y=x;
  $%  015:排放类型：                                    $%    $%  ANS015.BYTE004  $%  if(x==0x00)y=@0835;else if(x==0x01)y=@0836;else y=@0009;
  $%  016:标定软件版本号:                               $%    $%  ANS016.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E0 03 22 01 04 00 00 00 00       $  ANS000:7E8 03 22 01 04 00 00 00 00
  $  REQ001:7E0 03 22 01 09 00 00 00 00       $  ANS001:7E8 03 22 01 09 00 00 00 00
  $  REQ002:7E0 03 22 01 0B 00 00 00 00       $  ANS002:7E8 03 22 01 0B 00 00 00 00
  $  REQ003:7E0 03 22 01 0D 00 00 00 00       $  ANS003:7E8 03 22 01 0D 00 00 00 00
  $  REQ004:7E0 03 22 01 0F 00 00 00 00       $  ANS004:7E8 03 22 01 0F 00 00 00 00
  $  REQ005:7E0 03 22 01 10 00 00 00 00       $  ANS005:7E8 03 22 01 10 00 00 00 00
  $  REQ006:7E0 03 22 01 11 00 00 00 00       $  ANS006:7E8 03 22 01 11 00 00 00 00
  $  REQ007:7E0 03 22 01 18 00 00 00 00       $  ANS007:7E8 03 22 01 18 00 00 00 00
  $  REQ008:7E0 03 22 01 20 00 00 00 00       $  ANS008:7E8 03 22 01 20 00 00 00 00
  $  REQ009:7E0 03 22 01 21 00 00 00 00       $  ANS009:7E8 03 22 01 21 00 00 00 00
  $  REQ010:7E0 03 22 01 25 00 00 00 00       $  ANS010:7E8 03 22 01 25 00 00 00 00
  $  REQ011:7E0 03 22 01 2C 00 00 00 00       $  ANS011:7E8 03 22 01 2C 00 00 00 00
  $  REQ012:7E0 03 22 01 2F 00 00 00 00       $  ANS012:7E8 03 22 01 2F 00 00 00 00
  $  REQ013:7E0 03 22 01 32 00 00 00 00       $  ANS013:7E8 03 22 01 32 00 00 00 00
  $  REQ014:7E0 03 22 01 36 00 00 00 00       $  ANS014:7E8 03 22 01 36 00 00 00 00
  $  REQ015:7E0 03 22 01 3A 00 00 00 00       $  ANS015:7E8 03 22 01 3A 00 00 00 00
  $  REQ016:7E0 03 22 01 3B 00 00 00 00       $  ANS016:7E8 03 22 01 3B 00 00 00 00
  $  REQ017:7E0 03 22 01 40 00 00 00 00       $  ANS017:7E8 03 22 01 40 00 00 00 00
  $  REQ018:7E0 03 22 01 42 00 00 00 00       $  ANS018:7E8 03 22 01 42 00 00 00 00
  $  REQ019:7E0 03 22 01 45 00 00 00 00       $  ANS019:7E8 03 22 01 45 00 00 00 00
  $  REQ020:7E0 03 22 01 47 00 00 00 00       $  ANS020:7E8 03 22 01 47 00 00 00 00
  $  REQ021:7E0 03 22 01 49 00 00 00 00       $  ANS021:7E8 03 22 01 49 00 00 00 00
  $  REQ022:7E0 03 22 01 52 00 00 00 00       $  ANS022:7E8 03 22 01 52 00 00 00 00
  $  REQ023:7E0 03 22 01 54 00 00 00 00       $  ANS023:7E8 03 22 01 54 00 00 00 00
  $  REQ024:7E0 03 22 01 56 00 00 00 00       $  ANS024:7E8 03 22 01 56 00 00 00 00
  $  REQ025:7E0 03 22 01 62 00 00 00 00       $  ANS025:7E8 03 22 01 62 00 00 00 00
  $  REQ026:7E0 03 22 01 63 00 00 00 00       $  ANS026:7E8 03 22 01 63 00 00 00 00
  $  REQ027:7E0 03 22 01 6D 00 00 00 00       $  ANS027:7E8 03 22 01 6D 00 00 00 00
  $  REQ028:7E0 03 22 01 6E 00 00 00 00       $  ANS028:7E8 03 22 01 6E 00 00 00 00
  $  REQ029:7E0 03 22 01 70 00 00 00 00       $  ANS029:7E8 03 22 01 70 00 00 00 00
  $  REQ030:7E0 03 22 01 71 00 00 00 00       $  ANS030:7E8 03 22 01 71 00 00 00 00
  $  REQ031:7E0 03 22 01 72 00 00 00 00       $  ANS031:7E8 03 22 01 72 00 00 00 00
  $  REQ032:7E0 03 22 01 73 00 00 00 00       $  ANS032:7E8 03 22 01 73 00 00 00 00
  $  REQ033:7E0 03 22 01 7D 00 00 00 00       $  ANS033:7E8 03 22 01 7D 00 00 00 00
  $  REQ034:7E0 03 22 01 7E 00 00 00 00       $  ANS034:7E8 03 22 01 7E 00 00 00 00
  $  REQ035:7E0 03 22 01 7F 00 00 00 00       $  ANS035:7E8 03 22 01 7F 00 00 00 00
  $  REQ036:7E0 03 22 01 80 00 00 00 00       $  ANS036:7E8 03 22 01 80 00 00 00 00
  $  REQ037:7E0 03 22 01 81 00 00 00 00       $  ANS037:7E8 03 22 01 81 00 00 00 00
  $  REQ038:7E0 03 22 01 82 00 00 00 00       $  ANS038:7E8 03 22 01 82 00 00 00 00
  $  REQ039:7E0 03 22 01 83 00 00 00 00       $  ANS039:7E8 03 22 01 83 00 00 00 00
  $  REQ040:7E0 03 22 01 91 00 00 00 00       $  ANS040:7E8 03 22 01 91 00 00 00 00
  $  REQ041:7E0 03 22 01 A1 00 00 00 00       $  ANS041:7E8 03 22 01 A1 00 00 00 00
  $  REQ042:7E0 03 22 09 01 00 00 00 00       $  ANS042:7E8 03 22 09 01 00 00 00 00
  $  REQ043:7E0 03 22 09 0E 00 00 00 00       $  ANS043:7E8 03 22 09 0E 00 00 00 00
  $  REQ044:7E0 03 22 01 01 00 00 00 00       $  ANS044:7E8 03 22 01 01 00 00 00 00
  $  REQ045:7E0 03 22 02 02 00 00 00 00       $  ANS045:7E8 03 22 02 02 00 00 00 00
  $  REQ046:7E0 03 22 01 96 00 00 00 00       $  ANS046:7E8 03 22 01 96 00 00 00 00
  $  REQ047:7E0 03 22 01 97 00 00 00 00       $  ANS047:7E8 03 22 01 97 00 00 00 00
  $  REQ048:7E0 03 22 01 F5 00 00 00 00       $  ANS048:7E8 03 22 01 F5 00 00 00 00
  $  REQ049:7E0 03 22 01 F6 00 00 00 00       $  ANS049:7E8 03 22 01 F6 00 00 00 00
  $  REQ050:7E0 03 22 01 F7 00 00 00 00       $  ANS050:7E8 03 22 01 F7 00 00 00 00
  $  REQ051:7E0 03 22 01 06 00 00 00 00       $  ANS051:7E8 03 22 01 06 00 00 00 00
  $  REQ052:7E0 03 22 01 07 00 00 00 00       $  ANS052:7E8 03 22 01 07 00 00 00 00
  $  REQ053:7E0 03 22 01 0C 00 00 00 00       $  ANS053:7E8 03 22 01 0C 00 00 00 00
  $  REQ054:7E0 03 22 01 19 00 00 00 00       $  ANS054:7E8 03 22 01 19 00 00 00 00
  $  REQ055:7E0 03 22 01 5D 00 00 00 00       $  ANS055:7E8 03 22 01 5D 00 00 00 00
  $  REQ056:7E0 03 22 01 BC 00 00 00 00       $  ANS056:7E8 03 22 01 BC 00 00 00 00
  $  REQ057:7E0 03 22 01 DD 00 00 00 00       $  ANS057:7E8 03 22 01 DD 00 00 00 00
  $  REQ058:7E0 03 22 03 03 00 00 00 00       $  ANS058:7E8 03 22 03 03 00 00 00 00
  $  REQ059:7E0 03 22 03 04 00 00 00 00       $  ANS059:7E8 03 22 03 04 00 00 00 00
  $  REQ060:7E0 03 22 03 05 00 00 00 00       $  ANS060:7E8 03 22 03 05 00 00 00 00
  $  REQ061:7E0 03 22 03 06 00 00 00 00       $  ANS061:7E8 03 22 03 06 00 00 00 00
  $  REQ062:7E0 03 22 03 07 00 00 00 00       $  ANS062:7E8 03 22 03 07 00 00 00 00
  $  REQ063:7E0 03 22 03 08 00 00 00 00       $  ANS063:7E8 03 22 03 08 00 00 00 00
  $  REQ064:7E0 03 22 03 09 00 00 00 00       $  ANS064:7E8 03 22 03 09 00 00 00 00
  $  REQ065:7E0 03 22 03 0A 00 00 00 00       $  ANS065:7E8 03 22 03 0A 00 00 00 00
  $  REQ066:7E0 03 22 03 0B 00 00 00 00       $  ANS066:7E8 03 22 03 0B 00 00 00 00
  $  REQ067:7E0 03 22 04 07 00 00 00 00       $  ANS067:7E8 03 22 04 07 00 00 00 00
  $  REQ068:7E0 03 22 04 08 00 00 00 00       $  ANS068:7E8 03 22 04 08 00 00 00 00
  $  REQ069:7E0 03 22 09 02 00 00 00 00       $  ANS069:7E8 03 22 09 02 00 00 00 00
  $  REQ070:7E0 03 22 09 03 00 00 00 00       $  ANS070:7E8 03 22 09 03 00 00 00 00
  $  REQ071:7E0 03 22 DF 00 00 00 00 00       $  ANS071:7E8 03 22 DF 00 00 00 00 00
  $  REQ072:7E0 03 22 DF 01 00 00 00 00       $  ANS072:7E8 03 22 DF 01 00 00 00 00

  $  000.发动机转速                                              $    $  rpm         $    $  ANS000.BYTE004  $  y=INT((x1*0x100+x2)*0.25);
  $  001.环境压力                                                $    $  hPa         $    $  ANS001.BYTE004  $  y=(x1*0x100+x2)*0.0390625;
  $  002.节气门相对于机械下止点的开度角                          $    $  %           $    $  ANS002.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.024414063;else y=((x1*0x100+x2)-0x10000)*0.024414063;
  $  003.进气温度                                                $    $  degC        $    $  ANS003.BYTE004  $  y=x1*0.75-48;
  $  004.节气门体上游进气压力                                    $    $  hPa         $    $  ANS004.BYTE004  $  y=(x1*0x100+x2)*0.078125;
  $  005.加速踏板开度                                            $    $  %           $    $  ANS005.BYTE004  $  y=(x1*0x100+x2)*0.001525879;
  $  006.燃油流量(ml/s)                                          $    $  mL/s        $    $  ANS006.BYTE004  $  y=(x1*0x100+x2)*5.96046*0.0000001*1000;
  $  007.实际空燃比                                              $    $  /           $    $  ANS007.BYTE004  $  y=(x1*0x100+x2)*0.00024414;
  $  008.进气流量                                                $    $  kg/h        $    $  ANS008.BYTE004  $  y=x1*4;
  $  009.催化器下游氧传感器输出电压                              $    $  V           $    $  ANS009.BYTE004  $  y=(x1*0x100+x2)*0.004882813-1;
  $  010.相对充气量                                              $    $  %           $    $  ANS010.BYTE004  $  y=x1*0.75;
  $  011.相对于机械下止点的目标节气门开度                        $    $  %           $    $  ANS011.BYTE004  $  y=x1*0.392156863;
  $  012.发动机冷却液温度                                        $    $  degC        $    $  ANS012.BYTE004  $  y=x1*0.75-48;
  $  013.当前档位                                                $    $  /           $    $  ANS013.BYTE004  $  if(x1==0) y=@02e3; else if((x>0) && (x<7)) y=@017a; else if(x==7) y=@017c; else y=@000b;
  $  014.实际点火角                                              $    $  Grad KW     $    $  ANS014.BYTE004  $  if(x1<0x80)y=x1*0.75;else y=(x1-0x100)*0.75;
  $  015.节气门电位计1的位置信号                                 $    $  %           $    $  ANS015.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.0244140625;else y=((x1*0x100+x2)-0x10000)*0.0244140625;
  $  016.节气门电位计2的位置信号                                 $    $  %           $    $  ANS016.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.0244140625;else y=((x1*0x100+x2)-0x10000)*0.0244140625;
  $  017.机械下止点处的节气门电位计1电压信号                     $    $  V           $    $  ANS017.BYTE004  $  y=x*0.01953125;
  $  018.机械下止点处的节气门电位计2电压信号                     $    $  V           $    $  ANS018.BYTE004  $  y=x*0.01953125;
  $  019.进气歧管绝对压力                                        $    $  hPa         $    $  ANS019.BYTE004  $  y=(x1*0x100+x2)*0.0390625;
  $  020.进气温度传感器原始值                                    $    $  degC        $    $  ANS020.BYTE004  $  y=x1*0.75-48;
  $  021.电瓶电压(ADC扫描值)                                     $    $  V           $    $  ANS021.BYTE004  $  y=(x1*0x100+x2)*0.02355;
  $  022.进气VVT(可变气门正时)相对角度                           $    $  Grad KW     $    $  ANS022.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.0078125;else y=((x1*0x100+x2)-0x10000)*0.0078125;
  $  023.目标进气VVT(可变气门正时)角度                           $    $  Grad KW     $    $  ANS023.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.0078125;else y=((x1*0x100+x2)-0x10000)*0.0078125;
  $  024.机油温度                                                $    $  degC        $    $  ANS024.BYTE004  $  y=(x1*0x100+x2)*0.0234375-273;
  $  025.油门踏板电位计电压                                      $    $  V           $    $  ANS025.BYTE004  $  y=(x1*0x100+x2)*0.0048828125;
  $  026.油门踏板电位计2电压                                     $    $  V           $    $  ANS026.BYTE004  $  y=(x1*0x100+x2)*0.0048828125;
  $  027.喷油脉宽                                                $    $  ms          $    $  ANS027.BYTE004  $  y=(x1*0x1000000+x2*0x10000+x3*0x100+x4)*0.001;
  $  028.目标怠速                                                $    $  rpm         $    $  ANS028.BYTE004  $  y=x1*10;
  $  029.1缸动态点火角推迟                                       $    $  Grad KW     $    $  ANS029.BYTE004  $  if(x1<0x80)y=x1*0.75;else y=(x1-0x100)*0.75;
  $  030.2缸动态点火角推迟                                       $    $  Grad KW     $    $  ANS030.BYTE004  $  if(x1<0x80)y=x1*0.75;else y=(x1-0x100)*0.75;
  $  031.3缸动态点火角推迟                                       $    $  Grad KW     $    $  ANS031.BYTE004  $  if(x1<0x80)y=x1*0.75;else y=(x1-0x100)*0.75;
  $  032.4缸动态点火角推迟                                       $    $  Grad KW     $    $  ANS032.BYTE004  $  if(x1<0x80)y=x1*0.75;else y=(x1-0x100)*0.75;
  $  033.碳罐阀流量                                              $    $  kg/h        $    $  ANS033.BYTE004  $  y=(x1*0x100+x2)*0.000390625;
  $  034.基础点火角                                              $    $  Grad KW     $    $  ANS034.BYTE004  $  if(x1<0x80)y=x1*0.75;else y=(x1-0x100)*0.75;
  $  035.失火率                                                  $    $  /           $    $  ANS035.BYTE004  $  y=(x1*0x100+x2)*1;
  $  036.1缸失火次数                                             $    $  /           $    $  ANS036.BYTE004  $  y=(x1*0x100+x2)*1;
  $  037.2缸失火次数                                             $    $  /           $    $  ANS037.BYTE004  $  y=(x1*0x100+x2)*1;
  $  038.3缸失火次数                                             $    $  /           $    $  ANS038.BYTE004  $  y=(x1*0x100+x2)*1;
  $  039.4缸失火次数                                             $    $  /           $    $  ANS039.BYTE004  $  y=(x1*0x100+x2)*1;
  $  040.实际指示扭矩                                            $    $  %           $    $  ANS040.BYTE004  $  y=(x1*0x100+x2)*0.00152587890625;
  $  041.氧传感器信号电压，第一组，传感器2(后氧传感器电压)       $    $  V           $    $  ANS041.BYTE004  $  y=(x1*0x100+x2)*0.004882813-1;
  $  042.油泵继电器状态                                          $    $  /           $    $  ANS042.BYTE004  $  if(((x1>>0)&1))y=@0001;else y=@0000;
  $  043.空调离合器状态                                          $    $  /           $    $  ANS043.BYTE004  $  if(((x1>>0)&1))y=@0001;else y=@0000;
  $  044.风扇实际输出占空比                                      $    $  ％          $    $  ANS044.BYTE004  $  y=x1*0.390625;
  $  045.控制器防盗状态                                          $    $  /           $    $  ANS045.BYTE004  $  if(x1==0x01)y=@0131;else if(x1==0x02)y=@06db;else y=@0132;
  $  046.发动机运行时间                                          $    $  s           $    $  ANS046.BYTE004  $  y=(x1*0x1000000+x2*0x10000+x3*0x100+x4)*1;
  $  047.MIL(故障指示灯)故障后的行驶里程                         $    $  km          $    $  ANS047.BYTE004  $  y=(x1*0x100+x2)*1;
  $  048.GPF(汽油机颗粒捕集器)碳载量模拟                         $    $  G           $    $  ANS048.BYTE004  $  if(x1>0x80) y=((x1*0x100+x2)-65536)*0.001; else y=((x1*0x100+x2)*0.001);
  $  049.GPF（汽油机颗粒捕集器）碳载量测量                       $    $  G           $    $  ANS048.BYTE006  $  if(x1>0x80) y=((x1*0x100+x2)-65536)*0.001; else y=((x1*0x100+x2)*0.001);
  $  050.灰分因子：基于CCF计算ASh(灰分)系数                      $    $  /           $    $  ANS049.BYTE004  $  if(x1>0x80) y=((x1*0x100+x2)-65536)*0.001; else y=((x1*0x100+x2)*0.001);
  $  051.用于计算Ash(灰分)的燃油消耗量                           $    $  L           $    $  ANS049.BYTE006  $  if(x1<0x80)y=(x1*0x100+x2)*10;else y=(x1*0x100+x2-0x10000)*10;
  $  052.用于计算Ash(灰分)的发动机运行时间                       $    $  s           $    $  ANS049.BYTE008  $  if(x1<0x80) y=(x1*0x1000000+x2*0x10000+x3*0x100+x4);else y=((x1*0x1000000+x2*0x10000+x3*0x100+x4)-0xFFFFFFFF);
  $  053.GPF （汽油机颗粒捕集器）传感器自学习值1                 $    $  hPa         $    $  ANS050.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.0390625; else y=(x1*0x100+x2-0x10000)*0.0390625;
  $  054.GPF（汽油机颗粒捕集器）传感器自学习值2                  $    $  hPa         $    $  ANS050.BYTE006  $  if(x1<0x80)y=(x1*0x100+x2)*0.0390625; else y=(x1*0x100+x2-0x10000)*0.0390625;
  $  055.风扇实际输出占空比                                      $    $  %           $    $  ANS044.BYTE004  $  y=0.390625*x;
  $  056.燃油油位                                                $    $  L           $    $  ANS051.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  057.气缸盖的机油温度                                        $    $  degC        $    $  ANS052.BYTE004  $  y=(x1*0x100+x2)*0.0234375-273.15;
  $  058.油轨压力                                                $    $  Mpa         $    $  ANS053.BYTE004  $  y=(x1*0x100+x2)*0.0005;
  $  059.发动机最大指示扭矩                                      $    $  Nm          $    $  ANS054.BYTE004  $  y=x*10;
  $  060.进气VVT控制占空比                                       $    $  %           $    $  ANS055.BYTE004  $  y=(x1*0x100+x2)*0.0015258789;
  $  061.发动机运行时间                                          $    $  s           $    $  ANS046.BYTE004  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  062.MIL故障后的行驶里程                                     $    $  km          $    $  ANS047.BYTE004  $  y=x1*0x100+x2;
  $  063.排气VVT控制占空比                                       $    $  %           $    $  ANS056.BYTE004  $  y=(x1*0x100+x2)*0.00152587890625;
  $  064.主继电器状态                                            $    $  /           $    $  ANS057.BYTE004  $  if(x==0x00) y=@01f8;else if(x==0x01) y=@01f9;else y=@0143;
  $  065.GPF(汽油机颗粒捕集器) 碳载量                            $    $  g           $    $  ANS048.BYTE004  $  y=(x1*0x1000000+x2*0x10000+x3*0x100+x4)*0.001;
  $  066.GPF (汽油机颗粒捕集器)传感器自学习值                    $    $  hPa         $    $  ANS050.BYTE004  $  y=(x1*0x1000000+x2*0x10000+x3*0x100+x4)*0.0390625;
  $  067.控制器防盗状态                                          $    $  /           $    $  ANS045.BYTE004  $  if(x==0x00) y=@0132;else if(x==0x01) y=@0200;else if(x==0x02) y=@0201;else y=@0132;
  $  068.发动机在起动峰值时的电池电压                            $    $  V           $    $  ANS058.BYTE004  $  y=x*0.0625;
  $  069.发动机在起动峰值后的电池电压                            $    $  V           $    $  ANS059.BYTE004  $  y=x*0.0625;
  $  070.电池功能状态1的精度                                     $    $  /           $    $  ANS060.BYTE004  $  if(x==0x00) y=@01fd;else if(x==0x01) y=@01fe;else if(x==0x02) y=@01ff;else if(x==0x03) y=@0132;else y=@0143;
  $  071.电池功能状态2的精度                                     $    $  /           $    $  ANS061.BYTE004  $  if(x==0x00) y=@01fd;else if(x==0x01) y=@01fe;else if(x==0x02) y=@01ff;else if(x==0x03) y=@0132;else y=@0143;
  $  072.电量                                                    $    $  %           $    $  ANS062.BYTE004  $  y=x;
  $  073.电量精度                                                $    $  /           $    $  ANS063.BYTE004  $  if(x==0x00) y=@01fa;else if(x==0x01) y=@01fb;else if(x==0x02) y=@01fc;else if(x==0x03) y=@0132;else y=@0143;
  $  074.电池电压                                                $    $  V           $    $  ANS064.BYTE004  $  y=(x1*0x100+x2+3072)/1024;
  $  075.电池温度                                                $    $  degC        $    $  ANS065.BYTE004  $  y=x-40;
  $  076.电池电流                                                $    $  A           $    $  ANS066.BYTE004  $  y=(x1*0x100+x2-32768)/16;
  $  077.低压油泵占空比                                          $    $  %           $    $  ANS067.BYTE004  $  y=x*390625/1000000;
  $  078.目标低压油路油压                                        $    $  kPa         $    $  ANS068.BYTE004  $  y=x1*0x100+x2;
  $  079.油泵继电器状态                                          $    $  /           $    $  ANS042.BYTE004  $  if(x==0x00) y=@010e;else if(x==0x01) y=@0170;else y=@0143;
  $  080.一级风扇继电器状态                                      $    $  /           $    $  ANS069.BYTE004  $  if(x==0x00) y=@010e;else if(x==0x01) y=@0170;else y=@0143;
  $  081.二级风扇继电器状态                                      $    $  /           $    $  ANS070.BYTE004  $  if(x==0x00) y=@010e;else if(x==0x01) y=@0170;else y=@0143;
  $  082.ECU供电电压                                             $    $  V           $    $  ANS071.BYTE004  $  y=0.1*x;
  $  083.车速                                                    $    $  km/h        $    $  ANS072.BYTE004  $  y=INT((x1*0x100+x2)*0.05625);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:7E0 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
