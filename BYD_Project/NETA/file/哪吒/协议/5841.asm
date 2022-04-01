
    车型ID：5841

    模拟：协议模拟-->5841

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7D1

进入命令:

  $~  REQ000:7C1 02 10 03 FF FF FF FF FF       $~  ANS000:7D1 02 10 03 FF FF FF FF FF
  $~  REQ001:7C1 02 27 03 FF FF FF FF FF       $~  ANS001:7D1 02 27 03 FF FF FF FF FF
  $~  REQ002:7C1 04 27 04 1E B0 FF FF FF       $~  ANS002:7D1 04 27 04 1E B0 FF FF FF

空闲命令:

  $!  REQ000:7C1 02 3E 00 FF FF FF FF FF       $!  ANS000:7D1 02 3E 00 FF FF FF FF FF

退出命令:

  $@  REQ000:7C1 02 10 01 FF FF FF FF FF       $@  ANS000:7D1 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7C1 03 19 02 09 FF FF FF FF       $#  ANS000:7D1 03 19 02 09 FF FF FF FF

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/7d000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7C1 04 14 FF FF FF FF FF FF       $$  ANS000:7D1 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7C1 03 22 F1 80 FF FF FF FF       $%  ANS000:7D1 03 22 F1 80 FF FF FF FF
  $%  REQ001:7C1 03 22 F1 86 FF FF FF FF       $%  ANS001:7D1 03 22 F1 86 FF FF FF FF
  $%  REQ002:7C1 03 22 F1 87 FF FF FF FF       $%  ANS002:7D1 03 22 F1 87 FF FF FF FF
  $%  REQ003:7C1 03 22 F1 88 FF FF FF FF       $%  ANS003:7D1 03 22 F1 88 FF FF FF FF
  $%  REQ004:7C1 03 22 F1 B0 FF FF FF FF       $%  ANS004:7D1 03 22 F1 B0 FF FF FF FF
  $%  REQ005:7C1 03 22 F1 A2 FF FF FF FF       $%  ANS005:7D1 03 22 F1 A2 FF FF FF FF
  $%  REQ006:7C1 03 22 F1 8A FF FF FF FF       $%  ANS006:7D1 03 22 F1 8A FF FF FF FF
  $%  REQ007:7C1 03 22 F1 8B FF FF FF FF       $%  ANS007:7D1 03 22 F1 8B FF FF FF FF
  $%  REQ008:7C1 03 22 F1 8C FF FF FF FF       $%  ANS008:7D1 03 22 F1 8C FF FF FF FF
  $%  REQ009:7C1 03 22 F1 90 FF FF FF FF       $%  ANS009:7D1 03 22 F1 90 FF FF FF FF
  $%  REQ010:7C1 03 22 F1 91 FF FF FF FF       $%  ANS010:7D1 03 22 F1 91 FF FF FF FF
  $%  REQ011:7C1 03 22 F1 98 FF FF FF FF       $%  ANS011:7D1 03 22 F1 98 FF FF FF FF
  $%  REQ012:7C1 03 22 F1 99 FF FF FF FF       $%  ANS012:7D1 03 22 F1 99 FF FF FF FF
  $%  REQ013:7C1 03 22 F1 9D FF FF FF FF       $%  ANS013:7D1 03 22 F1 9D FF FF FF FF
  $%  REQ014:7C1 03 22 F1 C0 FF FF FF FF       $%  ANS014:7D1 03 22 F1 C0 FF FF FF FF

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
  $%  013:ECU装配日期:                       $%    $%  ANS013.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  014:软件总成版本:                      $%    $%  ANS014.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7C1 03 22 01 12 FF FF FF FF       $  ANS000:7D1 03 22 01 12 FF FF FF FF
  $  REQ001:7C1 03 22 02 00 FF FF FF FF       $  ANS001:7D1 03 22 02 00 FF FF FF FF
  $  REQ002:7C1 03 22 02 01 FF FF FF FF       $  ANS002:7D1 03 22 02 01 FF FF FF FF
  $  REQ003:7C1 03 22 02 02 FF FF FF FF       $  ANS003:7D1 03 22 02 02 FF FF FF FF
  $  REQ004:7C1 03 22 02 04 FF FF FF FF       $  ANS004:7D1 03 22 02 04 FF FF FF FF
  $  REQ005:7C1 03 22 02 20 FF FF FF FF       $  ANS005:7D1 03 22 02 20 FF FF FF FF
  $  REQ006:7C1 03 22 E1 01 FF FF FF FF       $  ANS006:7D1 03 22 E1 01 FF FF FF FF
  $  REQ007:7C1 03 22 B1 00 FF FF FF FF       $  ANS007:7D1 03 22 B1 00 FF FF FF FF
  $  REQ008:7C1 03 22 D0 01 FF FF FF FF       $  ANS008:7D1 03 22 D0 01 FF FF FF FF
  $  REQ009:7C1 03 22 F0 20 FF FF FF FF       $  ANS009:7D1 03 22 F0 20 FF FF FF FF
  $  REQ010:7C1 03 22 01 21 FF FF FF FF       $  ANS010:7D1 03 22 01 21 FF FF FF FF
  $  REQ011:7C1 03 22 01 23 FF FF FF FF       $  ANS011:7D1 03 22 01 23 FF FF FF FF
  $  REQ012:7C1 03 22 01 24 FF FF FF FF       $  ANS012:7D1 03 22 01 24 FF FF FF FF
  $  REQ013:7C1 03 22 01 27 FF FF FF FF       $  ANS013:7D1 03 22 01 27 FF FF FF FF
  $  REQ014:7C1 03 22 01 28 FF FF FF FF       $  ANS014:7D1 03 22 01 28 FF FF FF FF

  $  000.供电电压              $    $  V          $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.计算车辆速度          $    $  km/h       $    $  ANS001.BYTE004  $  y=x;
  $  002.设置速度              $    $  km/h       $    $  ANS002.BYTE004  $  y=x;
  $  003.SCC控制器主开关       $    $             $    $  ANS003.BYTE001  $  switxh(x&0x80) 0x80:y=1;default: y=0;
  $  004.SCC控制器重载         $    $             $    $  ANS003.BYTE001  $  switxh(x&0x40) 0x40:y=1;default: y=0;
  $  005.SCC控制器制动         $    $             $    $  ANS003.BYTE001  $  switxh(x&0x20) 0x20:y=1;default: y=0;
  $  006.SCC系统状态           $    $             $    $  ANS004.BYTE004  $  switxh(x) 0x00:y=@0025;0x01:y=@0033;0x02:y=@0034;0x03:y=@0035;0x04:y=@0036;default: y=-;
  $  007.相对物体速度          $    $  m/s        $    $  ANS005.BYTE004  $  y=x-170;
  $  008.里程表读数            $    $  km         $    $  ANS006.BYTE004  $  y=x*65536+x2*256+x3;
  $  009.车速                  $    $  km/h       $    $  ANS007.BYTE004  $  y=x;
  $  010.IG关                  $    $             $    $  ANS008.BYTE004  $  switxh(x&0x01) 0x01:y=01;default: y=00;
  $  011.ACC状态               $    $             $    $  ANS008.BYTE004  $  switxh(x&0x02) 0x02:y=01;default: y=00;
  $  012.IG开                  $    $             $    $  ANS008.BYTE004  $  switxh(x&0x04) 0x04:y=01;default: y=00;
  $  013.时间                  $    $             $    $  ANS009.BYTE004  $  y=SPRINTF([%02x%02x%02x:%02x%02x%02x],x1,x2,x3,x4,x5,x6);
  $  014.EOL对其目标范围       $    $  Cm         $    $  ANS010.BYTE004  $  y=x*2+100;
  $  015.雷达安装高度          $    $  mm         $    $  ANS011.BYTE004  $  y=x;
  $  016.设备对其状态          $    $             $    $  ANS012.BYTE004  $  switxh(x) 0x00:y=@0023;0x01:y=@0024;0x02:y=@0025;0x03:y=@0026;0x04:y=@0027;0x05:y=@0028;0x06:y=@0028;0x07:y=@0029;0x09:y=@0030;0x0a:y=@0031;0x0b:y=@0032;default: y=-;
  $  017.水平角度偏移          $    $  degree     $    $  ANS013.BYTE004  $  y=x*0.1;
  $  018.垂直角度偏移          $    $  degree     $    $  ANS014.BYTE004  $  y=x*0.1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7C1 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
