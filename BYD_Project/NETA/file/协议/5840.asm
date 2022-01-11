
    车型ID：5840

    模拟：协议模拟-->5840

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~793

进入命令:

  $~  REQ000:783 02 10 03 FF FF FF FF FF       $~  ANS000:793 02 10 03 FF FF FF FF FF
  $~  REQ001:783 02 27 03 FF FF FF FF FF       $~  ANS001:793 02 27 03 FF FF FF FF FF
  $~  REQ002:783 04 27 04 1E B0 FF FF FF       $~  ANS002:793 04 27 04 1E B0 FF FF FF

空闲命令:

  $!  REQ000:783 02 3E 00 FF FF FF FF FF       $!  ANS000:793 02 3E 00 FF FF FF FF FF

退出命令:

  $@  REQ000:783 02 10 01 FF FF FF FF FF       $@  ANS000:793 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:783 03 19 02 09 FF FF FF FF       $#  ANS000:793 03 19 02 09 FF FF FF FF

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/7c000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:783 04 14 FF FF FF FF FF FF       $$  ANS000:793 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:783 03 22 F1 80 FF FF FF FF       $%  ANS000:793 03 22 F1 80 FF FF FF FF
  $%  REQ001:783 03 22 F1 86 FF FF FF FF       $%  ANS001:793 03 22 F1 86 FF FF FF FF
  $%  REQ002:783 03 22 F1 87 FF FF FF FF       $%  ANS002:793 03 22 F1 87 FF FF FF FF
  $%  REQ003:783 03 22 F1 88 FF FF FF FF       $%  ANS003:793 03 22 F1 88 FF FF FF FF
  $%  REQ004:783 03 22 F1 B0 FF FF FF FF       $%  ANS004:793 03 22 F1 B0 FF FF FF FF
  $%  REQ005:783 03 22 F1 A2 FF FF FF FF       $%  ANS005:793 03 22 F1 A2 FF FF FF FF
  $%  REQ006:783 03 22 F1 8A FF FF FF FF       $%  ANS006:793 03 22 F1 8A FF FF FF FF
  $%  REQ007:783 03 22 F1 8B FF FF FF FF       $%  ANS007:793 03 22 F1 8B FF FF FF FF
  $%  REQ008:783 03 22 F1 8C FF FF FF FF       $%  ANS008:793 03 22 F1 8C FF FF FF FF
  $%  REQ009:783 03 22 F1 90 FF FF FF FF       $%  ANS009:793 03 22 F1 90 FF FF FF FF
  $%  REQ010:783 03 22 F1 91 FF FF FF FF       $%  ANS010:793 03 22 F1 91 FF FF FF FF
  $%  REQ011:783 03 22 F1 98 FF FF FF FF       $%  ANS011:793 03 22 F1 98 FF FF FF FF
  $%  REQ012:783 03 22 F1 99 FF FF FF FF       $%  ANS012:793 03 22 F1 99 FF FF FF FF
  $%  REQ013:783 03 22 F1 9D FF FF FF FF       $%  ANS013:793 03 22 F1 9D FF FF FF FF
  $%  REQ014:783 03 22 F1 BF FF FF FF FF       $%  ANS014:793 03 22 F1 BF FF FF FF FF
  $%  REQ015:783 03 22 F1 C0 FF FF FF FF       $%  ANS015:793 03 22 F1 C0 FF FF FF FF

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
  $%  014:硬件版本号（固定版本）:            $%    $%  ANS014.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  015:软件总成版本:                      $%    $%  ANS015.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:783 03 22 F0 22 FF FF FF FF       $  ANS000:793 03 22 F0 22 FF FF FF FF
  $  REQ001:783 03 22 F0 23 FF FF FF FF       $  ANS001:793 03 22 F0 23 FF FF FF FF
  $  REQ002:783 03 22 F0 24 FF FF FF FF       $  ANS002:793 03 22 F0 24 FF FF FF FF

  $  000.IRS故障码1                   $    $       $    $  ANS000.BYTE004  $  switxh(x&0x01) 0x01:y=@0037;default: y=@0000;
  $  001.IRS故障码2                   $    $       $    $  ANS000.BYTE004  $  switxh(x&0x02) 0x02:y=@0037;default: y=@0000;
  $  002.IRS故障码3                   $    $       $    $  ANS000.BYTE004  $  switxh(x&0x04) 0x04:y=@0037;default: y=@0000;
  $  003.IRS故障码4                   $    $       $    $  ANS000.BYTE004  $  switxh(x&0x08) 0x08:y=@0037;default: y=@0000;
  $  004.IRS故障码5                   $    $       $    $  ANS000.BYTE004  $  switxh(x&0x10) 0x10:y=@0037;default: y=@0000;
  $  005.IRS故障码6                   $    $       $    $  ANS000.BYTE004  $  switxh(x&0x20) 0x20:y=@0037;default: y=@0000;
  $  006.IRS故障码7                   $    $       $    $  ANS000.BYTE004  $  switxh(x&0x40) 0x40:y=@0037;default: y=@0000;
  $  007.IRS故障码8                   $    $       $    $  ANS000.BYTE004  $  switxh(x&0x80) 0x80:y=@0037;default: y=@0000;
  $  008.摄像头故障1                  $    $       $    $  ANS000.BYTE005  $  switxh(x&0x01) 0x01:y=@0037;default: y=@0000;
  $  009.摄像头故障2                  $    $       $    $  ANS000.BYTE005  $  switxh(x&0x02) 0x02:y=@0037;default: y=@0000;
  $  010.摄像头故障3                  $    $       $    $  ANS000.BYTE005  $  switxh(x&0x04) 0x04:y=@0037;default: y=@0000;
  $  011.摄像头故障4                  $    $       $    $  ANS000.BYTE005  $  switxh(x&0x08) 0x08:y=@0037;default: y=@0000;
  $  012.摄像头故障5                  $    $       $    $  ANS000.BYTE005  $  switxh(x&0x10) 0x10:y=@0037;default: y=@0000;
  $  013.摄像头故障6                  $    $       $    $  ANS000.BYTE005  $  switxh(x&0x20) 0x20:y=@0037;default: y=@0000;
  $  014.摄像头故障7                  $    $       $    $  ANS000.BYTE005  $  switxh(x&0x40) 0x40:y=@0037;default: y=@0000;
  $  015.摄像头故障8                  $    $       $    $  ANS000.BYTE005  $  switxh(x&0x80) 0x80:y=@0037;default: y=@0000;
  $  016.DMS故障码1                   $    $       $    $  ANS000.BYTE006  $  switxh(x&0x01) 0x01:y=@0037;default: y=@0000;
  $  017.DMS故障码2                   $    $       $    $  ANS000.BYTE006  $  switxh(x&0x02) 0x02:y=@0037;default: y=@0000;
  $  018.DMS故障码3                   $    $       $    $  ANS000.BYTE006  $  switxh(x&0x04) 0x04:y=@0037;default: y=@0000;
  $  019.DMS故障码4                   $    $       $    $  ANS000.BYTE006  $  switxh(x&0x08) 0x08:y=@0037;default: y=@0000;
  $  020.DMS故障码5                   $    $       $    $  ANS000.BYTE006  $  switxh(x&0x10) 0x10:y=@0037;default: y=@0000;
  $  021.DMS故障码6                   $    $       $    $  ANS000.BYTE006  $  switxh(x&0x20) 0x20:y=@0037;default: y=@0000;
  $  022.DMS故障码7                   $    $       $    $  ANS000.BYTE006  $  switxh(x&0x40) 0x40:y=@0037;default: y=@0000;
  $  023.DMS故障码8                   $    $       $    $  ANS000.BYTE006  $  switxh(x&0x80) 0x80:y=@0037;default: y=@0000;
  $  024.电压过高故障                 $    $       $    $  ANS000.BYTE007  $  switxh(x&0x01) 0x01:y=@0037;default: y=@0000;
  $  025.电压过低故障                 $    $       $    $  ANS000.BYTE007  $  switxh(x&0x02) 0x02:y=@0037;default: y=@0000;
  $  026.MPU硬件版本号                $    $       $    $  ANS001.BYTE004  $  y=HEX(x1,x2);
  $  027.MCU1(RH850)硬件版本号        $    $       $    $  ANS001.BYTE006  $  y=HEX(x1,x2);
  $  028.MCU2(RT1052)硬件版本号       $    $       $    $  ANS001.BYTE008  $  y=HEX(x1,x2);
  $  029.MPU软件版本号                $    $       $    $  ANS002.BYTE004  $  y=HEX(x1,x2);
  $  030.MCU1(RH850)软件版本号        $    $       $    $  ANS002.BYTE006  $  y=HEX(x1,x2);
  $  031.MCU2(RT1052)软件版本号       $    $       $    $  ANS002.BYTE008  $  y=HEX(x1,x2);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:783 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
