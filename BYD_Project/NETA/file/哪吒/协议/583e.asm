
    车型ID：583e

    模拟：协议模拟-->583e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7B0

进入命令:

  $~  REQ000:7A0 02 10 03 FF FF FF FF FF       $~  ANS000:7B0 02 10 03 FF FF FF FF FF
  $~  REQ001:7A0 02 27 03 FF FF FF FF FF       $~  ANS001:7B0 02 27 03 FF FF FF FF FF
  $~  REQ002:7A0 04 27 04 1E B0 FF FF FF       $~  ANS002:7B0 04 27 04 1E B0 FF FF FF

空闲命令:

  $!  REQ000:7A0 02 3E 00 FF FF FF FF FF       $!  ANS000:7B0 02 3E 00 FF FF FF FF FF

退出命令:

  $@  REQ000:7A0 02 10 01 FF FF FF FF FF       $@  ANS000:7B0 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7A0 03 19 02 09 FF FF FF FF       $#  ANS000:7B0 03 19 02 09 FF FF FF FF

		控制公式：
			y=(x1<<8)+x2;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/581c0000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A0 04 14 FF FF FF FF FF FF       $$  ANS000:7B0 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

读数据流: 

  $)  00.读版本信息
  $  00.读版本信息
  $  REQ000:7A0 03 22 F1 86 FF FF FF FF       $  ANS000:7B0 03 22 F1 86 FF FF FF FF
  $  REQ001:7A0 03 22 F1 87 FF FF FF FF       $  ANS001:7B0 03 22 F1 87 FF FF FF FF
  $  REQ002:7A0 03 22 F1 88 FF FF FF FF       $  ANS002:7B0 03 22 F1 88 FF FF FF FF
  $  REQ003:7A0 03 22 F1 B0 FF FF FF FF       $  ANS003:7B0 03 22 F1 B0 FF FF FF FF
  $  REQ004:7A0 03 22 F1 8A FF FF FF FF       $  ANS004:7B0 03 22 F1 8A FF FF FF FF
  $  REQ005:7A0 03 22 F1 8B FF FF FF FF       $  ANS005:7B0 03 22 F1 8B FF FF FF FF
  $  REQ006:7A0 03 22 F1 8C FF FF FF FF       $  ANS006:7B0 03 22 F1 8C FF FF FF FF
  $  REQ007:7A0 03 22 F1 90 FF FF FF FF       $  ANS007:7B0 03 22 F1 90 FF FF FF FF
  $  REQ008:7A0 03 22 F1 91 FF FF FF FF       $  ANS008:7B0 03 22 F1 91 FF FF FF FF
  $  REQ009:7A0 03 22 F1 98 FF FF FF FF       $  ANS009:7B0 03 22 F1 98 FF FF FF FF
  $  REQ010:7A0 03 22 F1 9D FF FF FF FF       $  ANS010:7B0 03 22 F1 9D FF FF FF FF
  $  REQ011:7A0 03 22 F1 70 FF FF FF FF       $  ANS011:7B0 03 22 F1 70 FF FF FF FF
  $  REQ012:7A0 03 22 46 0A FF FF FF FF       $  ANS012:7B0 03 22 46 0A FF FF FF FF
  $  REQ013:7A0 03 22 46 0B FF FF FF FF       $  ANS013:7B0 03 22 46 0B FF FF FF FF
  $  REQ014:7A0 03 22 46 0C FF FF FF FF       $  ANS014:7B0 03 22 46 0C FF FF FF FF
  $  REQ015:7A0 03 22 46 0D FF FF FF FF       $  ANS015:7B0 03 22 46 0D FF FF FF FF
  $  REQ016:7A0 03 22 F1 BF FF FF FF FF       $  ANS016:7B0 03 22 F1 BF FF FF FF FF
  $  REQ017:7A0 03 22 F1 C0 FF FF FF FF       $  ANS017:7B0 03 22 F1 C0 FF FF FF FF

  $  000.当前诊断任务模式                 $    $       $    $  ANS000.BYTE004  $  switxh(x) 0x01:y=@0384;0x02:y=@0191;0x03:y=@0385;default: y=@0007;
  $  001.整车零部件号                     $    $       $    $  ANS001.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $  002.应用软件版本号                   $    $       $    $  ANS002.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $  003.应用软件版本号（固定版本）       $    $       $    $  ANS003.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $  004.系统供应商代码                   $    $       $    $  ANS004.BYTE004  $  y=ASCII(x1,x2,x3);
  $  005.ECU生产日期                      $    $       $    $  ANS005.BYTE004  $  y=HEX(x1,x2,x3,x4);
  $  006.控制器序列号                     $    $       $    $  ANS006.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $  007.整车VIN                          $    $       $    $  ANS007.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $  008.硬件版本号                       $    $       $    $  ANS008.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5);
  $  009.诊断设备序列号                   $    $       $    $  ANS009.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $  010.ECU装配日期                      $    $       $    $  ANS010.BYTE004  $  y=HEX(x1,x2,x3,x4);
  $  011.整车配置码                       $    $       $    $  ANS011.BYTE004  $  switxh(x) 0x00:y=@0253;0x01:y=@0254;default: y=@0007;
  $  012.电话号码                         $    $       $    $  ANS012.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  013.ICCID                            $    $       $    $  ANS013.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $  014.IMSI                             $    $       $    $  ANS014.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  015.IMEI                             $    $       $    $  ANS015.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  016.硬件版本号                       $    $       $    $  ANS016.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5);
  $  017.软件总成版本                     $    $       $    $  ANS017.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);

  $)  01.读动态数据流
  $  01.读动态数据流
  $  REQ000:7A0 03 22 01 12 FF FF FF FF       $  ANS000:7B0 03 22 01 12 FF FF FF FF
  $  REQ001:7A0 03 22 F0 20 FF FF FF FF       $  ANS001:7B0 03 22 F0 20 FF FF FF FF
  $  REQ002:7A0 03 22 E1 01 FF FF FF FF       $  ANS002:7B0 03 22 E1 01 FF FF FF FF
  $  REQ003:7A0 03 22 B1 00 FF FF FF FF       $  ANS003:7B0 03 22 B1 00 FF FF FF FF
  $  REQ004:7A0 03 22 D0 01 FF FF FF FF       $  ANS004:7B0 03 22 D0 01 FF FF FF FF
  $  REQ005:7A0 03 22 90 04 FF FF FF FF       $  ANS005:7B0 03 22 90 04 FF FF FF FF
  $  REQ006:7A0 03 22 90 05 FF FF FF FF       $  ANS006:7B0 03 22 90 05 FF FF FF FF
  $  REQ007:7A0 03 22 90 06 FF FF FF FF       $  ANS007:7B0 03 22 90 06 FF FF FF FF
  $  REQ008:7A0 03 22 90 07 FF FF FF FF       $  ANS008:7B0 03 22 90 07 FF FF FF FF
  $  REQ009:7A0 03 22 90 09 FF FF FF FF       $  ANS009:7B0 03 22 90 09 FF FF FF FF
  $  REQ010:7A0 03 22 90 0C FF FF FF FF       $  ANS010:7B0 03 22 90 0C FF FF FF FF
  $  REQ011:7A0 03 22 90 0D FF FF FF FF       $  ANS011:7B0 03 22 90 0D FF FF FF FF
  $  REQ012:7A0 03 22 90 0E FF FF FF FF       $  ANS012:7B0 03 22 90 0E FF FF FF FF
  $  REQ013:7A0 03 22 90 0F FF FF FF FF       $  ANS013:7B0 03 22 90 0F FF FF FF FF
  $  REQ014:7A0 03 22 90 10 FF FF FF FF       $  ANS014:7B0 03 22 90 10 FF FF FF FF

  $  000.供电模式               $    $       $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.时间                   $    $       $    $  ANS001.BYTE004  $  y=HEX(x1,x2,x3,x4,x5,x6,x7);
  $  002.里程                   $    $       $    $  ANS002.BYTE004  $  y=x*65536+x2*256+x3;
  $  003.速度                   $    $       $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.01;
  $  004.点火状态,IG OFF        $    $       $    $  ANS004.BYTE004  $  switxh(x&0x01) 0x01:y=@0048;default: y=@0010;
  $  005.ACC状态                $    $       $    $  ANS004.BYTE004  $  switxh(x&0x02) 0x02:y=@0048;default: y=@0010;
  $  006.IG ON                  $    $       $    $  ANS004.BYTE004  $  switxh(x&0x04) 0x04:y=@0048;default: y=@0010;
  $  007.启动                   $    $       $    $  ANS004.BYTE004  $  switxh(x&0x08) 0x08:y=@0048;default: y=@0010;
  $  008.远程IG ON              $    $       $    $  ANS004.BYTE004  $  switxh(x&0x10) 0x10:y=@0048;default: y=@0010;
  $  009.远程启动               $    $       $    $  ANS004.BYTE004  $  switxh(x&0x20) 0x20:y=@0048;default: y=@0010;
  $  010.GPS模块状态            $    $       $    $  ANS005.BYTE004  $  switxh(x) 0x00:y=@0190;default: y=@0152;
  $  011.GPS定位状态            $    $       $    $  ANS006.BYTE004  $  switxh(x) 0x00:y=@0245;default: y=@0246;
  $  012.存储卡状态             $    $       $    $  ANS007.BYTE004  $  switxh(x) 0x10:y=@0247;0x11:y=@0248;0x21:y=@0249;0x22:y=@0250;0x23:y=@0251;0xff:y=@0252;default: y=-;
  $  013.4G天线开短路状态       $    $       $    $  ANS008.BYTE004  $  switxh(x) 0x01:y=@0241;0x02:y=@0242;0x03:y=@0190;default: y=-;
  $  014.平台连接状态           $    $       $    $  ANS009.BYTE004  $  switxh(x) 0x00:y=@0243;default: y=@0244;
  $  015.4G天线信号强度         $    $       $    $  ANS010.BYTE004  $  y=x;
  $  016.4G天线信号强度         $    $       $    $  ANS011.BYTE004  $  switxh(x) 0x00:y=@0235;0x02:y=@0236;0x03:y=@0237;default: y=-;
  $  017.4G天线信号强度         $    $       $    $  ANS012.BYTE004  $  switxh(x) 0x00:y=@0238;0x02:y=@0239;0x03:y=@0240;default: y=-;
  $  018.ESK                    $    $       $    $  ANS013.BYTE004  $  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  019.PKI证书申请状态        $    $       $    $  ANS014.BYTE004  $  switxh(x&0x01) 0x00:y=@0007;default: y=@0268;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A0 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
