
    车型ID：5819

    模拟：协议模拟-->5819

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~716

进入命令:

  $~  REQ000:706 02 10 03 FF FF FF FF FF       $~  ANS000:716 02 10 03 FF FF FF FF FF

空闲命令:

  $!  REQ000:706 02 3E 00 FF FF FF FF FF       $!  ANS000:716 02 3E 00 FF FF FF FF FF

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:706 03 19 02 09 FF FF FF FF       $#  ANS000:716 03 19 02 09 FF FF FF FF

		控制公式：
			y=(x1<<8)+x2;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/58130000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:706 04 14 FF FF FF FF FF FF       $$  ANS000:716 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:706 03 22 F1 80 FF FF FF FF       $%  ANS000:716 03 22 F1 80 FF FF FF FF
  $%  REQ001:706 03 22 F1 86 FF FF FF FF       $%  ANS001:716 03 22 F1 86 FF FF FF FF
  $%  REQ002:706 03 22 F1 87 FF FF FF FF       $%  ANS002:716 03 22 F1 87 FF FF FF FF
  $%  REQ003:706 03 22 F1 88 FF FF FF FF       $%  ANS003:716 03 22 F1 88 FF FF FF FF
  $%  REQ004:706 03 22 F1 B0 FF FF FF FF       $%  ANS004:716 03 22 F1 B0 FF FF FF FF
  $%  REQ005:706 03 22 F1 8A FF FF FF FF       $%  ANS005:716 03 22 F1 8A FF FF FF FF
  $%  REQ006:706 03 22 F1 8B FF FF FF FF       $%  ANS006:716 03 22 F1 8B FF FF FF FF
  $%  REQ007:706 03 22 F1 8C FF FF FF FF       $%  ANS007:716 03 22 F1 8C FF FF FF FF
  $%  REQ008:706 03 22 F1 90 FF FF FF FF       $%  ANS008:716 03 22 F1 90 FF FF FF FF
  $%  REQ009:706 03 22 F0 91 FF FF FF FF       $%  ANS009:716 03 22 F0 91 FF FF FF FF
  $%  REQ010:706 03 22 F1 BF FF FF FF FF       $%  ANS010:716 03 22 F1 BF FF FF FF FF
  $%  REQ011:706 03 22 F1 92 FF FF FF FF       $%  ANS011:716 03 22 F1 92 FF FF FF FF
  $%  REQ012:706 03 22 F1 94 FF FF FF FF       $%  ANS012:716 03 22 F1 94 FF FF FF FF
  $%  REQ013:706 03 22 F1 98 FF FF FF FF       $%  ANS013:716 03 22 F1 98 FF FF FF FF
  $%  REQ014:706 03 22 F1 99 FF FF FF FF       $%  ANS014:716 03 22 F1 99 FF FF FF FF
  $%  REQ015:706 03 22 F1 9D FF FF FF FF       $%  ANS015:716 03 22 F1 9D FF FF FF FF
  $%  REQ016:706 03 22 F1 00 FF FF FF FF       $%  ANS016:716 03 22 F1 00 FF FF FF FF

  $%  000:Bootloader软件版本号:            $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:当前诊断任务模式:                $%    $%  ANS001.BYTE004  $%  switxh(x) 0x01:y=@0384;0x02:y=@0191;0x03:y=@0385;default: y=@0289;
  $%  002:整车零部件号:                    $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  003:软件版本号(正常升级版本):        $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:软件版本号(固定版本):            $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:系统供应商代码:                  $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  006:ECU生产日期:                     $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%02x%02x/%02x/%02x],x1,x2,x3,x4);
  $%  007:控制器序列号:                    $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  008:VIN码:                           $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  009:软件版本号(内部升级版本):        $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  010:软件版本号(固定版本):            $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  011:供应商ECU硬件编号:               $%    $%  ANS011.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  012:供应商ECU软件编号:               $%    $%  ANS012.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  013:维修代码/测试仪序列号:           $%    $%  ANS013.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  014:刷新日期:                        $%    $%  ANS014.BYTE004  $%  y=SPRINTF([%02x%02x/%02x/%02x],x1,x2,x3,x4);
  $%  015:ECU装配日期:                     $%    $%  ANS015.BYTE004  $%  y=SPRINTF([%02x%02x/%02x/%02x],x1,x2,x3,x4);
  $%  016:电池识别号:                      $%    $%  ANS016.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.读取动态数据流
  $  00.读取动态数据流
  $  REQ000:706 03 22 F0 20 FF FF FF FF       $  ANS000:716 03 22 F0 20 FF FF FF FF
  $  REQ001:706 03 22 F0 21 FF FF FF FF       $  ANS001:716 03 22 F0 21 FF FF FF FF
  $  REQ002:706 03 22 F0 22 FF FF FF FF       $  ANS002:716 03 22 F0 22 FF FF FF FF
  $  REQ003:706 03 22 F0 23 FF FF FF FF       $  ANS003:716 03 22 F0 23 FF FF FF FF
  $  REQ004:706 03 22 F0 24 FF FF FF FF       $  ANS004:716 03 22 F0 24 FF FF FF FF
  $  REQ005:706 03 22 F0 25 FF FF FF FF       $  ANS005:716 03 22 F0 25 FF FF FF FF
  $  REQ006:706 03 22 F0 26 FF FF FF FF       $  ANS006:716 03 22 F0 26 FF FF FF FF
  $  REQ007:706 03 22 F0 27 FF FF FF FF       $  ANS007:716 03 22 F0 27 FF FF FF FF
  $  REQ008:706 03 22 F0 28 FF FF FF FF       $  ANS008:716 03 22 F0 28 FF FF FF FF
  $  REQ009:706 03 22 F0 29 FF FF FF FF       $  ANS009:716 03 22 F0 29 FF FF FF FF
  $  REQ010:706 03 22 F0 2A FF FF FF FF       $  ANS010:716 03 22 F0 2A FF FF FF FF
  $  REQ011:706 03 22 F0 2B FF FF FF FF       $  ANS011:716 03 22 F0 2B FF FF FF FF
  $  REQ012:706 03 22 F0 2C FF FF FF FF       $  ANS012:716 03 22 F0 2C FF FF FF FF
  $  REQ013:706 03 22 F0 2D FF FF FF FF       $  ANS013:716 03 22 F0 2D FF FF FF FF
  $  REQ014:706 03 22 F0 2E FF FF FF FF       $  ANS014:716 03 22 F0 2E FF FF FF FF
  $  REQ015:706 03 22 F0 30 FF FF FF FF       $  ANS015:716 03 22 F0 30 FF FF FF FF
  $  REQ016:706 03 22 F0 31 FF FF FF FF       $  ANS016:716 03 22 F0 31 FF FF FF FF
  $  REQ017:706 03 22 F0 32 FF FF FF FF       $  ANS017:716 03 22 F0 32 FF FF FF FF
  $  REQ018:706 03 22 F0 33 FF FF FF FF       $  ANS018:716 03 22 F0 33 FF FF FF FF
  $  REQ019:706 03 22 F0 34 FF FF FF FF       $  ANS019:716 03 22 F0 34 FF FF FF FF
  $  REQ020:706 03 22 F0 35 FF FF FF FF       $  ANS020:716 03 22 F0 35 FF FF FF FF
  $  REQ021:706 03 22 F0 36 FF FF FF FF       $  ANS021:716 03 22 F0 36 FF FF FF FF
  $  REQ022:706 03 22 F0 37 FF FF FF FF       $  ANS022:716 03 22 F0 37 FF FF FF FF
  $  REQ023:706 03 22 F0 38 FF FF FF FF       $  ANS023:716 03 22 F0 38 FF FF FF FF
  $  REQ024:706 03 22 F0 39 FF FF FF FF       $  ANS024:716 03 22 F0 39 FF FF FF FF
  $  REQ025:706 03 22 F0 3A FF FF FF FF       $  ANS025:716 03 22 F0 3A FF FF FF FF
  $  REQ026:706 03 22 F0 3D FF FF FF FF       $  ANS026:716 03 22 F0 3D FF FF FF FF
  $  REQ027:706 03 22 F0 3E FF FF FF FF       $  ANS027:716 03 22 F0 3E FF FF FF FF
  $  REQ028:706 03 22 F0 3F FF FF FF FF       $  ANS028:716 03 22 F0 3F FF FF FF FF
  $  REQ029:706 03 22 F0 40 FF FF FF FF       $  ANS029:716 03 22 F0 40 FF FF FF FF
  $  REQ030:706 03 22 F0 41 FF FF FF FF       $  ANS030:716 03 22 F0 41 FF FF FF FF
  $  REQ031:706 03 22 F0 42 FF FF FF FF       $  ANS031:716 03 22 F0 42 FF FF FF FF
  $  REQ032:706 03 22 F0 43 FF FF FF FF       $  ANS032:716 03 22 F0 43 FF FF FF FF
  $  REQ033:706 03 22 F0 44 FF FF FF FF       $  ANS033:716 03 22 F0 44 FF FF FF FF
  $  REQ034:706 03 22 F0 46 FF FF FF FF       $  ANS034:716 03 22 F0 46 FF FF FF FF
  $  REQ035:706 03 22 F0 47 FF FF FF FF       $  ANS035:716 03 22 F0 47 FF FF FF FF
  $  REQ036:706 03 22 F0 48 FF FF FF FF       $  ANS036:716 03 22 F0 48 FF FF FF FF

  $  000.铅酸电池电压                 $    $  V            $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.A+电压值                     $    $  V            $    $  ANS001.BYTE004  $  y=x*0.1;
  $  002.放电最高故障等级             $    $               $    $  ANS002.BYTE004  $  switxh(x&0x07) 0x00:y=@0000;0x01:y=@0233;0x02:y=@0395;0x03:y=@0234;0x04:y=@0396;0x05:y=@0397;0x06:y=@0398;0x07:y=@0399;default: y=@0007;
  $  003.充电最高故障等级             $    $               $    $  ANS002.BYTE004  $  switxh(x&0x38) 0x00:y=@0000;0x08:y=@0233;0x10:y=@0395;0x18:y=@0234;0x20:y=@0396;0x28:y=@0397;0x30:y=@0398;0x38:y=@0399;default: y=@0007;
  $  004.电池包型号                   $    $               $    $  ANS002.BYTE004  $  switxh(x&0x40) 0x40:y=@0220;default: y=@0096;
  $  005.动力电池切断指示灯           $    $               $    $  ANS002.BYTE004  $  switxh(x&0x80) 0x80:y=@0383;default: y=@0096;
  $  006.充电线连接指示灯             $    $  V            $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.1;
  $  007.电池组总电流                 $    $  A            $    $  ANS004.BYTE004  $  y=(x1*256+x2)*0.1-600;
  $  008.电池组荷电量                 $    $  %            $    $  ANS005.BYTE004  $  y=x*0.4;
  $  009.DC电压检测值2                $    $  V            $    $  ANS006.BYTE004  $  y=(x1*256+x2)*0.1;
  $  010.DC电压检测值3                $    $  V            $    $  ANS007.BYTE004  $  y=(x1*256+x2)*0.1;
  $  011.DC电压检测值4                $    $  V            $    $  ANS008.BYTE004  $  y=(x1*256+x2)*0.1;
  $  012.DC电压检测值5                $    $  V            $    $  ANS009.BYTE004  $  y=(x1*256+x2)*0.1;
  $  013.DC电压检测值6                $    $  V            $    $  ANS010.BYTE004  $  y=(x1*256+x2)*0.1;
  $  014.单体平均电压                 $    $  mV           $    $  ANS011.BYTE004  $  y=x1*256+x2;
  $  015.单体最高电压                 $    $  mV           $    $  ANS012.BYTE004  $  y=x1*256+x2;
  $  016.单体最低电压                 $    $  mV           $    $  ANS013.BYTE004  $  y=x1*256+x2;
  $  017.单体最高电压对应编号         $    $               $    $  ANS014.BYTE004  $  y=x;
  $  018.单体最低电压对应编号         $    $               $    $  ANS015.BYTE004  $  y=x;
  $  019.电池平均温度                 $    $  degree C     $    $  ANS016.BYTE004  $  y=x-40;
  $  020.电池最高温度                 $    $  degree C     $    $  ANS017.BYTE004  $  y=x-40;
  $  021.电池最低温度                 $    $  degree C     $    $  ANS018.BYTE004  $  y=x-40;
  $  022.电池最高温度对应编号         $    $               $    $  ANS019.BYTE004  $  y=x;
  $  023.电池最低温度对应编号         $    $               $    $  ANS020.BYTE004  $  y=x;
  $  024.外插充电需求电压             $    $  V            $    $  ANS021.BYTE004  $  y=(x1*256+x2)*0.1;
  $  025.外插充电需求电流             $    $  A            $    $  ANS022.BYTE004  $  y=(x1*256+x2)*0.1;
  $  026.交流充电插座最高温度         $    $  degree C     $    $  ANS023.BYTE004  $  y=x-40;
  $  027.直流充电插座最高温度         $    $  degree C     $    $  ANS024.BYTE004  $  y=x-40;
  $  028.电池系统绝缘电阻             $    $  KΩ          $    $  ANS025.BYTE004  $  y=x1*256+x2;
  $  029.CC2信号电阻值                $    $  ohm          $    $  ANS026.BYTE004  $  y=x1*256+x2;
  $  030.CC信号电阻值                 $    $  ohm          $    $  ANS027.BYTE004  $  y=x1*256+x2;
  $  031.电池允许的最低放电电压       $    $  V            $    $  ANS028.BYTE004  $  y=(x1*256+x2)*0.1;
  $  032.电池允许的最大放电电流       $    $  A            $    $  ANS029.BYTE004  $  y=(x1*256+x2)*0.1;
  $  033.电池允许的最高充电电压       $    $  V            $    $  ANS030.BYTE004  $  y=(x1*256+x2)*0.1;
  $  034.电池允许的最大充电电流       $    $  A            $    $  ANS031.BYTE004  $  y=(x1*256+x2)*0.1;
  $  035.电池工作状态                 $    $               $    $  ANS032.BYTE004  $  switxh(x&0x03) 0x00:y=@0373;0x01:y=@0218;0x02:y=@0374;0x03:y=@0059;default: y=@0007;
  $  036.电池加热状态                 $    $               $    $  ANS032.BYTE004  $  switxh(x&0x0c) 0x00:y=@0370;0x04:y=@0196;0x08:y=@0215;0x0c:y=@0371;default: y=@0007;
  $  037.电池充电状态                 $    $               $    $  ANS032.BYTE004  $  switxh(x&0x30) 0x00:y=@0091;0x10:y=@0092;0x20:y=@0372;0x30:y=@0094;default: y=@0007;
  $  038.VCU控制指令                  $    $               $    $  ANS032.BYTE004  $  switxh(x&0xc0) 0x00:y=@0075;0x40:y=@0175;0x80:y=@0059;0xc0:y=@0059;default: y=@0007;
  $  039.电池充电模式                 $    $               $    $  ANS033.BYTE004  $  switxh(x&0x0f) 0x00:y=@0360;0x01:y=@0361;0x02:y=@0362;0x03:y=@0363;0x04:y=@0364;0x05:y=@0365;0x06:y=@0366;0x07:y=@0367;0x08:y=@0368;0x09:y=@0369;default: y=@0059;
  $  040.交流充电连接状态             $    $               $    $  ANS033.BYTE004  $  switxh(x&0x10) 0x10:y=@0359;default: y=@0176;
  $  041.交流充电通信状态             $    $               $    $  ANS033.BYTE004  $  switxh(x&0x20) 0x20:y=@0359;default: y=@0176;
  $  042.直流充电连接状态             $    $               $    $  ANS033.BYTE004  $  switxh(x&0x40) 0x40:y=@0359;default: y=@0176;
  $  043.直流充电通信状态             $    $               $    $  ANS033.BYTE004  $  switxh(x&0x80) 0x80:y=@0359;default: y=@0176;
  $  044.系统时钟-年                  $    $               $    $  ANS034.BYTE004  $  y=x+2000;
  $  045.系统时钟-月                  $    $               $    $  ANS034.BYTE005  $  y=x;
  $  046.系统时钟-日                  $    $               $    $  ANS034.BYTE006  $  y=x;
  $  047.系统时钟-时                  $    $               $    $  ANS034.BYTE007  $  y=x;
  $  048.系统时钟-分                  $    $               $    $  ANS034.BYTE008  $  y=x;
  $  049.系统时钟-秒                  $    $               $    $  ANS034.BYTE009  $  y=x;
  $  050.车速                         $    $  km/h         $    $  ANS035.BYTE004  $  y=(x1*256+x2)*0.1;
  $  051.紧急下电请求状态             $    $               $    $  ANS036.BYTE004  $  switxh(x) 0x01:y=@0358;default: y=@0059;

  $)  01.充电数据监听
  $  01.充电数据监听
;  $  REQ000:706       $  ANS000:716

;  $  000.最高允许充电总电压(V)         $    $  V            $    $  ANS000.BYTE002  $  y=(x2*256+x1)*0.1;
;  $  001.最高输出电压(V)               $    $  V            $    $  ANS000.BYTE002  $  y=(x2*256+x1)*0.1;
;  $  002.最低输出电压(V)               $    $  V            $    $  ANS000.BYTE004  $  y=(x2*256+x1)*0.1;
;  $  003.充电桩最大输出电流(A)         $    $  A            $    $  ANS000.BYTE006  $  y=(x2*256+x1)*0.1-400;
;  $  004.充电桩最小输出电流(A)         $    $  A            $    $  ANS000.BYTE008  $  y=(x2*256+x1)*0.1-400;
;  $  005.车辆是否充电准备好            $    $               $    $  ANS000.BYTE002  $  switxh(x) 0x00:y=@0376;0xAA:y=@0377;0xFF:y=@0007;default: y=@0007;
;  $  006.充电桩是否充电准备好          $    $               $    $  ANS000.BYTE002  $  switxh(x) 0x00:y=@0376;0xAA:y=@0377;0xFF:y=@0007;default: y=@0007;
;  $  007.电压需求(V)                   $    $  V            $    $  ANS000.BYTE002  $  y=(x2*256+x1)*0.1;
;  $  008.电流需求(A)                   $    $  A            $    $  ANS000.BYTE004  $  y=(x2*256+x1)*0.1-400;
;  $  009.电压输出值(V)                 $    $  V            $    $  ANS000.BYTE002  $  y=(x2*256+x1)*0.1;
;  $  010.充电桩电流输出值(A)           $    $  A            $    $  ANS000.BYTE004  $  y=(x2*256+x1)*0.1-400;
;  $  011.充电允许                      $    $               $    $  ANS000.BYTE008  $  switxh(x&0x03) 0x00:y=@0375;0x01:y=@0122;default: y=@0007;
;  $  012.最高动力蓄电池温度(°C)       $    $  degree C     $    $  ANS000.BYTE003  $  y=x-50;
;  $  013.充电状态                      $    $               $    $  ANS000.BYTE007  $  y=HEX(x1,x2);
;  $  014.充电结束方式                  $    $               $    $  ANS000.BYTE002  $  y=HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:706 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
