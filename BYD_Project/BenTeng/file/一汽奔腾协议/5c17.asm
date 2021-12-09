
    车型ID：5c17

    模拟：协议模拟-->5c17

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7E3 02 10 01 00 00 00 00 00       $~  ANS000:7EB 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E3 02 3E 00 00 00 00 00 00       $!  ANS000:7EB 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E3 03 19 02 0C 00 00 00 00       $#  ANS000:7EB 03 19 02 0C 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E3 04 14 FF FF FF 00 00 00       $$  ANS000:7EB 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E3 03 22 F1 00 00 00 00 00       $%  ANS000:7EB 03 22 F1 00 00 00 00 00
  $%  REQ001:7E3 03 22 F1 80 00 00 00 00       $%  ANS001:7EB 03 22 F1 80 00 00 00 00
  $%  REQ002:7E3 03 22 F1 81 00 00 00 00       $%  ANS002:7EB 03 22 F1 81 00 00 00 00
  $%  REQ003:7E3 03 22 F1 82 00 00 00 00       $%  ANS003:7EB 03 22 F1 82 00 00 00 00
  $%  REQ004:7E3 03 22 F1 83 00 00 00 00       $%  ANS004:7EB 03 22 F1 83 00 00 00 00
  $%  REQ005:7E3 03 22 F1 87 00 00 00 00       $%  ANS005:7EB 03 22 F1 87 00 00 00 00
  $%  REQ006:7E3 03 22 F1 89 00 00 00 00       $%  ANS006:7EB 03 22 F1 89 00 00 00 00
  $%  REQ007:7E3 03 22 F1 8C 00 00 00 00       $%  ANS007:7EB 03 22 F1 8C 00 00 00 00
  $%  REQ008:7E3 03 22 F1 90 00 00 00 00       $%  ANS008:7EB 03 22 F1 90 00 00 00 00
  $%  REQ009:7E3 03 22 F1 91 00 00 00 00       $%  ANS009:7EB 03 22 F1 91 00 00 00 00
  $%  REQ010:7E3 03 22 F1 92 00 00 00 00       $%  ANS010:7EB 03 22 F1 92 00 00 00 00
  $%  REQ011:7E3 03 22 F1 93 00 00 00 00       $%  ANS011:7EB 03 22 F1 93 00 00 00 00
  $%  REQ012:7E3 03 22 F1 94 00 00 00 00       $%  ANS012:7EB 03 22 F1 94 00 00 00 00
  $%  REQ013:7E3 03 22 F1 95 00 00 00 00       $%  ANS013:7EB 03 22 F1 95 00 00 00 00
  $%  REQ014:7E3 03 22 F1 98 00 00 00 00       $%  ANS014:7EB 03 22 F1 98 00 00 00 00
  $%  REQ015:7E3 03 22 F1 99 00 00 00 00       $%  ANS015:7EB 03 22 F1 99 00 00 00 00
  $%  REQ016:7E3 03 22 F1 9C 00 00 00 00       $%  ANS016:7EB 03 22 F1 9C 00 00 00 00
  $%  REQ017:7E3 03 22 F1 9D 00 00 00 00       $%  ANS017:7EB 03 22 F1 9D 00 00 00 00
  $%  REQ018:7E3 03 22 F1 A1 00 00 00 00       $%  ANS018:7EB 03 22 F1 A1 00 00 00 00
  $%  REQ019:7E3 03 22 F1 A4 00 00 00 00       $%  ANS019:7EB 03 22 F1 A4 00 00 00 00
  $%  REQ020:7E3 03 22 F1 A6 00 00 00 00       $%  ANS020:7EB 03 22 F1 A6 00 00 00 00
  $%  REQ021:7E3 03 22 F1 A8 00 00 00 00       $%  ANS021:7EB 03 22 F1 A8 00 00 00 00
  $%  REQ022:7E3 03 22 F1 A9 00 00 00 00       $%  ANS022:7EB 03 22 F1 A9 00 00 00 00
  $%  REQ023:7E3 03 22 F1 AB 00 00 00 00       $%  ANS023:7EB 03 22 F1 AB 00 00 00 00

  $%  000:模式配置:                        $%    $%  ANS000.BYTE004  $%  Y=HEX(X1);
  $%  001:ECU刷新软件版本号:               $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:ECU应用软件版本号:               $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  003:生产文件号:                      $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24);
  $%  004:供应商ECU刷新软件版本号:         $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  005:零件号:                          $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  006:ECU软件版本号:                   $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  007:ECU序列号:                       $%    $%  ANS007.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  008:VIN:                             $%    $%  ANS008.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  009:ECU硬件版本号:                   $%    $%  ANS009.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  010:供应商ECU硬件号:                 $%    $%  ANS010.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  011:供应商ECU硬件版本号:             $%    $%  ANS011.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  012:供应商ECU软件号:                 $%    $%  ANS012.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  013:供应商ECU软件版本号:             $%    $%  ANS013.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  014:诊断仪序列号:                    $%    $%  ANS014.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  015:编程日期:                        $%    $%  ANS015.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  016:标定软件版本号:                  $%    $%  ANS016.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  017:ECU安装日期:                     $%    $%  ANS017.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  018:系统配置:                        $%    $%  ANS018.BYTE004  $%  0 HEX
  $%  019:供应商ECU标定软件版本号:         $%    $%  ANS019.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  020:车辆在生产线上的生产日期:        $%    $%  ANS020.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  021:车辆运输模式:                    $%    $%  ANS021.BYTE004  $%  if(X1==0) y=@0772;else if(X1==1) y=@0773;else y=@0004;
  $%  022:车辆服务售后模式:                $%    $%  ANS022.BYTE004  $%  if(X1==0) y=@0774;else if(X1==1) y=@0775;else y=@0004;
  $%  023:行人警示器声音配置:              $%    $%  ANS023.BYTE004  $%  if(X1==0) y=@003b;else if(X1==1) y=@0c44;else if(X1==2) y=@0c45;else y=@0004;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E3 03 22 03 00 00 00 00 00       $  ANS000:7EB 03 22 03 00 00 00 00 00
  $  REQ001:7E3 03 22 03 01 00 00 00 00       $  ANS001:7EB 03 22 03 01 00 00 00 00
  $  REQ002:7E3 03 22 03 04 00 00 00 00       $  ANS002:7EB 03 22 03 04 00 00 00 00
  $  REQ003:7E3 03 22 03 05 00 00 00 00       $  ANS003:7EB 03 22 03 05 00 00 00 00
  $  REQ004:7E3 03 22 03 06 00 00 00 00       $  ANS004:7EB 03 22 03 06 00 00 00 00
  $  REQ005:7E3 03 22 03 07 00 00 00 00       $  ANS005:7EB 03 22 03 07 00 00 00 00
  $  REQ006:7E3 03 22 03 08 00 00 00 00       $  ANS006:7EB 03 22 03 08 00 00 00 00
  $  REQ007:7E3 03 22 03 09 00 00 00 00       $  ANS007:7EB 03 22 03 09 00 00 00 00
  $  REQ008:7E3 03 22 03 0A 00 00 00 00       $  ANS008:7EB 03 22 03 0A 00 00 00 00
  $  REQ009:7E3 03 22 03 0B 00 00 00 00       $  ANS009:7EB 03 22 03 0B 00 00 00 00
  $  REQ010:7E3 03 22 03 0C 00 00 00 00       $  ANS010:7EB 03 22 03 0C 00 00 00 00
  $  REQ011:7E3 03 22 03 0D 00 00 00 00       $  ANS011:7EB 03 22 03 0D 00 00 00 00
  $  REQ012:7E3 03 22 03 0E 00 00 00 00       $  ANS012:7EB 03 22 03 0E 00 00 00 00
  $  REQ013:7E3 03 22 03 0F 00 00 00 00       $  ANS013:7EB 03 22 03 0F 00 00 00 00
  $  REQ014:7E3 03 22 03 10 00 00 00 00       $  ANS014:7EB 03 22 03 10 00 00 00 00
  $  REQ015:7E3 03 22 03 11 00 00 00 00       $  ANS015:7EB 03 22 03 11 00 00 00 00
  $  REQ016:7E3 03 22 03 12 00 00 00 00       $  ANS016:7EB 03 22 03 12 00 00 00 00
  $  REQ017:7E3 03 22 03 13 00 00 00 00       $  ANS017:7EB 03 22 03 13 00 00 00 00
  $  REQ018:7E3 03 22 03 14 00 00 00 00       $  ANS018:7EB 03 22 03 14 00 00 00 00
  $  REQ019:7E3 03 22 03 15 00 00 00 00       $  ANS019:7EB 03 22 03 15 00 00 00 00
  $  REQ020:7E3 03 22 03 16 00 00 00 00       $  ANS020:7EB 03 22 03 16 00 00 00 00
  $  REQ021:7E3 03 22 03 17 00 00 00 00       $  ANS021:7EB 03 22 03 17 00 00 00 00
  $  REQ022:7E3 03 22 03 18 00 00 00 00       $  ANS022:7EB 03 22 03 18 00 00 00 00
  $  REQ023:7E3 03 22 03 19 00 00 00 00       $  ANS023:7EB 03 22 03 19 00 00 00 00
  $  REQ024:7E3 03 22 03 1A 00 00 00 00       $  ANS024:7EB 03 22 03 1A 00 00 00 00
  $  REQ025:7E3 03 22 03 1B 00 00 00 00       $  ANS025:7EB 03 22 03 1B 00 00 00 00
  $  REQ026:7E3 03 22 03 1C 00 00 00 00       $  ANS026:7EB 03 22 03 1C 00 00 00 00
  $  REQ027:7E3 03 22 03 1D 00 00 00 00       $  ANS027:7EB 03 22 03 1D 00 00 00 00
  $  REQ028:7E3 03 22 03 1E 00 00 00 00       $  ANS028:7EB 03 22 03 1E 00 00 00 00
  $  REQ029:7E3 03 22 03 1F 00 00 00 00       $  ANS029:7EB 03 22 03 1F 00 00 00 00
  $  REQ030:7E3 03 22 03 20 00 00 00 00       $  ANS030:7EB 03 22 03 20 00 00 00 00
  $  REQ031:7E3 03 22 03 21 00 00 00 00       $  ANS031:7EB 03 22 03 21 00 00 00 00
  $  REQ032:7E3 03 22 03 22 00 00 00 00       $  ANS032:7EB 03 22 03 22 00 00 00 00
  $  REQ033:7E3 03 22 03 23 00 00 00 00       $  ANS033:7EB 03 22 03 23 00 00 00 00
  $  REQ034:7E3 03 22 03 24 00 00 00 00       $  ANS034:7EB 03 22 03 24 00 00 00 00
  $  REQ035:7E3 03 22 03 26 00 00 00 00       $  ANS035:7EB 03 22 03 26 00 00 00 00
  $  REQ036:7E3 03 22 03 27 00 00 00 00       $  ANS036:7EB 03 22 03 27 00 00 00 00
  $  REQ037:7E3 03 22 03 28 00 00 00 00       $  ANS037:7EB 03 22 03 28 00 00 00 00
  $  REQ038:7E3 03 22 03 29 00 00 00 00       $  ANS038:7EB 03 22 03 29 00 00 00 00
  $  REQ039:7E3 03 22 03 2A 00 00 00 00       $  ANS039:7EB 03 22 03 2A 00 00 00 00
  $  REQ040:7E3 03 22 03 2B 00 00 00 00       $  ANS040:7EB 03 22 03 2B 00 00 00 00
  $  REQ041:7E3 03 22 03 2C 00 00 00 00       $  ANS041:7EB 03 22 03 2C 00 00 00 00
  $  REQ042:7E3 03 22 03 2D 00 00 00 00       $  ANS042:7EB 03 22 03 2D 00 00 00 00
  $  REQ043:7E3 03 22 03 2E 00 00 00 00       $  ANS043:7EB 03 22 03 2E 00 00 00 00
  $  REQ044:7E3 03 22 03 2F 00 00 00 00       $  ANS044:7EB 03 22 03 2F 00 00 00 00
  $  REQ045:7E3 03 22 03 30 00 00 00 00       $  ANS045:7EB 03 22 03 30 00 00 00 00
  $  REQ046:7E3 03 22 03 31 00 00 00 00       $  ANS046:7EB 03 22 03 31 00 00 00 00
  $  REQ047:7E3 03 22 03 32 00 00 00 00       $  ANS047:7EB 03 22 03 32 00 00 00 00
  $  REQ048:7E3 03 22 03 33 00 00 00 00       $  ANS048:7EB 03 22 03 33 00 00 00 00
  $  REQ049:7E3 03 22 03 34 00 00 00 00       $  ANS049:7EB 03 22 03 34 00 00 00 00
  $  REQ050:7E3 03 22 03 35 00 00 00 00       $  ANS050:7EB 03 22 03 35 00 00 00 00
  $  REQ051:7E3 03 22 03 37 00 00 00 00       $  ANS051:7EB 03 22 03 37 00 00 00 00
  $  REQ052:7E3 03 22 03 38 00 00 00 00       $  ANS052:7EB 03 22 03 38 00 00 00 00
  $  REQ053:7E3 03 22 03 39 00 00 00 00       $  ANS053:7EB 03 22 03 39 00 00 00 00
  $  REQ054:7E3 03 22 03 3A 00 00 00 00       $  ANS054:7EB 03 22 03 3A 00 00 00 00
  $  REQ055:7E3 03 22 03 3B 00 00 00 00       $  ANS055:7EB 03 22 03 3B 00 00 00 00
  $  REQ056:7E3 03 22 03 3C 00 00 00 00       $  ANS056:7EB 03 22 03 3C 00 00 00 00
  $  REQ057:7E3 03 22 03 3D 00 00 00 00       $  ANS057:7EB 03 22 03 3D 00 00 00 00
  $  REQ058:7E3 03 22 03 3E 00 00 00 00       $  ANS058:7EB 03 22 03 3E 00 00 00 00
  $  REQ059:7E3 03 22 03 3F 00 00 00 00       $  ANS059:7EB 03 22 03 3F 00 00 00 00
  $  REQ060:7E3 03 22 03 40 00 00 00 00       $  ANS060:7EB 03 22 03 40 00 00 00 00
  $  REQ061:7E3 03 22 03 41 00 00 00 00       $  ANS061:7EB 03 22 03 41 00 00 00 00
  $  REQ062:7E3 03 22 03 46 00 00 00 00       $  ANS062:7EB 03 22 03 46 00 00 00 00

  $  000.前电机实际转速                                $    $  rpm      $    $  ANS000.BYTE004  $  Y=(X1*256+X2)-15000;
  $  001.前电机实际扭矩                                $    $  Nm       $    $  ANS001.BYTE004  $  Y=(X1*256+X2)*0.1-400;
  $  002.电机工作状态                                  $    $           $    $  ANS002.BYTE004  $  if(X1==0) y=@0025;else if(X1==1) y=@036f;else if(X1==2) y=@0370;else if(X1==3) y=@0c39;else if(X1==6) y=@0c3a;else if(X1==7) y=@0c3b;else y=@0004;
  $  003.电机故障状态                                  $    $           $    $  ANS003.BYTE004  $  if(X1==0) y=@0c41;else if(X1==1) y=@03b5;else if(X1==2) y=@0c42;else if(X1==3) y=@0071;else if(X1==4) y=@031b;else if(X1==5) y=@031c;else y=@0004;
  $  004.IGBT 温度                                     $    $  degC     $    $  ANS004.BYTE004  $  Y=X1-40;
  $  005.电机温度                                      $    $  degC     $    $  ANS005.BYTE004  $  Y=X1-40;
  $  006.动力电池状态                                  $    $           $    $  ANS006.BYTE004  $  if(X1==0) y=@0c43;else if(X1==1) y=@01d1;else if(X1==7) y=@0004;else y=@0004;
  $  007.电池温度                                      $    $  degC     $    $  ANS007.BYTE004  $  Y=X1-40;
  $  008.SOC(电池剩余电量) 值                          $    $  %        $    $  ANS008.BYTE004  $  Y=(X1*256+X2)*0.1;
  $  009.车速                                          $    $  km/h     $    $  ANS009.BYTE004  $  Y=(X1*256+X2)*0.1;
  $  010.碰撞状态                                      $    $           $    $  ANS010.BYTE004  $  if(X1==0) y=@0c43;else if(X1==1) y=@01d1;else if(X1==7) y=@0004;else y=@0004;
  $  011.主正继电器控制命令                            $    $           $    $  ANS011.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  012.主负继电器控制命令                            $    $           $    $  ANS012.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  013.预充继电器控制命令                            $    $           $    $  ANS013.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  014.充电正继电器控制命令                          $    $           $    $  ANS014.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  015.充电负继电器控制命令                          $    $           $    $  ANS015.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  016.电机转速请求                                  $    $  rpm      $    $  ANS016.BYTE004  $  Y=(X1*256+X2)-14000;
  $  017.电机力矩请求                                  $    $  Nm       $    $  ANS017.BYTE004  $  Y=(X1*256+X2)*0.1-400;
  $  018.MCU(驱动电机控制单元) 使能命令                $    $           $    $  ANS018.BYTE004  $  if(X1==0) y=@0707;else if(X1==1) y=@018d;else y=@0004;
  $  019.快速放电命令                                  $    $           $    $  ANS019.BYTE004  $  if(X1==0) y=@0005;else if(X1==1) y=@0016;else y=@0004;
  $  020.电机控制模式                                  $    $           $    $  ANS020.BYTE004  $  if(X1==0) y=@0c3f;else if(X1==1) y=@0c40;else y=@0004;
  $  021.高压互锁系统状态                              $    $           $    $  ANS021.BYTE004  $  if(X1==0) y=@00f5;else if(X1==1) y=@0071;else y=@0004;
  $  022.钥匙位置                                      $    $           $    $  ANS022.BYTE004  $  if(X1==0) y=@06a3;else if(X1==1) y=@0090;else if(X1==2) y=@0091;else if(X1==3) y=@0688;else y=@0004;
  $  023.加速踏板开度                                  $    $  %        $    $  ANS023.BYTE004  $  Y=X1*0.4;
  $  024.虚拟加速踏板开度                              $    $  %        $    $  ANS024.BYTE004  $  Y=X1*0.4;
  $  025.制动信号                                      $    $           $    $  ANS025.BYTE004  $  if(X1==0) y=@0c3d;else if(X1==1) y=@0c3e;else if(X1==3) y=@0004;else y=@0004;
  $  026.车辆就绪标志                                  $    $           $    $  ANS026.BYTE004  $  if(X1==0) y=@0074;else if(X1==1) y=@080b;else if(X1==2) y=@0c3c;else y=@0004;
  $  027.HCU(整车控制器) 状态                          $    $           $    $  ANS027.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@03b5;else if(X1==2) y=@0071;else y=@0004;
  $  028.小电瓶电压                                    $    $  V        $    $  ANS028.BYTE004  $  Y=X1*0.07;
  $  029.电池急停信号                                  $    $           $    $  ANS029.BYTE004  $  if(X1==0) y=@0005;else if(X1==1) y=@0016;else y=@0004;
  $  030.水暖PTC(高压加热电阻) 控制PWM(脉宽调制)       $    $  %        $    $  ANS030.BYTE004  $  Y=(X1*256+X2)*0.005;
  $  031.电控真空泵继电器控制信号                      $    $           $    $  ANS031.BYTE004  $  if(X1==0) y=@0005;else if(X1==1) y=@0016;else y=@0004;
  $  032.低速冷却风扇继电器控制信号                    $    $           $    $  ANS032.BYTE004  $  if(X1==0) y=@0005;else if(X1==1) y=@0016;else y=@0004;
  $  033.高速冷却风扇继电器控制信号                    $    $           $    $  ANS033.BYTE004  $  if(X1==0) y=@0005;else if(X1==1) y=@0016;else y=@0004;
  $  034.前驱动电机冷却水泵控制PWM(脉宽调制)           $    $  %        $    $  ANS034.BYTE004  $  Y=(X1*256+X2)*0.005;
  $  035.电池控制信号PWM(脉宽调制)                     $    $  %        $    $  ANS035.BYTE004  $  Y=(X1*256+X2)*0.005;
  $  036.电机控制器IGNSW                               $    $           $    $  ANS036.BYTE004  $  if(X1==0) y=@0005;else if(X1==1) y=@0016;else y=@0004;
  $  037.低压管理继电器控制信号                        $    $           $    $  ANS037.BYTE004  $  if(X1==0) y=@0005;else if(X1==1) y=@0016;else y=@0004;
  $  038.低压管理继电器后电压                          $    $  mV       $    $  ANS038.BYTE004  $  Y=(X1*256+X2);
  $  039.电机水温                                      $    $  degC     $    $  ANS039.BYTE004  $  Y=(X1*256+X2)*0.05;
  $  040.制动真空泵真空度                              $    $  hPa      $    $  ANS040.BYTE004  $  Y=(X1*256+X2)*0.2;
  $  041.高压系统控制模式                              $    $           $    $  ANS041.BYTE004  $  if(X1==0) y=@0371;else if(X1==1) y=@0372;else if(X1==2) y=@0373;else if(X1==3) y=@0374;else if(X1==4) y=@0375;else if(X1==5) y=@0376;else if(X1==6) y=@0c48;else if(X1==7) y=@0c49;else if(X1==8) y=@0379;else if(X1==9) y=@037a;else if(X1==10) y=@037b;else if(X1==11) y=@037c;else if(X1==12) y=@037d;else if(X1==13) y=@037e;else if(X1==14) y=@037f;else if(X1==15) y=@0380;else if(X1==16) y=@0381;else if(X1==17) y=@0c4a;else if(X1==18) y=@0c4b;else if(X1==19) y=@0c4c;else if(X1==20) y=@0385;else if(X1==21) y=@0386;else y=@0004;
  $  042.电机控制模式                                  $    $           $    $  ANS042.BYTE004  $  if(X1==0) y=@0025;else if(X1==1) y=@036f;else if(X1==2) y=@0370;else if(X1==3) y=@0c39;else if(X1==4) y=@002e;else if(X1==5) y=@0c46;else if(X1==6) y=@0c47;else if(X1==7) y=@0353;else y=@0004;
  $  043.能量管理模式                                  $    $           $    $  ANS043.BYTE004  $  if(X1==0) y=@0354;else if(X1==1) y=@0025;else if(X1==2) y=@0355;else if(X1==3) y=@0356;else if(X1==4) y=@0357;else if(X1==5) y=@0358;else if(X1==6) y=@0359;else if(X1==7) y=@035a;else if(X1==8) y=@035b;else if(X1==9) y=@035c;else if(X1==10) y=@028c;else if(X1==11) y=@035d;else if(X1==12) y=@035e;else if(X1==13) y=@035f;else if(X1==14) y=@0360;else if(X1==15) y=@0361;else if(X1==16) y=@0362;else if(X1==17) y=@0363;else if(X1==18) y=@0364;else if(X1==19) y=@028a;else if(X1==21) y=@0365;else if(X1==22) y=@0366;else if(X1==23) y=@0367;else if(X1==24) y=@0368;else if(X1==25) y=@0369;else if(X1==26) y=@036a;else if(X1==27) y=@036b;else if(X1==28) y=@036c;else if(X1==29) y=@036d;else if(X1==30) y=@036e;else y=@0004;
  $  044.加速踏板1 供电电压                            $    $  mV       $    $  ANS044.BYTE004  $  Y=(X1*256+X2);
  $  045.加速踏板2 供电电压                            $    $  mV       $    $  ANS045.BYTE004  $  Y=(X1*256+X2);
  $  046.加速踏板1 信号电压                            $    $  mV       $    $  ANS046.BYTE004  $  Y=(X1*256+X2);
  $  047.加速踏板2 信号电压                            $    $  mV       $    $  ANS047.BYTE004  $  Y=(X1*256+X2);
  $  048.真空度传感器供电电压                          $    $  mV       $    $  ANS048.BYTE004  $  Y=(X1*256+X2);
  $  049.真空度传感器信号电压                          $    $  mV       $    $  ANS049.BYTE004  $  Y=(X1*256+X2);
  $  050.充电口电压                                    $    $  mV       $    $  ANS050.BYTE004  $  Y=(X1*256+X2);
  $  051.互锁开关输出电压                              $    $  mV       $    $  ANS004.BYTE004  $  Y=(X1*256+X2);
  $  052.互锁开关输入电压                              $    $  mV       $    $  ANS051.BYTE004  $  Y=(X1*256+X2);
  $  053.主制动开关状态                                $    $           $    $  ANS052.BYTE004  $  if(X1==0) y=@0005;else if(X1==1) y=@0016;else y=@0004;
  $  054.辅助制动开关状态                              $    $           $    $  ANS053.BYTE004  $  if(X1==0) y=@0005;else if(X1==1) y=@0016;else y=@0004;
  $  055.水温传感器信号电压                            $    $  mV       $    $  ANS054.BYTE004  $  Y=(X1*256+X2);
  $  056.自适应巡航开关电压                            $    $  mV       $    $  ANS055.BYTE004  $  Y=(X1*256+X2);
  $  057.交流充电口温度传感器1 信号电压                $    $  mV       $    $  ANS056.BYTE004  $  Y=(X1*256+X2);
  $  058.交流充电口温度传感器2 信号电压                $    $  mV       $    $  ANS057.BYTE004  $  Y=(X1*256+X2);
  $  059.直流充电口温度传感器1 信号电压                $    $  mV       $    $  ANS058.BYTE004  $  Y=(X1*256+X2);
  $  060.直流充电口温度传感器2 信号电压                $    $  mV       $    $  ANS059.BYTE004  $  Y=(X1*256+X2);
  $  061.Start 硬线信号输入                            $    $           $    $  ANS060.BYTE004  $  if(X1==0) y=@0005;else if(X1==1) y=@0016;else y=@0004;
  $  062.换挡器硬线冗余信号                            $    $           $    $  ANS061.BYTE004  $  Y=X1;
  $  063.档位信息                                      $    $           $    $  ANS062.BYTE004  $  if(X1==0) y=@0018;else if(X1==1) y=@0019;else if(X1==2) y=@001a;else if(X1==3) y=@001b;else if(X1==6) y=@0020;else if(X1==15) y=@0004;else y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E3 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
