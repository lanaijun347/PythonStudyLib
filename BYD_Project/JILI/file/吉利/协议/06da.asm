
    车型ID：06da

    模拟：协议模拟-->06da

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
  $%  REQ013:7E0 03 22 02 00 00 00 00 00       $%  ANS013:7E8 03 22 02 00 00 00 00 00
  $%  REQ014:7E0 03 22 02 01 00 00 00 00       $%  ANS014:7E8 03 22 02 01 00 00 00 00
  $%  REQ015:7E0 03 22 F1 82 00 00 00 00       $%  ANS015:7E8 03 22 F1 82 00 00 00 00

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
  $%  013:ECU(电子控制器)成功刷写次数:                  $%    $%  ANS013.BYTE004  $%  y=x;
  $%  014:ECU(电子控制器)尝试刷写次数:                  $%    $%  ANS014.BYTE004  $%  y=x;
  $%  015:标定软件版本号:                               $%    $%  ANS015.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E0 03 22 01 33 00 00 00 00       $  ANS000:7E8 03 22 01 33 00 00 00 00
  $  REQ001:7E0 03 22 01 5B 00 00 00 00       $  ANS001:7E8 03 22 01 5B 00 00 00 00
  $  REQ002:7E0 03 22 01 5C 00 00 00 00       $  ANS002:7E8 03 22 01 5C 00 00 00 00
  $  REQ003:7E0 03 22 01 5D 00 00 00 00       $  ANS003:7E8 03 22 01 5D 00 00 00 00
  $  REQ004:7E0 03 22 01 5E 00 00 00 00       $  ANS004:7E8 03 22 01 5E 00 00 00 00
  $  REQ005:7E0 03 22 01 65 00 00 00 00       $  ANS005:7E8 03 22 01 65 00 00 00 00
  $  REQ006:7E0 03 22 01 BC 00 00 00 00       $  ANS006:7E8 03 22 01 BC 00 00 00 00
  $  REQ007:7E0 03 22 01 EE 00 00 00 00       $  ANS007:7E8 03 22 01 EE 00 00 00 00
  $  REQ008:7E0 03 22 01 F4 00 00 00 00       $  ANS008:7E8 03 22 01 F4 00 00 00 00
  $  REQ009:7E0 03 22 01 F6 00 00 00 00       $  ANS009:7E8 03 22 01 F6 00 00 00 00
  $  REQ010:7E0 03 22 01 F8 00 00 00 00       $  ANS010:7E8 03 22 01 F8 00 00 00 00
  $  REQ011:7E0 03 22 01 F9 00 00 00 00       $  ANS011:7E8 03 22 01 F9 00 00 00 00
  $  REQ012:7E0 03 22 01 FA 00 00 00 00       $  ANS012:7E8 03 22 01 FA 00 00 00 00
  $  REQ013:7E0 03 22 01 FB 00 00 00 00       $  ANS013:7E8 03 22 01 FB 00 00 00 00
  $  REQ014:7E0 03 22 01 FC 00 00 00 00       $  ANS014:7E8 03 22 01 FC 00 00 00 00
  $  REQ015:7E0 03 22 01 FD 00 00 00 00       $  ANS015:7E8 03 22 01 FD 00 00 00 00
  $  REQ016:7E0 03 22 01 FE 00 00 00 00       $  ANS016:7E8 03 22 01 FE 00 00 00 00
  $  REQ017:7E0 03 22 03 06 00 00 00 00       $  ANS017:7E8 03 22 03 06 00 00 00 00
  $  REQ018:7E0 03 22 04 00 00 00 00 00       $  ANS018:7E8 03 22 04 00 00 00 00 00
  $  REQ019:7E0 03 22 04 01 00 00 00 00       $  ANS019:7E8 03 22 04 01 00 00 00 00
  $  REQ020:7E0 03 22 04 06 00 00 00 00       $  ANS020:7E8 03 22 04 06 00 00 00 00
  $  REQ021:7E0 03 22 04 07 00 00 00 00       $  ANS021:7E8 03 22 04 07 00 00 00 00
  $  REQ022:7E0 03 22 04 08 00 00 00 00       $  ANS022:7E8 03 22 04 08 00 00 00 00
  $  REQ023:7E0 03 22 04 09 00 00 00 00       $  ANS023:7E8 03 22 04 09 00 00 00 00
  $  REQ024:7E0 03 22 04 0A 00 00 00 00       $  ANS024:7E8 03 22 04 0A 00 00 00 00
  $  REQ025:7E0 03 22 04 0B 00 00 00 00       $  ANS025:7E8 03 22 04 0B 00 00 00 00
  $  REQ026:7E0 03 22 01 04 00 00 00 00       $  ANS026:7E8 03 22 01 04 00 00 00 00
  $  REQ027:7E0 03 22 01 06 00 00 00 00       $  ANS027:7E8 03 22 01 06 00 00 00 00
  $  REQ028:7E0 03 22 01 07 00 00 00 00       $  ANS028:7E8 03 22 01 07 00 00 00 00
  $  REQ029:7E0 03 22 01 09 00 00 00 00       $  ANS029:7E8 03 22 01 09 00 00 00 00
  $  REQ030:7E0 03 22 01 0B 00 00 00 00       $  ANS030:7E8 03 22 01 0B 00 00 00 00
  $  REQ031:7E0 03 22 01 0C 00 00 00 00       $  ANS031:7E8 03 22 01 0C 00 00 00 00
  $  REQ032:7E0 03 22 01 0D 00 00 00 00       $  ANS032:7E8 03 22 01 0D 00 00 00 00
  $  REQ033:7E0 03 22 01 0F 00 00 00 00       $  ANS033:7E8 03 22 01 0F 00 00 00 00
  $  REQ034:7E0 03 22 01 10 00 00 00 00       $  ANS034:7E8 03 22 01 10 00 00 00 00
  $  REQ035:7E0 03 22 01 11 00 00 00 00       $  ANS035:7E8 03 22 01 11 00 00 00 00
  $  REQ036:7E0 03 22 01 18 00 00 00 00       $  ANS036:7E8 03 22 01 18 00 00 00 00
  $  REQ037:7E0 03 22 01 19 00 00 00 00       $  ANS037:7E8 03 22 01 19 00 00 00 00
  $  REQ038:7E0 03 22 01 20 00 00 00 00       $  ANS038:7E8 03 22 01 20 00 00 00 00
  $  REQ039:7E0 03 22 01 21 00 00 00 00       $  ANS039:7E8 03 22 01 21 00 00 00 00
  $  REQ040:7E0 03 22 01 25 00 00 00 00       $  ANS040:7E8 03 22 01 25 00 00 00 00
  $  REQ041:7E0 03 22 01 2C 00 00 00 00       $  ANS041:7E8 03 22 01 2C 00 00 00 00
  $  REQ042:7E0 03 22 01 2F 00 00 00 00       $  ANS042:7E8 03 22 01 2F 00 00 00 00
  $  REQ043:7E0 03 22 01 32 00 00 00 00       $  ANS043:7E8 03 22 01 32 00 00 00 00
  $  REQ044:7E0 03 22 01 36 00 00 00 00       $  ANS044:7E8 03 22 01 36 00 00 00 00
  $  REQ045:7E0 03 22 01 3A 00 00 00 00       $  ANS045:7E8 03 22 01 3A 00 00 00 00
  $  REQ046:7E0 03 22 01 3B 00 00 00 00       $  ANS046:7E8 03 22 01 3B 00 00 00 00
  $  REQ047:7E0 03 22 01 40 00 00 00 00       $  ANS047:7E8 03 22 01 40 00 00 00 00
  $  REQ048:7E0 03 22 01 42 00 00 00 00       $  ANS048:7E8 03 22 01 42 00 00 00 00
  $  REQ049:7E0 03 22 01 45 00 00 00 00       $  ANS049:7E8 03 22 01 45 00 00 00 00
  $  REQ050:7E0 03 22 01 47 00 00 00 00       $  ANS050:7E8 03 22 01 47 00 00 00 00
  $  REQ051:7E0 03 22 01 49 00 00 00 00       $  ANS051:7E8 03 22 01 49 00 00 00 00
  $  REQ052:7E0 03 22 01 4A 00 00 00 00       $  ANS052:7E8 03 22 01 4A 00 00 00 00
  $  REQ053:7E0 03 22 01 52 00 00 00 00       $  ANS053:7E8 03 22 01 52 00 00 00 00
  $  REQ054:7E0 03 22 01 54 00 00 00 00       $  ANS054:7E8 03 22 01 54 00 00 00 00
  $  REQ055:7E0 03 22 01 56 00 00 00 00       $  ANS055:7E8 03 22 01 56 00 00 00 00
  $  REQ056:7E0 03 22 01 62 00 00 00 00       $  ANS056:7E8 03 22 01 62 00 00 00 00
  $  REQ057:7E0 03 22 01 63 00 00 00 00       $  ANS057:7E8 03 22 01 63 00 00 00 00
  $  REQ058:7E0 03 22 01 6D 00 00 00 00       $  ANS058:7E8 03 22 01 6D 00 00 00 00
  $  REQ059:7E0 03 22 01 6E 00 00 00 00       $  ANS059:7E8 03 22 01 6E 00 00 00 00
  $  REQ060:7E0 03 22 01 70 00 00 00 00       $  ANS060:7E8 03 22 01 70 00 00 00 00
  $  REQ061:7E0 03 22 01 71 00 00 00 00       $  ANS061:7E8 03 22 01 71 00 00 00 00
  $  REQ062:7E0 03 22 01 72 00 00 00 00       $  ANS062:7E8 03 22 01 72 00 00 00 00
  $  REQ063:7E0 03 22 01 73 00 00 00 00       $  ANS063:7E8 03 22 01 73 00 00 00 00
  $  REQ064:7E0 03 22 01 7D 00 00 00 00       $  ANS064:7E8 03 22 01 7D 00 00 00 00
  $  REQ065:7E0 03 22 01 7E 00 00 00 00       $  ANS065:7E8 03 22 01 7E 00 00 00 00
  $  REQ066:7E0 03 22 01 7F 00 00 00 00       $  ANS066:7E8 03 22 01 7F 00 00 00 00
  $  REQ067:7E0 03 22 01 80 00 00 00 00       $  ANS067:7E8 03 22 01 80 00 00 00 00
  $  REQ068:7E0 03 22 01 81 00 00 00 00       $  ANS068:7E8 03 22 01 81 00 00 00 00
  $  REQ069:7E0 03 22 01 82 00 00 00 00       $  ANS069:7E8 03 22 01 82 00 00 00 00
  $  REQ070:7E0 03 22 01 83 00 00 00 00       $  ANS070:7E8 03 22 01 83 00 00 00 00
  $  REQ071:7E0 03 22 01 91 00 00 00 00       $  ANS071:7E8 03 22 01 91 00 00 00 00
  $  REQ072:7E0 03 22 01 A0 00 00 00 00       $  ANS072:7E8 03 22 01 A0 00 00 00 00
  $  REQ073:7E0 03 22 01 A1 00 00 00 00       $  ANS073:7E8 03 22 01 A1 00 00 00 00
  $  REQ074:7E0 03 22 01 B3 00 00 00 00       $  ANS074:7E8 03 22 01 B3 00 00 00 00
  $  REQ075:7E0 03 22 01 B5 00 00 00 00       $  ANS075:7E8 03 22 01 B5 00 00 00 00
  $  REQ076:7E0 03 22 09 01 00 00 00 00       $  ANS076:7E8 03 22 09 01 00 00 00 00
  $  REQ077:7E0 03 22 09 0E 00 00 00 00       $  ANS077:7E8 03 22 09 0E 00 00 00 00
  $  REQ078:7E0 03 22 01 01 00 00 00 00       $  ANS078:7E8 03 22 01 01 00 00 00 00
  $  REQ079:7E0 03 22 02 02 00 00 00 00       $  ANS079:7E8 03 22 02 02 00 00 00 00
  $  REQ080:7E0 03 22 01 96 00 00 00 00       $  ANS080:7E8 03 22 01 96 00 00 00 00
  $  REQ081:7E0 03 22 01 97 00 00 00 00       $  ANS081:7E8 03 22 01 97 00 00 00 00
  $  REQ082:7E0 03 22 B0 01 00 00 00 00       $  ANS082:7E8 03 22 B0 01 00 00 00 00
  $  REQ083:7E0 03 22 B0 03 00 00 00 00       $  ANS083:7E8 03 22 B0 03 00 00 00 00
  $  REQ084:7E0 03 22 B0 04 00 00 00 00       $  ANS084:7E8 03 22 B0 04 00 00 00 00
  $  REQ085:7E0 03 22 B0 05 00 00 00 00       $  ANS085:7E8 03 22 B0 05 00 00 00 00
  $  REQ086:7E0 03 22 B0 08 00 00 00 00       $  ANS086:7E8 03 22 B0 08 00 00 00 00
  $  REQ087:7E0 03 22 B0 10 00 00 00 00       $  ANS087:7E8 03 22 B0 10 00 00 00 00
  $  REQ088:7E0 03 22 B0 11 00 00 00 00       $  ANS088:7E8 03 22 B0 11 00 00 00 00
  $  REQ089:7E0 03 22 B0 12 00 00 00 00       $  ANS089:7E8 03 22 B0 12 00 00 00 00
  $  REQ090:7E0 03 22 B0 13 00 00 00 00       $  ANS090:7E8 03 22 B0 13 00 00 00 00
  $  REQ091:7E0 03 22 B0 17 00 00 00 00       $  ANS091:7E8 03 22 B0 17 00 00 00 00
  $  REQ092:7E0 03 22 B0 18 00 00 00 00       $  ANS092:7E8 03 22 B0 18 00 00 00 00
  $  REQ093:7E0 03 22 B0 21 00 00 00 00       $  ANS093:7E8 03 22 B0 21 00 00 00 00
  $  REQ094:7E0 03 22 B0 24 00 00 00 00       $  ANS094:7E8 03 22 B0 24 00 00 00 00
  $  REQ095:7E0 03 22 B0 26 00 00 00 00       $  ANS095:7E8 03 22 B0 26 00 00 00 00
  $  REQ096:7E0 03 22 B0 27 00 00 00 00       $  ANS096:7E8 03 22 B0 27 00 00 00 00
  $  REQ097:7E0 03 22 B0 30 00 00 00 00       $  ANS097:7E8 03 22 B0 30 00 00 00 00
  $  REQ098:7E0 03 22 B0 31 00 00 00 00       $  ANS098:7E8 03 22 B0 31 00 00 00 00
  $  REQ099:7E0 03 22 B0 32 00 00 00 00       $  ANS099:7E8 03 22 B0 32 00 00 00 00
  $  REQ100:7E0 03 22 B0 33 00 00 00 00       $  ANS100:7E8 03 22 B0 33 00 00 00 00
  $  REQ101:7E0 03 22 B0 34 00 00 00 00       $  ANS101:7E8 03 22 B0 34 00 00 00 00
  $  REQ102:7E0 03 22 B0 35 00 00 00 00       $  ANS102:7E8 03 22 B0 35 00 00 00 00
  $  REQ103:7E0 03 22 B0 36 00 00 00 00       $  ANS103:7E8 03 22 B0 36 00 00 00 00

  $  000.当前档位                                                                 $    $  /           $    $  ANS000.BYTE004  $  if(x==0x00) y=@017b; else if((x>0x00) && (x<0x0B)) y=@017a; else if(x==0x0B) y=@017d;  else if(x==0x0C) y=@017c;else y=@000b;
  $  001.节气门开度电位计1信号电压　                                              $    $  V           $    $  ANS001.BYTE004  $  y=(x1*0x100+x2)*0.001220703125;
  $  002.节气门开度电位计2信号电压　                                              $    $  V           $    $  ANS002.BYTE004  $  y=(x1*0x100+x2)*0.001220703125;
  $  003.进气VVT(可变气门正时)控制占空比                                          $    $  %           $    $  ANS003.BYTE004  $  y=(x1*0x100+x2)*0.00152587890625;
  $  004.宽域氧传感器陶瓷体内阻　                                                 $    $  ohm         $    $  ANS004.BYTE004  $  y=(x1*0x100+x2)*0.0390625;
  $  005.下游氧传感器陶瓷体内阻　                                                 $    $  Ohm         $    $  ANS005.BYTE004  $  y=(x1*0x100+x2)*2;
  $  006.排气VVT(可变气门正时)控制占空比　                                        $    $  %           $    $  ANS006.BYTE004  $  y=(x1*0x100+x2)*0.001525879;
  $  007.蒸发碳管设定值                                                           $    $  %           $    $  ANS007.BYTE004  $  y=x*0.3921569;
  $  008.节气门电机控制命令                                                       $    $  %           $    $  ANS008.BYTE004  $  y=x*0.39215686;
  $  009.灰分因子：基于CCF计算ASh(灰分)系数                                       $    $  /           $    $  ANS009.BYTE004  $  if(x1>0x80) y=((x1*0x100+x2)-65536)*0.001; else y=((x1*0x100+x2)*0.001);
  $  010.用于计算Ash(灰分)的燃油消耗量                                            $    $  L           $    $  ANS009.BYTE006  $  if(x1<0x80)y=(x1*0x100+x2)*10;else y=(x1*0x100+x2-0x10000)*10;
  $  011.用于计算Ash(灰分)的发动机运行时间                                        $    $  s           $    $  ANS009.BYTE008  $  if(x1<0x80) y=(x1*0x1000000+x2*0x10000+x3*0x100+x4);else y=((x1*0x1000000+x2*0x10000+x3*0x100+x4)-0xFFFFFFFF);
  $  012.机油压力                                                                 $    $  kPa         $    $  ANS010.BYTE004  $  y=(x1*0x100+x2)-100;
  $  013.环境温度                                                                 $    $  degC        $    $  ANS011.BYTE004  $  y=x-40;
  $  014.增压器占空比                                                             $    $  %           $    $  ANS012.BYTE004  $  y=x1*0.39215686;
  $  015.目标油轨压力                                                             $    $  kPa         $    $  ANS013.BYTE004  $  y=0.5*(x1*0x100+x2);
  $  016.目标空燃比                                                               $    $  /           $    $  ANS014.BYTE004  $  y=(x1*0x100+x2)*0.00024414;
  $  017.上游氧传感器短期修正                                                     $    $  %           $    $  ANS015.BYTE004  $  y=x*0.78125-100;
  $  018.上游氧传感器长期修正                                                     $    $  %           $    $  ANS016.BYTE004  $  y=x*0.78125-100;
  $  019.电池功能状态2的精度                                                      $    $  /           $    $  ANS017.BYTE004  $  if(x==0x00) y=@01fd;else if(x==0x01) y=@01fe;else if(x==0x02) y=@01ff;else if(x==0x03) y=@0132;else y=@0143;
  $  020.电子水泵转速                                                             $    $  rpm         $    $  ANS018.BYTE004  $  y=(x1*0x100+x2);
  $  021.GPF压差信号                                                              $    $  V           $    $  ANS019.BYTE004  $  y=(5*(x1*0x100+x2))/1024;
  $  022.进气格栅电机实际位置                                                     $    $  %           $    $  ANS020.BYTE004  $  y=x;
  $  023.低压油泵占空比                                                           $    $  %           $    $  ANS021.BYTE004  $  y=0.390625*x;
  $  024.目标低压油路油压                                                         $    $  kPa         $    $  ANS022.BYTE004  $  y=x1*0x100+x2;
  $  025.GPF服务再生的状态                                                        $    $  /           $    $  ANS023.BYTE004  $  y=x1*0x100+x2;
  $  026.GPF压差传感器测定压差                                                    $    $  kPa         $    $  ANS024.BYTE004  $  y=0.01*(x1*0x100+x2)-100;
  $  027.高压油泵PCV阀开阀时刻                                                    $    $  /           $    $  ANS025.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.1;else y=(x1*0x100+x2-0x10000)*0.1;
  $  028.发动机转速                                                               $    $  rpm         $    $  ANS026.BYTE004  $  y=INT((x1*0x100+x2)*0.25);
  $  029.油位                                                                     $    $  L           $    $  ANS027.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  030.气缸盖的机油温度                                                         $    $  degC        $    $  ANS028.BYTE004  $  y=(x1*0x100+x2)*0.0234375-273;
  $  031.环境压力                                                                 $    $  hPa         $    $  ANS029.BYTE004  $  y=(x1*0x100+x2)*0.0390625;
  $  032.节气门相对于机械下止点的开度角                                           $    $  %           $    $  ANS030.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.024414063;else y=((x1*0x100+x2)-0x10000)*0.024414063;
  $  033.油轨压力                                                                 $    $  MPa         $    $  ANS031.BYTE004  $  y=(x1*0x100+x2)*0.0005;
  $  034.进气温度                                                                 $    $  degC        $    $  ANS032.BYTE004  $  y=x1*0.75-48;
  $  035.节气门体上游进气压力                                                     $    $  hPa         $    $  ANS033.BYTE004  $  y=(x1*0x100+x2)*0.078125;
  $  036.加速踏板开度                                                             $    $  %           $    $  ANS034.BYTE004  $  y=(x1*0x100+x2)*0.001525879;
  $  037.燃油流量(ml/s)                                                           $    $  mL/s        $    $  ANS035.BYTE004  $  y=(x1*0x100+x2)*5.96046*0.0000001*1000;
  $  038.实际空燃比                                                               $    $  /           $    $  ANS036.BYTE004  $  y=(x1*0x100+x2)*0.00024414;
  $  039.发动机最大指示扭矩                                                       $    $  Nm          $    $  ANS037.BYTE004  $  y=x1*10;
  $  040.进气流量                                                                 $    $  kg/h        $    $  ANS038.BYTE004  $  y=x1*4;
  $  041.催化器下游氧传感器输出电压                                               $    $  V           $    $  ANS039.BYTE004  $  y=(x1*0x100+x2)*0.004882813-1;
  $  042.相对充气量                                                               $    $  %           $    $  ANS040.BYTE004  $  y=x1*0.75;
  $  043.相对于机械下止点的目标节气门开度                                         $    $  %           $    $  ANS041.BYTE004  $  y=x1*0.392156863;
  $  044.发动机冷却液温度                                                         $    $  degC        $    $  ANS042.BYTE004  $  y=x1*0.75-48;
  $  045.当前档位                                                                 $    $  /           $    $  ANS043.BYTE004  $  if(x1==0) y=@02e3; else if((x>0) && (x<7)) y=@017a; else if(x==7) y=@017c; else y=@000b;
  $  046.实际点火角                                                               $    $  Grad KW     $    $  ANS044.BYTE004  $  if(x1<0x80)y=x1*0.75;else y=(x1-0x100)*0.75;
  $  047.节气门电位计1的位置信号                                                  $    $  %           $    $  ANS045.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.0244140625;else y=((x1*0x100+x2)-0x10000)*0.0244140625;
  $  048.节气门电位计2的位置信号                                                  $    $  %           $    $  ANS046.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.0244140625;else y=((x1*0x100+x2)-0x10000)*0.0244140625;
  $  049.机械下止点处的节气门电位计1电压信号                                      $    $  V           $    $  ANS047.BYTE004  $  y=x*0.01953125;
  $  050.机械下止点处的节气门电位计2电压信号                                      $    $  V           $    $  ANS048.BYTE004  $  y=x*0.01953125;
  $  051.进气歧管绝对压力                                                         $    $  hPa         $    $  ANS049.BYTE004  $  y=(x1*0x100+x2)*0.0390625;
  $  052.进气温度传感器原始值                                                     $    $  degC        $    $  ANS050.BYTE004  $  y=x1*0.75-48;
  $  053.电瓶电压(ADC扫描值)                                                      $    $  V           $    $  ANS051.BYTE004  $  y=(x1*0x100+x2)*0.02355;
  $  054.催化器上游宽域氧传感器信号电压                                           $    $  V           $    $  ANS052.BYTE004  $  y=(x1*0x100+x2)*0.004882812;
  $  055.进气VVT(可变气门正时)相对角度                                            $    $  Grad KW     $    $  ANS053.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.0078125;else y=((x1*0x100+x2)-0x10000)*0.0078125;
  $  056.目标进气VVT(可变气门正时)角度                                            $    $  Grad KW     $    $  ANS054.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.0078125;else y=((x1*0x100+x2)-0x10000)*0.0078125;
  $  057.机油温度                                                                 $    $  degC        $    $  ANS055.BYTE004  $  y=(x1*0x100+x2)*0.0234375-273;
  $  058.油门踏板电位计电压                                                       $    $  V           $    $  ANS056.BYTE004  $  y=(x1*0x100+x2)*0.0048828125;
  $  059.油门踏板电位计2电压                                                      $    $  V           $    $  ANS057.BYTE004  $  y=(x1*0x100+x2)*0.0048828125;
  $  060.喷油脉宽                                                                 $    $  ms          $    $  ANS058.BYTE004  $  y=(x1*0x1000000+x2*0x10000+x3*0x100+x4)*0.001;
  $  061.目标怠速                                                                 $    $  rpm         $    $  ANS059.BYTE004  $  y=x1*10;
  $  062.1缸动态点火角推迟                                                        $    $  Grad KW     $    $  ANS060.BYTE004  $  if(x1<0x80)y=x1*0.75;else y=(x1-0x100)*0.75;
  $  063.2缸动态点火角推迟                                                        $    $  Grad KW     $    $  ANS061.BYTE004  $  if(x1<0x80)y=x1*0.75;else y=(x1-0x100)*0.75;
  $  064.3缸动态点火角推迟                                                        $    $  Grad KW     $    $  ANS062.BYTE004  $  if(x1<0x80)y=x1*0.75;else y=(x1-0x100)*0.75;
  $  065.4缸动态点火角推迟                                                        $    $  Grad KW     $    $  ANS063.BYTE004  $  if(x1<0x80)y=x1*0.75;else y=(x1-0x100)*0.75;
  $  066.碳罐阀流量                                                               $    $  kg/h        $    $  ANS064.BYTE004  $  y=(x1*0x100+x2)*0.000390625;
  $  067.基础点火角                                                               $    $  Grad KW     $    $  ANS065.BYTE004  $  if(x1<0x80)y=x1*0.75;else y=(x1-0x100)*0.75;
  $  068.失火率                                                                   $    $  /           $    $  ANS066.BYTE004  $  y=(x1*0x100+x2)*1;
  $  069.1缸失火次数                                                              $    $  /           $    $  ANS067.BYTE004  $  y=(x1*0x100+x2)*1;
  $  070.2缸失火次数                                                              $    $  /           $    $  ANS068.BYTE004  $  y=(x1*0x100+x2)*1;
  $  071.3缸失火次数                                                              $    $  /           $    $  ANS069.BYTE004  $  y=(x1*0x100+x2)*1;
  $  072.4缸失火次数                                                              $    $  /           $    $  ANS070.BYTE004  $  y=(x1*0x100+x2)*1;
  $  073.实际指示扭矩                                                             $    $  %           $    $  ANS071.BYTE004  $  y=(x1*0x100+x2)*0.00152587890625;
  $  074.氧传感器信号电压，第一组，传感器1                                        $    $  V           $    $  ANS072.BYTE004  $  y=(x1*0x100+x2)*0.004882813-1;
  $  075.氧传感器信号电压，第一组，传感器2(后氧传感器电压)                        $    $  V           $    $  ANS073.BYTE004  $  y=(x1*0x100+x2)*0.004882813-1;
  $  076.排气VVT(可变气门正时)相对角度                                            $    $  Grad KW     $    $  ANS074.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.0078125;else y=((x1*0x100+x2)-0x10000)*0.0078125;
  $  077.目标排气VVT(可变气门正时)角度                                            $    $  Grad KW     $    $  ANS075.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.0078125;else y=((x1*0x100+x2)-0x10000)*0.0078125;
  $  078.油泵继电器状态                                                           $    $  /           $    $  ANS076.BYTE004  $  if(((x1>>0)&1))y=@0001;else y=@0000;
  $  079.空调离合器状态                                                           $    $  /           $    $  ANS077.BYTE004  $  if(((x1>>0)&1))y=@0001;else y=@0000;
  $  080.风扇实际输出占空比                                                       $    $  ％          $    $  ANS078.BYTE004  $  y=x1*0.390625;
  $  081.控制器防盗状态                                                           $    $  /           $    $  ANS079.BYTE004  $  if(x1==0x01)y=@0131;else if(x1==0x02)y=@06db;else y=@0132;
  $  082.发动机运行时间                                                           $    $  s           $    $  ANS080.BYTE004  $  y=(x1*0x1000000+x2*0x10000+x3*0x100+x4)*1;
  $  083.MIL(故障指示灯)故障后的行驶里程                                          $    $  km          $    $  ANS081.BYTE004  $  y=(x1*0x100+x2)*1;
  $  084.KL15状态                                                                 $    $  /           $    $  ANS082.BYTE004  $  switxh(x)0x00:y=@0000;0x01:y=@0001;
  $  085.车速                                                                     $    $  km/h        $    $  ANS083.BYTE004  $  y=INT(x*1.25);
  $  086.发动机转速                                                               $    $  rpm         $    $  ANS084.BYTE004  $  y=x*40;
  $  087.EMS(发动机管理系统)测量到的LV电压                                        $    $  V           $    $  ANS085.BYTE004  $  y=x*0.0942;
  $  088.BSG(皮带轮驱动启发电机)电流                                              $    $  A           $    $  ANS086.BYTE004  $  if(x1<0x80)y=x1*0x100+x2;else y=x1*0x100+x2-0x10000;
  $  089.DCDC(DC-DC转换控制器)高压端电压                                          $    $  V           $    $  ANS087.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  090.DCDC(DC-DC转换控制器)低压端电压                                          $    $  V           $    $  ANS088.BYTE004  $  y=x*0.1;
  $  091.DCDC(DC-DC转换控制器)低压端电流                                          $    $  A           $    $  ANS089.BYTE004  $  y=(x1*0x100+x2)-255;
  $  092.DCDC(DC-DC转换控制器)温度                                                $    $  degC        $    $  ANS090.BYTE004  $  y=x-48;
  $  093.48V电池电量                                                              $    $  %           $    $  ANS091.BYTE004  $  y=x;
  $  094.48V电池电压                                                              $    $  V           $    $  ANS092.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  095.DCDC(DC-DC转换控制器) 高压端电流                                         $    $  A           $    $  ANS093.BYTE004  $  y=(x1*0x100+x2)-255;
  $  096.加速踏板状态                                                             $    $  %           $    $  ANS094.BYTE004  $  y=x*0.392;
  $  097.发动机扭矩请求                                                           $    $  Nm          $    $  ANS095.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.1;else y=(x1*0x100+x2-0x10000)*0.1;
  $  098.发动机实际扭矩                                                           $    $  Nm          $    $  ANS096.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.1;else y=(x1*0x100+x2-0x10000)*0.1;
  $  099.TCU(自动变速器控制单元)档位                                              $    $  /           $    $  ANS097.BYTE004  $  if(x<0x80)y=x;else y=x-0x100;
  $  100.TCU(自动变速器控制单元)档位操纵杆位置                                    $    $  /           $    $  ANS098.BYTE004  $  switxh(x)0x01:y=@04a7;0x02:y=@04aa;0x03:y=@04a8;0x04:y=@04a9;
  $  101.BSG(皮带轮驱动启发电机)转速                                              $    $  rpm         $    $  ANS099.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)+14000;else y=(x1*0x100+x2-0x10000)+14000;
  $  102.BSG(皮带轮驱动启发电机)扭矩请求                                          $    $  Nm          $    $  ANS100.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.125;else y=(x1*0x100+x2-0x10000)*0.125;
  $  103.BSG(皮带轮驱动启发电机)实际扭矩                                          $    $  Nm          $    $  ANS101.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.1;else y=(x1*0x100+x2-0x10000)*0.1;
  $  104.ESP(电控稳定系统)目标补偿扭矩                                            $    $  Nm          $    $  ANS102.BYTE004  $  y=(x1*0x100+x2)-32768;
  $  105.BSG(皮带轮驱动启发电机)电压                                              $    $  V           $    $  ANS103.BYTE004  $  y=(x1*0x100+x2)*0.02;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:7E0 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
