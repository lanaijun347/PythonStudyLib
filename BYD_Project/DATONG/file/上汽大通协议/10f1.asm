
    车型ID：10f1

    模拟：协议模拟-->10f1

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

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

  $*$*DTC/ee000000


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
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE011  $%  ASCII(X1,X2,X3);
  $%  002:电控单元标定软件号:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元硬件号:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:电控单元网络参考号:              $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  005:电控单元零件号:                  $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号(上次):            $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  007:测试工具参考号(上次):            $%    $%  ANS006.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  008:里程读数(上次):                  $%    $%  ANS006.BYTE015  $%  y=x1*256*256+x2*256+x3;
  $%  009:供应商电控单元硬件参考号:        $%    $%  ANS007.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  010:供应商电控单元序列号:            $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  011:供应商电控单元软件参考号:        $%    $%  ANS009.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  012:系统供应商标识号:                $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  013:车辆识别代码:                    $%    $%  ANS011.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  014:车辆特征信息:                    $%    $%  ANS012.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  015:电控单元制造日期:                $%    $%  ANS013.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:700 03 22 B1 01 00 00 00 00       $  ANS000:780 03 22 B1 01 00 00 00 00
  $  REQ001:700 03 22 E1 07 00 00 00 00       $  ANS001:780 03 22 E1 07 00 00 00 00
  $  REQ002:700 03 22 B1 02 00 00 00 00       $  ANS002:780 03 22 B1 02 00 00 00 00
  $  REQ003:700 03 22 D4 03 00 00 00 00       $  ANS003:780 03 22 D4 03 00 00 00 00
  $  REQ004:700 03 22 D4 04 00 00 00 00       $  ANS004:780 03 22 D4 04 00 00 00 00
  $  REQ005:700 03 22 C1 12 00 00 00 00       $  ANS005:780 03 22 C1 12 00 00 00 00
  $  REQ006:700 03 22 C1 14 00 00 00 00       $  ANS006:780 03 22 C1 14 00 00 00 00
  $  REQ007:700 03 22 C1 11 00 00 00 00       $  ANS007:780 03 22 C1 11 00 00 00 00
  $  REQ008:700 03 22 C1 13 00 00 00 00       $  ANS008:780 03 22 C1 13 00 00 00 00
  $  REQ009:700 03 22 E1 03 00 00 00 00       $  ANS009:780 03 22 E1 03 00 00 00 00
  $  REQ010:700 03 22 E1 05 00 00 00 00       $  ANS010:780 03 22 E1 05 00 00 00 00
  $  REQ011:700 03 22 B1 07 00 00 00 00       $  ANS011:780 03 22 B1 07 00 00 00 00
  $  REQ012:700 03 22 B1 09 00 00 00 00       $  ANS012:780 03 22 B1 09 00 00 00 00
  $  REQ013:700 03 22 E1 04 00 00 00 00       $  ANS013:780 03 22 E1 04 00 00 00 00
  $  REQ014:700 03 22 B1 14 00 00 00 00       $  ANS014:780 03 22 B1 14 00 00 00 00
  $  REQ015:700 03 22 D1 1B 00 00 00 00       $  ANS015:780 03 22 D1 1B 00 00 00 00
  $  REQ016:700 03 22 D1 1C 00 00 00 00       $  ANS016:780 03 22 D1 1C 00 00 00 00
  $  REQ017:700 03 22 D1 1D 00 00 00 00       $  ANS017:780 03 22 D1 1D 00 00 00 00
  $  REQ018:700 03 22 D1 1E 00 00 00 00       $  ANS018:780 03 22 D1 1E 00 00 00 00
  $  REQ019:700 03 22 B1 10 00 00 00 00       $  ANS019:780 03 22 B1 10 00 00 00 00
  $  REQ020:700 03 22 B1 13 00 00 00 00       $  ANS020:780 03 22 B1 13 00 00 00 00
  $  REQ021:700 03 22 B1 08 00 00 00 00       $  ANS021:780 03 22 B1 08 00 00 00 00
  $  REQ022:700 03 22 B1 15 00 00 00 00       $  ANS022:780 03 22 B1 15 00 00 00 00
  $  REQ023:700 03 22 E1 06 00 00 00 00       $  ANS023:780 03 22 E1 06 00 00 00 00
  $  REQ024:700 03 22 B1 12 00 00 00 00       $  ANS024:780 03 22 B1 12 00 00 00 00
  $  REQ025:700 03 22 B1 11 00 00 00 00       $  ANS025:780 03 22 B1 11 00 00 00 00
  $  REQ026:700 03 22 D4 01 00 00 00 00       $  ANS026:780 03 22 D4 01 00 00 00 00
  $  REQ027:700 03 22 E1 02 00 00 00 00       $  ANS027:780 03 22 E1 02 00 00 00 00
  $  REQ028:700 03 22 B1 06 00 00 00 00       $  ANS028:780 03 22 B1 06 00 00 00 00

  $  000.当前程表                                           $    $  km          $    $  ANS000.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  001.电池SOC                                            $    $  %           $    $  ANS001.BYTE004  $  y=x;
  $  002.电池电压                                           $    $  V           $    $  ANS002.BYTE004  $  y=x*0.1;
  $  003.位置灯未关提醒                                     $    $              $    $  ANS003.BYTE004  $  if(((x&0x80)>>7)==0) y=@0264;else if(((x&0x80)>>7)==1) y=@0265;else y=@0035;
  $  004.关点火钥匙未拔                                     $    $              $    $  ANS003.BYTE004  $  if(((x&0x40)>>6)==0) y=@0264;else if(((x&0x40)>>6)==1) y=@0265;else y=@0035;
  $  005.车辆超速报警                                       $    $              $    $  ANS003.BYTE004  $  if(((x&0x20)>>5)==0) y=@0264;else if(((x&0x20)>>5)==1) y=@0265;else y=@0035;
  $  006.手刹未释放提醒                                     $    $              $    $  ANS003.BYTE004  $  if(((x&0x10)>>4)==0) y=@0264;else if(((x&0x10)>>4)==1) y=@0265;else y=@0035;
  $  007.门未关提示音                                       $    $              $    $  ANS003.BYTE004  $  if(((x&0x04)>>2)==0) y=@0264;else if(((x&0x04)>>2)==1) y=@0265;else y=@0035;
  $  008.安全带未系报警                                     $    $              $    $  ANS003.BYTE004  $  if(((x&0x02)>>1)==0) y=@0264;else if(((x&0x02)>>1)==1) y=@0265;else y=@0035;
  $  009.PDC(倒车雷达)报警音后雷达检测到障碍物等级三        $    $              $    $  ANS003.BYTE004  $  if((x&0x01)==0) y=@0264;else if((x&0x01)==1) y=@0265;else y=@0035;
  $  010.电动尾门提示音(开始工作提示音)                     $    $              $    $  ANS003.BYTE005  $  if(((x&0x80)>>7)==0) y=@0264;else if(((x&0x80)>>7)==1) y=@0265;else y=@0035;
  $  011.ETRS故障告警音                                     $    $              $    $  ANS003.BYTE005  $  if(((x&0x40)>>6)==0) y=@0264;else if(((x&0x40)>>6)==1) y=@0265;else y=@0035;
  $  012.自动泊车系统状态故障报警音                         $    $              $    $  ANS003.BYTE005  $  if(((x&0x20)>>5)==0) y=@0264;else if(((x&0x20)>>5)==1) y=@0265;else y=@0035;
  $  013.左右车道偏离预警                                   $    $              $    $  ANS003.BYTE005  $  if(((x&0x10)>>4)==0) y=@0264;else if(((x&0x10)>>4)==1) y=@0265;else y=@0035;
  $  014.ADAS相关提示信息报警音                             $    $              $    $  ANS003.BYTE005  $  if(((x&0x08)>>3)==0) y=@0264;else if(((x&0x08)>>3)==1) y=@0265;else y=@0035;
  $  015.前碰撞预警Level 1/Level 2报警音                    $    $              $    $  ANS003.BYTE005  $  if(((x&0x04)>>2)==0) y=@0264;else if(((x&0x04)>>2)==1) y=@0265;else y=@0035;
  $  016.危险警告报警双闪                                   $    $              $    $  ANS003.BYTE005  $  if(((x&0x02)>>1)==0) y=@0264;else if(((x&0x02)>>1)==1) y=@0265;else y=@0035;
  $  017.弹出报警提示音                                     $    $              $    $  ANS003.BYTE005  $  if((x&0x01)==0) y=@0264;else if((x&0x01)==1) y=@0265;else y=@0035;
  $  018.动力电池热失控报警                                 $    $              $    $  ANS004.BYTE004  $  if(((x&0x04)>>2)==0) y=@0264;else if(((x&0x04)>>2)==1) y=@0265;else y=@0035;
  $  019.疲劳驾驶提示2                                      $    $              $    $  ANS004.BYTE004  $  if(((x&0x02)>>1)==0) y=@0264;else if(((x&0x02)>>1)==1) y=@0265;else y=@0035;
  $  020.疲劳驾驶提示1                                      $    $              $    $  ANS004.BYTE004  $  if((x&0x01)==0) y=@0264;else if((x&0x01)==1) y=@0265;else y=@0035;
  $  021.瞬时油耗范围L/100km                                $    $  L/100km     $    $  ANS005.BYTE005  $  y=(((x1*256+x2)&0x3FF0)>>4)*0.1;
  $  022.当前油耗怠速计算参数                               $    $              $    $  ANS005.BYTE006  $  if(((x&0x08)>>3)==0) y=@1001;else if(((x&0x08)>>3)==1) y=@1002;else y=@0035;
  $  023.续航里程显示方向                                   $    $              $    $  ANS005.BYTE006  $  if(((x&0x04)>>2)==0) y=@1033;else if(((x&0x04)>>2)==1) y=@1004;else y=@0035;
  $  024.平均油耗初始值L/100km                              $    $  L/100km     $    $  ANS005.BYTE007  $  y=x*0.1;
  $  025.平均油耗范围L/100km                                $    $  L/100km     $    $  ANS005.BYTE008  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.1;
  $  026.剩余燃油计算阈值                                   $    $  L           $    $  ANS005.BYTE009  $  y=(x&0x3F);
  $  027.计算当前油耗的最近公里值                           $    $  km          $    $  ANS005.BYTE010  $  y=x;
  $  028.低电量报警点                                       $    $  %           $    $  ANS005.BYTE011  $  y=((x&0xFC)>>2);
  $  029.瞬时电耗显示最大值                                 $    $  V           $    $  ANS005.BYTE012  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.1;
  $  030.瞬时电耗显示最小值                                 $    $  V           $    $  ANS005.BYTE013  $  y=(((x1*256+x2)&0x3FF0)>>4)*0.1;
  $  031.平均电耗范围kWh/100km                              $    $  L/100km     $    $  ANS005.BYTE015  $  y=(((x1*256+x2)&0xFFF0)>>4)*0.1;
  $  032.上一次保养行驶里程                                 $    $  km          $    $  ANS006.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  033.ESP模块                                            $    $              $    $  ANS007.BYTE004  $  if(((x&0x80)>>7)==0) y=@0112;else if(((x&0x80)>>7)==1) y=@050a;else y=@0035;
  $  034.PEPS模块                                           $    $              $    $  ANS007.BYTE004  $  if(((x&0x40)>>6)==0) y=@0112;else if(((x&0x40)>>6)==1) y=@050a;else y=@0035;
  $  035.TPMS模块                                           $    $              $    $  ANS007.BYTE004  $  if(((x&0x04)>>2)==0) y=@0112;else if(((x&0x04)>>2)==1) y=@050a;else y=@0035;
  $  036.EPB模块                                            $    $              $    $  ANS007.BYTE004  $  if(((x&0x02)>>1)==0) y=@0112;else if(((x&0x02)>>1)==1) y=@050a;else y=@0035;
  $  037.档位显示                                           $    $              $    $  ANS007.BYTE004  $  if((x&0x01)==0) y=@1000;else if((x&0x01)==1) y=@101c;else y=@0035;
  $  038.后雾灯                                             $    $              $    $  ANS007.BYTE005  $  if(((x&0x80)>>7)==0) y=@0112;else if(((x&0x80)>>7)==1) y=@050a;else y=@0035;
  $  039.前雾灯                                             $    $              $    $  ANS007.BYTE005  $  if(((x&0x40)>>6)==0) y=@0112;else if(((x&0x40)>>6)==1) y=@050a;else y=@0035;
  $  040.中控                                               $    $              $    $  ANS007.BYTE005  $  if(((x&0x30)>>4)==0) y=@1036;else if(((x&0x30)>>4)==1) y=@1037;else if(((x&0x30)>>4)==2) y=@1038;else if(((x&0x30)>>4)==3) y=@0035;else y=@0035;
  $  041.巡航类型                                           $    $              $    $  ANS007.BYTE005  $  if(((x&0x06)>>1)==0) y=@0fef;else if(((x&0x06)>>1)==1) y=@1039;else if(((x&0x06)>>1)==2) y=@0ff0;else if(((x&0x06)>>1)==3) y=@0035;else y=@0035;
  $  042.驾驶位置                                           $    $              $    $  ANS007.BYTE005  $  if((x&0x01)==0) y=@0510;else if((x&0x01)==1) y=@050f;else y=@0035;
  $  043.时钟                                               $    $              $    $  ANS007.BYTE006  $  if(((x&0x60)>>5)==0) y=@0ff1;else if(((x&0x60)>>5)==1) y=@0ff2;else if(((x&0x60)>>5)==2) y=@0ff3;else if(((x&0x60)>>5)==3) y=@0035;else y=@0035;
  $  044.超速报警                                           $    $              $    $  ANS007.BYTE006  $  if(((x&0x18)>>3)==0) y=@0ff4;else if(((x&0x18)>>3)==1) y=@0ff5;else if(((x&0x18)>>3)==2) y=@0ff6;else if(((x&0x18)>>3)==3) y=@0ff7;else y=@0035;
  $  045.发动机防盗                                         $    $              $    $  ANS007.BYTE006  $  if(((x&0x04)>>2)==0) y=@0112;else if(((x&0x04)>>2)==1) y=@050a;else y=@0035;
  $  046.开机动画                                           $    $              $    $  ANS007.BYTE006  $  if((x&0x03)==0) y=@103a;else if((x&0x03)==1) y=@0ff9;else if((x&0x03)==2) y=@0ffa;else if((x&0x03)==3) y=@0ffb;else y=@0035;
  $  047.个性化诊断配置字-语言设置                          $    $              $    $  ANS007.BYTE007  $  if(((x&0xF8)>>3)==0x00) y=@074a;else if(((x&0xF8)>>3)==0x01) y=@0ffc;else if(((x&0xF8)>>3)==0x02) y=@0ffd;else if(((x&0xF8)>>3)==0x03) y=@08b5;else if(((x&0xF8)>>3)==0x04) y=@08b6;else if(((x&0xF8)>>3)==0x05) y=@08b7;else if(((x&0xF8)>>3)==0x06) y=@09ca;else if(((x&0xF8)>>3)==0x07) y=@08b9;else if(((x&0xF8)>>3)==0x08) y=@08ba;else if(((x&0xF8)>>3)==0x09) y=@08bb;else if(((x&0xF8)>>3)==0x0A) y=@08bc;else if(((x&0xF8)>>3)==0x0B) y=@08bd;else if(((x&0xF8)>>3)==0x0C) y=@08be;else if(((x&0xF8)>>3)==0x0D) y=@08bf;else if(((x&0xF8)>>3)==0x0E) y=@08c0;else if(((x&0xF8)>>3)==0x0F) y=@08c1;else if(((x&0xF8)>>3)==0x10) y=@08c2;else if(((x&0xF8)>>3)==0x11) y=@08c3;else if(((x&0xF8)>>3)==0x12) y=@08c4;else if(((x&0xF8)>>3)==0x13) y=@08c5;else if(((x&0xF8)>>3)==0x14) y=@08c6;else if(((x&0xF8)>>3)==0x15) y=@08c7;else if(((x&0xF8)>>3)==0x16) y=@08c8;else if(((x&0xF8)>>3)==0x17) y=@08c9;else if(((x&0xF8)>>3)==0x18) y=@0672;else y=@0035;
  $  048.语言设置菜单                                       $    $              $    $  ANS007.BYTE007  $  if(((x&0x04)>>2)==0) y=@101c;else if(((x&0x04)>>2)==1) y=@1000;else y=@0035;
  $  049.保养                                               $    $              $    $  ANS007.BYTE007  $  if(((x&0x02)>>1)==0) y=@1034;else if(((x&0x02)>>1)==1) y=@1035;else y=@0035;
  $  050.自动灯光                                           $    $              $    $  ANS007.BYTE007  $  if((x&0x01)==0) y=@0112;else if((x&0x01)==1) y=@050a;else y=@0035;
  $  051.里程单位                                           $    $              $    $  ANS007.BYTE008  $  if(((x&0x80)>>7)==0) y=@1012;else if(((x&0x80)>>7)==1) y=@0ad3;else y=@0035;
  $  052.GPF                                                $    $              $    $  ANS007.BYTE008  $  if(((x&0x40)>>6)==0) y=@0112;else if(((x&0x40)>>6)==1) y=@050a;else y=@0035;
  $  053.自启动后信息显示开关                               $    $              $    $  ANS007.BYTE008  $  if(((x&0x20)>>5)==0) y=@101c;else if(((x&0x20)>>5)==1) y=@1000;else y=@0035;
  $  054.自复位后信息显示开关                               $    $              $    $  ANS007.BYTE008  $  if(((x&0x10)>>4)==0) y=@101c;else if(((x&0x10)>>4)==1) y=@1000;else y=@0035;
  $  055.个性化诊断配置字-超速报警开关                      $    $              $    $  ANS007.BYTE008  $  if(((x&0x08)>>3)==0) y=@0264;else if(((x&0x08)>>3)==1) y=@0028;else y=@0035;
  $  056.个性化诊断配置字-时间制式                          $    $              $    $  ANS007.BYTE008  $  if(((x&0x04)>>2)==0) y=@05ed;else if(((x&0x04)>>2)==1) y=@05ec;else y=@0035;
  $  057.疲劳驾驶                                           $    $              $    $  ANS007.BYTE008  $  if(((x&0x02)>>1)==0) y=@0112;else if(((x&0x02)>>1)==1) y=@050a;else y=@0035;
  $  058.安全气囊                                           $    $              $    $  ANS007.BYTE008  $  if((x&0x01)==0) y=@0112;else if((x&0x01)==1) y=@050a;else y=@0035;
  $  059.超速报警值                                         $    $  km/h        $    $  ANS007.BYTE009  $  y=x;
  $  060.交通标识识别                                       $    $              $    $  ANS007.BYTE010  $  if(((x&0x80)>>7)==0) y=@0112;else if(((x&0x80)>>7)==1) y=@050a;else y=@0035;
  $  061.AEB配置                                            $    $              $    $  ANS007.BYTE010  $  if(((x&0x40)>>6)==0) y=@0112;else if(((x&0x40)>>6)==1) y=@050a;else y=@0035;
  $  062.前碰撞预警                                         $    $              $    $  ANS007.BYTE010  $  if(((x&0x20)>>5)==0) y=@0112;else if(((x&0x20)>>5)==1) y=@050a;else y=@0035;
  $  063.车道保持                                           $    $              $    $  ANS007.BYTE010  $  if(((x&0x10)>>4)==0) y=@0112;else if(((x&0x10)>>4)==1) y=@050a;else y=@0035;
  $  064.车道偏离                                           $    $              $    $  ANS007.BYTE010  $  if(((x&0x08)>>3)==0) y=@0112;else if(((x&0x08)>>3)==1) y=@050a;else y=@0035;
  $  065.变道辅助                                           $    $              $    $  ANS007.BYTE010  $  if(((x&0x04)>>2)==0) y=@0112;else if(((x&0x04)>>2)==1) y=@050a;else y=@0035;
  $  066.雷达类型                                           $    $              $    $  ANS007.BYTE010  $  if((x&0x03)==0) y=@097f;else if((x&0x03)==1) y=@1020;else if((x&0x03)==2) y=@1021;else if((x&0x03)==3) y=@0035;else y=@0035;
  $  067.定速巡航车速显示                                   $    $              $    $  ANS007.BYTE011  $  if(((x&0x80)>>7)==0) y=@1015;else if(((x&0x80)>>7)==1) y=@1016;else y=@0035;
  $  068.电动尾门                                           $    $              $    $  ANS007.BYTE011  $  if(((x&0x40)>>6)==0) y=@1017;else if(((x&0x40)>>6)==1) y=@1018;else y=@0035;
  $  069.座椅布局                                           $    $              $    $  ANS007.BYTE011  $  if(((x&0x38)>>3)==0) y=@1005;else if(((x&0x38)>>3)==1) y=@1006;else if(((x&0x38)>>3)==2) y=@0035;else if(((x&0x38)>>3)==3) y=@0035;else if(((x&0x38)>>3)==4) y=@1007;else if(((x&0x38)>>3)==5) y=@0035;else if(((x&0x38)>>3)==6) y=@0035;else if(((x&0x38)>>3)==7) y=@0035;else y=@0035;
  $  070.安全带报警类型                                     $    $              $    $  ANS007.BYTE011  $  if((x&0x07)==0) y=@1008;else if((x&0x07)==1) y=@1009;else if((x&0x07)==2) y=@1022;else if((x&0x07)==3) y=@100b;else if((x&0x07)==4) y=@100c;else if((x&0x07)==5) y=@100d;else if((x&0x07)==6) y=@0035;else if((x&0x07)==7) y=@0035;else y=@0035;
  $  071.自动泊车                                           $    $              $    $  ANS007.BYTE012  $  if(((x&0x20)>>5)==0) y=@0112;else if(((x&0x20)>>5)==1) y=@050a;else y=@0035;
  $  072.电子排挡杆                                         $    $              $    $  ANS007.BYTE012  $  if(((x&0x10)>>4)==0) y=@101a;else if(((x&0x10)>>4)==1) y=@101b;else y=@0035;
  $  073.室外温度                                           $    $              $    $  ANS007.BYTE012  $  if(((x&0x08)>>3)==0) y=@101c;else if(((x&0x08)>>3)==1) y=@1000;else y=@0035;
  $  074.蓝牙电话显示                                       $    $              $    $  ANS007.BYTE012  $  if(((x&0x04)>>2)==0) y=@101c;else if(((x&0x04)>>2)==1) y=@1000;else y=@0035;
  $  075.多媒体显示                                         $    $              $    $  ANS007.BYTE012  $  if(((x&0x02)>>1)==0) y=@101c;else if(((x&0x02)>>1)==1) y=@1000;else y=@0035;
  $  076.导航地图显示                                       $    $              $    $  ANS007.BYTE012  $  if((x&0x01)==0) y=@101c;else if((x&0x01)==1) y=@1000;else y=@0035;
  $  077.间隔保养里程                                       $    $  km          $    $  ANS008.BYTE004  $  y=(x1*256+x2);
  $  078.冷却液温度                                         $    $              $    $  ANS009.BYTE004  $  y=x-40;
  $  079.发动机转速                                         $    $  rpm         $    $  ANS010.BYTE004  $  y=(x1*256+x2);
  $  080.来自EMS的发动机转速                                $    $  rpm         $    $  ANS011.BYTE004  $  y=(x1*256+x2)*0.25;
  $  081.车辆当前燃油消耗量                                 $    $  mL          $    $  ANS012.BYTE004  $  y=(x1*256+x2);
  $  082.燃油箱                                             $    $  L           $    $  ANS013.BYTE004  $  y=(x1*256+x2)*0.01;
  $  083.高压蓄电池                                         $    $  %           $    $  ANS014.BYTE004  $  y=(x1*256+x2)*0.00152593;
  $  084.远光灯指示灯                                       $    $              $    $  ANS015.BYTE004  $  if(((x&0x40)>>6)==0) y=@0264;else if(((x&0x40)>>6)==1) y=@0265;else y=@0035;
  $  085.后雾灯指示灯                                       $    $              $    $  ANS015.BYTE004  $  if(((x&0x20)>>5)==0) y=@0264;else if(((x&0x20)>>5)==1) y=@0265;else y=@0035;
  $  086.前雾灯指示灯                                       $    $              $    $  ANS015.BYTE004  $  if(((x&0x10)>>4)==0) y=@0264;else if(((x&0x10)>>4)==1) y=@0265;else y=@0035;
  $  087.ABS故障指示灯                                      $    $              $    $  ANS015.BYTE004  $  if(((x&0x08)>>3)==0) y=@0264;else if(((x&0x08)>>3)==1) y=@0265;else y=@0035;
  $  088.位置灯状态                                         $    $              $    $  ANS015.BYTE004  $  if(((x&0x04)>>2)==0) y=@0264;else if(((x&0x04)>>2)==1) y=@0265;else y=@0035;
  $  089.右转向灯状态                                       $    $              $    $  ANS015.BYTE004  $  if(((x&0x02)>>1)==0) y=@0264;else if(((x&0x02)>>1)==1) y=@0265;else y=@0035;
  $  090.左转向灯状态                                       $    $              $    $  ANS015.BYTE004  $  if((x&0x01)==0) y=@0264;else if((x&0x01)==1) y=@0265;else y=@0035;
  $  091.电量低报警指示灯                                   $    $              $    $  ANS015.BYTE005  $  if(((x&0x80)>>7)==0) y=@0264;else if(((x&0x80)>>7)==1) y=@0265;else y=@0035;
  $  092.机油压力低指示灯                                   $    $              $    $  ANS015.BYTE005  $  if(((x&0x40)>>6)==0) y=@0264;else if(((x&0x40)>>6)==1) y=@0265;else y=@0035;
  $  093.低燃油指示灯状态                                   $    $              $    $  ANS015.BYTE005  $  if(((x&0x30)>>4)==0) y=@0264;else if(((x&0x30)>>4)==1) y=@0265;else if(((x&0x30)>>4)==2) y=@0fe4;else if(((x&0x30)>>4)==3) y=@0035;else y=@0103;
  $  094.水温过高警告灯                                     $    $              $    $  ANS015.BYTE005  $  if(((x&0x08)>>3)==0) y=@0264;else if(((x&0x08)>>3)==1) y=@0265;else y=@0035;
  $  095.排放故障指示灯                                     $    $              $    $  ANS015.BYTE005  $  if(((x&0x04)>>2)==0) y=@0264;else if(((x&0x04)>>2)==1) y=@0265;else y=@0035;
  $  096.EBD(电子制动力分配) 指示灯                         $    $              $    $  ANS015.BYTE005  $  if(((x&0x02)>>1)==0) y=@0264;else if(((x&0x02)>>1)==1) y=@0265;else y=@0035;
  $  097.ESP(电子稳定系统) 关闭指示灯状态                   $    $              $    $  ANS015.BYTE005  $  if((x&0x01)==0) y=@0264;else if((x&0x01)==1) y=@0265;else y=@0035;
  $  098.TPMS 指示灯状态                                    $    $              $    $  ANS016.BYTE004  $  if(((x&0xC0)>>6)==0) y=@0264;else if(((x&0xC0)>>6)==1) y=@0fe4;else if(((x&0xC0)>>6)==2) y=@0265;else if(((x&0xC0)>>6)==3) y=@0035;else y=@0103;
  $  099.巡航指示灯状态                                     $    $              $    $  ANS016.BYTE004  $  if(((x&0x30)>>4)==0) y=@101d;else if(((x&0x30)>>4)==1) y=@101e;else if(((x&0x30)>>4)==2) y=@101f;else if(((x&0x30)>>4)==3) y=@0035;else y=@0103;
  $  100.电机温度过高指示灯                                 $    $              $    $  ANS016.BYTE004  $  if(((x&0x08)>>3)==0) y=@0264;else if(((x&0x08)>>3)==1) y=@102c;else y=@0035;
  $  101.动力蓄电池故障指示灯                               $    $              $    $  ANS016.BYTE004  $  if(((x&0x04)>>2)==0) y=@0264;else if(((x&0x04)>>2)==1) y=@0265;else y=@0035;
  $  102.制动系统故障、真空泵故障指示或驻车制动灯状态       $    $              $    $  ANS016.BYTE004  $  if(((x&0x02)>>1)==0) y=@0264;else if(((x&0x02)>>1)==1) y=@0265;else y=@0035;
  $  103.充放电指示灯状态                                   $    $              $    $  ANS016.BYTE004  $  if((x&0x01)==0) y=@0264;else if((x&0x01)==1) y=@0265;else y=@0035;
  $  104.EPB(电子手刹) 工作指示灯                           $    $              $    $  ANS016.BYTE005  $  if(((x&0xC0)>>6)==0) y=@0264;else if(((x&0xC0)>>6)==1) y=@0265;else if(((x&0xC0)>>6)==2) y=@0fe4;else if(((x&0xC0)>>6)==3) y=@0035;else y=@0103;
  $  105.驾驶员安全带报警灯                                 $    $              $    $  ANS016.BYTE005  $  if(((x&0x30)>>4)==0) y=@0264;else if(((x&0x30)>>4)==1) y=@0265;else if(((x&0x30)>>4)==2) y=@0fe4;else y=@0103;
  $  106.EPS(电动助力转向) 指示灯                           $    $              $    $  ANS016.BYTE005  $  if(((x&0x0C)>>2)==0) y=@0264;else if(((x&0x0C)>>2)==1) y=@0fe5;else if(((x&0x0C)>>2)==2) y=@0fdd;else if(((x&0x0C)>>2)==3) y=@0035;else y=@0103;
  $  107.发动机防盗指示灯                                   $    $              $    $  ANS016.BYTE005  $  if((x&0x03)==0) y=@0264;else if((x&0x03)==1) y=@102d;else if((x&0x03)==2) y=@102e;else if((x&0x03)==3) y=@0265;else y=@0103;
  $  108.ESP(电子稳定系统) 指示灯                           $    $              $    $  ANS017.BYTE004  $  if(((x&0xC0)>>6)==0) y=@0264;else if(((x&0xC0)>>6)==1) y=@0265;else if(((x&0xC0)>>6)==2) y=@0fe4;else if(((x&0xC0)>>6)==3) y=@0035;else y=@0103;
  $  109.GPF(汽油车颗粒捕集器) 指示灯                       $    $              $    $  ANS017.BYTE004  $  if(((x&0x30)>>4)==0) y=@0264;else if(((x&0x30)>>4)==1) y=@0fe5;else if(((x&0x30)>>4)==2) y=@0fe8;else if(((x&0x30)>>4)==3) y=@0fdd;else y=@0103;
  $  110.电子手刹指示灯                                     $    $              $    $  ANS017.BYTE004  $  if(((x&0x0C)>>2)==0) y=@0264;else if(((x&0x0C)>>2)==1) y=@0fe5;else if(((x&0x0C)>>2)==2) y=@0fe9;else if(((x&0x0C)>>2)==3) y=@0fea;else y=@0103;
  $  111.EPB(电子手刹) 故障指示灯                           $    $              $    $  ANS017.BYTE004  $  if((x&0x03)==0) y=@0264;else if((x&0x03)==1) y=@0265;else if((x&0x03)==2) y=@0fe4;else if((x&0x03)==3) y=@0035;else y=@0103;
  $  112.发动机非排放故障指示灯                             $    $              $    $  ANS017.BYTE005  $  if(((x&0x80)>>7)==0) y=@0264;else if(((x&0x80)>>7)==1) y=@0265;else y=@0035;
  $  113.自适应巡航指示灯                                   $    $              $    $  ANS017.BYTE005  $  if(((x&0x60)>>5)==0) y=@0264;else if(((x&0x60)>>5)==1) y=@102f;else if(((x&0x60)>>5)==2) y=@1030;else if(((x&0x60)>>5)==3) y=@0035;else y=@0103;
  $  114.前方有车指示灯                                     $    $              $    $  ANS017.BYTE005  $  if(((x&0x18)>>3)==0) y=@0264;else if(((x&0x18)>>3)==1) y=@1030;else if(((x&0x18)>>3)==2) y=@1031;else if(((x&0x18)>>3)==3) y=@0035;else y=@0103;
  $  115.车道偏离指示灯                                     $    $              $    $  ANS017.BYTE005  $  if((x&0x07)==0) y=@0264;else if((x&0x07)==1) y=@1031;else if((x&0x07)==2) y=@102f;else if((x&0x07)==3) y=@1030;else if((x&0x07)==4) y=@1032;else y=@0103;
  $  116.充电线连接指示灯                                   $    $              $    $  ANS018.BYTE004  $  if(((x&0x80)>>7)==0) y=@0264;else if(((x&0x80)>>7)==1) y=@0265;else y=@0035;
  $  117.限功率指示灯                                       $    $              $    $  ANS018.BYTE004  $  if(((x&0x40)>>6)==0) y=@0264;else if(((x&0x40)>>6)==1) y=@0265;else y=@0035;
  $  118.绝缘故障指示灯                                     $    $              $    $  ANS018.BYTE004  $  if(((x&0x20)>>5)==0) y=@0264;else if(((x&0x20)>>5)==1) y=@0265;else y=@0035;
  $  119.运行就绪指示灯                                     $    $              $    $  ANS018.BYTE004  $  if(((x&0x10)>>4)==0) y=@0264;else if(((x&0x10)>>4)==1) y=@0265;else y=@0035;
  $  120.安全气囊指示灯                                     $    $              $    $  ANS018.BYTE004  $  if(((x&0x0C)>>2)==0) y=@0264;else if(((x&0x0C)>>2)==1) y=@0fdd;else if(((x&0x0C)>>2)==2) y=@1023;else if(((x&0x0C)>>2)==3) y=@0035;else y=@0103;
  $  121.ACC跟车距离指示灯                                  $    $              $    $  ANS018.BYTE004  $  if((x&0x03)==0) y=@0264;else if((x&0x03)==1) y=@0fdf;else if((x&0x03)==2) y=@0fe0;else if((x&0x03)==3) y=@0fe1;else y=@0103;
  $  122.充电状态指示灯                                     $    $              $    $  ANS018.BYTE005  $  if((x&0x03)==0) y=@0264;else if((x&0x03)==1) y=@0fdd;else if((x&0x03)==2) y=@1023;else if((x&0x03)==3) y=@0035;else y=@0103;
  $  123.左前压力                                           $    $  kPa         $    $  ANS019.BYTE004  $  y=(x1*256+x2)*2.75;
  $  124.左后压力                                           $    $  kPa         $    $  ANS020.BYTE004  $  y=(x1*256+x2)*2.75;
  $  125.超速来自CAN信号                                    $    $  km/h        $    $  ANS021.BYTE004  $  y=x;
  $  126.PEU功率百分比                                      $    $  %           $    $  ANS022.BYTE004  $  y=x-100;
  $  127.功率百分比                                         $    $  %           $    $  ANS023.BYTE005  $  y=x-40;
  $  128.右后压力                                           $    $  kPa         $    $  ANS024.BYTE004  $  y=(x1*256+x2)*2.75;
  $  129.右前压力                                           $    $  kPa         $    $  ANS025.BYTE004  $  y=(x1*256+x2)*2.75;
  $  130.档位                                               $    $              $    $  ANS026.BYTE004  $  if(((x&0x1E)>>1)==0x00) y=@1024;else if(((x&0x1E)>>1)==0x01) y=@1025;else if(((x&0x1E)>>1)==0x02) y=@1026;else if(((x&0x1E)>>1)==0x03) y=@1027;else if(((x&0x1E)>>1)==0x04) y=@1028;else if(((x&0x1E)>>1)==0x05) y=@1029;else if(((x&0x1E)>>1)==0x06) y=@102a;else if(((x&0x1E)>>1)==0x07) y=@102b;else if(((x&0x1E)>>1)==0x0F) y=@0fff;else y=@0198;
  $  131.变速箱类型                                         $    $              $    $  ANS026.BYTE004  $  if((x&0x01)==0) y=@1000;else if((x&0x01)==1) y=@101c;else y=@0035;
  $  132.车速                                               $    $  km/h        $    $  ANS027.BYTE004  $  y=x;
  $  133.来自EMS的车辆速度                                  $    $  km/h        $    $  ANS028.BYTE004  $  y=(x1*256+x2)*0.015625;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:700 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
