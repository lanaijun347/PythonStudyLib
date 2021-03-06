
    车型ID：5867

    模拟：协议模拟-->5867

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~750

进入命令:

  $~  REQ000:740 02 10 03 FF FF FF FF FF       $~  ANS000:750 02 10 03 FF FF FF FF FF
  $~  REQ001:740 02 27 03 FF FF FF FF FF       $~  ANS001:750 02 27 03 FF FF FF FF FF
  $~  REQ002:740 04 27 04 1E B0 FF FF FF       $~  ANS002:750 04 27 04 1E B0 FF FF FF

空闲命令:

  $!  REQ000:740 02 3E 00 FF FF FF FF FF       $!  ANS000:750 02 3E 00 FF FF FF FF FF

退出命令:

  $@  REQ000:740 02 10 01 FF FF FF FF FF       $@  ANS000:750 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:740 03 19 02 09 FF FF FF FF       $#  ANS000:750 03 19 02 09 FF FF FF FF

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/a1000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:740 04 14 FF FF FF FF FF FF       $$  ANS000:750 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:740 03 22 F1 80 FF FF FF FF       $%  ANS000:750 03 22 F1 80 FF FF FF FF
  $%  REQ001:740 03 22 F1 86 FF FF FF FF       $%  ANS001:750 03 22 F1 86 FF FF FF FF
  $%  REQ002:740 03 22 F1 87 FF FF FF FF       $%  ANS002:750 03 22 F1 87 FF FF FF FF
  $%  REQ003:740 03 22 F1 88 FF FF FF FF       $%  ANS003:750 03 22 F1 88 FF FF FF FF
  $%  REQ004:740 03 22 F1 B0 FF FF FF FF       $%  ANS004:750 03 22 F1 B0 FF FF FF FF
  $%  REQ005:740 03 22 F1 8A FF FF FF FF       $%  ANS005:750 03 22 F1 8A FF FF FF FF
  $%  REQ006:740 03 22 F1 8B FF FF FF FF       $%  ANS006:750 03 22 F1 8B FF FF FF FF
  $%  REQ007:740 03 22 F1 8C FF FF FF FF       $%  ANS007:750 03 22 F1 8C FF FF FF FF
  $%  REQ008:740 03 22 F1 90 FF FF FF FF       $%  ANS008:750 03 22 F1 90 FF FF FF FF
  $%  REQ009:740 03 22 F1 91 FF FF FF FF       $%  ANS009:750 03 22 F1 91 FF FF FF FF
  $%  REQ010:740 03 22 F1 98 FF FF FF FF       $%  ANS010:750 03 22 F1 98 FF FF FF FF
  $%  REQ011:740 03 22 F1 99 FF FF FF FF       $%  ANS011:750 03 22 F1 99 FF FF FF FF
  $%  REQ012:740 03 22 F1 9D FF FF FF FF       $%  ANS012:750 03 22 F1 9D FF FF FF FF
  $%  REQ013:740 03 22 90 0F FF FF FF FF       $%  ANS013:750 03 22 90 0F FF FF FF FF
  $%  REQ014:740 03 22 F1 BF FF FF FF FF       $%  ANS014:750 03 22 F1 BF FF FF FF FF
  $%  REQ015:740 03 22 F1 C0 FF FF FF FF       $%  ANS015:750 03 22 F1 C0 FF FF FF FF
  $%  REQ016:740 03 22 F1 D0 FF FF FF FF       $%  ANS016:750 03 22 F1 D0 FF FF FF FF

  $%  000:Bootloader软件版本号:                    $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:当前诊断任务模式:                        $%    $%  ANS001.BYTE004  $%  switxh(x) 0x01:y=@0384;0x02:y=@0191;0x03:y=@0385;default: y=@0007;
  $%  002:整车零部件号:                            $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  003:应用软件版本号（正常升级版本）:          $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:应用软件版本号（固定版本）:              $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:系统供应商代码:                          $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  006:ECU生产日期:                             $%    $%  ANS006.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  007:控制器序列号:                            $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  008:整车VIN:                                 $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  009:硬件版本号:                              $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  010:TesterSerialNumberDataIdentifier:        $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:刷新日期:                                $%    $%  ANS011.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  012:ECU装配日期:                             $%    $%  ANS012.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  013:ESK:                                     $%    $%  ANS013.BYTE004  $%  SPRINTF([%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c],x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  014:硬件版本号（固定版本）:                  $%    $%  ANS014.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  015:软件总成版本:                            $%    $%  ANS015.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  016:软件总成零件号:                          $%    $%  ANS016.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:740 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
