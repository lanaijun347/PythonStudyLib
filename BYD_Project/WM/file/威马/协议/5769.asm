
    车型ID：5769

    模拟：协议模拟-->5769

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A3

进入命令:

  $~  REQ000:723 02 10 03 00 00 00 00 00       $~  ANS000:7A3 02 10 03 00 00 00 00 00
  $~~ REQ001:723 02 27 01 00 00 00 00 00       $~~ ANS001:7A3 02 27 01 00 00 00 00 00
  $~~ REQ002:723 06 27 02 B6 E6 B2 89 00       $~~ ANS002:7A3 06 27 02 B6 E6 B2 89 00

空闲命令:

  $!  REQ000:723 02 3E 00 00 00 00 00 00       $!  ANS000:7A3 02 3E 00 00 00 00 00 00

退出命令:

  $@  REQ000:723 02 10 01 00 00 00 00 00       $@  ANS000:7A3 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:723 03 19 02 2F 00 00 00 00       $#  ANS000:7A3 03 19 02 2F 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/57000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:723 04 14 FF FF FF 00 00 00       $$  ANS000:7A3 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:723 03 22 F1 87 00 00 00 00       $%  ANS000:7A3 03 22 F1 87 00 00 00 00
  $%  REQ001:723 03 22 F1 88 00 00 00 00       $%  ANS001:7A3 03 22 F1 88 00 00 00 00
  $%  REQ002:723 03 22 F1 8A 00 00 00 00       $%  ANS002:7A3 03 22 F1 8A 00 00 00 00
  $%  REQ003:723 03 22 F1 97 00 00 00 00       $%  ANS003:7A3 03 22 F1 97 00 00 00 00
  $%  REQ004:723 03 22 F1 91 00 00 00 00       $%  ANS004:7A3 03 22 F1 91 00 00 00 00
  $%  REQ005:723 03 22 F1 8C 00 00 00 00       $%  ANS005:7A3 03 22 F1 8C 00 00 00 00
  $%  REQ006:723 03 22 F1 90 00 00 00 00       $%  ANS006:7A3 03 22 F1 90 00 00 00 00
  $%  REQ007:723 03 22 F1 5E 00 00 00 00       $%  ANS007:7A3 03 22 F1 5E 00 00 00 00
  $%  REQ008:723 03 22 F1 60 00 00 00 00       $%  ANS008:7A3 03 22 F1 60 00 00 00 00
  $%  REQ009:723 03 22 F1 62 00 00 00 00       $%  ANS009:7A3 03 22 F1 62 00 00 00 00
  $%  REQ010:723 03 22 F1 63 00 00 00 00       $%  ANS010:7A3 03 22 F1 63 00 00 00 00
  $%  REQ011:723 03 22 F1 9E 00 00 00 00       $%  ANS011:7A3 03 22 F1 9E 00 00 00 00
  $%  REQ012:723 03 22 F1 5B 00 00 00 00       $%  ANS012:7A3 03 22 F1 5B 00 00 00 00

  $%  000:控制器总零件号:             $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:主芯片(MCU)软件号:          $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:供应商识别号:               $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  003:系统识别号:                 $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:硬件号:                     $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:序列号:                     $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $%  006:车辆识别编码(VIN):          $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:网络数据库标识符:           $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  008:配置文件号:                 $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:第二芯片(MPU)软件号:        $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  010:驱动软件号:                 $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:ODX文件号:                  $%    $%  ANS011.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  012:读软件指纹:                 $%    $%  ANS012.BYTE004  $%  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.常规数据
  $  00.常规数据
  $  REQ000:723 03 22 1A 93 00 00 00 00       $  ANS000:7A3 03 22 1A 93 00 00 00 00
  $  REQ001:723 03 22 F1 8B 00 00 00 00       $  ANS001:7A3 03 22 F1 8B 00 00 00 00
  $  REQ002:723 03 22 1A 00 00 00 00 00       $  ANS002:7A3 03 22 1A 00 00 00 00 00
  $  REQ003:723 03 22 1A 01 00 00 00 00       $  ANS003:7A3 03 22 1A 01 00 00 00 00
  $  REQ004:723 03 22 1A 02 00 00 00 00       $  ANS004:7A3 03 22 1A 02 00 00 00 00
  $  REQ005:723 03 22 1A 03 00 00 00 00       $  ANS005:7A3 03 22 1A 03 00 00 00 00
  $  REQ006:723 03 22 1A 04 00 00 00 00       $  ANS006:7A3 03 22 1A 04 00 00 00 00
  $  REQ007:723 03 22 1A 08 00 00 00 00       $  ANS007:7A3 03 22 1A 08 00 00 00 00
  $  REQ008:723 03 22 1A 09 00 00 00 00       $  ANS008:7A3 03 22 1A 09 00 00 00 00
  $  REQ009:723 03 22 1A 0A 00 00 00 00       $  ANS009:7A3 03 22 1A 0A 00 00 00 00
  $  REQ010:723 03 22 1A 10 00 00 00 00       $  ANS010:7A3 03 22 1A 10 00 00 00 00
  $  REQ011:723 03 22 1A 11 00 00 00 00       $  ANS011:7A3 03 22 1A 11 00 00 00 00
  $  REQ012:723 03 22 1A 12 00 00 00 00       $  ANS012:7A3 03 22 1A 12 00 00 00 00
  $  REQ013:723 03 22 1A 13 00 00 00 00       $  ANS013:7A3 03 22 1A 13 00 00 00 00
  $  REQ014:723 03 22 1A 20 00 00 00 00       $  ANS014:7A3 03 22 1A 20 00 00 00 00
  $  REQ015:723 03 22 1A 21 00 00 00 00       $  ANS015:7A3 03 22 1A 21 00 00 00 00
  $  REQ016:723 03 22 1A 22 00 00 00 00       $  ANS016:7A3 03 22 1A 22 00 00 00 00
  $  REQ017:723 03 22 1A 23 00 00 00 00       $  ANS017:7A3 03 22 1A 23 00 00 00 00
  $  REQ018:723 03 22 1A 28 00 00 00 00       $  ANS018:7A3 03 22 1A 28 00 00 00 00
  $  REQ019:723 03 22 1A 29 00 00 00 00       $  ANS019:7A3 03 22 1A 29 00 00 00 00
  $  REQ020:723 03 22 1A 2A 00 00 00 00       $  ANS020:7A3 03 22 1A 2A 00 00 00 00
  $  REQ021:723 03 22 1A 2B 00 00 00 00       $  ANS021:7A3 03 22 1A 2B 00 00 00 00
  $  REQ022:723 03 22 1A 2C 00 00 00 00       $  ANS022:7A3 03 22 1A 2C 00 00 00 00
  $  REQ023:723 03 22 1A 2D 00 00 00 00       $  ANS023:7A3 03 22 1A 2D 00 00 00 00
  $  REQ024:723 03 22 1A 2E 00 00 00 00       $  ANS024:7A3 03 22 1A 2E 00 00 00 00
  $  REQ025:723 03 22 1A 30 00 00 00 00       $  ANS025:7A3 03 22 1A 30 00 00 00 00
  $  REQ026:723 03 22 1A 31 00 00 00 00       $  ANS026:7A3 03 22 1A 31 00 00 00 00
  $  REQ027:723 03 22 1A 32 00 00 00 00       $  ANS027:7A3 03 22 1A 32 00 00 00 00
  $  REQ028:723 03 22 1A 38 00 00 00 00       $  ANS028:7A3 03 22 1A 38 00 00 00 00
  $  REQ029:723 03 22 1A 39 00 00 00 00       $  ANS029:7A3 03 22 1A 39 00 00 00 00
  $  REQ030:723 03 22 1A 3A 00 00 00 00       $  ANS030:7A3 03 22 1A 3A 00 00 00 00
  $  REQ031:723 03 22 1A 40 00 00 00 00       $  ANS031:7A3 03 22 1A 40 00 00 00 00
  $  REQ032:723 03 22 1A 41 00 00 00 00       $  ANS032:7A3 03 22 1A 41 00 00 00 00
  $  REQ033:723 03 22 1A 42 00 00 00 00       $  ANS033:7A3 03 22 1A 42 00 00 00 00
  $  REQ034:723 03 22 1A 50 00 00 00 00       $  ANS034:7A3 03 22 1A 50 00 00 00 00
  $  REQ035:723 03 22 1A 51 00 00 00 00       $  ANS035:7A3 03 22 1A 51 00 00 00 00
  $  REQ036:723 03 22 1A 52 00 00 00 00       $  ANS036:7A3 03 22 1A 52 00 00 00 00
  $  REQ037:723 03 22 1A 53 00 00 00 00       $  ANS037:7A3 03 22 1A 53 00 00 00 00
  $  REQ038:723 03 22 1A 54 00 00 00 00       $  ANS038:7A3 03 22 1A 54 00 00 00 00
  $  REQ039:723 03 22 1A 55 00 00 00 00       $  ANS039:7A3 03 22 1A 55 00 00 00 00
  $  REQ040:723 03 22 1A 56 00 00 00 00       $  ANS040:7A3 03 22 1A 56 00 00 00 00
  $  REQ041:723 03 22 1A 57 00 00 00 00       $  ANS041:7A3 03 22 1A 57 00 00 00 00
  $  REQ042:723 03 22 1A 58 00 00 00 00       $  ANS042:7A3 03 22 1A 58 00 00 00 00
  $  REQ043:723 03 22 1A 59 00 00 00 00       $  ANS043:7A3 03 22 1A 59 00 00 00 00
  $  REQ044:723 03 22 1A 5A 00 00 00 00       $  ANS044:7A3 03 22 1A 5A 00 00 00 00
  $  REQ045:723 03 22 1A 60 00 00 00 00       $  ANS045:7A3 03 22 1A 60 00 00 00 00
  $  REQ046:723 03 22 1A 70 00 00 00 00       $  ANS046:7A3 03 22 1A 70 00 00 00 00
  $  REQ047:723 03 22 1A 71 00 00 00 00       $  ANS047:7A3 03 22 1A 71 00 00 00 00
  $  REQ048:723 03 22 1A 72 00 00 00 00       $  ANS048:7A3 03 22 1A 72 00 00 00 00
  $  REQ049:723 03 22 1A 80 00 00 00 00       $  ANS049:7A3 03 22 1A 80 00 00 00 00
  $  REQ050:723 03 22 1A 81 00 00 00 00       $  ANS050:7A3 03 22 1A 81 00 00 00 00
  $  REQ051:723 03 22 1A 8C 00 00 00 00       $  ANS051:7A3 03 22 1A 8C 00 00 00 00
  $  REQ052:723 03 22 1A 8D 00 00 00 00       $  ANS052:7A3 03 22 1A 8D 00 00 00 00
  $  REQ053:723 03 22 1A 8E 00 00 00 00       $  ANS053:7A3 03 22 1A 8E 00 00 00 00
  $  REQ054:723 03 22 1A 8F 00 00 00 00       $  ANS054:7A3 03 22 1A 8F 00 00 00 00
  $  REQ055:723 03 22 1A 91 00 00 00 00       $  ANS055:7A3 03 22 1A 91 00 00 00 00
  $  REQ056:723 03 22 1A 92 00 00 00 00       $  ANS056:7A3 03 22 1A 92 00 00 00 00
  $  REQ057:723 03 22 CF 00 00 00 00 00       $  ANS057:7A3 03 22 CF 00 00 00 00 00
  $  REQ058:723 03 22 CF 01 00 00 00 00       $  ANS058:7A3 03 22 CF 01 00 00 00 00
  $  REQ059:723 03 22 CF 02 00 00 00 00       $  ANS059:7A3 03 22 CF 02 00 00 00 00
  $  REQ060:723 03 22 CF 03 00 00 00 00       $  ANS060:7A3 03 22 CF 03 00 00 00 00
  $  REQ061:723 03 22 CF 04 00 00 00 00       $  ANS061:7A3 03 22 CF 04 00 00 00 00

  $  000.Boot软件版本号                            $    $           $    $  ANS000.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $  001.控制器制造日期                            $    $           $    $  ANS001.BYTE004  $  y=SPRINTF([%02x%02x/%02x/%02x],x1,x2,x3,x4);
  $  002.控制器PCBA序列号                          $    $           $    $  ANS002.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);
  $  003.控制器VP软件版本                          $    $           $    $  ANS003.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);
  $  004.控制器AP软件版本                          $    $           $    $  ANS004.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);
  $  005.NAD模块固件版本                           $    $           $    $  ANS005.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);
  $  006.蓝牙模块固件版本                          $    $           $    $  ANS006.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);
  $  007.控制器硬件版本                            $    $           $    $  ANS007.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);
  $  008.NAD模块硬件版本                           $    $           $    $  ANS008.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);
  $  009.蓝牙模块硬件版本                          $    $           $    $  ANS009.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  010.远程通信控制器温度                        $    $  ℃       $    $  ANS010.BYTE004  $  y=x-127;
  $  011.系统时间                                  $    $  秒       $    $  ANS011.BYTE004  $  y=(x1*256+x2)*65536+x3*256+x4;
  $  012.持续待机模式                              $    $  小时     $    $  ANS012.BYTE004  $  y=x*2;
  $  013.车辆电池电压                              $    $  V        $    $  ANS013.BYTE004  $  y=x*0.1;
  $  014.SIM卡ICCID号                              $    $           $    $  ANS014.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);
  $  015.SIM卡IMSI号                               $    $           $    $  ANS015.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  016.NAD IMEI号                                $    $           $    $  ANS016.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  017.TBOX内置电话号码                          $    $           $    $  ANS017.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);
  $  018.移动设备国家码（MCC)                      $    $           $    $  ANS018.BYTE004  $  y=ASCII(x1,x2,x3);
  $  019.移动设备网络码（MNC)                      $    $           $    $  ANS019.BYTE004  $  y=ASCII(x1,x2,x3);
  $  020.信号强度指示灯                            $    $  CSQ      $    $  ANS020.BYTE004  $  y=x;
  $  021.无线连接状态                              $    $           $    $  ANS021.BYTE004  $  switxh(x&0x07) 0x01:y=CDMA;0x02:y=GSM;0x03:y=WCDMA;0x04:y=TDSCDMA;0x05:y=EVDO;0x05:y=LTE;default: y=未知;
  $  022.VoLTE功能配置                             $    $           $    $  ANS022.BYTE004  $  switxh(x&0x01) 0x00:y=禁止;default: y=使能;
  $  023.NAD温度                                   $    $  ℃       $    $  ANS023.BYTE004  $  y=x-127;
  $  024.NAD主天线状态                             $    $           $    $  ANS024.BYTE004  $  switxh(x&0x03) 0x00:y=连接;0x01:y=断开;0x02:y=对地短路;default: y=短接到KL30;
  $  025.APN1 VP TSP业务APN名称                    $    $           $    $  ANS025.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $  026.APN1 VP TSP业务APN用户名                  $    $           $    $  ANS026.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $  027.APN1 VP TSP业务APN密码                    $    $           $    $  ANS027.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $  028.APN2名称                                  $    $           $    $  ANS028.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $  029.APN2 AP TSP业务APN用户名                  $    $           $    $  ANS029.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $  030.APN2 AP TSP业务APN密码                    $    $           $    $  ANS030.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $  031.内置加速度传感器X轴                       $    $  mg       $    $  ANS031.BYTE004  $  y=(x1*256+x2)*1000/256-2000;
  $  032.内置加速度传感器Y轴                       $    $  mg       $    $  ANS032.BYTE004  $  y=(x1*256+x2)*1000/256-2000;
  $  033.内置加速度传感器Z轴                       $    $  mg       $    $  ANS033.BYTE004  $  y=(x1*256+x2)*1000/256-2000;
  $  034.全球导航卫星系统 天线状态                 $    $           $    $  ANS034.BYTE004  $  switxh(x&0x03) 0x00:y=连接;0x01:y=断开;0x02:y=对地短路;default: y=短接到KL30;
  $  035.全球导航卫星系统 定位指示灯               $    $           $    $  ANS035.BYTE004  $  switxh(x&0x03) 0x00:y=未使用;0x01:y=无效;0x02:y=2D模式;default: y=3D模式;
  $  036.全球导航卫星系统 实时经度                 $    $  °       $    $  ANS036.BYTE004  $  y=((x1*256+x2)*65536+x3*256+x4)*0.000001;
  $  037.全球导航卫星系统 实时纬度                 $    $  °       $    $  ANS037.BYTE004  $  y=((x1*256+x2)*65536+x3*256+x4)*0.000001;
  $  038.卫星时间                                  $    $  秒       $    $  ANS038.BYTE004  $  y=(x1*256+x2)*65536+x3*256+x4;
  $  039.卫星海拔                                  $    $  米       $    $  ANS039.BYTE004  $  y=((x1*256+x2)*65536+x3*256+x4)*0.1;
  $  040.全球导航卫星系统 实时HDOP                 $    $           $    $  ANS040.BYTE004  $  y=(x1*256+x2)*0.1;
  $  041.全球导航卫星系统 实时速度                 $    $  km/h     $    $  ANS041.BYTE004  $  y=(x1*256+x2)*0.01;
  $  042.全球导航卫星系统 实时方向                 $    $  °       $    $  ANS042.BYTE004  $  y=x;
  $  043.全球导航卫星系统 当前使用的卫星数量       $    $           $    $  ANS043.BYTE004  $  y=x;
  $  044.全球导航卫星系统 当前视野内卫星数量       $    $           $    $  ANS044.BYTE004  $  y=x;
  $  045.蓝牙模块MAC地址                           $    $           $    $  ANS045.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $  046.远程通信控制器内部电池温度                $    $  ℃       $    $  ANS046.BYTE004  $  y=x-127;
  $  047.远程通信控制器内部电池有效寿命            $    $           $    $  ANS047.BYTE004  $  y=x*0.04;
  $  048.远程通信控制器内部电池电压                $    $  V        $    $  ANS048.BYTE004  $  y=x*0.02;
  $  049.TSP服务器IP地址                           $    $           $    $  ANS049.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $  050.TSP服务器IP接口号                         $    $           $    $  ANS050.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5);
  $  051.主密钥有效性                              $    $           $    $  ANS051.BYTE004  $  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $  052.E-CALL默认电话号码                        $    $           $    $  ANS052.BYTE004  $  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8);
  $  053.B-CALL默认电话号码                        $    $           $    $  ANS053.BYTE004  $  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8);
  $  054.I-CALL默认电话号码                        $    $           $    $  ANS054.BYTE004  $  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8);
  $  055.E-CALL按键状态                            $    $           $    $  ANS055.BYTE004  $  y=x;
  $  056.远程通信控制器证书状态                    $    $           $    $  ANS056.BYTE004  $  switxh(x&0x01) 0x00:y=不存在;default: y=存在;
  $  057.控制器电源模式                            $    $           $    $  ANS057.BYTE004  $  switxh(x&0x03) 0x00:y=关;0x01:y=ACC;0x02:y=开;default: y=启动;
  $  058.车速                                      $    $  Km/h     $    $  ANS058.BYTE004  $  y=(x1*256+x2)*0.05625;
  $  059.控制器电源电压                            $    $  V        $    $  ANS059.BYTE004  $  y=x*0.1;
  $  060.第一次故障的里程值                        $    $  km       $    $  ANS060.BYTE004  $  y=x*0.1;
  $  061.最后一次故障的里程值                      $    $  km       $    $  ANS061.BYTE004  $  y=x*0.1;

  $)  01.存储号码列表
  $  01.存储号码列表
  $  REQ000:723 03 22 1A 90 00 00 00 00       $  ANS000:7A3 03 22 1A 90 00 00 00 00

  $  000.E-CALL电话号码1       $    $       $    $  ANS000.BYTE004  $  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8);
  $  001.E-CALL电话号码2       $    $       $    $  ANS000.BYTE012  $  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8);
  $  002.E-CALL电话号码3       $    $       $    $  ANS000.BYTE020  $  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8);
  $  003.E-CALL电话号码4       $    $       $    $  ANS000.BYTE028  $  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8);
  $  004.E-CALL电话号码5       $    $       $    $  ANS000.BYTE036  $  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8);
  $  005.E-CALL电话号码6       $    $       $    $  ANS000.BYTE044  $  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8);
  $  006.E-CALL电话号码7       $    $       $    $  ANS000.BYTE052  $  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8);
  $  007.E-CALL电话号码8       $    $       $    $  ANS000.BYTE060  $  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:723 30 00 01 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
