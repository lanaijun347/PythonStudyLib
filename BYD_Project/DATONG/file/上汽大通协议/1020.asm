
    车型ID：1020

    模拟：协议模拟-->1020

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7E0 02 10 01 00 00 00 00 00       $~  ANS000:7E8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E0 02 3E 80 00 00 00 00 00       $!  ANS000:7E8 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E0 03 19 02 09 00 00 00 00       $#  ANS000:7E8 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/20000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E0 04 14 FF FF FF 00 00 00       $$  ANS000:7E8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 03 22 F1 A0 00 00 00 00       $%  ANS000:7E8 03 22 F1 A0 00 00 00 00
  $%  REQ001:7E0 03 22 F1 83 00 00 00 00       $%  ANS001:7E8 03 22 F1 83 00 00 00 00
  $%  REQ002:7E0 03 22 F1 A1 00 00 00 00       $%  ANS002:7E8 03 22 F1 A1 00 00 00 00
  $%  REQ003:7E0 03 22 F1 91 00 00 00 00       $%  ANS003:7E8 03 22 F1 91 00 00 00 00
  $%  REQ004:7E0 03 22 F1 8B 00 00 00 00       $%  ANS004:7E8 03 22 F1 8B 00 00 00 00
  $%  REQ005:7E0 03 22 F1 A2 00 00 00 00       $%  ANS005:7E8 03 22 F1 A2 00 00 00 00
  $%  REQ006:7E0 03 22 F1 87 00 00 00 00       $%  ANS006:7E8 03 22 F1 87 00 00 00 00
  $%  REQ007:7E0 03 22 F1 10 00 00 00 00       $%  ANS007:7E8 03 22 F1 10 00 00 00 00
  $%  REQ008:7E0 03 22 F1 92 00 00 00 00       $%  ANS008:7E8 03 22 F1 92 00 00 00 00
  $%  REQ009:7E0 03 22 F1 8C 00 00 00 00       $%  ANS009:7E8 03 22 F1 8C 00 00 00 00
  $%  REQ010:7E0 03 22 F1 94 00 00 00 00       $%  ANS010:7E8 03 22 F1 94 00 00 00 00
  $%  REQ011:7E0 03 22 F1 8A 00 00 00 00       $%  ANS011:7E8 03 22 F1 8A 00 00 00 00
  $%  REQ012:7E0 03 22 F1 90 00 00 00 00       $%  ANS012:7E8 03 22 F1 90 00 00 00 00
  $%  REQ013:7E0 03 22 F1 A8 00 00 00 00       $%  ANS013:7E8 03 22 F1 A8 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  002:电控单元标定软件号:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元硬件号:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:电控单元制造日期:                $%    $%  ANS004.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);
  $%  005:电控单元网络文件参考号:          $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号:                  $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  007:电控单元零件号(上次):            $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  008:测试工具参考号(上次):            $%    $%  ANS007.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  009:里程读数(上次)KM:                $%    $%  ANS007.BYTE015  $%  y=(x1*256*256+x2*256+x3);
  $%  010:供应商电控单元硬件参考号:        $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:供应商电控单元序列号:            $%    $%  ANS009.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  012:供应商电控单元软件参考号:        $%    $%  ANS010.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  013:系统供应商识别码:                $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  014:VIN码:                           $%    $%  ANS012.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  015:车辆特征信息:                    $%    $%  ANS013.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E0 03 22 E1 13 00 00 00 00       $  ANS000:7E8 03 22 E1 13 00 00 00 00
  $  REQ001:7E0 03 22 E1 29 00 00 00 00       $  ANS001:7E8 03 22 E1 29 00 00 00 00
  $  REQ002:7E0 03 22 E1 65 00 00 00 00       $  ANS002:7E8 03 22 E1 65 00 00 00 00
  $  REQ003:7E0 03 22 E1 60 00 00 00 00       $  ANS003:7E8 03 22 E1 60 00 00 00 00
  $  REQ004:7E0 03 22 E1 20 00 00 00 00       $  ANS004:7E8 03 22 E1 20 00 00 00 00
  $  REQ005:7E0 03 22 E1 1B 00 00 00 00       $  ANS005:7E8 03 22 E1 1B 00 00 00 00
  $  REQ006:7E0 03 22 E1 09 00 00 00 00       $  ANS006:7E8 03 22 E1 09 00 00 00 00
  $  REQ007:7E0 03 22 E1 44 00 00 00 00       $  ANS007:7E8 03 22 E1 44 00 00 00 00
  $  REQ008:7E0 03 22 E1 0E 00 00 00 00       $  ANS008:7E8 03 22 E1 0E 00 00 00 00
  $  REQ009:7E0 03 22 E1 52 00 00 00 00       $  ANS009:7E8 03 22 E1 52 00 00 00 00
  $  REQ010:7E0 03 22 E1 53 00 00 00 00       $  ANS010:7E8 03 22 E1 53 00 00 00 00
  $  REQ011:7E0 03 22 E1 85 00 00 00 00       $  ANS011:7E8 03 22 E1 85 00 00 00 00
  $  REQ012:7E0 03 22 E1 84 00 00 00 00       $  ANS012:7E8 03 22 E1 84 00 00 00 00
  $  REQ013:7E0 03 22 E1 87 00 00 00 00       $  ANS013:7E8 03 22 E1 87 00 00 00 00
  $  REQ014:7E0 03 22 E1 86 00 00 00 00       $  ANS014:7E8 03 22 E1 86 00 00 00 00
  $  REQ015:7E0 03 22 E1 41 00 00 00 00       $  ANS015:7E8 03 22 E1 41 00 00 00 00
  $  REQ016:7E0 03 22 D0 05 00 00 00 00       $  ANS016:7E8 03 22 D0 05 00 00 00 00
  $  REQ017:7E0 03 22 E1 7E 00 00 00 00       $  ANS017:7E8 03 22 E1 7E 00 00 00 00
  $  REQ018:7E0 03 22 E1 49 00 00 00 00       $  ANS018:7E8 03 22 E1 49 00 00 00 00
  $  REQ019:7E0 03 22 E1 0A 00 00 00 00       $  ANS019:7E8 03 22 E1 0A 00 00 00 00
  $  REQ020:7E0 03 22 E1 31 00 00 00 00       $  ANS020:7E8 03 22 E1 31 00 00 00 00
  $  REQ021:7E0 03 22 E0 01 00 00 00 00       $  ANS021:7E8 03 22 E0 01 00 00 00 00
  $  REQ022:7E0 03 22 20 1D 00 00 00 00       $  ANS022:7E8 03 22 20 1D 00 00 00 00
  $  REQ023:7E0 03 22 D0 09 00 00 00 00       $  ANS023:7E8 03 22 D0 09 00 00 00 00
  $  REQ024:7E0 03 22 D0 0A 00 00 00 00       $  ANS024:7E8 03 22 D0 0A 00 00 00 00
  $  REQ025:7E0 03 22 D0 08 00 00 00 00       $  ANS025:7E8 03 22 D0 08 00 00 00 00
  $  REQ026:7E0 03 22 D0 06 00 00 00 00       $  ANS026:7E8 03 22 D0 06 00 00 00 00
  $  REQ027:7E0 03 22 01 0C 00 00 00 00       $  ANS027:7E8 03 22 01 0C 00 00 00 00
  $  REQ028:7E0 03 22 D0 03 00 00 00 00       $  ANS028:7E8 03 22 D0 03 00 00 00 00
  $  REQ029:7E0 03 22 D0 0D 00 00 00 00       $  ANS029:7E8 03 22 D0 0D 00 00 00 00
  $  REQ030:7E0 03 22 E1 37 00 00 00 00       $  ANS030:7E8 03 22 E1 37 00 00 00 00
  $  REQ031:7E0 03 22 E1 88 00 00 00 00       $  ANS031:7E8 03 22 E1 88 00 00 00 00
  $  REQ032:7E0 03 22 E1 3C 00 00 00 00       $  ANS032:7E8 03 22 E1 3C 00 00 00 00
  $  REQ033:7E0 03 22 E2 01 00 00 00 00       $  ANS033:7E8 03 22 E2 01 00 00 00 00
  $  REQ034:7E0 03 22 E1 54 00 00 00 00       $  ANS034:7E8 03 22 E1 54 00 00 00 00
  $  REQ035:7E0 03 22 E1 21 00 00 00 00       $  ANS035:7E8 03 22 E1 21 00 00 00 00
  $  REQ036:7E0 03 22 E1 2C 00 00 00 00       $  ANS036:7E8 03 22 E1 2C 00 00 00 00
  $  REQ037:7E0 03 22 EE 05 00 00 00 00       $  ANS037:7E8 03 22 EE 05 00 00 00 00
  $  REQ038:7E0 03 22 E1 89 00 00 00 00       $  ANS038:7E8 03 22 E1 89 00 00 00 00
  $  REQ039:7E0 03 22 E1 3D 00 00 00 00       $  ANS039:7E8 03 22 E1 3D 00 00 00 00
  $  REQ040:7E0 03 22 E1 7B 00 00 00 00       $  ANS040:7E8 03 22 E1 7B 00 00 00 00
  $  REQ041:7E0 03 22 E1 64 00 00 00 00       $  ANS041:7E8 03 22 E1 64 00 00 00 00
  $  REQ042:7E0 03 22 D0 04 00 00 00 00       $  ANS042:7E8 03 22 D0 04 00 00 00 00
  $  REQ043:7E0 03 22 EE 08 00 00 00 00       $  ANS043:7E8 03 22 EE 08 00 00 00 00
  $  REQ044:7E0 03 22 EE 06 00 00 00 00       $  ANS044:7E8 03 22 EE 06 00 00 00 00
  $  REQ045:7E0 03 22 EE 07 00 00 00 00       $  ANS045:7E8 03 22 EE 07 00 00 00 00
  $  REQ046:7E0 03 22 E1 4F 00 00 00 00       $  ANS046:7E8 03 22 E1 4F 00 00 00 00
  $  REQ047:7E0 03 22 C0 50 00 00 00 00       $  ANS047:7E8 03 22 C0 50 00 00 00 00
  $  REQ048:7E0 03 22 E1 27 00 00 00 00       $  ANS048:7E8 03 22 E1 27 00 00 00 00
  $  REQ049:7E0 03 22 E1 32 00 00 00 00       $  ANS049:7E8 03 22 E1 32 00 00 00 00
  $  REQ050:7E0 03 22 E1 04 00 00 00 00       $  ANS050:7E8 03 22 E1 04 00 00 00 00
  $  REQ051:7E0 03 22 E1 2F 00 00 00 00       $  ANS051:7E8 03 22 E1 2F 00 00 00 00
  $  REQ052:7E0 03 22 E1 03 00 00 00 00       $  ANS052:7E8 03 22 E1 03 00 00 00 00
  $  REQ053:7E0 03 22 E1 7C 00 00 00 00       $  ANS053:7E8 03 22 E1 7C 00 00 00 00
  $  REQ054:7E0 03 22 E1 14 00 00 00 00       $  ANS054:7E8 03 22 E1 14 00 00 00 00
  $  REQ055:7E0 03 22 E1 66 00 00 00 00       $  ANS055:7E8 03 22 E1 66 00 00 00 00
  $  REQ056:7E0 03 22 E1 2D 00 00 00 00       $  ANS056:7E8 03 22 E1 2D 00 00 00 00
  $  REQ057:7E0 03 22 EE 01 00 00 00 00       $  ANS057:7E8 03 22 EE 01 00 00 00 00
  $  REQ058:7E0 03 22 E1 7F 00 00 00 00       $  ANS058:7E8 03 22 E1 7F 00 00 00 00
  $  REQ059:7E0 03 22 E1 0C 00 00 00 00       $  ANS059:7E8 03 22 E1 0C 00 00 00 00
  $  REQ060:7E0 03 22 E1 26 00 00 00 00       $  ANS060:7E8 03 22 E1 26 00 00 00 00
  $  REQ061:7E0 03 22 E1 06 00 00 00 00       $  ANS061:7E8 03 22 E1 06 00 00 00 00
  $  REQ062:7E0 03 22 D0 02 00 00 00 00       $  ANS062:7E8 03 22 D0 02 00 00 00 00
  $  REQ063:7E0 03 22 E1 5D 00 00 00 00       $  ANS063:7E8 03 22 E1 5D 00 00 00 00
  $  REQ064:7E0 03 22 E1 1C 00 00 00 00       $  ANS064:7E8 03 22 E1 1C 00 00 00 00
  $  REQ065:7E0 03 22 E1 67 00 00 00 00       $  ANS065:7E8 03 22 E1 67 00 00 00 00
  $  REQ066:7E0 03 22 E1 4D 00 00 00 00       $  ANS066:7E8 03 22 E1 4D 00 00 00 00
  $  REQ067:7E0 03 22 E0 12 00 00 00 00       $  ANS067:7E8 03 22 E0 12 00 00 00 00
  $  REQ068:7E0 03 22 D0 01 00 00 00 00       $  ANS068:7E8 03 22 D0 01 00 00 00 00
  $  REQ069:7E0 03 22 E1 70 00 00 00 00       $  ANS069:7E8 03 22 E1 70 00 00 00 00
  $  REQ070:7E0 03 22 E1 71 00 00 00 00       $  ANS070:7E8 03 22 E1 71 00 00 00 00
  $  REQ071:7E0 03 22 E1 72 00 00 00 00       $  ANS071:7E8 03 22 E1 72 00 00 00 00
  $  REQ072:7E0 03 22 E1 73 00 00 00 00       $  ANS072:7E8 03 22 E1 73 00 00 00 00
  $  REQ073:7E0 03 22 E1 02 00 00 00 00       $  ANS073:7E8 03 22 E1 02 00 00 00 00
  $  REQ074:7E0 03 22 E1 6D 00 00 00 00       $  ANS074:7E8 03 22 E1 6D 00 00 00 00
  $  REQ075:7E0 03 22 E1 0D 00 00 00 00       $  ANS075:7E8 03 22 E1 0D 00 00 00 00
  $  REQ076:7E0 03 22 E1 47 00 00 00 00       $  ANS076:7E8 03 22 E1 47 00 00 00 00
  $  REQ077:7E0 03 22 E1 45 00 00 00 00       $  ANS077:7E8 03 22 E1 45 00 00 00 00
  $  REQ078:7E0 03 22 E1 6C 00 00 00 00       $  ANS078:7E8 03 22 E1 6C 00 00 00 00
  $  REQ079:7E0 03 22 E1 6B 00 00 00 00       $  ANS079:7E8 03 22 E1 6B 00 00 00 00
  $  REQ080:7E0 03 22 E1 4B 00 00 00 00       $  ANS080:7E8 03 22 E1 4B 00 00 00 00
  $  REQ081:7E0 03 22 E1 18 00 00 00 00       $  ANS081:7E8 03 22 E1 18 00 00 00 00
  $  REQ082:7E0 03 22 E1 57 00 00 00 00       $  ANS082:7E8 03 22 E1 57 00 00 00 00
  $  REQ083:7E0 03 22 D1 00 00 00 00 00       $  ANS083:7E8 03 22 D1 00 00 00 00 00
  $  REQ084:7E0 03 22 E1 00 00 00 00 00       $  ANS084:7E8 03 22 E1 00 00 00 00 00
  $  REQ085:7E0 03 22 E1 30 00 00 00 00       $  ANS085:7E8 03 22 E1 30 00 00 00 00
  $  REQ086:7E0 03 22 E1 2B 00 00 00 00       $  ANS086:7E8 03 22 E1 2B 00 00 00 00
  $  REQ087:7E0 03 22 E1 58 00 00 00 00       $  ANS087:7E8 03 22 E1 58 00 00 00 00
  $  REQ088:7E0 03 22 E1 10 00 00 00 00       $  ANS088:7E8 03 22 E1 10 00 00 00 00
  $  REQ089:7E0 03 22 E1 46 00 00 00 00       $  ANS089:7E8 03 22 E1 46 00 00 00 00
  $  REQ090:7E0 03 22 E1 80 00 00 00 00       $  ANS090:7E8 03 22 E1 80 00 00 00 00
  $  REQ091:7E0 03 22 E1 81 00 00 00 00       $  ANS091:7E8 03 22 E1 81 00 00 00 00
  $  REQ092:7E0 03 22 E1 82 00 00 00 00       $  ANS092:7E8 03 22 E1 82 00 00 00 00
  $  REQ093:7E0 03 22 E1 83 00 00 00 00       $  ANS093:7E8 03 22 E1 83 00 00 00 00
  $  REQ094:7E0 03 22 E1 7A 00 00 00 00       $  ANS094:7E8 03 22 E1 7A 00 00 00 00
  $  REQ095:7E0 03 22 E1 01 00 00 00 00       $  ANS095:7E8 03 22 E1 01 00 00 00 00
  $  REQ096:7E0 03 22 E1 56 00 00 00 00       $  ANS096:7E8 03 22 E1 56 00 00 00 00
  $  REQ097:7E0 03 22 E1 07 00 00 00 00       $  ANS097:7E8 03 22 E1 07 00 00 00 00
  $  REQ098:7E0 03 22 E1 23 00 00 00 00       $  ANS098:7E8 03 22 E1 23 00 00 00 00
  $  REQ099:7E0 03 22 E1 0F 00 00 00 00       $  ANS099:7E8 03 22 E1 0F 00 00 00 00
  $  REQ100:7E0 03 22 E1 6A 00 00 00 00       $  ANS100:7E8 03 22 E1 6A 00 00 00 00
  $  REQ101:7E0 03 22 D0 07 00 00 00 00       $  ANS101:7E8 03 22 D0 07 00 00 00 00
  $  REQ102:7E0 03 22 E1 38 00 00 00 00       $  ANS102:7E8 03 22 E1 38 00 00 00 00
  $  REQ103:7E0 03 22 E1 36 00 00 00 00       $  ANS103:7E8 03 22 E1 36 00 00 00 00
  $  REQ104:7E0 03 22 E1 74 00 00 00 00       $  ANS104:7E8 03 22 E1 74 00 00 00 00
  $  REQ105:7E0 03 22 E1 75 00 00 00 00       $  ANS105:7E8 03 22 E1 75 00 00 00 00
  $  REQ106:7E0 03 22 E1 76 00 00 00 00       $  ANS106:7E8 03 22 E1 76 00 00 00 00
  $  REQ107:7E0 03 22 E1 77 00 00 00 00       $  ANS107:7E8 03 22 E1 77 00 00 00 00
  $  REQ108:7E0 03 22 E1 25 00 00 00 00       $  ANS108:7E8 03 22 E1 25 00 00 00 00
  $  REQ109:7E0 03 22 E1 1E 00 00 00 00       $  ANS109:7E8 03 22 E1 1E 00 00 00 00
  $  REQ110:7E0 03 22 E1 16 00 00 00 00       $  ANS110:7E8 03 22 E1 16 00 00 00 00
  $  REQ111:7E0 03 22 E1 34 00 00 00 00       $  ANS111:7E8 03 22 E1 34 00 00 00 00
  $  REQ112:7E0 03 22 E1 5E 00 00 00 00       $  ANS112:7E8 03 22 E1 5E 00 00 00 00
  $  REQ113:7E0 03 22 E1 5B 00 00 00 00       $  ANS113:7E8 03 22 E1 5B 00 00 00 00
  $  REQ114:7E0 03 22 E1 5C 00 00 00 00       $  ANS114:7E8 03 22 E1 5C 00 00 00 00
  $  REQ115:7E0 03 22 E1 40 00 00 00 00       $  ANS115:7E8 03 22 E1 40 00 00 00 00
  $  REQ116:7E0 03 22 E1 4A 00 00 00 00       $  ANS116:7E8 03 22 E1 4A 00 00 00 00
  $  REQ117:7E0 03 22 E1 43 00 00 00 00       $  ANS117:7E8 03 22 E1 43 00 00 00 00
  $  REQ118:7E0 03 22 E1 69 00 00 00 00       $  ANS118:7E8 03 22 E1 69 00 00 00 00
  $  REQ119:7E0 03 22 E0 08 00 00 00 00       $  ANS119:7E8 03 22 E0 08 00 00 00 00
  $  REQ120:7E0 03 22 E2 00 00 00 00 00       $  ANS120:7E8 03 22 E2 00 00 00 00 00
  $  REQ121:7E0 03 22 E1 7D 00 00 00 00       $  ANS121:7E8 03 22 E1 7D 00 00 00 00
  $  REQ122:7E0 03 22 E2 03 00 00 00 00       $  ANS122:7E8 03 22 E2 03 00 00 00 00
  $  REQ123:7E0 03 22 D0 0B 00 00 00 00       $  ANS123:7E8 03 22 D0 0B 00 00 00 00
  $  REQ124:7E0 03 22 D0 0C 00 00 00 00       $  ANS124:7E8 03 22 D0 0C 00 00 00 00
  $  REQ125:7E0 03 22 01 12 00 00 00 00       $  ANS125:7E8 03 22 01 12 00 00 00 00
  $  REQ126:7E0 03 22 E0 05 00 00 00 00       $  ANS126:7E8 03 22 E0 05 00 00 00 00
  $  REQ127:7E0 03 22 E1 0B 00 00 00 00       $  ANS127:7E8 03 22 E1 0B 00 00 00 00
  $  REQ128:7E0 03 22 E1 3A 00 00 00 00       $  ANS128:7E8 03 22 E1 3A 00 00 00 00
  $  REQ129:7E0 03 22 E1 3B 00 00 00 00       $  ANS129:7E8 03 22 E1 3B 00 00 00 00
  $  REQ130:7E0 03 22 E1 05 00 00 00 00       $  ANS130:7E8 03 22 E1 05 00 00 00 00
  $  REQ131:7E0 03 22 E1 28 00 00 00 00       $  ANS131:7E8 03 22 E1 28 00 00 00 00
  $  REQ132:7E0 03 22 E1 08 00 00 00 00       $  ANS132:7E8 03 22 E1 08 00 00 00 00
  $  REQ133:7E0 03 22 E1 48 00 00 00 00       $  ANS133:7E8 03 22 E1 48 00 00 00 00
  $  REQ134:7E0 03 22 E1 3F 00 00 00 00       $  ANS134:7E8 03 22 E1 3F 00 00 00 00
  $  REQ135:7E0 03 22 E1 62 00 00 00 00       $  ANS135:7E8 03 22 E1 62 00 00 00 00
  $  REQ136:7E0 03 22 E1 63 00 00 00 00       $  ANS136:7E8 03 22 E1 63 00 00 00 00
  $  REQ137:7E0 03 22 E1 11 00 00 00 00       $  ANS137:7E8 03 22 E1 11 00 00 00 00

  $  000.实际排气阀下游排气压力                         $    $  hPa          $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.078125;
  $  001.监控计算扭矩                                   $    $  %            $    $  ANS001.BYTE004  $  y=(x1*256+x2)*100/65536.0;
  $  002.下游氧传感器内部阻抗                           $    $  ohm          $    $  ANS002.BYTE004  $  y=(x1*256+x2)*2;
  $  003.混合气调整附加修正系数                         $    $               $    $  ANS003.BYTE004  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*12/256.0;
  $  004.进气量                                         $    $  kg/h         $    $  ANS004.BYTE004  $  y=x*4;
  $  005.空气质量流量                                   $    $  kg/h         $    $  ANS005.BYTE004  $  y=(x1*256+x2)*0.1;
  $  006.环境压力                                       $    $  hPa          $    $  ANS006.BYTE004  $  y=(x1*256+x2)*2560/65536.0;
  $  007.大气压力                                       $    $  hPa          $    $  ANS007.BYTE004  $  y=(x1*256+x2)*2560/65536.0;
  $  008.大气环境温度                                   $    $  degree C     $    $  ANS008.BYTE004  $  y=x*0.75-48;
  $  009.排气阀相对于下止点的开度角                     $    $  rad          $    $  ANS009.BYTE004  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*2/256.0;
  $  010.排气阀相对于下止点的开度角                     $    $  rad          $    $  ANS010.BYTE004  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*2/256.0;
  $  011.失火范围，最大转速                             $    $  1/m          $    $  ANS011.BYTE004  $  y=(x1*256+x2)*64/256;
  $  012.失火范围，最小转速                             $    $  1/m          $    $  ANS012.BYTE004  $  y=(x1*256+x2)*64/256;
  $  013.失火范围，最大负荷                             $    $  %            $    $  ANS013.BYTE004  $  y=(x*100)/256.0;
  $  014.失火范围，最小负荷                             $    $  %            $    $  ANS014.BYTE004  $  y=(x*100)/256.0;
  $  015.车辆加速度                                     $    $  m/s^2        $    $  ANS015.BYTE004  $  y=((x&0x7F)-(x&0x80))*0.217;
  $  016.辅助水泵                                       $    $               $    $  ANS016.BYTE004  $  if(x==0x00)y=@000f;else if(x==0xFF)y=@0028;else y=@01a9;
  $  017.基本点火角                                     $    $  rad          $    $  ANS017.BYTE004  $  y=((x&0x7F)-(x&0x80))*0.5;
  $  018.电瓶电压采样值                                 $    $  V            $    $  ANS018.BYTE004  $  y=(x1*256+x2)*6.0288/256.0;
  $  019.电瓶电压                                       $    $  V            $    $  ANS019.BYTE004  $  y=(x1*256+x2)*25.6/65536;
  $  020.功能监控中的计算扭矩                           $    $  %            $    $  ANS020.BYTE004  $  y=(x1*256+x2)*100/65536.0;
  $  021.碳罐阀占空比                                   $    $  %            $    $  ANS021.BYTE004  $  y=(x1*256+x2)*100/65536.0;
  $  022.离合器踏板自学习状态                           $    $               $    $  ANS022.BYTE004  $  if(x==0x00)y=@04ed;else if(x==0x01)y=@04ee;else if(x==0x02)y=@04ef;else if(x==0x03)y=@04f0;else if(x==0x04)y=@04f1;else if(x==0x05)y=@04f2;else if(x==0x06)y=@04f3;else y=@01a9;
  $  023.离合器状态                                     $    $               $    $  ANS023.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  024.空调压缩机状态                                 $    $               $    $  ANS024.BYTE004  $  if(x==0x00)y=@000f;else if(x==0xFF)y=@0028;else y=@01a9;
  $  025.主催化器下游氧传感器就绪标志位                 $    $               $    $  ANS025.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  026.上游线性氧传感器就绪标志                       $    $               $    $  ANS025.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  027.过量空气阀状态                                 $    $               $    $  ANS026.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  028.冷却液温度                                     $    $  degree C     $    $  ANS027.BYTE004  $  y=x*0.75-48;
  $  029.冷却风扇继电器1状态                            $    $               $    $  ANS028.BYTE004  $  if(x==0x00)y=@000f;else if(x==0xFF)y=@0028;else y=@01a9;
  $  030.冷却风扇继电器2状态                            $    $               $    $  ANS029.BYTE004  $  if(x==0x00)y=@000f;else if(x==0xFF)y=@0028;else y=@01a9;
  $  031.质量流量负荷信号修正系数                       $    $               $    $  ANS030.BYTE004  $  y=(x1*256+x2)*4/65536.0;
  $  032.空燃比调制周期时间                             $    $               $    $  ANS031.BYTE004  $  y=x1*256+x2;
  $  033.节气门控制信号占空比                           $    $               $    $  ANS032.BYTE004  $  y=(x1*256+x2)*100/65536.0;
  $  034.高压燃油泵驱动行程(以凸轮轴转过角度计量)       $    $  rad          $    $  ANS033.BYTE004  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*0.1;
  $  035.期望进气阀先对于下止点的开度角                 $    $  rad          $    $  ANS034.BYTE004  $  y=((x&0x7F)-(x&0x80))*2;
  $  036.目标大宋机指示扭矩                             $    $  %            $    $  ANS035.BYTE004  $  y=(x1*256+x2)*100/65536.0;
  $  037.相对于机械下止点的开度叫                       $    $  %            $    $  ANS036.BYTE004  $  y=(x*100)/255.0;
  $  038.目标节气门位置                                 $    $  %            $    $  ANS037.BYTE004  $  y=(x1*256+x2)*100/65536.0;
  $  039.怠速控制器的扭矩修正请求(PD部分)               $    $  %            $    $  ANS038.BYTE004  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*100/32768.0;
  $  040.模型模式下节气门位置                           $    $  %            $    $  ANS039.BYTE004  $  y=(x*100)/255.0;
  $  041.故障指示灯激活时已行驶的距离                   $    $  km           $    $  ANS040.BYTE004  $  y=x1*256+x2;
  $  042.翻倍的PWG电位计2电压                           $    $  V            $    $  ANS041.BYTE004  $  y=(x1*256+x2)*1.25/256.0;
  $  043.出油阀状态                                     $    $               $    $  ANS042.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  044.增压器输出级驱动占空比                         $    $  %            $    $  ANS043.BYTE004  $  y=(x1*256+x2)*100/65536.0;
  $  045.进气凸轮轴驱动占空比                           $    $  %            $    $  ANS044.BYTE004  $  y=(x1*256+x2)*100/65536.0;
  $  046.排气凸轮轴驱动占空比                           $    $  %            $    $  ANS045.BYTE004  $  y=(x1*256+x2)*100/65536.0;
  $  047.线性氧传感器动态值                             $    $               $    $  ANS046.BYTE004  $  y=(x1*256+x2)*16/65536.0;
  $  048.巡航配置                                       $    $               $    $  ANS047.BYTE005  $  if((x&0x60)==0x00)y=@04e8;else if((x&0x60)==0x20)y=@04e9;else if((x&0x60)==0x40)y=@04ea;else y=@01a9;
  $  049.ETS路径监控诊断环境条件                        $    $               $    $  ANS048.BYTE004  $  y=x;
  $  050.挡位                                           $    $               $    $  ANS049.BYTE004  $  y=x;
  $  051.发动机转速                                     $    $  1/min        $    $  ANS050.BYTE004  $  y=(x1*256+x2)*64/256;
  $  052.冷却液温度计算值                               $    $  degree C     $    $  ANS051.BYTE004  $  y=x*0.75-48;
  $  053.发动机温度                                     $    $  degree C     $    $  ANS052.BYTE004  $  y=x*0.75-48;
  $  054.发动机启动时的温度                             $    $  degree C     $    $  ANS053.BYTE004  $  y=x*0.75-48;
  $  055.模型计算歧管排气温度                           $    $  degree C     $    $  ANS054.BYTE004  $  y=(x1*256+x2)*16/256.0-273.149994;
  $  056.模型排气温度                                   $    $  degree C     $    $  ANS055.BYTE004  $  y=(x1*256+x2)*16/256.0-273.149994;
  $  057.催化器下游排气温度                             $    $  degree C     $    $  ANS056.BYTE004  $  y=x*5-50;
  $  058.碳罐控制阀占空比                               $    $  %            $    $  ANS057.BYTE004  $  y=(x1*256+x2)*100/65536.0;
  $  059.失火率                                         $    $               $    $  ANS058.BYTE004  $  y=x1*256+x2;
  $  060.油轨绝对压力                                   $    $  mPa          $    $  ANS059.BYTE004  $  y=(x1*256+x2)*0.0005;
  $  061.SKA冻结信息                                    $    $               $    $  ANS060.BYTE004  $  y=x;
  $  062.燃油液位                                       $    $               $    $  ANS061.BYTE004  $  y=(x1*256+x2)*0.1;
  $  063.燃油泵继电器状态                               $    $               $    $  ANS062.BYTE004  $  if(x==0x00)y=@000f;else if(x==0xFF)y=@0028;else y=@01a9;
  $  064.CAN传输的油箱油位                              $    $  L            $    $  ANS063.BYTE004  $  y=x*0.5;
  $  065.燃油系统1状态                                  $    $               $    $  ANS064.BYTE004  $  y=x;
  $  066.HFM空气质量                                    $    $  kg/h         $    $  ANS065.BYTE004  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*0.1;
  $  067.LERSHK积分系数                                 $    $               $    $  ANS066.BYTE004  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*0.0625000/32768.0;
  $  068.发动机怠速                                     $    $  rpm          $    $  ANS067.BYTE004  $  y=x*10;
  $  069.全局KL.50状态                                  $    $               $    $  ANS068.BYTE004  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  070.全局发动机运行状态                             $    $               $    $  ANS068.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  071.全局KL.15状态                                  $    $               $    $  ANS068.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  072.全局KL.R状态                                   $    $               $    $  ANS068.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  073.系统KL.50状态                                  $    $               $    $  ANS068.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  074.系统发动机运行状态                             $    $               $    $  ANS068.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  075.系统KL.15状态                                  $    $               $    $  ANS068.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  076.系统KL.R状态                                   $    $               $    $  ANS068.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  077.1缸点火延迟角                                  $    $  rad          $    $  ANS069.BYTE004  $  y=((x&0x7F)-(x&0x80))*0.75;
  $  078.2缸点火延迟角                                  $    $  rad          $    $  ANS070.BYTE004  $  y=((x&0x7F)-(x&0x80))*0.75;
  $  079.3缸点火延迟角                                  $    $  rad          $    $  ANS071.BYTE004  $  y=((x&0x7F)-(x&0x80))*0.75;
  $  080.4缸点火延迟角                                  $    $  rad          $    $  ANS072.BYTE004  $  y=((x&0x7F)-(x&0x80))*0.75;
  $  081.实际指示扭矩                                   $    $  %            $    $  ANS073.BYTE004  $  y=(x1*256+x2)*100/65536.0;
  $  082.喷油时间                                       $    $  ms           $    $  ANS074.BYTE004  $  y=UINT(x1*0x1000000+x2*0x10000+x3*0x100+x4)*0.0001;
  $  083.进气温度                                       $    $  degree C     $    $  ANS075.BYTE004  $  y=x*0.75-48;
  $  084.进气温度计算值                                 $    $  degree C     $    $  ANS076.BYTE004  $  y=x*0.75-48;
  $  085.绝对进气歧管压力                               $    $  hPa          $    $  ANS077.BYTE004  $  y=(x1*256+x2)*2560/65536.0;
  $  086.长期燃油修正系数-B1                            $    $               $    $  ANS078.BYTE004  $  y=x;
  $  087.短期燃油修正系数-B1                            $    $               $    $  ANS079.BYTE004  $  y=x;
  $  088.实际空燃比                                     $    $               $    $  ANS080.BYTE004  $  y=(x1*256+x2)*16/65536.0;
  $  089.实际Lambda值                                   $    $               $    $  ANS081.BYTE004  $  y=(x1*256+x2)*16/65536.0;
  $  090.短期燃油修正                                   $    $               $    $  ANS082.BYTE004  $  y=(x1*256+x2)*2/65536.0;
  $  091.发动机IMMO(防盗系统)状态                       $    $               $    $  ANS083.BYTE004  $  if((x&0x03)==0x01)y=@004d;else if((x&0x03)==0x02)y=@04eb;else y=@04ec;
  $  092.SK学习输出应答                                 $    $               $    $  ANS083.BYTE005  $  if((x&0x80)==0x80)y=@00ca;else y=@00c9;
  $  093.PIN教授输出应答                                $    $               $    $  ANS083.BYTE005  $  if((x&0x40)==0x40)y=@00ca;else y=@00c9;
  $  094.SK教授输出应答                                 $    $               $    $  ANS083.BYTE005  $  if((x&0x20)==0x20)y=@00ca;else y=@00c9;
  $  095.传输PIN存储锁止                                $    $               $    $  ANS083.BYTE005  $  if((x&0x10)==0x10)y=@00ca;else y=@00c9;
  $  096.传输SK存储锁止                                 $    $               $    $  ANS083.BYTE005  $  if((x&0x08)==0x08)y=@00ca;else y=@00c9;
  $  097.传输数据存储时间终止                           $    $               $    $  ANS083.BYTE005  $  if((x&0x04)==0x04)y=@00ca;else y=@00c9;
  $  098.传输数据初始状态                               $    $               $    $  ANS083.BYTE005  $  if((x&0x02)==0x02)y=@00ca;else y=@00c9;
  $  099.没有密码和PIN存储                              $    $               $    $  ANS083.BYTE005  $  if((x&0x01)==0x01)y=@00ca;else y=@00c9;
  $  100.ECM对防盗复位指令的应答已发送                  $    $               $    $  ANS083.BYTE006  $  if((x&0x80)==0x80)y=@00ca;else y=@00c9;
  $  101.安全延迟激活                                   $    $               $    $  ANS083.BYTE006  $  if((x&0x40)==0x40)y=@00ca;else y=@00c9;
  $  102.安全防盗时间激活状态                           $    $               $    $  ANS083.BYTE006  $  if((x&0x20)==0x20)y=@00ca;else y=@00c9;
  $  103.防盗解锁状态                                   $    $               $    $  ANS083.BYTE006  $  if((x&0x10)==0x10)y=@0052;else y=@0055;
  $  104.有效正确的格式应答                             $    $               $    $  ANS083.BYTE006  $  if((x&0x08)==0x08)y=@00ca;else y=@00c9;
  $  105.无效正确的格式但是PIN不匹配                    $    $               $    $  ANS083.BYTE006  $  if((x&0x04)==0x04)y=@00ca;else y=@00c9;
  $  106.发动机通讯故障                                 $    $               $    $  ANS083.BYTE006  $  if((x&0x02)==0x02)y=@00ca;else y=@00c9;
  $  107.发动机认证请求已发送                           $    $               $    $  ANS083.BYTE006  $  if((x&0x01)==0x01)y=@00ca;else y=@00c9;
  $  108.最大可达指示扭矩                               $    $  %            $    $  ANS084.BYTE004  $  y=(x*100)/255;
  $  109.发动机温度信号可靠性检查模型参考值             $    $  degree C     $    $  ANS085.BYTE004  $  y=x*0.75-48;
  $  110.在错误时使用的发动机温度替代值                 $    $  degree C     $    $  ANS086.BYTE004  $  y=x*0.75-48;
  $  111.长期燃油修正                                   $    $               $    $  ANS087.BYTE004  $  y=(x1*256+x2)*2/65536.0;
  $  112.标准化加速踏板角度                             $    $  %            $    $  ANS088.BYTE004  $  y=(x1*256+x2)*100/65536.0;
  $  113.离合器数                                       $    $               $    $  ANS089.BYTE004  $  y=x;
  $  114.1缸失火的数量                                  $    $               $    $  ANS090.BYTE004  $  y=x1*256+x2;
  $  115.2缸失火的数量                                  $    $               $    $  ANS091.BYTE004  $  y=x1*256+x2;
  $  116.3缸失火的数量                                  $    $               $    $  ANS092.BYTE004  $  y=x1*256+x2;
  $  117.4缸失火的数量                                  $    $               $    $  ANS093.BYTE004  $  y=x1*256+x2;
  $  118.车辆满足的OBD版本                              $    $               $    $  ANS094.BYTE004  $  y=x;
  $  119.里程表读数                                     $    $               $    $  ANS095.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  120.油温                                           $    $  degree C     $    $  ANS096.BYTE004  $  y=(x1*256+x2)*16/256.0-273.149994;
  $  121.汽缸头油温                                     $    $  degree C     $    $  ANS097.BYTE004  $  y=(x1*256+x2)*16/256.0-273.149994;
  $  122.下游氧传感器输出电压                           $    $  V            $    $  ANS098.BYTE004  $  y=x*0.005216-0.2;
  $  123.节流阀上游压力值                               $    $  hPa          $    $  ANS099.BYTE004  $  y=(x1*256+x2)*0.078125;
  $  124.节气门上游压力                                 $    $  hPa          $    $  ANS100.BYTE004  $  y=(x1*256+x2)*0.078125;
  $  125.质量控制调节阀                                 $    $               $    $  ANS101.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  126.质量控制调节阀激活标志                         $    $               $    $  ANS101.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  127.轨压设定值                                     $    $  mPa          $    $  ANS102.BYTE004  $  y=(x1*256+x2)*0.0005;
  $  128.巡航关闭按钮状态                               $    $  %            $    $  ANS073.BYTE004  $  y=(x1*256+x2)*100/65536.0;
  $  129.实际点火角                                     $    $  rad          $    $  ANS103.BYTE004  $  y=((x&0x7F)-(x&0x80))*0.5;
  $  130.1缸爆震传感器参考电平                          $    $  V            $    $  ANS104.BYTE004  $  y=(x1*256+x2)*5/65536.0;
  $  131.2缸爆震传感器参考电平                          $    $  V            $    $  ANS105.BYTE004  $  y=(x1*256+x2)*5/65536.0;
  $  132.3缸爆震传感器参考电平                          $    $  V            $    $  ANS106.BYTE004  $  y=(x1*256+x2)*5/65536.0;
  $  133.4缸爆震传感器参考电平                          $    $  V            $    $  ANS107.BYTE004  $  y=(x1*256+x2)*5/65536.0;
  $  134.空气相对进气量                                 $    $  %            $    $  ANS108.BYTE004  $  y=x*0.75;
  $  135.相对负荷                                       $    $  %            $    $  ANS109.BYTE004  $  y=(x*100)/255.0;
  $  136.废气控制阀的位置                               $    $               $    $  ANS110.BYTE004  $  y=(x1*256+x2)*2/65536.0;
  $  137.相对燃油储量                                   $    $  %            $    $  ANS111.BYTE004  $  y=x*3;
  $  138.线性氧传感器能丝特的电阻阻抗                   $    $  ohm          $    $  ANS112.BYTE004  $  y=(x1*256+x2)*0.078125/2;
  $  139.节气门电位计1信号电压                          $    $  V            $    $  ANS113.BYTE004  $  y=(x1*256+x2)*80/65536.0;
  $  140.节气门电位计2信号电压                          $    $  V            $    $  ANS114.BYTE004  $  y=(x1*256+x2)*5/65536.0;
  $  141.机械下止点处的节气门电位计1电压信号            $    $  V            $    $  ANS115.BYTE004  $  y=(x1*256+x2)*5/65536.0;
  $  142.宽幅氧传感器(上游)输出电压                     $    $  V            $    $  ANS116.BYTE004  $  y=(x1*256+x2)*1.25/256.0;
  $  143.大气压力传感器信号电压                         $    $  V            $    $  ANS117.BYTE004  $  y=(x1*256+x2)*1.25/256.0;
  $  144.节气门上游压力传感器电压                       $    $  V            $    $  ANS118.BYTE004  $  y=(x1*256+x2)*1.25/256.0;
  $  145.空气压力充电电磁阀                             $    $  %            $    $  ANS119.BYTE004  $  y=(x1*256+x2)*100/65536.0;
  $  146.加速踏板相对角度                               $    $  %            $    $  ANS120.BYTE004  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*400/32768.0;
  $  147.标准化碳罐流量                                 $    $  kg/h         $    $  ANS121.BYTE004  $  y=(x1*256+x2)*256/65536.0;
  $  148.主制动开关状态                                 $    $               $    $  ANS122.BYTE004  $  y=x;
  $  149.空调开关状态                                   $    $               $    $  ANS123.BYTE004  $  if(x==0x00)y=@000f;else if(x==0xFF)y=@0028;else y=@01a9;
  $  150.发动机故障灯MIL状态                            $    $               $    $  ANS124.BYTE004  $  if(x==0x00)y=@000f;else if(x==0xFF)y=@0028;else y=@01a9;
  $  151.供电电压                                       $    $  V            $    $  ANS125.BYTE004  $  y=x*0.1;
  $  152.节气门开度                                     $    $  %            $    $  ANS126.BYTE004  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*800/32768.0;
  $  153.节气门相对于机械下止点的开度角                 $    $               $    $  ANS127.BYTE004  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*800/32768.0;
  $  154.节气门电位计1的位置信号                        $    $  %            $    $  ANS128.BYTE004  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*800/32768.0;
  $  155.节气门电位计2的位置信号                        $    $  %            $    $  ANS129.BYTE004  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*800/32768.0;
  $  156.发动机运行时间数量                             $    $  s            $    $  ANS130.BYTE004  $  y=(x1*256+x2)*0.1;
  $  157.扭矩路径诊断监控条件                           $    $               $    $  ANS131.BYTE004  $  y=x;
  $  158.传动比                                         $    $               $    $  ANS131.BYTE004  $  y=x;
  $  159.车速                                           $    $  km/h         $    $  ANS132.BYTE004  $  y=(x1*256+x2)*2.0/256;
  $  160.车速输出值                                     $    $  km/h         $    $  ANS133.BYTE004  $  y=(x1*256+x2)*2.0/256;
  $  161.跛行模式下，节气门电位计1电压信号              $    $  V            $    $  ANS134.BYTE004  $  y=(x1*256+x2)*80/65536.0;
  $  162.PWG电位计1电压                                 $    $  V            $    $  ANS135.BYTE004  $  y=(x1*256+x2)*1.25/256.0;
  $  163.PWG电位计2电压                                 $    $  V            $    $  ANS136.BYTE004  $  y=(x1*256+x2)*1.25/256.0;
  $  164.燃油流量                                       $    $  mL/s         $    $  ANS137.BYTE004  $  y=(x1*256+x2)*0.153/256.0;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
