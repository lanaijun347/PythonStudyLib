
    车型ID：10f7

    模拟：协议模拟-->10f7

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

  $*$*DTC/f4000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:700 04 14 FF FF FF 00 00 00       $$  ANS000:780 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:700 03 22 F1 A0 00 00 00 00       $%  ANS000:780 03 22 F1 A0 00 00 00 00
  $%  REQ001:700 03 22 F1 83 00 00 00 00       $%  ANS001:780 03 22 F1 83 00 00 00 00
  $%  REQ002:700 03 22 F1 A1 00 00 00 00       $%  ANS002:780 03 22 F1 A1 00 00 00 00
  $%  REQ003:700 03 22 F1 91 00 00 00 00       $%  ANS003:780 03 22 F1 91 00 00 00 00
  $%  REQ004:700 03 22 F1 8B 00 00 00 00       $%  ANS004:780 03 22 F1 8B 00 00 00 00
  $%  REQ005:700 03 22 F1 A2 00 00 00 00       $%  ANS005:780 03 22 F1 A2 00 00 00 00
  $%  REQ006:700 03 22 F1 87 00 00 00 00       $%  ANS006:780 03 22 F1 87 00 00 00 00
  $%  REQ007:700 03 22 F1 10 00 00 00 00       $%  ANS007:780 03 22 F1 10 00 00 00 00
  $%  REQ008:700 03 22 F1 92 00 00 00 00       $%  ANS008:780 03 22 F1 92 00 00 00 00
  $%  REQ009:700 03 22 F1 8C 00 00 00 00       $%  ANS009:780 03 22 F1 8C 00 00 00 00
  $%  REQ010:700 03 22 F1 94 00 00 00 00       $%  ANS010:780 03 22 F1 94 00 00 00 00
  $%  REQ011:700 03 22 F1 8A 00 00 00 00       $%  ANS011:780 03 22 F1 8A 00 00 00 00
  $%  REQ012:700 03 22 F1 90 00 00 00 00       $%  ANS012:780 03 22 F1 90 00 00 00 00
  $%  REQ013:700 03 22 F1 A8 00 00 00 00       $%  ANS013:780 03 22 F1 A8 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  002:电控单元标定号:                  $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元硬件号:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:车辆特征信息:                    $%    $%  ANS004.BYTE004  $%  HEX(X1,X2,X3);
  $%  005:电控单元网络参考号:              $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号:                  $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  007:电控单元零件号(上次):            $%    $%  ANS007.BYTE004  $%  ASCII(X1,X2,X3,X4,X5);
  $%  008:测试工具参考号(上次):            $%    $%  ANS007.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  009:里程读数(上次):                  $%    $%  ANS007.BYTE015  $%  HEX(X1,X2,X3);
  $%  010:供应商电控单元硬件参考号:        $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:供应商电控单元序列号:            $%    $%  ANS009.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  012:供应商电控单元软件参考号:        $%    $%  ANS010.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  013:系统供应商标识号:                $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  014:车辆识别代码:                    $%    $%  ANS012.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  015:车辆特征信息:                    $%    $%  ANS013.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:700 03 22 D9 19 00 00 00 00       $  ANS000:780 03 22 D9 19 00 00 00 00
  $  REQ001:700 03 22 D9 13 00 00 00 00       $  ANS001:780 03 22 D9 13 00 00 00 00
  $  REQ002:700 03 22 C0 01 00 00 00 00       $  ANS002:780 03 22 C0 01 00 00 00 00
  $  REQ003:700 03 22 D9 15 00 00 00 00       $  ANS003:780 03 22 D9 15 00 00 00 00
  $  REQ004:700 03 22 C0 00 00 00 00 00       $  ANS004:780 03 22 C0 00 00 00 00 00
  $  REQ005:700 03 22 D9 A1 00 00 00 00       $  ANS005:780 03 22 D9 A1 00 00 00 00
  $  REQ006:700 03 22 D9 11 00 00 00 00       $  ANS006:780 03 22 D9 11 00 00 00 00
  $  REQ007:700 03 22 D9 A4 00 00 00 00       $  ANS007:780 03 22 D9 A4 00 00 00 00
  $  REQ008:700 03 22 D9 14 00 00 00 00       $  ANS008:780 03 22 D9 14 00 00 00 00
  $  REQ009:700 03 22 C0 02 00 00 00 00       $  ANS009:780 03 22 C0 02 00 00 00 00
  $  REQ010:700 03 22 D9 16 00 00 00 00       $  ANS010:780 03 22 D9 16 00 00 00 00
  $  REQ011:700 03 22 C1 60 00 00 00 00       $  ANS011:780 03 22 C1 60 00 00 00 00
  $  REQ012:700 03 22 D9 12 00 00 00 00       $  ANS012:780 03 22 D9 12 00 00 00 00
  $  REQ013:700 03 22 D4 11 00 00 00 00       $  ANS013:780 03 22 D4 11 00 00 00 00
  $  REQ014:700 03 22 D4 12 00 00 00 00       $  ANS014:780 03 22 D4 12 00 00 00 00
  $  REQ015:700 03 22 D9 A0 00 00 00 00       $  ANS015:780 03 22 D9 A0 00 00 00 00

  $  000.BMS剩余电量                        $    $  %        $    $  ANS000.BYTE004  $  y=x;
  $  001.BMS剩余电量段                      $    $           $    $  ANS001.BYTE004  $  y=x;
  $  002.BMS分段1百分比                     $    $  %        $    $  ANS002.BYTE004  $  y=x;
  $  003.BMS分段2百分比                     $    $  %        $    $  ANS002.BYTE005  $  y=x;
  $  004.BMS分段3百分比                     $    $  %        $    $  ANS002.BYTE006  $  y=x;
  $  005.BMS分段4百分比                     $    $  %        $    $  ANS002.BYTE007  $  y=x;
  $  006.BMS分段5百分比                     $    $  %        $    $  ANS002.BYTE008  $  y=x;
  $  007.BMS分段6百分比                     $    $  %        $    $  ANS002.BYTE009  $  y=x;
  $  008.BMS分段7百分比                     $    $  %        $    $  ANS002.BYTE010  $  y=x;
  $  009.BMS分段8百分比                     $    $  %        $    $  ANS002.BYTE011  $  y=x;
  $  010.BMS返回百分比                      $    $  %        $    $  ANS002.BYTE012  $  y=x;
  $  011.制动销等级                         $    $           $    $  ANS003.BYTE004  $  if(x==0) y=@06c7;else if(x==1) y=@06cb;else y=@0035;
  $  012.广播是否可用                       $    $           $    $  ANS004.BYTE004  $  if(((x&0x80)>>7)==0) y=@0629;else if(((x&0x80)>>7)==1) y=@0d0a;else y=@0035;
  $  013.恢复出厂设置 是否可用              $    $           $    $  ANS004.BYTE004  $  if(((x&0x40)>>6)==0) y=@0629;else if(((x&0x40)>>6)==1) y=@0d0a;else y=@0035;
  $  014.SRS是否可用                        $    $           $    $  ANS004.BYTE004  $  if(((x&0x20)>>5)==0) y=@0629;else if(((x&0x20)>>5)==1) y=@0d0a;else y=@0035;
  $  015.语言设定                           $    $           $    $  ANS004.BYTE004  $  if((x&0x0F)==0) y=@0901;else if((x&0x0F)==1) y=@09ac;else if((x&0x0F)==2) y=@10b7;else y=@0035;
  $  016.没有超速或固定超速或可调超速       $    $           $    $  ANS004.BYTE005  $  if(((x&0x30)>>4)==0) y=@09ea;else if(((x&0x30)>>4)==1) y=@10b8;else if(((x&0x30)>>4)==2) y=@09ec;else y=@0035;
  $  017.FICM调整维护提醒                   $    $           $    $  ANS004.BYTE005  $  if(((x&0x0C)>>2)==0) y=@10b9;else if(((x&0x0C)>>2)==1) y=@10ba;else if(((x&0x0C)>>2)==2) y=@10bb;else y=@0035;
  $  018.时钟是否可用                       $    $           $    $  ANS004.BYTE005  $  if((x&0x03)==0) y=@10b5;else if((x&0x03)==1) y=@10b6;else if((x&0x03)==2) y=@10b7;else y=@0035;
  $  019.超速                               $    $  km/h     $    $  ANS004.BYTE006  $  y=x;
  $  020.第一次保养                         $    $  km       $    $  ANS004.BYTE007  $  y=x*20;
  $  021.电机功率                           $    $  kW       $    $  ANS005.BYTE004  $  y=(x1*256+x2)*0.01-328;
  $  022.电机电源段                         $    $           $    $  ANS006.BYTE004  $  y=x;
  $  023.里程表                             $    $  km       $    $  ANS007.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  024.剩余距离                           $    $  km       $    $  ANS008.BYTE004  $  y=(x1*256+x2);
  $  025.剩余电量低灯                       $    $  %        $    $  ANS009.BYTE004  $  y=x;
  $  026.安全带销等级                       $    $           $    $  ANS010.BYTE004  $  if(x==0) y=@06c7;else if(x==1) y=@06cb;else y=@0035;
  $  027.间隔保养                           $    $  km       $    $  ANS011.BYTE004  $  y=(x1*256+x2);
  $  028.保养里程读数                       $    $  km       $    $  ANS011.BYTE006  $  y=(x1*256*256+x2*256+x3);
  $  029.速度角度                           $    $           $    $  ANS012.BYTE004  $  y=(x1*256+x2);
  $  030.安全气囊灯                         $    $           $    $  ANS013.BYTE004  $  if(((x&0x80)>>7)==0) y=@000f;else if(((x&0x80)>>7)==1) y=@0028;else y=@0035;
  $  031.制动系统警示灯                     $    $           $    $  ANS013.BYTE004  $  if(((x&0x40)>>6)==0) y=@000f;else if(((x&0x40)>>6)==1) y=@0028;else y=@0035;
  $  032.半开门警示灯                       $    $           $    $  ANS013.BYTE004  $  if(((x&0x20)>>5)==0) y=@000f;else if(((x&0x20)>>5)==1) y=@0028;else y=@0035;
  $  033.侧灯                               $    $           $    $  ANS013.BYTE004  $  if(((x&0x10)>>4)==0) y=@000f;else if(((x&0x10)>>4)==1) y=@0028;else y=@0035;
  $  034.后雾灯                             $    $           $    $  ANS013.BYTE004  $  if(((x&0x08)>>3)==0) y=@000f;else if(((x&0x08)>>3)==1) y=@0028;else y=@0035;
  $  035.远光灯                             $    $           $    $  ANS013.BYTE004  $  if(((x&0x04)>>2)==0) y=@000f;else if(((x&0x04)>>2)==1) y=@0028;else y=@0035;
  $  036.右转灯                             $    $           $    $  ANS013.BYTE004  $  if(((x&0x02)>>1)==0) y=@000f;else if(((x&0x02)>>1)==1) y=@0028;else y=@0035;
  $  037.左转灯                             $    $           $    $  ANS013.BYTE004  $  if((x&0x01)==0) y=@000f;else if((x&0x01)==1) y=@0028;else y=@0035;
  $  038.BMS剩余电量警示灯                  $    $           $    $  ANS013.BYTE005  $  if(((x&0x80)>>7)==0) y=@000f;else if(((x&0x80)>>7)==1) y=@0028;else y=@0035;
  $  039.BMS电池灯关                        $    $           $    $  ANS013.BYTE005  $  if(((x&0x40)>>6)==0) y=@000f;else if(((x&0x40)>>6)==1) y=@0028;else y=@0035;
  $  040.动力传动系故障警告灯               $    $           $    $  ANS013.BYTE005  $  if(((x&0x20)>>5)==0) y=@000f;else if(((x&0x20)>>5)==1) y=@0028;else y=@0035;
  $  041.电机温度警示灯                     $    $           $    $  ANS013.BYTE005  $  if(((x&0x10)>>4)==0) y=@000f;else if(((x&0x10)>>4)==1) y=@0028;else y=@0035;
  $  042.EPS警示灯                          $    $           $    $  ANS013.BYTE005  $  if(((x&0x08)>>3)==0) y=@000f;else if(((x&0x08)>>3)==1) y=@0028;else y=@0035;
  $  043.EBD警示灯                          $    $           $    $  ANS013.BYTE005  $  if(((x&0x04)>>2)==0) y=@000f;else if(((x&0x04)>>2)==1) y=@0028;else y=@0035;
  $  044.ABS警示灯                          $    $           $    $  ANS013.BYTE005  $  if(((x&0x02)>>1)==0) y=@000f;else if(((x&0x02)>>1)==1) y=@0028;else y=@0035;
  $  045.安全带灯                           $    $           $    $  ANS013.BYTE005  $  if((x&0x01)==0) y=@000f;else if((x&0x01)==1) y=@0028;else y=@0035;
  $  046.胎压监测警告                       $    $           $    $  ANS014.BYTE004  $  if(((x&0x80)>>7)==0) y=@000f;else if(((x&0x80)>>7)==1) y=@0028;else y=@0035;
  $  047.ESP 关闭                           $    $           $    $  ANS014.BYTE004  $  if(((x&0x40)>>6)==0) y=@000f;else if(((x&0x40)>>6)==1) y=@0028;else y=@0035;
  $  048.ESP                                $    $           $    $  ANS014.BYTE004  $  if(((x&0x20)>>5)==0) y=@000f;else if(((x&0x20)>>5)==1) y=@0028;else y=@0035;
  $  049.功率限制指示                       $    $           $    $  ANS014.BYTE004  $  if(((x&0x10)>>4)==0) y=@000f;else if(((x&0x10)>>4)==1) y=@0028;else y=@0035;
  $  050.高压隔离警告                       $    $           $    $  ANS014.BYTE004  $  if(((x&0x08)>>3)==0) y=@000f;else if(((x&0x08)>>3)==1) y=@0028;else y=@0035;
  $  051.电池充电警告灯                     $    $           $    $  ANS014.BYTE004  $  if(((x&0x04)>>2)==0) y=@000f;else if(((x&0x04)>>2)==1) y=@0028;else y=@0035;
  $  052.电源状态                           $    $           $    $  ANS014.BYTE004  $  if(((x&0x02)>>1)==0) y=@000f;else if(((x&0x02)>>1)==1) y=@0028;else y=@0035;
  $  053.BMS电池状态                        $    $           $    $  ANS014.BYTE004  $  if((x&0x01)==0) y=@000f;else if((x&0x01)==1) y=@0028;else y=@0035;
  $  054.巡航控制（白色）                   $    $           $    $  ANS014.BYTE005  $  if(((x&0x02)>>1)==0) y=@000f;else if(((x&0x02)>>1)==1) y=@0028;else y=@0035;
  $  055.巡航控制（绿色）                   $    $           $    $  ANS014.BYTE005  $  if((x&0x01)==0) y=@000f;else if((x&0x01)==1) y=@0028;else y=@0035;
  $  056.车速信号                           $    $  km/h     $    $  ANS015.BYTE004  $  y=(x1*256+x2)*0.05625;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:700 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
