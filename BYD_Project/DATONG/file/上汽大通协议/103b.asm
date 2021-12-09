
    车型ID：103b

    模拟：协议模拟-->103b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:741 02 10 01 00 00 00 00 00       $~  ANS000:7C1 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:741 02 3E 80 00 00 00 00 00       $!  ANS000:7C1 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:741 03 19 02 09 00 00 00 00       $#  ANS000:7C1 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/3b000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:741 04 14 FF FF FF 00 00 00       $$  ANS000:7C1 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:741 03 22 F1 A0 00 00 00 00       $%  ANS000:7C1 03 22 F1 A0 00 00 00 00
  $%  REQ001:741 03 22 F1 83 00 00 00 00       $%  ANS001:7C1 03 22 F1 83 00 00 00 00
  $%  REQ002:741 03 22 F1 A1 00 00 00 00       $%  ANS002:7C1 03 22 F1 A1 00 00 00 00
  $%  REQ003:741 03 22 F1 91 00 00 00 00       $%  ANS003:7C1 03 22 F1 91 00 00 00 00
  $%  REQ004:741 03 22 F1 A2 00 00 00 00       $%  ANS004:7C1 03 22 F1 A2 00 00 00 00
  $%  REQ005:741 03 22 F1 87 00 00 00 00       $%  ANS005:7C1 03 22 F1 87 00 00 00 00
  $%  REQ006:741 03 22 F1 10 00 00 00 00       $%  ANS006:7C1 03 22 F1 10 00 00 00 00
  $%  REQ007:741 03 22 F1 92 00 00 00 00       $%  ANS007:7C1 03 22 F1 92 00 00 00 00
  $%  REQ008:741 03 22 F1 8C 00 00 00 00       $%  ANS008:7C1 03 22 F1 8C 00 00 00 00
  $%  REQ009:741 03 22 F1 94 00 00 00 00       $%  ANS009:7C1 03 22 F1 94 00 00 00 00
  $%  REQ010:741 03 22 F1 8A 00 00 00 00       $%  ANS010:7C1 03 22 F1 8A 00 00 00 00
  $%  REQ011:741 03 22 F1 90 00 00 00 00       $%  ANS011:7C1 03 22 F1 90 00 00 00 00
  $%  REQ012:741 03 22 F1 A8 00 00 00 00       $%  ANS012:7C1 03 22 F1 A8 00 00 00 00
  $%  REQ013:741 03 22 F1 8B 00 00 00 00       $%  ANS013:7C1 03 22 F1 8B 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  002:电控单元标定软件号:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元硬件号:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:电控单元网络文件参考号:          $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  005:电控单元零件号:                  $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号(上次):            $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  007:测试工具参考号(上次):            $%    $%  ANS006.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  008:里程读数(上次)KM:                $%    $%  ANS006.BYTE015  $%  y=(x1*256*256+x2*256+x3);
  $%  009:供应商电控单元硬件参考号:        $%    $%  ANS007.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  010:供应商电控单元序列号:            $%    $%  ANS008.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:供应商电控单元软件参考号:        $%    $%  ANS009.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  012:系统供应商识别码:                $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  013:VIN码:                           $%    $%  ANS011.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  014:车辆特征信息:                    $%    $%  ANS012.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  015:电控单元制造日期:                $%    $%  ANS013.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:741 03 22 FD 01 00 00 00 00       $  ANS000:7C1 03 22 FD 01 00 00 00 00
  $  REQ001:741 03 22 F1 86 00 00 00 00       $  ANS001:7C1 03 22 F1 86 00 00 00 00
  $  REQ002:741 03 22 FD 02 00 00 00 00       $  ANS002:7C1 03 22 FD 02 00 00 00 00
  $  REQ003:741 03 22 FD 03 00 00 00 00       $  ANS003:7C1 03 22 FD 03 00 00 00 00
  $  REQ004:741 03 22 FD 08 00 00 00 00       $  ANS004:7C1 03 22 FD 08 00 00 00 00
  $  REQ005:741 03 22 FD 00 00 00 00 00       $  ANS005:7C1 03 22 FD 00 00 00 00 00
  $  REQ006:741 03 22 FD 05 00 00 00 00       $  ANS006:7C1 03 22 FD 05 00 00 00 00
  $  REQ007:741 03 22 FD 06 00 00 00 00       $  ANS007:7C1 03 22 FD 06 00 00 00 00

  $  000.电瓶电压(ABS)                         $    $  V         $    $  ANS000.BYTE004  $  y=x*0.08;
  $  001.刹车灯开关(ABS)                       $    $            $    $  ANS000.BYTE005  $  if(x==0x00)y=@000f;else if(x==0x01)y=@0028;else y=@01a9;
  $  002.当前诊断模式                          $    $            $    $  ANS001.BYTE004  $  if(x==0x00)y=@000f;else if(x==0x01)y=@015f;else if(x==0x02) y=@0180;else if(x==0x03) y=@00b0;else y=@01a9;
  $  003.阀继电器状态                          $    $            $    $  ANS002.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  004.泵马达状态                            $    $            $    $  ANS002.BYTE005  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  005.右后出油阀                            $    $            $    $  ANS002.BYTE006  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  006.右后进油阀                            $    $            $    $  ANS002.BYTE006  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  007.左后出油阀                            $    $            $    $  ANS002.BYTE006  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  008.左后进油阀                            $    $            $    $  ANS002.BYTE006  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  009.右前出油阀                            $    $            $    $  ANS002.BYTE006  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  010.右前进油阀                            $    $            $    $  ANS002.BYTE006  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  011.左前出油阀                            $    $            $    $  ANS002.BYTE006  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  012.左前进油阀                            $    $            $    $  ANS002.BYTE006  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  013.PALA(ESP OFF)灯(仅ESP)                $    $            $    $  ANS002.BYTE007  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  014.ESP灯(仅ESP)                          $    $            $    $  ANS002.BYTE007  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  015.PALA灯                                $    $            $    $  ANS002.BYTE007  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  016.EBD灯                                 $    $            $    $  ANS002.BYTE007  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  017.阀门HSV2(仅ESP)                       $    $            $    $  ANS002.BYTE007  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  018.阀门HSV1(仅ESP)                       $    $            $    $  ANS002.BYTE007  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  019.阀门USV2(仅ESP)                       $    $            $    $  ANS002.BYTE007  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  020.阀门USV1(仅ESP)                       $    $            $    $  ANS002.BYTE007  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  021.电瓶电压(仅ESP)                       $    $  V         $    $  ANS000.BYTE004  $  y=x*0.08;
  $  022.刹车灯开关(仅ESP)                     $    $            $    $  ANS000.BYTE005  $  if(x==0x00)y=@000f;else if(x==0x01)y=@0028;else y=@01a9;
  $  023.PALA状态(仅ESP)                       $    $            $    $  ANS003.BYTE006  $  if(x==0x00)y=@000f;else if(x==0x01)y=@0028;else y=@01a9;
  $  024.加注状态                              $    $            $    $  ANS003.BYTE004  $  if(x==0x00)y=@0481;else if(x==0xAA) y=@0482;else if(x==0xEE) y=@0483;else y=@0035;
  $  025.SAS(方向盘转向角传感器)校准状态       $    $            $    $  ANS004.BYTE004  $  if(x==0x00)y=@004a;else if(x==0x01)y=@00e7;else y=@01a9;
  $  026.车速                                  $    $  km/h      $    $  ANS005.BYTE004  $  y=(x1*256+x2)*0.05625;
  $  027.左前台速                              $    $  km/h      $    $  ANS005.BYTE006  $  y=(x1*256+x2)*0.05625;
  $  028.右前台速                              $    $  km/h      $    $  ANS005.BYTE008  $  y=(x1*256+x2)*0.05625;
  $  029.左后台速                              $    $  km/h      $    $  ANS005.BYTE010  $  y=(x1*256+x2)*0.05625;
  $  030.右后台速                              $    $  km/h      $    $  ANS005.BYTE012  $  y=(x1*256+x2)*0.05625;
  $  031.主缸压力(仅ESP)                       $    $  bar       $    $  ANS006.BYTE004  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*0.0153;
  $  032.转向角度(仅ESP)                       $    $  rad       $    $  ANS006.BYTE006  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*0.1;
  $  033.偏航率(仅ESP)                         $    $  rad/s     $    $  ANS006.BYTE008  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*0.0213;
  $  034.横向加速度(仅ESP)                     $    $  m/s^2     $    $  ANS006.BYTE010  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*0.02712;
  $  035.纵向加速度(仅ESP)                     $    $  m/s^2     $    $  ANS006.BYTE012  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*0.02712;
  $  036.项目代码                              $    $            $    $  ANS007.BYTE004  $  if(x==0x01) y=@058d;else if(x==0x02)y=@01ba;else if(x==0x03)y=@058e;else if(x==0x04)y=@058f;else if(x==0x05)y=@0590;else if(x==0x06)y=@0591;else y=@01a9;
  $  037.产品类型                              $    $            $    $  ANS007.BYTE005  $  if((x&0xC0)==0x80)y=@0592;else if((x&0xC0)==0x40)y=@0593;else y=@01a9;
  $  038.变速箱类型                            $    $            $    $  ANS007.BYTE005  $  if((x&0x1F)==0x01)y=@003b; else if((x&0x1F)==0x02)y=@003a; else if((x&0x1F)==0x04)y=@0594;else if((x&0x1F)==0x08)y=@0595;else if((x&0x1F)==0x10)y=@0596;else y=@01a9;
  $  039.发动机类型                            $    $            $    $  ANS007.BYTE006  $  if(x==0x01)y=@0597;else if(x==0x02)  y=@0598;else y=@0035;
  $  040.制动系统                              $    $            $    $  ANS007.BYTE007  $  if((x&0x30)==0x10)y=@0599; else if((x&0x30)==0x20)y=@059a; else y=@01a9;
  $  041.悬架类型                              $    $            $    $  ANS007.BYTE007  $  if((x&0x03)==0x01)y=@059b; else if((x&0x03)==0x02)y=@059c; else y=@01a9;
  $  042.轮胎类型                              $    $            $    $  ANS007.BYTE008  $  if(x==0x21) y=@0531;else if(x==0x31) y=@059d;if(x==0x41) y=@059e; else y=@01a9;
  $  043.驱动类型                              $    $            $    $  ANS007.BYTE009  $  if(x==0x01) y=@059f;else if(x==0x02)y=@05a0;else if(x==0x03)y=@05a1;else y=@01a9;
  $  044.EPB(电子手刹)                         $    $            $    $  ANS007.BYTE010  $  if((x&0x04)==0x04)y=@05a2;else y=@05a3;
  $  045.自动启停                              $    $            $    $  ANS007.BYTE010  $  if((x&0x02)==0x02)y=@05a4;else y=@05a5;
  $  046.辅助驾驶                              $    $            $    $  ANS007.BYTE010  $  if((x&0x01)==0x01)y=@0028;else y=@000f;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:741 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
