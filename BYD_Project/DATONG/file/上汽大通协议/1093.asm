
    车型ID：1093

    模拟：协议模拟-->1093

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

  $*$*DTC/93000000


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
  $%  002:电控单元标定软件号:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元硬件号:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:电控单元制造日期:                $%    $%  ANS004.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);
  $%  005:电控单元网络文件参考号:          $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号:                  $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  007:电控单元零件号(上次):            $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  008:测试参考号(上次):                $%    $%  ANS007.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  009:里程读数(上次)KM:                $%    $%  ANS007.BYTE015  $%  y=(x1*256*256+x2*256+x3);
  $%  010:供应商电控单元硬件参考号:        $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:供应商电控单元序列号:            $%    $%  ANS009.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  012:供应商电控单元软件参考号:        $%    $%  ANS010.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  013:系统供应商识别码:                $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  014:VIN码:                           $%    $%  ANS012.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  015:车辆特征信息:                    $%    $%  ANS013.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:700 03 22 C1 11 00 00 00 00       $  ANS000:780 03 22 C1 11 00 00 00 00
  $  REQ001:700 03 22 E1 07 00 00 00 00       $  ANS001:780 03 22 E1 07 00 00 00 00
  $  REQ002:700 03 22 E1 05 00 00 00 00       $  ANS002:780 03 22 E1 05 00 00 00 00
  $  REQ003:700 03 22 E1 04 00 00 00 00       $  ANS003:780 03 22 E1 04 00 00 00 00
  $  REQ004:700 03 22 E1 08 00 00 00 00       $  ANS004:780 03 22 E1 08 00 00 00 00
  $  REQ005:700 03 22 E1 06 00 00 00 00       $  ANS005:780 03 22 E1 06 00 00 00 00
  $  REQ006:700 03 22 E1 09 00 00 00 00       $  ANS006:780 03 22 E1 09 00 00 00 00
  $  REQ007:700 03 22 E1 10 00 00 00 00       $  ANS007:780 03 22 E1 10 00 00 00 00
  $  REQ008:700 03 22 B1 03 00 00 00 00       $  ANS008:780 03 22 B1 03 00 00 00 00
  $  REQ009:700 03 22 D4 01 00 00 00 00       $  ANS009:780 03 22 D4 01 00 00 00 00
  $  REQ010:700 03 22 D4 02 00 00 00 00       $  ANS010:780 03 22 D4 02 00 00 00 00
  $  REQ011:700 03 22 D4 11 00 00 00 00       $  ANS011:780 03 22 D4 11 00 00 00 00
  $  REQ012:700 03 22 D4 12 00 00 00 00       $  ANS012:780 03 22 D4 12 00 00 00 00
  $  REQ013:700 03 22 D1 1B 00 00 00 00       $  ANS013:780 03 22 D1 1B 00 00 00 00
  $  REQ014:700 03 22 B1 01 00 00 00 00       $  ANS014:780 03 22 B1 01 00 00 00 00
  $  REQ015:700 03 22 B1 02 00 00 00 00       $  ANS015:780 03 22 B1 02 00 00 00 00

  $  000.欧6配置                             $    $               $    $  ANS000.BYTE004  $  if((x&0x80)==0x80)y=@0f4f;else y=@0f50;
  $  001.变速箱类型配置                      $    $               $    $  ANS000.BYTE004  $  if((x&0x40)==0x40)y=@003b;else y=@0596;
  $  002.TPMS启用                            $    $               $    $  ANS000.BYTE004  $  if((x&0x20)==0x20)y=@00dc;else y=@00db;
  $  003.ESP启用                             $    $               $    $  ANS000.BYTE004  $  if((x&0x10)==0x10)y=@00dc;else y=@00db;
  $  004.巡航控制启用                        $    $               $    $  ANS000.BYTE004  $  if((x&0x08)==0x08)y=@00dc;else y=@00db;
  $  005.超速配置                            $    $               $    $  ANS000.BYTE004  $  if((x&0x06)==0x00) y=@0ba1;else if((x&0x06)==0x02) y=@0ba2;else if((x&0x06)==0x04) y=@0ba3;else y=@0ba4;
  $  006.超速报警启用                        $    $               $    $  ANS000.BYTE004  $  if((x&0x01)==0x01)y=@00dc;else y=@00db;
  $  007.语言类型                            $    $               $    $  ANS000.BYTE005  $  if((x&0x01)==0x01)y=@0486;else y=@0487;
  $  008.仪表显示的车速                      $    $  km/h         $    $  ANS001.BYTE004  $  y=x;
  $  009.发动机冷却液温度                    $    $  degree C     $    $  ANS002.BYTE004  $  y=x-60;
  $  010.发动机转速(来自CAN)                 $    $  rpm          $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.25;
  $  011.燃油信号输入                        $    $               $    $  ANS004.BYTE004  $  y=(x1*256+x2);
  $  012.车速信号输入频率                    $    $  Hz           $    $  ANS005.BYTE004  $  y=(x1*256+x2);
  $  013.左前轮胎压力                        $    $  kPa          $    $  ANS006.BYTE004  $  y=x*701/255.0;
  $  014.右前轮胎压力                        $    $  kPa          $    $  ANS006.BYTE005  $  y=x*701/255.0;
  $  015.左后轮胎压力                        $    $  kPa          $    $  ANS006.BYTE006  $  y=x*701/255.0;
  $  016.右后轮胎压力                        $    $  kPa          $    $  ANS006.BYTE007  $  y=x*701/255.0;
  $  017.左前轮胎温度                        $    $  degree C     $    $  ANS007.BYTE004  $  y=x-60;
  $  018.右前轮胎温度                        $    $  degree C     $    $  ANS007.BYTE005  $  y=x-60;
  $  019.左后轮胎温度                        $    $  degree C     $    $  ANS007.BYTE006  $  y=x-60;
  $  020.右后轮胎温度                        $    $  degree C     $    $  ANS007.BYTE007  $  y=x-60;
  $  021.倒档输出信息状态                    $    $               $    $  ANS008.BYTE004  $  if((x&0x08)==0x08)y=@0fd4;else y=@0fd5;
  $  022.手刹输出信息状态                    $    $               $    $  ANS008.BYTE004  $  if((x&0x04)==0x04)y=@0fce;else y=@0f64;
  $  023.倒档输入状态                        $    $               $    $  ANS008.BYTE004  $  if((x&0x02)==0x02)y=@0fd4;else y=@0fd5;
  $  024.手刹输入状态                        $    $               $    $  ANS008.BYTE004  $  if((x&0x01)==0x01)y=@0fce;else y=@0f64;
  $  025.巡航控制激活                        $    $               $    $  ANS009.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  026.电热塞指示灯                        $    $               $    $  ANS009.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  027.燃油积水警告灯                      $    $               $    $  ANS009.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  028.发动机故障灯状态                    $    $               $    $  ANS009.BYTE004  $  if((x&0x0C)==0x00)y=@000f;else if((x&0x0C)==0x04)y=@0028;else if((x&0x0C)==0x08)y=@0298;else y=@0004;
  $  029.发动机MIL(发动机故障灯)灯状态       $    $               $    $  ANS009.BYTE004  $  if((x&0x03)==0x00)y=@000f;else if((x&0x03)==0x01)y=@0028;else if((x&0x03)==0x02)y=@0298;else y=@0004;
  $  030.变速箱故障状态                      $    $               $    $  ANS009.BYTE005  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  031.换档模式                            $    $               $    $  ANS009.BYTE005  $  if((x&0x70)==0x00)y=@0552;else if((x&0x70)==0x10)y=@0508;else if((x&0x70)==0x20)y=@0fcf;else if((x&0x70)==0x30)y=@0fd0;else if((x&0x70)==0x40)y=@054f;else if((x&0x70)==0x50)y=@0262;else if((x&0x70)==0x60)y=@01a9;else y=@0fd1;
  $  032.齿轮啮合                            $    $               $    $  ANS009.BYTE005  $  if((x&0x0F)==0x00) y=@0262;else if((x&0x0F)==0x01) y=@006f;else if((x&0x0F)==0x02) y=@0070;else if((x&0x0F)==0x03) y=@0299;else if((x&0x0F)==0x04) y=@029a;else if((x&0x0F)==0x05) y=@0073;else if((x&0x0F)==0x06) y=@0074;else if((x&0x0F)==0x07) y=@0263;else if((x&0x0F)==0x0F) y=@0136;else y=@0004;
  $  033.尿素指示灯                          $    $               $    $  ANS010.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  034.保养提示                            $    $               $    $  ANS010.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  035.档位指示                            $    $               $    $  ANS010.BYTE004  $  if((x&0x04)==0x04)y=@0298;else y=@0297;
  $  036.喇叭鸣叫请求                        $    $               $    $  ANS010.BYTE004  $  if((x&0x03)==0x00)y=@000f;else if((x&0x03)==0x01)y=@0fd2;else if((x&0x03)==0x02)y=@0fd3;else y=@0004;
  $  037.电子驻车指示灯                      $    $               $    $  ANS011.BYTE004  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  038.电子驻车故障灯                      $    $               $    $  ANS011.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  039.电子驻车提示信息                    $    $               $    $  ANS011.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  040.EBD故障灯                           $    $               $    $  ANS011.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  041.ABS故障灯                           $    $               $    $  ANS011.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  042.ESP故障灯                           $    $               $    $  ANS011.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  043.ESP显示灯                           $    $               $    $  ANS011.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  044.ESP关闭灯                           $    $               $    $  ANS011.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  045.温度报警                            $    $               $    $  ANS011.BYTE005  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  046.TPMS系统状态                        $    $               $    $  ANS011.BYTE005  $  if((x&0x0C)==0x00)y=@05c3;else if((x&0x0C)==0x04)y=@00d3;else if((x&0x0C)==0x08)y=@00d4;else y=@0004;
  $  047.胎压灯状态                          $    $               $    $  ANS011.BYTE005  $  if((x&0x03)==0x00)y=@046a;else if((x&0x03)==0x01)y=@06ff;else if((x&0x03)==0x02)y=@046c;else y=@0004;
  $  048.右前轮胎压力报警状态                $    $               $    $  ANS012.BYTE004  $  if((x&0x38)==0x00) y=@05c2;else if((x&0x38)==0x08) y=@0fd6;else if((x&0x38)==0x10) y=@05c5;else if((x&0x38)==0x18) y=@0fd7;else if((x&0x38)==0x20) y=@05c7;else if((x&0x38)==0x28) y=@05c8;else if((x&0x38)==0x30) y=@05c9;else y=@0fd8;
  $  049.左前轮胎压力报警状态                $    $               $    $  ANS012.BYTE004  $  if((x&0x07)==0x00) y=@05c2;else if((x&0x07)==0x01) y=@0fd6;else if((x&0x07)==0x02) y=@05c5;else if((x&0x07)==0x03) y=@0fd7;else if((x&0x07)==0x04) y=@05c7;else if((x&0x07)==0x05) y=@05c8;else if((x&0x07)==0x06) y=@05c9;else y=@0fd8;
  $  050.右后轮胎压力报警状态                $    $               $    $  ANS012.BYTE005  $  if((x&0x38)==0x00) y=@05c2;else if((x&0x38)==0x08) y=@0fd6;else if((x&0x38)==0x10) y=@05c5;else if((x&0x38)==0x18) y=@0fd7;else if((x&0x38)==0x20) y=@05c7;else if((x&0x38)==0x28) y=@05c8;else if((x&0x38)==0x30) y=@05c9;else y=@0fd8;
  $  051.左后轮胎压力报警状态                $    $               $    $  ANS012.BYTE005  $  if((x&0x07)==0x00) y=@05c2;else if((x&0x07)==0x01) y=@0fd6;else if((x&0x07)==0x02) y=@05c5;else if((x&0x07)==0x03) y=@0fd7;else if((x&0x07)==0x04) y=@05c7;else if((x&0x07)==0x05) y=@05c8;else if((x&0x07)==0x06) y=@05c9;else y=@0fd8;
  $  052.EBD警告灯                           $    $               $    $  ANS013.BYTE004  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  053.ESP关闭指示灯                       $    $               $    $  ANS013.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  054.ESP工作指示灯                       $    $               $    $  ANS013.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  055.TCU警告灯                           $    $               $    $  ANS013.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  056.座椅安全带指示灯                    $    $               $    $  ANS013.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  057.TPMS警告灯                          $    $               $    $  ANS013.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  058.发动机冷却液过热警告灯              $    $               $    $  ANS013.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  059.燃油液位过低警告                    $    $               $    $  ANS013.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  060.自动巡航状态指示灯                  $    $               $    $  ANS013.BYTE005  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  061.ABS警告灯                           $    $               $    $  ANS013.BYTE005  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  062.发动机系统OBD故障                   $    $               $    $  ANS013.BYTE005  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  063.发动机系统故障                      $    $               $    $  ANS013.BYTE005  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  064.燃油含水警告                        $    $               $    $  ANS013.BYTE005  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  065.电热塞指示灯                        $    $               $    $  ANS013.BYTE005  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  066.实际里程读数(无偏移)                $    $  km           $    $  ANS014.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  067.显示里程(有偏移)                    $    $  km           $    $  ANS015.BYTE004  $  y=x1*256*256+x2*256+x3;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:700 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
