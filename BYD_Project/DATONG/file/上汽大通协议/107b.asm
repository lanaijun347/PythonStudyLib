
    车型ID：107b

    模拟：协议模拟-->107b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:748 02 10 01 00 00 00 00 00       $~  ANS000:7C8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:748 02 3E 80 00 00 00 00 00       $!  ANS000:7C8 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:748 03 19 02 09 00 00 00 00       $#  ANS000:7C8 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/7b000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:748 04 14 FF FF FF 00 00 00       $$  ANS000:7C8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:748 03 22 F1 A0 00 00 00 00       $%  ANS000:7C8 03 22 F1 A0 00 00 00 00
  $%  REQ001:748 03 22 F1 83 00 00 00 00       $%  ANS001:7C8 03 22 F1 83 00 00 00 00
  $%  REQ002:748 03 22 F1 A1 00 00 00 00       $%  ANS002:7C8 03 22 F1 A1 00 00 00 00
  $%  REQ003:748 03 22 F1 91 00 00 00 00       $%  ANS003:7C8 03 22 F1 91 00 00 00 00
  $%  REQ004:748 03 22 F1 A2 00 00 00 00       $%  ANS004:7C8 03 22 F1 A2 00 00 00 00
  $%  REQ005:748 03 22 F1 87 00 00 00 00       $%  ANS005:7C8 03 22 F1 87 00 00 00 00
  $%  REQ006:748 03 22 F1 10 00 00 00 00       $%  ANS006:7C8 03 22 F1 10 00 00 00 00
  $%  REQ007:748 03 22 F1 92 00 00 00 00       $%  ANS007:7C8 03 22 F1 92 00 00 00 00
  $%  REQ008:748 03 22 F1 8C 00 00 00 00       $%  ANS008:7C8 03 22 F1 8C 00 00 00 00
  $%  REQ009:748 03 22 F1 94 00 00 00 00       $%  ANS009:7C8 03 22 F1 94 00 00 00 00
  $%  REQ010:748 03 22 F1 8A 00 00 00 00       $%  ANS010:7C8 03 22 F1 8A 00 00 00 00
  $%  REQ011:748 03 22 F1 90 00 00 00 00       $%  ANS011:7C8 03 22 F1 90 00 00 00 00
  $%  REQ012:748 03 22 F1 A8 00 00 00 00       $%  ANS012:7C8 03 22 F1 A8 00 00 00 00
  $%  REQ013:748 03 22 F1 8B 00 00 00 00       $%  ANS013:7C8 03 22 F1 8B 00 00 00 00

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

  $  REQ000:748 03 22 D1 17 00 00 00 00       $  ANS000:7C8 03 22 D1 17 00 00 00 00
  $  REQ001:748 03 22 D1 12 00 00 00 00       $  ANS001:7C8 03 22 D1 12 00 00 00 00
  $  REQ002:748 03 22 D0 07 00 00 00 00       $  ANS002:7C8 03 22 D0 07 00 00 00 00
  $  REQ003:748 03 22 D0 08 00 00 00 00       $  ANS003:7C8 03 22 D0 08 00 00 00 00
  $  REQ004:748 03 22 D0 09 00 00 00 00       $  ANS004:7C8 03 22 D0 09 00 00 00 00
  $  REQ005:748 03 22 C0 01 00 00 00 00       $  ANS005:7C8 03 22 C0 01 00 00 00 00
  $  REQ006:748 03 22 D0 0A 00 00 00 00       $  ANS006:7C8 03 22 D0 0A 00 00 00 00
  $  REQ007:748 03 22 D1 15 00 00 00 00       $  ANS007:7C8 03 22 D1 15 00 00 00 00
  $  REQ008:748 03 22 D1 11 00 00 00 00       $  ANS008:7C8 03 22 D1 11 00 00 00 00
  $  REQ009:748 03 22 D1 14 00 00 00 00       $  ANS009:7C8 03 22 D1 14 00 00 00 00
  $  REQ010:748 03 22 D1 13 00 00 00 00       $  ANS010:7C8 03 22 D1 13 00 00 00 00
  $  REQ011:748 03 22 D1 16 00 00 00 00       $  ANS011:7C8 03 22 D1 16 00 00 00 00
  $  REQ012:748 03 22 D0 02 00 00 00 00       $  ANS012:7C8 03 22 D0 02 00 00 00 00
  $  REQ013:748 03 22 D0 03 00 00 00 00       $  ANS013:7C8 03 22 D0 03 00 00 00 00
  $  REQ014:748 03 22 D1 19 00 00 00 00       $  ANS014:7C8 03 22 D1 19 00 00 00 00
  $  REQ015:748 03 22 D1 10 00 00 00 00       $  ANS015:7C8 03 22 D1 10 00 00 00 00
  $  REQ016:748 03 22 D0 04 00 00 00 00       $  ANS016:7C8 03 22 D0 04 00 00 00 00
  $  REQ017:748 03 22 D0 05 00 00 00 00       $  ANS017:7C8 03 22 D0 05 00 00 00 00
  $  REQ018:748 03 22 D0 06 00 00 00 00       $  ANS018:7C8 03 22 D0 06 00 00 00 00

  $  000.BMS剩余电量                       $    $  %            $    $  ANS000.BYTE004  $  y=x;
  $  001.电池温度                          $    $  degree C     $    $  ANS001.BYTE004  $  y=x-40;
  $  002.充电机通讯状态                    $    $               $    $  ANS002.BYTE004  $  if((x&0x80)==0x80) y=@0474;else y=@01d1;
  $  003.整车控制器通讯状态                $    $               $    $  ANS002.BYTE004  $  if((x&0x40)==0x40) y=@0474;else y=@01d1;
  $  004.电机控制器通讯状态                $    $               $    $  ANS002.BYTE004  $  if((x&0x20)==0x20) y=@0474;else y=@01d1;
  $  005.2#BMU通讯状态                     $    $               $    $  ANS002.BYTE004  $  if((x&0x04)==0x04) y=@0474;else y=@01d1;
  $  006.1#BMU通讯状态                     $    $               $    $  ANS002.BYTE004  $  if((x&0x02)==0x02) y=@0474;else y=@01d1;
  $  007.HVU通讯状态                       $    $               $    $  ANS002.BYTE004  $  if((x&0x01)==0x01) y=@0474;else y=@01d1;
  $  008.高压预充故障                      $    $               $    $  ANS003.BYTE004  $  if((x&0x70)==0x00) y=@0197;else if((x&0x70)==0x10) y=@0bca;else if((x&0x70)==0x20) y=@0bcb;else if((x&0x70)==0x30) y=@0bcc;else if((x&0x70)==0x40) y=@0bcd;else y=@01a9;
  $  009.高压预充状态                      $    $               $    $  ANS003.BYTE004  $  if((x&0x0F)==0x00) y=@0bce;else if((x&0x0F)==0x01) y=@0bcf;else if((x&0x0F)==0x02) y=@0bd0;else if((x&0x0F)==0x03) y=@0bd1;else if((x&0x0F)==0x04) y=@0bd2;else if((x&0x0F)==0x05) y=@0bd3;else if((x&0x0F)==0x06) y=@0bd4;else if((x&0x0F)==0x07) y=@0bd5;else if((x&0x0F)==0x08) y=@0bd6;else if((x&0x0F)==0x09) y=@0bd7;else y=@01a9;
  $  010.充电机类型                        $    $               $    $  ANS004.BYTE004  $  if((x&0xE0)==0x00) y=@0bd8;else if((x&0xE0)==0x20) y=@0bd9;else if((x&0xE0)==0x40) y=@0bda;else if((x&0xE0)==0x60) y=@0bdb;else if((x&0xE0)==0x80) y=@0bdc;else y=@01a9;
  $  011.充电机接收BMS报文超时             $    $               $    $  ANS004.BYTE004  $  if((x&0x10)==0x10) y=@0a24;else y=@01d1;
  $  012.充电机启动状态                    $    $               $    $  ANS004.BYTE004  $  if((x&0x08)==0x08) y=@0bc4;else y=@0036;
  $  013.充电机输入电压状态                $    $               $    $  ANS004.BYTE004  $  if((x&0x04)==0x04) y=@0474;else y=@01d1;
  $  014.充电机过温保护状态                $    $               $    $  ANS004.BYTE004  $  if((x&0x02)==0x02) y=@0135;else y=@01d1;
  $  015.充电机硬件故障状态                $    $               $    $  ANS004.BYTE004  $  if((x&0x01)==0x01) y=@00b3;else y=@0197;
  $  016.电池类型                          $    $               $    $  ANS005.BYTE004  $  if((x&0xC0)==0x40) y=@0bc5;else if((x&0xC0)==0x80) y=@0bc6;else y=@01a9;
  $  017.HVU运行状态                       $    $               $    $  ANS006.BYTE004  $  if((x&0xC0)==0x00) y=@0004;else if((x&0xC0)==0x40) y=@0a1a;else if((x&0xC0)==0x80) y=@0a1b;else y=@0a1c;
  $  018.高压检测线连接故障                $    $               $    $  ANS006.BYTE004  $  if((x&0x08)==0x08) y=@0135;else y=@01d1;
  $  019.总压检测硬件故障                  $    $               $    $  ANS006.BYTE004  $  if((x&0x04)==0x04) y=@0135;else y=@01d1;
  $  020.绝缘检测硬件故障                  $    $               $    $  ANS006.BYTE004  $  if((x&0x01)==0x01) y=@0135;else y=@01d1;
  $  021.高电压                            $    $  V            $    $  ANS007.BYTE004  $  y=(x1*256+x2)*0.1;
  $  022.高压输出电流值                    $    $  A            $    $  ANS008.BYTE004  $  y=x1*256+x2-400;
  $  023.高压设备功率                      $    $  kW           $    $  ANS009.BYTE004  $  y=x;
  $  024.高压系统绝缘                      $    $  kohm         $    $  ANS010.BYTE004  $  y=x1*256+x2;
  $  025.HVU总压2电压值                    $    $  V            $    $  ANS011.BYTE004  $  y=(x1*256+x2)*0.1;
  $  026.入口温度                          $    $  degree C     $    $  ANS011.BYTE004  $  y=x-40;
  $  027.车载电源状态                      $    $               $    $  ANS012.BYTE004  $  if((x&0x40)==0x40) y=@0028;else y=@000f;
  $  028.充电连接状态                      $    $               $    $  ANS012.BYTE004  $  if((x&0x20)==0x20) y=@0474;else y=@01d1;
  $  029.高压互锁状态                      $    $               $    $  ANS012.BYTE004  $  if((x&0x10)==0x10) y=@0bc7;else y=@0404;
  $  030.充电线连接状态                    $    $               $    $  ANS012.BYTE004  $  if((x&0x08)==0x08) y=@0bc8;else y=@0bc9;
  $  031.电力蓄电池故障状态                $    $               $    $  ANS012.BYTE004  $  if((x&0x04)==0x04) y=@00b3;else y=@0197;
  $  032.主放电继电器控制                  $    $               $    $  ANS013.BYTE004  $  if((x&0x80)==0x80) y=@0028;else y=@000f;
  $  033.预充继电器控制                    $    $               $    $  ANS013.BYTE004  $  if((x&0x40)==0x40) y=@0028;else y=@000f;
  $  034.负极继电器控制                    $    $               $    $  ANS013.BYTE004  $  if((x&0x20)==0x20) y=@0028;else y=@000f;
  $  035.充电继电器控制                    $    $               $    $  ANS013.BYTE004  $  if((x&0x10)==0x10) y=@0028;else y=@000f;
  $  036.鼓风机控制                        $    $               $    $  ANS013.BYTE004  $  if((x&0x08)==0x08) y=@0028;else y=@000f;
  $  037.泵控制                            $    $               $    $  ANS013.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  038.冷却器请求                        $    $               $    $  ANS013.BYTE004  $  if((x&0x03)==0x00) y=@0a1d;else if((x&0x03)==0x01) y=@0a1e;else if((x&0x03)==0x02) y=@0a1f;else y=@01a9;
  $  039.出口温度                          $    $  degree C     $    $  ANS014.BYTE004  $  y=x-40;
  $  040.系统供电电压                      $    $  V            $    $  ANS015.BYTE004  $  y=x*0.1;
  $  041.绝缘等级指示                      $    $               $    $  ANS016.BYTE004  $  if((x&0xE0)==0x00) y=@01d1;else if((x&0xE0)==0x20) y=@0a20;else if((x&0xE0)==0x40) y=@0a21;else if((x&0xE0)==0x60) y=@0a22;else if((x&0xE0)==0x80) y=@0a23;else y=@01a9;
  $  042.BMS温度报警                       $    $               $    $  ANS016.BYTE004  $  if((x&0x18)==0x00) y=@01d1;else if((x&0x18)==0x08) y=@0a21;else if((x&0x18)==0x10) y=@0a22;else y=@0a23;
  $  043.BMS单体电压报警                   $    $               $    $  ANS016.BYTE004  $  if((x&0x07)==0x00) y=@01d1;else if((x&0x07)==0x01) y=@0a22;else if((x&0x07)==0x02) y=@0a22;else if((x&0x07)==0x03) y=@0a23;else if((x&0x07)==0x04) y=@0a23;else y=@01a9;
  $  044.高压绝缘报警                      $    $               $    $  ANS017.BYTE004  $  if((x&0x80)==0x80) y=@0135;else y=@01d1;
  $  045.高压互锁报警                      $    $               $    $  ANS017.BYTE004  $  if((x&0x40)==0x40) y=@0135;else y=@01d1;
  $  046.电池组总电压过高报警              $    $               $    $  ANS017.BYTE004  $  if((x&0x20)==0x20) y=@0135;else y=@01d1;
  $  047.电池组总电压过低报警              $    $               $    $  ANS017.BYTE004  $  if((x&0x10)==0x10) y=@0135;else y=@01d1;
  $  048.单体电压过高报警,需停止充电       $    $               $    $  ANS017.BYTE004  $  if((x&0x08)==0x08) y=@0135;else y=@01d1;
  $  049.SOC(电池电量)过低报警             $    $               $    $  ANS017.BYTE004  $  if((x&0x06)==0x00) y=@01d1;else if((x&0x06)==0x02) y=@0a25;else if((x&0x06)==0x04) y=@0a26;else y=@01a9;
  $  050.电池组过流报警                    $    $               $    $  ANS017.BYTE004  $  if((x&0x01)==0x01) y=@0135;else y=@01d1;
  $  051.单体电压过低报警                  $    $               $    $  ANS018.BYTE004  $  if((x&0x80)==0x80) y=@0135;else y=@01d1;
  $  052.BMS故障等级指示                   $    $               $    $  ANS018.BYTE004  $  if((x&0x70)==0x00) y=@01d1;else if((x&0x70)==0x10) y=@0a20;else if((x&0x70)==0x20) y=@0a21;else if((x&0x70)==0x30) y=@0a22;else if((x&0x70)==0x40) y=@0a23;else y=@01a9;
  $  053.电池总电压报警                    $    $               $    $  ANS018.BYTE004  $  if((x&0x0E)==0x00) y=@01d1;else if((x&0x0E)==0x02) y=@0a22;else if((x&0x0E)==0x04) y=@0a22;else if((x&0x0E)==0x06) y=@0a23;else if((x&0x0E)==0x08) y=@0a23;else y=@01a9;
  $  054.BMS温度报警                       $    $               $    $  ANS018.BYTE004  $  if((x&0x01)==0x01) y=@0474;else y=@01d1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:748 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
