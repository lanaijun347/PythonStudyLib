
    车型ID：6927

    模拟：协议模拟-->6927

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7F1 02 10 01 00 00 00 00 00       $~  ANS000:7F9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7F1 02 3E 00 00 00 00 00 00       $!  ANS000:7F9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7F1 03 19 02 09 00 00 00 00       $#  ANS000:7F9 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7F1 04 14 FF FF FF 00 00 00       $$  ANS000:7F9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7F1 03 22 F1 00 00 00 00 00       $%  ANS000:7F9 03 22 F1 00 00 00 00 00
  $%  REQ001:7F1 03 22 F1 83 00 00 00 00       $%  ANS001:7F9 03 22 F1 83 00 00 00 00
  $%  REQ002:7F1 03 22 F1 87 00 00 00 00       $%  ANS002:7F9 03 22 F1 87 00 00 00 00
  $%  REQ003:7F1 03 22 F1 89 00 00 00 00       $%  ANS003:7F9 03 22 F1 89 00 00 00 00
  $%  REQ004:7F1 03 22 F1 8C 00 00 00 00       $%  ANS004:7F9 03 22 F1 8C 00 00 00 00
  $%  REQ005:7F1 03 22 F1 90 00 00 00 00       $%  ANS005:7F9 03 22 F1 90 00 00 00 00
  $%  REQ006:7F1 03 22 F1 91 00 00 00 00       $%  ANS006:7F9 03 22 F1 91 00 00 00 00
  $%  REQ007:7F1 03 22 F1 93 00 00 00 00       $%  ANS007:7F9 03 22 F1 93 00 00 00 00
  $%  REQ008:7F1 03 22 F1 95 00 00 00 00       $%  ANS008:7F9 03 22 F1 95 00 00 00 00
  $%  REQ009:7F1 03 22 F1 98 00 00 00 00       $%  ANS009:7F9 03 22 F1 98 00 00 00 00
  $%  REQ010:7F1 03 22 F1 99 00 00 00 00       $%  ANS010:7F9 03 22 F1 99 00 00 00 00
  $%  REQ011:7F1 03 22 F1 9D 00 00 00 00       $%  ANS011:7F9 03 22 F1 9D 00 00 00 00
  $%  REQ012:7F1 03 22 F1 A1 00 00 00 00       $%  ANS012:7F9 03 22 F1 A1 00 00 00 00
  $%  REQ013:7F1 03 22 F1 A4 00 00 00 00       $%  ANS013:7F9 03 22 F1 A4 00 00 00 00

  $%  000:模式配置:                       $%    $%  ANS000.BYTE004  $%  Y=HEX(X1);
  $%  001:供应商ECU启动软件版本号:        $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  002:OEM零件号:                      $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  003:ECU软件版本号:                  $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:ECU序列号:                      $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  005:VIN:                            $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  006:ECU硬件版本号:                  $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  007:供应商硬件版本号:               $%    $%  ANS007.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  008:供应商软件版本号:               $%    $%  ANS008.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  009:测试仪序列号:                   $%    $%  ANS009.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  010:编程日期:                       $%    $%  ANS010.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  011:ECU安装日期:                    $%    $%  ANS011.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  012:配置信息1:                      $%    $%  ANS012.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6);
  $%  013:供应商ECU标定软件版本号:        $%    $%  ANS013.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7F1 03 22 01 00 00 00 00 00       $  ANS000:7F9 03 22 01 00 00 00 00 00
  $  REQ001:7F1 03 22 01 01 00 00 00 00       $  ANS001:7F9 03 22 01 01 00 00 00 00
  $  REQ002:7F1 03 22 06 40 00 00 00 00       $  ANS002:7F9 03 22 06 40 00 00 00 00
  $  REQ003:7F1 03 22 06 41 00 00 00 00       $  ANS003:7F9 03 22 06 41 00 00 00 00
  $  REQ004:7F1 03 22 06 42 00 00 00 00       $  ANS004:7F9 03 22 06 42 00 00 00 00
  $  REQ005:7F1 03 22 06 43 00 00 00 00       $  ANS005:7F9 03 22 06 43 00 00 00 00
  $  REQ006:7F1 03 22 06 44 00 00 00 00       $  ANS006:7F9 03 22 06 44 00 00 00 00
  $  REQ007:7F1 03 22 06 45 00 00 00 00       $  ANS007:7F9 03 22 06 45 00 00 00 00
  $  REQ008:7F1 03 22 06 46 00 00 00 00       $  ANS008:7F9 03 22 06 46 00 00 00 00
  $  REQ009:7F1 03 22 06 47 00 00 00 00       $  ANS009:7F9 03 22 06 47 00 00 00 00
  $  REQ010:7F1 03 22 06 48 00 00 00 00       $  ANS010:7F9 03 22 06 48 00 00 00 00
  $  REQ011:7F1 03 22 06 49 00 00 00 00       $  ANS011:7F9 03 22 06 49 00 00 00 00
  $  REQ012:7F1 03 22 06 4A 00 00 00 00       $  ANS012:7F9 03 22 06 4A 00 00 00 00
  $  REQ013:7F1 03 22 06 4B 00 00 00 00       $  ANS013:7F9 03 22 06 4B 00 00 00 00
  $  REQ014:7F1 03 22 06 4C 00 00 00 00       $  ANS014:7F9 03 22 06 4C 00 00 00 00
  $  REQ015:7F1 03 22 06 4D 00 00 00 00       $  ANS015:7F9 03 22 06 4D 00 00 00 00
  $  REQ016:7F1 03 22 06 4E 00 00 00 00       $  ANS016:7F9 03 22 06 4E 00 00 00 00
  $  REQ017:7F1 03 22 06 4F 00 00 00 00       $  ANS017:7F9 03 22 06 4F 00 00 00 00
  $  REQ018:7F1 03 22 06 50 00 00 00 00       $  ANS018:7F9 03 22 06 50 00 00 00 00
  $  REQ019:7F1 03 22 06 51 00 00 00 00       $  ANS019:7F9 03 22 06 51 00 00 00 00
  $  REQ020:7F1 03 22 06 52 00 00 00 00       $  ANS020:7F9 03 22 06 52 00 00 00 00
  $  REQ021:7F1 03 22 06 53 00 00 00 00       $  ANS021:7F9 03 22 06 53 00 00 00 00
  $  REQ022:7F1 03 22 06 54 00 00 00 00       $  ANS022:7F9 03 22 06 54 00 00 00 00
  $  REQ023:7F1 03 22 06 55 00 00 00 00       $  ANS023:7F9 03 22 06 55 00 00 00 00
  $  REQ024:7F1 03 22 06 56 00 00 00 00       $  ANS024:7F9 03 22 06 56 00 00 00 00
  $  REQ025:7F1 03 22 06 57 00 00 00 00       $  ANS025:7F9 03 22 06 57 00 00 00 00
  $  REQ026:7F1 03 22 06 58 00 00 00 00       $  ANS026:7F9 03 22 06 58 00 00 00 00
  $  REQ027:7F1 03 22 06 59 00 00 00 00       $  ANS027:7F9 03 22 06 59 00 00 00 00
  $  REQ028:7F1 03 22 06 5A 00 00 00 00       $  ANS028:7F9 03 22 06 5A 00 00 00 00
  $  REQ029:7F1 03 22 06 5B 00 00 00 00       $  ANS029:7F9 03 22 06 5B 00 00 00 00
  $  REQ030:7F1 03 22 06 5F 00 00 00 00       $  ANS030:7F9 03 22 06 5F 00 00 00 00
  $  REQ031:7F1 03 22 06 60 00 00 00 00       $  ANS031:7F9 03 22 06 60 00 00 00 00
  $  REQ032:7F1 03 22 06 61 00 00 00 00       $  ANS032:7F9 03 22 06 61 00 00 00 00
  $  REQ033:7F1 03 22 06 6B 00 00 00 00       $  ANS033:7F9 03 22 06 6B 00 00 00 00
  $  REQ034:7F1 03 22 06 6C 00 00 00 00       $  ANS034:7F9 03 22 06 6C 00 00 00 00
  $  REQ035:7F1 03 22 06 6D 00 00 00 00       $  ANS035:7F9 03 22 06 6D 00 00 00 00
  $  REQ036:7F1 03 22 06 6E 00 00 00 00       $  ANS036:7F9 03 22 06 6E 00 00 00 00
  $  REQ037:7F1 03 22 06 6F 00 00 00 00       $  ANS037:7F9 03 22 06 6F 00 00 00 00
  $  REQ038:7F1 03 22 06 70 00 00 00 00       $  ANS038:7F9 03 22 06 70 00 00 00 00
  $  REQ039:7F1 03 22 06 71 00 00 00 00       $  ANS039:7F9 03 22 06 71 00 00 00 00
  $  REQ040:7F1 03 22 06 72 00 00 00 00       $  ANS040:7F9 03 22 06 72 00 00 00 00
  $  REQ041:7F1 03 22 06 73 00 00 00 00       $  ANS041:7F9 03 22 06 73 00 00 00 00
  $  REQ042:7F1 03 22 06 74 00 00 00 00       $  ANS042:7F9 03 22 06 74 00 00 00 00
  $  REQ043:7F1 03 22 06 75 00 00 00 00       $  ANS043:7F9 03 22 06 75 00 00 00 00
  $  REQ044:7F1 03 22 06 76 00 00 00 00       $  ANS044:7F9 03 22 06 76 00 00 00 00
  $  REQ045:7F1 03 22 06 77 00 00 00 00       $  ANS045:7F9 03 22 06 77 00 00 00 00
  $  REQ046:7F1 03 22 06 78 00 00 00 00       $  ANS046:7F9 03 22 06 78 00 00 00 00
  $  REQ047:7F1 03 22 06 79 00 00 00 00       $  ANS047:7F9 03 22 06 79 00 00 00 00
  $  REQ048:7F1 03 22 06 7A 00 00 00 00       $  ANS048:7F9 03 22 06 7A 00 00 00 00
  $  REQ049:7F1 03 22 06 7B 00 00 00 00       $  ANS049:7F9 03 22 06 7B 00 00 00 00
  $  REQ050:7F1 03 22 06 7C 00 00 00 00       $  ANS050:7F9 03 22 06 7C 00 00 00 00
  $  REQ051:7F1 03 22 06 7D 00 00 00 00       $  ANS051:7F9 03 22 06 7D 00 00 00 00
  $  REQ052:7F1 03 22 06 7E 00 00 00 00       $  ANS052:7F9 03 22 06 7E 00 00 00 00
  $  REQ053:7F1 03 22 06 7F 00 00 00 00       $  ANS053:7F9 03 22 06 7F 00 00 00 00

  $  000.车速                                    $    $  km/h        $    $  ANS000.BYTE004  $  if((X1*256+X2)<=32765) Y=(X1*256+X2)*0.01;else Y=@008c;
  $  001.里程表                                  $    $  km          $    $  ANS001.BYTE004  $  if((X1*16777216+X2*65536+X3*256+X4)<=33554430) Y=(X1*16777216+X2*65536+X3*256+X4)*0.1;else Y=@0004;
  $  002.HVDC(高压输出软件)总电压                $    $  V           $    $  ANS002.BYTE004  $  if((X1*256+X2)<=1000) Y=(X1*256+X2)*1;else Y=@0004;
  $  003.12V蓄电池#1电压                         $    $  V           $    $  ANS003.BYTE004  $  if(X1<=28) Y=X1*1;else Y=@0004;
  $  004.12V蓄电池#2电压                         $    $  V           $    $  ANS004.BYTE004  $  if(X1<=28) Y=X1*1;else Y=@0004;
  $  005.A相电流                                 $    $  A           $    $  ANS005.BYTE004  $  if((X1*256+X2)<=2000) Y=(X1*256+X2)*1-1000;else Y=@0004;
  $  006.B相电流                                 $    $  A           $    $  ANS006.BYTE004  $  if((X1*256+X2)<=2000) Y=(X1*256+X2)*1-1000;else Y=@0004;
  $  007.C相电流                                 $    $  A           $    $  ANS007.BYTE004  $  if((X1*256+X2)<=2000) Y=(X1*256+X2)*1-1000;else Y=@0004;
  $  008.IGBT A相温度                            $    $  degC        $    $  ANS008.BYTE004  $  if(X1<=250) Y=X1*1-75;else Y=@0004;
  $  009.IGBT B相温度                            $    $  degC        $    $  ANS009.BYTE004  $  if(X1<=250) Y=X1*1-75;else Y=@0004;
  $  010.IGBT C相温度                            $    $  degC        $    $  ANS010.BYTE004  $  if(X1<=250) Y=X1*1-75;else Y=@0004;
  $  011.电机温度                                $    $  degC        $    $  ANS011.BYTE004  $  if((X1*256+X2)<=330) Y=(X1*256+X2)*1-60;else Y=@0004;
  $  012.电机转速                                $    $  rpm         $    $  ANS012.BYTE004  $  if((X1*256+X2)<=30000) Y=(X1*256+X2)*1-15000;else Y=@0004;
  $  013.IGBT高端饱和故障                        $    $              $    $  ANS013.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@0071;else y=@0004;
  $  014.IGBT低端饱和故障                        $    $              $    $  ANS014.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@0071;else y=@0004;
  $  015.IGBT高端欠压故障                        $    $              $    $  ANS015.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@0071;else y=@0004;
  $  016.IGBT低端欠压故障                        $    $              $    $  ANS016.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@0071;else y=@0004;
  $  017.IGBT接点温度                            $    $  degC        $    $  ANS017.BYTE004  $  if(X1<=250) Y=X1*1-75;else Y=@0004;
  $  018.IGBT最高温度                            $    $  degC        $    $  ANS018.BYTE004  $  if(X1<=250) Y=X1*1-75;else Y=@0004;
  $  019.电流基准                                $    $  A[peak]     $    $  ANS019.BYTE004  $  if((X1*256+X2)<=2000) Y=(X1*256+X2)*1-1000;else Y=@0004;
  $  020.5V CPU电源电压                          $    $  V           $    $  ANS020.BYTE004  $  if(X1<=100)Y=X1*0.1;else Y=@0004;
  $  021.12V电源电压                             $    $  V           $    $  ANS021.BYTE004  $  if(X1<=28) Y=X1*1;else Y=@0004;
  $  022.子CPU 5V功率                            $    $  V           $    $  ANS022.BYTE004  $  if(X1<=100)Y=X1*0.1;else Y=@0004;
  $  023.BMS(电池管理系统)电压                   $    $  V           $    $  ANS023.BYTE004  $  if((X1*256+X2)<=1000) Y=(X1*256+X2)*1;else Y=@0004;
  $  024.参考电机                                $    $  Nm          $    $  ANS024.BYTE004  $  if((X1*256+X2)<=10000)Y=(X1*256+X2)*0.1-500;else Y=@0004;
  $  025.点火电压                                $    $  V           $    $  ANS025.BYTE004  $  if(X1<=28) Y=X1*1;else Y=@0004;
  $  026.MCU(驱动电机控制单元)电机状态           $    $              $    $  ANS026.BYTE004  $  if(X1==0) y=@0025;else if(X1==1) y=@031d;else if(X1==2) y=@031e;else if(X1==3) y=@031f;else if(X1==4) y=@0320;else if(X1==5) y=@0321;else if(X1==6) y=@000d;else if(X1==7) y=@000d;else y=@0004;
  $  027.MCU(驱动电机控制单元)电机错误状态       $    $              $    $  ANS027.BYTE004  $  if(X1==0) y=@00f5;else if(X1==1) y=@0213;else if(X1==2) y=@031a;else if(X1==3) y=@0071;else if(X1==4) y=@031b;else if(X1==5) y=@031c;else if(X1==6) y=@000d;else if(X1==7) y=@000d;else y=@0004;
  $  028.HCU(整车控制器)3报文内容错误            $    $              $    $  ANS028.BYTE004  $  if(X1==0) y=@00f5;else if(X1==1) y=@0318;else if(X1==2) y=@0319;else y=@0004;
  $  029.BMS(电池管理系统)报文内容错误           $    $              $    $  ANS029.BYTE004  $  if(X1==0) y=@00f5;else if(X1==1) y=@0318;else if(X1==2) y=@0319;else y=@0004;
  $  030.输出电压幅度                            $    $  V           $    $  ANS030.BYTE004  $  if((X1*256+X2)<=1000) Y=(X1*256+X2)*1;else Y=@0004;
  $  031.输出电压限制                            $    $  V           $    $  ANS031.BYTE004  $  if((X1*256+X2)<=1000) Y=(X1*256+X2)*1;else Y=@0004;
  $  032.输出电压比率                            $    $  %           $    $  ANS032.BYTE004  $  if((X1*256+X2)<=1000) Y=(X1*256+X2)*1;else Y=@0004;
  $  033.HVDC(高压输出软件)正电压                $    $  V           $    $  ANS033.BYTE004  $  if((X1*256+X2)<=1000) Y=(X1*256+X2)*1;else Y=@0004;
  $  034.HVDC(高压输出软件)负电压                $    $  V           $    $  ANS034.BYTE004  $  if((X1*256+X2)<=1000) Y=(X1*256+X2)*1;else Y=@0004;
  $  035.SCU1软件版本                            $    $              $    $  ANS035.BYTE004  $  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $  036.SCU2软件版本                            $    $              $    $  ANS036.BYTE004  $  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $  037.主CPU校验                               $    $  degC        $    $  ANS037.BYTE004  $  Y=HEX(X1,X2);
  $  038.SCU1校验                                $    $              $    $  ANS038.BYTE004  $  Y=HEX(X1,X2);
  $  039.SCU2校验                                $    $              $    $  ANS039.BYTE004  $  Y=HEX(X1,X2);
  $  040.附件状态                                $    $              $    $  ANS040.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0094;else y=@0004;
  $  041.SCU1 ACC状态                            $    $              $    $  ANS041.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0094;else y=@0004;
  $  042.SCU1点火状态                            $    $              $    $  ANS042.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0094;else y=@0004;
  $  043.SCU1运行曲柄                            $    $  V           $    $  ANS043.BYTE004  $  if(X1<=28) Y=X1*1;else Y=@0004;
  $  044.SCU2 ACC状态                            $    $              $    $  ANS044.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0094;else y=@0004;
  $  045.SCU2点火状态                            $    $              $    $  ANS045.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0094;else y=@0004;
  $  046.SCU2运行曲柄                            $    $  V           $    $  ANS046.BYTE004  $  if(X1<=28) Y=X1*1;else Y=@0004;
  $  047.SCU引起的主要故障                       $    $              $    $  ANS047.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@0071;else y=@0004;
  $  048.SCU低分辨率                             $    $  rpm         $    $  ANS048.BYTE004  $  if((X1*256+X2)<=15000)Y=(X1*256+X2)*1;else Y=@0004;
  $  049.监控电机3相断路                         $    $              $    $  ANS049.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@0071;else y=@0004;
  $  050.监控电机3相断路覆盖                     $    $              $    $  ANS050.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@0071;else y=@0004;
  $  051.监控电机3相短路                         $    $              $    $  ANS051.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@0071;else y=@0004;
  $  052.监控电机3相短路覆盖                     $    $              $    $  ANS052.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@0071;else y=@0004;
  $  053.分解器位置                              $    $  Degree      $    $  ANS053.BYTE004  $  if((X1*256+X2)<=3600)Y=(X1*256+X2)*0.1;else Y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7F1 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
