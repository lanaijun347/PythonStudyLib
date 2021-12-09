
    车型ID：10fe

    模拟：协议模拟-->10fe

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

  $*$*DTC/fb000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:700 04 14 FF FF FF 00 00 00       $$  ANS000:780 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:700 03 22 F1 A1 00 00 00 00       $%  ANS000:780 03 22 F1 A1 00 00 00 00
  $%  REQ001:700 03 22 F1 83 00 00 00 00       $%  ANS001:780 03 22 F1 83 00 00 00 00
  $%  REQ002:700 03 22 F1 91 00 00 00 00       $%  ANS002:780 03 22 F1 91 00 00 00 00
  $%  REQ003:700 03 22 F1 8B 00 00 00 00       $%  ANS003:780 03 22 F1 8B 00 00 00 00
  $%  REQ004:700 03 22 F1 A2 00 00 00 00       $%  ANS004:780 03 22 F1 A2 00 00 00 00
  $%  REQ005:700 03 22 F1 87 00 00 00 00       $%  ANS005:780 03 22 F1 87 00 00 00 00
  $%  REQ006:700 03 22 F1 10 00 00 00 00       $%  ANS006:780 03 22 F1 10 00 00 00 00
  $%  REQ007:700 03 22 F1 A0 00 00 00 00       $%  ANS007:780 03 22 F1 A0 00 00 00 00
  $%  REQ008:700 03 22 F1 92 00 00 00 00       $%  ANS008:780 03 22 F1 92 00 00 00 00
  $%  REQ009:700 03 22 F1 8C 00 00 00 00       $%  ANS009:780 03 22 F1 8C 00 00 00 00
  $%  REQ010:700 03 22 F1 94 00 00 00 00       $%  ANS010:780 03 22 F1 94 00 00 00 00
  $%  REQ011:700 03 22 F1 8A 00 00 00 00       $%  ANS011:780 03 22 F1 8A 00 00 00 00
  $%  REQ012:700 03 22 F1 90 00 00 00 00       $%  ANS012:780 03 22 F1 90 00 00 00 00
  $%  REQ013:700 03 22 F1 A8 00 00 00 00       $%  ANS013:780 03 22 F1 A8 00 00 00 00

  $%  000:电控单元标定软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  002:电控单元硬件号:                  $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元制造日期:                $%    $%  ANS003.BYTE004  $%  HEX(X1,X2,X3);
  $%  004:电控单元网络文件参考号:          $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  005:电控单元零件号:                  $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号(上次):            $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  007:测试工具参考号(上次):            $%    $%  ANS006.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  008:里程读数(上次):                  $%    $%  ANS006.BYTE015  $%  HEX(X1,X2,X3);
  $%  009:电控单元应用软件号:              $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  010:供应商电控单元硬件参考号:        $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:产品序列号:                      $%    $%  ANS009.BYTE004  $%  y=UINT40(x1,x2,x3,x4,x5);
  $%  012:生产线号码:                      $%    $%  ANS009.BYTE009  $%  ASCII(X1,X2);
  $%  013:年/月/日:                        $%    $%  ANS009.BYTE011  $%  HEX(X1,X2,X3);
  $%  014:电控单元内部软件编号:            $%    $%  ANS010.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  015:系统供应商标识号:                $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  016:车辆识别代码:                    $%    $%  ANS012.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  017:车辆特征信息:                    $%    $%  ANS013.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:700 03 22 B1 01 00 00 00 00       $  ANS000:780 03 22 B1 01 00 00 00 00
  $  REQ001:700 03 22 B1 02 00 00 00 00       $  ANS001:780 03 22 B1 02 00 00 00 00
  $  REQ002:700 03 22 D4 03 00 00 00 00       $  ANS002:780 03 22 D4 03 00 00 00 00
  $  REQ003:700 03 22 C1 12 00 00 00 00       $  ANS003:780 03 22 C1 12 00 00 00 00
  $  REQ004:700 03 22 E1 03 00 00 00 00       $  ANS004:780 03 22 E1 03 00 00 00 00
  $  REQ005:700 03 22 B1 04 00 00 00 00       $  ANS005:780 03 22 B1 04 00 00 00 00
  $  REQ006:700 03 22 E1 01 00 00 00 00       $  ANS006:780 03 22 E1 01 00 00 00 00
  $  REQ007:700 03 22 B1 07 00 00 00 00       $  ANS007:780 03 22 B1 07 00 00 00 00
  $  REQ008:700 03 22 E1 04 00 00 00 00       $  ANS008:780 03 22 E1 04 00 00 00 00
  $  REQ009:700 03 22 C1 11 00 00 00 00       $  ANS009:780 03 22 C1 11 00 00 00 00
  $  REQ010:700 03 22 D1 1B 00 00 00 00       $  ANS010:780 03 22 D1 1B 00 00 00 00
  $  REQ011:700 03 22 D1 1C 00 00 00 00       $  ANS011:780 03 22 D1 1C 00 00 00 00
  $  REQ012:700 03 22 D1 1D 00 00 00 00       $  ANS012:780 03 22 D1 1D 00 00 00 00
  $  REQ013:700 03 22 B1 10 00 00 00 00       $  ANS013:780 03 22 B1 10 00 00 00 00
  $  REQ014:700 03 22 B1 13 00 00 00 00       $  ANS014:780 03 22 B1 13 00 00 00 00
  $  REQ015:700 03 22 C1 13 00 00 00 00       $  ANS015:780 03 22 C1 13 00 00 00 00
  $  REQ016:700 03 22 B1 08 00 00 00 00       $  ANS016:780 03 22 B1 08 00 00 00 00
  $  REQ017:700 03 22 B1 12 00 00 00 00       $  ANS017:780 03 22 B1 12 00 00 00 00
  $  REQ018:700 03 22 B1 11 00 00 00 00       $  ANS018:780 03 22 B1 11 00 00 00 00
  $  REQ019:700 03 22 C1 14 00 00 00 00       $  ANS019:780 03 22 C1 14 00 00 00 00
  $  REQ020:700 03 22 D4 01 00 00 00 00       $  ANS020:780 03 22 D4 01 00 00 00 00
  $  REQ021:700 03 22 B1 09 00 00 00 00       $  ANS021:780 03 22 B1 09 00 00 00 00
  $  REQ022:700 03 22 E1 02 00 00 00 00       $  ANS022:780 03 22 E1 02 00 00 00 00
  $  REQ023:700 03 22 B1 06 00 00 00 00       $  ANS023:780 03 22 B1 06 00 00 00 00

  $  000.当前程表                         $    $  km          $    $  ANS000.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  001.电池电压                         $    $  V           $    $  ANS001.BYTE004  $  y=x*0.1;
  $  002.蜂鸣器请求                       $    $              $    $  ANS002.BYTE004  $  if(x==0) y=@02ac;else if(x==1) y=@1066;else if(x==10) y=@1067;else if(x==11) y=@1068;else if(x==12) y=@1069;else if(x==13) y=@106a;else if(x==14) y=@106b;else if(x==15) y=@106c;else if(x==16) y=@106d;else if(x==17) y=@106e;else if(x==18) y=@106f;else if(x==19) y=@1070;else if(x==2) y=@1071;else if(x==20) y=@1072;else if(x==3) y=@1073;else if(x==4) y=@1074;else if(x==5) y=@1075;else if(x==6) y=@1076;else if(x==7) y=@0ff5;else if(x==8) y=@1077;else if(x==9) y=@1078;else y=@0004;
  $  003.背光亮度等级                     $    $  %           $    $  ANS003.BYTE005  $  y=x;
  $  004.平均油耗范围                     $    $  L/100km     $    $  ANS003.BYTE006  $  y=((x1*256+x2)&0x3FF)*0.1;
  $  005.平均油耗初始值                   $    $  L/100km     $    $  ANS003.BYTE008  $  y=x*0.1;
  $  006.瞬时油耗范围2                    $    $  L/100km     $    $  ANS003.BYTE009  $  y=(((x1*256+x2)&0xFFC)>>2)*0.1;
  $  007.瞬时油耗范围1                    $    $  L/100km     $    $  ANS003.BYTE010  $  y=((x1*256+x2)&0x3FF)*0.1;
  $  008.水温过高警告灯                   $    $              $    $  ANS004.BYTE004  $  y=x-40;
  $  009.发动机冷却液温度来自发动机       $    $              $    $  ANS005.BYTE004  $  y=x-40;
  $  010.发动机转速                       $    $  rpm         $    $  ANS006.BYTE004  $  y=(x1*256+x2);
  $  011.发动机转速来自发动机             $    $  rpm         $    $  ANS007.BYTE004  $  y=(x1*256+x2)*0.25;
  $  012.燃油箱                           $    $  L           $    $  ANS008.BYTE004  $  y=(x1*256+x2)*0.01;
  $  013.ESP模块                          $    $              $    $  ANS009.BYTE004  $  if(((x&0x80)>>7)==0) y=@0112;else if(((x&0x80)>>7)==1) y=@0445;else y=@0035;
  $  014.PEPS模块                         $    $              $    $  ANS009.BYTE004  $  if(((x&0x40)>>6)==0) y=@0112;else if(((x&0x40)>>6)==1) y=@0445;else y=@0035;
  $  015.雨量传感器模块                   $    $              $    $  ANS009.BYTE004  $  if(((x&0x20)>>5)==0) y=@0112;else if(((x&0x20)>>5)==1) y=@0445;else y=@0035;
  $  016.左右舵                           $    $              $    $  ANS009.BYTE004  $  if(((x&0x10)>>4)==0) y=@0ce9;else if(((x&0x10)>>4)==1) y=@050f;else y=@0035;
  $  017.启停模块                         $    $              $    $  ANS009.BYTE004  $  if(((x&0x08)>>3)==0) y=@0112;else if(((x&0x08)>>3)==1) y=@0445;else y=@0035;
  $  018.TPMS模块                         $    $              $    $  ANS009.BYTE004  $  if(((x&0x04)>>2)==0) y=@0112;else if(((x&0x04)>>2)==1) y=@0445;else y=@0035;
  $  019.EPB模块                          $    $              $    $  ANS009.BYTE004  $  if(((x&0x02)>>1)==0) y=@0112;else if(((x&0x02)>>1)==1) y=@0445;else y=@0035;
  $  020.驾驶模式                         $    $              $    $  ANS009.BYTE004  $  if((x&0x01)==0) y=@0112;else if((x&0x01)==1) y=@0445;else y=@0035;
  $  021.车道偏离预警模块                 $    $              $    $  ANS009.BYTE005  $  if(((x&0x80)>>7)==0) y=@0112;else if(((x&0x80)>>7)==1) y=@0445;else y=@0035;
  $  022.雾灯模块                         $    $              $    $  ANS009.BYTE005  $  if(((x&0x40)>>6)==0) y=@0112;else if(((x&0x40)>>6)==1) y=@0445;else y=@0035;
  $  023.多媒体模块                       $    $              $    $  ANS009.BYTE005  $  if(((x&0x30)>>4)==0) y=@0feb;else if(((x&0x30)>>4)==1) y=@1060;else if(((x&0x30)>>4)==2) y=@0fed;else if(((x&0x30)>>4)==3) y=@0035;else y=@0035;
  $  024.电压显示模块                     $    $              $    $  ANS009.BYTE005  $  if(((x&0x08)>>3)==0) y=@0112;else if(((x&0x08)>>3)==1) y=@0445;else y=@0035;
  $  025.巡航模块                         $    $              $    $  ANS009.BYTE005  $  if(((x&0x06)>>1)==0) y=@0fef;else if(((x&0x06)>>1)==1) y=@1039;else if(((x&0x06)>>1)==2) y=@0ff0;else if(((x&0x06)>>1)==3) y=@0035;else y=@0035;
  $  026.背光灯模块                       $    $              $    $  ANS009.BYTE005  $  if((x&0x01)==0) y=@1061;else if((x&0x01)==1) y=@1062;else y=@0035;
  $  027.排放类型                         $    $              $    $  ANS009.BYTE006  $  if(((x&0x80)>>7)==0) y=@1063;else if(((x&0x80)>>7)==1) y=@1064;else y=@0035;
  $  028.时钟模块                         $    $              $    $  ANS009.BYTE006  $  if(((x&0x60)>>5)==0) y=@0ff1;else if(((x&0x60)>>5)==1) y=@0ff2;else if(((x&0x60)>>5)==2) y=@0ff3;else if(((x&0x60)>>5)==3) y=@0035;else y=@0035;
  $  029.超速报警                         $    $              $    $  ANS009.BYTE006  $  if(((x&0x18)>>3)==0) y=@0ff4;else if(((x&0x18)>>3)==1) y=@0ff5;else if(((x&0x18)>>3)==2) y=@0ff6;else if(((x&0x18)>>3)==3) y=@0ff7;else y=@0035;
  $  030.发动机防盗                       $    $              $    $  ANS009.BYTE006  $  if(((x&0x04)>>2)==0) y=@0112;else if(((x&0x04)>>2)==1) y=@0445;else y=@0035;
  $  031.前碰撞预警模块                   $    $              $    $  ANS009.BYTE006  $  if(((x&0x02)>>1)==0) y=@0112;else if(((x&0x02)>>1)==1) y=@0445;else y=@0035;
  $  032.车道保持模块                     $    $              $    $  ANS009.BYTE006  $  if((x&0x01)==0) y=@0112;else if((x&0x01)==1) y=@0445;else y=@0035;
  $  033.语言                             $    $              $    $  ANS009.BYTE007  $  if(((x&0xF8)>>3)==0x00) y=@074a;else if(((x&0xF8)>>3)==0x01) y=@074b;else if(((x&0xF8)>>3)==0x02) y=@1065;else if(((x&0xF8)>>3)==0x03) y=@08b5;else if(((x&0xF8)>>3)==0x04) y=@08b6;else if(((x&0xF8)>>3)==0x05) y=@08b7;else if(((x&0xF8)>>3)==0x06) y=@08b8;else if(((x&0xF8)>>3)==0x07) y=@08b9;else if(((x&0xF8)>>3)==0x08) y=@08ba;else if(((x&0xF8)>>3)==0x09) y=@08bb;else if(((x&0xF8)>>3)==0x0A) y=@08bc;else if(((x&0xF8)>>3)==0x0B) y=@08bd;else if(((x&0xF8)>>3)==0x0C) y=@08be;else if(((x&0xF8)>>3)==0x0D) y=@08bf;else if(((x&0xF8)>>3)==0x0E) y=@08c0;else if(((x&0xF8)>>3)==0x0F) y=@08c1;else if(((x&0xF8)>>3)==0x10) y=@08c8;else if(((x&0xF8)>>3)==0x11) y=@08c9;else if(((x&0xF8)>>3)==0x12) y=@0672;else y=@0035;
  $  034.语言菜单                         $    $              $    $  ANS009.BYTE007  $  if(((x&0x04)>>2)==0) y=@0fff;else if(((x&0x04)>>2)==1) y=@1000;else y=@0035;
  $  035.保养配置                         $    $              $    $  ANS009.BYTE007  $  if(((x&0x02)>>1)==0) y=@1011;else if(((x&0x02)>>1)==1) y=@1010;else y=@0035;
  $  036.自动车灯模块                     $    $              $    $  ANS009.BYTE007  $  if((x&0x01)==0) y=@0112;else if((x&0x01)==1) y=@0445;else y=@0035;
  $  037.里程单位                         $    $              $    $  ANS009.BYTE008  $  if(((x&0x80)>>7)==0) y=@1012;else if(((x&0x80)>>7)==1) y=@0ad3;else y=@0035;
  $  038.CFG_GPF                          $    $              $    $  ANS009.BYTE008  $  if(((x&0x40)>>6)==0) y=@0112;else if(((x&0x40)>>6)==1) y=@0445;else y=@0035;
  $  039.启动后信息显示                   $    $              $    $  ANS009.BYTE008  $  if(((x&0x20)>>5)==0) y=@0fff;else if(((x&0x20)>>5)==1) y=@1000;else y=@0035;
  $  040.重启后信息显示                   $    $              $    $  ANS009.BYTE008  $  if(((x&0x10)>>4)==0) y=@0fff;else if(((x&0x10)>>4)==1) y=@1000;else y=@0035;
  $  041.超速报警开关                     $    $              $    $  ANS009.BYTE008  $  if(((x&0x08)>>3)==0) y=@0264;else if(((x&0x08)>>3)==1) y=@0028;else y=@0035;
  $  042.时钟格式                         $    $              $    $  ANS009.BYTE008  $  if(((x&0x04)>>2)==0) y=@05ed;else if(((x&0x04)>>2)==1) y=@05ec;else y=@0035;
  $  043.交通标志指示                     $    $              $    $  ANS009.BYTE008  $  if(((x&0x02)>>1)==0) y=@0112;else if(((x&0x02)>>1)==1) y=@0445;else y=@0035;
  $  044.自动紧急制动                     $    $              $    $  ANS009.BYTE008  $  if((x&0x01)==0) y=@0112;else if((x&0x01)==1) y=@0445;else y=@0035;
  $  045.超速设定                         $    $  km/h        $    $  ANS009.BYTE009  $  y=x;
  $  046.GSM模块                          $    $              $    $  ANS009.BYTE010  $  if(((x&0x80)>>7)==0) y=@0112;else if(((x&0x80)>>7)==1) y=@0445;else y=@0035;
  $  047.APA模块                          $    $              $    $  ANS009.BYTE010  $  if(((x&0x40)>>6)==0) y=@0112;else if(((x&0x40)>>6)==1) y=@0445;else y=@0035;
  $  048.EPS模块                          $    $              $    $  ANS009.BYTE010  $  if(((x&0x20)>>5)==0) y=@0112;else if(((x&0x20)>>5)==1) y=@0445;else y=@0035;
  $  049.发动机类型                       $    $              $    $  ANS009.BYTE010  $  if(((x&0x18)>>3)==0) y=@1090;else if(((x&0x18)>>3)==1) y=@1091;else y=@0035;
  $  050.变速箱类型                       $    $              $    $  ANS009.BYTE010  $  if(((x&0x06)>>1)==0) y=@0d2e;else if(((x&0x06)>>1)==1) y=@0882;else if(((x&0x06)>>1)==2) y=@01dd;else if(((x&0x06)>>1)==3) y=@1092;else y=@0035;
  $  051.里程备份                         $    $              $    $  ANS009.BYTE010  $  if((x&0x01)==0) y=@0112;else if((x&0x01)==1) y=@0445;else y=@0035;
  $  052.导航地图显示                     $    $              $    $  ANS009.BYTE011  $  if(((x&0x80)>>7)==0) y=@0112;else if(((x&0x80)>>7)==1) y=@0445;else y=@0035;
  $  053.开机动画                         $    $              $    $  ANS009.BYTE011  $  if(((x&0x60)>>5)==0) y=@0ff8;else if(((x&0x60)>>5)==1) y=@1093;else if(((x&0x60)>>5)==2) y=@0ffa;else if(((x&0x60)>>5)==3) y=@0ffb;else y=@0035;
  $  054.PDC模块                          $    $              $    $  ANS009.BYTE011  $  if(((x&0x10)>>4)==0) y=@0112;else if(((x&0x10)>>4)==1) y=@0445;else y=@0035;
  $  055.SCR模块                          $    $              $    $  ANS009.BYTE011  $  if(((x&0x08)>>3)==0) y=@0112;else if(((x&0x08)>>3)==1) y=@0445;else y=@0035;
  $  056.DPF模块                          $    $              $    $  ANS009.BYTE011  $  if(((x&0x04)>>2)==0) y=@0112;else if(((x&0x04)>>2)==1) y=@0445;else y=@0035;
  $  057.DCDC模块                         $    $              $    $  ANS009.BYTE011  $  if(((x&0x02)>>1)==0) y=@0112;else if(((x&0x02)>>1)==1) y=@0445;else y=@0035;
  $  058.LCA模块                          $    $              $    $  ANS009.BYTE011  $  if((x&0x01)==0) y=@0112;else if((x&0x01)==1) y=@0445;else y=@0035;
  $  059.外部气温模块                     $    $              $    $  ANS009.BYTE012  $  if(((x&0x04)>>2)==0) y=@0fff;else if(((x&0x04)>>2)==1) y=@1000;else y=@0035;
  $  060.蓝牙电话显示                     $    $              $    $  ANS009.BYTE012  $  if(((x&0x02)>>1)==0) y=@0fff;else if(((x&0x02)>>1)==1) y=@1000;else y=@0035;
  $  061.多媒体显示                       $    $              $    $  ANS009.BYTE012  $  if((x&0x01)==0) y=@0fff;else if((x&0x01)==1) y=@1000;else y=@0035;
  $  062.胎压灯状态                       $    $              $    $  ANS010.BYTE004  $  if(((x&0x80)>>7)==0) y=@000f;else if(((x&0x80)>>7)==1) y=@016d;else y=@0035;
  $  063.发动机防盗指示灯                 $    $              $    $  ANS010.BYTE004  $  if(((x&0x40)>>6)==0) y=@000f;else if(((x&0x40)>>6)==1) y=@016d;else y=@0035;
  $  064.位置灯状态                       $    $              $    $  ANS010.BYTE004  $  if(((x&0x20)>>5)==0) y=@000f;else if(((x&0x20)>>5)==1) y=@016d;else y=@0035;
  $  065.后雾灯状态                       $    $              $    $  ANS010.BYTE004  $  if(((x&0x10)>>4)==0) y=@000f;else if(((x&0x10)>>4)==1) y=@016d;else y=@0035;
  $  066.前雾灯状态                       $    $              $    $  ANS010.BYTE004  $  if(((x&0x08)>>3)==0) y=@000f;else if(((x&0x08)>>3)==1) y=@016d;else y=@0035;
  $  067.主梁状态                         $    $              $    $  ANS010.BYTE004  $  if(((x&0x04)>>2)==0) y=@000f;else if(((x&0x04)>>2)==1) y=@016d;else y=@0035;
  $  068.右转灯状态                       $    $              $    $  ANS010.BYTE004  $  if(((x&0x02)>>1)==0) y=@000f;else if(((x&0x02)>>1)==1) y=@016d;else y=@0035;
  $  069.左转灯状态                       $    $              $    $  ANS010.BYTE004  $  if((x&0x01)==0) y=@000f;else if((x&0x01)==1) y=@016d;else y=@0035;
  $  070.ESP指示灯                        $    $              $    $  ANS010.BYTE005  $  if(((x&0x80)>>7)==0) y=@000f;else if(((x&0x80)>>7)==1) y=@016d;else y=@0035;
  $  071.EBD指示灯                        $    $              $    $  ANS010.BYTE005  $  if(((x&0x40)>>6)==0) y=@000f;else if(((x&0x40)>>6)==1) y=@016d;else y=@0035;
  $  072.ABS故障指示灯                    $    $              $    $  ANS010.BYTE005  $  if(((x&0x20)>>5)==0) y=@000f;else if(((x&0x20)>>5)==1) y=@016d;else y=@0035;
  $  073.充放电指示灯                     $    $              $    $  ANS010.BYTE005  $  if(((x&0x10)>>4)==0) y=@000f;else if(((x&0x10)>>4)==1) y=@016d;else y=@0035;
  $  074.机油压力低指示灯                 $    $              $    $  ANS010.BYTE005  $  if(((x&0x08)>>3)==0) y=@000f;else if(((x&0x08)>>3)==1) y=@016d;else y=@0035;
  $  075.排放故障指示灯                   $    $              $    $  ANS010.BYTE005  $  if(((x&0x04)>>2)==0) y=@000f;else if(((x&0x04)>>2)==1) y=@016d;else y=@0035;
  $  076.发动机故障指示灯                 $    $              $    $  ANS010.BYTE005  $  if(((x&0x02)>>1)==0) y=@000f;else if(((x&0x02)>>1)==1) y=@016d;else y=@0035;
  $  077.水温过高警告灯                   $    $              $    $  ANS010.BYTE004  $  if((x&0x01)==0) y=@000f;else if((x&0x01)==1) y=@016d;else y=@0035;
  $  078.ECO指示灯                        $    $              $    $  ANS011.BYTE004  $  if(((x&0x80)>>7)==0) y=@000f;else if(((x&0x80)>>7)==1) y=@016d;else y=@0035;
  $  079.低燃油指示灯                     $    $              $    $  ANS011.BYTE004  $  if(((x&0x40)>>6)==0) y=@000f;else if(((x&0x40)>>6)==1) y=@016d;else y=@0035;
  $  080.TCU故障警告                      $    $              $    $  ANS011.BYTE004  $  if(((x&0x20)>>5)==0) y=@000f;else if(((x&0x20)>>5)==1) y=@016d;else y=@0035;
  $  081.驾驶员安全带报警灯               $    $              $    $  ANS011.BYTE004  $  if(((x&0x10)>>4)==0) y=@000f;else if(((x&0x10)>>4)==1) y=@016d;else y=@0035;
  $  082.安全气囊指示灯                   $    $              $    $  ANS011.BYTE004  $  if(((x&0x08)>>3)==0) y=@000f;else if(((x&0x08)>>3)==1) y=@016d;else y=@0035;
  $  083.EPS指示灯                        $    $              $    $  ANS011.BYTE004  $  if(((x&0x04)>>2)==0) y=@000f;else if(((x&0x04)>>2)==1) y=@016d;else y=@0035;
  $  084.制动系统故障 驻车制动灯          $    $              $    $  ANS011.BYTE004  $  if(((x&0x02)>>1)==0) y=@000f;else if(((x&0x02)>>1)==1) y=@016d;else y=@0035;
  $  085.ESP OFF指示灯                    $    $              $    $  ANS011.BYTE004  $  if((x&0x01)==0) y=@000f;else if((x&0x01)==1) y=@016d;else y=@0035;
  $  086.保养提示灯                       $    $              $    $  ANS011.BYTE005  $  if(((x&0x80)>>7)==0) y=@000f;else if(((x&0x80)>>7)==1) y=@016d;else y=@0035;
  $  087.EPB故障指示灯                    $    $              $    $  ANS011.BYTE005  $  if(((x&0x40)>>6)==0) y=@000f;else if(((x&0x40)>>6)==1) y=@016d;else y=@0035;
  $  088.EPB工作指示灯                    $    $              $    $  ANS011.BYTE005  $  if(((x&0x20)>>5)==0) y=@000f;else if(((x&0x20)>>5)==1) y=@016d;else y=@0035;
  $  089.启停系统指示灯                   $    $              $    $  ANS011.BYTE005  $  if(((x&0x18)>>3)==0) y=@000f;else if(((x&0x18)>>3)==1) y=@06e8;else if(((x&0x18)>>3)==2) y=@1079;else if(((x&0x18)>>3)==3) y=@107b;else y=@0035;
  $  090.巡航指示灯                       $    $              $    $  ANS011.BYTE005  $  if(((x&0x06)>>1)==0) y=@000f;else if(((x&0x06)>>1)==1) y=@06e8;else if(((x&0x06)>>1)==2) y=@107b;else if(((x&0x06)>>1)==3) y=@0004;else y=@0035;
  $  091.SPORT指示灯                      $    $              $    $  ANS011.BYTE005  $  if((x&0x01)==0) y=@000f;else if((x&0x01)==1) y=@016d;else y=@0035;
  $  092.GPF指示灯                        $    $              $    $  ANS012.BYTE004  $  if(((x&0xC0)>>6)==0) y=@000f;else if(((x&0xC0)>>6)==1) y=@1079;else if(((x&0xC0)>>6)==2) y=@107a;else if(((x&0xC0)>>6)==3) y=@0004;else y=@0035;
  $  093.车道偏离                         $    $              $    $  ANS012.BYTE004  $  if(((x&0x38)>>3)==0) y=@000f;else if(((x&0x38)>>3)==1) y=@1079;else if(((x&0x38)>>3)==2) y=@107b;else if(((x&0x38)>>3)==3) y=@06e8;else if(((x&0x38)>>3)==4) y=@107c;else y=@0035;
  $  094.120km/h报警指示灯                $    $              $    $  ANS012.BYTE004  $  if(((x&0x04)>>2)==0) y=@000f;else if(((x&0x04)>>2)==1) y=@016d;else y=@0035;
  $  095.Autohold故障指示灯               $    $              $    $  ANS012.BYTE004  $  if((x&0x03)==0) y=@000f;else if((x&0x03)==1) y=@06e8;else if((x&0x03)==2) y=@1079;else if((x&0x03)==3) y=@0004;else y=@0035;
  $  096.前方有车                         $    $              $    $  ANS012.BYTE005  $  if(((x&0xC0)>>6)==0) y=@000f;else if(((x&0xC0)>>6)==1) y=@06e8;else if(((x&0xC0)>>6)==2) y=@1079;else if(((x&0xC0)>>6)==3) y=@0004;else y=@0035;
  $  097.ACC跟车距离指示灯                $    $              $    $  ANS012.BYTE005  $  if(((x&0x30)>>4)==0) y=@000f;else if(((x&0x30)>>4)==1) y=@107d;else if(((x&0x30)>>4)==2) y=@107e;else if(((x&0x30)>>4)==3) y=@107f;else y=@0035;
  $  098.自适应巡航指示灯                 $    $              $    $  ANS012.BYTE005  $  if(((x&0x0C)>>2)==0) y=@000f;else if(((x&0x0C)>>2)==1) y=@107b;else if(((x&0x0C)>>2)==2) y=@06e8;else if(((x&0x0C)>>2)==3) y=@0004;else y=@0035;
  $  099.前方有车指示灯                   $    $              $    $  ANS012.BYTE005  $  if((x&0x03)==0) y=@000f;else if((x&0x03)==1) y=@06e8;else if((x&0x03)==2) y=@1079;else if((x&0x03)==3) y=@0004;else y=@0035;
  $  100.左前压力                         $    $  kPa         $    $  ANS013.BYTE004  $  y=x*2.75;
  $  101.左后压力                         $    $  kPa         $    $  ANS014.BYTE004  $  y=x*2.75;
  $  102.保养间隔里程                     $    $  km          $    $  ANS015.BYTE004  $  y=(x1*256+x2);
  $  103.超速来自CAN信号                  $    $  km/h        $    $  ANS016.BYTE004  $  y=x;
  $  104.右后压力                         $    $  kPa         $    $  ANS017.BYTE004  $  y=x*2.75;
  $  105.右前压力                         $    $  kPa         $    $  ANS018.BYTE004  $  y=x*2.75;
  $  106.上一次保养行驶里程               $    $  km          $    $  ANS019.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  107.挡位                             $    $              $    $  ANS020.BYTE004  $  if(x==1) y=@0187;else if(x==10) y=@1080;else if(x==11) y=@1081;else if(x==12) y=@1082;else if(x==13) y=@1083;else if(x==14) y=@1084;else if(x==15) y=@1085;else if(x==16) y=@1086;else if(x==17) y=@1087;else if(x==18) y=@1088;else if(x==19) y=@1089;else if(x==2) y=@0263;else if(x==20) y=@0261;else if(x==255) y=@0fff;else if(x==3) y=@0262;else if(x==4) y=@108a;else if(x==5) y=@108b;else if(x==6) y=@108c;else if(x==7) y=@108d;else if(x==8) y=@108e;else if(x==9) y=@108f;else y=@0004;
  $  108.车辆当前燃油消耗量               $    $  mL          $    $  ANS021.BYTE004  $  y=(x1*256+x2);
  $  109.车速                             $    $  km/h        $    $  ANS022.BYTE004  $  y=x;
  $  110.车速来自发动机                   $    $  km/h        $    $  ANS023.BYTE004  $  y=(x1*256+x2)*0.05625;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:700 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
