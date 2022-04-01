
    车型ID：5865

    模拟：协议模拟-->5865

;******************************************************************************************************************************************************

    通讯线: $~01$~09$~500k$~75B

进入命令:

  $~  REQ000:74B 02 10 03 FF FF FF FF FF       $~  ANS000:75B 02 10 03 FF FF FF FF FF
  $~  REQ001:74B 02 27 03 FF FF FF FF FF       $~  ANS001:75B 02 27 03 FF FF FF FF FF
  $~  REQ002:74B 04 27 04 1E B0 FF FF FF       $~  ANS002:75B 04 27 04 1E B0 FF FF FF

空闲命令:

  $!  REQ000:74B 02 3E 00 FF FF FF FF FF       $!  ANS000:75B 02 3E 00 FF FF FF FF FF

退出命令:

  $@  REQ000:74B 02 10 01 FF FF FF FF FF       $@  ANS000:75B 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:74B 03 19 02 09 FF FF FF FF       $#  ANS000:75B 03 19 02 09 FF FF FF FF

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/9f000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:74B 04 14 FF FF FF FF FF FF       $$  ANS000:75B 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:74B 03 22 F1 80 FF FF FF FF       $%  ANS000:75B 03 22 F1 80 FF FF FF FF
  $%  REQ001:74B 03 22 F1 86 FF FF FF FF       $%  ANS001:75B 03 22 F1 86 FF FF FF FF
  $%  REQ002:74B 03 22 F1 87 FF FF FF FF       $%  ANS002:75B 03 22 F1 87 FF FF FF FF
  $%  REQ003:74B 03 22 F1 88 FF FF FF FF       $%  ANS003:75B 03 22 F1 88 FF FF FF FF
  $%  REQ004:74B 03 22 F1 B0 FF FF FF FF       $%  ANS004:75B 03 22 F1 B0 FF FF FF FF
  $%  REQ005:74B 03 22 F1 A2 FF FF FF FF       $%  ANS005:75B 03 22 F1 A2 FF FF FF FF
  $%  REQ006:74B 03 22 F1 8A FF FF FF FF       $%  ANS006:75B 03 22 F1 8A FF FF FF FF
  $%  REQ007:74B 03 22 F1 8B FF FF FF FF       $%  ANS007:75B 03 22 F1 8B FF FF FF FF
  $%  REQ008:74B 03 22 F1 8C FF FF FF FF       $%  ANS008:75B 03 22 F1 8C FF FF FF FF
  $%  REQ009:74B 03 22 F1 90 FF FF FF FF       $%  ANS009:75B 03 22 F1 90 FF FF FF FF
  $%  REQ010:74B 03 22 F1 91 FF FF FF FF       $%  ANS010:75B 03 22 F1 91 FF FF FF FF
  $%  REQ011:74B 03 22 F1 98 FF FF FF FF       $%  ANS011:75B 03 22 F1 98 FF FF FF FF
  $%  REQ012:74B 03 22 F1 99 FF FF FF FF       $%  ANS012:75B 03 22 F1 99 FF FF FF FF
  $%  REQ013:74B 03 22 F1 BF FF FF FF FF       $%  ANS013:75B 03 22 F1 BF FF FF FF FF
  $%  REQ014:74B 03 22 F1 9D FF FF FF FF       $%  ANS014:75B 03 22 F1 9D FF FF FF FF
  $%  REQ015:74B 03 22 F1 C0 FF FF FF FF       $%  ANS015:75B 03 22 F1 C0 FF FF FF FF
  $%  REQ016:74B 03 22 F1 D0 FF FF FF FF       $%  ANS016:75B 03 22 F1 D0 FF FF FF FF

  $%  000:Bootloader软件版本号:                  $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:当前诊断任务模式:                      $%    $%  ANS001.BYTE004  $%  switxh(x) 0x01:y=@0384;0x02:y=@0191;0x03:y=@0385;default: y=@0007;
  $%  002:整车零部件号:                          $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  003:应用软件版本号（正常升级版本）:        $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:应用软件版本号（固定版本）:            $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:ECU标定软件号:                         $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  006:系统供应商代码:                        $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  007:ECU生产日期:                           $%    $%  ANS007.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  008:控制器序列号:                          $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:整车VIN:                               $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  010:硬件版本号:                            $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  011:诊断设备序列号:                        $%    $%  ANS011.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  012:刷新日期:                              $%    $%  ANS012.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  013:应用硬件版本号（固定版本）:            $%    $%  ANS013.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  014:ECU装配日期:                           $%    $%  ANS014.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  015:软件总成版本号:                        $%    $%  ANS015.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  016:软件总成零件号:                        $%    $%  ANS016.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:74B 03 22 01 12 FF FF FF FF       $  ANS000:75B 03 22 01 12 FF FF FF FF
  $  REQ001:74B 03 22 63 00 FF FF FF FF       $  ANS001:75B 03 22 63 00 FF FF FF FF
  $  REQ002:74B 03 22 63 02 FF FF FF FF       $  ANS002:75B 03 22 63 02 FF FF FF FF
  $  REQ003:74B 03 22 63 03 FF FF FF FF       $  ANS003:75B 03 22 63 03 FF FF FF FF
  $  REQ004:74B 03 22 63 04 FF FF FF FF       $  ANS004:75B 03 22 63 04 FF FF FF FF
  $  REQ005:74B 03 22 63 05 FF FF FF FF       $  ANS005:75B 03 22 63 05 FF FF FF FF
  $  REQ006:74B 03 22 63 08 FF FF FF FF       $  ANS006:75B 03 22 63 08 FF FF FF FF
  $  REQ007:74B 03 22 63 12 FF FF FF FF       $  ANS007:75B 03 22 63 12 FF FF FF FF

  $  000.ECU供电电压                      $    $  V       $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.驾驶员侧温度风门位置             $    $  %       $    $  ANS001.BYTE004  $  y=x;
  $  002.模式风门位置                     $    $          $    $  ANS002.BYTE004  $  switxh(x) 0x01:y=@0016;0x02:y=@0017;0x03:y=@0018;0x04:y=@0019;0x05:y=@0020;default: y=@0007;
  $  003.内外循环模式                     $    $          $    $  ANS003.BYTE004  $  switxh(x) 0x00:y=Internal-loop;0x01:y=External-loop;0xff:y=Invalid;default: y=Reserved;
  $  004.鼓风机档位                       $    $          $    $  ANS004.BYTE004  $  switxh(x) 0x00:y=Level 0;0x01:y=Level 1;0x02:y=Level 2;0x03:y=Level 3;0x04:y=Level 4;0x05:y=Level 5;0x06:y=Level 6;0x07:y=Level 7;0x08:y=Level off;default: y=@0007;
  $  005.电动压缩机状态                   $    $          $    $  ANS005.BYTE004  $  switxh(x) 0x00:y=@0013;0x01:y=@0014;0x02:y=@0015;default: y=@0007;
  $  006.电动压缩机                       $    $  rpm     $    $  ANS005.BYTE004  $  y=x1*256+x2;
  $  007.PTC工作状态-开关                 $    $          $    $  ANS006.BYTE004  $  switxh(x) 0x00:y=@0013;0x01:y=@0014;default: y=@0007;
  $  008.PTC工作状态-等级                 $    $          $    $  ANS006.BYTE005  $  switxh(x) 0x00:y=OFF;0x01:y=Level 1;0x02:y=Level 2;0x03:y=Level 3;default: y=@0007;
  $  009.空调高低速电子风扇运转状态       $    $          $    $  ANS007.BYTE004  $  switxh(x) 0x00:y=@0010;0x01:y=@0011;0x02:y=@0012;default: y=@0007;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:74B 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
