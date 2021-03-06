
    车型ID：6b23

    模拟：协议模拟-->6b23

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7E0 02 10 01 00 00 00 00 00       $~  ANS000:7E8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E0 02 3E 00 00 00 00 00 00       $!  ANS000:7E8 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E0 03 19 02 0D 00 00 00 00       $#  ANS000:7E8 03 19 02 0D 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E0 04 14 FF FF FF 00 00 00       $$  ANS000:7E8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 03 22 F1 81 00 00 00 00       $%  ANS000:7E8 03 22 F1 81 00 00 00 00
  $%  REQ001:7E0 03 22 F1 86 00 00 00 00       $%  ANS001:7E8 03 22 F1 86 00 00 00 00
  $%  REQ002:7E0 03 22 F1 87 00 00 00 00       $%  ANS002:7E8 03 22 F1 87 00 00 00 00
  $%  REQ003:7E0 03 22 F1 88 00 00 00 00       $%  ANS003:7E8 03 22 F1 88 00 00 00 00
  $%  REQ004:7E0 03 22 F1 8C 00 00 00 00       $%  ANS004:7E8 03 22 F1 8C 00 00 00 00
  $%  REQ005:7E0 03 22 F1 90 00 00 00 00       $%  ANS005:7E8 03 22 F1 90 00 00 00 00
  $%  REQ006:7E0 03 22 F1 94 00 00 00 00       $%  ANS006:7E8 03 22 F1 94 00 00 00 00
  $%  REQ007:7E0 03 22 F1 96 00 00 00 00       $%  ANS007:7E8 03 22 F1 96 00 00 00 00
  $%  REQ008:7E0 03 22 F1 97 00 00 00 00       $%  ANS008:7E8 03 22 F1 97 00 00 00 00
  $%  REQ009:7E0 03 22 F1 98 00 00 00 00       $%  ANS009:7E8 03 22 F1 98 00 00 00 00
  $%  REQ010:7E0 03 22 F1 9D 00 00 00 00       $%  ANS010:7E8 03 22 F1 9D 00 00 00 00
  $%  REQ011:7E0 03 22 F1 A1 00 00 00 00       $%  ANS011:7E8 03 22 F1 A1 00 00 00 00
  $%  REQ012:7E0 03 22 F1 A5 00 00 00 00       $%  ANS012:7E8 03 22 F1 A5 00 00 00 00
  $%  REQ013:7E0 03 22 F1 A6 00 00 00 00       $%  ANS013:7E8 03 22 F1 A6 00 00 00 00
  $%  REQ014:7E0 03 22 FD 01 00 00 00 00       $%  ANS014:7E8 03 22 FD 01 00 00 00 00

  $%  000:ECU应用软件版本号:                   $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  001:主动诊断会话报告:                    $%    $%  ANS001.BYTE004  $%  Y=HEX(X1);
  $%  002:OEM（原厂设备）零件号:               $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  003:汽车制造厂ECU软件号:                 $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  004:ECU序列号:                           $%    $%  ANS004.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  005:VIN（车辆识别码）:                   $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  006:软件号:                              $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  007:废气调节或型号核准号(EROTAN):        $%    $%  ANS007.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  008:发动机类型:                          $%    $%  ANS008.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  009:维修车间码和/或测试仪序列号:         $%    $%  ANS009.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  010:ECU安装日期:                         $%    $%  ANS010.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  011:系统配置1:                           $%    $%  ANS011.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  012:车辆规格号:                          $%    $%  ANS012.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18);
  $%  013:生产线中的车辆制造日期:              $%    $%  ANS013.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  014:ECU软件释放日期:                     $%    $%  ANS014.BYTE004  $%  Y=HEX(X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E0 03 22 02 00 00 00 00 00       $  ANS000:7E8 03 22 02 00 00 00 00 00
  $  REQ001:7E0 03 22 02 01 00 00 00 00       $  ANS001:7E8 03 22 02 01 00 00 00 00
  $  REQ002:7E0 03 22 02 02 00 00 00 00       $  ANS002:7E8 03 22 02 02 00 00 00 00
  $  REQ003:7E0 03 22 02 03 00 00 00 00       $  ANS003:7E8 03 22 02 03 00 00 00 00
  $  REQ004:7E0 03 22 02 06 00 00 00 00       $  ANS004:7E8 03 22 02 06 00 00 00 00
  $  REQ005:7E0 03 22 02 07 00 00 00 00       $  ANS005:7E8 03 22 02 07 00 00 00 00
  $  REQ006:7E0 03 22 02 08 00 00 00 00       $  ANS006:7E8 03 22 02 08 00 00 00 00
  $  REQ007:7E0 03 22 02 09 00 00 00 00       $  ANS007:7E8 03 22 02 09 00 00 00 00
  $  REQ008:7E0 03 22 02 0A 00 00 00 00       $  ANS008:7E8 03 22 02 0A 00 00 00 00
  $  REQ009:7E0 03 22 02 10 00 00 00 00       $  ANS009:7E8 03 22 02 10 00 00 00 00
  $  REQ010:7E0 03 22 02 11 00 00 00 00       $  ANS010:7E8 03 22 02 11 00 00 00 00
  $  REQ011:7E0 03 22 02 12 00 00 00 00       $  ANS011:7E8 03 22 02 12 00 00 00 00
  $  REQ012:7E0 03 22 02 13 00 00 00 00       $  ANS012:7E8 03 22 02 13 00 00 00 00
  $  REQ013:7E0 03 22 02 14 00 00 00 00       $  ANS013:7E8 03 22 02 14 00 00 00 00
  $  REQ014:7E0 03 22 02 15 00 00 00 00       $  ANS014:7E8 03 22 02 15 00 00 00 00
  $  REQ015:7E0 03 22 02 16 00 00 00 00       $  ANS015:7E8 03 22 02 16 00 00 00 00
  $  REQ016:7E0 03 22 02 17 00 00 00 00       $  ANS016:7E8 03 22 02 17 00 00 00 00
  $  REQ017:7E0 03 22 02 18 00 00 00 00       $  ANS017:7E8 03 22 02 18 00 00 00 00
  $  REQ018:7E0 03 22 02 19 00 00 00 00       $  ANS018:7E8 03 22 02 19 00 00 00 00
  $  REQ019:7E0 03 22 02 1A 00 00 00 00       $  ANS019:7E8 03 22 02 1A 00 00 00 00
  $  REQ020:7E0 03 22 02 1D 00 00 00 00       $  ANS020:7E8 03 22 02 1D 00 00 00 00
  $  REQ021:7E0 03 22 02 23 00 00 00 00       $  ANS021:7E8 03 22 02 23 00 00 00 00
  $  REQ022:7E0 03 22 02 1E 00 00 00 00       $  ANS022:7E8 03 22 02 1E 00 00 00 00
  $  REQ023:7E0 03 22 02 30 00 00 00 00       $  ANS023:7E8 03 22 02 30 00 00 00 00
  $  REQ024:7E0 03 22 02 31 00 00 00 00       $  ANS024:7E8 03 22 02 31 00 00 00 00
  $  REQ025:7E0 03 22 02 33 00 00 00 00       $  ANS025:7E8 03 22 02 33 00 00 00 00
  $  REQ026:7E0 03 22 02 34 00 00 00 00       $  ANS026:7E8 03 22 02 34 00 00 00 00
  $  REQ027:7E0 03 22 02 35 00 00 00 00       $  ANS027:7E8 03 22 02 35 00 00 00 00
  $  REQ028:7E0 03 22 02 37 00 00 00 00       $  ANS028:7E8 03 22 02 37 00 00 00 00
  $  REQ029:7E0 03 22 02 38 00 00 00 00       $  ANS029:7E8 03 22 02 38 00 00 00 00
  $  REQ030:7E0 03 22 02 40 00 00 00 00       $  ANS030:7E8 03 22 02 40 00 00 00 00
  $  REQ031:7E0 03 22 02 42 00 00 00 00       $  ANS031:7E8 03 22 02 42 00 00 00 00
  $  REQ032:7E0 03 22 02 44 00 00 00 00       $  ANS032:7E8 03 22 02 44 00 00 00 00
  $  REQ033:7E0 03 22 02 45 00 00 00 00       $  ANS033:7E8 03 22 02 45 00 00 00 00
  $  REQ034:7E0 03 22 02 47 00 00 00 00       $  ANS034:7E8 03 22 02 47 00 00 00 00
  $  REQ035:7E0 03 22 02 49 00 00 00 00       $  ANS035:7E8 03 22 02 49 00 00 00 00
  $  REQ036:7E0 03 22 02 4A 00 00 00 00       $  ANS036:7E8 03 22 02 4A 00 00 00 00
  $  REQ037:7E0 03 22 02 4B 00 00 00 00       $  ANS037:7E8 03 22 02 4B 00 00 00 00
  $  REQ038:7E0 03 22 02 4C 00 00 00 00       $  ANS038:7E8 03 22 02 4C 00 00 00 00
  $  REQ039:7E0 03 22 02 4D 00 00 00 00       $  ANS039:7E8 03 22 02 4D 00 00 00 00
  $  REQ040:7E0 03 22 02 70 00 00 00 00       $  ANS040:7E8 03 22 02 70 00 00 00 00
  $  REQ041:7E0 03 22 02 71 00 00 00 00       $  ANS041:7E8 03 22 02 71 00 00 00 00
  $  REQ042:7E0 03 22 02 72 00 00 00 00       $  ANS042:7E8 03 22 02 72 00 00 00 00
  $  REQ043:7E0 03 22 02 73 00 00 00 00       $  ANS043:7E8 03 22 02 73 00 00 00 00
  $  REQ044:7E0 03 22 02 74 00 00 00 00       $  ANS044:7E8 03 22 02 74 00 00 00 00
  $  REQ045:7E0 03 22 02 75 00 00 00 00       $  ANS045:7E8 03 22 02 75 00 00 00 00
  $  REQ046:7E0 03 22 02 76 00 00 00 00       $  ANS046:7E8 03 22 02 76 00 00 00 00
  $  REQ047:7E0 03 22 02 77 00 00 00 00       $  ANS047:7E8 03 22 02 77 00 00 00 00
  $  REQ048:7E0 03 22 02 78 00 00 00 00       $  ANS048:7E8 03 22 02 78 00 00 00 00
  $  REQ049:7E0 03 22 02 79 00 00 00 00       $  ANS049:7E8 03 22 02 79 00 00 00 00
  $  REQ050:7E0 03 22 02 7A 00 00 00 00       $  ANS050:7E8 03 22 02 7A 00 00 00 00
  $  REQ051:7E0 03 22 02 7B 00 00 00 00       $  ANS051:7E8 03 22 02 7B 00 00 00 00
  $  REQ052:7E0 03 22 02 80 00 00 00 00       $  ANS052:7E8 03 22 02 80 00 00 00 00
  $  REQ053:7E0 03 22 02 81 00 00 00 00       $  ANS053:7E8 03 22 02 81 00 00 00 00
  $  REQ054:7E0 03 22 02 84 00 00 00 00       $  ANS054:7E8 03 22 02 84 00 00 00 00
  $  REQ055:7E0 03 22 02 85 00 00 00 00       $  ANS055:7E8 03 22 02 85 00 00 00 00
  $  REQ056:7E0 03 22 02 86 00 00 00 00       $  ANS056:7E8 03 22 02 86 00 00 00 00
  $  REQ057:7E0 03 22 02 87 00 00 00 00       $  ANS057:7E8 03 22 02 87 00 00 00 00
  $  REQ058:7E0 03 22 02 88 00 00 00 00       $  ANS058:7E8 03 22 02 88 00 00 00 00
  $  REQ059:7E0 03 22 02 89 00 00 00 00       $  ANS059:7E8 03 22 02 89 00 00 00 00
  $  REQ060:7E0 03 22 02 8A 00 00 00 00       $  ANS060:7E8 03 22 02 8A 00 00 00 00
  $  REQ061:7E0 03 22 02 8B 00 00 00 00       $  ANS061:7E8 03 22 02 8B 00 00 00 00
  $  REQ062:7E0 03 22 02 8C 00 00 00 00       $  ANS062:7E8 03 22 02 8C 00 00 00 00
  $  REQ063:7E0 03 22 02 8D 00 00 00 00       $  ANS063:7E8 03 22 02 8D 00 00 00 00
  $  REQ064:7E0 03 22 02 8E 00 00 00 00       $  ANS064:7E8 03 22 02 8E 00 00 00 00
  $  REQ065:7E0 03 22 02 8F 00 00 00 00       $  ANS065:7E8 03 22 02 8F 00 00 00 00
  $  REQ066:7E0 03 22 02 90 00 00 00 00       $  ANS066:7E8 03 22 02 90 00 00 00 00
  $  REQ067:7E0 03 22 02 91 00 00 00 00       $  ANS067:7E8 03 22 02 91 00 00 00 00
  $  REQ068:7E0 03 22 02 92 00 00 00 00       $  ANS068:7E8 03 22 02 92 00 00 00 00
  $  REQ069:7E0 03 22 02 93 00 00 00 00       $  ANS069:7E8 03 22 02 93 00 00 00 00
  $  REQ070:7E0 03 22 02 94 00 00 00 00       $  ANS070:7E8 03 22 02 94 00 00 00 00
  $  REQ071:7E0 03 22 02 95 00 00 00 00       $  ANS071:7E8 03 22 02 95 00 00 00 00
  $  REQ072:7E0 03 22 02 96 00 00 00 00       $  ANS072:7E8 03 22 02 96 00 00 00 00
  $  REQ073:7E0 03 22 02 97 00 00 00 00       $  ANS073:7E8 03 22 02 97 00 00 00 00
  $  REQ074:7E0 03 22 02 98 00 00 00 00       $  ANS074:7E8 03 22 02 98 00 00 00 00
  $  REQ075:7E0 03 22 02 99 00 00 00 00       $  ANS075:7E8 03 22 02 99 00 00 00 00
  $  REQ076:7E0 03 22 02 9A 00 00 00 00       $  ANS076:7E8 03 22 02 9A 00 00 00 00
  $  REQ077:7E0 03 22 02 9B 00 00 00 00       $  ANS077:7E8 03 22 02 9B 00 00 00 00
  $  REQ078:7E0 03 22 02 B0 00 00 00 00       $  ANS078:7E8 03 22 02 B0 00 00 00 00
  $  REQ079:7E0 03 22 02 B2 00 00 00 00       $  ANS079:7E8 03 22 02 B2 00 00 00 00
  $  REQ080:7E0 03 22 02 B4 00 00 00 00       $  ANS080:7E8 03 22 02 B4 00 00 00 00
  $  REQ081:7E0 03 22 02 B6 00 00 00 00       $  ANS081:7E8 03 22 02 B6 00 00 00 00
  $  REQ082:7E0 03 22 02 B8 00 00 00 00       $  ANS082:7E8 03 22 02 B8 00 00 00 00
  $  REQ083:7E0 03 22 02 BA 00 00 00 00       $  ANS083:7E8 03 22 02 BA 00 00 00 00
  $  REQ084:7E0 03 22 02 BC 00 00 00 00       $  ANS084:7E8 03 22 02 BC 00 00 00 00
  $  REQ085:7E0 03 22 02 BE 00 00 00 00       $  ANS085:7E8 03 22 02 BE 00 00 00 00
  $  REQ086:7E0 03 22 02 C0 00 00 00 00       $  ANS086:7E8 03 22 02 C0 00 00 00 00
  $  REQ087:7E0 03 22 02 C1 00 00 00 00       $  ANS087:7E8 03 22 02 C1 00 00 00 00
  $  REQ088:7E0 03 22 02 C2 00 00 00 00       $  ANS088:7E8 03 22 02 C2 00 00 00 00
  $  REQ089:7E0 03 22 02 C3 00 00 00 00       $  ANS089:7E8 03 22 02 C3 00 00 00 00
  $  REQ090:7E0 03 22 02 C4 00 00 00 00       $  ANS090:7E8 03 22 02 C4 00 00 00 00
  $  REQ091:7E0 03 22 02 C5 00 00 00 00       $  ANS091:7E8 03 22 02 C5 00 00 00 00
  $  REQ092:7E0 03 22 02 C6 00 00 00 00       $  ANS092:7E8 03 22 02 C6 00 00 00 00
  $  REQ093:7E0 03 22 02 D0 00 00 00 00       $  ANS093:7E8 03 22 02 D0 00 00 00 00
  $  REQ094:7E0 03 22 02 D1 00 00 00 00       $  ANS094:7E8 03 22 02 D1 00 00 00 00
  $  REQ095:7E0 03 22 02 D2 00 00 00 00       $  ANS095:7E8 03 22 02 D2 00 00 00 00
  $  REQ096:7E0 03 22 02 D3 00 00 00 00       $  ANS096:7E8 03 22 02 D3 00 00 00 00
  $  REQ097:7E0 03 22 02 D4 00 00 00 00       $  ANS097:7E8 03 22 02 D4 00 00 00 00
  $  REQ098:7E0 03 22 02 D5 00 00 00 00       $  ANS098:7E8 03 22 02 D5 00 00 00 00
  $  REQ099:7E0 03 22 02 D8 00 00 00 00       $  ANS099:7E8 03 22 02 D8 00 00 00 00
  $  REQ100:7E0 03 22 02 D9 00 00 00 00       $  ANS100:7E8 03 22 02 D9 00 00 00 00
  $  REQ101:7E0 03 22 02 DA 00 00 00 00       $  ANS101:7E8 03 22 02 DA 00 00 00 00
  $  REQ102:7E0 03 22 02 DB 00 00 00 00       $  ANS102:7E8 03 22 02 DB 00 00 00 00
  $  REQ103:7E0 03 22 02 E0 00 00 00 00       $  ANS103:7E8 03 22 02 E0 00 00 00 00
  $  REQ104:7E0 03 22 02 E1 00 00 00 00       $  ANS104:7E8 03 22 02 E1 00 00 00 00
  $  REQ105:7E0 03 22 02 E2 00 00 00 00       $  ANS105:7E8 03 22 02 E2 00 00 00 00
  $  REQ106:7E0 03 22 02 E3 00 00 00 00       $  ANS106:7E8 03 22 02 E3 00 00 00 00
  $  REQ107:7E0 03 22 02 E4 00 00 00 00       $  ANS107:7E8 03 22 02 E4 00 00 00 00
  $  REQ108:7E0 03 22 02 E5 00 00 00 00       $  ANS108:7E8 03 22 02 E5 00 00 00 00
  $  REQ109:7E0 03 22 02 E7 00 00 00 00       $  ANS109:7E8 03 22 02 E7 00 00 00 00
  $  REQ110:7E0 03 22 02 F0 00 00 00 00       $  ANS110:7E8 03 22 02 F0 00 00 00 00
  $  REQ111:7E0 03 22 02 F1 00 00 00 00       $  ANS111:7E8 03 22 02 F1 00 00 00 00
  $  REQ112:7E0 03 22 02 F2 00 00 00 00       $  ANS112:7E8 03 22 02 F2 00 00 00 00
  $  REQ113:7E0 03 22 02 F3 00 00 00 00       $  ANS113:7E8 03 22 02 F3 00 00 00 00
  $  REQ114:7E0 03 22 02 F4 00 00 00 00       $  ANS114:7E8 03 22 02 F4 00 00 00 00
  $  REQ115:7E0 03 22 02 F5 00 00 00 00       $  ANS115:7E8 03 22 02 F5 00 00 00 00
  $  REQ116:7E0 03 22 02 F6 00 00 00 00       $  ANS116:7E8 03 22 02 F6 00 00 00 00
  $  REQ117:7E0 03 22 02 F7 00 00 00 00       $  ANS117:7E8 03 22 02 F7 00 00 00 00
  $  REQ118:7E0 03 22 03 00 00 00 00 00       $  ANS118:7E8 03 22 03 00 00 00 00 00
  $  REQ119:7E0 03 22 03 01 00 00 00 00       $  ANS119:7E8 03 22 03 01 00 00 00 00
  $  REQ120:7E0 03 22 03 02 00 00 00 00       $  ANS120:7E8 03 22 03 02 00 00 00 00
  $  REQ121:7E0 03 22 03 03 00 00 00 00       $  ANS121:7E8 03 22 03 03 00 00 00 00
  $  REQ122:7E0 03 22 03 04 00 00 00 00       $  ANS122:7E8 03 22 03 04 00 00 00 00
  $  REQ123:7E0 03 22 03 05 00 00 00 00       $  ANS123:7E8 03 22 03 05 00 00 00 00
  $  REQ124:7E0 03 22 03 06 00 00 00 00       $  ANS124:7E8 03 22 03 06 00 00 00 00
  $  REQ125:7E0 03 22 03 11 00 00 00 00       $  ANS125:7E8 03 22 03 11 00 00 00 00
  $  REQ126:7E0 03 22 03 12 00 00 00 00       $  ANS126:7E8 03 22 03 12 00 00 00 00
  $  REQ127:7E0 03 22 03 20 00 00 00 00       $  ANS127:7E8 03 22 03 20 00 00 00 00
  $  REQ128:7E0 03 22 03 21 00 00 00 00       $  ANS128:7E8 03 22 03 21 00 00 00 00
  $  REQ129:7E0 03 22 03 22 00 00 00 00       $  ANS129:7E8 03 22 03 22 00 00 00 00
  $  REQ130:7E0 03 22 03 23 00 00 00 00       $  ANS130:7E8 03 22 03 23 00 00 00 00
  $  REQ131:7E0 03 22 03 24 00 00 00 00       $  ANS131:7E8 03 22 03 24 00 00 00 00
  $  REQ132:7E0 03 22 03 25 00 00 00 00       $  ANS132:7E8 03 22 03 25 00 00 00 00
  $  REQ133:7E0 03 22 03 28 00 00 00 00       $  ANS133:7E8 03 22 03 28 00 00 00 00
  $  REQ134:7E0 03 22 03 29 00 00 00 00       $  ANS134:7E8 03 22 03 29 00 00 00 00
  $  REQ135:7E0 03 22 03 2A 00 00 00 00       $  ANS135:7E8 03 22 03 2A 00 00 00 00
  $  REQ136:7E0 03 22 03 2B 00 00 00 00       $  ANS136:7E8 03 22 03 2B 00 00 00 00
  $  REQ137:7E0 03 22 03 2C 00 00 00 00       $  ANS137:7E8 03 22 03 2C 00 00 00 00
  $  REQ138:7E0 03 22 03 2D 00 00 00 00       $  ANS138:7E8 03 22 03 2D 00 00 00 00
  $  REQ139:7E0 03 22 03 30 00 00 00 00       $  ANS139:7E8 03 22 03 30 00 00 00 00
  $  REQ140:7E0 03 22 03 31 00 00 00 00       $  ANS140:7E8 03 22 03 31 00 00 00 00
  $  REQ141:7E0 03 22 03 32 00 00 00 00       $  ANS141:7E8 03 22 03 32 00 00 00 00
  $  REQ142:7E0 03 22 03 33 00 00 00 00       $  ANS142:7E8 03 22 03 33 00 00 00 00

  $  000.起动条件                                                            $    $              $    $  ANS000.BYTE004  $  Y=HEX(X1);
  $  001.怠速状态                                                            $    $              $    $  ANS001.BYTE004  $  Y=HEX(X1);
  $  002.离合器踏板状态                                                      $    $              $    $  ANS002.BYTE004  $  if(((X1>>0)&1)) Y=@04fb; else Y=@04fc;
  $  003.制动踏板状态                                                        $    $              $    $  ANS003.BYTE004  $  if(X1==0) Y=@04f8; else if(X1==1) Y=@04f9; else if(X1==3) Y=@04fa;else y=@0004;
  $  004.错误反应： 出于安全原因不可逆切断燃油                               $    $              $    $  ANS004.BYTE004  $  if(X1==0) y=@04fe; else if(X1==1) y=@04ff;else y=@0004;
  $  005.故障指示灯状态                                                      $    $              $    $  ANS005.BYTE004  $  if(X1==0) y=@0014; else if(X1==255) y=@0015;else Y=@04fd;
  $  006.电源故障条件                                                        $    $              $    $  ANS006.BYTE004  $  if(X1==0) y=@00f5; else if(X1==1) y=@0071;else y=@0004;
  $  007.完成驾驶循环条件                                                    $    $              $    $  ANS007.BYTE004  $  if(X1==0) y=@0500; else if(X1==1) y=@0501;else y=@0004;
  $  008.完成暖机循环条件                                                    $    $              $    $  ANS008.BYTE004  $  if(X1==0) y=@0502; else if(X1==1) y=@0503;else y=@0004;
  $  009.发动机转速                                                          $    $  rpm         $    $  ANS009.BYTE004  $  Y=((X1*256+X2)*1)/4;
  $  010.电瓶电压                                                            $    $  V           $    $  ANS010.BYTE004  $  Y=X1*0.1;
  $  011.车速                                                                $    $  km/h        $    $  ANS011.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.01;else Y=((X1*256+X2)-0x10000)*0.01;
  $  012.发动机怠速标称值                                                    $    $  rpm         $    $  ANS012.BYTE004  $  Y=X1*10;
  $  013.油门踏板电位计（电位计1）                                           $    $  V           $    $  ANS013.BYTE004  $  Y=(X1*256+X2)*0.0048;
  $  014.油门踏板电位计（电位计2）                                           $    $  V           $    $  ANS014.BYTE004  $  Y=(X1*256+X2)*0.0048;
  $  015.油门踏板位置                                                        $    $  %           $    $  ANS015.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.01220703125;else Y=((X1*256+X2)-0x10000)*0.01220703125;
  $  016.踏板状态                                                            $    $              $    $  ANS016.BYTE004  $  Y=X1*1;
  $  017.环境空气压力                                                        $    $  hPa         $    $  ANS017.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*1;else Y=((X1*256+X2)-0x10000)*1;
  $  018.环境温度                                                            $    $  degC        $    $  ANS018.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.1-273.14;else Y=((X1*256+X2)-0x10000)*0.1-273.14;
  $  019.挡位指示灯                                                          $    $              $    $  ANS019.BYTE004  $  if(X1<0x80) Y=X1*1;else Y=(X1-0x100)*1;
  $  020.巡航控制设定车速                                                    $    $  km/h        $    $  ANS020.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.01;else Y=((X1*256+X2)-0x10000)*0.01;
  $  021.实际档位状态                                                        $    $              $    $  ANS021.BYTE004  $  if(X1<0x80) Y=X1*1;else Y=(X1-0x100)*1;
  $  022.巡航控制状态                                                        $    $              $    $  ANS022.BYTE004  $  Y=X1;
  $  023.进气温度                                                            $    $  degC        $    $  ANS023.BYTE004  $  Y=X1*0.75-48;
  $  024.tfa1传感器的进气温度                                                $    $  degC        $    $  ANS024.BYTE004  $  Y=(X1*256+X2)*0.0234375-273.15;
  $  025.空气质量流量                                                        $    $  kg/h        $    $  ANS025.BYTE004  $  Y=(X1*256+X2)*0.1;
  $  026.高度修正因素                                                        $    $              $    $  ANS026.BYTE004  $  Y=(X1*256+X2)*0.00006103575625;
  $  027.上游节气门空气温度                                                  $    $  degC        $    $  ANS027.BYTE004  $  Y=(X1*256+X2)*0.0234375-273.15;
  $  028.进气歧管压力                                                        $    $  hPa         $    $  ANS028.BYTE004  $  Y=(X1*256+X2)*0.03960625;
  $  029.上游节气门阀压力                                                    $    $  hPa         $    $  ANS029.BYTE004  $  Y=(X1*256+X2)*0.078125;
  $  030.节气门自学习的学习步数计数器                                        $    $              $    $  ANS030.BYTE004  $  Y=X1*1;
  $  031.DV-E 自适应: 状态测试条件                                           $    $              $    $  ANS031.BYTE004  $  Y=X1*1;
  $  032.经过节气门的偏差标准空气质量流量                                    $    $  kg/h        $    $  ANS032.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.1;else Y=((X1*256+X2)-0x10000)*0.1;
  $  033.HFM（热膜式空气流量计）空气质量流量                                 $    $  kg/h        $    $  ANS033.BYTE004  $  Y=(X1*256+X2)*0.1;
  $  034.来自HFM（热膜式空气流量计）的与空气质量流量信号对应的周期时间       $    $  us          $    $  ANS034.BYTE004  $  Y=(X1*256+X2)*0.1;
  $  035.相对发动机负荷                                                      $    $  %           $    $  ANS035.BYTE004  $  Y=(X1*256+X2)*0.0234375;
  $  036.因未知的或错误的节气门位置导致安全断油                              $    $              $    $  ANS036.BYTE004  $  if(X1==0) y=@0005; else if(X1==1) y=@0016;else y=@0004;
  $  037.节气门执行器操作                                                    $    $              $    $  ANS037.BYTE004  $  if(X1==0) y=@0005; else if(X1==1) y=@0016;else y=@0004;
  $  038.节气门执行器跛行回家操作                                            $    $              $    $  ANS038.BYTE004  $  if(X1==0) y=@0005; else if(X1==1) y=@0016;else y=@0004;
  $  039.节气门角度                                                          $    $  %DK         $    $  ANS039.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.0244017752;else Y=((X1*256+X2)-0x10000)*0.0244017752;
  $  040.进入歧管的质量流量净化控制                                          $    $  kg/h        $    $  ANS040.BYTE004  $  Y=(X1*256+X2)*0.000390625;
  $  041.净化控制阀占空比                                                    $    $  %           $    $  ANS041.BYTE004  $  Y=(X1*256+X2)*0.00152587890625;
  $  042.氧传感器控制因素                                                    $    $              $    $  ANS042.BYTE004  $  Y=(X1*256+X2)*0.000030517578125;
  $  043.氧传感器控制因素-缸组2                                              $    $              $    $  ANS043.BYTE004  $  Y=(X1*256+X2)*0.000030517578125;
  $  044.实际负荷下乘法混合气自适应因素                                      $    $              $    $  ANS044.BYTE004  $  Y=(X1*256+X2)*0.000030517578125;
  $  045.实际负荷下乘法混合气自适应因素-缸组2                                $    $              $    $  ANS045.BYTE004  $  Y=(X1*256+X2)*0.000030517578125;
  $  046.混合气自适应的加法修正                                              $    $  %           $    $  ANS046.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.046875;else Y=((X1*256+X2)-0x10000)*0.046875;
  $  047.混合气自适应的加法修正                                              $    $  %           $    $  ANS047.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.046875;else Y=((X1*256+X2)-0x10000)*0.046875;
  $  048.催化转换器上游氧传感器实际值                                        $    $              $    $  ANS048.BYTE004  $  Y=(X1*256+X2)*0.000244140625;
  $  049.催化转换器上游氧传感器实际值-缸组2                                  $    $              $    $  ANS049.BYTE004  $  Y=(X1*256+X2)*0.000244140625;
  $  050.催化转换器上游氧传感器标称值                                        $    $              $    $  ANS050.BYTE004  $  Y=(X1*256+X2)*0.000244140625;
  $  051.催化转换器上游氧传感器标称值-缸组2                                  $    $              $    $  ANS051.BYTE004  $  Y=(X1*256+X2)*0.000244140625;
  $  052.催化转换器下游氧传感器电压                                          $    $  V           $    $  ANS052.BYTE004  $  Y=(X1*256+X2)*0.0048828125-1;
  $  053.催化转换器下游氧传感器电压-缸组2                                    $    $  V           $    $  ANS053.BYTE004  $  Y=(X1*256+X2)*0.0048828125-1;
  $  054.催化转换器下游氧传感器测量值                                        $    $              $    $  ANS054.BYTE004  $  Y=(X1*256+X2)*0.000030517578125;
  $  055.催化转换器下游氧传感器测量值                                        $    $              $    $  ANS055.BYTE004  $  Y=(X1*256+X2)*0.000030517578125;
  $  056.催化转换器下游连续氧传感器闭环控制I部分                             $    $              $    $  ANS056.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.000030517578125;else Y=((X1*256+X2)-0x10000)*0.000030517578125;
  $  057.催化转换器下游连续氧传感器闭环控制I部分-缸组2                       $    $              $    $  ANS057.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.000030517578125;else Y=((X1*256+X2)-0x10000)*0.000030517578125;
  $  058.相对燃油质量                                                        $    $  %           $    $  ANS058.BYTE004  $  Y=(X1*256+X2)*0.046875;
  $  059.相对燃油质量，缸组2                                                 $    $  %           $    $  ANS059.BYTE004  $  Y=(X1*256+X2)*0.046875;
  $  060.实际气缸切断步骤                                                    $    $              $    $  ANS060.BYTE004  $  Y=X1*1;
  $  061.功能状态计数器DMTL短测试                                            $    $              $    $  ANS061.BYTE004  $  Y=X1*1;
  $  062.从上一个驾驶周期输出的测试仪功能状态计数器DMTL                      $    $              $    $  ANS062.BYTE004  $  Y=X1*1;
  $  063.燃油液位                                                            $    $  L           $    $  ANS063.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.1;else Y=((X1*256+X2)-0x10000)*0.1;
  $  064.油耗                                                                $    $  mL/s        $    $  ANS064.BYTE004  $  Y=(X1*256+X2)*0.005960464477;
  $  065.催化转换器加热状态                                                  $    $              $    $  ANS065.BYTE004  $  if(X1==0) y=@0005; else if(X1==1) y=@0016;else y=@0004;
  $  066.燃油切断状态                                                        $    $              $    $  ANS066.BYTE004  $  if(X1==0) y=@0005; else if(X1==1) y=@0016;else y=@0004;
  $  067.催化转换器上游氧传感器闭环控制状态                                  $    $              $    $  ANS067.BYTE004  $  if(X1==0) y=@0005; else if(X1==1) y=@0016;else y=@0004;
  $  068.催化转换器上游氧传感器闭环控制状态-缸组2                            $    $              $    $  ANS068.BYTE004  $  if(X1==0) y=@0005; else if(X1==1) y=@0016;else y=@0004;
  $  069.催化转换器下游氧传感器闭环控制状态                                  $    $              $    $  ANS069.BYTE004  $  if(X1==0) y=@0005; else if(X1==1) y=@0016;else y=@0004;
  $  070.催化转换器下游氧传感器闭环控制状态-缸组2                            $    $              $    $  ANS070.BYTE004  $  if(X1==0) y=@0005; else if(X1==1) y=@0016;else y=@0004;
  $  071.净化控制状态                                                        $    $              $    $  ANS071.BYTE004  $  if(X1==0) y=@0005; else if(X1==1) y=@0016;else y=@0004;
  $  072.加法燃油混合气自适应状态                                            $    $              $    $  ANS072.BYTE004  $  if(X1==0) y=@0005; else if(X1==1) y=@0016;else y=@0004;
  $  073.加法燃油混合气自适应状态-缸组2                                      $    $              $    $  ANS073.BYTE004  $  if(X1==0) y=@0005; else if(X1==1) y=@0016;else y=@0004;
  $  074.乘法燃油混合气自适应状态                                            $    $              $    $  ANS074.BYTE004  $  if(X1==0) y=@0005; else if(X1==1) y=@0016;else y=@0004;
  $  075.乘法燃油混合气自适应状态-缸组2                                      $    $              $    $  ANS075.BYTE004  $  if(X1==0) y=@0005; else if(X1==1) y=@0016;else y=@0004;
  $  076.燃油泵继电器1释放                                                   $    $              $    $  ANS076.BYTE004  $  if(X1==0) y=@050a; else if(X1==1) y=@0029;else y=@0004;
  $  077.燃油低压                                                            $    $  kPa         $    $  ANS077.BYTE004  $  Y=(X1*256+X2)*0.1;
  $  078.与曲轴相关的进气凸轮轴边缘角度                                      $    $  Grad KW     $    $  ANS078.BYTE004  $  Y=(X1*256+X2)*0.1;
  $  079.与曲轴相关的排气凸轮轴边缘角度                                      $    $  Grad KW     $    $  ANS079.BYTE004  $  Y=(X1*256+X2)*0.1;
  $  080.进气凸轮轴控制占空比                                                $    $  %           $    $  ANS080.BYTE004  $  Y=(X1*256+X2)*0.00152587890625;
  $  081.排气凸轮轴控制占空比                                                $    $  %           $    $  ANS081.BYTE004  $  Y=(X1*256+X2)*0.00152587890625;
  $  082.角度：进气阀打开绝对角，与参考位置相关                              $    $  Grad KW     $    $  ANS082.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.0078125;else Y=((X1*256+X2)-0x10000)*0.0078125;
  $  083.角度：进气阀打开绝对角，与参考位置相关                              $    $  Grad KW     $    $  ANS083.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.0078125;else Y=((X1*256+X2)-0x10000)*0.0078125;
  $  084.角度：进气阀打开绝对角，与参考位置相关                              $    $  Grad KW     $    $  ANS084.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.0078125;else Y=((X1*256+X2)-0x10000)*0.0078125;
  $  085.角度：进气阀打开绝对角，与参考位置相关                              $    $  Grad KW     $    $  ANS085.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.0078125;else Y=((X1*256+X2)-0x10000)*0.0078125;
  $  086.角度：进气阀打开绝对角，与参考位置相关                              $    $  Grad KW     $    $  ANS086.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.0078125;else Y=((X1*256+X2)-0x10000)*0.0078125;
  $  087.排气凸轮轴角度预控制值                                              $    $  Grad KW     $    $  ANS087.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.0078125;else Y=((X1*256+X2)-0x10000)*0.0078125;
  $  088.进气阀和排气阀的凸轮轴重叠角度                                      $    $  Grad KW     $    $  ANS088.BYTE004  $  Y=(X1*256+X2)*0.001953125;
  $  089.凸轮轴重叠称重因素                                                  $    $              $    $  ANS089.BYTE004  $  Y=X1*0.00390625;
  $  090.凸轮轴控制状态                                                      $    $              $    $  ANS090.BYTE004  $  if(X1==0) y=@0005; else if(X1==1) y=@0016;else y=@0004;
  $  091.曲轴/凸轮轴（进气）自适应已执行                                     $    $              $    $  ANS091.BYTE004  $  if(X1==0) y=@0508; else if(X1==1) y=@0509;else y=@0004;
  $  092.曲轴/凸轮轴（排气）自适应已执行                                     $    $              $    $  ANS092.BYTE004  $  if(X1==0) y=@0508; else if(X1==1) y=@0509;else y=@0004;
  $  093.排气间隔的DMD计数器0                                                $    $              $    $  ANS093.BYTE004  $  Y=(X1*256+X2)*1;
  $  094.排气间隔的DMD计数器1                                                $    $              $    $  ANS094.BYTE004  $  Y=(X1*256+X2)*1;
  $  095.排气间隔的DMD计数器2                                                $    $              $    $  ANS095.BYTE004  $  Y=(X1*256+X2)*1;
  $  096.排气间隔的DMD计数器3                                                $    $              $    $  ANS096.BYTE004  $  Y=(X1*256+X2)*1;
  $  097.排气间隔的DMD计数器4                                                $    $              $    $  ANS097.BYTE004  $  Y=(X1*256+X2)*1;
  $  098.排气间隔的DMD计数器5                                                $    $              $    $  ANS098.BYTE004  $  Y=(X1*256+X2)*1;
  $  099.全部气缸的故障计数器，统计，失火导致催化转换器损坏次数              $    $              $    $  ANS099.BYTE004  $  Y=(X1*256+X2)*1;
  $  100.全部气缸的故障计数器，统计，排放相关失火次数                        $    $              $    $  ANS100.BYTE004  $  Y=(X1*256+X2)*1;
  $  101.失火检测燃油自适应状态                                              $    $              $    $  ANS101.BYTE004  $  Y=X1;
  $  102.燃油关闭自适应                                                      $    $              $    $  ANS102.BYTE004  $  Y=X1;
  $  103.摩擦扭矩自适应的摩擦扭矩变化量                                      $    $  %           $    $  ANS103.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.003051758125;else Y=((X1*256+X2)-0x10000)*0.003051758125;
  $  104.发动机指示扭矩实际值                                                $    $  %           $    $  ANS104.BYTE004  $  Y=(X1*256+X2)*0.00152587890625;
  $  105.发动机指示扭矩期望值                                                $    $  %           $    $  ANS105.BYTE004  $  Y=(X1*256+X2)*0.00152587890625;
  $  106.驾驶员请求的相对扭矩                                                $    $  %           $    $  ANS106.BYTE004  $  Y=(X1*256+X2)*0.0030517578125;
  $  107.发动机指示扭矩最佳值                                                $    $  %           $    $  ANS107.BYTE004  $  Y=(X1*256+X2)*0.00152587890625;
  $  108.发动机拖曳扭矩                                                      $    $  %           $    $  ANS108.BYTE004  $  Y=(X1*256+X2)*0.00152587890625;
  $  109.基本扭矩                                                            $    $  %           $    $  ANS109.BYTE004  $  Y=(X1*256+X2)*0.00152587890625;
  $  110.实际点火角                                                          $    $  Grad KW     $    $  ANS110.BYTE004  $  if(X1<0x80) Y=X1*0.75;else Y=(X1-0x100)*0.75;
  $  111.爆震控制条件                                                        $    $              $    $  ANS111.BYTE004  $  if(X1==0) y=@0005; else if(X1==1) y=@0016;else y=@0004;
  $  112.基本点火角度                                                        $    $  Grad KW     $    $  ANS112.BYTE004  $  if(X1<0x80) Y=X1*0.75;else Y=(X1-0x100)*0.75;
  $  113.实际的点火效率                                                      $    $  %           $    $  ANS113.BYTE004  $  Y=X1*0.5;
  $  114.最多重启的点火角                                                    $    $  Grad KW     $    $  ANS114.BYTE004  $  if(X1<0x80) Y=X1*0.75;else Y=(X1-0x100)*0.75;
  $  115.点火角输出值                                                        $    $  Grad KW     $    $  ANS115.BYTE004  $  if(X1<0x80) Y=X1*0.75;else Y=(X1-0x100)*0.75;
  $  116.优化的车型参考点火角                                                $    $  Grad KW     $    $  ANS116.BYTE004  $  if(X1<0x80) Y=X1*0.75;else Y=(X1-0x100)*0.75;
  $  117.标准的点火效率                                                      $    $              $    $  ANS117.BYTE004  $  Y=X1*0.00390625;
  $  118.发动机温度                                                          $    $  degC        $    $  ANS118.BYTE004  $  Y=X1*0.75-48;
  $  119.风扇1占空比                                                         $    $  %           $    $  ANS119.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.01220703125;else Y=((X1*256+X2)-0x10000)*0.01220703125;
  $  120.风扇2占空比                                                         $    $  %           $    $  ANS120.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.01220703125;else Y=((X1*256+X2)-0x10000)*0.01220703125;
  $  121.风扇1控制                                                           $    $              $    $  ANS121.BYTE004  $  if(X1==0) y=@0506; else if(X1==1) y=@0507;else y=@0004;
  $  122.风扇2控制                                                           $    $              $    $  ANS122.BYTE004  $  if(X1==0) y=@0504; else if(X1==1) y=@0505;else y=@0004;
  $  123.空调压缩机状态                                                      $    $              $    $  ANS123.BYTE004  $  Y=X1*1;
  $  124.空调液压                                                            $    $  hPa         $    $  ANS124.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*2;else Y=((X1*256+X2)-0x10000)*2;
  $  125.交流发电机负荷过滤值                                                $    $  %           $    $  ANS125.BYTE004  $  if((X1*256+X2)<0x8000) Y=(X1*256+X2)*0.01;else Y=((X1*256+X2)-0x10000)*0.01;
  $  126.制动总泵压力(CAN)                                                   $    $  hPa         $    $  ANS126.BYTE004  $  if((X1*16777216+X2*65536+X3*256+X4)<0x80000000) Y=(X1*16777216+X2*65536+X3*256+X4)*1;else Y=((X1*16777216+X2*65536+X3*256+X4)-4294967296)*1;
  $  127.带动态延迟的气缸点火正时延迟额定值                                  $    $  Grad KW     $    $  ANS127.BYTE004  $  if(X1<0x80) Y=X1*0.75;else Y=(X1-0x100)*0.75;
  $  128.带动态延迟的气缸点火正时延迟额定值                                  $    $  Grad KW     $    $  ANS128.BYTE004  $  if(X1<0x80) Y=X1*0.75;else Y=(X1-0x100)*0.75;
  $  129.带动态延迟的气缸点火正时延迟额定值                                  $    $  Grad KW     $    $  ANS129.BYTE004  $  if(X1<0x80) Y=X1*0.75;else Y=(X1-0x100)*0.75;
  $  130.带动态延迟的气缸点火正时延迟额定值                                  $    $  Grad KW     $    $  ANS130.BYTE004  $  if(X1<0x80) Y=X1*0.75;else Y=(X1-0x100)*0.75;
  $  131.带动态延迟的气缸点火正时延迟额定值                                  $    $  Grad KW     $    $  ANS131.BYTE004  $  if(X1<0x80) Y=X1*0.75;else Y=(X1-0x100)*0.75;
  $  132.带动态延迟的气缸点火正时延迟额定值                                  $    $  Grad KW     $    $  ANS132.BYTE004  $  if(X1<0x80) Y=X1*0.75;else Y=(X1-0x100)*0.75;
  $  133.爆震控制的参考级别标准化，气缸1                                     $    $  V           $    $  ANS133.BYTE004  $  Y=(X1*256+X2)*0.0048828125;
  $  134.爆震控制的参考级别标准化，气缸1                                     $    $  V           $    $  ANS134.BYTE004  $  Y=(X1*256+X2)*0.0048828125;
  $  135.爆震控制的参考级别标准化，气缸1                                     $    $  V           $    $  ANS135.BYTE004  $  Y=(X1*256+X2)*0.0048828125;
  $  136.爆震控制的参考级别标准化，气缸1                                     $    $  V           $    $  ANS136.BYTE004  $  Y=(X1*256+X2)*0.0048828125;
  $  137.爆震控制的参考级别标准化，气缸1                                     $    $  V           $    $  ANS137.BYTE004  $  Y=(X1*256+X2)*0.0048828125;
  $  138.爆震控制的参考级别标准化，气缸1                                     $    $  V           $    $  ANS138.BYTE004  $  Y=(X1*256+X2)*0.0048828125;
  $  139.发动机停止释放的缺失状态                                            $    $              $    $  ANS139.BYTE004  $  Y=(X1*16777216+X2*65536+X3*256+X4)*1;
  $  140.发动机起动释放的缺失状态                                            $    $              $    $  ANS140.BYTE004  $  Y=(X1*16777216+X2*65536+X3*256+X4)*1;
  $  141.起动机控制的释放条件状态                                            $    $              $    $  ANS141.BYTE004  $  Y=(X1*256+X2)*1;
  $  142.起动机切断条件状态                                                  $    $              $    $  ANS142.BYTE004  $  Y=(X1*256+X2)*1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
