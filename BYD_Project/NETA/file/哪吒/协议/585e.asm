
    车型ID：585e

    模拟：协议模拟-->585e

;******************************************************************************************************************************************************

    通讯线: $~01$~09$~500k$~7EA

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

  $*$*DTC/98000000


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
  $%  REQ005:7E2 03 22 F1 8A FF FF FF FF       $%  ANS005:7EA 03 22 F1 8A FF FF FF FF
  $%  REQ006:7E2 03 22 F1 8B FF FF FF FF       $%  ANS006:7EA 03 22 F1 8B FF FF FF FF
  $%  REQ007:7E2 03 22 F1 8C FF FF FF FF       $%  ANS007:7EA 03 22 F1 8C FF FF FF FF
  $%  REQ008:7E2 03 22 F1 90 FF FF FF FF       $%  ANS008:7EA 03 22 F1 90 FF FF FF FF
  $%  REQ009:7E2 03 22 F1 91 FF FF FF FF       $%  ANS009:7EA 03 22 F1 91 FF FF FF FF
  $%  REQ010:7E2 03 22 F1 98 FF FF FF FF       $%  ANS010:7EA 03 22 F1 98 FF FF FF FF
  $%  REQ011:7E2 03 22 F1 99 FF FF FF FF       $%  ANS011:7EA 03 22 F1 99 FF FF FF FF
  $%  REQ012:7E2 03 22 F1 9D FF FF FF FF       $%  ANS012:7EA 03 22 F1 9D FF FF FF FF
  $%  REQ013:7E2 03 22 F1 BF FF FF FF FF       $%  ANS013:7EA 03 22 F1 BF FF FF FF FF
  $%  REQ014:7E2 03 22 F1 C0 FF FF FF FF       $%  ANS014:7EA 03 22 F1 C0 FF FF FF FF
  $%  REQ015:7E2 03 22 F1 7F FF FF FF FF       $%  ANS015:7EA 03 22 F1 7F FF FF FF FF
  $%  REQ016:7E2 03 22 F1 D0 FF FF FF FF       $%  ANS016:7EA 03 22 F1 D0 FF FF FF FF
  $%  REQ017:7E2 03 22 F1 60 FF FF FF FF       $%  ANS017:7EA 03 22 F1 60 FF FF FF FF
  $%  REQ018:7E2 03 22 F1 7B FF FF FF FF       $%  ANS018:7EA 03 22 F1 7B FF FF FF FF

  $%  000:Bootloader软件版本号:                  $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:当前诊断任务模式:                      $%    $%  ANS001.BYTE004  $%  switxh(x) 0x01:y=@0384;0x02:y=@0191;0x03:y=@0385;default: y=@0007;
  $%  002:整车零部件号:                          $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  003:应用软件版本号（正常升级版本）:        $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:应用软件版本号（固定版本）:            $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:系统供应商代码:                        $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  006:ECU生产日期:                           $%    $%  ANS006.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  007:控制器序列号:                          $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  008:整车VIN:                               $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  009:硬件版本号:                            $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  010:测试设备序列号:                        $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:刷新日期:                              $%    $%  ANS011.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  012:ECU装配日期:                           $%    $%  ANS012.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  013:硬件版本号（固定版本）:                $%    $%  ANS013.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  014:软件总成版本:                          $%    $%  ANS014.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  015:转毂模式:                              $%    $%  ANS015.BYTE004  $%  switxh(x) 0x00:y=@0190;0x01:y=@0191;default: y=@0007;
  $%  016:软件总成零件号:                        $%    $%  ANS016.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  017:N95滤芯寿命:                           $%    $%  ANS017.BYTE004  $%  y=x;
  $%  018:展车模式:                              $%    $%  ANS018.BYTE004  $%  switxh(x&0x07) 0x01:y=@0182;0x02:y=@0183;default: y=-;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E2 03 22 01 12 FF FF FF FF       $  ANS000:7EA 03 22 01 12 FF FF FF FF
  $  REQ001:7E2 03 22 E1 01 FF FF FF FF       $  ANS001:7EA 03 22 E1 01 FF FF FF FF
  $  REQ002:7E2 03 22 B1 00 FF FF FF FF       $  ANS002:7EA 03 22 B1 00 FF FF FF FF
  $  REQ003:7E2 03 22 D0 01 FF FF FF FF       $  ANS003:7EA 03 22 D0 01 FF FF FF FF
  $  REQ004:7E2 03 22 F0 20 FF FF FF FF       $  ANS004:7EA 03 22 F0 20 FF FF FF FF
  $  REQ005:7E2 03 22 F0 12 FF FF FF FF       $  ANS005:7EA 03 22 F0 12 FF FF FF FF
  $  REQ006:7E2 03 22 F0 13 FF FF FF FF       $  ANS006:7EA 03 22 F0 13 FF FF FF FF
  $  REQ007:7E2 03 22 F0 15 FF FF FF FF       $  ANS007:7EA 03 22 F0 15 FF FF FF FF
  $  REQ008:7E2 03 22 01 01 FF FF FF FF       $  ANS008:7EA 03 22 01 01 FF FF FF FF
  $  REQ009:7E2 03 22 01 02 FF FF FF FF       $  ANS009:7EA 03 22 01 02 FF FF FF FF
  $  REQ010:7E2 03 22 01 03 FF FF FF FF       $  ANS010:7EA 03 22 01 03 FF FF FF FF
  $  REQ011:7E2 03 22 01 04 FF FF FF FF       $  ANS011:7EA 03 22 01 04 FF FF FF FF
  $  REQ012:7E2 03 22 01 05 FF FF FF FF       $  ANS012:7EA 03 22 01 05 FF FF FF FF
  $  REQ013:7E2 03 22 01 06 FF FF FF FF       $  ANS013:7EA 03 22 01 06 FF FF FF FF
  $  REQ014:7E2 03 22 01 07 FF FF FF FF       $  ANS014:7EA 03 22 01 07 FF FF FF FF
  $  REQ015:7E2 03 22 01 08 FF FF FF FF       $  ANS015:7EA 03 22 01 08 FF FF FF FF
  $  REQ016:7E2 03 22 01 09 FF FF FF FF       $  ANS016:7EA 03 22 01 09 FF FF FF FF
  $  REQ017:7E2 03 22 01 0A FF FF FF FF       $  ANS017:7EA 03 22 01 0A FF FF FF FF
  $  REQ018:7E2 03 22 01 0C FF FF FF FF       $  ANS018:7EA 03 22 01 0C FF FF FF FF
  $  REQ019:7E2 03 22 01 0F FF FF FF FF       $  ANS019:7EA 03 22 01 0F FF FF FF FF
  $  REQ020:7E2 03 22 01 13 FF FF FF FF       $  ANS020:7EA 03 22 01 13 FF FF FF FF
  $  REQ021:7E2 03 22 01 14 FF FF FF FF       $  ANS021:7EA 03 22 01 14 FF FF FF FF
  $  REQ022:7E2 03 22 01 16 FF FF FF FF       $  ANS022:7EA 03 22 01 16 FF FF FF FF
  $  REQ023:7E2 03 22 01 17 FF FF FF FF       $  ANS023:7EA 03 22 01 17 FF FF FF FF
  $  REQ024:7E2 03 22 01 18 FF FF FF FF       $  ANS024:7EA 03 22 01 18 FF FF FF FF
  $  REQ025:7E2 03 22 01 19 FF FF FF FF       $  ANS025:7EA 03 22 01 19 FF FF FF FF
  $  REQ026:7E2 03 22 01 1A FF FF FF FF       $  ANS026:7EA 03 22 01 1A FF FF FF FF
  $  REQ027:7E2 03 22 01 1B FF FF FF FF       $  ANS027:7EA 03 22 01 1B FF FF FF FF
  $  REQ028:7E2 03 22 01 1C FF FF FF FF       $  ANS028:7EA 03 22 01 1C FF FF FF FF
  $  REQ029:7E2 03 22 01 1D FF FF FF FF       $  ANS029:7EA 03 22 01 1D FF FF FF FF
  $  REQ030:7E2 03 22 01 20 FF FF FF FF       $  ANS030:7EA 03 22 01 20 FF FF FF FF
  $  REQ031:7E2 03 22 01 22 FF FF FF FF       $  ANS031:7EA 03 22 01 22 FF FF FF FF

  $  000.蓄电池电压                               $    $  V        $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.总里程                                   $    $  km       $    $  ANS001.BYTE004  $  y=x*65536+x2*256+x3;
  $  002.车速                                     $    $  km/h     $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.01;
  $  003.IG OFF                                   $    $  /        $    $  ANS003.BYTE004  $  switxh(x&0x01) 0x01:y=ON;default: y=OFF;
  $  004.ACC                                      $    $  /        $    $  ANS003.BYTE004  $  switxh(x&0x02) 0x02:y=ON;default: y=OFF;
  $  005.IG ON                                    $    $  /        $    $  ANS003.BYTE004  $  switxh(x&0x04) 0x04:y=ON;default: y=OFF;
  $  006.启动                                     $    $  /        $    $  ANS003.BYTE004  $  switxh(x&0x08) 0x08:y=ON;default: y=OFF;
  $  007.远程IG ON                                $    $  /        $    $  ANS003.BYTE004  $  switxh(x&0x10) 0x10:y=ON;default: y=OFF;
  $  008.远程启动                                 $    $  /        $    $  ANS003.BYTE004  $  switxh(x&0x20) 0x20:y=ON;default: y=OFF;
  $  009.年                                       $    $  y        $    $  ANS004.BYTE004  $  y=x1*256+x2;
  $  010.月                                       $    $  m        $    $  ANS004.BYTE006  $  y=x;
  $  011.日                                       $    $  d        $    $  ANS004.BYTE007  $  y=x;
  $  012.时                                       $    $  h        $    $  ANS004.BYTE008  $  y=x;
  $  013.分                                       $    $  min      $    $  ANS004.BYTE009  $  y=x;
  $  014.秒                                       $    $  s        $    $  ANS004.BYTE010  $  y=x;
  $  015.动力电池总电压                           $    $  V        $    $  ANS005.BYTE004  $  y=(x1*256+x2)*0.05;
  $  016.动力电池当前电流                         $    $  A        $    $  ANS006.BYTE004  $  y=(x1*256+x2)*0.05-1600;
  $  017.电池SOC                                  $    $  %        $    $  ANS007.BYTE004  $  y=x;
  $  018.扭矩请求命令                             $    $  Nm       $    $  ANS008.BYTE004  $  y=(x1*256+x2)*0.05-300;
  $  019.速度请求命令                             $    $  rpm      $    $  ANS009.BYTE004  $  y=(x1*256+x2)*0.5-12000;
  $  020.电机模式请求                             $    $           $    $  ANS010.BYTE004  $  switxh(x) 0x00:y=@0100;0x01:y=@0042;0x02:y=@0184;0x03:y=@0185;0x0a:y=@0186;0x0b:y=@0187;0x1a:y=@0188;0x12:y=@0189;default: y=@0007;
  $  021.电机使能信号                             $    $           $    $  ANS010.BYTE004  $  switxh(x&0x40) 0x40:y=@0101;default: y=@0112;
  $  022.紧急下电请求状态                         $    $           $    $  ANS010.BYTE004  $  switxh(x&0x80) 0x80:y=@0180;default: y=@0181;
  $  023.上下电超时原因                           $    $           $    $  ANS011.BYTE004  $  switxh(x&0x0f) 0x00:y=@0110;0x01:y=@0178;0x02:y=DCDCPU;0x03:y=PU;0x04:y=WAITCURRDEC;0x05:y=OPENCNTCTR;0x06:y=WAITVOLTDEC ;0x07:y=NONE;default: y=@0007;
  $  024.动力系统故障等级                         $    $           $    $  ANS011.BYTE004  $  switxh(x&0xf0) 0x00:y=@0000;0x10:y=@0179;0x20:y=Failure Limit;0x30:y=Failure Stop;default: y=@0007;
  $  025.高压下电状态                             $    $           $    $  ANS012.BYTE004  $  switxh(x&0x0f) 0x00:y=@0110;0x01:y=WAITCURRENTDEC;0x02:y=DCDCPWRDWN;0x03:y=OPENMAINCNTCTR;0x04:y=WAITVOLTDEC;0x05:y=LOWVOLTPWRDWN;0x06:y=FINISHED;default: y=@0007;
  $  026.高压上电状态                             $    $           $    $  ANS012.BYTE004  $  switxh(x&0xf0) 0x00:y=@0110;0x10:y=CLOSEMAINCNTRCTR;0x20:y=DCDCENABLE;0x30:y=TMSTART;0x40:y=TIMEOUT;0x50:y=FINISHED;0x60:y=Reserved1 ;0x70:y=Reserved2;default: y=@0007;
  $  027.VCU控制放电回路                          $    $           $    $  ANS013.BYTE004  $  switxh(x&0x03) 0x00:y=@0075;0x01:y=@0177;0x02:y=@0175;default: y=@0007;
  $  028.高压附件环路互锁信号状态                 $    $           $    $  ANS013.BYTE004  $  switxh(x&0x04) 0x04:y=@0175;default: y=@0176;
  $  029.主回路高压互锁信号状态                   $    $           $    $  ANS013.BYTE004  $  switxh(x&0x08) 0x08:y=@0175;default: y=@0176;
  $  030.DCDC使能信号                             $    $           $    $  ANS013.BYTE004  $  switxh(x&0x10) 0x10:y=@0101;default: y=@0130;
  $  031.高压负载实时功率                         $    $  W        $    $  ANS014.BYTE004  $  y=x1*256+x2;
  $  032.DCDC功率限制                             $    $  KW       $    $  ANS015.BYTE004  $  y=x*0.01;
  $  033.DCDC输出电压值指令                       $    $  V        $    $  ANS016.BYTE004  $  y=(x1*256+x2)*0.05;
  $  034.当前活动最严重错误号                     $    $           $    $  ANS017.BYTE004  $  y=x1*256+x2;
  $  035.车辆VIN码未录入                          $    $           $    $  ANS018.BYTE004  $  switxh(x&0x01) 0x01:y=@0171;default: y=@0172;
  $  036.VIN码录入不合理                          $    $           $    $  ANS018.BYTE004  $  switxh(x&0x02) 0x02:y=@0173;default: y=@0174;
  $  037.运动准备就绪指示灯                       $    $           $    $  ANS018.BYTE004  $  switxh(x&0x04) 0x04:y=@0159;default: y=@0160;
  $  038.高压准备就绪                             $    $           $    $  ANS018.BYTE004  $  switxh(x&0x08) 0x08:y=@0116;default: y=@0117;
  $  039.充电唤醒信号                             $    $           $    $  ANS018.BYTE004  $  switxh(x&0x10) 0x10:y=@0164;default: y=@0165;
  $  040.空调功率限制原因                         $    $           $    $  ANS019.BYTE004  $  switxh(x&0x07) 0x00:y=@0074;0x01:y=@0166;0x02:y=@0167;0x03:y=@0168;0x04:y=@0169;0x05:y=@0170;default: y=@0007;
  $  041.冷却风扇故障反馈                         $    $           $    $  ANS019.BYTE004  $  switxh(x&0x08) 0x08:y=@0163;default: y=@0000;
  $  042.冷却风扇高低档状态                       $    $           $    $  ANS019.BYTE004  $  switxh(x&0xf0) 0x00:y=@0010;0x10:y=@0011;0x20:y=@0012;0x30:y=@0074;default: y=@0007;
  $  043.档位显示                                 $    $           $    $  ANS020.BYTE004  $  switxh(x&0x0f) 0x05:y=@0102;0x06:y=@0103;0x08:y=@0104;0x0b:y=@0105;0x0c:y=@0106;0x0d:y=@0107;0x0f:y=@0007;default: y=@0007;
  $  044.限功率指示灯                             $    $           $    $  ANS020.BYTE004  $  switxh(x&0x10) 0x10:y=@0159;default: y=@0160;
  $  045.PN档位故障                               $    $           $    $  ANS020.BYTE004  $  switxh(x&0x80) 0x80:y=@0015;default: y=@0000;
  $  046.要求PEPS断开StartRelay                   $    $           $    $  ANS020.BYTE005  $  switxh(x&0x01) 0x01:y=@0161;default: y=@0162;
  $  047.模拟发动机状态                           $    $           $    $  ANS020.BYTE005  $  switxh(x&0x02) 0x02:y=@0157;default: y=@0158;
  $  048.电量低报警灯                             $    $           $    $  ANS020.BYTE005  $  switxh(x&0x04) 0x04:y=@0159;default: y=@0160;
  $  049.12V蓄电池充放电故障灯                    $    $           $    $  ANS020.BYTE005  $  switxh(x&0x08) 0x08:y=@0159;default: y=@0160;
  $  050.系统故障灯                               $    $           $    $  ANS020.BYTE005  $  switxh(x&0x10) 0x10:y=@0159;default: y=@0160;
  $  051.VCU和PEPS间的防盗认证结果                $    $           $    $  ANS020.BYTE005  $  switxh(x&0x60) 0x00:y=Default;0x20:y=@0153;0x40:y=@0111;0x60:y=@0074;default: y=@0007;
  $  052.续航里程                                 $    $  km       $    $  ANS021.BYTE004  $  y=(x1*256+x2)*0.1;
  $  053.加速踏板开度                             $    $  %        $    $  ANS022.BYTE004  $  y=(x1*256+x2)*0.392;
  $  054.VCU请求扭矩                              $    $  Nm       $    $  ANS023.BYTE004  $  y=(x1*256+x2)*0.05-300;
  $  055.当前电机最大允许输出的正向驱动扭矩       $    $  Nm       $    $  ANS024.BYTE004  $  y=(x1*256+x2)*0.05;
  $  056.当前电机最大允许输出的发电扭矩           $    $  Nm       $    $  ANS025.BYTE004  $  y=(x1*256+x2)*0.025-300;
  $  057.刹车最大可回收扭矩                       $    $  Nm       $    $  ANS026.BYTE004  $  y=x1*256+x2-16000;
  $  058.VCU目标再生扭矩                          $    $  Nm       $    $  ANS027.BYTE004  $  y=x1*256+x2-16000;
  $  059.惯性实际回收扭矩                         $    $  Nm       $    $  ANS028.BYTE004  $  y=x1*256+x2-16000;
  $  060.刹车实际回收扭矩                         $    $  Nm       $    $  ANS029.BYTE004  $  y=x1*256+x2-16000;
  $  061.制动信号                                 $    $           $    $  ANS030.BYTE004  $  switxh(x) 0x00:y=@0154;0x01:y=@0155;0x02:y=@0074;0x03:y=@0156;default: y=@0007;
  $  062.真空压力值                               $    $  Kpa      $    $  ANS031.BYTE004  $  y=x1*256+x2;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E2 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
