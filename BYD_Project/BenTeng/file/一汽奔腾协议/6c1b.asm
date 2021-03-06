
    车型ID：6c1b

    模拟：协议模拟-->6c1b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7E0 02 10 01 00 00 00 00 00       $~  ANS000:7E8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E0 02 3E 00 00 00 00 00 00       $!  ANS000:7E8 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E0 03 19 02 0C 00 00 00 00       $#  ANS000:7E8 03 19 02 0C 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E0 04 14 FF FF FF 00 00 00       $$  ANS000:7E8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 03 22 F1 A4 00 00 00 00       $%  ANS000:7E8 03 22 F1 A4 00 00 00 00
  $%  REQ001:7E0 03 22 F1 A5 00 00 00 00       $%  ANS001:7E8 03 22 F1 A5 00 00 00 00
  $%  REQ002:7E0 03 22 F1 9C 00 00 00 00       $%  ANS002:7E8 03 22 F1 9C 00 00 00 00
  $%  REQ003:7E0 03 22 F1 99 00 00 00 00       $%  ANS003:7E8 03 22 F1 99 00 00 00 00
  $%  REQ004:7E0 03 22 F1 94 00 00 00 00       $%  ANS004:7E8 03 22 F1 94 00 00 00 00
  $%  REQ005:7E0 03 22 F1 92 00 00 00 00       $%  ANS005:7E8 03 22 F1 92 00 00 00 00
  $%  REQ006:7E0 03 22 F1 87 00 00 00 00       $%  ANS006:7E8 03 22 F1 87 00 00 00 00
  $%  REQ007:7E0 03 22 F1 89 00 00 00 00       $%  ANS007:7E8 03 22 F1 89 00 00 00 00
  $%  REQ008:7E0 03 22 F1 90 00 00 00 00       $%  ANS008:7E8 03 22 F1 90 00 00 00 00
  $%  REQ009:7E0 03 22 F1 91 00 00 00 00       $%  ANS009:7E8 03 22 F1 91 00 00 00 00
  $%  REQ010:7E0 03 22 F1 93 00 00 00 00       $%  ANS010:7E8 03 22 F1 93 00 00 00 00
  $%  REQ011:7E0 03 22 F1 95 00 00 00 00       $%  ANS011:7E8 03 22 F1 95 00 00 00 00
  $%  REQ012:7E0 03 22 F1 98 00 00 00 00       $%  ANS012:7E8 03 22 F1 98 00 00 00 00
  $%  REQ013:7E0 03 22 F1 9D 00 00 00 00       $%  ANS013:7E8 03 22 F1 9D 00 00 00 00
  $%  REQ014:7E0 03 22 F1 A1 00 00 00 00       $%  ANS014:7E8 03 22 F1 A1 00 00 00 00
  $%  REQ015:7E0 03 22 F1 83 00 00 00 00       $%  ANS015:7E8 03 22 F1 83 00 00 00 00
  $%  REQ016:7E0 03 22 F1 00 00 00 00 00       $%  ANS016:7E8 03 22 F1 00 00 00 00 00
  $%  REQ017:7E0 03 22 F1 8C 00 00 00 00       $%  ANS017:7E8 03 22 F1 8C 00 00 00 00
  $%  REQ018:7E0 03 22 F1 80 00 00 00 00       $%  ANS018:7E8 03 22 F1 80 00 00 00 00
  $%  REQ019:7E0 03 22 F1 81 00 00 00 00       $%  ANS019:7E8 03 22 F1 81 00 00 00 00
  $%  REQ020:7E0 03 22 F1 A6 00 00 00 00       $%  ANS020:7E8 03 22 F1 A6 00 00 00 00

  $%  000:供应商ECU标定软件版本号:        $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  001:车辆规格号:                     $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18);
  $%  002:标定软件版本号:                 $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  003:编程日期:                       $%    $%  ANS003.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  004:供应商ECU软件号:                $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU硬件号:                $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:零件号:                         $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  007:ECU软件版本号:                  $%    $%  ANS007.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  008:车辆VIN:                        $%    $%  ANS008.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  009:ECU硬件版本号:                  $%    $%  ANS009.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  010:供应商ECU硬件版本号:            $%    $%  ANS010.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  011:供应商ECU软件版本号:            $%    $%  ANS011.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  012:诊断仪序列号:                   $%    $%  ANS012.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  013:ECU安装日期:                    $%    $%  ANS013.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  014:配置参数:                       $%    $%  ANS014.BYTE004  $%  Y=HEX(X1,X2,X3);
  $%  015:供应商ECU刷新软件版本号:        $%    $%  ANS015.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  016:模式配置:                       $%    $%  ANS016.BYTE004  $%  Y=HEX(X1);
  $%  017:ECU序列号:                      $%    $%  ANS017.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  018:ECU刷新软件版本号:              $%    $%  ANS018.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  019:ECU应用软件版本号:              $%    $%  ANS019.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  020:车辆生产日期:                   $%    $%  ANS020.BYTE004  $%  Y=HEX(X1,X2,X3,X4);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.数据流
  $  00.数据流
  $  REQ000:7E0 03 22 02 00 00 00 00 00       $  ANS000:7E8 03 22 02 00 00 00 00 00
  $  REQ001:7E0 03 22 02 01 00 00 00 00       $  ANS001:7E8 03 22 02 01 00 00 00 00
  $  REQ002:7E0 03 22 02 02 00 00 00 00       $  ANS002:7E8 03 22 02 02 00 00 00 00
  $  REQ003:7E0 03 22 02 03 00 00 00 00       $  ANS003:7E8 03 22 02 03 00 00 00 00
  $  REQ004:7E0 03 22 02 04 00 00 00 00       $  ANS004:7E8 03 22 02 04 00 00 00 00
  $  REQ005:7E0 03 22 02 05 00 00 00 00       $  ANS005:7E8 03 22 02 05 00 00 00 00
  $  REQ006:7E0 03 22 02 08 00 00 00 00       $  ANS006:7E8 03 22 02 08 00 00 00 00
  $  REQ007:7E0 03 22 02 09 00 00 00 00       $  ANS007:7E8 03 22 02 09 00 00 00 00
  $  REQ008:7E0 03 22 02 0A 00 00 00 00       $  ANS008:7E8 03 22 02 0A 00 00 00 00
  $  REQ009:7E0 03 22 02 0B 00 00 00 00       $  ANS009:7E8 03 22 02 0B 00 00 00 00
  $  REQ010:7E0 03 22 02 0D 00 00 00 00       $  ANS010:7E8 03 22 02 0D 00 00 00 00
  $  REQ011:7E0 03 22 02 0E 00 00 00 00       $  ANS011:7E8 03 22 02 0E 00 00 00 00
  $  REQ012:7E0 03 22 02 10 00 00 00 00       $  ANS012:7E8 03 22 02 10 00 00 00 00
  $  REQ013:7E0 03 22 02 11 00 00 00 00       $  ANS013:7E8 03 22 02 11 00 00 00 00
  $  REQ014:7E0 03 22 02 1B 00 00 00 00       $  ANS014:7E8 03 22 02 1B 00 00 00 00
  $  REQ015:7E0 03 22 02 23 00 00 00 00       $  ANS015:7E8 03 22 02 23 00 00 00 00
  $  REQ016:7E0 03 22 02 25 00 00 00 00       $  ANS016:7E8 03 22 02 25 00 00 00 00
  $  REQ017:7E0 03 22 02 27 00 00 00 00       $  ANS017:7E8 03 22 02 27 00 00 00 00
  $  REQ018:7E0 03 22 02 28 00 00 00 00       $  ANS018:7E8 03 22 02 28 00 00 00 00
  $  REQ019:7E0 03 22 02 29 00 00 00 00       $  ANS019:7E8 03 22 02 29 00 00 00 00
  $  REQ020:7E0 03 22 02 2B 00 00 00 00       $  ANS020:7E8 03 22 02 2B 00 00 00 00
  $  REQ021:7E0 03 22 02 2C 00 00 00 00       $  ANS021:7E8 03 22 02 2C 00 00 00 00
  $  REQ022:7E0 03 22 02 2D 00 00 00 00       $  ANS022:7E8 03 22 02 2D 00 00 00 00
  $  REQ023:7E0 03 22 02 2F 00 00 00 00       $  ANS023:7E8 03 22 02 2F 00 00 00 00
  $  REQ024:7E0 03 22 02 31 00 00 00 00       $  ANS024:7E8 03 22 02 31 00 00 00 00
  $  REQ025:7E0 03 22 02 32 00 00 00 00       $  ANS025:7E8 03 22 02 32 00 00 00 00
  $  REQ026:7E0 03 22 02 36 00 00 00 00       $  ANS026:7E8 03 22 02 36 00 00 00 00
  $  REQ027:7E0 03 22 02 37 00 00 00 00       $  ANS027:7E8 03 22 02 37 00 00 00 00
  $  REQ028:7E0 03 22 02 3A 00 00 00 00       $  ANS028:7E8 03 22 02 3A 00 00 00 00
  $  REQ029:7E0 03 22 02 3B 00 00 00 00       $  ANS029:7E8 03 22 02 3B 00 00 00 00
  $  REQ030:7E0 03 22 02 3C 00 00 00 00       $  ANS030:7E8 03 22 02 3C 00 00 00 00
  $  REQ031:7E0 03 22 02 3D 00 00 00 00       $  ANS031:7E8 03 22 02 3D 00 00 00 00
  $  REQ032:7E0 03 22 02 1E 00 00 00 00       $  ANS032:7E8 03 22 02 1E 00 00 00 00
  $  REQ033:7E0 03 22 02 20 00 00 00 00       $  ANS033:7E8 03 22 02 20 00 00 00 00
  $  REQ034:7E0 03 22 02 3F 00 00 00 00       $  ANS034:7E8 03 22 02 3F 00 00 00 00
  $  REQ035:7E0 03 22 02 40 00 00 00 00       $  ANS035:7E8 03 22 02 40 00 00 00 00
  $  REQ036:7E0 03 22 02 41 00 00 00 00       $  ANS036:7E8 03 22 02 41 00 00 00 00
  $  REQ037:7E0 03 22 02 45 00 00 00 00       $  ANS037:7E8 03 22 02 45 00 00 00 00
  $  REQ038:7E0 03 22 02 46 00 00 00 00       $  ANS038:7E8 03 22 02 46 00 00 00 00
  $  REQ039:7E0 03 22 02 47 00 00 00 00       $  ANS039:7E8 03 22 02 47 00 00 00 00
  $  REQ040:7E0 03 22 02 48 00 00 00 00       $  ANS040:7E8 03 22 02 48 00 00 00 00
  $  REQ041:7E0 03 22 02 49 00 00 00 00       $  ANS041:7E8 03 22 02 49 00 00 00 00
  $  REQ042:7E0 03 22 02 52 00 00 00 00       $  ANS042:7E8 03 22 02 52 00 00 00 00
  $  REQ043:7E0 03 22 02 56 00 00 00 00       $  ANS043:7E8 03 22 02 56 00 00 00 00
  $  REQ044:7E0 03 22 02 57 00 00 00 00       $  ANS044:7E8 03 22 02 57 00 00 00 00
  $  REQ045:7E0 03 22 02 5B 00 00 00 00       $  ANS045:7E8 03 22 02 5B 00 00 00 00
  $  REQ046:7E0 03 22 02 58 00 00 00 00       $  ANS046:7E8 03 22 02 58 00 00 00 00
  $  REQ047:7E0 03 22 02 5C 00 00 00 00       $  ANS047:7E8 03 22 02 5C 00 00 00 00
  $  REQ048:7E0 03 22 02 60 00 00 00 00       $  ANS048:7E8 03 22 02 60 00 00 00 00
  $  REQ049:7E0 03 22 02 62 00 00 00 00       $  ANS049:7E8 03 22 02 62 00 00 00 00
  $  REQ050:7E0 03 22 02 63 00 00 00 00       $  ANS050:7E8 03 22 02 63 00 00 00 00
  $  REQ051:7E0 03 22 02 64 00 00 00 00       $  ANS051:7E8 03 22 02 64 00 00 00 00
  $  REQ052:7E0 03 22 02 65 00 00 00 00       $  ANS052:7E8 03 22 02 65 00 00 00 00
  $  REQ053:7E0 03 22 02 66 00 00 00 00       $  ANS053:7E8 03 22 02 66 00 00 00 00
  $  REQ054:7E0 03 22 02 67 00 00 00 00       $  ANS054:7E8 03 22 02 67 00 00 00 00
  $  REQ055:7E0 03 22 02 6E 00 00 00 00       $  ANS055:7E8 03 22 02 6E 00 00 00 00
  $  REQ056:7E0 03 22 02 88 00 00 00 00       $  ANS056:7E8 03 22 02 88 00 00 00 00
  $  REQ057:7E0 03 22 02 8B 00 00 00 00       $  ANS057:7E8 03 22 02 8B 00 00 00 00
  $  REQ058:7E0 03 22 02 8C 00 00 00 00       $  ANS058:7E8 03 22 02 8C 00 00 00 00
  $  REQ059:7E0 03 22 02 8D 00 00 00 00       $  ANS059:7E8 03 22 02 8D 00 00 00 00
  $  REQ060:7E0 03 22 02 90 00 00 00 00       $  ANS060:7E8 03 22 02 90 00 00 00 00
  $  REQ061:7E0 03 22 02 92 00 00 00 00       $  ANS061:7E8 03 22 02 92 00 00 00 00
  $  REQ062:7E0 03 22 02 93 00 00 00 00       $  ANS062:7E8 03 22 02 93 00 00 00 00
  $  REQ063:7E0 03 22 02 94 00 00 00 00       $  ANS063:7E8 03 22 02 94 00 00 00 00
  $  REQ064:7E0 03 22 02 95 00 00 00 00       $  ANS064:7E8 03 22 02 95 00 00 00 00
  $  REQ065:7E0 03 22 02 9A 00 00 00 00       $  ANS065:7E8 03 22 02 9A 00 00 00 00
  $  REQ066:7E0 03 22 02 D1 00 00 00 00       $  ANS066:7E8 03 22 02 D1 00 00 00 00
  $  REQ067:7E0 03 22 02 D2 00 00 00 00       $  ANS067:7E8 03 22 02 D2 00 00 00 00
  $  REQ068:7E0 03 22 02 D3 00 00 00 00       $  ANS068:7E8 03 22 02 D3 00 00 00 00
  $  REQ069:7E0 03 22 02 D4 00 00 00 00       $  ANS069:7E8 03 22 02 D4 00 00 00 00
  $  REQ070:7E0 03 22 02 E1 00 00 00 00       $  ANS070:7E8 03 22 02 E1 00 00 00 00
  $  REQ071:7E0 03 22 02 E2 00 00 00 00       $  ANS071:7E8 03 22 02 E2 00 00 00 00
  $  REQ072:7E0 03 22 02 E3 00 00 00 00       $  ANS072:7E8 03 22 02 E3 00 00 00 00
  $  REQ073:7E0 03 22 02 E4 00 00 00 00       $  ANS073:7E8 03 22 02 E4 00 00 00 00
  $  REQ074:7E0 03 22 02 7C 00 00 00 00       $  ANS074:7E8 03 22 02 7C 00 00 00 00
  $  REQ075:7E0 03 22 02 7D 00 00 00 00       $  ANS075:7E8 03 22 02 7D 00 00 00 00
  $  REQ076:7E0 03 22 02 7E 00 00 00 00       $  ANS076:7E8 03 22 02 7E 00 00 00 00
  $  REQ077:7E0 03 22 02 7F 00 00 00 00       $  ANS077:7E8 03 22 02 7F 00 00 00 00
  $  REQ078:7E0 03 22 02 F1 00 00 00 00       $  ANS078:7E8 03 22 02 F1 00 00 00 00
  $  REQ079:7E0 03 22 02 F2 00 00 00 00       $  ANS079:7E8 03 22 02 F2 00 00 00 00
  $  REQ080:7E0 03 22 02 F3 00 00 00 00       $  ANS080:7E8 03 22 02 F3 00 00 00 00
  $  REQ081:7E0 03 22 02 F4 00 00 00 00       $  ANS081:7E8 03 22 02 F4 00 00 00 00
  $  REQ082:7E0 03 22 02 89 00 00 00 00       $  ANS082:7E8 03 22 02 89 00 00 00 00
  $  REQ083:7E0 03 22 02 84 00 00 00 00       $  ANS083:7E8 03 22 02 84 00 00 00 00
  $  REQ084:7E0 03 22 02 85 00 00 00 00       $  ANS084:7E8 03 22 02 85 00 00 00 00
  $  REQ085:7E0 03 22 02 FC 00 00 00 00       $  ANS085:7E8 03 22 02 FC 00 00 00 00
  $  REQ086:7E0 03 22 02 FB 00 00 00 00       $  ANS086:7E8 03 22 02 FB 00 00 00 00

  $  000.最大可达指示扭矩                                  $    $  %           $    $  ANS000.BYTE004  $  Y=(X1*256+X2)*0.001525879;
  $  001.实际指示扭矩                                      $    $  %           $    $  ANS001.BYTE004  $  Y=(X1*256+X2)*0.001525879;
  $  002.期望指示扭矩                                      $    $  %           $    $  ANS002.BYTE004  $  Y=(X1*256+X2)*0.001525879;
  $  003.发动机温度                                        $    $  degC        $    $  ANS003.BYTE004  $  Y=X1*0.75-48;
  $  004.发动机转速                                        $    $  rpm         $    $  ANS004.BYTE004  $  Y=(X1*256+X2)*0.25;
  $  005.启动结束后时间                                    $    $  s           $    $  ANS005.BYTE004  $  Y=(X1*256+X2)*0.1;
  $  006.车速                                              $    $  km/h        $    $  ANS006.BYTE004  $  Y=(X1*256+X2)*0.0078125;
  $  007.环境压力                                          $    $  hPa         $    $  ANS007.BYTE004  $  Y=(X1*256+X2)*0.0390625;
  $  008.电瓶电压                                          $    $  V           $    $  ANS008.BYTE004  $  Y=(X1*256+X2)*0.000390625;
  $  009.节气门相对于机械下止点的开度角                    $    $  %DK         $    $  ANS009.BYTE004  $  Y=(X1*256+X2)*0.024414063-800;
  $  010.进气温度                                          $    $  degC        $    $  ANS010.BYTE004  $  Y=X1*0.75-48;
  $  011.环境温度                                          $    $  degC        $    $  ANS011.BYTE004  $  Y=X1*0.75-48;
  $  012.标准化加速踏板角度                                $    $  %PED        $    $  ANS012.BYTE004  $  Y=(X1*256+X2)*0.001525879;
  $  013.燃油流量                                          $    $  mL/s        $    $  ANS013.BYTE004  $  Y=(X1*256+X2)*0.001 ;
  $  014.空气质量流量（HFM配置）                           $    $  kg/h        $    $  ANS014.BYTE004  $  Y=(X1*256+X2)*0.1;
  $  015.下游氧传感器输出电压                              $    $  V           $    $  ANS015.BYTE004  $  Y=X1*0.005228758-0.2;
  $  016.相对负荷                                          $    $  %           $    $  ANS016.BYTE004  $  Y=X1*0.75;
  $  017.ETS(电子牵引力控制系统)路径监控诊断环境条件       $    $              $    $  ANS017.BYTE004  $  Y=X1*1;
  $  018.扭矩路径诊断监控条件                              $    $              $    $  ANS018.BYTE004  $  Y=X1*1;
  $  019.监控计算扭矩                                      $    $  %           $    $  ANS019.BYTE004  $  Y=X1*0.390625;
  $  020.在错误时使用的发动机温度替代值                    $    $  degC        $    $  ANS020.BYTE004  $  Y=X1*0.75-48;
  $  021.相对于机械下止点的目标节气门开度                  $    $  %DK         $    $  ANS021.BYTE004  $  Y=X1*0.392156863;
  $  022.催化器下游废弃温度                                $    $  degC        $    $  ANS022.BYTE004  $  Y=X1*5-50;
  $  023.冷却液温度计算值                                  $    $  degC        $    $  ANS023.BYTE004  $  Y=X1*0.75-48;
  $  024.功能监控中的计算扭矩                              $    $  %           $    $  ANS024.BYTE004  $  Y=X1*0.390625;
  $  025.档位                                              $    $              $    $  ANS025.BYTE004  $  Y=X1*1;
  $  026.实际点火角                                        $    $  Grad KW     $    $  ANS026.BYTE004  $  Y=X1*0.75-96;
  $  027.质量流量负荷信号修正系数                          $    $              $    $  ANS027.BYTE004  $  Y=(X1*256+X2)*0.000061 ;
  $  028.节气门电位计1的位置信号                           $    $  %DK         $    $  ANS028.BYTE004  $  Y=(X1*256+X2)*0.024414063-800;
  $  029.节气门电位计2的位置信号                           $    $  %DK         $    $  ANS029.BYTE004  $  Y=(X1*256+X2)*0.024414063-800;
  $  030.节气门体控制信号占空比                            $    $  %           $    $  ANS030.BYTE004  $  Y=(X1*256+X2)*0.001525879;
  $  031.模型模式下节气门位置                              $    $  %DK         $    $  ANS031.BYTE004  $  Y=X1*0.392156863;
  $  032.相对负荷                                          $    $  %           $    $  ANS032.BYTE004  $  Y=X1*0.390625;
  $  033.进气量                                            $    $  kg/h        $    $  ANS033.BYTE004  $  Y=X1*4;
  $  034.跛行模式下，节气门电位计1电压信号                 $    $  V           $    $  ANS034.BYTE004  $  Y=(X1*256+X2)*0.001220703;
  $  035.机械下止点处的节气门电位计1电压信号               $    $  V           $    $  ANS035.BYTE004  $  Y=X1*0.01953125;
  $  036.车辆加速度                                        $    $  m/s^2       $    $  ANS036.BYTE004  $  Y=X1*0.217-27.776;
  $  037.绝对进气歧管压力                                  $    $  hPa         $    $  ANS037.BYTE004  $  Y=(X1*256+X2)*0.0390625;
  $  038.离合器数                                          $    $              $    $  ANS038.BYTE004  $  Y=X1*1;
  $  039.进气温度计算值                                    $    $  degC        $    $  ANS039.BYTE004  $  Y=X1*0.75-48;
  $  040.车速输出值                                        $    $  km/h        $    $  ANS040.BYTE004  $  Y=(X1*256+X2)*0.0078125;
  $  041.电瓶电压采样值                                    $    $  V           $    $  ANS041.BYTE004  $  Y=(X1*256+X2)*0.00488288;
  $  042.期望进气阀相对于LWOT的开度角                      $    $  Grad KW     $    $  ANS042.BYTE004  $  Y=(X1*256+X2)*0.0078125-256;
  $  043.油温                                              $    $  degC        $    $  ANS043.BYTE004  $  Y=(X1*256+X2)*0.0234375-273.15;
  $  044.短期燃油修正系数                                  $    $              $    $  ANS044.BYTE004  $  Y=(X1*256+X2)*0.000031 ;
  $  045.节气门电位计1信号电压                             $    $  V           $    $  ANS045.BYTE004  $  Y=(X1*256+X2)*0.001220703;
  $  046.长期燃油修正系数                                  $    $              $    $  ANS046.BYTE004  $  Y=(X1*256+X2)*0.000031 ;
  $  047.节气门电位计2信号电压                             $    $  V           $    $  ANS047.BYTE004  $  Y=(X1*256+X2)*0.001220703;
  $  048.混合气调整附加修正系数                            $    $              $    $  ANS048.BYTE004  $  Y=(X1*256+X2)*0.046875-1536;
  $  049.PWG电位计1电压                                    $    $  V           $    $  ANS049.BYTE004  $  Y=(X1*256+X2)*0.004882813;
  $  050.PWG电位计2电压                                    $    $  V           $    $  ANS050.BYTE004  $  Y=(X1*256+X2)*0.004882813;
  $  051.翻倍的PWG电位计2电压                              $    $  V           $    $  ANS051.BYTE004  $  Y=(X1*256+X2)*0.004882813;
  $  052.下游氧传感器内部阻抗                              $    $  ohm         $    $  ANS052.BYTE004  $  Y=(X1*256+X2)*2;
  $  053.模型排气温度                                      $    $  degC        $    $  ANS053.BYTE004  $  Y=(X1*256+X2)*0.0234375-273.15;
  $  054.HFM(热膜式空气流量计)空气质量                     $    $  kg/h        $    $  ANS054.BYTE004  $  Y=(X1*256+X2)*0.1;
  $  055.怠速转速                                          $    $  rpm         $    $  ANS055.BYTE004  $  Y=X1*10;
  $  056.空燃比调制周期时间                                $    $              $    $  ANS056.BYTE004  $  Y=(X1*256+X2)*1;
  $  057.冷却液温度传感器电压                              $    $  V           $    $  ANS057.BYTE004  $  Y=(X1*256+X2)*0.00488288;
  $  058.进气温度传感器电压                                $    $  V           $    $  ANS058.BYTE004  $  Y=X1*0.01953125;
  $  059.进气歧管压力传感器电压                            $    $  V           $    $  ANS059.BYTE004  $  Y=(X1*256+X2)*0.00488288;
  $  060.离合器开关置位                                    $    $              $    $  ANS060.BYTE004  $  if(X1==0) y=@0024;else if(X1==1) y=@003e;else y=@0004;
  $  061.供油系统加法自学习值                              $    $  %           $    $  ANS061.BYTE004  $  Y=(X1*256+X2)*0.046875-1536;
  $  062.长期燃油修正系数                                  $    $              $    $  ANS062.BYTE004  $  Y=(X1*256+X2)*0.000030 ;
  $  063.怠速扭矩自学习值                                  $    $  %           $    $  ANS063.BYTE004  $  Y=(X1*256+X2)*0.00305-100;
  $  064.催化器老化因子值(DKAT配置)                        $    $              $    $  ANS064.BYTE004  $  Y=X1*0.00390625;
  $  065.增压压力                                          $    $  hPa         $    $  ANS065.BYTE004  $  Y=(X1*256+X2)*0.039625;
  $  066.1缸点火延迟角                                     $    $  Grad KW     $    $  ANS066.BYTE004  $  Y=X1*0.75-96;
  $  067.2缸点火延迟角                                     $    $  Grad KW     $    $  ANS067.BYTE004  $  Y=X1*0.75-96;
  $  068.3缸点火延迟角                                     $    $  Grad KW     $    $  ANS068.BYTE004  $  Y=X1*0.75-96;
  $  069.4缸点火延迟角                                     $    $  Grad KW     $    $  ANS069.BYTE004  $  Y=X1*0.75-96;
  $  070.1缸爆震传感器参考电平                             $    $  V           $    $  ANS070.BYTE004  $  Y=(X1*256+X2)*0.000076 ;
  $  071.2缸爆震传感器参考电平                             $    $  V           $    $  ANS071.BYTE004  $  Y=(X1*256+X2)*0.000076 ;
  $  072.3缸爆震传感器参考电平                             $    $  V           $    $  ANS072.BYTE004  $  Y=(X1*256+X2)*0.000076 ;
  $  073.4缸爆震传感器参考电平                             $    $  V           $    $  ANS073.BYTE004  $  Y=(X1*256+X2)*0.000076 ;
  $  074.发动机启动时的温度                                $    $  degC        $    $  ANS074.BYTE004  $  Y=X1*0.75-48;
  $  075.标准化炭罐流量                                    $    $  kg/h        $    $  ANS075.BYTE004  $  Y=(X1*256+X2)*0.000390625;
  $  076.基本点火角                                        $    $  Grad KW     $    $  ANS076.BYTE004  $  Y=X1*0.75-96;
  $  077.失火率                                            $    $              $    $  ANS077.BYTE004  $  Y=(X1*256+X2)*1;
  $  078.1缸失火次数                                       $    $              $    $  ANS078.BYTE004  $  Y=(X1*256+X2)*1;
  $  079.2缸失火次数                                       $    $              $    $  ANS079.BYTE004  $  Y=(X1*256+X2)*1;
  $  080.3缸失火次数                                       $    $              $    $  ANS080.BYTE004  $  Y=(X1*256+X2)*1;
  $  081.4缸失火次数                                       $    $              $    $  ANS081.BYTE004  $  Y=(X1*256+X2)*1;
  $  082.怠速控制器的扭矩修正请求（PD部分）                $    $  %           $    $  ANS082.BYTE004  $  Y=(X1*256+X2)*0.003051758-100;
  $  083.失火范围， 最小转速                               $    $  rpm         $    $  ANS083.BYTE004  $  Y=X1*40;
  $  084.失火范围， 最大转速                               $    $  rpm         $    $  ANS084.BYTE004  $  Y=X1*40;
  $  085.故障状态                                          $    $              $    $  ANS085.BYTE004  $  if(X1==0) Y=@00f5;else if(X1==1) Y=@03d6;else y=@0004;
  $  086.里程                                              $    $  km          $    $  ANS086.BYTE004  $  Y=(X1*16777216+X2*65536+X3*256+X4);

  $)  01.IUPR数据
  $  01.IUPR数据
  $  REQ000:7E0 02 09 08 00 00 00 00 00       $  ANS000:7E8 02 09 08 00 00 00 00 00
  $  REQ001:7E0 02 09 02 00 00 00 00 00       $  ANS001:7E8 02 09 02 00 00 00 00 00
  $  REQ002:7E0 02 09 04 00 00 00 00 00       $  ANS002:7E8 02 09 04 00 00 00 00 00

  $  000.通用分母                                                               $    $       $    $  ANS000.BYTE003  $  Y=X1*256+X2;
  $  001.点火计数器                                                             $    $       $    $  ANS000.BYTE005  $  Y=X1*256+X2;
  $  002.VIN                                                                    $    $       $    $  ANS001.BYTE003  $  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $  003.软件标定识别码                                                         $    $       $    $  ANS002.BYTE003  $  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $  004.催化器分子Bank1                                                        $    $       $    $  ANS000.BYTE007  $  Y=X1*256+X2;
  $  005.催化器分母Bank1（此数值大于等于150有效）                               $    $       $    $  ANS000.BYTE009  $  Y=X1*256+X2;
  $  006.催化器组分子Bank2                                                      $    $       $    $  ANS000.BYTE011  $  Y=X1*256+X2;
  $  007.催化器组分母Bank2                                                      $    $       $    $  ANS000.BYTE013  $  Y=X1*256+X2;
  $  008.前氧组分子Bank1                                                        $    $       $    $  ANS000.BYTE015  $  Y=X1*256+X2;
  $  009.前氧组分母Bank1（此数值大于等于150有效）                               $    $       $    $  ANS000.BYTE017  $  Y=X1*256+X2;
  $  010.前氧组分子Bank2                                                        $    $       $    $  ANS000.BYTE019  $  Y=X1*256+X2;
  $  011.前氧组分母Bank2                                                        $    $       $    $  ANS000.BYTE021  $  Y=X1*256+X2;
  $  012.EGR(废气再循环)/VVT(可变气门正时)组分子                                $    $       $    $  ANS000.BYTE023  $  Y=X1*256+X2;
  $  013.EGR(废气再循环)/VVT(可变气门正时)组分母（此数值大于等于150有效）       $    $       $    $  ANS000.BYTE025  $  Y=X1*256+X2;
  $  014.二次空气组分子                                                         $    $       $    $  ANS000.BYTE027  $  Y=X1*256+X2;
  $  015.二次空气组分母                                                         $    $       $    $  ANS000.BYTE029  $  Y=X1*256+X2;
  $  016.蒸发系统组分子                                                         $    $       $    $  ANS000.BYTE031  $  Y=X1*256+X2;
  $  017.蒸发系统组分母（此数值大于等于75有效）                                 $    $       $    $  ANS000.BYTE033  $  Y=X1*256+X2;
  $  018.后氧组分子Bank1                                                        $    $       $    $  ANS000.BYTE035  $  Y=X1*256+X2;
  $  019.后氧组分母Bank1（此数值大于等于150有效）                               $    $       $    $  ANS000.BYTE037  $  Y=X1*256+X2;
  $  020.后氧组分子Bank2                                                        $    $       $    $  ANS000.BYTE039  $  Y=X1*256+X2;
  $  021.后氧组分母Bank2                                                        $    $       $    $  ANS000.BYTE041  $  Y=X1*256+X2;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
