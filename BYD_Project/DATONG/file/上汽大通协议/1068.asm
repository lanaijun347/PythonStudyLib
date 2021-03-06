
    车型ID：1068

    模拟：协议模拟-->1068

;******************************************************************************************************************************************************

    通讯线: $~12$~13$~500k

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

  $*$*DTC/68000000


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
  $%  REQ008:749 03 22 F1 8C 00 00 00 00       $%  ANS008:7C9 03 22 F1 8C 00 00 00 00
  $%  REQ009:749 03 22 F1 94 00 00 00 00       $%  ANS009:7C9 03 22 F1 94 00 00 00 00
  $%  REQ010:749 03 22 F1 8A 00 00 00 00       $%  ANS010:7C9 03 22 F1 8A 00 00 00 00
  $%  REQ011:749 03 22 F1 90 00 00 00 00       $%  ANS011:7C9 03 22 F1 90 00 00 00 00
  $%  REQ012:749 03 22 F1 A8 00 00 00 00       $%  ANS012:7C9 03 22 F1 A8 00 00 00 00
  $%  REQ013:749 03 22 F1 8B 00 00 00 00       $%  ANS013:7C9 03 22 F1 8B 00 00 00 00

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
  $%  010:供应商电控单元序列号:            $%    $%  ANS008.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:供应商电控单元软件参考号:        $%    $%  ANS009.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  012:系统供应商识别号:                $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  013:VIN码:                           $%    $%  ANS011.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  014:车辆特征信息:                    $%    $%  ANS012.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  015:电控单元制造日期:                $%    $%  ANS013.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:749 03 22 D1 00 00 00 00 00       $  ANS000:7C9 03 22 D1 00 00 00 00 00
  $  REQ001:749 03 22 D1 26 00 00 00 00       $  ANS001:7C9 03 22 D1 26 00 00 00 00
  $  REQ002:749 03 22 D1 20 00 00 00 00       $  ANS002:7C9 03 22 D1 20 00 00 00 00
  $  REQ003:749 03 22 D1 01 00 00 00 00       $  ANS003:7C9 03 22 D1 01 00 00 00 00
  $  REQ004:749 03 22 D1 24 00 00 00 00       $  ANS004:7C9 03 22 D1 24 00 00 00 00
  $  REQ005:749 03 22 D1 31 00 00 00 00       $  ANS005:7C9 03 22 D1 31 00 00 00 00
  $  REQ006:749 03 22 D1 30 00 00 00 00       $  ANS006:7C9 03 22 D1 30 00 00 00 00
  $  REQ007:749 03 22 D1 21 00 00 00 00       $  ANS007:7C9 03 22 D1 21 00 00 00 00
  $  REQ008:749 03 22 D1 14 00 00 00 00       $  ANS008:7C9 03 22 D1 14 00 00 00 00
  $  REQ009:749 03 22 D1 12 00 00 00 00       $  ANS009:7C9 03 22 D1 12 00 00 00 00
  $  REQ010:749 03 22 D1 27 00 00 00 00       $  ANS010:7C9 03 22 D1 27 00 00 00 00
  $  REQ011:749 03 22 D1 15 00 00 00 00       $  ANS011:7C9 03 22 D1 15 00 00 00 00
  $  REQ012:749 03 22 D1 16 00 00 00 00       $  ANS012:7C9 03 22 D1 16 00 00 00 00
  $  REQ013:749 03 22 D1 17 00 00 00 00       $  ANS013:7C9 03 22 D1 17 00 00 00 00
  $  REQ014:749 03 22 D1 18 00 00 00 00       $  ANS014:7C9 03 22 D1 18 00 00 00 00
  $  REQ015:749 03 22 D1 13 00 00 00 00       $  ANS015:7C9 03 22 D1 13 00 00 00 00
  $  REQ016:749 03 22 D1 11 00 00 00 00       $  ANS016:7C9 03 22 D1 11 00 00 00 00
  $  REQ017:749 03 22 D1 25 00 00 00 00       $  ANS017:7C9 03 22 D1 25 00 00 00 00
  $  REQ018:749 03 22 D1 19 00 00 00 00       $  ANS018:7C9 03 22 D1 19 00 00 00 00

  $  000.转速限制状态                     $    $               $    $  ANS000.BYTE004  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  001.功率限制状态                     $    $               $    $  ANS000.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  002.ECO模式开                        $    $               $    $  ANS000.BYTE004  $  if((x&0x20)==0x20)y=@0935;else y=@0936;
  $  003.VCU正常运行校验位                $    $               $    $  ANS000.BYTE004  $  if((x&0x10)==0x10)y=@05b9;else y=@0937;
  $  004.电机放电                         $    $               $    $  ANS000.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  005.EPT驱动模式选择                  $    $               $    $  ANS000.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  006.PCU PWM(脉宽调制)使能            $    $               $    $  ANS000.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  007.PCU全局使能(PCU反馈准备好)       $    $               $    $  ANS000.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  008.安全切断状态                     $    $               $    $  ANS000.BYTE005  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  009.电机电流                         $    $  A            $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.1;
  $  010.PCU电机电流Q相                   $    $  A            $    $  ANS002.BYTE004  $  y=(x1*256+x2)-768;
  $  011.EPT正常运行校验位反馈            $    $               $    $  ANS003.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  012.EPF驾驶模式反馈                  $    $               $    $  ANS003.BYTE004  $  if((x&0x04)==0x04)y=@0935;else y=@0936;
  $  013.PCU PWM(脉宽调制)使能反馈        $    $               $    $  ANS003.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  014.PCU全局使能反馈(PCU准备好)       $    $               $    $  ANS003.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  015.逆变器温度                       $    $  degree C     $    $  ANS004.BYTE004  $  y=x-40;
  $  016.档位状态                         $    $               $    $  ANS005.BYTE004  $  if((x&0x07)==0x00) y=@0938;else if((x&0x07)==0x01) y=@0939;else if((x&0x07)==0x02) y=@0035;else if((x&0x07)==0x03) y=@0001;else if((x&0x07)==0x04) y=@093a;else y=@00b3;
  $  017.行驶模式                         $    $               $    $  ANS006.BYTE004  $  if((x&0x0F)==0x00) y=@0938;else if((x&0x0F)==0x01) y=@093b;else if((x&0x0F)==0x02) y=@0036;else if((x&0x0F)==0x03) y=@093c;else if((x&0x0F)==0x04) y=@093d;else if((x&0x0F)==0x05) y=@093e;else if((x&0x0F)==0x06) y=@093a;else if((x&0x0F)==0x07) y=@093f;else if((x&0x0F)==0x08) y=@0940;else y=@01a9;
  $  018.电机控制器温度                   $    $  degree C     $    $  ANS007.BYTE004  $  y=x-40;
  $  019.电机转速                         $    $  rpm          $    $  ANS008.BYTE004  $  y=(x1*256+x2)*0.5-16384;
  $  020.电机参考转速                     $    $  rpm          $    $  ANS009.BYTE004  $  y=(x1*256+x2)*0.5-16384;
  $  021.电机功率                         $    $  kW           $    $  ANS010.BYTE004  $  y=(x1*256+x2)*0.01;
  $  022.电机逆变器温度U值                $    $  degree C     $    $  ANS011.BYTE004  $  y=x-40;
  $  023.电机逆变器温度V值                $    $  degree C     $    $  ANS012.BYTE004  $  y=x-40;
  $  024.电机逆变器温度W值                $    $  degree C     $    $  ANS013.BYTE004  $  y=x-40;
  $  025.电机定子温度                     $    $  degree C     $    $  ANS014.BYTE004  $  y=x-40;
  $  026.电机扭矩                         $    $  Nm           $    $  ANS015.BYTE004  $  y=(x1*256+x2)*0.1-900;
  $  027.电机参考扭矩                     $    $  Nm           $    $  ANS016.BYTE004  $  y=(x1*256+x2)*0.1-900;
  $  028.EPT DC连接电压                   $    $  V            $    $  ANS017.BYTE004  $  y=(x1*256+x2)*0.1;
  $  029.PCU供电电压                      $    $  V            $    $  ANS018.BYTE004  $  y=x*0.125;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:749 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
