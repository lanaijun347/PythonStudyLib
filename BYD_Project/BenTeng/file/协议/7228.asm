
    车型ID：7228

    模拟：协议模拟-->7228

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7E1 02 10 01 00 00 00 00 00       $~  ANS000:7E9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E1 02 3E 00 00 00 00 00 00       $!  ANS000:7E9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E1 03 19 02 0C 00 00 00 00       $#  ANS000:7E9 03 19 02 0C 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E1 04 14 FF FF FF 00 00 00       $$  ANS000:7E9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E1 03 22 F1 82 00 00 00 00       $%  ANS000:7E9 03 22 F1 82 00 00 00 00
  $%  REQ001:7E1 03 22 F1 87 00 00 00 00       $%  ANS001:7E9 03 22 F1 87 00 00 00 00
  $%  REQ002:7E1 03 22 F1 90 00 00 00 00       $%  ANS002:7E9 03 22 F1 90 00 00 00 00
  $%  REQ003:7E1 03 22 F1 92 00 00 00 00       $%  ANS003:7E9 03 22 F1 92 00 00 00 00
  $%  REQ004:7E1 03 22 F1 93 00 00 00 00       $%  ANS004:7E9 03 22 F1 93 00 00 00 00
  $%  REQ005:7E1 03 22 F1 94 00 00 00 00       $%  ANS005:7E9 03 22 F1 94 00 00 00 00
  $%  REQ006:7E1 03 22 F1 95 00 00 00 00       $%  ANS006:7E9 03 22 F1 95 00 00 00 00
  $%  REQ007:7E1 03 22 F1 98 00 00 00 00       $%  ANS007:7E9 03 22 F1 98 00 00 00 00
  $%  REQ008:7E1 03 22 F1 99 00 00 00 00       $%  ANS008:7E9 03 22 F1 99 00 00 00 00
  $%  REQ009:7E1 03 22 F1 9B 00 00 00 00       $%  ANS009:7E9 03 22 F1 9B 00 00 00 00
  $%  REQ010:7E1 03 22 F1 9D 00 00 00 00       $%  ANS010:7E9 03 22 F1 9D 00 00 00 00
  $%  REQ011:7E1 03 22 F1 A2 00 00 00 00       $%  ANS011:7E9 03 22 F1 A2 00 00 00 00

  $%  000:生产文件号:                               $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24);
  $%  001:零件号:                                   $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  002:VIN码:                                    $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:供应商ECU(电子控制器)硬件号:              $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  004:硬件版本号:                               $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU(电子控制器)软件号:              $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:软件版本号:                               $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  007:诊断仪序列号:                             $%    $%  ANS007.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  008:编程日期:                                 $%    $%  ANS008.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);
  $%  009:标定数据标识:                             $%    $%  ANS009.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25);
  $%  010:ECU(电子控制器)安装日期数据标识符:        $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);
  $%  011:变速箱总成号:                             $%    $%  ANS011.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E1 03 22 01 00 00 00 00 00       $  ANS000:7E9 03 22 01 00 00 00 00 00
  $  REQ001:7E1 03 22 01 01 00 00 00 00       $  ANS001:7E9 03 22 01 01 00 00 00 00
  $  REQ002:7E1 03 22 01 0D 00 00 00 00       $  ANS002:7E9 03 22 01 0D 00 00 00 00
  $  REQ003:7E1 03 22 01 0E 00 00 00 00       $  ANS003:7E9 03 22 01 0E 00 00 00 00
  $  REQ004:7E1 03 22 01 0F 00 00 00 00       $  ANS004:7E9 03 22 01 0F 00 00 00 00
  $  REQ005:7E1 03 22 01 10 00 00 00 00       $  ANS005:7E9 03 22 01 10 00 00 00 00
  $  REQ006:7E1 03 22 01 11 00 00 00 00       $  ANS006:7E9 03 22 01 11 00 00 00 00
  $  REQ007:7E1 03 22 01 12 00 00 00 00       $  ANS007:7E9 03 22 01 12 00 00 00 00
  $  REQ008:7E1 03 22 01 13 00 00 00 00       $  ANS008:7E9 03 22 01 13 00 00 00 00
  $  REQ009:7E1 03 22 01 14 00 00 00 00       $  ANS009:7E9 03 22 01 14 00 00 00 00
  $  REQ010:7E1 03 22 01 15 00 00 00 00       $  ANS010:7E9 03 22 01 15 00 00 00 00
  $  REQ011:7E1 03 22 01 16 00 00 00 00       $  ANS011:7E9 03 22 01 16 00 00 00 00
  $  REQ012:7E1 03 22 01 17 00 00 00 00       $  ANS012:7E9 03 22 01 17 00 00 00 00
  $  REQ013:7E1 03 22 01 19 00 00 00 00       $  ANS013:7E9 03 22 01 19 00 00 00 00
  $  REQ014:7E1 03 22 01 1A 00 00 00 00       $  ANS014:7E9 03 22 01 1A 00 00 00 00
  $  REQ015:7E1 03 22 01 20 00 00 00 00       $  ANS015:7E9 03 22 01 20 00 00 00 00
  $  REQ016:7E1 03 22 01 21 00 00 00 00       $  ANS016:7E9 03 22 01 21 00 00 00 00
  $  REQ017:7E1 03 22 01 22 00 00 00 00       $  ANS017:7E9 03 22 01 22 00 00 00 00
  $  REQ018:7E1 03 22 01 23 00 00 00 00       $  ANS018:7E9 03 22 01 23 00 00 00 00
  $  REQ019:7E1 03 22 01 24 00 00 00 00       $  ANS019:7E9 03 22 01 24 00 00 00 00
  $  REQ020:7E1 03 22 01 25 00 00 00 00       $  ANS020:7E9 03 22 01 25 00 00 00 00
  $  REQ021:7E1 03 22 01 27 00 00 00 00       $  ANS021:7E9 03 22 01 27 00 00 00 00
  $  REQ022:7E1 03 22 01 28 00 00 00 00       $  ANS022:7E9 03 22 01 28 00 00 00 00
  $  REQ023:7E1 03 22 01 29 00 00 00 00       $  ANS023:7E9 03 22 01 29 00 00 00 00
  $  REQ024:7E1 03 22 01 2A 00 00 00 00       $  ANS024:7E9 03 22 01 2A 00 00 00 00
  $  REQ025:7E1 03 22 01 2B 00 00 00 00       $  ANS025:7E9 03 22 01 2B 00 00 00 00
  $  REQ026:7E1 03 22 01 2C 00 00 00 00       $  ANS026:7E9 03 22 01 2C 00 00 00 00
  $  REQ027:7E1 03 22 01 2D 00 00 00 00       $  ANS027:7E9 03 22 01 2D 00 00 00 00
  $  REQ028:7E1 03 22 01 2E 00 00 00 00       $  ANS028:7E9 03 22 01 2E 00 00 00 00
  $  REQ029:7E1 03 22 01 2F 00 00 00 00       $  ANS029:7E9 03 22 01 2F 00 00 00 00
  $  REQ030:7E1 03 22 01 30 00 00 00 00       $  ANS030:7E9 03 22 01 30 00 00 00 00
  $  REQ031:7E1 03 22 01 31 00 00 00 00       $  ANS031:7E9 03 22 01 31 00 00 00 00
  $  REQ032:7E1 03 22 01 32 00 00 00 00       $  ANS032:7E9 03 22 01 32 00 00 00 00
  $  REQ033:7E1 03 22 01 33 00 00 00 00       $  ANS033:7E9 03 22 01 33 00 00 00 00
  $  REQ034:7E1 03 22 01 34 00 00 00 00       $  ANS034:7E9 03 22 01 34 00 00 00 00
  $  REQ035:7E1 03 22 01 35 00 00 00 00       $  ANS035:7E9 03 22 01 35 00 00 00 00
  $  REQ036:7E1 03 22 01 36 00 00 00 00       $  ANS036:7E9 03 22 01 36 00 00 00 00
  $  REQ037:7E1 03 22 01 37 00 00 00 00       $  ANS037:7E9 03 22 01 37 00 00 00 00
  $  REQ038:7E1 03 22 01 38 00 00 00 00       $  ANS038:7E9 03 22 01 38 00 00 00 00
  $  REQ039:7E1 03 22 01 39 00 00 00 00       $  ANS039:7E9 03 22 01 39 00 00 00 00
  $  REQ040:7E1 03 22 01 3A 00 00 00 00       $  ANS040:7E9 03 22 01 3A 00 00 00 00
  $  REQ041:7E1 03 22 01 3B 00 00 00 00       $  ANS041:7E9 03 22 01 3B 00 00 00 00
  $  REQ042:7E1 03 22 01 3C 00 00 00 00       $  ANS042:7E9 03 22 01 3C 00 00 00 00
  $  REQ043:7E1 03 22 01 3D 00 00 00 00       $  ANS043:7E9 03 22 01 3D 00 00 00 00
  $  REQ044:7E1 03 22 01 3E 00 00 00 00       $  ANS044:7E9 03 22 01 3E 00 00 00 00
  $  REQ045:7E1 03 22 01 40 00 00 00 00       $  ANS045:7E9 03 22 01 40 00 00 00 00
  $  REQ046:7E1 03 22 01 41 00 00 00 00       $  ANS046:7E9 03 22 01 41 00 00 00 00
  $  REQ047:7E1 03 22 01 43 00 00 00 00       $  ANS047:7E9 03 22 01 43 00 00 00 00
  $  REQ048:7E1 03 22 01 44 00 00 00 00       $  ANS048:7E9 03 22 01 44 00 00 00 00
  $  REQ049:7E1 03 22 01 45 00 00 00 00       $  ANS049:7E9 03 22 01 45 00 00 00 00
  $  REQ050:7E1 03 22 01 46 00 00 00 00       $  ANS050:7E9 03 22 01 46 00 00 00 00
  $  REQ051:7E1 03 22 01 47 00 00 00 00       $  ANS051:7E9 03 22 01 47 00 00 00 00
  $  REQ052:7E1 03 22 01 48 00 00 00 00       $  ANS052:7E9 03 22 01 48 00 00 00 00
  $  REQ053:7E1 03 22 01 49 00 00 00 00       $  ANS053:7E9 03 22 01 49 00 00 00 00
  $  REQ054:7E1 03 22 01 4A 00 00 00 00       $  ANS054:7E9 03 22 01 4A 00 00 00 00
  $  REQ055:7E1 03 22 01 4B 00 00 00 00       $  ANS055:7E9 03 22 01 4B 00 00 00 00
  $  REQ056:7E1 03 22 01 4C 00 00 00 00       $  ANS056:7E9 03 22 01 4C 00 00 00 00
  $  REQ057:7E1 03 22 01 4D 00 00 00 00       $  ANS057:7E9 03 22 01 4D 00 00 00 00
  $  REQ058:7E1 03 22 01 4E 00 00 00 00       $  ANS058:7E9 03 22 01 4E 00 00 00 00
  $  REQ059:7E1 03 22 01 4F 00 00 00 00       $  ANS059:7E9 03 22 01 4F 00 00 00 00
  $  REQ060:7E1 03 22 01 50 00 00 00 00       $  ANS060:7E9 03 22 01 50 00 00 00 00
  $  REQ061:7E1 03 22 01 51 00 00 00 00       $  ANS061:7E9 03 22 01 51 00 00 00 00
  $  REQ062:7E1 03 22 01 52 00 00 00 00       $  ANS062:7E9 03 22 01 52 00 00 00 00
  $  REQ063:7E1 03 22 01 53 00 00 00 00       $  ANS063:7E9 03 22 01 53 00 00 00 00
  $  REQ064:7E1 03 22 01 54 00 00 00 00       $  ANS064:7E9 03 22 01 54 00 00 00 00
  $  REQ065:7E1 03 22 01 55 00 00 00 00       $  ANS065:7E9 03 22 01 55 00 00 00 00
  $  REQ066:7E1 03 22 01 56 00 00 00 00       $  ANS066:7E9 03 22 01 56 00 00 00 00
  $  REQ067:7E1 03 22 01 57 00 00 00 00       $  ANS067:7E9 03 22 01 57 00 00 00 00
  $  REQ068:7E1 03 22 01 58 00 00 00 00       $  ANS068:7E9 03 22 01 58 00 00 00 00
  $  REQ069:7E1 03 22 01 59 00 00 00 00       $  ANS069:7E9 03 22 01 59 00 00 00 00
  $  REQ070:7E1 03 22 01 5A 00 00 00 00       $  ANS070:7E9 03 22 01 5A 00 00 00 00
  $  REQ071:7E1 03 22 01 5B 00 00 00 00       $  ANS071:7E9 03 22 01 5B 00 00 00 00
  $  REQ072:7E1 03 22 01 5C 00 00 00 00       $  ANS072:7E9 03 22 01 5C 00 00 00 00
  $  REQ073:7E1 03 22 01 5D 00 00 00 00       $  ANS073:7E9 03 22 01 5D 00 00 00 00
  $  REQ074:7E1 03 22 01 5E 00 00 00 00       $  ANS074:7E9 03 22 01 5E 00 00 00 00
  $  REQ075:7E1 03 22 01 5F 00 00 00 00       $  ANS075:7E9 03 22 01 5F 00 00 00 00
  $  REQ076:7E1 03 22 01 60 00 00 00 00       $  ANS076:7E9 03 22 01 60 00 00 00 00
  $  REQ077:7E1 03 22 01 61 00 00 00 00       $  ANS077:7E9 03 22 01 61 00 00 00 00
  $  REQ078:7E1 03 22 01 62 00 00 00 00       $  ANS078:7E9 03 22 01 62 00 00 00 00
  $  REQ079:7E1 03 22 01 63 00 00 00 00       $  ANS079:7E9 03 22 01 63 00 00 00 00
  $  REQ080:7E1 03 22 01 64 00 00 00 00       $  ANS080:7E9 03 22 01 64 00 00 00 00
  $  REQ081:7E1 03 22 01 65 00 00 00 00       $  ANS081:7E9 03 22 01 65 00 00 00 00
  $  REQ082:7E1 03 22 01 66 00 00 00 00       $  ANS082:7E9 03 22 01 66 00 00 00 00
  $  REQ083:7E1 03 22 01 67 00 00 00 00       $  ANS083:7E9 03 22 01 67 00 00 00 00
  $  REQ084:7E1 03 22 01 68 00 00 00 00       $  ANS084:7E9 03 22 01 68 00 00 00 00
  $  REQ085:7E1 03 22 01 69 00 00 00 00       $  ANS085:7E9 03 22 01 69 00 00 00 00
  $  REQ086:7E1 03 22 01 6A 00 00 00 00       $  ANS086:7E9 03 22 01 6A 00 00 00 00
  $  REQ087:7E1 03 22 01 6B 00 00 00 00       $  ANS087:7E9 03 22 01 6B 00 00 00 00
  $  REQ088:7E1 03 22 01 6C 00 00 00 00       $  ANS088:7E9 03 22 01 6C 00 00 00 00
  $  REQ089:7E1 03 22 01 6D 00 00 00 00       $  ANS089:7E9 03 22 01 6D 00 00 00 00
  $  REQ090:7E1 03 22 01 6E 00 00 00 00       $  ANS090:7E9 03 22 01 6E 00 00 00 00
  $  REQ091:7E1 03 22 01 6F 00 00 00 00       $  ANS091:7E9 03 22 01 6F 00 00 00 00
  $  REQ092:7E1 03 22 01 70 00 00 00 00       $  ANS092:7E9 03 22 01 70 00 00 00 00
  $  REQ093:7E1 03 22 01 71 00 00 00 00       $  ANS093:7E9 03 22 01 71 00 00 00 00
  $  REQ094:7E1 03 22 01 72 00 00 00 00       $  ANS094:7E9 03 22 01 72 00 00 00 00
  $  REQ095:7E1 03 22 01 73 00 00 00 00       $  ANS095:7E9 03 22 01 73 00 00 00 00
  $  REQ096:7E1 03 22 01 74 00 00 00 00       $  ANS096:7E9 03 22 01 74 00 00 00 00
  $  REQ097:7E1 03 22 01 75 00 00 00 00       $  ANS097:7E9 03 22 01 75 00 00 00 00
  $  REQ098:7E1 03 22 01 76 00 00 00 00       $  ANS098:7E9 03 22 01 76 00 00 00 00
  $  REQ099:7E1 03 22 01 78 00 00 00 00       $  ANS099:7E9 03 22 01 78 00 00 00 00
  $  REQ100:7E1 03 22 01 79 00 00 00 00       $  ANS100:7E9 03 22 01 79 00 00 00 00
  $  REQ101:7E1 03 22 01 7A 00 00 00 00       $  ANS101:7E9 03 22 01 7A 00 00 00 00
  $  REQ102:7E1 03 22 01 7B 00 00 00 00       $  ANS102:7E9 03 22 01 7B 00 00 00 00
  $  REQ103:7E1 03 22 01 7C 00 00 00 00       $  ANS103:7E9 03 22 01 7C 00 00 00 00
  $  REQ104:7E1 03 22 01 7D 00 00 00 00       $  ANS104:7E9 03 22 01 7D 00 00 00 00
  $  REQ105:7E1 03 22 01 7E 00 00 00 00       $  ANS105:7E9 03 22 01 7E 00 00 00 00
  $  REQ106:7E1 03 22 01 7F 00 00 00 00       $  ANS106:7E9 03 22 01 7F 00 00 00 00
  $  REQ107:7E1 03 22 01 80 00 00 00 00       $  ANS107:7E9 03 22 01 80 00 00 00 00
  $  REQ108:7E1 03 22 01 81 00 00 00 00       $  ANS108:7E9 03 22 01 81 00 00 00 00
  $  REQ109:7E1 03 22 01 82 00 00 00 00       $  ANS109:7E9 03 22 01 82 00 00 00 00
  $  REQ110:7E1 03 22 01 83 00 00 00 00       $  ANS110:7E9 03 22 01 83 00 00 00 00
  $  REQ111:7E1 03 22 01 84 00 00 00 00       $  ANS111:7E9 03 22 01 84 00 00 00 00
  $  REQ112:7E1 03 22 01 85 00 00 00 00       $  ANS112:7E9 03 22 01 85 00 00 00 00
  $  REQ113:7E1 03 22 01 86 00 00 00 00       $  ANS113:7E9 03 22 01 86 00 00 00 00
  $  REQ114:7E1 03 22 01 87 00 00 00 00       $  ANS114:7E9 03 22 01 87 00 00 00 00
  $  REQ115:7E1 03 22 01 88 00 00 00 00       $  ANS115:7E9 03 22 01 88 00 00 00 00
  $  REQ116:7E1 03 22 01 90 00 00 00 00       $  ANS116:7E9 03 22 01 90 00 00 00 00
  $  REQ117:7E1 03 22 01 91 00 00 00 00       $  ANS117:7E9 03 22 01 91 00 00 00 00

  $  000.OEM(原厂设备制造商)配置信息           $    $            $    $  ANS000.BYTE004  $  Y=HEX(X1,X2);
  $  001.TCU(自动变速箱控制器)配置信息         $    $            $    $  ANS001.BYTE004  $  Y=HEX(X1,X2);
  $  002.IUPR                                  $    $            $    $  ANS002.BYTE004  $  0 HEX
  $  003.通讯报文激活选项                      $    $            $    $  ANS003.BYTE004  $  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $  004.功能选项                              $    $            $    $  ANS004.BYTE004  $  0 HEX
  $  005.电瓶电压                              $    $  V         $    $  ANS005.BYTE004  $  Y=(X1*256+X2)*1/4096;
  $  006.加速踏板位置                          $    $  %         $    $  ANS006.BYTE004  $  Y=X1*1/2;
  $  007.制动状态                              $    $            $    $  ANS007.BYTE004  $  if(X1==0) y=@02c2;else if(X1==1) y=@0c39;else Y=@0006;
  $  008.驻车制动状态                          $    $            $    $  ANS008.BYTE004  $  if(X1==0) y=@02c2;else if(X1==1) y=@0c3a;else Y=@0006;
  $  009.发动机转速                            $    $  rpm       $    $  ANS009.BYTE004  $  Y=(X1*256+X2)*0.597;
  $  010.怠速目标转速                          $    $  rpm       $    $  ANS010.BYTE004  $  Y=(X1*256+X2)*0.597;
  $  011.发动机扭矩                            $    $  Nm        $    $  ANS011.BYTE004  $  Y=(X1*256+X2)*1/32;
  $  012.发动机需求扭矩                        $    $  Nm        $    $  ANS012.BYTE004  $  Y=(X1*256+X2)*1/32;
  $  013.发动机水温                            $    $  degC      $    $  ANS013.BYTE004  $  Y=(X1*256+X2)*1/8;
  $  014.车速                                  $    $  km/h      $    $  ANS014.BYTE004  $  Y=(X1*256+X2)*0.01;
  $  015.断油标志                              $    $            $    $  ANS015.BYTE004  $  if(X1==0) y=@01ee;else if(X1==1) y=@01ef;else Y=@0006;
  $  016.点火开关状态                          $    $            $    $  ANS016.BYTE004  $  if(X1==0) y=@0072;else if(X1==1) y=@0071;else Y=@0006;
  $  017.P/N档位信号输出                       $    $            $    $  ANS017.BYTE004  $  if(X1==0) y=@01f9;else if(X1==1) y=@01f8;else Y=@0006;
  $  018.PRNDS位置                             $    $            $    $  ANS018.BYTE004  $  if(X1==1) y=@01fa;else if(X1==2) y=@0c2d;else if(X1==3) y=@083c;else if(X1==4) y=@0010;else if(X1==5) y=@0008;else if(X1==255) y=@0908;else Y=@0006;
  $  019.驾驶模式                              $    $            $    $  ANS019.BYTE004  $  if(X1==1) y=@01fc;else if(X1==2) y=@00f0;else if(X1==3) y=@0008;else if(X1==4) y=@01fd;else if(X1==5) y=@01fe;else if(X1==6) y=@0c2e;else Y=@0006;
  $  020.液压油温度                            $    $  degC      $    $  ANS020.BYTE004  $  Y=(X1*256+X2)*1/8;
  $  021.1-5档拨叉1位置                        $    $  V         $    $  ANS021.BYTE004  $  Y=(X1*256+X2)*1/4096;
  $  022.R-6档拨叉3位置                        $    $  V         $    $  ANS022.BYTE004  $  Y=(X1*256+X2)*1/4096;
  $  023.2-4档拨叉2位置                        $    $  V         $    $  ANS023.BYTE004  $  Y=(X1*256+X2)*1/4096;
  $  024.3-7档拨叉4位置                        $    $  V         $    $  ANS024.BYTE004  $  Y=(X1*256+X2)*1/4096;
  $  025.奇数轴转速                            $    $  rpm       $    $  ANS025.BYTE004  $  Y=(X1*256+X2)*0.597;
  $  026.偶数轴转速                            $    $  rpm       $    $  ANS026.BYTE004  $  Y=(X1*256+X2)*0.597;
  $  027.输出轴转速                            $    $  rpm       $    $  ANS027.BYTE004  $  Y=(X1*256+X2)*0.597;
  $  028.车辆行驶方向                          $    $            $    $  ANS028.BYTE004  $  if(X1==0) y=@0201;else if(X1==1) y=@0200;else Y=@0006;
  $  029.需求的奇数离合器压力                  $    $  bar       $    $  ANS029.BYTE004  $  Y=(X1*256+X2)*0.00064;
  $  030.实际的奇数离合器压力                  $    $  bar       $    $  ANS030.BYTE004  $  Y=(X1*256+X2)*0.00064;
  $  031.需求的偶数离合器压力                  $    $  bar       $    $  ANS031.BYTE004  $  Y=(X1*256+X2)*0.00064;
  $  032.实际的偶数离合器压力                  $    $  bar       $    $  ANS032.BYTE004  $  Y=(X1*256+X2)*0.00064;
  $  033.电磁阀VFS1电流                        $    $  A         $    $  ANS033.BYTE004  $  Y=(X1*256+X2)*1/16384;
  $  034.电磁阀VFS2电流                        $    $  A         $    $  ANS034.BYTE004  $  Y=(X1*256+X2)*1/16384;
  $  035.电磁阀VBS1电流                        $    $  A         $    $  ANS035.BYTE004  $  Y=(X1*256+X2)*1/16384;
  $  036.电磁阀VBS2电流                        $    $  A         $    $  ANS036.BYTE004  $  Y=(X1*256+X2)*1/16384;
  $  037.电磁阀Act1电流                        $    $  A         $    $  ANS037.BYTE004  $  Y=(X1*256+X2)*1/16384;
  $  038.电磁阀Act2电流                        $    $  A         $    $  ANS038.BYTE004  $  Y=(X1*256+X2)*1/16384;
  $  039.电磁阀Mul1电                          $    $  A         $    $  ANS039.BYTE004  $  Y=(X1*256+X2)*1/16384;
  $  040.电磁阀Mul2电流                        $    $  A         $    $  ANS040.BYTE004  $  Y=(X1*256+X2)*1/16384;
  $  041.电磁阀LS1 闭合状态                    $    $            $    $  ANS041.BYTE004  $  if(X1==0) y=@0003;else if(X1==1) y=@0004;else Y=@0006;
  $  042.电磁阀LS2 闭合状态                    $    $            $    $  ANS042.BYTE004  $  if(X1==0) y=@0003;else if(X1==1) y=@0004;else Y=@0006;
  $  043.电磁阀LS3 闭合状态                    $    $            $    $  ANS043.BYTE004  $  if(X1==0) y=@0003;else if(X1==1) y=@0004;else Y=@0006;
  $  044.电磁阀LS4 闭合状态                    $    $            $    $  ANS044.BYTE004  $  if(X1==0) y=@0003;else if(X1==1) y=@0004;else Y=@0006;
  $  045.SCO计算后的需求档位                   $    $            $    $  ANS045.BYTE004  $  if(X1==1) y=@0019;else if(X1==2) y=@001a;else if(X1==3) y=@001b;else if(X1==4) y=@001c;else if(X1==5) y=@001d;else if(X1==6) y=@001e;else if(X1==7) y=@0458;else if(X1==8) y=@0c2d;else if(X1==255) y=@083c;else Y=@0006;
  $  046.当前实际档位                          $    $            $    $  ANS046.BYTE004  $  if(X1==1) y=@0019;else if(X1==2) y=@001a;else if(X1==3) y=@001b;else if(X1==4) y=@001c;else if(X1==5) y=@001d;else if(X1==6) y=@001e;else if(X1==7) y=@0458;else if(X1==8) y=@0c2d;else if(X1==255) y=@083c;else Y=@0006;
  $  047.奇数轴离合器充油状态                  $    $            $    $  ANS047.BYTE004  $  if(X1==1) y=@0c2f;else if(X1==2) y=@0c30;else if(X1==3) y=@0c31;else if(X1==4) y=@0c32;else if(X1==5) y=@0c33;else if(X1==6) y=@0c34;else Y=@0006;
  $  048.偶数轴离合器充油状态                  $    $            $    $  ANS048.BYTE004  $  if(X1==1) y=@0c2f;else if(X1==2) y=@0c30;else if(X1==3) y=@0c31;else if(X1==4) y=@0c32;else if(X1==5) y=@0c33;else if(X1==6) y=@0c34;else Y=@0006;
  $  049.ESP(电控稳定系统)状态(禁止换档)       $    $            $    $  ANS049.BYTE004  $  if(X1==0) y=@0c35;else if(X1==1) y=@0c36;else Y=@0006;
  $  050.1-5档学习位置下限                     $    $  V         $    $  ANS050.BYTE004  $  Y=(X1*256+X2)*1/4096;
  $  051.1-5档学习位置上限                     $    $  V         $    $  ANS051.BYTE004  $  Y=(X1*256+X2)*1/4096;
  $  052.R-6档学习位置下限                     $    $  V         $    $  ANS052.BYTE004  $  Y=(X1*256+X2)*1/4096;
  $  053.R-6档学习位置上限                     $    $  V         $    $  ANS053.BYTE004  $  Y=(X1*256+X2)*1/4096;
  $  054.2-4档学习位置下限                     $    $  V         $    $  ANS054.BYTE004  $  Y=(X1*256+X2)*1/4096;
  $  055.2-4档学习位置上限                     $    $  V         $    $  ANS055.BYTE004  $  Y=(X1*256+X2)*1/4096;
  $  056.3-7档学习位置下限                     $    $  V         $    $  ANS056.BYTE004  $  Y=(X1*256+X2)*1/4096;
  $  057.3-7档学习位置上限                     $    $  V         $    $  ANS057.BYTE004  $  Y=(X1*256+X2)*1/4096;
  $  058.换挡方式                              $    $            $    $  ANS058.BYTE004  $  if(X1==1) y=@0bf1;else if(X1==2) y=@0c37;else if(X1==3) y=@0c38;else if(X1==4) y=@08e5;else if(X1==5) y=@08e6;else if(X1==6) y=@08e7;else Y=@0006;
  $  059.当前被控轴                            $    $            $    $  ANS059.BYTE004  $  if(X1==1) y=@08f1;else if(X1==2) y=@08f2;else if(X1==3) y=@02d6;else if(X1==4) y=@08f3;else Y=@0006;
  $  060.控制策略需求档位                      $    $            $    $  ANS060.BYTE004  $  if(X1==1) y=@0019;else if(X1==2) y=@001a;else if(X1==3) y=@001b;else if(X1==4) y=@001c;else if(X1==5) y=@001d;else if(X1==6) y=@001e;else if(X1==7) y=@0458;else if(X1==8) y=@0c2d;else if(X1==255) y=@083c;else Y=@0006;
  $  061.Launch（启动）状态                    $    $            $    $  ANS061.BYTE004  $  if(X1==1) y=@0bf6;else if(X1==2) y=@08f5;else if(X1==3) y=@0bf7;else if(X1==4) y=@08f7;else if(X1==5) y=@08f8;else if(X1==6) y=@08f9;else if(X1==7) y=@016e;else if(X1==8) y=@016d;else Y=@0006;
  $  062.SCO对发动机的要求                     $    $            $    $  ANS062.BYTE004  $  if(X1==1) y=@08fa;else if(X1==2) y=@08fb;else if(X1==3) y=@08fc;else if(X1==4) y=@0bf8;else if(X1==5) y=@08fe;else if(X1==6) y=@0478;else Y=@0006;
  $  063.挂挡控制模式                          $    $            $    $  ANS063.BYTE004  $  if(X1==1) y=@070f;else if(X1==2) y=@006c;else if(X1==3) y=@08ff;else if(X1==4) y=@0bf9;else if(X1==5) y=@0901;else if(X1==6) y=@008b;else if(X1==7) y=@0902;else Y=@0006;
  $  064.挂挡控制状态                          $    $            $    $  ANS064.BYTE004  $  if(X1==1) y=@0bf1;else if(X1==2) y=@08e8;else if(X1==3) y=@0bf2;else Y=@0006;
  $  065.被挂档位                              $    $            $    $  ANS065.BYTE004  $  if(X1==1) y=@0019;else if(X1==2) y=@001a;else if(X1==3) y=@001b;else if(X1==4) y=@001c;else if(X1==5) y=@001d;else if(X1==6) y=@001e;else if(X1==7) y=@0458;else if(X1==8) y=@0c2d;else if(X1==255) y=@083c;else Y=@0006;
  $  066.挂挡阶段                              $    $            $    $  ANS066.BYTE004  $  if(X1==1) y=@08e9;else if(X1==2) y=@08ea;else if(X1==3) y=@08eb;else if(X1==4) y=@08e8;else if(X1==5) y=@08ec;else Y=@0006;
  $  067.离合器目标滑移                        $    $  rpm       $    $  ANS067.BYTE004  $  Y=(X1*256+X2)*0.597;
  $  068.离合器实际滑移                        $    $  rpm       $    $  ANS068.BYTE004  $  Y=(X1*256+X2)*0.597;
  $  069.奇数轴离合器要求扭矩                  $    $  Nm        $    $  ANS069.BYTE004  $  Y=(X1*256+X2)*1/32;
  $  070.偶数轴离合器要求扭矩                  $    $  Nm        $    $  ANS070.BYTE004  $  Y=(X1*256+X2)*1/32;
  $  071.离合器的控制模式                      $    $            $    $  ANS071.BYTE004  $  if(X1==1) y=@006c;else if(X1==2) y=@0bf3;else if(X1==3) y=@0bf4;else if(X1==4) y=@0bf5;else Y=@0006;
  $  072.奇数轴离合器弹簧压力                  $    $  bar       $    $  ANS072.BYTE004  $  Y=(X1*256+X2)*0.00064;
  $  073.偶数轴离合器弹簧压力                  $    $  bar       $    $  ANS073.BYTE004  $  Y=(X1*256+X2)*0.00064;
  $  074.行使里程                              $    $  km        $    $  ANS074.BYTE004  $  Y=(X1*16777216+X2*65536+X3*256+X4)*0.001;
  $  075.换挡手柄锁开关状态                    $    $            $    $  ANS075.BYTE004  $  if(X1==0) y=@0c16;else if(X1==1) y=@0c17;else Y=@0006;
  $  076.1档有效状态                           $    $            $    $  ANS076.BYTE004  $  if(X1==1) y=@0c18;else if(X1==2) y=@0c19;else if(X1==3) y=@0c1a;else if(X1==4) y=@0c1b;else if(X1==5) y=@0c1c;else if(X1==6) y=@0c1d;else if(X1==7) y=@0c1e;else Y=@0006;
  $  077.2档有效状态                           $    $            $    $  ANS077.BYTE004  $  if(X1==1) y=@0c1f;else if(X1==2) y=@0c20;else if(X1==3) y=@0c21;else if(X1==4) y=@0c22;else if(X1==5) y=@0c23;else if(X1==6) y=@0c24;else if(X1==7) y=@0c25;else Y=@0006;
  $  078.3档有效状态                           $    $            $    $  ANS078.BYTE004  $  if(X1==1) y=@0c26;else if(X1==2) y=@0c27;else if(X1==3) y=@0c28;else if(X1==4) y=@0c29;else if(X1==5) y=@0c2a;else if(X1==6) y=@0c2b;else if(X1==7) y=@0c2c;else Y=@0006;
  $  079.4档有效状态                           $    $            $    $  ANS079.BYTE004  $  if(X1==1) y=@0bfa;else if(X1==2) y=@0bfb;else if(X1==3) y=@0bfc;else if(X1==4) y=@0bfd;else if(X1==5) y=@0bfe;else if(X1==6) y=@0bff;else if(X1==7) y=@0c00;else Y=@0006;
  $  080.5档有效状态                           $    $            $    $  ANS080.BYTE004  $  if(X1==1) y=@0c01;else if(X1==2) y=@0c02;else if(X1==3) y=@0c03;else if(X1==4) y=@0c04;else if(X1==5) y=@0c05;else if(X1==6) y=@0c06;else if(X1==7) y=@0c07;else Y=@0006;
  $  081.6档有效状态                           $    $            $    $  ANS081.BYTE004  $  if(X1==1) y=@0c08;else if(X1==2) y=@0c09;else if(X1==3) y=@0c0a;else if(X1==4) y=@0c0b;else if(X1==5) y=@0c0c;else if(X1==6) y=@0c0d;else if(X1==7) y=@0c0e;else Y=@0006;
  $  082.7档有效状态                           $    $            $    $  ANS082.BYTE004  $  if(X1==1) y=@0c0f;else if(X1==2) y=@0c10;else if(X1==3) y=@0c11;else if(X1==4) y=@0c12;else if(X1==5) y=@0c13;else if(X1==6) y=@0c14;else if(X1==7) y=@0c15;else Y=@0006;
  $  083.R档有效状态                           $    $            $    $  ANS083.BYTE004  $  if(X1==1) y=@0bd4;else if(X1==2) y=@0bd5;else if(X1==3) y=@0bd6;else if(X1==4) y=@0bd7;else if(X1==5) y=@0bd8;else if(X1==6) y=@0bd9;else if(X1==7) y=@0bda;else Y=@0006;
  $  084.拨叉1运动状态                         $    $            $    $  ANS084.BYTE004  $  if(X1==1) y=@0bdb;else if(X1==2) y=@0bdc;else if(X1==3) y=@0bdd;else if(X1==4) y=@0bde;else if(X1==5) y=@0bdf;else if(X1==6) y=@0be0;else if(X1==7) y=@0be1;else Y=@0006;
  $  085.拨叉2运动状态                         $    $            $    $  ANS085.BYTE004  $  if(X1==1) y=@0be2;else if(X1==2) y=@0be3;else if(X1==3) y=@0be4;else if(X1==4) y=@0be5;else if(X1==5) y=@0be6;else if(X1==6) y=@0be7;else if(X1==7) y=@0be8;else Y=@0006;
  $  086.拨叉3运动状态                         $    $            $    $  ANS086.BYTE004  $  if(X1==1) y=@0be9;else if(X1==3) y=@0bea;else if(X1==3) y=@0beb;else if(X1==4) y=@0bec;else if(X1==5) y=@0bed;else if(X1==6) y=@0bee;else if(X1==7) y=@0bef;else Y=@0006;
  $  087.拨叉4运动状态                         $    $            $    $  ANS087.BYTE004  $  if(X1==1) y=@0bc7;else if(X1==4) y=@0bc8;else if(X1==4) y=@0bc9;else if(X1==4) y=@0bca;else if(X1==5) y=@0bcb;else if(X1==6) y=@0bcc;else if(X1==7) y=@0bcd;else Y=@0006;
  $  088.多路阀1有效状态                       $    $            $    $  ANS088.BYTE004  $  if(X1==1) y=@0bce;else if(X1==5) y=@0bcf;else if(X1==6) y=@0bd0;else Y=@0006;
  $  089.多路阀2有效状态                       $    $            $    $  ANS089.BYTE004  $  if(X1==1) y=@0bd1;else if(X1==5) y=@0bd2;else if(X1==6) y=@0bd3;else Y=@0006;
  $  090.奇数轴结合的档位                      $    $            $    $  ANS090.BYTE004  $  if(X1==1) y=@0019;else if(X1==2) y=@001a;else if(X1==3) y=@001b;else if(X1==4) y=@001c;else if(X1==5) y=@001d;else if(X1==6) y=@001e;else if(X1==7) y=@0458;else if(X1==8) y=@0c2d;else if(X1==255) y=@083c;else Y=@0006;
  $  091.偶数轴结合的档位                      $    $            $    $  ANS091.BYTE004  $  if(X1==1) y=@0019;else if(X1==2) y=@001a;else if(X1==3) y=@001b;else if(X1==4) y=@001c;else if(X1==5) y=@001d;else if(X1==6) y=@001e;else if(X1==7) y=@0458;else if(X1==8) y=@0c2d;else if(X1==255) y=@083c;else Y=@0006;
  $  092.奇数轴需求档位                        $    $            $    $  ANS092.BYTE004  $  if(X1==1) y=@0019;else if(X1==2) y=@001a;else if(X1==3) y=@001b;else if(X1==4) y=@001c;else if(X1==5) y=@001d;else if(X1==6) y=@001e;else if(X1==7) y=@0458;else if(X1==8) y=@0c2d;else if(X1==255) y=@083c;else Y=@0006;
  $  093.偶数轴需求档位                        $    $            $    $  ANS093.BYTE004  $  if(X1==1) y=@0019;else if(X1==2) y=@001a;else if(X1==3) y=@001b;else if(X1==4) y=@001c;else if(X1==5) y=@001d;else if(X1==6) y=@001e;else if(X1==7) y=@0458;else if(X1==8) y=@0c2d;else if(X1==255) y=@083c;else Y=@0006;
  $  094.预选档位                              $    $            $    $  ANS094.BYTE004  $  if(X1==1) y=@0019;else if(X1==2) y=@001a;else if(X1==3) y=@001b;else if(X1==4) y=@001c;else if(X1==5) y=@001d;else if(X1==6) y=@001e;else if(X1==7) y=@0458;else if(X1==8) y=@0c2d;else if(X1==255) y=@083c;else Y=@0006;
  $  095.奇数轴命令档位                        $    $            $    $  ANS095.BYTE004  $  if(X1==1) y=@0019;else if(X1==2) y=@001a;else if(X1==3) y=@001b;else if(X1==4) y=@001c;else if(X1==5) y=@001d;else if(X1==6) y=@001e;else if(X1==7) y=@0458;else if(X1==8) y=@0c2d;else if(X1==255) y=@083c;else Y=@0006;
  $  096.偶数轴命令档位                        $    $            $    $  ANS096.BYTE004  $  if(X1==1) y=@0019;else if(X1==2) y=@001a;else if(X1==3) y=@001b;else if(X1==4) y=@001c;else if(X1==5) y=@001d;else if(X1==6) y=@001e;else if(X1==7) y=@0458;else if(X1==8) y=@0c2d;else if(X1==255) y=@083c;else Y=@0006;
  $  097.观测扭矩                              $    $  Nm        $    $  ANS097.BYTE004  $  Y=(X1*256+X2)*1/32;
  $  098.手柄位置百分比信号                    $    $  %         $    $  ANS098.BYTE004  $  Y=(X1*256+X2)*0.0061;
  $  099.1-5档学习位置下限状态                 $    $            $    $  ANS099.BYTE004  $  if(X1==0) y=@006c;else if(X1==1) y=@0bf0;else Y=@0006;
  $  100.1-5档学习位置上限状态                 $    $            $    $  ANS100.BYTE004  $  if(X1==0) y=@006c;else if(X1==1) y=@0bf0;else Y=@0006;
  $  101.R-6档学习位置下限状态                 $    $            $    $  ANS101.BYTE004  $  if(X1==0) y=@006c;else if(X1==1) y=@0bf0;else Y=@0006;
  $  102.R-6档学习位置上限状态                 $    $            $    $  ANS102.BYTE004  $  if(X1==0) y=@006c;else if(X1==1) y=@0bf0;else Y=@0006;
  $  103.2-4档学习位置下限状态                 $    $            $    $  ANS103.BYTE004  $  if(X1==0) y=@006c;else if(X1==1) y=@0bf0;else Y=@0006;
  $  104.2-4档学习位置上限状态                 $    $            $    $  ANS104.BYTE004  $  if(X1==0) y=@006c;else if(X1==1) y=@0bf0;else Y=@0006;
  $  105.3-7档学习位置下限状态                 $    $            $    $  ANS105.BYTE004  $  if(X1==0) y=@006c;else if(X1==1) y=@0bf0;else Y=@0006;
  $  106.3-7档学习位置上限状态                 $    $            $    $  ANS106.BYTE004  $  if(X1==0) y=@006c;else if(X1==1) y=@0bf0;else Y=@0006;
  $  107.奇数离合器啮合点                      $    $  bar       $    $  ANS107.BYTE004  $  Y=(X1*256+X2)*0.00064;
  $  108.偶数离合器啮合点                      $    $  bar       $    $  ANS108.BYTE004  $  Y=(X1*256+X2)*0.00064;
  $  109.奇数离合器啮合点状态                  $    $            $    $  ANS109.BYTE004  $  if(X1==0) y=@006c;else if(X1==1) y=@01a6;else if(X1==2) y=@0881;else Y=@0006;
  $  110.偶数离合器啮合点状态                  $    $            $    $  ANS110.BYTE004  $  if(X1==0) y=@006c;else if(X1==1) y=@01a6;else if(X1==2) y=@0881;else Y=@0006;
  $  111.换挡时间                              $    $  ms        $    $  ANS111.BYTE004  $  Y=(X1*256+X2)*1;
  $  112.润滑流量                              $    $  L/min     $    $  ANS112.BYTE004  $  Y=(X1*256+X2)*1/512;
  $  113.主油路实际压力                        $    $  bar       $    $  ANS113.BYTE004  $  Y=(X1*256+X2)*0.00064;
  $  114.主油路命令压力                        $    $  bar       $    $  ANS114.BYTE004  $  Y=(X1*256+X2)*0.00064;
  $  115.电动泵转速                            $    $  rpm       $    $  ANS115.BYTE004  $  Y=(X1*256+X2)*0.597;
  $  116.奇数离合器压力电压值                  $    $  V         $    $  ANS116.BYTE004  $  Y=(X1*256+X2)*0.001;
  $  117.偶数离合器压力电压值                  $    $  V         $    $  ANS117.BYTE004  $  Y=(X1*256+X2)*0.001;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E1 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
