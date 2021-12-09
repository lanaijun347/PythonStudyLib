
    车型ID：107f

    模拟：协议模拟-->107f

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:749 02 10 01 00 00 00 00 00       $~  ANS000:7C9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:749 02 3E 80 00 00 00 00 00       $!  ANS000:7C9 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:749 03 19 02 09 00 00 00 00       $#  ANS000:7C9 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/7f000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:749 04 14 FF FF FF 00 00 00       $$  ANS000:7C9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:749 03 22 F1 A0 00 00 00 00       $%  ANS000:7C9 03 22 F1 A0 00 00 00 00
  $%  REQ001:749 03 22 F1 83 00 00 00 00       $%  ANS001:7C9 03 22 F1 83 00 00 00 00
  $%  REQ002:749 03 22 F1 A1 00 00 00 00       $%  ANS002:7C9 03 22 F1 A1 00 00 00 00
  $%  REQ003:749 03 22 F1 91 00 00 00 00       $%  ANS003:7C9 03 22 F1 91 00 00 00 00
  $%  REQ004:749 03 22 F1 A2 00 00 00 00       $%  ANS004:7C9 03 22 F1 A2 00 00 00 00
  $%  REQ005:749 03 22 F1 87 00 00 00 00       $%  ANS005:7C9 03 22 F1 87 00 00 00 00
  $%  REQ006:749 03 22 F1 10 00 00 00 00       $%  ANS006:7C9 03 22 F1 10 00 00 00 00
  $%  REQ007:749 03 22 F1 92 00 00 00 00       $%  ANS007:7C9 03 22 F1 92 00 00 00 00
  $%  REQ008:749 03 22 F1 94 00 00 00 00       $%  ANS008:7C9 03 22 F1 94 00 00 00 00
  $%  REQ009:749 03 22 F1 8A 00 00 00 00       $%  ANS009:7C9 03 22 F1 8A 00 00 00 00
  $%  REQ010:749 03 22 F1 90 00 00 00 00       $%  ANS010:7C9 03 22 F1 90 00 00 00 00
  $%  REQ011:749 03 22 F1 A8 00 00 00 00       $%  ANS011:7C9 03 22 F1 A8 00 00 00 00
  $%  REQ012:749 03 22 F1 8B 00 00 00 00       $%  ANS012:7C9 03 22 F1 8B 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  002:电控单元标定软件号:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元硬件号:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:电控单元网络文件参考号:          $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  005:电控单元零件号:                  $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号(上次):            $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  007:测试工具参考号(上次):            $%    $%  ANS006.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  008:里程读数(上次)(km):              $%    $%  ANS006.BYTE015  $%  y=x1*256*256+x2*256+x3;
  $%  009:供应商电控单元硬件参考号:        $%    $%  ANS007.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  010:供应商电控单元软件参考号:        $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:系统供应商识别号:                $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  012:VIN码:                           $%    $%  ANS010.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  013:车辆特征信息:                    $%    $%  ANS011.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  014:电控单元制造日期:                $%    $%  ANS012.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:749 03 22 D1 10 00 00 00 00       $  ANS000:7C9 03 22 D1 10 00 00 00 00
  $  REQ001:749 03 22 D1 11 00 00 00 00       $  ANS001:7C9 03 22 D1 11 00 00 00 00
  $  REQ002:749 03 22 D1 12 00 00 00 00       $  ANS002:7C9 03 22 D1 12 00 00 00 00
  $  REQ003:749 03 22 D0 03 00 00 00 00       $  ANS003:7C9 03 22 D0 03 00 00 00 00
  $  REQ004:749 03 22 D0 02 00 00 00 00       $  ANS004:7C9 03 22 D0 02 00 00 00 00

  $  000.电机扭矩                        $    $  Nm           $    $  ANS000.BYTE004  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*0.5;
  $  001.电机转速                        $    $  rpm          $    $  ANS000.BYTE006  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*0.5;
  $  002.电机参考扭矩                    $    $  Nm           $    $  ANS000.BYTE008  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*0.015625;
  $  003.LDC控制电压参考值               $    $  V            $    $  ANS000.BYTE010  $  y=x*0.125;
  $  004.EPT DC连接电压                  $    $  V            $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.1;
  $  005.电机电流                        $    $  A            $    $  ANS001.BYTE006  $  y=(x1*256+x2)*0.1;
  $  006.电机功率                        $    $  kW           $    $  ANS001.BYTE008  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*0.01;
  $  007.电机逆变器温度U值               $    $  degree C     $    $  ANS001.BYTE010  $  y=x-40;
  $  008.电机逆变器温度V值               $    $  degree C     $    $  ANS001.BYTE011  $  y=x-40;
  $  009.电机逆变器温度W值               $    $  degree C     $    $  ANS002.BYTE004  $  y=x-40;
  $  010.电机相电流过流故障              $    $               $    $  ANS003.BYTE004  $  if((x&0x80)==0x80)y=@0474;else y=@00e5;
  $  011.母线过压故障                    $    $               $    $  ANS003.BYTE004  $  if((x&0x40)==0x40)y=@0474;else y=@00e5;
  $  012.母线欠压故障                    $    $               $    $  ANS003.BYTE004  $  if((x&0x20)==0x20)y=@0474;else y=@00e5;
  $  013.控制器过温故障                  $    $               $    $  ANS003.BYTE004  $  if((x&0x10)==0x10)y=@0474;else y=@00e5;
  $  014.电机过温故障                    $    $               $    $  ANS003.BYTE004  $  if((x&0x08)==0x08)y=@0474;else y=@00e5;
  $  015.控制器硬件故障                  $    $               $    $  ANS003.BYTE004  $  if((x&0x04)==0x04)y=@0474;else y=@00e5;
  $  016.旋变激磁过压                    $    $               $    $  ANS003.BYTE004  $  if((x&0x02)==0x02)y=@0474;else y=@00e5;
  $  017.旋变激磁欠压                    $    $               $    $  ANS003.BYTE004  $  if((x&0x01)==0x01)y=@0474;else y=@00e5;
  $  018.模块故障                        $    $               $    $  ANS003.BYTE005  $  if((x&0x80)==0x80)y=@0474;else y=@00e5;
  $  019.旋转变压器故障                  $    $               $    $  ANS003.BYTE005  $  if((x&0x40)==0x40)y=@0474;else y=@00e5;
  $  020.旋转变压器极对数故障            $    $               $    $  ANS003.BYTE005  $  if((x&0x20)==0x20)y=@0474;else y=@00e5;
  $  021.电流传感器故障                  $    $               $    $  ANS003.BYTE005  $  if((x&0x10)==0x10)y=@0474;else y=@00e5;
  $  022.电机超速故障                    $    $               $    $  ANS003.BYTE005  $  if((x&0x08)==0x08)y=@0474;else y=@00e5;
  $  023.DCDC故障                        $    $               $    $  ANS003.BYTE005  $  if((x&0x06)==0x00) y=@0029;else if((x&0x06)==0x02) y=@002a;else y=@0b97;
  $  024.电机故障                        $    $               $    $  ANS003.BYTE006  $  if((x&0x80)==0x80)y=@0474;else y=@00e5;
  $  025.DCDC过温                        $    $               $    $  ANS003.BYTE006  $  if((x&0x40)==0x40)y=@0474;else y=@00e5;
  $  026.DCDC输入过流                    $    $               $    $  ANS003.BYTE006  $  if((x&0x20)==0x20)y=@0474;else y=@00e5;
  $  027.DCDC输出过流                    $    $               $    $  ANS003.BYTE006  $  if((x&0x10)==0x10)y=@0474;else y=@00e5;
  $  028.DCDC母线过压                    $    $               $    $  ANS003.BYTE006  $  if((x&0x08)==0x08)y=@0474;else y=@00e5;
  $  029.DCDC输出过压                    $    $               $    $  ANS003.BYTE006  $  if((x&0x04)==0x04)y=@0474;else y=@00e5;
  $  030.DCDC输出欠压                    $    $               $    $  ANS003.BYTE006  $  if((x&0x02)==0x02)y=@0474;else y=@00e5;
  $  031.电机低压使能                    $    $               $    $  ANS004.BYTE004  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  032.电机PWM(脉宽调制)使能反馈       $    $               $    $  ANS004.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  033.电机低压使能反馈                $    $               $    $  ANS004.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  034.电机模式                        $    $               $    $  ANS004.BYTE004  $  if((x&0x10)==0x10)y=@0935;else y=@0936;
  $  035.档位信号                        $    $               $    $  ANS004.BYTE004  $  if((x&0x0E)==0x00) y=@0a19;else if((x&0x0E)==0x02) y=@0003;else if((x&0x0E)==0x04) y=@029b;else if((x&0x0E)==0x06) y=@0001;else if((x&0x0E)==0x08) y=@0000;else y=@01a9;
  $  036.电机限功率状态                  $    $               $    $  ANS004.BYTE004  $  if((x&0x01)==0x01)y=@0ba7;else y=@0ba8;
  $  037.电机限速状态                    $    $               $    $  ANS004.BYTE005  $  if((x&0x80)==0x80)y=@0ba9;else y=@0baa;
  $  038.DCDC启用                        $    $               $    $  ANS004.BYTE005  $  if((x&0x40)==0x40)y=@0028;else y=@000f;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:749 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
