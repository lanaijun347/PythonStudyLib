
    车型ID：583f

    模拟：协议模拟-->583f

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7EA

进入命令:

  $~  REQ000:7E2 02 10 03 FF FF FF FF FF       $~  ANS000:7EA 02 10 03 FF FF FF FF FF
  $~  REQ001:7E2 02 27 03 FF FF FF FF FF       $~  ANS001:7EA 02 27 03 FF FF FF FF FF
  $~  REQ002:7E2 04 27 04 1E B0 FF FF FF       $~  ANS002:7EA 04 27 04 1E B0 FF FF FF

空闲命令:

  $!  REQ000:7E2 02 3E 00 FF FF FF FF FF       $!  ANS000:7EA 02 3E 00 FF FF FF FF FF

退出命令:

  $@  REQ000:7E2 02 10 01 FF FF FF FF FF       $@  ANS000:7EA 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E2 03 19 02 09 FF FF FF FF       $#  ANS000:7EA 03 19 02 09 FF FF FF FF

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/7b000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E2 04 14 FF FF FF FF FF FF       $$  ANS000:7EA 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E2 03 22 F1 80 FF FF FF FF       $%  ANS000:7EA 03 22 F1 80 FF FF FF FF
  $%  REQ001:7E2 03 22 F1 86 FF FF FF FF       $%  ANS001:7EA 03 22 F1 86 FF FF FF FF
  $%  REQ002:7E2 03 22 F1 87 FF FF FF FF       $%  ANS002:7EA 03 22 F1 87 FF FF FF FF
  $%  REQ003:7E2 03 22 F1 88 FF FF FF FF       $%  ANS003:7EA 03 22 F1 88 FF FF FF FF
  $%  REQ004:7E2 03 22 F1 B0 FF FF FF FF       $%  ANS004:7EA 03 22 F1 B0 FF FF FF FF
  $%  REQ005:7E2 03 22 F1 A2 FF FF FF FF       $%  ANS005:7EA 03 22 F1 A2 FF FF FF FF
  $%  REQ006:7E2 03 22 F1 8A FF FF FF FF       $%  ANS006:7EA 03 22 F1 8A FF FF FF FF
  $%  REQ007:7E2 03 22 F1 8B FF FF FF FF       $%  ANS007:7EA 03 22 F1 8B FF FF FF FF
  $%  REQ008:7E2 03 22 F1 8C FF FF FF FF       $%  ANS008:7EA 03 22 F1 8C FF FF FF FF
  $%  REQ009:7E2 03 22 F1 90 FF FF FF FF       $%  ANS009:7EA 03 22 F1 90 FF FF FF FF
  $%  REQ010:7E2 03 22 F1 91 FF FF FF FF       $%  ANS010:7EA 03 22 F1 91 FF FF FF FF
  $%  REQ011:7E2 03 22 F1 98 FF FF FF FF       $%  ANS011:7EA 03 22 F1 98 FF FF FF FF
  $%  REQ012:7E2 03 22 F1 99 FF FF FF FF       $%  ANS012:7EA 03 22 F1 99 FF FF FF FF
  $%  REQ013:7E2 03 22 F1 BF FF FF FF FF       $%  ANS013:7EA 03 22 F1 BF FF FF FF FF
  $%  REQ014:7E2 03 22 F1 C0 FF FF FF FF       $%  ANS014:7EA 03 22 F1 C0 FF FF FF FF
  $%  REQ015:7E2 03 22 F1 7F FF FF FF FF       $%  ANS015:7EA 03 22 F1 7F FF FF FF FF

  $%  000:软件版本号:                        $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:当前诊断任务模式:                  $%    $%  ANS001.BYTE004  $%  switxh(x) 0x01:y=@0384;0x02:y=@0191;0x03:y=@0385;default: y=@0007;
  $%  002:整车零部件号:                      $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  003:应用软件版本号:                    $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:应用软件版本号（固定版本）:        $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:ECU标定软件号:                     $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  006:系统供应商代码:                    $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  007:ECU生产日期:                       $%    $%  ANS007.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  008:控制器序列号:                      $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  009:整车VIN:                           $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  010:硬件版本号:                        $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  011:诊断设备序列号:                    $%    $%  ANS011.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  012:刷新日期:                          $%    $%  ANS012.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  013:整车配置码:                        $%    $%  ANS013.BYTE004  $%  y=x1*65536+x2*256+x3;
  $%  014:ECU装配日期:                       $%    $%  ANS014.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  015:硬件版本号:                        $%    $%  ANS013.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  016:软件总成版本:                      $%    $%  ANS014.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  017:转毂模式:                          $%    $%  ANS015.BYTE004  $%  switxh(x) 0x00:y=@0182;0x01:y=@0404;default: y=@0007;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E2 03 22 01 01 FF FF FF FF       $  ANS000:7EA 03 22 01 01 FF FF FF FF
  $  REQ001:7E2 03 22 01 02 FF FF FF FF       $  ANS001:7EA 03 22 01 02 FF FF FF FF
  $  REQ002:7E2 03 22 01 03 FF FF FF FF       $  ANS002:7EA 03 22 01 03 FF FF FF FF
  $  REQ003:7E2 03 22 01 04 FF FF FF FF       $  ANS003:7EA 03 22 01 04 FF FF FF FF
  $  REQ004:7E2 03 22 01 05 FF FF FF FF       $  ANS004:7EA 03 22 01 05 FF FF FF FF
  $  REQ005:7E2 03 22 01 06 FF FF FF FF       $  ANS005:7EA 03 22 01 06 FF FF FF FF
  $  REQ006:7E2 03 22 01 07 FF FF FF FF       $  ANS006:7EA 03 22 01 07 FF FF FF FF
  $  REQ007:7E2 03 22 01 08 FF FF FF FF       $  ANS007:7EA 03 22 01 08 FF FF FF FF
  $  REQ008:7E2 03 22 01 09 FF FF FF FF       $  ANS008:7EA 03 22 01 09 FF FF FF FF
  $  REQ009:7E2 03 22 01 0A FF FF FF FF       $  ANS009:7EA 03 22 01 0A FF FF FF FF
  $  REQ010:7E2 03 22 01 0B FF FF FF FF       $  ANS010:7EA 03 22 01 0B FF FF FF FF
  $  REQ011:7E2 03 22 01 0C FF FF FF FF       $  ANS011:7EA 03 22 01 0C FF FF FF FF
  $  REQ012:7E2 03 22 01 0D FF FF FF FF       $  ANS012:7EA 03 22 01 0D FF FF FF FF
  $  REQ013:7E2 03 22 01 0E FF FF FF FF       $  ANS013:7EA 03 22 01 0E FF FF FF FF
  $  REQ014:7E2 03 22 01 0F FF FF FF FF       $  ANS014:7EA 03 22 01 0F FF FF FF FF
  $  REQ015:7E2 03 22 01 10 FF FF FF FF       $  ANS015:7EA 03 22 01 10 FF FF FF FF
  $  REQ016:7E2 03 22 01 11 FF FF FF FF       $  ANS016:7EA 03 22 01 11 FF FF FF FF
  $  REQ017:7E2 03 22 01 12 FF FF FF FF       $  ANS017:7EA 03 22 01 12 FF FF FF FF
  $  REQ018:7E2 03 22 01 13 FF FF FF FF       $  ANS018:7EA 03 22 01 13 FF FF FF FF
  $  REQ019:7E2 03 22 01 14 FF FF FF FF       $  ANS019:7EA 03 22 01 14 FF FF FF FF
  $  REQ020:7E2 03 22 01 15 FF FF FF FF       $  ANS020:7EA 03 22 01 15 FF FF FF FF
  $  REQ021:7E2 03 22 01 16 FF FF FF FF       $  ANS021:7EA 03 22 01 16 FF FF FF FF
  $  REQ022:7E2 03 22 01 17 FF FF FF FF       $  ANS022:7EA 03 22 01 17 FF FF FF FF
  $  REQ023:7E2 03 22 01 18 FF FF FF FF       $  ANS023:7EA 03 22 01 18 FF FF FF FF
  $  REQ024:7E2 03 22 01 19 FF FF FF FF       $  ANS024:7EA 03 22 01 19 FF FF FF FF
  $  REQ025:7E2 03 22 01 1A FF FF FF FF       $  ANS025:7EA 03 22 01 1A FF FF FF FF
  $  REQ026:7E2 03 22 01 1B FF FF FF FF       $  ANS026:7EA 03 22 01 1B FF FF FF FF
  $  REQ027:7E2 03 22 01 1C FF FF FF FF       $  ANS027:7EA 03 22 01 1C FF FF FF FF
  $  REQ028:7E2 03 22 01 1D FF FF FF FF       $  ANS028:7EA 03 22 01 1D FF FF FF FF
  $  REQ029:7E2 03 22 01 1F FF FF FF FF       $  ANS029:7EA 03 22 01 1F FF FF FF FF
  $  REQ030:7E2 03 22 01 20 FF FF FF FF       $  ANS030:7EA 03 22 01 20 FF FF FF FF

  $  000.扭矩请求命令                                                             $    $  Nm       $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.05-1024;
  $  001.速度请求命令                                                             $    $  rpm      $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.5-16000;
  $  002.电机模式请求                                                             $    $           $    $  ANS002.BYTE004  $  switxh(x&0x07) 0x00:y=@0100;0x01:y=@0042;0x02:y=@0306;0x03:y=@0307;0x04:y=@0405;0x05:y=@0406;0x06:y=@0407;0x07:y=@0187;default: y=@0007;
  $  003.电机使能信号                                                             $    $           $    $  ANS002.BYTE004  $  switxh(x&0x08) 0x00:y=@0123;default: y=@0122;
  $  004.紧急下电请求状态                                                         $    $           $    $  ANS002.BYTE004  $  switxh(x&0x10) 0x00:y=@0402;default: y=@0403;
  $  005.上下电状态                                                               $    $           $    $  ANS003.BYTE004  $  switxh(x&0x07) 0x00:y=INIT;0x01:y=LVPWRUP;0x02:y=HVPWRUP;0x03:y=DONE;0x04:y=TMOUT;0x05:y=PWRDWN;default: y=@0074;
  $  006.上下电超时原因                                                           $    $           $    $  ANS003.BYTE004  $  switxh(x&0x38) 0x00:y=DONE;0x08:y=CLSMAINCNTCRT;0x10:y=DCDCPU;0x18:y=PU;0x20:y=WAITCURRDEC;0x28:y=OPENCNTCTR;0x30:y=WAITVOLTDEC;default: y=@0074;
  $  007.动力系统故障等级                                                         $    $           $    $  ANS003.BYTE004  $  switxh(x&0xC0) 0x00:y=@0000;0x40:y=@0179;0x80:y=@0400;0xC0:y=@0401;default: y=@0007;
  $  008.高压下电状态                                                             $    $           $    $  ANS004.BYTE004  $  switxh(x&0x07) 0x00:y=NONE;0x01:y=WAITCURRENTDEC;0x02:y=DCDCPWRDWM;0x03:y=OPENMAINCNTCTR;0x04:y=WAITVOLTDEC;0x05:y=LOVOLTPWRDWN;0x06:y=AFTERUN;0x07:y=@0110;default: y=@0007;
  $  009.高压上电状态                                                             $    $           $    $  ANS004.BYTE004  $  switxh(x&0x38) 0x00:y=NONE;0x08:y=CLOSEMAINCNTRCTR;0x10:y=DCDCENABLE;0x18:y=MCUSTART;0x20:y=TIMEOUT;0x28:y=FINISHED;default: y=@0074;
  $  010.VCU环路互锁信号故障等级                                                  $    $           $    $  ANS004.BYTE004  $  switxh(x&0xC0) 0x00:y=@0000;0x40:y=@0233;0x80:y=@0233;2y=@0234;default: y=;
  $  011.VCU控制放电回路                                                          $    $           $    $  ANS005.BYTE004  $  switxh(x&0x03) 0x00:y=@0075;0x01:y=@0175;default: y=@0074;
  $  012.高压附件环路互锁信号状态                                                 $    $           $    $  ANS005.BYTE004  $  switxh(x&0x04) 0x00:y=@0075;default: y=@0175;
  $  013.主回路高压互锁信号状态                                                   $    $           $    $  ANS005.BYTE004  $  switxh(x&0x08) 0x00:y=@0075;default: y=@0175;
  $  014.DCDC使能信号                                                             $    $           $    $  ANS005.BYTE004  $  switxh(x&0x10) 0x00:y=@0010;default: y=@0048;
  $  015.高压负载实时功率                                                         $    $  W        $    $  ANS006.BYTE004  $  y=x1*256+x2;
  $  016.DCDC功率限制                                                             $    $  KW       $    $  ANS007.BYTE004  $  y=x*0.01;
  $  017.DCDC输出电压值指令                                                       $    $  V        $    $  ANS008.BYTE004  $  y=(x1*256+x2)*0.05;
  $  018.当前活动最严重错误号                                                     $    $           $    $  ANS009.BYTE004  $  y=x;
  $  019.VCU控制指令_PCU                                                          $    $           $    $  ANS010.BYTE004  $  switxh(x&0x03) 0x00:y=@0431;0x01:y=@0432;0x02:y=@0433;default: y=@0074;
  $  020.牵引模式激活                                                             $    $           $    $  ANS010.BYTE004  $  switxh(x&0x04) 0x00:y=@0221;default: y=@0430;
  $  021.牵引模式激活失败原因                                                     $    $           $    $  ANS010.BYTE004  $  switxh(x&0x38) 0x00:y=@0221;0x08:y=@0411;0x10:y=@0317;0x18:y=@0412;0x20:y=@0413;default: y=@0074;
  $  022.车辆VIN码未录入                                                          $    $           $    $  ANS011.BYTE004  $  switxh(x&0x01) 0x00:y=@0429;default: y=@0171;
  $  023.VIN码录入不合理                                                          $    $           $    $  ANS011.BYTE004  $  switxh(x&0x02) 0x00:y=@0174;default: y=@0173;
  $  024.运动准备就绪指示灯                                                       $    $           $    $  ANS011.BYTE004  $  switxh(x&0x04) 0x00:y=@0100;default: y=@0326;
  $  025.高压准备就绪                                                             $    $           $    $  ANS011.BYTE004  $  switxh(x&0x08) 0x00:y=@0427;default: y=@0428;
  $  026.充电唤醒信号(BMS HardWire)                                               $    $           $    $  ANS011.BYTE004  $  switxh(x&0x10) 0x00:y=@0330;default: y=@0426;
  $  027.巡航目标车速                                                             $    $  km/h     $    $  ANS012.BYTE004  $  y=x;
  $  028.空调允许功率值                                                           $    $  KW       $    $  ANS013.BYTE004  $  y=x*0.5;
  $  029.空调允许功率值有效性                                                     $    $           $    $  ANS014.BYTE004  $  switxh(x&0x01) 0x00:y=@0007;default: y=@0268;
  $  030.空调功率限制状态（原因）                                                 $    $           $    $  ANS014.BYTE004  $  switxh(x&0x0E) 0x00:y=@0408;0x02:y=@0192;0x04:y=@0014;0x0C:y=@0156;default: y=@0007;
  $  031.定速巡航状态                                                             $    $           $    $  ANS014.BYTE004  $  switxh(x&0xF0) 0x00:y=@0100;0x10:y=@0192;0x20:y=@0014;0x30:y=@0156;default: y=@0007;
  $  032.PTC水泵工作状态反馈                                                      $    $  %        $    $  ANS015.BYTE004  $  y=x;
  $  033.冷却风扇故障反馈                                                         $    $           $    $  ANS016.BYTE004  $  switxh(x&0x03) 0x00:y=@0000;0x01:y=@0425;default: y=-;
  $  034.PTC水泵故障反馈                                                          $    $           $    $  ANS016.BYTE004  $  switxh(x&0x0C) 0x00:y=@0000;0x04:y=@0425;default: y=-;
  $  035.冷却风扇高低档状态                                                       $    $           $    $  ANS016.BYTE004  $  switxh(x&0x30) 0x00:y=@0010;0x10:y=@0422;0x20:y=@0423;default: y=-;
  $  036.驾驶模式显示                                                             $    $           $    $  ANS016.BYTE004  $  switxh(x&0xC0) 0x00:y=@0010;0x40:y=ECO;0x80:y=@0424;default: y=-;
  $  037.档位显示                                                                 $    $           $    $  ANS017.BYTE004  $  switxh(x&0x0F) 0x05:y=@0420;0x06:y=@0421;0x08:y=S;0x0A:y=P;0x0B:y=D;0x0C:y=N;0x0D:y=@0059;0x0E:y=P;0x0F:y=@0007;default: y=@0007;
  $  038.系统报警灯（黄色降功率）                                                 $    $           $    $  ANS017.BYTE004  $  switxh(x&0x10) 0x00:y=@0100;default: y=@0415;
  $  039.能量回收等级强度反馈                                                     $    $           $    $  ANS017.BYTE004  $  switxh(x&0x60) 0x00:y=@0417;0x20:y=@0418;0x40:y=@0419;default: y=@0074;
  $  040.PN档位故障                                                               $    $           $    $  ANS017.BYTE004  $  switxh(x&0x80) 0x00:y=@0000;default: y=@0163;
  $  041.要求PEPS断开StartRelay                                                   $    $           $    $  ANS017.BYTE005  $  switxh(x&0x01) 0x00:y=@0200;default: y=@0161;
  $  042.模拟（仿真emulated）的引擎状态，用于start控制逻辑。                      $    $           $    $  ANS017.BYTE005  $  switxh(x&0x02) 0x00:y=@0416;default: y=@0039;
  $  043.电量低报警灯                                                             $    $           $    $  ANS017.BYTE005  $  switxh(x&0x04) 0x00:y=@0100;default: y=@0415;
  $  044.12V蓄电池充放电故障灯                                                    $    $           $    $  ANS017.BYTE005  $  switxh(x&0x08) 0x00:y=@0100;default: y=@0415;
  $  045.系统故障灯                                                               $    $           $    $  ANS017.BYTE005  $  switxh(x&0x10) 0x00:y=@0100;default: y=@0415;
  $  046.VCU和PEPS间的防盗认证结果。                                              $    $           $    $  ANS017.BYTE005  $  switxh(x&0x60) 0x00:y=@0414;0x20:y=@0153;0x40:y=@0025;default: y=@0059;
  $  047.驾驶员超越模式                                                           $    $           $    $  ANS017.BYTE005  $  switxh(x&0x80) 0x00:y=@0278;default: y=@0151;
  $  048.续航里程                                                                 $    $  km       $    $  ANS018.BYTE004  $  y=x1*256+x2;
  $  049.小电池电压                                                               $    $  V        $    $  ANS019.BYTE004  $  y=x*0.1;
  $  050.车速>3Km/h,百公里耗电量;车速<3Km/h,电耗,Kwh;                             $    $  Kwh      $    $  ANS020.BYTE004  $  y=x*0.1;
  $  051.加速踏板行程值,国标要求                                                  $    $  %        $    $  ANS021.BYTE004  $  y=x;
  $  052.驾驶员需求电机扭矩                                                       $    $  Nm       $    $  ANS022.BYTE004  $  y=(x1*256+x2)*0.05-1024;
  $  053.当前电机最大允许输出的正向驱动扭矩                                       $    $  Nm       $    $  ANS023.BYTE004  $  y=(x1*256+x2)*0.05-1024;
  $  054.当前电机最大允许输出的发电扭矩                                           $    $  Nm       $    $  ANS024.BYTE004  $  y=(x1*256+x2)*0.05-1024;
  $  055.brake最大可回收扭矩（轮端，负向），需要减去coastdown已执行扭矩           $    $  Nm       $    $  ANS025.BYTE004  $  y=x1*256+x2;
  $  056.VCU目标再生扭矩（轮端，包含Coastdown&Brake）                             $    $  Nm       $    $  ANS026.BYTE004  $  y=x1*256+x2;
  $  057.coastdown实际回收扭矩（轮端，负向），即便处于brake回收依然发此扭矩       $    $  Nm       $    $  ANS027.BYTE004  $  y=x1*256+x2;
  $  058.brake实际回收扭矩（轮端，负向），不包含coastdown扭矩                     $    $  Nm       $    $  ANS028.BYTE004  $  y=x1*256+x2;
  $  059.总里程                                                                   $    $  km       $    $  ANS029.BYTE004  $  y=x*6553.6+(x2*256+x3)*0.1;
  $  060.制动信号                                                                 $    $           $    $  ANS030.BYTE004  $  y=x&0x03;
  $  061.纵向(Longitudinal)驾驶响应模式，自动/手动                                $    $           $    $  ANS030.BYTE004  $  y=x&0x04;
  $  062.VCU response status for APA during APA working                           $    $           $    $  ANS030.BYTE004  $  y=x&0x38;
  $  063.VCU系统状态正常运行。Ready后ADAS应开始监测CAN报文和输入电压。            $    $           $    $  ANS030.BYTE004  $  y=x&0x40;
  $  064.VCU的ACC功能准备就绪，可以响应ACC扭矩请求                                $    $           $    $  ANS030.BYTE004  $  y=x&0x80;
  $  065.VCU反馈VCU fail的原因                                                    $    $           $    $  ANS030.BYTE005  $  y=x&0x07;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E2 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
