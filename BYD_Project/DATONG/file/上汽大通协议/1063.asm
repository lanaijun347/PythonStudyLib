
    车型ID：1063

    模拟：协议模拟-->1063

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k

进入命令:

  $~  REQ000:700 02 10 01 00 00 00 00 00       $~  ANS000:780 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:700 02 3E 80 00 00 00 00 00       $!  ANS000:780 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:700 03 19 02 09 00 00 00 00       $#  ANS000:780 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/63000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:700 04 14 FF FF FF 00 00 00       $$  ANS000:780 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:700 03 22 F1 A0 00 00 00 00       $%  ANS000:780 03 22 F1 A0 00 00 00 00
  $%  REQ001:700 03 22 F1 83 00 00 00 00       $%  ANS001:780 03 22 F1 83 00 00 00 00
  $%  REQ002:700 03 22 F1 A1 00 00 00 00       $%  ANS002:780 03 22 F1 A1 00 00 00 00
  $%  REQ003:700 03 22 F1 91 00 00 00 00       $%  ANS003:780 03 22 F1 91 00 00 00 00
  $%  REQ004:700 03 22 F1 A2 00 00 00 00       $%  ANS004:780 03 22 F1 A2 00 00 00 00
  $%  REQ005:700 03 22 F1 87 00 00 00 00       $%  ANS005:780 03 22 F1 87 00 00 00 00
  $%  REQ006:700 03 22 F1 10 00 00 00 00       $%  ANS006:780 03 22 F1 10 00 00 00 00
  $%  REQ007:700 03 22 F1 92 00 00 00 00       $%  ANS007:780 03 22 F1 92 00 00 00 00
  $%  REQ008:700 03 22 F1 8C 00 00 00 00       $%  ANS008:780 03 22 F1 8C 00 00 00 00
  $%  REQ009:700 03 22 F1 94 00 00 00 00       $%  ANS009:780 03 22 F1 94 00 00 00 00
  $%  REQ010:700 03 22 F1 8A 00 00 00 00       $%  ANS010:780 03 22 F1 8A 00 00 00 00
  $%  REQ011:700 03 22 F1 90 00 00 00 00       $%  ANS011:780 03 22 F1 90 00 00 00 00
  $%  REQ012:700 03 22 F1 A8 00 00 00 00       $%  ANS012:780 03 22 F1 A8 00 00 00 00
  $%  REQ013:700 03 22 F1 8B 00 00 00 00       $%  ANS013:780 03 22 F1 8B 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  002:电控单元标定软件号:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元硬件号:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:电控单元网络文件参考号:          $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  005:电控单元零件号:                  $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号(上次):            $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  007:测试参考号(上次):                $%    $%  ANS006.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  008:里程读数(上次)KM:                $%    $%  ANS006.BYTE015  $%  y=(x1*256*256+x2*256+x3);
  $%  009:供应商电控单元硬件参考号:        $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%c%c%02X%02X%02X%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  010:供应商电控单元序列号:            $%    $%  ANS008.BYTE004  $%  y=SPRINTF([%c%c%02X%02X%02X%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:供应商电控单元软件参考号:        $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%c%c%02X%02X%02X%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  012:系统供应商识别码:                $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  013:VIN码:                           $%    $%  ANS011.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  014:车辆特征信息:                    $%    $%  ANS012.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  015:电控单元制造日期:                $%    $%  ANS013.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:700 03 22 D9 19 00 00 00 00       $  ANS000:780 03 22 D9 19 00 00 00 00
  $  REQ001:700 03 22 D9 13 00 00 00 00       $  ANS001:780 03 22 D9 13 00 00 00 00
  $  REQ002:700 03 22 C0 00 00 00 00 00       $  ANS002:780 03 22 C0 00 00 00 00 00
  $  REQ003:700 03 22 D9 15 00 00 00 00       $  ANS003:780 03 22 D9 15 00 00 00 00
  $  REQ004:700 03 22 D9 18 00 00 00 00       $  ANS004:780 03 22 D9 18 00 00 00 00
  $  REQ005:700 03 22 D9 A1 00 00 00 00       $  ANS005:780 03 22 D9 A1 00 00 00 00
  $  REQ006:700 03 22 D9 11 00 00 00 00       $  ANS006:780 03 22 D9 11 00 00 00 00
  $  REQ007:700 03 22 D9 A4 00 00 00 00       $  ANS007:780 03 22 D9 A4 00 00 00 00
  $  REQ008:700 03 22 D9 16 00 00 00 00       $  ANS008:780 03 22 D9 16 00 00 00 00
  $  REQ009:700 03 22 D9 17 00 00 00 00       $  ANS009:780 03 22 D9 17 00 00 00 00
  $  REQ010:700 03 22 D9 12 00 00 00 00       $  ANS010:780 03 22 D9 12 00 00 00 00
  $  REQ011:700 03 22 D4 11 00 00 00 00       $  ANS011:780 03 22 D4 11 00 00 00 00
  $  REQ012:700 03 22 D4 12 00 00 00 00       $  ANS012:780 03 22 D4 12 00 00 00 00
  $  REQ013:700 03 22 D9 A0 00 00 00 00       $  ANS013:780 03 22 D9 A0 00 00 00 00

  $  000.BMS剩余电量                         $    $  %        $    $  ANS000.BYTE004  $  y=x;
  $  001.BMS剩余电量段                       $    $           $    $  ANS001.BYTE004  $  y=x;
  $  002.Radio启用                           $    $           $    $  ANS002.BYTE004  $  if((x&0x80)==0x80)y=@00dc;else y=@00db;
  $  003.ESP启用                             $    $           $    $  ANS002.BYTE004  $  if((x&0x40)==0x40)y=@00dc;else y=@00db;
  $  004.SRS启用                             $    $           $    $  ANS002.BYTE004  $  if((x&0x20)==0x20)y=@00dc;else y=@00db;
  $  005.TPMS启用                            $    $           $    $  ANS002.BYTE004  $  if((x&0x10)==0x10)y=@00dc;else y=@00db;
  $  006.语言                                $    $           $    $  ANS002.BYTE004  $  if((x&0x0F)==0x00)y=@0901;else if((x&0x0F)==0x01)y=@0487;else y=@0004;
  $  007.超速设置                            $    $           $    $  ANS002.BYTE005  $  if((x&0x30)==0x00)y=@09ea;else if((x&0x30)==0x10)y=@09eb;else if((x&0x30)==0x20)y=@09ec;else y=@0004;
  $  008.前雾灯启用                          $    $           $    $  ANS002.BYTE005  $  if((x&0x08)==0x08)y=@00dc;else y=@00db;
  $  009.LCA启用                             $    $           $    $  ANS002.BYTE005  $  if((x&0x04)==0x04)y=@00dc;else y=@00db;
  $  010.TBOX启用                            $    $           $    $  ANS002.BYTE005  $  if((x&0x02)==0x02)y=@00dc;else y=@00db;
  $  011.按钮调整时间启用                    $    $           $    $  ANS002.BYTE005  $  if((x&0x01)==0x01)y=@00dc;else y=@00db;
  $  012.超速报警                            $    $  km/h     $    $  ANS002.BYTE006  $  y=x;
  $  013.左前轮胎压力                        $    $  kPa      $    $  ANS003.BYTE004  $  y=x*2.75;
  $  014.左后轮胎压力                        $    $  kPa      $    $  ANS004.BYTE004  $  y=x*2.75;
  $  015.MC动力                              $    $  kW       $    $  ANS005.BYTE004  $  y=(x1*256+x2)*0.01-150.0;
  $  016.MC动力段                            $    $           $    $  ANS006.BYTE004  $  y=x;
  $  017.里程表                              $    $  km       $    $  ANS007.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  018.右前轮胎压力                        $    $  kPa      $    $  ANS008.BYTE004  $  y=x*2.75;
  $  019.右后轮胎压力                        $    $  kPa      $    $  ANS009.BYTE004  $  y=x*2.75;
  $  020.速度转速                            $    $           $    $  ANS010.BYTE004  $  y=x;
  $  021.电动侧踏步指示灯                    $    $           $    $  ANS011.BYTE004  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  022.侧灯                                $    $           $    $  ANS011.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  023.后雾灯                              $    $           $    $  ANS011.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  024.前雾灯                              $    $           $    $  ANS011.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  025.远光灯                              $    $           $    $  ANS011.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  026.右转向灯                            $    $           $    $  ANS011.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  027.左转向灯                            $    $           $    $  ANS011.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  028.胎压监视系统警告灯                  $    $           $    $  ANS011.BYTE005  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  029.EBD警告灯                           $    $           $    $  ANS011.BYTE005  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  030.ABS警告灯                           $    $           $    $  ANS011.BYTE005  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  031.电子驻车故障灯                      $    $           $    $  ANS011.BYTE005  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  032.停车灯                              $    $           $    $  ANS011.BYTE005  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  033.制动系统警告灯                      $    $           $    $  ANS011.BYTE005  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  034.安全带警告灯                        $    $           $    $  ANS011.BYTE005  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  035.安全气囊警告灯                      $    $           $    $  ANS011.BYTE005  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  036.BMS剩余电量警告灯                   $    $           $    $  ANS012.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  037.高压电池组切断警告灯                $    $           $    $  ANS012.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  038.动力总成故障开/HVIL警告指示灯       $    $           $    $  ANS012.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  039.电机温度警告灯                      $    $           $    $  ANS012.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  040.电池充电警告灯                      $    $           $    $  ANS012.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  041.电动助力转向故障警告灯              $    $           $    $  ANS012.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  042.ESP关闭                             $    $           $    $  ANS012.BYTE005  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  043.ESP(电子稳定系统)                   $    $           $    $  ANS012.BYTE005  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  044.功率限制指示                        $    $           $    $  ANS012.BYTE005  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  045.高压隔离警告                        $    $           $    $  ANS012.BYTE005  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  046.电力蓄电池故障状态                  $    $           $    $  ANS012.BYTE005  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  047.电源状态                            $    $           $    $  ANS012.BYTE005  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  048.车辆速度                            $    $  km/h     $    $  ANS013.BYTE004  $  y=(x1*256+x2)*0.05625;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:700 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
