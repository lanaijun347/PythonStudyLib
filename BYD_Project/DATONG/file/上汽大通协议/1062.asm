
    车型ID：1062

    模拟：协议模拟-->1062

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:747 02 10 01 00 00 00 00 00       $~  ANS000:7C7 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:747 02 3E 80 00 00 00 00 00       $!  ANS000:7C7 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:747 03 19 02 09 00 00 00 00       $#  ANS000:7C7 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/62000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:747 04 14 FF FF FF 00 00 00       $$  ANS000:7C7 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:747 03 22 F1 A0 00 00 00 00       $%  ANS000:7C7 03 22 F1 A0 00 00 00 00
  $%  REQ001:747 03 22 F1 A1 00 00 00 00       $%  ANS001:7C7 03 22 F1 A1 00 00 00 00
  $%  REQ002:747 03 22 F1 91 00 00 00 00       $%  ANS002:7C7 03 22 F1 91 00 00 00 00
  $%  REQ003:747 03 22 F1 97 00 00 00 00       $%  ANS003:7C7 03 22 F1 97 00 00 00 00
  $%  REQ004:747 03 22 F1 87 00 00 00 00       $%  ANS004:7C7 03 22 F1 87 00 00 00 00
  $%  REQ005:747 03 22 F1 92 00 00 00 00       $%  ANS005:7C7 03 22 F1 92 00 00 00 00
  $%  REQ006:747 03 22 F1 94 00 00 00 00       $%  ANS006:7C7 03 22 F1 94 00 00 00 00
  $%  REQ007:747 03 22 F1 8A 00 00 00 00       $%  ANS007:7C7 03 22 F1 8A 00 00 00 00
  $%  REQ008:747 03 22 F1 90 00 00 00 00       $%  ANS008:7C7 03 22 F1 90 00 00 00 00
  $%  REQ009:747 03 22 F1 A8 00 00 00 00       $%  ANS009:7C7 03 22 F1 A8 00 00 00 00
  $%  REQ010:747 03 22 F1 8B 00 00 00 00       $%  ANS010:7C7 03 22 F1 8B 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元标定软件号:              $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  002:电控单元硬件号:                  $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控电压标识号:                  $%    $%  ANS003.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  004:SAIC电控单元零件号:              $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  005:供应商电控单元硬件参考号:        $%    $%  ANS005.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  006:供应商电控单元软件参考号:        $%    $%  ANS006.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:系统供应商识别号:                $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  008:VIN码:                           $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  009:车辆特征信息:                    $%    $%  ANS009.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  010:电控单元制造日期:                $%    $%  ANS010.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:747 03 22 E0 03 00 00 00 00       $  ANS000:7C7 03 22 E0 03 00 00 00 00
  $  REQ001:747 03 22 E0 00 00 00 00 00       $  ANS001:7C7 03 22 E0 00 00 00 00 00
  $  REQ002:747 03 22 D1 02 00 00 00 00       $  ANS002:7C7 03 22 D1 02 00 00 00 00
  $  REQ003:747 03 22 D1 03 00 00 00 00       $  ANS003:7C7 03 22 D1 03 00 00 00 00
  $  REQ004:747 03 22 E0 08 00 00 00 00       $  ANS004:7C7 03 22 E0 08 00 00 00 00
  $  REQ005:747 03 22 E0 09 00 00 00 00       $  ANS005:7C7 03 22 E0 09 00 00 00 00
  $  REQ006:747 03 22 D1 14 00 00 00 00       $  ANS006:7C7 03 22 D1 14 00 00 00 00
  $  REQ007:747 03 22 D1 17 00 00 00 00       $  ANS007:7C7 03 22 D1 17 00 00 00 00
  $  REQ008:747 03 22 D1 16 00 00 00 00       $  ANS008:7C7 03 22 D1 16 00 00 00 00
  $  REQ009:747 03 22 D1 18 00 00 00 00       $  ANS009:7C7 03 22 D1 18 00 00 00 00
  $  REQ010:747 03 22 E0 47 00 00 00 00       $  ANS010:7C7 03 22 E0 47 00 00 00 00
  $  REQ011:747 03 22 D1 04 00 00 00 00       $  ANS011:7C7 03 22 D1 04 00 00 00 00
  $  REQ012:747 03 22 E0 42 00 00 00 00       $  ANS012:7C7 03 22 E0 42 00 00 00 00
  $  REQ013:747 03 22 E0 48 00 00 00 00       $  ANS013:7C7 03 22 E0 48 00 00 00 00
  $  REQ014:747 03 22 E0 10 00 00 00 00       $  ANS014:7C7 03 22 E0 10 00 00 00 00
  $  REQ015:747 03 22 E0 46 00 00 00 00       $  ANS015:7C7 03 22 E0 46 00 00 00 00
  $  REQ016:747 03 22 E0 07 00 00 00 00       $  ANS016:7C7 03 22 E0 07 00 00 00 00
  $  REQ017:747 03 22 E0 01 00 00 00 00       $  ANS017:7C7 03 22 E0 01 00 00 00 00
  $  REQ018:747 03 22 E0 45 00 00 00 00       $  ANS018:7C7 03 22 E0 45 00 00 00 00
  $  REQ019:747 03 22 E0 12 00 00 00 00       $  ANS019:7C7 03 22 E0 12 00 00 00 00
  $  REQ020:747 03 22 D1 13 00 00 00 00       $  ANS020:7C7 03 22 D1 13 00 00 00 00
  $  REQ021:747 03 22 E0 16 00 00 00 00       $  ANS021:7C7 03 22 E0 16 00 00 00 00
  $  REQ022:747 03 22 D1 05 00 00 00 00       $  ANS022:7C7 03 22 D1 05 00 00 00 00
  $  REQ023:747 03 22 D1 07 00 00 00 00       $  ANS023:7C7 03 22 D1 07 00 00 00 00
  $  REQ024:747 03 22 E0 30 00 00 00 00       $  ANS024:7C7 03 22 E0 30 00 00 00 00
  $  REQ025:747 03 22 E0 29 00 00 00 00       $  ANS025:7C7 03 22 E0 29 00 00 00 00
  $  REQ026:747 03 22 E0 27 00 00 00 00       $  ANS026:7C7 03 22 E0 27 00 00 00 00
  $  REQ027:747 03 22 E0 28 00 00 00 00       $  ANS027:7C7 03 22 E0 28 00 00 00 00
  $  REQ028:747 03 22 D1 10 00 00 00 00       $  ANS028:7C7 03 22 D1 10 00 00 00 00
  $  REQ029:747 03 22 D1 11 00 00 00 00       $  ANS029:7C7 03 22 D1 11 00 00 00 00
  $  REQ030:747 03 22 D1 12 00 00 00 00       $  ANS030:7C7 03 22 D1 12 00 00 00 00
  $  REQ031:747 03 22 E0 25 00 00 00 00       $  ANS031:7C7 03 22 E0 25 00 00 00 00
  $  REQ032:747 03 22 E0 24 00 00 00 00       $  ANS032:7C7 03 22 E0 24 00 00 00 00
  $  REQ033:747 03 22 E0 15 00 00 00 00       $  ANS033:7C7 03 22 E0 15 00 00 00 00
  $  REQ034:747 03 22 E0 14 00 00 00 00       $  ANS034:7C7 03 22 E0 14 00 00 00 00
  $  REQ035:747 03 22 E0 36 00 00 00 00       $  ANS035:7C7 03 22 E0 36 00 00 00 00
  $  REQ036:747 03 22 E0 37 00 00 00 00       $  ANS036:7C7 03 22 E0 37 00 00 00 00
  $  REQ037:747 03 22 D1 08 00 00 00 00       $  ANS037:7C7 03 22 D1 08 00 00 00 00
  $  REQ038:747 03 22 E0 34 00 00 00 00       $  ANS038:7C7 03 22 E0 34 00 00 00 00
  $  REQ039:747 03 22 E0 38 00 00 00 00       $  ANS039:7C7 03 22 E0 38 00 00 00 00
  $  REQ040:747 03 22 E0 41 00 00 00 00       $  ANS040:7C7 03 22 E0 41 00 00 00 00
  $  REQ041:747 03 22 E0 40 00 00 00 00       $  ANS041:7C7 03 22 E0 40 00 00 00 00
  $  REQ042:747 03 22 E0 33 00 00 00 00       $  ANS042:7C7 03 22 E0 33 00 00 00 00
  $  REQ043:747 03 22 D1 09 00 00 00 00       $  ANS043:7C7 03 22 D1 09 00 00 00 00
  $  REQ044:747 03 22 E0 35 00 00 00 00       $  ANS044:7C7 03 22 E0 35 00 00 00 00
  $  REQ045:747 03 22 E0 39 00 00 00 00       $  ANS045:7C7 03 22 E0 39 00 00 00 00
  $  REQ046:747 03 22 D1 19 00 00 00 00       $  ANS046:7C7 03 22 D1 19 00 00 00 00
  $  REQ047:747 03 22 D1 22 00 00 00 00       $  ANS047:7C7 03 22 D1 22 00 00 00 00
  $  REQ048:747 03 22 D1 25 00 00 00 00       $  ANS048:7C7 03 22 D1 25 00 00 00 00
  $  REQ049:747 03 22 E0 04 00 00 00 00       $  ANS049:7C7 03 22 E0 04 00 00 00 00
  $  REQ050:747 03 22 E0 17 00 00 00 00       $  ANS050:7C7 03 22 E0 17 00 00 00 00
  $  REQ051:747 03 22 D1 06 00 00 00 00       $  ANS051:7C7 03 22 D1 06 00 00 00 00
  $  REQ052:747 03 22 D1 24 00 00 00 00       $  ANS052:7C7 03 22 D1 24 00 00 00 00
  $  REQ053:747 03 22 D1 23 00 00 00 00       $  ANS053:7C7 03 22 D1 23 00 00 00 00
  $  REQ054:747 03 22 E0 05 00 00 00 00       $  ANS054:7C7 03 22 E0 05 00 00 00 00
  $  REQ055:747 03 22 E0 06 00 00 00 00       $  ANS055:7C7 03 22 E0 06 00 00 00 00
  $  REQ056:747 03 22 D1 21 00 00 00 00       $  ANS056:7C7 03 22 D1 21 00 00 00 00
  $  REQ057:747 03 22 D1 20 00 00 00 00       $  ANS057:7C7 03 22 D1 20 00 00 00 00
  $  REQ058:747 03 22 E0 19 00 00 00 00       $  ANS058:7C7 03 22 E0 19 00 00 00 00
  $  REQ059:747 03 22 E0 23 00 00 00 00       $  ANS059:7C7 03 22 E0 23 00 00 00 00
  $  REQ060:747 03 22 E0 22 00 00 00 00       $  ANS060:7C7 03 22 E0 22 00 00 00 00
  $  REQ061:747 03 22 E0 21 00 00 00 00       $  ANS061:7C7 03 22 E0 21 00 00 00 00
  $  REQ062:747 03 22 E0 20 00 00 00 00       $  ANS062:7C7 03 22 E0 20 00 00 00 00
  $  REQ063:747 03 22 D1 26 00 00 00 00       $  ANS063:7C7 03 22 D1 26 00 00 00 00
  $  REQ064:747 03 22 D2 00 00 00 00 00       $  ANS064:7C7 03 22 D2 00 00 00 00 00
  $  REQ065:747 03 22 D2 01 00 00 00 00       $  ANS065:7C7 03 22 D2 01 00 00 00 00
  $  REQ066:747 03 22 D2 02 00 00 00 00       $  ANS066:7C7 03 22 D2 02 00 00 00 00
  $  REQ067:747 03 22 D1 01 00 00 00 00       $  ANS067:7C7 03 22 D1 01 00 00 00 00
  $  REQ068:747 03 22 E0 02 00 00 00 00       $  ANS068:7C7 03 22 E0 02 00 00 00 00
  $  REQ069:747 03 22 C0 01 00 00 00 00       $  ANS069:7C7 03 22 C0 01 00 00 00 00
  $  REQ070:747 03 22 E0 11 00 00 00 00       $  ANS070:7C7 03 22 E0 11 00 00 00 00
  $  REQ071:747 03 22 D1 15 00 00 00 00       $  ANS071:7C7 03 22 D1 15 00 00 00 00
  $  REQ072:747 03 22 E0 26 00 00 00 00       $  ANS072:7C7 03 22 E0 26 00 00 00 00

  $  000.空调总功率                       $    $  kW           $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.油门踏板位置传感器供电电压       $    $  V            $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.01;
  $  002.加速踏板位置1                    $    $  %            $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.392;
  $  003.加速踏板位置2                    $    $  %            $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.392;
  $  004.油门位置传感器1输出电压          $    $  V            $    $  ANS004.BYTE004  $  y=(x1*256+x2)*0.01;
  $  005.油门位置传感器2输出电压          $    $  V            $    $  ANS005.BYTE004  $  y=(x1*256+x2)*0.01;
  $  006.BMS电压                          $    $  V            $    $  ANS006.BYTE004  $  y=x1*256+x2;
  $  007.高压电池电流                     $    $  A            $    $  ANS007.BYTE004  $  y=x1*256+x2-400;
  $  008.高压电池电量                     $    $  %            $    $  ANS008.BYTE004  $  y=x;
  $  009.高压电池温度                     $    $  degree C     $    $  ANS009.BYTE004  $  y=x-40;
  $  010.制动踏板位置                     $    $  %            $    $  ANS010.BYTE004  $  y=x;
  $  011.制动踏板位置                     $    $  %            $    $  ANS011.BYTE004  $  y=x;
  $  012.制动踏板位置自学习后电压         $    $  V            $    $  ANS012.BYTE004  $  y=x*0.01;
  $  013.制动踏板自学习成功               $    $               $    $  ANS013.BYTE004  $  if(x==0x00) y=@09f3;else if(x==0x01) y=@09f4;else y=@01a9;
  $  014.制动踏板位置传感器输出电压       $    $  V            $    $  ANS014.BYTE004  $  y=(x1*256+x2)*0.01;
  $  015.制动状态                         $    $               $    $  ANS015.BYTE004  $  if(x==0x00) y=@0017;else if(x==0x01) y=@0018;else y=@01a9;
  $  016.真空压力传感器输出电压           $    $  V            $    $  ANS016.BYTE004  $  y=(x1*256+x2)*0.01;
  $  017.制动踏板位置传感器供电电压       $    $  V            $    $  ANS017.BYTE004  $  y=(x1*256+x2)*0.01;
  $  018.充电状态                         $    $               $    $  ANS018.BYTE004  $  if(x==0x00) y=@00bc;else if(x==0x01) y=@09ef;else if(x==0x02) y=@0308;else if(x==0x03) y=@09f0;else if(x==0x04) y=@09f5;else if(x==0x05) y=@09f1;else y=@01a9;
  $  019.硬线-PWM(脉宽调制)碰撞信号       $    $               $    $  ANS019.BYTE004  $  y=x;
  $  020.EPT DC连接电压                   $    $  V            $    $  ANS020.BYTE004  $  y=(x1*256+x2)*0.1;
  $  021.前空调电压                       $    $  V            $    $  ANS021.BYTE004  $  y=x*2;
  $  022.前压缩机功率范围                 $    $               $    $  ANS022.BYTE004  $  y=(x1*256+x2)*0.4;
  $  023.高压绝缘电阻                     $    $  kohm         $    $  ANS023.BYTE004  $  y=x1*256+x2;
  $  024.下电过程计数器值                 $    $               $    $  ANS024.BYTE004  $  y=x1*256+x2;
  $  025.上电过程计数器值                 $    $               $    $  ANS025.BYTE004  $  y=x1*256+x2;
  $  026.高压继电器闭合命令               $    $               $    $  ANS026.BYTE004  $  if(x==0x00) y=@0339;else if(x==0x01) y=@09f6;else y=@01a9;
  $  027.高压继电器断开命令               $    $               $    $  ANS027.BYTE004  $  if(x==0x00) y=@09f6;else if(x==0x01) y=@0339;else y=@01a9;
  $  028.电机逆变器温度U值                $    $  degree C     $    $  ANS028.BYTE004  $  y=x-40;
  $  029.电机逆变器温度V值                $    $  degree C     $    $  ANS029.BYTE004  $  y=x-40;
  $  030.电机逆变器温度W值                $    $  degree C     $    $  ANS030.BYTE004  $  y=x-40;
  $  031.LDC使能反馈                      $    $               $    $  ANS031.BYTE004  $  if(x==0x00) y=@0b91;else if(x==0x01) y=@0b92;else y=@01a9;
  $  032.LDC使能请求                      $    $               $    $  ANS032.BYTE004  $  if(x==0x00) y=@0013;else if(x==0x01) y=@0b90;else y=@01a9;
  $  033.LDC输入电压                      $    $  V            $    $  ANS033.BYTE004  $  y=x*2;
  $  034.LDC报送工作状态                  $    $               $    $  ANS034.BYTE004  $  if(x==0x00) y=@0029;else if(x==0x01) y=@0b96;else if(x==0x02) y=@0b97;else if(x==0x03) y=@0b97;else y=@01a9;
  $  035.ABS帧连续丢失数据帧个数          $    $               $    $  ANS035.BYTE004  $  y=x1*256+x2;
  $  036.ACM帧连续丢失数据帧个数          $    $               $    $  ANS036.BYTE004  $  y=x1*256+x2;
  $  037.BMS网络信号丢帧个数              $    $               $    $  ANS037.BYTE004  $  y=x1*256+x2;
  $  038.DCDC帧连续丢失数据帧个数         $    $               $    $  ANS038.BYTE004  $  y=x1*256+x2;
  $  039.EHPS帧连续丢失数据帧个数         $    $               $    $  ANS039.BYTE004  $  y=x1*256+x2;
  $  040.EPP帧连续丢失数据帧个数          $    $               $    $  ANS040.BYTE004  $  y=x1*256+x2;
  $  041.EPB帧连续丢失数据帧个数          $    $               $    $  ANS041.BYTE004  $  y=x1*256+x2;
  $  042.IPK帧连续丢失数据帧个数          $    $               $    $  ANS042.BYTE004  $  y=x1*256+x2;
  $  043.电机网络信号丢帧个数             $    $               $    $  ANS043.BYTE004  $  y=x;
  $  044.SCU帧连续丢失数据帧个数          $    $               $    $  ANS044.BYTE004  $  y=x1*256+x2;
  $  045.SRS帧连续丢失数据帧个数          $    $               $    $  ANS045.BYTE004  $  y=x1*256+x2;
  $  046.驱动电机温度                     $    $  degree C     $    $  ANS046.BYTE004  $  y=x-40;
  $  047.驱动电机实际转速                 $    $  rpm          $    $  ANS047.BYTE004  $  y=(x1*256+x2)*128-16382;
  $  048.总里程                           $    $  km           $    $  ANS048.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  049.PTC总功率                        $    $  kW           $    $  ANS049.BYTE004  $  y=x*0.1;
  $  050.后空调电压                       $    $  V            $    $  ANS050.BYTE004  $  y=x*2;
  $  051.后压缩机功率范围                 $    $               $    $  ANS051.BYTE004  $  y=(x1*256+x2)*0.4;
  $  052.档位                             $    $               $    $  ANS052.BYTE004  $  if(x==0x05) y=@09f7;else if(x==0x06) y=@09f8;else if(x==0x07) y=@09f9;else if(x==0x08) y=@09fa;else y=@01a9;
  $  053.低压蓄电池电压                   $    $  V            $    $  ANS053.BYTE004  $  y=x*0.25;
  $  054.扭矩监控上限                     $    $  Nm           $    $  ANS054.BYTE004  $  y=x1*256+x2;
  $  055.扭矩监控下限                     $    $  Nm           $    $  ANS055.BYTE004  $  y=x1*256+x2;
  $  056.驱动电机实际扭矩                 $    $  Nm           $    $  ANS056.BYTE004  $  y=(x1*256+x2)*0.1-900.0;
  $  057.TM请求扭矩                       $    $  Nm           $    $  ANS057.BYTE004  $  y=(x1*256+x2)*0.1-900.0;
  $  058.电机主动放电命令                 $    $               $    $  ANS058.BYTE004  $  if(x==0x00) y=@0013;else if(x==0x01) y=@0b90;else y=@01a9;
  $  059.电机高压使能反馈                 $    $               $    $  ANS059.BYTE004  $  if(x==0x00) y=@0b91;else if(x==0x01) y=@0b92;else y=@01a9;
  $  060.电机高压使能请求                 $    $               $    $  ANS060.BYTE004  $  if(x==0x00) y=@0013;else if(x==0x01) y=@0b90;else y=@01a9;
  $  061.电机低压使能反馈                 $    $               $    $  ANS061.BYTE004  $  if(x==0x00) y=@0b91;else if(x==0x01) y=@0b92;else y=@01a9;
  $  062.电机低压使能请求                 $    $               $    $  ANS062.BYTE004  $  if(x==0x00) y=@0013;else if(x==0x01) y=@0b90;else y=@01a9;
  $  063.制动真空压力                     $    $  kPa          $    $  ANS063.BYTE004  $  y=x;
  $  064.BMS总线错误                      $    $               $    $  ANS064.BYTE004  $  if((x&0x20)==0x20)y=@00ca;else y=@00c9;
  $  065.碰撞信号                         $    $               $    $  ANS064.BYTE004  $  if((x&0x10)==0x10)y=@00ca;else y=@00c9;
  $  066.BMS电池关闭                      $    $               $    $  ANS064.BYTE004  $  if((x&0x08)==0x08)y=@00ca;else y=@00c9;
  $  067.PCU继电器打开                    $    $               $    $  ANS064.BYTE004  $  if((x&0x04)==0x04)y=@00ca;else y=@00c9;
  $  068.车辆准备                         $    $               $    $  ANS064.BYTE004  $  if((x&0x02)==0x02)y=@00ca;else y=@00c9;
  $  069.电机使能                         $    $               $    $  ANS064.BYTE004  $  if((x&0x01)==0x01)y=@00dc;else y=@00db;
  $  070.钥匙状态                         $    $               $    $  ANS064.BYTE005  $  if((x&0xE0)==0x00) y=@000f;else if((x&0xE0)==0x20) y=@0010;else if((x&0xE0)==0x60) y=@0666;else if((x&0xE0)==0xA0) y=@009e;else if((x&0xE0)==0xE0) y=@00b3;else y=@01a9;
  $  071.绝缘报警                         $    $               $    $  ANS064.BYTE005  $  if((x&0x18)==0x00) y=@0b93;else if((x&0x18)==0x08) y=@0b94;else if((x&0x18)==0x10) y=@0b95;else y=@00b3;
  $  072.高压互锁连接状态                 $    $               $    $  ANS064.BYTE005  $  if((x&0x04)==0x04)y=@00ca;else y=@00c9;
  $  073.电机CAN故障                      $    $               $    $  ANS065.BYTE004  $  if((x&0x80)==0x80)y=@00ca;else y=@00c9;
  $  074.制动开关高有效信号               $    $               $    $  ANS065.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  075.电子风扇使能                     $    $               $    $  ANS065.BYTE004  $  if((x&0x08)==0x08)y=@00dc;else y=@00db;
  $  076.档位锁请求                       $    $               $    $  ANS065.BYTE004  $  if((x&0x04)==0x04)y=@05fc;else y=@0238;
  $  077.急停请求信号                     $    $               $    $  ANS065.BYTE004  $  if((x&0x02)==0x02)y=@05fc;else y=@0238;
  $  078.动力系统故障指示                 $    $               $    $  ANS065.BYTE004  $  if((x&0x01)==0x01)y=@00b3;else y=@04dc;
  $  079.车辆状态                         $    $               $    $  ANS065.BYTE005  $  if((x&0xF0)==0x00) y=@000f;else if((x&0xF0)==0x10) y=@00d2;else if((x&0xF0)==0x10) y=@009e;else y=@01a9;
  $  080.车辆模式设置                     $    $               $    $  ANS065.BYTE005  $  if((x&0x0F)==0x00) y=@0019;else if((x&0x0F)==0x01) y=@09ed;else if((x&0x0F)==0x02) y=@00bc;else if((x&0x0F)==0x03) y=@0308;else if((x&0x0F)==0x04) y=@0011;else if((x&0x0F)==0x05) y=@09ee;else if((x&0x0F)==0x06) y=@00b3;else y=@01a9;
  $  081.电池状态                         $    $               $    $  ANS066.BYTE004  $  if((x&0xF0)==0x00) y=@00bc;else if((x&0xF0)==0x10) y=@09ef;else if((x&0xF0)==0x20) y=@0308;else if((x&0xF0)==0x30) y=@09f0;else if((x&0xF0)==0x40) y=@00b3;else if((x&0xF0)==0x50) y=@09f1;else if((x&0xF0)==0x60) y=@09f2;else y=@01a9;
  $  082.BMS故障等级指示                  $    $               $    $  ANS066.BYTE004  $  if((x&0x0E)==0x00) y=@0b9c;else if((x&0x0E)==0x02) y=@0b9d;else if((x&0x0E)==0x04) y=@0b9e;else if((x&0x0E)==0x06) y=@0b9f;else if((x&0x0E)==0x08) y=@0ba0;else y=@01a9;
  $  083.制动踏板初始位置学习             $    $               $    $  ANS066.BYTE005  $  if((x&0x40)==0x40)y=@002d;else y=@002c;
  $  084.启动档                           $    $               $    $  ANS066.BYTE005  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  085.点火档                           $    $               $    $  ANS066.BYTE005  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  086.ACC档                            $    $               $    $  ANS066.BYTE005  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  087.VMS心跳计数器次数                $    $               $    $  ANS067.BYTE004  $  y=x;
  $  088.真空压力传感器供电电压           $    $  V            $    $  ANS068.BYTE004  $  y=(x1*256+x2)*0.01;
  $  089.左舵/右舵配置                    $    $               $    $  ANS069.BYTE004  $  if((x&0x02)==0x02)y=@050f;else y=@0510;
  $  090.SRS安全气囊配置                  $    $               $    $  ANS069.BYTE004  $  if((x&0x01)==0x01)y=@00dc;else y=@00db;
  $  091.SRS-CAN碰撞信号                  $    $               $    $  ANS070.BYTE004  $  y=x;
  $  092.车辆速度                         $    $  km/h         $    $  ANS071.BYTE004  $  y=(x1*256+x2)*0.05625;
  $  093.水泵继电器命令                   $    $               $    $  ANS072.BYTE004  $  if(x==0x00) y=@0339;else if(x==0x01) y=@09f6;else y=@01a9;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:747 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
