
    车型ID：1040

    模拟：协议模拟-->1040

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:761 02 10 01 00 00 00 00 00       $~  ANS000:769 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:761 02 3E 80 00 00 00 00 00       $!  ANS000:769 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:761 03 19 02 09 00 00 00 00       $#  ANS000:769 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/40000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:761 04 14 FF FF FF 00 00 00       $$  ANS000:769 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:761 03 22 F1 A0 00 00 00 00       $%  ANS000:769 03 22 F1 A0 00 00 00 00
  $%  REQ001:761 03 22 F1 83 00 00 00 00       $%  ANS001:769 03 22 F1 83 00 00 00 00
  $%  REQ002:761 03 22 F1 A1 00 00 00 00       $%  ANS002:769 03 22 F1 A1 00 00 00 00
  $%  REQ003:761 03 22 F1 91 00 00 00 00       $%  ANS003:769 03 22 F1 91 00 00 00 00
  $%  REQ004:761 03 22 F1 A2 00 00 00 00       $%  ANS004:769 03 22 F1 A2 00 00 00 00
  $%  REQ005:761 03 22 F1 87 00 00 00 00       $%  ANS005:769 03 22 F1 87 00 00 00 00
  $%  REQ006:761 03 22 F1 10 00 00 00 00       $%  ANS006:769 03 22 F1 10 00 00 00 00
  $%  REQ007:761 03 22 F1 92 00 00 00 00       $%  ANS007:769 03 22 F1 92 00 00 00 00
  $%  REQ008:761 03 22 F1 8C 00 00 00 00       $%  ANS008:769 03 22 F1 8C 00 00 00 00
  $%  REQ009:761 03 22 F1 94 00 00 00 00       $%  ANS009:769 03 22 F1 94 00 00 00 00
  $%  REQ010:761 03 22 F1 8A 00 00 00 00       $%  ANS010:769 03 22 F1 8A 00 00 00 00
  $%  REQ011:761 03 22 F1 90 00 00 00 00       $%  ANS011:769 03 22 F1 90 00 00 00 00
  $%  REQ012:761 03 22 F1 A8 00 00 00 00       $%  ANS012:769 03 22 F1 A8 00 00 00 00
  $%  REQ013:761 03 22 F1 8B 00 00 00 00       $%  ANS013:769 03 22 F1 8B 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:控制器单元名:                    $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  002:发布时间:                        $%    $%  ANS001.BYTE008  $%  ASCII(X1,X2,X3);
  $%  003:RFID版本:                        $%    $%  ANS001.BYTE011  $%  ASCII(X1,X2,X3);
  $%  004:电控单元标定软件号:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  005:电控单元硬件号:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元网络文件参考号:          $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  007:电控单元零件号:                  $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  008:电控单元零件号(上次):            $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  009:测试工具参考号(上次):            $%    $%  ANS006.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  010:里程读数(上次)KM:                $%    $%  ANS006.BYTE015  $%  y=(x1*256*256+x2*256+x3);
  $%  011:供应商电控单元硬件参考号:        $%    $%  ANS007.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  012:车辆零件识别码:                  $%    $%  ANS008.BYTE005  $%  ASCII(X1,X2);
  $%  013:零件号识别码:                    $%    $%  ANS008.BYTE007  $%  ASCII(x1,x2,x3,x4);
  $%  014:供应商代码:                      $%    $%  ANS008.BYTE011  $%  ASCII(x);
  $%  015:年:                              $%    $%  ANS008.BYTE012  $%  ASCII(x);
  $%  016:月:                              $%    $%  ANS008.BYTE013  $%  ASCII(x);
  $%  017:日:                              $%    $%  ANS008.BYTE014  $%  ASCII(X1,X2);
  $%  018:序列号:                          $%    $%  ANS008.BYTE016  $%  ASCII(x1,x2,x3,x4);
  $%  019:供应商电控单元软件参考号:        $%    $%  ANS009.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  020:系统供应商识别码:                $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  021:VIN码:                           $%    $%  ANS011.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  022:车辆特征信息:                    $%    $%  ANS012.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  023:电控单元制造日期:                $%    $%  ANS013.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.数据流1
  $  00.数据流1
  $  REQ000:761 03 22 B0 19 00 00 00 00       $  ANS000:769 03 22 B0 19 00 00 00 00
  $  REQ001:761 03 22 B0 03 00 00 00 00       $  ANS001:769 03 22 B0 03 00 00 00 00
  $  REQ002:761 03 22 B0 04 00 00 00 00       $  ANS002:769 03 22 B0 04 00 00 00 00
  $  REQ003:761 03 22 B0 05 00 00 00 00       $  ANS003:769 03 22 B0 05 00 00 00 00
  $  REQ004:761 03 22 B0 21 00 00 00 00       $  ANS004:769 03 22 B0 21 00 00 00 00
  $  REQ005:761 03 22 B0 31 00 00 00 00       $  ANS005:769 03 22 B0 31 00 00 00 00
  $  REQ006:761 03 22 B0 41 00 00 00 00       $  ANS006:769 03 22 B0 41 00 00 00 00
  $  REQ007:761 03 22 B0 51 00 00 00 00       $  ANS007:769 03 22 B0 51 00 00 00 00
  $  REQ008:761 03 22 B0 61 00 00 00 00       $  ANS008:769 03 22 B0 61 00 00 00 00
  $  REQ009:761 03 22 B0 07 00 00 00 00       $  ANS009:769 03 22 B0 07 00 00 00 00
  $  REQ010:761 03 22 B0 08 00 00 00 00       $  ANS010:769 03 22 B0 08 00 00 00 00
  $  REQ011:761 03 22 B0 09 00 00 00 00       $  ANS011:769 03 22 B0 09 00 00 00 00
  $  REQ012:761 03 22 B0 71 00 00 00 00       $  ANS012:769 03 22 B0 71 00 00 00 00
  $  REQ013:761 03 22 B0 82 00 00 00 00       $  ANS013:769 03 22 B0 82 00 00 00 00
  $  REQ014:761 03 22 B0 81 00 00 00 00       $  ANS014:769 03 22 B0 81 00 00 00 00
  $  REQ015:761 03 22 B1 0A 00 00 00 00       $  ANS015:769 03 22 B1 0A 00 00 00 00
  $  REQ016:761 03 22 D1 01 00 00 00 00       $  ANS016:769 03 22 D1 01 00 00 00 00
  $  REQ017:761 03 22 B1 06 00 00 00 00       $  ANS017:769 03 22 B1 06 00 00 00 00
  $  REQ018:761 03 22 B1 0B 00 00 00 00       $  ANS018:769 03 22 B1 0B 00 00 00 00
  $  REQ019:761 03 22 B0 12 00 00 00 00       $  ANS019:769 03 22 B0 12 00 00 00 00
  $  REQ020:761 03 22 B0 18 00 00 00 00       $  ANS020:769 03 22 B0 18 00 00 00 00
  $  REQ021:761 03 22 B0 16 00 00 00 00       $  ANS021:769 03 22 B0 16 00 00 00 00
  $  REQ022:761 03 22 B0 13 00 00 00 00       $  ANS022:769 03 22 B0 13 00 00 00 00
  $  REQ023:761 03 22 B0 0B 00 00 00 00       $  ANS023:769 03 22 B0 0B 00 00 00 00
  $  REQ024:761 03 22 B0 0A 00 00 00 00       $  ANS024:769 03 22 B0 0A 00 00 00 00
  $  REQ025:761 03 22 B0 17 00 00 00 00       $  ANS025:769 03 22 B0 17 00 00 00 00
  $  REQ026:761 03 22 B0 14 00 00 00 00       $  ANS026:769 03 22 B0 14 00 00 00 00
  $  REQ027:761 03 22 B0 15 00 00 00 00       $  ANS027:769 03 22 B0 15 00 00 00 00
  $  REQ028:761 03 22 B0 94 00 00 00 00       $  ANS028:769 03 22 B0 94 00 00 00 00
  $  REQ029:761 03 22 B0 A1 00 00 00 00       $  ANS029:769 03 22 B0 A1 00 00 00 00
  $  REQ030:761 03 22 B0 92 00 00 00 00       $  ANS030:769 03 22 B0 92 00 00 00 00
  $  REQ031:761 03 22 B0 93 00 00 00 00       $  ANS031:769 03 22 B0 93 00 00 00 00
  $  REQ032:761 03 22 B0 91 00 00 00 00       $  ANS032:769 03 22 B0 91 00 00 00 00
  $  REQ033:761 03 22 B0 A3 00 00 00 00       $  ANS033:769 03 22 B0 A3 00 00 00 00
  $  REQ034:761 03 22 B0 A2 00 00 00 00       $  ANS034:769 03 22 B0 A2 00 00 00 00
  $  REQ035:761 03 22 B0 A4 00 00 00 00       $  ANS035:769 03 22 B0 A4 00 00 00 00
  $  REQ036:761 03 22 B0 A6 00 00 00 00       $  ANS036:769 03 22 B0 A6 00 00 00 00
  $  REQ037:761 03 22 B0 A5 00 00 00 00       $  ANS037:769 03 22 B0 A5 00 00 00 00

  $  000.氛围灯亮度水平要求反馈                                     $    $               $    $  ANS000.BYTE004  $  y=x/2;
  $  001.氛围灯开关反馈                                             $    $               $    $  ANS000.BYTE005  $  if((x&0xC0)==0x40)y=@000f;else if((x&0xC0)==0x80)y=@0028;else if((x&0xC0)==0xC0)y=@0267;else y=@04ec;
  $  002.氛围灯电平请求反馈                                         $    $               $    $  ANS000.BYTE006  $  y=x;
  $  003.车身控制器系统的车架号(第0个字节)                          $    $               $    $  ANS001.BYTE004  $  HEX(X);
  $  004.车身控制器系统的车架号(第1个字节)                          $    $               $    $  ANS001.BYTE005  $  HEX(X);
  $  005.车身控制器系统的车架号(第2个字节)                          $    $               $    $  ANS001.BYTE006  $  HEX(X);
  $  006.车身控制器系统的车架号(第3个字节)                          $    $               $    $  ANS001.BYTE007  $  HEX(X);
  $  007.车身控制器系统的车架号(第4个字节)                          $    $               $    $  ANS001.BYTE008  $  HEX(X);
  $  008.车身控制器系统的车架号(第5个字节)                          $    $               $    $  ANS001.BYTE009  $  HEX(X);
  $  009.车身控制器系统的车架号(第6个字节)                          $    $               $    $  ANS001.BYTE010  $  HEX(X);
  $  010.车身控制器系统的车架号(第7个字节)                          $    $               $    $  ANS001.BYTE011  $  HEX(X);
  $  011.车身控制管理模块配置状态                                   $    $               $    $  ANS002.BYTE004  $  y=UINT64(x1,x2,x3,x4,x5,x6,x7,x8);
  $  012.左前轮胎压力                                               $    $  kPa          $    $  ANS003.BYTE004  $  y=x*2.75;
  $  013.右前轮胎压力                                               $    $  kPa          $    $  ANS003.BYTE005  $  y=x*2.75;
  $  014.右后轮胎压力                                               $    $  kPa          $    $  ANS003.BYTE006  $  y=x*2.75;
  $  015.左后轮胎压力                                               $    $  kPa          $    $  ANS003.BYTE007  $  y=x*2.75;
  $  016.轮胎温度                                                   $    $  degree C     $    $  ANS003.BYTE008  $  y=x-60;
  $  017.左前轮胎压力报警状态                                       $    $               $    $  ANS003.BYTE009  $  if((x&0xE0)==0x00)y=@05c2;else if((x&0xE0)==0x20)y=@05c4;else if((x&0xE0)==0x40)y=@05c5;else if((x&0xE0)==0x60)y=@05c6;else if((x&0xE0)==0x80)y=@05c7;else if((x&0xE0)==0xA0)y=@05c8;else if((x&0xE0)==0xC0)y=@05c9;else y=@05ca;
  $  018.右前轮胎压力报警状态                                       $    $               $    $  ANS003.BYTE009  $  if((x&0x1C)==0x00)y=@05c2;else if((x&0x1C)==0x04)y=@05c4;else if((x&0x1C)==0x08)y=@05c5;else if((x&0x1C)==0x0C)y=@05c6;else if((x&0x1C)==0x10)y=@05c7;else if((x&0x1C)==0x14)y=@05c8;else if((x&0x1C)==0x18)y=@05c9;else y=@05ca;
  $  019.胎压管理系统状态                                           $    $               $    $  ANS003.BYTE009  $  if((x&0x03)==0x00)y=@05c3;else if((x&0x03)==0x01)y=@00d3;else if((x&0x03)==0x02)y=@00d4;else y=@0004;
  $  020.右前轮胎压力报警状态                                       $    $               $    $  ANS003.BYTE010  $  if((x&0xE0)==0x00)y=@05c2;else if((x&0xE0)==0x20)y=@05c4;else if((x&0xE0)==0x40)y=@05c5;else if((x&0xE0)==0x60)y=@05c6;else if((x&0xE0)==0x80)y=@05c7;else if((x&0xE0)==0xA0)y=@05c8;else if((x&0xE0)==0xC0)y=@05c9;else y=@05ca;
  $  021.左后轮胎压力报警状态                                       $    $               $    $  ANS003.BYTE010  $  if((x&0x1C)==0x00)y=@05c2;else if((x&0x1C)==0x04)y=@05c4;else if((x&0x1C)==0x08)y=@05c5;else if((x&0x1C)==0x0C)y=@05c6;else if((x&0x1C)==0x10)y=@05c7;else if((x&0x1C)==0x14)y=@05c8;else if((x&0x1C)==0x18)y=@05c9;else y=@05ca;
  $  022.温度告警                                                   $    $               $    $  ANS003.BYTE010  $  if((x&0x02)==0x02)y=@06db;else y=@06dc;
  $  023.信号状态                                                   $    $               $    $  ANS003.BYTE010  $  if((x&0x01)==0x01)y=@0700;else y=@0701;
  $  024.轮胎位置                                                   $    $               $    $  ANS003.BYTE011  $  if((x&0xE0)==0x00)y=@06fa;else if((x&0xE0)==0x20)y=@06fb;else if((x&0xE0)==0x40)y=@06fc;else if((x&0xE0)==0x60)y=@06fd;else if((x&0xE0)==0x80)y=@06fe;else y=@0035;
  $  025.胎压管理系统的状态                                         $    $               $    $  ANS003.BYTE011  $  if((x&0x18)==0x00)y=@046a;else if((x&0x18)==0x08)y=@06ff;else if((x&0x18)==0x10)y=@046c;else y=@01a9;
  $  026.电动提升门位置设置                                         $    $  km/h         $    $  ANS004.BYTE004  $  y=x;
  $  027.车辆负载卸载的功率风险                                     $    $               $    $  ANS005.BYTE004  $  if((x&0xE0)==0x00)y=@0aa9;else if((x&0xE0)==0x20)y=@0aaa;else if((x&0xE0)==0x40)y=@0aab;else if((x&0xE0)==0x80)y=@0aac;else y=@01a9;
  $  028.电动驻车制动应用状态                                       $    $               $    $  ANS006.BYTE004  $  if((x&0xC0)==0x40)y=@0ab5;else if((x&0xC0)==0x80)y=@0ab6;else if((x&0xC0)==0xC0)y=@0ab7;else y=@01a9;
  $  029.电动驻车制动器应用状态保护值                               $    $               $    $  ANS006.BYTE004  $  y=(x&0x30)/16;
  $  030.方向盘角度                                                 $    $  rad          $    $  ANS007.BYTE004  $  y=(x1*256+x2)*2048/65535-2048;
  $  031.转向角有效性                                               $    $               $    $  ANS007.BYTE006  $  if((x&0x80)==0x80)y=@04ec;else y=@00bb;
  $  032.转向角梯度                                                 $    $  rad/s        $    $  ANS007.BYTE007  $  y=(x1*256+x2)*2048/65535-2048;
  $  033.前方碰撞警告灵敏度水平                                     $    $               $    $  ANS008.BYTE004  $  if((x&0xE0)==0x00)y=@0629;else if((x&0xE0)==0x20)y=@04f8;else if((x&0xE0)==0x40)y=@04f7;else if((x&0xE0)==0x60)y=@04f6;else y=@0004;
  $  034.前方碰撞警告                                               $    $               $    $  ANS008.BYTE004  $  if((x&0x18)==0x00)y=@0629;else if((x&0x18)==0x08)y=@000f;else if((x&0x18)==0x10)y=@0028;else y=@0004;
  $  035.前向碰撞警告系统故障状态                                   $    $               $    $  ANS008.BYTE004  $  if((x&0x07)==0x00)y=@012a;else if((x&0x07)==0x01)y=@0ab8;else if((x&0x07)==0x02)y=@0ab9;else if((x&0x07)==0x03)y=@0626;else y=@0004;
  $  036.车道偏离警告灵敏度                                         $    $               $    $  ANS008.BYTE005  $  if((x&0xC0)==0x00)y=@0629;else if((x&0xC0)==0x40)y=@06c7;else if((x&0xC0)==0x80)y=@08ce;else y=@06cb;
  $  037.车道偏离警告                                               $    $               $    $  ANS008.BYTE005  $  if((x&0x18)==0x00)y=@0629;else if((x&0x18)==0x08)y=@000f;else if((x&0x18)==0x10)y=@0028;else y=@0004;
  $  038.车道偏离警告音频警告                                       $    $               $    $  ANS008.BYTE005  $  if((x&0x06)==0x00)y=@02ce;else if((x&0x06)==0x02)y=@000f;else if((x&0x06)==0x04)y=@0028;else y=@0004;
  $  039.车道偏离警告系统状态                                       $    $               $    $  ANS008.BYTE006  $  if((x&0x07)==0x00)y=@000f;else if((x&0x07)==0x01)y=@0137;else if((x&0x07)==0x02)y=@00bb;else if((x&0x07)==0x03)y=@0aad;else if((x&0x07)==0x04)y=@00b3;else y=@01a9;
  $  040.车辆速度                                                   $    $  km/h         $    $  ANS009.BYTE004  $  y=(x1*256+x2)/256*1.8;
  $  041.车速状态                                                   $    $               $    $  ANS009.BYTE005  $  if((x&0x04)==0x04)y=@0136;else y=@00bb;
  $  042.加速器X                                                    $    $  m/s^2        $    $  ANS010.BYTE004  $  y=((((x1*256+x2)&0x7FF0)-((x1*256+x2)&0x8000))/16)*0.027127;
  $  043.加速器X输出状况                                            $    $               $    $  ANS010.BYTE005  $  if((x&0x0E)==0x00)y=@00bb;else if((x&0x0E)==0x02)y=@04ec;else y=@01a9;
  $  044.加速器Y                                                    $    $  m/s^2        $    $  ANS010.BYTE006  $  y=((((x1*256+x2)&0x7FF0)-((x1*256+x2)&0x8000))/16)*0.027127;
  $  045.加速器Y输出状况                                            $    $               $    $  ANS010.BYTE007  $  if((x&0x0E)==0x00)y=@00bb;else if((x&0x0E)==0x02)y=@04ec;else y=@01a9;
  $  046.方向盘转向盘转角                                           $    $  rad          $    $  ANS011.BYTE004  $  y=(x1*256+x2)*0.1;
  $  047.方向盘转速                                                 $    $  rad/s        $    $  ANS011.BYTE006  $  y=x*4;
  $  048.消息次数                                                   $    $               $    $  ANS011.BYTE007  $  y=(x&0xF0)/16;
  $  049.校验值                                                     $    $               $    $  ANS011.BYTE007  $  y=x&0x0F;
  $  050.SAS(方向盘转向角传感器)校准状态                            $    $               $    $  ANS011.BYTE008  $  if((x&0x80)==0x80)y=@06f4;else y=@06f5;
  $  051.驻车距离控制系统状态                                       $    $               $    $  ANS012.BYTE004  $  if((x&0xE0)==0x00)y=@0aae;else if((x&0xE0)==0x20)y=@0aaf;else if((x&0xE0)==0x40)y=@0ab0;else if((x&0xE0)==0x60)y=@0ab1;else if((x&0xE0)==0x80)y=@0ab2;else if((x&0xE0)==0xA0)y=@0ab3;else if((x&0xE0)==0xC0)y=@0ab4;else y=@01a9;
  $  052.驻车距离控制配置状态                                       $    $               $    $  ANS012.BYTE004  $  if((x&0x1C)==0x00)y=@0a8c;else if((x&0x1C)==0x04)y=@0a8d;else if((x&0x1C)==0x08)y=@0a8e;else if((x&0x1C)==0x0C)y=@0a8f;else y=@01a9;
  $  053.前中左障碍范围                                             $    $               $    $  ANS012.BYTE005  $  if((x&0xF0)==0x00) y=@0a90;else if((x&0xF0)==0x10) y=@0a91;else if((x&0xF0)==0x20) y=@0a92;else if((x&0xF0)==0x30) y=@0a93;else if((x&0xF0)==0x40) y=@0a94;else if((x&0xF0)==0x50) y=@0a95;else if((x&0xF0)==0x60) y=@0a96;else if((x&0xF0)==0x70) y=@0a97;else if((x&0xF0)==0x80) y=@0a98;else if((x&0xF0)==0x90) y=@0a99;else if((x&0xF0)==0xA0) y=@0a9a;else if((x&0xF0)==0xB0) y=@0a9b;else if((x&0xF0)==0xC0) y=@0a9c;else if((x&0xF0)==0xD0) y=@0a9d;else if((x&0xF0)==0xE0) y=@0a9e;else y=@0a9f;
  $  054.前中右障碍范围                                             $    $               $    $  ANS012.BYTE005  $  if((x&0x0F)==0x00) y=@0a90;else if((x&0x0F)==0x01) y=@0a91;else if((x&0x0F)==0x02) y=@0a92;else if((x&0x0F)==0x03) y=@0a93;else if((x&0x0F)==0x04) y=@0a94;else if((x&0x0F)==0x05) y=@0a95;else if((x&0x0F)==0x06) y=@0a96;else if((x&0x0F)==0x07) y=@0a97;else if((x&0x0F)==0x08) y=@0a98;else if((x&0x0F)==0x09) y=@0a99;else if((x&0x0F)==0x0A) y=@0a9a;else if((x&0x0F)==0x0B) y=@0a9b;else if((x&0x0F)==0x0C) y=@0a9c;else if((x&0x0F)==0x0D) y=@0a9d;else if((x&0x0F)==0x0E) y=@0a9e;else y=@0a9f;
  $  055.后中左障碍范围                                             $    $               $    $  ANS012.BYTE006  $  if((x&0xF0)==0x00) y=@0a90;else if((x&0xF0)==0x10) y=@0a91;else if((x&0xF0)==0x20) y=@0a92;else if((x&0xF0)==0x30) y=@0a93;else if((x&0xF0)==0x40) y=@0a94;else if((x&0xF0)==0x50) y=@0a95;else if((x&0xF0)==0x60) y=@0a96;else if((x&0xF0)==0x70) y=@0a97;else if((x&0xF0)==0x80) y=@0a98;else if((x&0xF0)==0x90) y=@0a99;else if((x&0xF0)==0xA0) y=@0a9a;else if((x&0xF0)==0xB0) y=@0a9b;else if((x&0xF0)==0xC0) y=@0a9c;else if((x&0xF0)==0xD0) y=@0a9d;else if((x&0xF0)==0xE0) y=@0a9e;else y=@0a9f;
  $  056.后中右障碍范围                                             $    $               $    $  ANS012.BYTE006  $  if((x&0x0F)==0x00) y=@0a90;else if((x&0x0F)==0x01) y=@0a91;else if((x&0x0F)==0x02) y=@0a92;else if((x&0x0F)==0x03) y=@0a93;else if((x&0x0F)==0x04) y=@0a94;else if((x&0x0F)==0x05) y=@0a95;else if((x&0x0F)==0x06) y=@0a96;else if((x&0x0F)==0x07) y=@0a97;else if((x&0x0F)==0x08) y=@0a98;else if((x&0x0F)==0x09) y=@0a99;else if((x&0x0F)==0x0A) y=@0a9a;else if((x&0x0F)==0x0B) y=@0a9b;else if((x&0x0F)==0x0C) y=@0a9c;else if((x&0x0F)==0x0D) y=@0a9d;else if((x&0x0F)==0x0E) y=@0a9e;else y=@0a9f;
  $  057.左前障碍范围                                               $    $               $    $  ANS012.BYTE007  $  if((x&0xF0)==0x00) y=@0a90;else if((x&0xF0)==0x10) y=@0a91;else if((x&0xF0)==0x20) y=@0a92;else if((x&0xF0)==0x30) y=@0a93;else if((x&0xF0)==0x40) y=@0a94;else if((x&0xF0)==0x50) y=@0a95;else if((x&0xF0)==0x60) y=@0a96;else if((x&0xF0)==0x70) y=@0a97;else if((x&0xF0)==0x80) y=@0a98;else if((x&0xF0)==0x90) y=@0a99;else if((x&0xF0)==0xA0) y=@0a9a;else if((x&0xF0)==0xB0) y=@0a9b;else if((x&0xF0)==0xC0) y=@0a9c;else if((x&0xF0)==0xD0) y=@0a9d;else if((x&0xF0)==0xE0) y=@0a9e;else y=@0a9f;
  $  058.右前障碍范围                                               $    $               $    $  ANS012.BYTE007  $  if((x&0x0F)==0x00) y=@0a90;else if((x&0x0F)==0x01) y=@0a91;else if((x&0x0F)==0x02) y=@0a92;else if((x&0x0F)==0x03) y=@0a93;else if((x&0x0F)==0x04) y=@0a94;else if((x&0x0F)==0x05) y=@0a95;else if((x&0x0F)==0x06) y=@0a96;else if((x&0x0F)==0x07) y=@0a97;else if((x&0x0F)==0x08) y=@0a98;else if((x&0x0F)==0x09) y=@0a99;else if((x&0x0F)==0x0A) y=@0a9a;else if((x&0x0F)==0x0B) y=@0a9b;else if((x&0x0F)==0x0C) y=@0a9c;else if((x&0x0F)==0x0D) y=@0a9d;else if((x&0x0F)==0x0E) y=@0a9e;else y=@0a9f;
  $  059.左后障碍范围                                               $    $               $    $  ANS012.BYTE008  $  if((x&0xF0)==0x00) y=@0a90;else if((x&0xF0)==0x10) y=@0a91;else if((x&0xF0)==0x20) y=@0a92;else if((x&0xF0)==0x30) y=@0a93;else if((x&0xF0)==0x40) y=@0a94;else if((x&0xF0)==0x50) y=@0a95;else if((x&0xF0)==0x60) y=@0a96;else if((x&0xF0)==0x70) y=@0a97;else if((x&0xF0)==0x80) y=@0a98;else if((x&0xF0)==0x90) y=@0a99;else if((x&0xF0)==0xA0) y=@0a9a;else if((x&0xF0)==0xB0) y=@0a9b;else if((x&0xF0)==0xC0) y=@0a9c;else if((x&0xF0)==0xD0) y=@0a9d;else if((x&0xF0)==0xE0) y=@0a9e;else y=@0a9f;
  $  060.右后障碍范围                                               $    $               $    $  ANS012.BYTE008  $  if((x&0x0F)==0x00) y=@0a90;else if((x&0x0F)==0x01) y=@0a91;else if((x&0x0F)==0x02) y=@0a92;else if((x&0x0F)==0x03) y=@0a93;else if((x&0x0F)==0x04) y=@0a94;else if((x&0x0F)==0x05) y=@0a95;else if((x&0x0F)==0x06) y=@0a96;else if((x&0x0F)==0x07) y=@0a97;else if((x&0x0F)==0x08) y=@0a98;else if((x&0x0F)==0x09) y=@0a99;else if((x&0x0F)==0x0A) y=@0a9a;else if((x&0x0F)==0x0B) y=@0a9b;else if((x&0x0F)==0x0C) y=@0a9c;else if((x&0x0F)==0x0D) y=@0a9d;else if((x&0x0F)==0x0E) y=@0a9e;else y=@0a9f;
  $  061.前障碍距离                                                 $    $               $    $  ANS012.BYTE009  $  y=x;
  $  062.后障碍距离                                                 $    $               $    $  ANS012.BYTE010  $  y=x;
  $  063.无驱动平均车速                                             $    $  km/h         $    $  ANS013.BYTE004  $  y=(x1*256+x2)*512/65535;
  $  064.无驱动平均车速有效性                                       $    $               $    $  ANS013.BYTE005  $  if((x&0x01)==0x01)y=@0136;else y=@00bb;
  $  065.里程                                                       $    $  km           $    $  ANS013.BYTE006  $  y=x1*256*256+x2*256+x3;
  $  066.里程有效性                                                 $    $               $    $  ANS013.BYTE009  $  if((x&0x80)==0x80)y=@0136;else y=@00bb;
  $  067.左非驱动轮转动距离脉冲计数器                               $    $               $    $  ANS014.BYTE004  $  y=(x1*256+x2)*1023/65535;
  $  068.左侧未驱动轮旋转复位发生                                   $    $               $    $  ANS014.BYTE005  $  if((x&0x20)==0x20)y=@00ca;else y=@00c9;
  $  069.左侧未驱动轮旋转复位发生有效性                             $    $               $    $  ANS014.BYTE005  $  if((x&0x10)==0x10)y=@0136;else y=@00bb;
  $  070.右非驱动轮转动距离脉冲计数器                               $    $               $    $  ANS014.BYTE006  $  y=(x1*256+x2)*1023/65535;
  $  071.右侧未驱动轮旋转复位发生                                   $    $               $    $  ANS014.BYTE007  $  if((x&0x20)==0x20)y=@00ca;else y=@00c9;
  $  072.右侧未驱动轮旋转复位发生有效性                             $    $               $    $  ANS014.BYTE007  $  if((x&0x10)==0x10)y=@0136;else y=@00bb;
  $  073.FICM下线配置版本                                           $    $               $    $  ANS015.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  074.控制LCD背光使能线                                          $    $               $    $  ANS016.BYTE004  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  075.控制器外部放大器静音线                                     $    $               $    $  ANS016.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  076.控制ACC线                                                  $    $               $    $  ANS016.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  077.通用输出(复位)                                             $    $               $    $  ANS016.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  078.前屏唤醒                                                   $    $               $    $  ANS016.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  079.预留信号线                                                 $    $               $    $  ANS016.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  080.打开/关闭蓝牙                                              $    $               $    $  ANS016.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  081.开启/关闭WIFI                                              $    $               $    $  ANS016.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  082.当前电瓶电压                                               $    $  V            $    $  ANS017.BYTE004  $  y=x*0.1;
  $  083.当前MIC电压                                                $    $  V            $    $  ANS017.BYTE005  $  y=x*0.1;
  $  084.当前调谐器天线电压                                         $    $  V            $    $  ANS017.BYTE006  $  y=x*0.1;
  $  085.当前左转向轮控制器电压                                     $    $  V            $    $  ANS017.BYTE007  $  y=x*0.1;
  $  086.当前右转向轮控制器电压                                     $    $  V            $    $  ANS017.BYTE008  $  y=x*0.1;
  $  087.FICM时区                                                   $    $               $    $  ANS018.BYTE004  $  y=x;
  $  088.盲点检测系统开关反馈                                       $    $               $    $  ANS019.BYTE004  $  if((x&0xC0)==0x00)y=@02ce;else if((x&0xC0)==0x40)y=@08cf;else if((x&0xC0)==0x80)y=@08d0;else y=@01a9;
  $  089.盲点检测系统开关状态                                       $    $               $    $  ANS019.BYTE004  $  if((x&0x20)==0x20)y=@0136;else y=@00bb;
  $  090.前倒车雷达使能状态                                         $    $               $    $  ANS019.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  091.停车辅助前区域2对象状态                                    $    $               $    $  ANS019.BYTE005  $  if((x&0xE0)==0x00)y=@0a85;else if((x&0xE0)==0x20)y=@03a7;else if((x&0xE0)==0x40)y=@0a86;else if((x&0xE0)==0x60)y=@0a87;else if((x&0xE0)==0x80)y=@0a88;else y=@05ca;
  $  092.停车辅助前区域3对象状态                                    $    $               $    $  ANS019.BYTE005  $  if((x&0x1C)==0x00)y=@0a85;else if((x&0x1C)==0x04)y=@03a7;else if((x&0x1C)==0x08)y=@0a86;else if((x&0x1C)==0x0C)y=@0a87;else if((x&0x1C)==0x10)y=@0a88;else y=@05ca;
  $  093.停车辅助前区域4对象状态                                    $    $               $    $  ANS019.BYTE006  $  if((x&0xE0)==0x00)y=@0a85;else if((x&0xE0)==0x20)y=@03a7;else if((x&0xE0)==0x40)y=@0a86;else if((x&0xE0)==0x60)y=@0a87;else if((x&0xE0)==0x80)y=@0a88;else y=@05ca;
  $  094.停车辅助前区域5对象状态                                    $    $               $    $  ANS019.BYTE006  $  if((x&0x1C)==0x00)y=@0a85;else if((x&0x1C)==0x04)y=@03a7;else if((x&0x1C)==0x08)y=@0a86;else if((x&0x1C)==0x0C)y=@0a87;else if((x&0x1C)==0x10)y=@0a88;else y=@05ca;
  $  095.停车辅助前区域8对象状态                                    $    $               $    $  ANS019.BYTE007  $  if((x&0xE0)==0x00)y=@0a85;else if((x&0xE0)==0x20)y=@03a7;else if((x&0xE0)==0x40)y=@0a86;else if((x&0xE0)==0x60)y=@0a87;else if((x&0xE0)==0x80)y=@0a88;else y=@05ca;
  $  096.停车辅助前区域9对象状态                                    $    $               $    $  ANS019.BYTE007  $  if((x&0x1C)==0x00)y=@0a85;else if((x&0x1C)==0x04)y=@03a7;else if((x&0x1C)==0x08)y=@0a86;else if((x&0x1C)==0x0C)y=@0a87;else if((x&0x1C)==0x10)y=@0a88;else y=@05ca;
  $  097.停车辅助前区域10对象状态                                   $    $               $    $  ANS019.BYTE008  $  if((x&0xE0)==0x00)y=@0a85;else if((x&0xE0)==0x20)y=@03a7;else if((x&0xE0)==0x40)y=@0a86;else if((x&0xE0)==0x60)y=@0a87;else if((x&0xE0)==0x80)y=@0a88;else y=@05ca;
  $  098.停车辅助前区域11对象状态                                   $    $               $    $  ANS019.BYTE008  $  if((x&0x1C)==0x00)y=@0a85;else if((x&0x1C)==0x04)y=@03a7;else if((x&0x1C)==0x08)y=@0a86;else if((x&0x1C)==0x0C)y=@0a87;else if((x&0x1C)==0x10)y=@0a88;else y=@05ca;
  $  099.全地形四驱校验值                                           $    $               $    $  ANS020.BYTE004  $  y=x;
  $  100.驱动模式显示                                               $    $               $    $  ANS020.BYTE005  $  if((x&0xF0)==0x00)y=@0a89;else if((x&0xF0)==0x10)y=@0267;else if((x&0xF0)==0x20)y=@0295;else if((x&0xF0)==0x30)y=@05ba;else if((x&0xF0)==0x40)y=@05bb;else if((x&0xF0)==0x50)y=@05bc;else if((x&0xF0)==0x60)y=@05bd;else if((x&0xF0)==0x70)y=@0296;else if((x&0xF0)==0x80)y=@00b3;else y=@01a9;
  $  101.全地形四驱消息次数                                         $    $               $    $  ANS020.BYTE005  $  y=x&0x0F;
  $  102.全地形四驱驱动模式显示有效                                 $    $               $    $  ANS020.BYTE006  $  if((x&0x80)==0x80)y=@0136;else y=@00bb;
  $  103.智能驾驶辅助系统，车道偏离预警准确的反馈                   $    $               $    $  ANS021.BYTE004  $  if((x&0xE0)==0x00)y=@0629;else if((x&0xE0)==0x20)y=@06c7;else if((x&0xE0)==0x40)y=@08ce;else if((x&0xE0)==0x60)y=@06cb;else y=@01a9;
  $  104.智能驾驶辅助系统，限速信息主开关反馈                       $    $               $    $  ANS021.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  105.智能驾驶辅助系统，前方配置预防辅助制动系统主开关反馈       $    $               $    $  ANS021.BYTE005  $  if((x&0xE0)==0x00)y=@02ce;else if((x&0xE0)==0x20)y=@000f;else if((x&0xE0)==0x40)y=@0a8a;else if((x&0xE0)==0x60)y=@0a8b;else y=@01a9;
  $  106.驱动选择灵敏度电平                                         $    $               $    $  ANS021.BYTE005  $  if((x&0x1C)==0x00)y=@02ce;else if((x&0x1C)==0x04)y=@06c7;else if((x&0x1C)==0x08)y=@08ce;else if((x&0x1C)==0x0C)y=@06cb;else y=@01a9;
  $  107.智能驾驶辅助系统，前方碰撞预防辅助制动系统开关可反馈       $    $               $    $  ANS021.BYTE005  $  if((x&0x01)==0x01)y=@0629;else y=@0588;
  $  108.智能驾驶辅助系统，车道保持辅助系统主开关反馈               $    $               $    $  ANS021.BYTE006  $  if((x&0xE0)==0x00)y=@02ce;else if((x&0xE0)==0x20)y=@000f;else if((x&0xE0)==0x40)y=@0aa5;else if((x&0xE0)==0x60)y=@0aa6;else y=@01a9;
  $  109.智能驾驶辅助系统，速度辅助系统反馈                         $    $               $    $  ANS021.BYTE006  $  if((x&0x1C)==0x00)y=@000f;else if((x&0x1C)==0x04)y=@0aa7;else if((x&0x1C)==0x08)y=@0aa8;else y=@01a9;
  $  110.智能驾驶辅助系统，消息次数                                 $    $               $    $  ANS021.BYTE007  $  y=(x&0xF0)/16;
  $  111.智能驾驶辅助系统，车道保持辅助系统主开关可反馈             $    $               $    $  ANS021.BYTE007  $  if((x&0x08)==0x08)y=@0629;else y=@0588;
  $  112.智能驾驶辅助系统校验值                                     $    $               $    $  ANS021.BYTE008  $  y=x;
  $  113.智能驾驶辅助系统校验值                                     $    $               $    $  ANS021.BYTE009  $  y=x;
  $  114.镜面自动倾斜反馈                                           $    $               $    $  ANS022.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  115.座椅记忆模块欢迎功能反馈                                   $    $               $    $  ANS022.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  116.座椅记忆模块钥匙识别反馈                                   $    $               $    $  ANS022.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  117.自动空调模式                                               $    $               $    $  ANS023.BYTE004  $  if((x&0xF0)==0x00)y=@012b;else if((x&0xF0)==0x10)y=@08d5;else if((x&0xF0)==0x20)y=@08d6;else if((x&0xF0)==0x30)y=@0898;else if((x&0xF0)==0x40)y=@0899;else if((x&0xF0)==0x50)y=@089a;else if((x&0xF0)==0x60)y=@08d7;else if((x&0xF0)==0xF0)y=@0136;else y=@01a9;
  $  118.自动空调循环模式                                           $    $               $    $  ANS023.BYTE004  $  if((x&0x0C)==0x00)y=@0895;else if((x&0x0C)==0x04)y=@0896;else if((x&0x0C)==0x08)y=@08d8;else y=@0136;
  $  119.自动空调开启请求                                           $    $               $    $  ANS023.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  120.自动空调开启请求有效性                                     $    $               $    $  ANS023.BYTE004  $  if((x&0x01)==0x01)y=@0136;else y=@00bb;
  $  121.HVAC采暖通风和空调系统前除霜状态                           $    $               $    $  ANS023.BYTE005  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  122.HVAC采暖通风和空调系统前除霜状态有效性                     $    $               $    $  ANS023.BYTE005  $  if((x&0x40)==0x40)y=@0136;else y=@00bb;
  $  123.HVAC采暖通风和空调系统后除霜状态                           $    $               $    $  ANS023.BYTE005  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  124.HVAC采暖通风和空调系统后除霜状态有效性                     $    $               $    $  ANS023.BYTE005  $  if((x&0x10)==0x10)y=@0136;else y=@00bb;
  $  125.自动空调自动模式                                           $    $               $    $  ANS023.BYTE005  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  126.HVAC采暖通风和空调系统自动显示状态有效性                   $    $               $    $  ANS023.BYTE005  $  if((x&0x04)==0x04)y=@0136;else y=@00bb;
  $  127.HVAC采暖通风和空调系统空气净化器指示灯状态                 $    $               $    $  ANS023.BYTE005  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  128.HVAC采暖通风和空调系统空气净化指示灯状态有效性             $    $               $    $  ANS023.BYTE005  $  if((x&0x01)==0x01)y=@0136;else y=@00bb;
  $  129.HVAC采暖通风和空调系统环境温度掩码                         $    $               $    $  ANS023.BYTE006  $  if((x&0x80)==0x80)y=@060e;else y=@060f;
  $  130.自动空调电源状态                                           $    $               $    $  ANS023.BYTE006  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  131.HVAC风量                                                   $    $               $    $  ANS023.BYTE006  $  if((x&0x3C)==0x00)y=@04d4;else if((x&0x3C)==0x04)y=@04d3;else if((x&0x3C)==0x08)y=@0169;else if((x&0x3C)==0x0C)y=@016a;else if((x&0x3C)==0x10)y=@016b;else if((x&0x3C)==0x14)y=@054a;else if((x&0x3C)==0x18)y=@054b;else if((x&0x3C)==0x1C)y=@054c;else if((x&0x3C)==0x20)y=@054d;else if((x&0x3C)==0x24)y=@0aa0;else if((x&0x3C)==0x3C)y=@04ec;else y=@01a9;
  $  132.自动空调请求显示                                           $    $               $    $  ANS023.BYTE006  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  133.自动空调显示信息                                           $    $               $    $  ANS023.BYTE006  $  if((x&0x01)==0x01)y=@00ca;else y=@00c9;
  $  134.自动空调温度                                               $    $  degree C     $    $  ANS024.BYTE004  $  y=x-40;
  $  135.HVAC(自动空调)环境温度                                     $    $  degree C     $    $  ANS024.BYTE005  $  y=x-40;
  $  136.蒸发器温度                                                 $    $  degree C     $    $  ANS024.BYTE006  $  y=x-40;
  $  137.变速箱换挡杆位置                                           $    $               $    $  ANS025.BYTE004  $  if((x&0x80)==0x80)y=@00ca;else y=@00c9;
  $  138.动力模式                                                   $    $               $    $  ANS025.BYTE004  $  if((x&0x70)==0x00)y=@0137;else if((x&0x70)==0x10)y=@009d;else if((x&0x70)==0x20)y=@0a00;else if((x&0x70)==0x30)y=@0474;else if((x&0x70)==0x40)y=@0655;else if((x&0x70)==0x50)y=@0656;else if((x&0x70)==0x60)y=@0657;else if((x&0x70)==0x70)y=@0525;else y=@01a9;
  $  139.点火打开                                                   $    $               $    $  ANS025.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  140.背景灯                                                     $    $               $    $  ANS025.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  141.网络                                                       $    $               $    $  ANS025.BYTE004  $  if((x&0x02)==0x02)y=@0aa1;else y=@0aa2;
  $  142.倒车档                                                     $    $               $    $  ANS025.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  143.电动尾门闩锁状态                                           $    $               $    $  ANS026.BYTE004  $  if((x&0xE0)==0x00)y=@0aa3;else if((x&0xE0)==0x20)y=@0052;else if((x&0xE0)==0x40)y=@00ec;else if((x&0xE0)==0x60)y=@00ed;else if((x&0xE0)==0x80)y=@000f;else if((x&0xE0)==0xA0)y=@00ee;else if((x&0xE0)==0xC0)y=@00ef;else y=@0aa4;
  $  144.驾驶员安全带警告                                           $    $               $    $  ANS027.BYTE004  $  if((x&0x80)==0x80)y=@0135;else y=@05c2;
  $  145.ECM可用检测                                                $    $               $    $  ANS028.BYTE004  $  if((x&0x80)==0x80)y=@0588;else y=@0629;
  $  146.TCM可用检测                                                $    $               $    $  ANS028.BYTE004  $  if((x&0x40)==0x40)y=@0588;else y=@0629;
  $  147.SDM可用检测                                                $    $               $    $  ANS028.BYTE004  $  if((x&0x20)==0x20)y=@0588;else y=@0629;
  $  148.SCS可用检测                                                $    $               $    $  ANS028.BYTE004  $  if((x&0x10)==0x10)y=@0588;else y=@0629;
  $  149.TBOX可用检测                                               $    $               $    $  ANS028.BYTE004  $  if((x&0x08)==0x08)y=@0588;else y=@0629;
  $  150.FVCM可用检测                                               $    $               $    $  ANS028.BYTE004  $  if((x&0x04)==0x04)y=@0588;else y=@0629;
  $  151.SAS可用检测                                                $    $               $    $  ANS028.BYTE004  $  if((x&0x02)==0x02)y=@0588;else y=@0629;
  $  152.PDC可用检测                                                $    $               $    $  ANS028.BYTE004  $  if((x&0x01)==0x01)y=@0588;else y=@0629;
  $  153.燃料总容量                                                 $    $  L            $    $  ANS029.BYTE004  $  y=((x1*256)+(x2&0xF0))*0.0075;
  $  154.燃油液位百分比有效性                                       $    $               $    $  ANS029.BYTE004  $  if((x&0x08)==0x08)y=@00bb;else y=@04ec;
  $  155.平均燃料消耗有效性                                         $    $               $    $  ANS029.BYTE004  $  if((x&0x04)==0x04)y=@00bb;else y=@04ec;
  $  156.燃料百分比                                                 $    $  %            $    $  ANS029.BYTE005  $  y=x*100/255.0;
  $  157.平均燃料消耗                                               $    $  L/100km      $    $  ANS029.BYTE006  $  y=x*0.1;
  $  158.燃油消耗                                                   $    $  mL           $    $  ANS029.BYTE007  $  y=((x1*256)+(x2&0xF0))/16;
  $  159.系统电源模式                                               $    $               $    $  ANS030.BYTE004  $  if((x&0xC0)==0x00)y=@000f;else if((x&0xC0)==0x40)y=@0463;else if((x&0xC0)==0x80)y=@009d;else y=@009e;
  $  160.系统操作模式                                               $    $               $    $  ANS030.BYTE004  $  if((x&0x38)==0x00)y=@01d1;else if((x&0x38)==0x08)y=@0ac8;else if((x&0x38)==0x10)y=@0ac9;else if((x&0x38)==0x18)y=@0aca;else if((x&0x38)==0x20)y=@0acb;else if((x&0x38)==0x28)y=@0acc;else y=@01a9;
  $  161.主运行曲柄状态                                             $    $               $    $  ANS030.BYTE004  $  if((x&0x08)==0x08)y=@00bb;else y=@04ec;
  $  162.主配件状态                                                 $    $               $    $  ANS030.BYTE004  $  if((x&0x04)==0x04)y=@00bb;else y=@04ec;
  $  163.系统备用电源模式状态                                       $    $               $    $  ANS030.BYTE005  $  if((x&0xC0)==0x00)y=@000f;else if((x&0xC0)==0x40)y=@0463;else if((x&0xC0)==0x80)y=@009d;else y=@009e;
  $  164.系统备份电源模式启用                                       $    $               $    $  ANS030.BYTE005  $  if((x&0x20)==0x20)y=@00ca;else y=@00c9;
  $  165.主备用电源可用性                                           $    $               $    $  ANS030.BYTE005  $  if((x&0x10)==0x10)y=@00ca;else y=@00c9;
  $  166.系统电压模式                                               $    $               $    $  ANS031.BYTE004  $  if((x&0xC0)==0x00)y=@01d1;else if((x&0xC0)==0x40)y=@0acd;else if((x&0xC0)==0x80)y=@0ace;else y=@0acf;
  $  167.系统电压模式有效性                                         $    $               $    $  ANS031.BYTE004  $  if((x&0x20)==0x20)y=@00bb;else y=@04ec;
  $  168.系统电压有效性                                             $    $               $    $  ANS031.BYTE004  $  if((x&0x10)==0x10)y=@00bb;else y=@04ec;
  $  169.系统电压                                                   $    $  V            $    $  ANS031.BYTE004  $  y=x+4;
  $  170.轮胎监视状态                                               $    $               $    $  ANS032.BYTE004  $  if((x&0xE0)==0x00)y=@0aae;else if((x&0xE0)==0x20)y=@0ae3;else if((x&0xE0)==0x40)y=@0ae4;else if((x&0xE0)==0x60)y=@04ec;else if((x&0xE0)==0x80)y=@0abc;else if((x&0xE0)==0xA0)y=@04ec;else if((x&0xE0)==0xC0)y=@04ec;else y=@0ae5;
  $  171.年                                                         $    $               $    $  ANS033.BYTE004  $  y=2000+x;
  $  172.月                                                         $    $               $    $  ANS033.BYTE005  $  if((x&0xF0)==0x00)y=@01a9;else if((x&0xF0)==0x10)y=@08a9;else if((x&0xF0)==0x20)y=@08aa;else if((x&0xF0)==0x30)y=@08ab;else if((x&0xF0)==0x40)y=@08ac;else if((x&0xF0)==0x50)y=@08ad;else if((x&0xF0)==0x60)y=@08ae;else if((x&0xF0)==0x70)y=@08af;else if((x&0xF0)==0x80)y=@08b0;else if((x&0xF0)==0x90)y=@08b1;else if((x&0xF0)==0xA0)y=@08b2;else if((x&0xF0)==0xB0)y=@08b3;else if((x&0xF0)==0xC0)y=@08b4;else y=@01a9;
  $  173.日                                                         $    $               $    $  ANS033.BYTE006  $  y=x*31/255;
  $  174.小时                                                       $    $               $    $  ANS033.BYTE007  $  y=x*31/255;
  $  175.分钟                                                       $    $               $    $  ANS033.BYTE008  $  y=x*63/255;
  $  176.秒                                                         $    $               $    $  ANS033.BYTE009  $  y=(x&0xFC)*63/255;
  $  177.当前时间格式                                               $    $               $    $  ANS033.BYTE009  $  if((x&0x02)==0x02)y=@05ec;else y=@05ed;
  $  178.声音节奏时间                                               $    $               $    $  ANS034.BYTE004  $  y=x*10;
  $  179.声音占空比                                                 $    $               $    $  ANS034.BYTE005  $  y=x*0.392157;
  $  180.声音                                                       $    $               $    $  ANS034.BYTE006  $  if((x&0xF0)==0x00)y=@05cc;else if((x&0xF0)==0x10)y=@05cd;else if((x&0x0F)==0x20)y=@05ce;else if((x&0xF0)==0x30)y=@05cf;else if((x&0xF0)==0x40)y=@05d0;else if((x&0xF0)==0x50)y=@05d1;else y=@01a9;
  $  181.右后声音位置                                               $    $               $    $  ANS034.BYTE006  $  if((x&0x08)==0x08)y=@00ca;else y=@00c9;
  $  182.左后声音位置                                               $    $               $    $  ANS034.BYTE006  $  if((x&0x04)==0x04)y=@00ca;else y=@00c9;
  $  183.右前声音位置                                               $    $               $    $  ANS034.BYTE006  $  if((x&0x02)==0x02)y=@00ca;else y=@00c9;
  $  184.左前声音位置                                               $    $               $    $  ANS034.BYTE006  $  if((x&0x01)==0x01)y=@00ca;else y=@00c9;
  $  185.集群向上按钮                                               $    $               $    $  ANS035.BYTE004  $  if((x&0xC0)==0x00)y=@05a6;else if((x&0xC0)==0x40)y=@05a7;else if((x&0xC0)==0x80)y=@05a8;else y=@0004;
  $  186.集群向下按钮                                               $    $               $    $  ANS035.BYTE004  $  if((x&0x30)==0x00)y=@05a6;else if((x&0x30)==0x10)y=@05a7;else if((x&0x30)==0x20)y=@05a8;else y=@0004;
  $  187.集群向左按钮                                               $    $               $    $  ANS035.BYTE004  $  if((x&0x0C)==0x00)y=@05a6;else if((x&0x0C)==0x04)y=@05a7;else if((x&0x0C)==0x08)y=@05a8;else y=@0004;
  $  188.集群向右按钮                                               $    $               $    $  ANS035.BYTE004  $  if((x&0x03)==0x00)y=@05a6;else if((x&0x03)==0x01)y=@05a7;else if((x&0x03)==0x02)y=@05a8;else y=@0004;
  $  189.集群选项卡请求                                             $    $               $    $  ANS035.BYTE005  $  if((x&0xF0)==0x00)y=@05a9;else if((x&0xF0)==0x10)y=@05aa;else if((x&0xF0)==0x20)y=@05ab;else if((x&0xF0)==0x30)y=@05ac;else if((x&0xF0)==0x40)y=@05ad;else if((x&0xF0)==0x50)y=@05ae;else if((x&0xF0)==0x60)y=@05af;else y=@0004;
  $  190.集群进入按钮                                               $    $               $    $  ANS035.BYTE005  $  if((x&0x0C)==0x00)y=@05a6;else if((x&0x0C)==0x04)y=@05a7;else if((x&0x0C)==0x08)y=@05a8;else y=@0004;
  $  191.集群照明级别                                               $    $               $    $  ANS035.BYTE005  $  if((x&0x03)==0x00)y=@0ad0;else if((x&0x03)==0x01)y=@0ad1;else if((x&0x03)==0x02)y=@0ad2;else y=@0004;
  $  192.集群超速阈值                                               $    $               $    $  ANS035.BYTE006  $  y=(x&0xF0)/16;
  $  193.簇距离单位                                                 $    $               $    $  ANS035.BYTE006  $  if((x&0x02)==0x02)y=@0ad3;else y=@0ad4;
  $  194.集群燃料消耗单位                                           $    $               $    $  ANS035.BYTE007  $  if((x&0xC0)==0x00)y=@0ad5;else if((x&0xC0)==0x40)y=@0ad6;else if((x&0xC0)==0x80)y=@0ad7;else y=@0ad8;
  $  195.集群温度单位                                               $    $               $    $  ANS035.BYTE007  $  if((x&0x30)==0x00)y=@0ad9;else if((x&0x30)==0x10)y=@0ada;else if((x&0x30)==0x20)y=@0629;else y=@0004;
  $  196.语言设置                                                   $    $               $    $  ANS035.BYTE008  $  if((x&0xFE)==0x00)y=@074a;else if((x&0xFE)==0x02)y=@074b;else if((x&0xFE)==0x04)y=@074c;else if((x&0xFE)==0x06)y=@0adb;else if((x&0xFE)==0x08)y=@08b6;else if((x&0xFE)==0x0A)y=@08b7;else if((x&0xFE)==0x0C)y=@08b8;else if((x&0xFE)==0x0E)y=@08b9;else if((x&0xFE)==0x10)y=@0adc;else if((x&0xFE)==0x12)y=@0add;else if((x&0xFE)==0x14)y=@08bc;else if((x&0xFE)==0x16)y=@0ade;else if((x&0xFE)==0x18)y=@08be;else if((x&0xFE)==0x1A)y=@08bf;else if((x&0xFE)==0x1C)y=@08c0;else if((x&0xFE)==0x1E)y=@0adf;else if((x&0xFE)==0x20)y=@08c2;else if((x&0xFE)==0x22)y=@08c3;else if((x&0xFE)==0x24)y=@08c4;else if((x&0xFE)==0x28)y=@08c6;else if((x&0xFE)==0x26)y=@08c5;else if((x&0xFE)==0x2A)y=@0ae0;else if((x&0xFE)==0x2C)y=@08c8;else if((x&0xFE)==0x2E)y=@08c9;else if((x&0xFE)==0x30)y=@08ca;else y=@01a9;
  $  197.保持行驶距离                                               $    $  km           $    $  ANS036.BYTE004  $  y=((x1*256)+(x2&0xF0))/16;
  $  198.显示测量系统                                               $    $               $    $  ANS036.BYTE005  $  if((x&0x08)==0x08)y=@0ae1;else y=@0ae2;
  $  199.当前超速功能状态                                           $    $               $    $  ANS036.BYTE005  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  200.车辆速度                                                   $    $  km/h         $    $  ANS036.BYTE006  $  y=x;
  $  201.集群SIA日期                                                $    $               $    $  ANS037.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  202.集群SIA距离                                                $    $               $    $  ANS037.BYTE007  $  y=x1*256+x2;

  $)  01.数据流2
  $  01.数据流2
  $  REQ000:761 03 22 B0 A7 00 00 00 00       $  ANS000:769 03 22 B0 A7 00 00 00 00
  $  REQ001:761 03 22 B0 11 00 00 00 00       $  ANS001:769 03 22 B0 11 00 00 00 00
  $  REQ002:761 03 22 B0 0F 00 00 00 00       $  ANS002:769 03 22 B0 0F 00 00 00 00
  $  REQ003:761 03 22 B0 10 00 00 00 00       $  ANS003:769 03 22 B0 10 00 00 00 00
  $  REQ004:761 03 22 B0 0E 00 00 00 00       $  ANS004:769 03 22 B0 0E 00 00 00 00
  $  REQ005:761 03 22 B1 03 00 00 00 00       $  ANS005:769 03 22 B1 03 00 00 00 00
  $  REQ006:761 03 22 B1 05 00 00 00 00       $  ANS006:769 03 22 B1 05 00 00 00 00
  $  REQ007:761 03 22 B1 02 00 00 00 00       $  ANS007:769 03 22 B1 02 00 00 00 00
  $  REQ008:761 03 22 B1 04 00 00 00 00       $  ANS008:769 03 22 B1 04 00 00 00 00
  $  REQ009:761 03 22 B0 D1 00 00 00 00       $  ANS009:769 03 22 B0 D1 00 00 00 00
  $  REQ010:761 03 22 B0 B5 00 00 00 00       $  ANS010:769 03 22 B0 B5 00 00 00 00
  $  REQ011:761 03 22 B0 B3 00 00 00 00       $  ANS011:769 03 22 B0 B3 00 00 00 00
  $  REQ012:761 03 22 B0 B1 00 00 00 00       $  ANS012:769 03 22 B0 B1 00 00 00 00
  $  REQ013:761 03 22 B0 B2 00 00 00 00       $  ANS013:769 03 22 B0 B2 00 00 00 00
  $  REQ014:761 03 22 B0 01 00 00 00 00       $  ANS014:769 03 22 B0 01 00 00 00 00
  $  REQ015:761 03 22 B0 06 00 00 00 00       $  ANS015:769 03 22 B0 06 00 00 00 00
  $  REQ016:761 03 22 B0 C1 00 00 00 00       $  ANS016:769 03 22 B0 C1 00 00 00 00
  $  REQ017:761 03 22 D0 01 00 00 00 00       $  ANS017:769 03 22 D0 01 00 00 00 00
  $  REQ018:761 03 22 B1 0D 00 00 00 00       $  ANS018:769 03 22 B1 0D 00 00 00 00
  $  REQ019:761 03 22 D1 02 00 00 00 00       $  ANS019:769 03 22 D1 02 00 00 00 00
  $  REQ020:761 03 22 C0 0C 00 00 00 00       $  ANS020:769 03 22 C0 0C 00 00 00 00
  $  REQ021:761 03 22 C0 01 00 00 00 00       $  ANS021:769 03 22 C0 01 00 00 00 00
  $  REQ022:761 03 22 C0 10 00 00 00 00       $  ANS022:769 03 22 C0 10 00 00 00 00
  $  REQ023:761 03 22 C0 11 00 00 00 00       $  ANS023:769 03 22 C0 11 00 00 00 00
  $  REQ024:761 03 22 C0 12 00 00 00 00       $  ANS024:769 03 22 C0 12 00 00 00 00
  $  REQ025:761 03 22 C0 13 00 00 00 00       $  ANS025:769 03 22 C0 13 00 00 00 00
  $  REQ026:761 03 22 C0 14 00 00 00 00       $  ANS026:769 03 22 C0 14 00 00 00 00
  $  REQ027:761 03 22 C0 16 00 00 00 00       $  ANS027:769 03 22 C0 16 00 00 00 00
  $  REQ028:761 03 22 C0 17 00 00 00 00       $  ANS028:769 03 22 C0 17 00 00 00 00
  $  REQ029:761 03 22 C0 18 00 00 00 00       $  ANS029:769 03 22 C0 18 00 00 00 00
  $  REQ030:761 03 22 C0 02 00 00 00 00       $  ANS030:769 03 22 C0 02 00 00 00 00
  $  REQ031:761 03 22 C0 20 00 00 00 00       $  ANS031:769 03 22 C0 20 00 00 00 00
  $  REQ032:761 03 22 C0 21 00 00 00 00       $  ANS032:769 03 22 C0 21 00 00 00 00
  $  REQ033:761 03 22 C0 22 00 00 00 00       $  ANS033:769 03 22 C0 22 00 00 00 00
  $  REQ034:761 03 22 C0 23 00 00 00 00       $  ANS034:769 03 22 C0 23 00 00 00 00
  $  REQ035:761 03 22 C0 24 00 00 00 00       $  ANS035:769 03 22 C0 24 00 00 00 00
  $  REQ036:761 03 22 C0 25 00 00 00 00       $  ANS036:769 03 22 C0 25 00 00 00 00
  $  REQ037:761 03 22 C0 03 00 00 00 00       $  ANS037:769 03 22 C0 03 00 00 00 00
  $  REQ038:761 03 22 C0 04 00 00 00 00       $  ANS038:769 03 22 C0 04 00 00 00 00
  $  REQ039:761 03 22 C0 05 00 00 00 00       $  ANS039:769 03 22 C0 05 00 00 00 00
  $  REQ040:761 03 22 C0 06 00 00 00 00       $  ANS040:769 03 22 C0 06 00 00 00 00
  $  REQ041:761 03 22 C0 07 00 00 00 00       $  ANS041:769 03 22 C0 07 00 00 00 00
  $  REQ042:761 03 22 C0 08 00 00 00 00       $  ANS042:769 03 22 C0 08 00 00 00 00
  $  REQ043:761 03 22 C0 09 00 00 00 00       $  ANS043:769 03 22 C0 09 00 00 00 00
  $  REQ044:761 03 22 C0 0A 00 00 00 00       $  ANS044:769 03 22 C0 0A 00 00 00 00
  $  REQ045:761 03 22 C0 0B 00 00 00 00       $  ANS045:769 03 22 C0 0B 00 00 00 00
  $  REQ046:761 03 22 C0 0D 00 00 00 00       $  ANS046:769 03 22 C0 0D 00 00 00 00
  $  REQ047:761 03 22 C0 0E 00 00 00 00       $  ANS047:769 03 22 C0 0E 00 00 00 00
  $  REQ048:761 03 22 C0 0F 00 00 00 00       $  ANS048:769 03 22 C0 0F 00 00 00 00

  $  000.信息掩码                                    $    $               $    $  ANS000.BYTE004  $  if((x&0x80)==0x80)y=@060e;else y=@060f;
  $  001.巡航控制警告                                $    $               $    $  ANS000.BYTE004  $  if((x&0x40)==0x40)y=@0135;else y=@05c2;
  $  002.主动限速警告                                $    $               $    $  ANS000.BYTE004  $  if((x&0x20)==0x20)y=@0135;else y=@05c2;
  $  003.冷却液温度警告                              $    $               $    $  ANS000.BYTE004  $  if((x&0x10)==0x10)y=@0135;else y=@05c2;
  $  004.油压低警告                                  $    $               $    $  ANS000.BYTE004  $  if((x&0x08)==0x08)y=@0135;else y=@05c2;
  $  005.故障指示灯警告                              $    $               $    $  ANS000.BYTE004  $  if((x&0x04)==0x04)y=@0135;else y=@05c2;
  $  006.发动机驱动线路警告                          $    $               $    $  ANS000.BYTE004  $  if((x&0x02)==0x02)y=@0135;else y=@05c2;
  $  007.停止开始警告                                $    $               $    $  ANS000.BYTE004  $  if((x&0x01)==0x01)y=@0135;else y=@05c2;
  $  008.传输警告                                    $    $               $    $  ANS000.BYTE005  $  if((x&0x80)==0x80)y=@0135;else y=@05c2;
  $  009.清洗液警告低                                $    $               $    $  ANS000.BYTE005  $  if((x&0x40)==0x40)y=@0135;else y=@05c2;
  $  010.停止开始按钮警告                            $    $               $    $  ANS000.BYTE005  $  if((x&0x20)==0x20)y=@0135;else y=@05c2;
  $  011.离合器开关警告                              $    $               $    $  ANS000.BYTE005  $  if((x&0x10)==0x10)y=@0135;else y=@05c2;
  $  012.安全密钥电池电流低警告                      $    $               $    $  ANS000.BYTE005  $  if((x&0x08)==0x08)y=@0135;else y=@05c2;
  $  013.左淹没光束警告                              $    $               $    $  ANS000.BYTE005  $  if((x&0x04)==0x04)y=@0135;else y=@05c2;
  $  014.右蘸光束警告                                $    $               $    $  ANS000.BYTE005  $  if((x&0x02)==0x02)y=@0135;else y=@05c2;
  $  015.左方向指示灯警告                            $    $               $    $  ANS000.BYTE005  $  if((x&0x01)==0x01)y=@0135;else y=@05c2;
  $  016.右方向指示灯警告                            $    $               $    $  ANS000.BYTE006  $  if((x&0x80)==0x80)y=@0135;else y=@05c2;
  $  017.左制动灯警告                                $    $               $    $  ANS000.BYTE006  $  if((x&0x40)==0x40)y=@0135;else y=@05c2;
  $  018.右制动灯警告                                $    $               $    $  ANS000.BYTE006  $  if((x&0x20)==0x20)y=@0135;else y=@05c2;
  $  019.左侧灯警告                                  $    $               $    $  ANS000.BYTE006  $  if((x&0x10)==0x10)y=@0135;else y=@05c2;
  $  020.右侧灯警告                                  $    $               $    $  ANS000.BYTE006  $  if((x&0x08)==0x08)y=@0135;else y=@05c2;
  $  021.日间运行灯警告                              $    $               $    $  ANS000.BYTE006  $  if((x&0x04)==0x04)y=@0135;else y=@05c2;
  $  022.后雾灯警告                                  $    $               $    $  ANS000.BYTE006  $  if((x&0x02)==0x02)y=@0135;else y=@05c2;
  $  023.反转灯警告                                  $    $               $    $  ANS000.BYTE006  $  if((x&0x01)==0x01)y=@0135;else y=@05c2;
  $  024.高级前照明系统警告                          $    $               $    $  ANS000.BYTE007  $  if((x&0x80)==0x80)y=@0135;else y=@05c2;
  $  025.防抱死制动系统警告                          $    $               $    $  ANS000.BYTE007  $  if((x&0x40)==0x40)y=@0135;else y=@05c2;
  $  026.制动系统警告                                $    $               $    $  ANS000.BYTE007  $  if((x&0x20)==0x20)y=@0135;else y=@05c2;
  $  027.稳定性控制系统警告                          $    $               $    $  ANS000.BYTE007  $  if((x&0x10)==0x10)y=@0135;else y=@05c2;
  $  028.牵引力控制系统警告                          $    $               $    $  ANS000.BYTE007  $  if((x&0x08)==0x08)y=@0135;else y=@05c2;
  $  029.山下降控制警告                              $    $               $    $  ANS000.BYTE007  $  if((x&0x04)==0x04)y=@0135;else y=@05c2;
  $  030.自动保持警告                                $    $               $    $  ANS000.BYTE007  $  if((x&0x02)==0x02)y=@0135;else y=@05c2;
  $  031.轮胎压力状态                                $    $               $    $  ANS000.BYTE007  $  if((x&0x01)==0x01)y=@0abf;else y=@05c2;
  $  032.分动箱控制模块警告                          $    $               $    $  ANS000.BYTE008  $  if((x&0x80)==0x80)y=@0135;else y=@05c2;
  $  033.电动转向警告                                $    $               $    $  ANS000.BYTE008  $  if((x&0x60)==00)y=@05c2;else if((x&0x60)==20)y=@0ac0;else if((x&0x60)==20)y=@0ac1;else y=@0004;
  $  034.转向角度传感器非标准警告                    $    $               $    $  ANS000.BYTE008  $  if((x&0x10)==0x10)y=@0135;else y=@05c2;
  $  035.转向角传感器警告                            $    $               $    $  ANS000.BYTE008  $  if((x&0x08)==0x08)y=@0135;else y=@05c2;
  $  036.电子驻车制动警告                            $    $               $    $  ANS000.BYTE008  $  if((x&0x04)==0x04)y=@0135;else y=@05c2;
  $  037.发电机警告                                  $    $               $    $  ANS000.BYTE008  $  if((x&0x02)==0x02)y=@0135;else y=@05c2;
  $  038.电池更换需要警告                            $    $               $    $  ANS000.BYTE008  $  if((x&0x01)==0x01)y=@0abf;else y=@05c2;
  $  039.安全气囊警告                                $    $               $    $  ANS000.BYTE009  $  if((x&0x80)==0x80)y=@0135;else y=@05c2;
  $  040.燃料状态                                    $    $               $    $  ANS000.BYTE009  $  if((x&0x60)==00)y=@0ac2;else if((x&0x60)==20)y=@0ac3;else if((x&0x60)==20)y=@0ac4;else y=@0004;
  $  041.燃油传感器警告                              $    $               $    $  ANS000.BYTE009  $  if((x&0x10)==0x10)y=@0135;else y=@05c2;
  $  042.被动进入警告                                $    $               $    $  ANS000.BYTE009  $  if((x&0x08)==0x08)y=@0135;else y=@05c2;
  $  043.点火继电器警告                              $    $               $    $  ANS000.BYTE009  $  if((x&0x04)==0x04)y=@0135;else y=@05c2;
  $  044.车道偏离警告系统故障                        $    $               $    $  ANS000.BYTE009  $  if((x&0x02)==0x02)y=@0135;else y=@05c2;
  $  045.自适应巡航控制系统警告                      $    $               $    $  ANS000.BYTE009  $  if((x&0x01)==0x01)y=@0abf;else y=@05c2;
  $  046.前视图相机模块传感器警告                    $    $               $    $  ANS000.BYTE010  $  if((x&0x80)==0x80)y=@0135;else y=@05c2;
  $  047.自主紧急制动系统警告                        $    $               $    $  ANS000.BYTE010  $  if((x&0x40)==0x40)y=@0135;else y=@05c2;
  $  048.速度辅助系统警告                            $    $               $    $  ANS000.BYTE010  $  if((x&0x20)==0x20)y=@0135;else y=@05c2;
  $  049.驻车距离控制警告                            $    $               $    $  ANS000.BYTE010  $  if((x&0x18)==00)y=@05c2;else if((x&0x18)==08)y=@0aba;else if((x&0x18)==10)y=@0abb;else y=@0abc;
  $  050.前方碰撞警告系统警告                        $    $               $    $  ANS000.BYTE010  $  if((x&0x04)==0x04)y=@0135;else y=@05c2;
  $  051.电动提升门系统警告                          $    $               $    $  ANS000.BYTE010  $  if((x&0x02)==0x02)y=@0135;else y=@05c2;
  $  052.报警音的周期                                $    $               $    $  ANS001.BYTE004  $  y=x*10;
  $  053.报警音占空比                                $    $               $    $  ANS001.BYTE005  $  y=x*0.392157;
  $  054.报警音频类型                                $    $               $    $  ANS001.BYTE006  $  if((x&0xF0)==0x00)y=@05cc;else if((x&0xF0)==0x10)y=@05cd;else if((x&0x0F)==0x20)y=@05ce;else if((x&0xF0)==0x30)y=@05cf;else if((x&0xF0)==0x40)y=@05d0;else if((x&0xF0)==0x50)y=@05d1;else y=@01a9;
  $  055.左前Chime音频                               $    $               $    $  ANS001.BYTE006  $  if((x&0x08)==0x08)y=@00ca;else y=@00c9;
  $  056.右前Chime音频                               $    $               $    $  ANS001.BYTE006  $  if((x&0x04)==0x04)y=@00ca;else y=@00c9;
  $  057.左后Chime音频                               $    $               $    $  ANS001.BYTE006  $  if((x&0x02)==0x02)y=@00ca;else y=@00c9;
  $  058.右后Chime音频                               $    $               $    $  ANS001.BYTE006  $  if((x&0x01)==0x01)y=@00ca;else y=@00c9;
  $  059.仪表盘“右键”状态                          $    $               $    $  ANS001.BYTE007  $  if((x&0xC0)==0x00)y=@05a6;else if((x&0xC0)==0x40)y=@05a7;else if((x&0xC0)==0x80)y=@05a8;else y=@0004;
  $  060.仪表盘“左键”状态                          $    $               $    $  ANS001.BYTE007  $  if((x&0x30)==0x00)y=@05a6;else if((x&0x30)==0x10)y=@05a7;else if((x&0x30)==0x20)y=@05a8;else y=@0004;
  $  061.仪表盘“向下”按键状态                      $    $               $    $  ANS001.BYTE007  $  if((x&0x0C)==0x00)y=@05a6;else if((x&0x0C)==0x04)y=@05a7;else if((x&0x0C)==0x08)y=@05a8;else y=@0004;
  $  062.仪表盘“向上”按键状态                      $    $               $    $  ANS001.BYTE007  $  if((x&0x03)==0x00)y=@05a6;else if((x&0x03)==0x01)y=@05a7;else if((x&0x03)==0x02)y=@05a8;else y=@0004;
  $  063.仪表盘“确认”按键状态                      $    $               $    $  ANS001.BYTE008  $  if((x&0xC0)==0x00)y=@05a6;else if((x&0xC0)==0x40)y=@05a7;else if((x&0xC0)==0x80)y=@05a8;else y=@0004;
  $  064.仪表盘“Tab”按键状态                       $    $               $    $  ANS001.BYTE008  $  if((x&0x3C)==0x00)y=@05a9;else if((x&0x3C)==0x04)y=@05aa;else if((x&0x3C)==0x08)y=@05ab;else if((x&0x3C)==0x0C)y=@05ac;else if((x&0x3C)==0x10)y=@05ad;else if((x&0x3C)==0x14)y=@05ae;else if((x&0x3C)==0x18)y=@05af;else if((x&0x3C)==0x1C)y=@05b0;else y=@0004;
  $  065.时间显示格式调整                            $    $               $    $  ANS001.BYTE008  $  if((x&0x02)==0x02)y=@05ec;else y=@05ed;
  $  066.仪表显示防抱死刹车警告                      $    $               $    $  ANS002.BYTE004  $  if((x&0x80)==0x80)y=@0135;else y=@05c2;
  $  067.仪表显示EBD警告                             $    $               $    $  ANS002.BYTE004  $  if((x&0x40)==0x40)y=@0135;else y=@05c2;
  $  068.仪表显示电子稳定系统警告                    $    $               $    $  ANS002.BYTE004  $  if((x&0x20)==0x20)y=@0135;else y=@05c2;
  $  069.仪表显示制动系统警告                        $    $               $    $  ANS002.BYTE004  $  if((x&0x10)==0x10)y=@0135;else y=@05c2;
  $  070.仪表显示气囊系统警告                        $    $               $    $  ANS002.BYTE004  $  if((x&0x08)==0x08)y=@0135;else y=@05c2;
  $  071.仪表显示MIL(发动机故障灯)(故障灯)警告       $    $               $    $  ANS002.BYTE004  $  if((x&0x04)==0x04)y=@0135;else y=@05c2;
  $  072.仪表显示TCCU(四驱)警告                      $    $               $    $  ANS002.BYTE004  $  if((x&0x02)==0x02)y=@0135;else y=@05c2;
  $  073.仪表显示燃油警告                            $    $               $    $  ANS002.BYTE004  $  if((x&0x01)==0x01)y=@0abf;else y=@05c2;
  $  074.仪表显示发动机管理系统警告                  $    $               $    $  ANS002.BYTE005  $  if((x&0x80)==0x80)y=@0135;else y=@05c2;
  $  075.仪表显示发动机警告                          $    $               $    $  ANS002.BYTE005  $  if((x&0x40)==0x40)y=@0135;else y=@05c2;
  $  076.仪表显示油压低警告                          $    $               $    $  ANS002.BYTE005  $  if((x&0x20)==0x20)y=@0135;else y=@05c2;
  $  077.仪表显示前照灯系统警告                      $    $               $    $  ANS002.BYTE005  $  if((x&0x10)==0x10)y=@0135;else y=@05c2;
  $  078.仪表显示冷却液温度警告                      $    $               $    $  ANS002.BYTE005  $  if((x&0x08)==0x08)y=@0135;else y=@05c2;
  $  079.仪表显示安全钥匙电低警告                    $    $               $    $  ANS002.BYTE005  $  if((x&0x04)==0x04)y=@0135;else y=@05c2;
  $  080.仪表显示TPMS警告                            $    $               $    $  ANS002.BYTE005  $  if((x&0x02)==0x02)y=@0135;else y=@05c2;
  $  081.仪表显示DCDC警告                            $    $               $    $  ANS002.BYTE005  $  if((x&0x01)==0x01)y=@0abf;else y=@05c2;
  $  082.仪表显示陡坡缓降系统警告                    $    $               $    $  ANS002.BYTE006  $  if((x&0x80)==0x80)y=@0135;else y=@05c2;
  $  083.仪表显示电子手刹警告                        $    $               $    $  ANS002.BYTE006  $  if((x&0x40)==0x40)y=@0135;else y=@05c2;
  $  084.仪表显示自动保持警告                        $    $               $    $  ANS002.BYTE006  $  if((x&0x20)==0x20)y=@0135;else y=@05c2;
  $  085.仪表显示启停器警告                          $    $               $    $  ANS002.BYTE006  $  if((x&0x10)==0x10)y=@0135;else y=@05c2;
  $  086.仪表显示电动助力转向警告                    $    $               $    $  ANS002.BYTE006  $  if((x&0x08)==0x08)y=@0135;else y=@05c2;
  $  087.仪表显示全地形四驱警告                      $    $               $    $  ANS002.BYTE006  $  if((x&0x04)==0x04)y=@0135;else y=@05c2;
  $  088.仪表显示雨刷喷水液不足警告                  $    $               $    $  ANS002.BYTE006  $  if((x&0x02)==0x02)y=@0135;else y=@05c2;
  $  089.仪表显示智能驾驶辅助系统警告                $    $               $    $  ANS002.BYTE006  $  if((x&0x01)==0x01)y=@0abf;else y=@05c2;
  $  090.仪表显示自动泊车辅助系统警告                $    $               $    $  ANS002.BYTE007  $  if((x&0x80)==0x80)y=@0135;else y=@05c2;
  $  091.仪表模式                                    $    $               $    $  ANS002.BYTE007  $  if((x&0x7F)==0x00)y=@0abd;else if((x&0x7F)==0x00)y=@0abe;else y=@01a9;
  $  092.里程表                                      $    $  km           $    $  ANS003.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  093.里程保养                                    $    $  km           $    $  ANS003.BYTE007  $  y=x1*256*256+x2*256+x3;
  $  094.仪表显示平均油耗                            $    $  L/100km      $    $  ANS003.BYTE010  $  y=x*0.1;
  $  095.仪表显示瞬时油耗                            $    $               $    $  ANS003.BYTE011  $  y=x*0.1;
  $  096.仪表显示剩余驾驶距离                        $    $  km           $    $  ANS003.BYTE012  $  y=((x1*256)+(x2&0xF0))/16;
  $  097.仪表显示瞬时油耗有效性                      $    $               $    $  ANS003.BYTE012  $  if((x&0x08)==0x08)y=@04ec;else y=@00bb;
  $  098.仪表上平均油耗有效性                        $    $               $    $  ANS003.BYTE013  $  if((x&0x04)==0x04)y=@04ec;else y=@00bb;
  $  099.仪表显示燃料高度                            $    $               $    $  ANS003.BYTE014  $  y=x*100/255.0;
  $  100.仪表超速阈值保持价值                        $    $  km/h         $    $  ANS004.BYTE004  $  y=x;
  $  101.仪表显示的车速                              $    $  km/h         $    $  ANS004.BYTE005  $  y=x;
  $  102.仪表显示语言反馈                            $    $               $    $  ANS004.BYTE006  $  if((x&0xFE)==0x00)y=@074a;else if((x&0xFE)==0x02)y=@074b;else if((x&0xFE)==0x04)y=@074c;else if((x&0xFE)==0x06)y=@0adb;else if((x&0xFE)==0x08)y=@08b6;else if((x&0xFE)==0x0A)y=@08b7;else if((x&0xFE)==0x0C)y=@08b8;else if((x&0xFE)==0x0E)y=@08b9;else if((x&0xFE)==0x10)y=@0adc;else if((x&0xFE)==0x12)y=@0add;else if((x&0xFE)==0x14)y=@08bc;else if((x&0xFE)==0x16)y=@0ade;else if((x&0xFE)==0x18)y=@08be;else if((x&0xFE)==0x1A)y=@08bf;else if((x&0xFE)==0x1C)y=@08c0;else if((x&0xFE)==0x1E)y=@0adf;else if((x&0xFE)==0x20)y=@08c2;else if((x&0xFE)==0x22)y=@08c3;else if((x&0xFE)==0x24)y=@08c4;else if((x&0xFE)==0x28)y=@08c6;else if((x&0xFE)==0x26)y=@08c5;else if((x&0xFE)==0x2A)y=@0ae0;else if((x&0xFE)==0x2C)y=@08c8;else if((x&0xFE)==0x2E)y=@08c9;else if((x&0xFE)==0x30)y=@08ca;else y=@01a9;
  $  103.系统备用电源模式状态                        $    $               $    $  ANS004.BYTE007  $  if((x&0xC0)==0x00)y=@000f;else if((x&0xC0)==0x40)y=@0010;else if((x&0xC0)==0x80)y=@009d;else y=@05d2;
  $  104.系统备用电源模式启用                        $    $               $    $  ANS004.BYTE007  $  if((x&0x20)==0x20)y=@00f0;else y=@00db;
  $  105.系统备份电源模式有效性                      $    $               $    $  ANS004.BYTE007  $  if((x&0x10)==0x10)y=@04ec;else y=@00bb;
  $  106.仪表显示信息掩码                            $    $               $    $  ANS004.BYTE007  $  if((x&0x08)==0x08)y=@060e;else y=@0892;
  $  107.仪表超速功能状态                            $    $               $    $  ANS004.BYTE007  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  108.IFP硬件号                                   $    $               $    $  ANS005.BYTE004  $  y=UINT40(x1,x2,x3,x4,x5);
  $  109.IFP NCF号                                   $    $               $    $  ANS006.BYTE004  $  y=UINT40(x1,x2,x3,x4,x5);
  $  110.IFP零件号                                   $    $               $    $  ANS007.BYTE004  $  y=UINT40(x1,x2,x3,x4,x5);
  $  111.IFP软件版本                                 $    $               $    $  ANS008.BYTE006  $  y=UINT64(x1,x2,x3,x4,x5,x6,x7,x8);
  $  112.网络模式                                    $    $               $    $  ANS009.BYTE004  $  if(x==0x00)y=@009e;else if(x==0x01)y=@000f;else if(x==0x02)y=@01d1;else y=@01a9;
  $  113.信号配置ID                                  $    $               $    $  ANS009.BYTE005  $  y=x1*256+x2;
  $  114.发动机冷却液温度                            $    $  degree C     $    $  ANS010.BYTE004  $  y=x-40;
  $  115.发动机冷却液温度有效性                      $    $               $    $  ANS010.BYTE005  $  if((x&0x80)==0x80)y=@04ec;else y=@00bb;
  $  116.巡航和限速器驾驶员选择的速度                $    $  %            $    $  ANS011.BYTE004  $  y=x*100/255.0;
  $  117.发动机转速                                  $    $  rpm          $    $  ANS012.BYTE004  $  y=((x1*256)+(x2&0xF0))*0.25;
  $  118.发动机运行激活                              $    $               $    $  ANS012.BYTE006  $  if((x&0x80)==0x80)y=@00ca;else y=@00c9;
  $  119.发动机12伏启动电动机                        $    $               $    $  ANS012.BYTE006  $  if((x&0x40)==0x40)y=@00ca;else y=@00c9;
  $  120.加速器实际位置有效性                        $    $               $    $  ANS012.BYTE006  $  if((x&0x20)==0x20)y=@04ec;else y=@00bb;
  $  121.发动机自动停止启动状态                      $    $               $    $  ANS012.BYTE006  $  if((x&0x10)==0x10)y=@0ac5;else y=@0ac6;
  $  122.加速器实际位置                              $    $  %            $    $  ANS012.BYTE007  $  y=x*100/255.0;
  $  123.加速器有效位置                              $    $  %            $    $  ANS012.BYTE008  $  y=x*100/255.0;
  $  124.变速器换挡杆的位置                          $    $               $    $  ANS013.BYTE004  $  if((x&0xF0)==0x00)y=@0514;else y=@01a9;
  $  125.变速箱换挡杆位置有效性                      $    $               $    $  ANS013.BYTE004  $  if((x&0x08)==0x08)y=@04ec;else y=@00bb;
  $  126.变速器换挡杆的位置                          $    $               $    $  ANS013.BYTE004  $  if((x&0xF0)==0x00)y=@0514;else y=@01a9;
  $  127.变速箱换挡杆位置有效性                      $    $               $    $  ANS013.BYTE004  $  if((x&0x08)==0x08)y=@04ec;else y=@00bb;
  $  128.发动机运行激活                              $    $               $    $  ANS014.BYTE004  $  if((x&0x80)==0x80)y=@00ca;else y=@00c9;
  $  129.巡航控制激活                                $    $               $    $  ANS014.BYTE004  $  if((x&0x40)==0x40)y=@00ca;else y=@00c9;
  $  130.油门踏板位置有效性                          $    $               $    $  ANS014.BYTE004  $  if((x&0x20)==0x20)y=@00ca;else y=@00c9;
  $  131.加速器有效位置效度                          $    $               $    $  ANS014.BYTE004  $  if((x&0x10)==0x10)y=@00ca;else y=@00c9;
  $  132.绝对大气压力的有效性                        $    $               $    $  ANS014.BYTE004  $  if((x&0x10)==0x10)y=@00ca;else y=@00c9;
  $  133.燃油液位百分比有效性                        $    $               $    $  ANS014.BYTE004  $  if((x&0x06)==0x00)y=@04dc;else if((x&0x06)==0x02)y=@089c;else if((x&0x06)==0x04)y=@089d;else y=@0ac7;
  $  134.发动机转速                                  $    $  rpm          $    $  ANS014.BYTE005  $  y=((x1*256)+(x2&0xF0))*0.25;
  $  135.燃油消耗                                    $    $  mL           $    $  ANS014.BYTE007  $  y=x1*256+x2;
  $  136.巡航控制驾驶员设置的速度                    $    $               $    $  ANS014.BYTE009  $  y=(((x1*256)+(x2&0xF0))/16)*0.0625;
  $  137.冷却风扇级别反馈                            $    $               $    $  ANS014.BYTE010  $  if((x&0x0F)==0x00)y=@0659;else if((x&0x0F)==0x01)y=@04f8;else if((x&0x0F)==0x02)y=@04f7;else if((x&0x0F)==0x03)y=@04f6;else if((x&0x0F)==0x04)y=@04f5;else if((x&0x0F)==0x05)y=@04f4;else if((x&0x0F)==0x06)y=@065a;else if((x&0x0F)==0x07)y=@065b;else if((x&0x0F)==0x08)y=@065c;else if((x&0x0F)==0x09)y=@065d;else if((x&0x0F)==0x0A)y=@065e;else if((x&0x0F)==0x0B)y=@065f;else if((x&0x0F)==0x0C)y=@0660;else if((x&0x0F)==0x0D)y=@0661;else if((x&0x0F)==0x0E)y=@0662;else y=@0663;
  $  138.加速器踏板位置                              $    $  %            $    $  ANS014.BYTE011  $  y=x*100/255.0;
  $  139.加速器有效位置                              $    $  %            $    $  ANS014.BYTE012  $  y=x*100/255.0;
  $  140.大气压力绝对值                              $    $  kPa          $    $  ANS014.BYTE013  $  y=x*0.5;
  $  141.燃油液位                                    $    $  %            $    $  ANS014.BYTE014  $  y=x*100/255.0;
  $  142.变速器换挡杆的位置                          $    $               $    $  ANS015.BYTE004  $  if((x&0xF0)==0x00)y=@0514;else if((x&0xF0)==0x10)y=@00b4;else if((x&0xF0)==0x20)y=@0388;else if((x&0xF0)==0x30)y=@0515;else if((x&0xF0)==0x40)y=@0516;else if((x&0xF0)==0x50)y=@0517;else if((x&0xF0)==0x60)y=@0518;else if((x&0xF0)==0x70)y=@0519;else if((x&0xF0)==0x80)y=@051a;else if((x&0xF0)==0x90)y=@051b;else if((x&0xF0)==0xA0)y=@051c;else if((x&0xF0)==0xB0)y=@051d;else if((x&0xF0)==0xF0)y=@051e;else y=@01a9;
  $  143.驾驶员换挡控制目标齿轮                      $    $               $    $  ANS015.BYTE004  $  if((x&0x0F)==0x00)y=@0268;else if((x&0x0F)==0x01)y=@02b4;else if((x&0x0F)==0x02)y=@02b5;else if((x&0x0F)==0x03)y=@02b6;else if((x&0x0F)==0x04)y=@02b7;else if((x&0x0F)==0x05)y=@02b8;else if((x&0x0F)==0x06)y=@02b9;else y=@01a9;
  $  144.变速箱控制单元校验值                        $    $               $    $  ANS015.BYTE005  $  y=x;
  $  145.变速箱换挡杆位置有效性                      $    $               $    $  ANS015.BYTE006  $  if((x&0x80)==0x80)y=@04ec;else y=@00bb;
  $  146.变速箱消息计数器                            $    $               $    $  ANS015.BYTE006  $  y=x&0x0F;
  $  147.司机安全带附着                              $    $               $    $  ANS016.BYTE004  $  if((x&0x80)==0x80)y=@00ca;else y=@00c9;
  $  148.驾驶员安全带附着有效性                      $    $               $    $  ANS016.BYTE004  $  if((x&0x40)==0x40)y=@04ec;else y=@00bb;
  $  149.前排乘客安全带附着                          $    $               $    $  ANS016.BYTE004  $  if((x&0x20)==0x20)y=@00ca;else y=@00c9;
  $  150.前排乘客安全带附着有效性                    $    $               $    $  ANS016.BYTE004  $  if((x&0x10)==0x10)y=@04ec;else y=@00bb;
  $  151.全局KL.50状态                               $    $               $    $  ANS017.BYTE004  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  152.全局发动机运行状态                          $    $               $    $  ANS017.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  153.全局KL.15状态                               $    $               $    $  ANS017.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  154.全局KL.R状态                                $    $               $    $  ANS017.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  155.系统KL.50状态                               $    $               $    $  ANS017.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  156.系统发动机运行状态                          $    $               $    $  ANS017.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  157.系统KL.15状态                               $    $               $    $  ANS017.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  158.系统KL.R状态                                $    $               $    $  ANS017.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  159.IFP的硬件供应商数量                         $    $               $    $  ANS018.BYTE006  $  y=UINT64(x1,x2,x3,x4,x5,x6,x7,x8);
  $  160.方向盘控制_音量升                           $    $               $    $  ANS019.BYTE004  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  161.方向盘控制_音量降                           $    $               $    $  ANS019.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  162.方向盘控制向上搜索                          $    $               $    $  ANS019.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  163.方向盘控制向下搜索                          $    $               $    $  ANS019.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  164.方向盘控制_静音                             $    $               $    $  ANS019.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  165.方向盘控制_呼叫拒绝                         $    $               $    $  ANS019.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  166.方向盘控制源                                $    $               $    $  ANS019.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  167.*按键                                       $    $               $    $  ANS019.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  168.语音控制                                    $    $               $    $  ANS019.BYTE005  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  169.HOME按键                                    $    $               $    $  ANS019.BYTE006  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  170.汽车空气净化系统                            $    $               $    $  ANS020.BYTE004  $  if(x==0x00)y=@08e7;else if(x==0x01)y=@08e8;else if(x==0x02)y=@08e9;else if(x==0x03)y=@08ea;else y=@01a9;
  $  171.车辆类型                                    $    $               $    $  ANS020.BYTE005  $  if(x==0x7F)y=@06d5;else if(x==0x80)y=@058e;else y=@01a9;
  $  172.板卡信息                                    $    $               $    $  ANS020.BYTE006  $  if(x==0x98)y=@06d6;else if(x==0x99)y=@06d7;else y=@01a9;
  $  173.GPS芯片                                     $    $               $    $  ANS020.BYTE007  $  if(x==0x00)y=@06d8;else if(x==0x01)y=@06d9;else y=@01a9;
  $  174.车身颜色类型配置                            $    $               $    $  ANS021.BYTE004  $  if(x==0x00)y=@08f1;else if(x==0x01)y=@06e3;else if(x==0x02)y=@06e4;else if(x==0x03)y=@06e5;else if(x==0x04)y=@06e6;else if(x==0x05)y=@06e7;else if(x==0x06)y=@06e8;else if(x==0x07)y=@06e9;else if(x==0x08)y=@08f2;else if(x==0x09)y=@06eb;else if(x==0x0A)y=@06ec;else if(x==0x0B)y=@06ed;else if(x==0x0C)y=@06ee;else if(x==0x0D)y=@06ef;else if(x==0x0E)y=@06f0;else y=@01a9;
  $  175.空调类型配置                                $    $               $    $  ANS021.BYTE005  $  if(x==0x00)y=@0a77;else if(x==0x01)y=@0a78;else if(x==0x02)y=@08f5;else if(x==0x03)y=@0a79;else if(x==0x04)y=@08f7;else if(x==0x05)y=@0a7a;else if(x==0x06)y=@0afe;else if(x==0x07)y=@0a7c;else y=@01a9;
  $  176.第三排座椅加热                              $    $               $    $  ANS021.BYTE006  $  if((x&0x40)==0x40)y=@00ca;else y=@00c9;
  $  177.第二排座椅加热                              $    $               $    $  ANS021.BYTE006  $  if((x&0x10)==0x10)y=@00ca;else y=@00c9;
  $  178.副驾驶座椅加热                              $    $               $    $  ANS021.BYTE006  $  if((x&0x04)==0x04)y=@00ca;else y=@00c9;
  $  179.驾驶员座椅加热                              $    $               $    $  ANS021.BYTE006  $  if((x&0x01)==0x01)y=@00ca;else y=@00c9;
  $  180.胎压监测系统类型配置                        $    $               $    $  ANS021.BYTE007  $  if(x==0x00)y=@06f1;else if(x==0x01)y=@06f2;else if(x==0x02)y=@06f3;else y=@01a9;
  $  181.超速报警标志                                $    $               $    $  ANS022.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  182.超速报警                                    $    $               $    $  ANS022.BYTE005  $  y=x;
  $  183.报警灵敏度                                  $    $               $    $  ANS022.BYTE006  $  if(x==0x00)y=@06c7;else if(x==0x01)y=@08ce;else if(x==0x02)y=@06cb;else y=@01a9;
  $  184.车道偏离报警                                $    $               $    $  ANS022.BYTE007  $  if(x==0x00)y=@0aff;else if(x==0x01)y=@0b00;else if(x==0x02)y=@0b01;else y=@01a9;
  $  185.盲点检测报警                                $    $               $    $  ANS023.BYTE004  $  if(x==0x00)y=@000f;else if(x==0x01)y=@0028;else y=@01a9;
  $  186.疲劳提醒                                    $    $               $    $  ANS023.BYTE005  $  if(x==0x00)y=@000f;else if(x==0x01)y=@0028;else y=@01a9;
  $  187.360度全景泊车(低速打转向灯开启)             $    $               $    $  ANS023.BYTE006  $  if((x&0xF0)==0x00)y=@000f;else if((x&0xF0)==0x10)y=@0028;else y=@01a9;
  $  188.360度全景泊车(车辆起步开启)                 $    $               $    $  ANS023.BYTE006  $  if((x&0x0F)==0x00)y=@000f;else if((x&0x0F)==0x01)y=@0028;else y=@01a9;
  $  189.前碰撞系统(报警灵敏度)                      $    $               $    $  ANS023.BYTE007  $  if((x&0xF0)==0x00)y=@06c7;else if((x&0xF0)==0x10)y=@08ce;else if((x&0xF0)==0x20)y=@06cb;else y=@01a9;
  $  190.前碰撞系统(前碰撞报警)                      $    $               $    $  ANS023.BYTE007  $  if((x&0x0F)==0x00)y=@098d;else if((x&0x0F)==0x01)y=@0af9;else if((x&0x0F)==0x02)y=@0afa;else y=@01a9;
  $  191.伴我回家(保持亮灯时间)                      $    $               $    $  ANS024.BYTE004  $  if((x&0x30)==0x00)y=@0491;else if((x&0x30)==0x10)y=@0492;else if((x&0x30)==0x20)y=@0493;else y=@01a9;
  $  192.伴我回家种田                                $    $               $    $  ANS024.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  193.寻车反馈                                    $    $               $    $  ANS024.BYTE005  $  if(x==0x00)y=@0506;else if(x==0x01)y=@08ee;else y=@01a9;
  $  194.无钥匙解锁                                  $    $               $    $  ANS024.BYTE006  $  if((x&0x20)==0x20)y=@08a0;else y=@08a1;
  $  195.钥匙解锁                                    $    $               $    $  ANS024.BYTE006  $  if((x&0x10)==0x10)y=@08a0;else y=@08a1;
  $  196.车辆上锁反馈                                $    $               $    $  ANS024.BYTE006  $  if((x&0x0C)==0x00)y=@01a9;else if((x&0x0C)==0x04)y=@0505;else if((x&0x0C)==0x08)y=@0506;else y=@0504;
  $  197.熄火自动解锁                                $    $               $    $  ANS024.BYTE006  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  198.行车自动落锁                                $    $               $    $  ANS024.BYTE006  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  199.座椅自动调出                                $    $               $    $  ANS024.BYTE007  $  if((x&0xC0)==0x00)y=@0afb;else if((x&0xC0)==0x40)y=@0afc;else y=@01a9;
  $  200.清除所有记忆功能                            $    $               $    $  ANS024.BYTE007  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  201.后视镜及座椅钥匙记忆功能                    $    $               $    $  ANS024.BYTE007  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  202.车外后视镜倒车自动下倾                      $    $               $    $  ANS024.BYTE007  $  if((x&0x0E)==0x00)y=@0994;else if((x&0x0E)==0x02)y=@0995;else if((x&0x0E)==0x04)y=@0afd;else if((x&0x0E)==0x06)y=@000f;else y=@01a9;
  $  203.自动折叠/展开                               $    $               $    $  ANS024.BYTE007  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  204.方向盘自定义                                $    $               $    $  ANS025.BYTE004  $  if(x==0x00)y=@064f;else if(x==0x01)y=@08f0;else y=@01a9;
  $  205.语言                                        $    $               $    $  ANS026.BYTE004  $  if(x==0x00)y=@074a;else if(x==0x01)y=@0901;else if(x==0x02)y=@08bf;else if(x==0x03)y=@08ca;else if(x==0x04)y=@08b7;else y=@01a9;
  $  206.日期格式                                    $    $               $    $  ANS026.BYTE005  $  if((x&0xF0)==0x00)y=@0b11;else if((x&0xF0)==0x10)y=@0b12;else if((x&0xF0)==0x20)y=@0b13;else y=@01a9;
  $  207.时间格式                                    $    $               $    $  ANS026.BYTE005  $  if((x&0x01)==0x01)y=@05ec;else y=@05ed;
  $  208.限速标志识别                                $    $               $    $  ANS027.BYTE004  $  if(x==0x00)y=@000f;else if(x==0x01)y=@0028;else y=@01a9;
  $  209.前泊车PDC                                   $    $               $    $  ANS027.BYTE005  $  if(x==0x00)y=@000f;else if(x==0x01)y=@0028;else y=@01a9;
  $  210.迎宾灯(保持亮灯时间)                        $    $               $    $  ANS028.BYTE004  $  if((x&0xF0)==0x00)y=@0491;else if((x&0xF0)==0x10)y=@0492;else if((x&0xF0)==0x20)y=@0493;else y=@01a9;
  $  211.迎宾灯状态                                  $    $               $    $  ANS028.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  212.氛围灯                                      $    $               $    $  ANS028.BYTE005  $  if(x==0x00)y=@000f;else if(x==0x01)y=@0028;else y=@01a9;
  $  213.一键升窗                                    $    $               $    $  ANS028.BYTE006  $  if(x==0x00)y=@000f;else if(x==0x01)y=@0028;else y=@01a9;
  $  214.ATS(全地形系统)显示特效                     $    $               $    $  ANS028.BYTE007  $  if(x==0x00)y=@000f;else if(x==0x01)y=@0028;else y=@01a9;
  $  215.空气净化器                                  $    $               $    $  ANS029.BYTE004  $  if(x==0x00)y=@000f;else if(x==0x10)y=@0028;else y=@01a9;
  $  216.LDW(车道偏离预警)系统配置                   $    $               $    $  ANS030.BYTE004  $  if(x==0x00)y=@0902;else if(x==0x01)y=@0903;else y=@01a9;
  $  217.自动紧急制动配置                            $    $               $    $  ANS030.BYTE005  $  if(x==0x00)y=@0904;else if(x==0x01)y=@0692;else y=@01a9;
  $  218.360度视野类型配置                           $    $               $    $  ANS030.BYTE006  $  if(x==0x00)y=@0721;else if(x==0x01)y=@0722;else if(x==0x02)y=@0692;else y=@01a9;
  $  219.车载显示器类型配置                          $    $               $    $  ANS030.BYTE007  $  if(x==0x00)y=@0723;else if(x==0x01)y=@0724;else if(x==0x02)y=@0725;else if(x==0x03)y=@0726;else y=@01a9;
  $  220.驾驶模式                                    $    $               $    $  ANS031.BYTE004  $  if(x==0x00)y=@0b02;else if(x==0x01)y=@0b03;else y=@01a9;
  $  221.发动机启停功能                              $    $               $    $  ANS031.BYTE006  $  if(x==0x00)y=@000f;else if(x==0x01)y=@0028;else y=@01a9;
  $  222.后视镜类型                                  $    $               $    $  ANS031.BYTE007  $  if(x==0x00)y=@0b04;else if(x==0x01)y=@0b05;else if(x==0x02)y=@06df;else y=@01a9;
  $  223.驾驶员座椅                                  $    $               $    $  ANS032.BYTE004  $  if(x==0x00)y=@0b06;else if(x==0x01)y=@0b07;else if(x==0x02)y=@0b08;else y=@01a9;
  $  224.副驾驶座椅                                  $    $               $    $  ANS032.BYTE005  $  if(x==0x00)y=@0b09;else if(x==0x01)y=@0b0a;else if(x==0x02)y=@0b0b;else y=@01a9;
  $  225.第二排座椅                                  $    $               $    $  ANS032.BYTE006  $  if(x==0x00)y=@0b0c;else if(x==0x01)y=@0b0d;else if(x==0x02)y=@0b0e;else y=@01a9;
  $  226.第三排座椅                                  $    $               $    $  ANS032.BYTE007  $  if(x==0x00)y=@0b0f;else if(x==0x01)y=@0b10;else y=@01a9;
  $  227.副驾驶气囊                                  $    $               $    $  ANS033.BYTE004  $  if((x&0xF0)==0x00)y=@00c9;else if((x&0xF0)==0x10)y=@00ca;else y=@01a9;
  $  228.驾驶员气囊                                  $    $               $    $  ANS033.BYTE004  $  if((x&0x0F)==0x00)y=@00c9;else if((x&0x0F)==0x01)y=@00ca;else y=@01a9;
  $  229.气帘                                        $    $               $    $  ANS033.BYTE005  $  if((x&0xF0)==0x00)y=@00c9;else if((x&0xF0)==0x10)y=@00ca;else y=@01a9;
  $  230.主副驾侧气囊                                $    $               $    $  ANS033.BYTE005  $  if((x&0x0F)==0x00)y=@00c9;else if((x&0x0F)==0x01)y=@00ca;else y=@01a9;
  $  231.安全带提示                                  $    $               $    $  ANS033.BYTE006  $  if(x==0x00)y=@0992;else if(x==0x01)y=@0aed;else if(x==0x02)y=@0aee;else y=@01a9;
  $  232.雨量传感器                                  $    $               $    $  ANS033.BYTE007  $  if(x==0x00)y=@0aef;else if(x==0x01)y=@0af0;else y=@01a9;
  $  233.车联网                                      $    $               $    $  ANS034.BYTE004  $  if(x==0x00)y=@06e0;else if(x==0x01)y=@06e1;else if(x==0x02)y=@048e;else y=@01a9;
  $  234.手机互联                                    $    $               $    $  ANS034.BYTE005  $  if(x==0x00)y=@0af1;else if(x==0x01)y=@095c;else y=@01a9;
  $  235.迎宾灯                                      $    $               $    $  ANS034.BYTE006  $  if(x==0x00)y=@0a7f;else if(x==0x01)y=@0a80;else y=@01a9;
  $  236.氛围灯                                      $    $               $    $  ANS034.BYTE007  $  if(x==0x00)y=@0a7f;else if(x==0x01)y=@0a80;else y=@01a9;
  $  237.车道保持系统                                $    $               $    $  ANS035.BYTE004  $  if(x==0x00)y=@00ca;else if(x==0x01)y=@00c9;else y=@01a9;
  $  238.自适应巡航系统                              $    $               $    $  ANS035.BYTE005  $  if(x==0x00)y=@00ca;else if(x==0x01)y=@00c9;else y=@01a9;
  $  239.交通标志识别                                $    $               $    $  ANS035.BYTE006  $  if(x==0x00)y=@00ca;else if(x==0x01)y=@00c9;else y=@01a9;
  $  240.座椅记忆模块                                $    $               $    $  ANS035.BYTE007  $  if(x==0x00)y=@00ca;else if(x==0x01)y=@00c9;else y=@01a9;
  $  241.驾驶预警系统                                $    $               $    $  ANS036.BYTE004  $  if(x==0x00)y=@00ca;else if(x==0x01)y=@00c9;else y=@01a9;
  $  242.自动氛围灯                                  $    $               $    $  ANS036.BYTE005  $  if(x==0x00)y=@000f;else if(x==0x01)y=@0028;else y=@01a9;
  $  243.可分区调节                                  $    $               $    $  ANS036.BYTE006  $  if(x==0x00)y=@00ca;else if(x==0x01)y=@00c9;else y=@01a9;
  $  244.颜色                                        $    $               $    $  ANS036.BYTE007  $  if(x==0x00)y=@0961;else if(x==0x01)y=@0962;else if(x==0x02)y=@0963;else if(x==0x03)y=@0964;else if(x==0x04)y=@0965;else if(x==0x05)y=@0966;else y=@01a9;
  $  245.驾驶员窗操作类型                            $    $               $    $  ANS037.BYTE004  $  if(x==0x01)y=@0729;else if(x==0x02)y=@072a;else if(x==0x04)y=@072b;else if(x==0x08)y=@0ae6;else if(x==0x10)y=@072d;else if(x==0x20)y=@0ae7;else if(x==0x40)y=@072f;else if(x==0x80)y=@0ae8;else y=@01a9;
  $  246.远程信息处理系统类型配置                    $    $               $    $  ANS037.BYTE005  $  if(x==0x00)y=@0731;else if(x==0x01)y=@0732;else if(x==0x02)y=@0733;else if(x==0x03)y=@0734;else if(x==0x04)y=@0735;else if(x==0x05)y=@0736;else if(x==0x06)y=@0737;else if(x==0x07)y=@0738;else y=@01a9;
  $  247.汽车导航配置                                $    $               $    $  ANS037.BYTE006  $  if(x==0x00)y=@05aa;else if(x==0x01)y=@0739;else y=@01a9;
  $  248.免提配置                                    $    $               $    $  ANS037.BYTE007  $  if(x==0x00)y=@073a;else if(x==0x01)y=@073b;else y=@01a9;
  $  249.车载信息娱乐显示级别类型配置                $    $               $    $  ANS038.BYTE004  $  if(x==0x00)y=@073c;else if(x==0x01)y=@08dd;else if(x==0x02)y=@08de;else if(x==0x03)y=@08df;else if(x==0x04)y=@073e;else if(x==0x05)y=@073f;else if(x==0x06)y=@08e0;else if(x==0x07)y=@08e1;else if(x==0x08)y=@0ae9;else if(x==0x09)y=@0aea;else if(x==0x0A)y=@0aeb;else y=@01a9;
  $  250.DAB数字音频广播配置                         $    $               $    $  ANS038.BYTE005  $  if(x==0x00)y=@0740;else if(x==0x01)y=@0692;else y=@01a9;
  $  251.停车辅助系统类型配置                        $    $               $    $  ANS038.BYTE006  $  if(x==0x00)y=@0702;else if(x==0x01)y=@0703;else if(x==0x02)y=@0704;else if(x==0x03)y=@0705;else if(x==0x04)y=@0706;else if(x==0x05)y=@0707;else if(x==0x06)y=@0aec;else y=@01a9;
  $  252.右后下摄像头类型配置                        $    $               $    $  ANS038.BYTE007  $  if(x==0x00)y=@0708;else if(x==0x01)y=@0709;else if(x==0x02)y=@070a;else if(x==0x03)y=@070b;else if(x==0x04)y=@070c;else if(x==0x05)y=@070d;else if(x==0x06)y=@070e;else if(x==0x07)y=@070f;else if(x==0x08)y=@0710;else y=@01a9;
  $  253.方向盘带音量调节配置                        $    $               $    $  ANS039.BYTE004  $  if(x==0x00)y=@0711;else if(x==0x01)y=@0712;else if(x==0x02)y=@0713;else y=@01a9;
  $  254.汽车音频类型配置                            $    $               $    $  ANS039.BYTE005  $  if(x==0x00)y=@0714;else if(x==0x01)y=@0715;else if(x==0x02)y=@0716;else if(x==0x03)y=@0717;else y=@01a9;
  $  255.AUX端口配置                                 $    $               $    $  ANS039.BYTE006  $  if(x==0x00)y=@0718;else if(x==0x01)y=@0719;else y=@01a9;
  $  256.视频输入功能配置                            $    $               $    $  ANS039.BYTE007  $  if(x==0x00)y=@071a;else if(x==0x01)y=@071b;else y=@01a9;
  $  257.USB端口类型配置                             $    $               $    $  ANS040.BYTE004  $  if(x==0x00)y=@071c;else if(x==0x01)y=@071d;else if(x==0x02)y=@071e;else y=@01a9;
  $  258.收音机频率配置                              $    $               $    $  ANS040.BYTE005  $  if(x==0x01)y=@0696;else if(x==0x02)y=@0697;else if(x==0x10)y=@071f;else if(x==0x20)y=@0af3;else y=@01a9;
  $  259.收音机范围配置                              $    $               $    $  ANS040.BYTE006  $  if(x==0x01)y=@0af4;else if(x==0x02)y=@0af5;else if(x==0x04)y=@0af6;else if(x==0x08)y=@0af7;else if(x==0x10)y=@0af8;else if(x==0x20)y=@0af3;else y=@01a9;
  $  260.扬声器类型配置                              $    $               $    $  ANS040.BYTE007  $  if(x==0x00)y=@069d;else if(x==0x01)y=@069e;else if(x==0x02)y=@069f;else if(x==0x03)y=@06a0;else if(x==0x04)y=@06a1;else y=@01a9;
  $  261.IPOD配置                                    $    $               $    $  ANS041.BYTE004  $  if(x==0x00)y=@096f;else if(x==0x01)y=@0692;else y=@01a9;
  $  262.汽车车型年份配置                            $    $               $    $  ANS041.BYTE005  $  if(x==0x00)y=@06a3;else if(x==0x01)y=@06a4;else if(x==0x02)y=@06a5;else if(x==0x03)y=@06a6;else if(x==0x04)y=@06a7;else if(x==0x05)y=@06a8;else if(x==0x06)y=@06a9;else if(x==0x07)y=@06aa;else if(x==0x08)y=@06ab;else y=@01a9;
  $  263.车型系列配置                                $    $               $    $  ANS041.BYTE006  $  if(x==0x06)y=@058e;else y=@01a9;
  $  264.车身类型配置                                $    $               $    $  ANS041.BYTE007  $  if(x==0x00)y=@06ac;else if(x==0x01)y=@06ad;else if(x==0x02)y=@06ae;else if(x==0x03)y=@06af;else if(x==0x04)y=@06b0;else if(x==0x05)y=@06b1;else if(x==0x06)y=@06b2;else if(x==0x07)y=@06b3;else if(x==0x08)y=@00f3;else if(x==0x09)y=@06b4;else if(x==0x0A)y=@06b5;else y=@01a9;
  $  265.汽车品牌配置                                $    $               $    $  ANS042.BYTE004  $  if(x==0x00)y=@066a;else if(x==0x01)y=@066b;else if(x==0x02)y=@066c;else y=@01a9;
  $  266.汽车国家码配置                              $    $               $    $  ANS042.BYTE005  $  if(x==0x00)y=@00d8;else if(x==0x01)y=@066d;else if(x==0x02)y=@066e;else if(x==0x03)y=@066f;else if(x==0x04)y=@0670;else if(x==0x05)y=@0671;else if(x==0x06)y=@0672;else if(x==0x07)y=@0673;else if(x==0x08)y=@0674;else if(x==0x09)y=@0675;else if(x==0x0A)y=@0676;else if(x==0x0B)y=@0677;else if(x==0x0C)y=@0678;else if(x==0x0D)y=@0679;else if(x==0x0E)y=@067a;else if(x==0x0F)y=@067b;else if(x==0x10)y=@067c;else y=@01a9;
  $  267.汽车驾驶方向类型配置                        $    $               $    $  ANS042.BYTE006  $  if(x==0x00)y=@067d;else if(x==0x01)y=@067e;else y=@01a9;
  $  268.汽车发动机类型配置                          $    $               $    $  ANS042.BYTE007  $  if(x==0x00)y=@067f;else if(x==0x01)y=@0af2;else if(x==0x02)y=@0681;else if(x==0x03)y=@0682;else y=@01a9;
  $  269.变速箱类型配置                              $    $               $    $  ANS043.BYTE004  $  if(x==0x00)y=@0687;else if(x==0x01)y=@0688;else if(x==0x02)y=@0689;else if(x==0x03)y=@068a;else if(x==0x04)y=@068b;else y=@01a9;
  $  270.汽车尾门操作类型配置                        $    $               $    $  ANS043.BYTE005  $  if(x==0x00)y=@0166;else if(x==0x01)y=@0167;else if(x==0x02)y=@0690;else if(x==0x03)y=@0b14;else y=@01a9;
  $  271.盲点信息系统配置                            $    $               $    $  ANS043.BYTE006  $  if(x==0x00)y=@08eb;else if(x==0x01)y=@0692;else y=@01a9;
  $  272.行人警告系统配置                            $    $               $    $  ANS043.BYTE007  $  if(x==0x00)y=@08ec;else if(x==0x01)y=@0692;else y=@01a9;
  $  273.车速报警系统配置                            $    $               $    $  ANS044.BYTE004  $  if(x==0x00)y=@08ed;else if(x==0x01)y=@0692;else y=@01a9;
  $  274.自动紧急呼叫配置                            $    $               $    $  ANS044.BYTE005  $  if(x==0x00)y=@043b;else if(x==0x01)y=@0692;else y=@01a9;
  $  275.汽车天窗类型配置                            $    $               $    $  ANS044.BYTE006  $  if(x==0x00)y=@0693;else if(x==0x01)y=@0b15;else if(x==0x02)y=@0695;else y=@01a9;
  $  276.混合动力类型配置                            $    $               $    $  ANS044.BYTE007  $  if(x==0x00)y=@06cc;else if(x==0x01)y=@06cd;else if(x==0x02)y=@06ce;else if(x==0x03)y=@06cf;else y=@01a9;
  $  277.ECO主动经济驾驶模式配置                     $    $               $    $  ANS045.BYTE004  $  if(x==0x00)y=@00b2;else if(x==0x01)y=@00b1;else y=@01a9;
  $  278.FCW正面碰撞警告配置                         $    $               $    $  ANS045.BYTE005  $  if(x==0x00)y=@08e5;else if(x==0x01)y=@08e6;else y=@01a9;
  $  279.MIC麦克风类型配置                           $    $               $    $  ANS045.BYTE006  $  if(x==0x00)y=@06d0;else if(x==0x01)y=@06d1;else if(x==0x02)y=@06d2;else y=@01a9;
  $  280.光传感器配置                                $    $               $    $  ANS045.BYTE007  $  if(x==0x00)y=@06d3;else if(x==0x01)y=@06d4;else y=@01a9;
  $  281.语音识别配置                                $    $               $    $  ANS046.BYTE004  $  if(x==0x00)y=@05b0;else if(x==0x01)y=@06da;else y=@01a9;
  $  282.ESP/ABS节点配置                             $    $               $    $  ANS046.BYTE005  $  if(x==0x00)y=@06b6;else if(x==0x01)y=@06b7;else if(x==0x02)y=@06b8;else y=@01a9;
  $  283.SAS配置                                     $    $               $    $  ANS046.BYTE006  $  if(x==0x00)y=@06b9;else if(x==0x01)y=@06ba;else y=@01a9;
  $  284.PEPS配置                                    $    $               $    $  ANS046.BYTE007  $  if(x==0x00)y=@06bb;else if(x==0x01)y=@003d;else y=@01a9;
  $  285.WIFI配置                                    $    $               $    $  ANS047.BYTE004  $  if(x==0x00)y=@06bc;else if(x==0x01)y=@06bd;else y=@01a9;
  $  286.轴距配置                                    $    $               $    $  ANS047.BYTE005  $  if(x==0x00)y=@06be;else if(x==0x01)y=@06bf;else y=@01a9;
  $  287.底盘高度配置                                $    $               $    $  ANS047.BYTE006  $  if(x==0x00)y=@06c0;else if(x==0x01)y=@06c1;else y=@01a9;
  $  288.驱动类型                                    $    $               $    $  ANS047.BYTE007  $  if(x==0x00)y=@0883;else if(x==0x01)y=@0b16;else if(x==0x02)y=@09d6;else if(x==0x03)y=@05dd;else y=@01a9;
  $  289.门类型配置                                  $    $               $    $  ANS048.BYTE004  $  if(x==0x00)y=@06c2;else if(x==0x01)y=@06c3;else y=@01a9;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:761 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
