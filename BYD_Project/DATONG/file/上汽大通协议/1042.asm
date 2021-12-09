
    车型ID：1042

    模拟：协议模拟-->1042

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:721 02 10 01 00 00 00 00 00       $~  ANS000:7A1 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:721 02 3E 80 00 00 00 00 00       $!  ANS000:7A1 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:721 03 19 02 09 00 00 00 00       $#  ANS000:7A1 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/42000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:721 04 14 FF FF FF 00 00 00       $$  ANS000:7A1 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:721 03 22 F1 A0 00 00 00 00       $%  ANS000:7A1 03 22 F1 A0 00 00 00 00
  $%  REQ001:721 03 22 F1 83 00 00 00 00       $%  ANS001:7A1 03 22 F1 83 00 00 00 00
  $%  REQ002:721 03 22 F1 A1 00 00 00 00       $%  ANS002:7A1 03 22 F1 A1 00 00 00 00
  $%  REQ003:721 03 22 F1 91 00 00 00 00       $%  ANS003:7A1 03 22 F1 91 00 00 00 00
  $%  REQ004:721 03 22 F1 A2 00 00 00 00       $%  ANS004:7A1 03 22 F1 A2 00 00 00 00
  $%  REQ005:721 03 22 F1 87 00 00 00 00       $%  ANS005:7A1 03 22 F1 87 00 00 00 00
  $%  REQ006:721 03 22 F1 10 00 00 00 00       $%  ANS006:7A1 03 22 F1 10 00 00 00 00
  $%  REQ007:721 03 22 F1 92 00 00 00 00       $%  ANS007:7A1 03 22 F1 92 00 00 00 00
  $%  REQ008:721 03 22 F1 8C 00 00 00 00       $%  ANS008:7A1 03 22 F1 8C 00 00 00 00
  $%  REQ009:721 03 22 F1 94 00 00 00 00       $%  ANS009:7A1 03 22 F1 94 00 00 00 00
  $%  REQ010:721 03 22 F1 8A 00 00 00 00       $%  ANS010:7A1 03 22 F1 8A 00 00 00 00
  $%  REQ011:721 03 22 F1 90 00 00 00 00       $%  ANS011:7A1 03 22 F1 90 00 00 00 00
  $%  REQ012:721 03 22 F1 A8 00 00 00 00       $%  ANS012:7A1 03 22 F1 A8 00 00 00 00
  $%  REQ013:721 03 22 F1 8B 00 00 00 00       $%  ANS013:7A1 03 22 F1 8B 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE011  $%  ASCII(X1,X2,X3);
  $%  002:电控单元标定软件号:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元硬件号:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:电控单元网络文件参考号:          $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  005:电控单元零件号:                  $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号(上次):            $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  007:测试工具参考号(上次):            $%    $%  ANS006.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  008:里程读数(上次)KM:                $%    $%  ANS006.BYTE015  $%  y=(x1*256*256+x2*256+x3);
  $%  009:供应商电控单元硬件参考号:        $%    $%  ANS007.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  010:供应商电控单元序列号:            $%    $%  ANS008.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:供应商电控单元序列号:            $%    $%  ANS008.BYTE004  $%  y=UINT40(x1,x2,x3,x4,x5);
  $%  012:供应商电控单元产线号:            $%    $%  ANS008.BYTE009  $%  ASCII(X1,X2);
  $%  013:年:                              $%    $%  ANS008.BYTE011  $%  HEX(X1,X2,X3);
  $%  014:月:                              $%    $%  ANS008.BYTE014  $%  HEX(X1,X2,X3,X4,X5);
  $%  015:日:                              $%    $%  ANS008.BYTE019  $%  HEX(X1,X2,X3,X4,X5);
  $%  016:供应商电控单元软件参考号:        $%    $%  ANS009.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  017:系统供应商识别码:                $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  018:VIN码:                           $%    $%  ANS011.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  019:车辆特征信息:                    $%    $%  ANS012.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  020:电控单元制造日期:                $%    $%  ANS013.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:721 03 22 B0 23 00 00 00 00       $  ANS000:7A1 03 22 B0 23 00 00 00 00
  $  REQ001:721 03 22 B0 20 00 00 00 00       $  ANS001:7A1 03 22 B0 20 00 00 00 00
  $  REQ002:721 03 22 B0 12 00 00 00 00       $  ANS002:7A1 03 22 B0 12 00 00 00 00
  $  REQ003:721 03 22 B0 10 00 00 00 00       $  ANS003:7A1 03 22 B0 10 00 00 00 00
  $  REQ004:721 03 22 B0 21 00 00 00 00       $  ANS004:7A1 03 22 B0 21 00 00 00 00
  $  REQ005:721 03 22 C0 02 00 00 00 00       $  ANS005:7A1 03 22 C0 02 00 00 00 00
  $  REQ006:721 03 22 C0 01 00 00 00 00       $  ANS006:7A1 03 22 C0 01 00 00 00 00
  $  REQ007:721 03 22 B0 1B 00 00 00 00       $  ANS007:7A1 03 22 B0 1B 00 00 00 00
  $  REQ008:721 03 22 B0 1A 00 00 00 00       $  ANS008:7A1 03 22 B0 1A 00 00 00 00
  $  REQ009:721 03 22 B0 1E 00 00 00 00       $  ANS009:7A1 03 22 B0 1E 00 00 00 00
  $  REQ010:721 03 22 B0 13 00 00 00 00       $  ANS010:7A1 03 22 B0 13 00 00 00 00
  $  REQ011:721 03 22 D0 01 00 00 00 00       $  ANS011:7A1 03 22 D0 01 00 00 00 00
  $  REQ012:721 03 22 D0 02 00 00 00 00       $  ANS012:7A1 03 22 D0 02 00 00 00 00
  $  REQ013:721 03 22 D0 03 00 00 00 00       $  ANS013:7A1 03 22 D0 03 00 00 00 00
  $  REQ014:721 03 22 D0 04 00 00 00 00       $  ANS014:7A1 03 22 D0 04 00 00 00 00
  $  REQ015:721 03 22 B0 14 00 00 00 00       $  ANS015:7A1 03 22 B0 14 00 00 00 00
  $  REQ016:721 03 22 B0 16 00 00 00 00       $  ANS016:7A1 03 22 B0 16 00 00 00 00
  $  REQ017:721 03 22 B0 18 00 00 00 00       $  ANS017:7A1 03 22 B0 18 00 00 00 00
  $  REQ018:721 03 22 B0 15 00 00 00 00       $  ANS018:7A1 03 22 B0 15 00 00 00 00
  $  REQ019:721 03 22 B0 17 00 00 00 00       $  ANS019:7A1 03 22 B0 17 00 00 00 00
  $  REQ020:721 03 22 B0 19 00 00 00 00       $  ANS020:7A1 03 22 B0 19 00 00 00 00
  $  REQ021:721 03 22 B0 11 00 00 00 00       $  ANS021:7A1 03 22 B0 11 00 00 00 00
  $  REQ022:721 03 22 B0 22 00 00 00 00       $  ANS022:7A1 03 22 B0 22 00 00 00 00
  $  REQ023:721 03 22 C0 03 00 00 00 00       $  ANS023:7A1 03 22 C0 03 00 00 00 00
  $  REQ024:721 03 22 B0 25 00 00 00 00       $  ANS024:7A1 03 22 B0 25 00 00 00 00
  $  REQ025:721 03 22 B0 1F 00 00 00 00       $  ANS025:7A1 03 22 B0 1F 00 00 00 00
  $  REQ026:721 03 22 B0 24 00 00 00 00       $  ANS026:7A1 03 22 B0 24 00 00 00 00
  $  REQ027:721 03 22 B0 1C 00 00 00 00       $  ANS027:7A1 03 22 B0 1C 00 00 00 00
  $  REQ028:721 03 22 B0 1D 00 00 00 00       $  ANS028:7A1 03 22 B0 1D 00 00 00 00

  $  000.通过CAN总线发送的A/C请求                                      $    $               $    $  ANS000.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  001.出风模式风门电机位置                                          $    $  V            $    $  ANS001.BYTE004  $  y=x*5/256.0;
  $  002.环境温度传感器温度值                                          $    $  degree C     $    $  ANS002.BYTE004  $  y=x*0.5-40;
  $  003.电池电压                                                      $    $  V            $    $  ANS003.BYTE004  $  y=x*0.1;
  $  004.鼓风机风速档位                                                $    $  bar          $    $  ANS004.BYTE004  $  y=x;
  $  005.TBOX                                                          $    $               $    $  ANS005.BYTE004  $  if((x&0x40)==0x40)y=@00f0;else y=@00f1;
  $  006.IPK                                                           $    $               $    $  ANS005.BYTE004  $  if((x&0x20)==0x20)y=@00f0;else y=@00f1;
  $  007.FICM(娱乐系统大屏含导航)                                      $    $               $    $  ANS005.BYTE004  $  if((x&0x10)==0x10)y=@00f0;else y=@00f1;
  $  008.发动机管理系统                                                $    $               $    $  ANS005.BYTE004  $  if((x&0x08)==0x08)y=@00f0;else y=@00f1;
  $  009.TCU(变速箱控制单元)                                           $    $               $    $  ANS005.BYTE004  $  if((x&0x04)==0x04)y=@00f0;else y=@00f1;
  $  010.BCM                                                           $    $               $    $  ANS005.BYTE004  $  if((x&0x02)==0x02)y=@00f0;else y=@00f1;
  $  011.ABS/ESP                                                       $    $               $    $  ANS005.BYTE004  $  if((x&0x01)==0x01)y=@00f0;else y=@00f1;
  $  012.配置方向盘位置                                                $    $               $    $  ANS006.BYTE004  $  if((x&0x01)==0x01)y=@050f;else y=@0510;
  $  013.冷却液温度                                                    $    $  degree C     $    $  ANS007.BYTE004  $  y=x*0.5-40;
  $  014.排气压力值                                                    $    $  mPa          $    $  ANS008.BYTE004  $  y=x*0.015625;
  $  015.主驾驶侧混风电机位置                                          $    $  V            $    $  ANS009.BYTE004  $  y=x*5/256.0;
  $  016.蒸发器温度传感器温度值                                        $    $  degree C     $    $  ANS010.BYTE004  $  y=x*0.5-40;
  $  017.右加热线圈电阻越限                                            $    $               $    $  ANS011.BYTE004  $  if((x&0x80)==0x80)y=@00b3;else y=@012a;
  $  018.右加热高边短到地                                              $    $               $    $  ANS011.BYTE004  $  if((x&0x40)==0x40)y=@00b3;else y=@012a;
  $  019.右加热高边短到电源                                            $    $               $    $  ANS011.BYTE004  $  if((x&0x20)==0x20)y=@00b3;else y=@012a;
  $  020.左加热NTC(温度传感器，负温度系数热敏电阻)短到地               $    $               $    $  ANS011.BYTE004  $  if((x&0x10)==0x10)y=@00b3;else y=@012a;
  $  021.左加热NTC(温度传感器，负温度系数热敏电阻)开路或短到电源       $    $               $    $  ANS011.BYTE004  $  if((x&0x08)==0x08)y=@00b3;else y=@012a;
  $  022.左加热线圈电阻越限                                            $    $               $    $  ANS011.BYTE004  $  if((x&0x04)==0x04)y=@00b3;else y=@012a;
  $  023.左加热高边短到地                                              $    $               $    $  ANS011.BYTE004  $  if((x&0x02)==0x02)y=@00b3;else y=@012a;
  $  024.左加热高边短到电源                                            $    $               $    $  ANS011.BYTE004  $  if((x&0x01)==0x01)y=@00b3;else y=@012a;
  $  025.加热低边短到电源                                              $    $               $    $  ANS012.BYTE004  $  if((x&0x04)==0x04)y=@00b3;else y=@012a;
  $  026.右加热NTC(温度传感器，负温度系数热敏电阻)短到地               $    $               $    $  ANS012.BYTE004  $  if((x&0x02)==0x02)y=@00b3;else y=@012a;
  $  027.右加热NTC(温度传感器，负温度系数热敏电阻)开路或短到电源       $    $               $    $  ANS012.BYTE004  $  if((x&0x01)==0x01)y=@00b3;else y=@012a;
  $  028.右加热线圈电阻越限                                            $    $               $    $  ANS013.BYTE004  $  if((x&0x80)==0x80)y=@00b3;else y=@012a;
  $  029.右加热高边短到地                                              $    $               $    $  ANS013.BYTE004  $  if((x&0x40)==0x40)y=@00b3;else y=@012a;
  $  030.右加热高边短到电源                                            $    $               $    $  ANS013.BYTE004  $  if((x&0x20)==0x20)y=@00b3;else y=@012a;
  $  031.左加热NTC(温度传感器，负温度系数热敏电阻)短到地               $    $               $    $  ANS013.BYTE004  $  if((x&0x10)==0x10)y=@00b3;else y=@012a;
  $  032.左加热NTC(温度传感器，负温度系数热敏电阻)开路或短到电源       $    $               $    $  ANS013.BYTE004  $  if((x&0x08)==0x08)y=@00b3;else y=@012a;
  $  033.左加热线圈电阻越限                                            $    $               $    $  ANS013.BYTE004  $  if((x&0x04)==0x04)y=@00b3;else y=@012a;
  $  034.左加热高边短到地                                              $    $               $    $  ANS013.BYTE004  $  if((x&0x02)==0x02)y=@00b3;else y=@012a;
  $  035.左加热高边短到电源                                            $    $               $    $  ANS013.BYTE004  $  if((x&0x01)==0x01)y=@00b3;else y=@012a;
  $  036.加热低边短到电源                                              $    $               $    $  ANS014.BYTE004  $  if((x&0x04)==0x04)y=@00b3;else y=@012a;
  $  037.右加热NTC(温度传感器，负温度系数热敏电阻)短到地               $    $               $    $  ANS014.BYTE004  $  if((x&0x02)==0x02)y=@00b3;else y=@012a;
  $  038.右加热NTC(温度传感器，负温度系数热敏电阻)开路或短到电源       $    $               $    $  ANS014.BYTE004  $  if((x&0x01)==0x01)y=@00b3;else y=@012a;
  $  039.主驾驶侧脸部出风口温度传感器温度值                            $    $  degree C     $    $  ANS015.BYTE004  $  y=x*0.5-40;
  $  040.副驾驶侧脸部出风温度传感器温度值                              $    $  degree C     $    $  ANS016.BYTE004  $  y=x*0.5-40;
  $  041.后排脸部出风口温度传感器温度值                                $    $  degree C     $    $  ANS017.BYTE004  $  y=x*0.5-40;
  $  042.主驾驶侧脚部出风口温度传感器温度值                            $    $  degree C     $    $  ANS018.BYTE004  $  y=x*0.5-40;
  $  043.副驾驶侧脚部出风口温度传感器温度值                            $    $  degree C     $    $  ANS019.BYTE004  $  y=x*0.5-40;
  $  044.后排脚部出风口温度传感器温度值                                $    $  degree C     $    $  ANS020.BYTE004  $  y=x*0.5-40;
  $  045.车内温度值                                                    $    $  degree C     $    $  ANS021.BYTE004  $  y=x*0.5-40;
  $  046.进气风门电机位置                                              $    $               $    $  ANS022.BYTE004  $  if((x&0x01)==0x01)y=@0b88;else y=@0b89;
  $  047.APM                                                           $    $               $    $  ANS023.BYTE004  $  if((x&0x10)==0x10)y=@00f0;else y=@00f1;
  $  048.RHVM(后通风加热模块)                                          $    $               $    $  ANS023.BYTE004  $  if((x&0x08)==0x08)y=@00f0;else y=@00f1;
  $  049.FHVM(前通风加热模块)                                          $    $               $    $  ANS023.BYTE004  $  if((x&0x04)==0x04)y=@00f0;else y=@00f1;
  $  050.HVSM(前排通风加热开关)                                        $    $               $    $  ANS023.BYTE004  $  if((x&0x02)==0x02)y=@00f0;else y=@00f1;
  $  051.RCP(后空调面板)                                               $    $               $    $  ANS023.BYTE004  $  if((x&0x01)==0x01)y=@00f0;else y=@00f1;
  $  052.PTC2(电加热器，正温度系数热敏电阻2)工作状态                   $    $               $    $  ANS024.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  053.PTC1(电加热器，正温度系数热敏电阻2)工作状态                   $    $               $    $  ANS024.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  054.副驾驶侧混风电机位置                                          $    $  V            $    $  ANS025.BYTE004  $  y=x*5/256.0;
  $  055.通过CAN总线发送的后除霜请求                                   $    $               $    $  ANS026.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  056.主驾驶侧阳光强度值                                            $    $               $    $  ANS027.BYTE004  $  y=x1*256+x2;
  $  057.副驾驶侧阳光强度值                                            $    $               $    $  ANS028.BYTE004  $  y=x1*256+x2;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:721 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
