
    车型ID：0a75

    模拟：协议模拟-->0a75

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7CE

进入命令:

  $~  REQ000:7C6 02 10 01 00 00 00 00 00       $~  ANS000:7CE 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7C6 02 3E 00 00 00 00 00 00       $!  ANS000:7CE 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7C6 03 19 02 09 00 00 00 00       $#  ANS000:7CE 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/72000000


  $#  01.读故障码库
  $#  REQ000:7C6 02 19 0A 00 00 00 00 00       $#  ANS000:7CE 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/72000000


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

  $$  REQ000:7C6 04 14 FF FF FF 00 00 00       $$  ANS000:7CE 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7C6 03 22 F1 12 00 00 00 00       $%  ANS000:7CE 03 22 F1 12 00 00 00 00
  $%  REQ001:7C6 03 22 F1 87 00 00 00 00       $%  ANS001:7CE 03 22 F1 87 00 00 00 00
  $%  REQ002:7C6 03 22 F1 89 00 00 00 00       $%  ANS002:7CE 03 22 F1 89 00 00 00 00
  $%  REQ003:7C6 03 22 F1 8A 00 00 00 00       $%  ANS003:7CE 03 22 F1 8A 00 00 00 00
  $%  REQ004:7C6 03 22 F1 8B 00 00 00 00       $%  ANS004:7CE 03 22 F1 8B 00 00 00 00
  $%  REQ005:7C6 03 22 F1 8C 00 00 00 00       $%  ANS005:7CE 03 22 F1 8C 00 00 00 00
  $%  REQ006:7C6 03 22 F1 90 00 00 00 00       $%  ANS006:7CE 03 22 F1 90 00 00 00 00
  $%  REQ007:7C6 03 22 F1 93 00 00 00 00       $%  ANS007:7CE 03 22 F1 93 00 00 00 00
  $%  REQ008:7C6 03 22 F1 95 00 00 00 00       $%  ANS008:7CE 03 22 F1 95 00 00 00 00
  $%  REQ009:7C6 03 22 F1 9D 00 00 00 00       $%  ANS009:7CE 03 22 F1 9D 00 00 00 00
  $%  REQ010:7C6 03 22 F1 98 00 00 00 00       $%  ANS010:7CE 03 22 F1 98 00 00 00 00
  $%  REQ011:7C6 03 22 F1 99 00 00 00 00       $%  ANS011:7CE 03 22 F1 99 00 00 00 00

  $%  000:车辆名称:                         $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                           $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:Geely软件版本号:                  $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:供应商代码:                       $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:          $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:            $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:              $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:        $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:        $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)安装日期:          $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  010:维修站代码或者诊断仪系列号:       $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  011:编程或者配置日期:                 $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7C6 03 22 DF 00 00 00 00 00       $  ANS000:7CE 03 22 DF 00 00 00 00 00
  $  REQ001:7C6 03 22 63 00 00 00 00 00       $  ANS001:7CE 03 22 63 00 00 00 00 00
  $  REQ002:7C6 03 22 63 01 00 00 00 00       $  ANS002:7CE 03 22 63 01 00 00 00 00
  $  REQ003:7C6 03 22 63 02 00 00 00 00       $  ANS003:7CE 03 22 63 02 00 00 00 00
  $  REQ004:7C6 03 22 63 03 00 00 00 00       $  ANS004:7CE 03 22 63 03 00 00 00 00
  $  REQ005:7C6 03 22 63 06 00 00 00 00       $  ANS005:7CE 03 22 63 06 00 00 00 00
  $  REQ006:7C6 03 22 63 07 00 00 00 00       $  ANS006:7CE 03 22 63 07 00 00 00 00
  $  REQ007:7C6 03 22 63 08 00 00 00 00       $  ANS007:7CE 03 22 63 08 00 00 00 00
  $  REQ008:7C6 03 22 63 09 00 00 00 00       $  ANS008:7CE 03 22 63 09 00 00 00 00
  $  REQ009:7C6 03 22 63 0A 00 00 00 00       $  ANS009:7CE 03 22 63 0A 00 00 00 00
  $  REQ010:7C6 03 22 63 0B 00 00 00 00       $  ANS010:7CE 03 22 63 0B 00 00 00 00
  $  REQ011:7C6 03 22 63 0C 00 00 00 00       $  ANS011:7CE 03 22 63 0C 00 00 00 00
  $  REQ012:7C6 03 22 63 0D 00 00 00 00       $  ANS012:7CE 03 22 63 0D 00 00 00 00
  $  REQ013:7C6 03 22 63 0E 00 00 00 00       $  ANS013:7CE 03 22 63 0E 00 00 00 00
  $  REQ014:7C6 03 22 63 0F 00 00 00 00       $  ANS014:7CE 03 22 63 0F 00 00 00 00
  $  REQ015:7C6 03 22 63 13 00 00 00 00       $  ANS015:7CE 03 22 63 13 00 00 00 00
  $  REQ016:7C6 03 22 63 15 00 00 00 00       $  ANS016:7CE 03 22 63 15 00 00 00 00
  $  REQ017:7C6 03 22 63 1A 00 00 00 00       $  ANS017:7CE 03 22 63 1A 00 00 00 00
  $  REQ018:7C6 03 22 63 1D 00 00 00 00       $  ANS018:7CE 03 22 63 1D 00 00 00 00
  $  REQ019:7C6 03 22 63 25 00 00 00 00       $  ANS019:7CE 03 22 63 25 00 00 00 00
  $  REQ020:7C6 03 22 63 26 00 00 00 00       $  ANS020:7CE 03 22 63 26 00 00 00 00
  $  REQ021:7C6 03 22 63 27 00 00 00 00       $  ANS021:7CE 03 22 63 27 00 00 00 00
  $  REQ022:7C6 03 22 63 28 00 00 00 00       $  ANS022:7CE 03 22 63 28 00 00 00 00
  $  REQ023:7C6 03 22 63 29 00 00 00 00       $  ANS023:7CE 03 22 63 29 00 00 00 00
  $  REQ024:7C6 03 22 63 2A 00 00 00 00       $  ANS024:7CE 03 22 63 2A 00 00 00 00
  $  REQ025:7C6 03 22 63 2B 00 00 00 00       $  ANS025:7CE 03 22 63 2B 00 00 00 00
  $  REQ026:7C6 03 22 63 2C 00 00 00 00       $  ANS026:7CE 03 22 63 2C 00 00 00 00
  $  REQ027:7C6 03 22 63 2D 00 00 00 00       $  ANS027:7CE 03 22 63 2D 00 00 00 00
  $  REQ028:7C6 03 22 63 24 00 00 00 00       $  ANS028:7CE 03 22 63 24 00 00 00 00

  $  000.ECU(电子控制器)供电电压          $    $  V          $    $  ANS000.BYTE004  $  y=x1*0.1;
  $  001.驾驶员侧温度风门位置             $    $  %          $    $  ANS001.BYTE004  $  y=x1/2.55;
  $  002.车内温度                         $    $  degC       $    $  ANS002.BYTE004  $  y=x1*0.5-40;
  $  003.环境温度                         $    $  degC       $    $  ANS003.BYTE004  $  y=x1*0.5-40;
  $  004.蒸发器温度                       $    $  degC       $    $  ANS004.BYTE004  $  y=x1*0.5-40;
  $  005.车内空气质量状态                 $    $  /          $    $  ANS005.BYTE004  $  switxh(x1&0xFF)0x00:y=@02a1;0x01:y=@02a2;0x02:y=@02a3;0x03:y=@02a4;0x04:y=@02a5;0x05:y=@02a6;0xFF:y=@0132;  default:y=@000b;
  $  006.车内固体颗粒PM2.5                $    $  ug/m^3     $    $  ANS006.BYTE004  $  y=x1*256+x2;
  $  007.内外循环模式                     $    $  /          $    $  ANS007.BYTE004  $  switxh(x1&0xFF)0x00:y=@02c0;0x01:y=@02bf;0xFF:y=@0132;default:y=@0209;
  $  008.ION (负离子)开关状态             $    $  /          $    $  ANS008.BYTE004  $  switxh(x1&0xFF)0x00:y=@0000;0x01:y=@0001; default:y=@000b;
  $  009.空调工作状态                     $    $  /          $    $  ANS009.BYTE004  $  switxh(x1&0xFF)0x00:y=@0000;0x01:y=@02bb;0x02:y=@02bc; default:y=@000b;
  $  010.鼓风机档位                       $    $  /          $    $  ANS010.BYTE004  $  switxh(x1&0xFF)0x00:y=@0000;0x01:y=@0118;0x02:y=@0119;0x03:y=@011a;0x04:y=@011b;0x05:y=@011c;0x06:y=@011d;0x07:y=@02bd;0x08:y=@02be; default:y=@000b;
  $  011.吹风模式开关                     $    $  /          $    $  ANS011.BYTE004  $  switxh(x1&0xFF)0x01:y=@03a7;0x02:y=@03a8;0x03:y=@0a1a;0x04:y=@0a1b;0x05:y=@02ba;default:y=@000b;
  $  012.除霜开关                         $    $  /          $    $  ANS012.BYTE004  $  switxh(x1&0xFF)0x00:y=@0000;0x01:y=@0001; default:y=@000b;
  $  013.后除霜开关                       $    $  /          $    $  ANS013.BYTE004  $  switxh(x1&0xFF)0x00:y=@0000;0x01:y=@0001; default:y=@000b;
  $  014.AC(空调)制冷按键                 $    $  /          $    $  ANS014.BYTE004  $  switxh(x1&0xFF)0x00:y=@0000;0x01:y=@0001; default:y=@000b;
  $  015.进风风门位置                     $    $  %          $    $  ANS015.BYTE004  $  y=x1*100/255;
  $  016.驾驶侧光照强度                   $    $  W/m^2      $    $  ANS016.BYTE004  $  y=x1*256+x2;
  $  017.水温                             $    $  degC       $    $  ANS017.BYTE004  $  y =x1*0.75-36.8;
  $  018.PM2.5传感器的工作状态            $    $  /          $    $  ANS018.BYTE004  $  switxh(x1&0xFF)0x00:y=@0318;0x01:y=@0a1f;0x02:y=@02de;0x03:y=@00be;0xFF:y=@0132; default:y=@000b;
  $  019.高压电加热器状态                 $    $  /          $    $  ANS019.BYTE004  $  switxh(x1&0xFF)0x00:y=@0000;0x01:y=@02c3;0x02:y=@0a14;0x03:y=@02c5;0x04:y=@02c6; default:y=@000b;
  $  020.高压测量电压                     $    $  mV         $    $  ANS020.BYTE004  $  y=x1*256+x2;
  $  021.高压电流消耗总览                 $    $  mA         $    $  ANS021.BYTE004  $  y=(x1*256+x2)*10;
  $  022.冷却液入口温度                   $    $  degC       $    $  ANS022.BYTE004  $  y=(x1*256+x2)-273;
  $  023.冷却液出口温度                   $    $  degC       $    $  ANS023.BYTE004  $  y=(x1*256+x2)-273;
  $  024.低压电源                         $    $  V          $    $  ANS024.BYTE004  $  y=(x1*256+x2)/1000;
  $  025.加热器核心层温度                 $    $  degC       $    $  ANS025.BYTE004  $  y=(x1*256+x2)-40;
  $  026.瞬时的功率消耗超出高压电网       $    $  W          $    $  ANS026.BYTE004  $  y=x1*256+x2;
  $  027.加热器解锁                       $    $  /          $    $  ANS027.BYTE004  $  switxh(x1&0xff)0x00:y=@01d0;0x01:y=@0124;0x02:y=@0a15;
  $  028.压缩机关闭码                     $    $  /          $    $  ANS028.BYTE004  $  switxh(x1&0xFF)0x00:y=@02a7;0x01:y=@02a8;0x02:y=@02a9;0x03:y=@02aa;0x04:y=@02ab;0x05:y=@02ac;0x06:y=@02ad;0x07:y=@02ae;0x08:y=@02af;0x09:y=@0a0e;0x0A:y=@0a0f;0x0B:y=@0a10;0x0C:y=@0a11;0x0D:y=@02b4;0x0E:y=@02b5;0x0F:y=@0a12;0x10:y=@0a13;default:y=@000b;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7C6 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
