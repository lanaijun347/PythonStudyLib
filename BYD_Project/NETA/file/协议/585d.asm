
    车型ID：585d

    模拟：协议模拟-->585d

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~796

进入命令:

  $~  REQ000:786 02 10 03 FF FF FF FF FF       $~  ANS000:796 02 10 03 FF FF FF FF FF
  $~  REQ001:786 02 27 03 FF FF FF FF FF       $~  ANS001:796 02 27 03 FF FF FF FF FF
  $~  REQ002:786 04 27 04 1E B0 FF FF FF       $~  ANS002:796 04 27 04 1E B0 FF FF FF

空闲命令:

  $!  REQ000:786 02 3E 00 FF FF FF FF FF       $!  ANS000:796 02 3E 00 FF FF FF FF FF

退出命令:

  $@  REQ000:786 02 10 01 FF FF FF FF FF       $@  ANS000:796 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:786 03 19 02 09 FF FF FF FF       $#  ANS000:796 03 19 02 09 FF FF FF FF

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/97000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:786 04 14 FF FF FF FF FF FF       $$  ANS000:796 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:786 03 22 F1 80 FF FF FF FF       $%  ANS000:796 03 22 F1 80 FF FF FF FF
  $%  REQ001:786 03 22 F1 87 FF FF FF FF       $%  ANS001:796 03 22 F1 87 FF FF FF FF
  $%  REQ002:786 03 22 F1 88 FF FF FF FF       $%  ANS002:796 03 22 F1 88 FF FF FF FF
  $%  REQ003:786 03 22 F1 B0 FF FF FF FF       $%  ANS003:796 03 22 F1 B0 FF FF FF FF
  $%  REQ004:786 03 22 F1 8A FF FF FF FF       $%  ANS004:796 03 22 F1 8A FF FF FF FF
  $%  REQ005:786 03 22 F1 8B FF FF FF FF       $%  ANS005:796 03 22 F1 8B FF FF FF FF
  $%  REQ006:786 03 22 F1 8C FF FF FF FF       $%  ANS006:796 03 22 F1 8C FF FF FF FF
  $%  REQ007:786 03 22 F1 90 FF FF FF FF       $%  ANS007:796 03 22 F1 90 FF FF FF FF
  $%  REQ008:786 03 22 F1 91 FF FF FF FF       $%  ANS008:796 03 22 F1 91 FF FF FF FF
  $%  REQ009:786 03 22 F1 98 FF FF FF FF       $%  ANS009:796 03 22 F1 98 FF FF FF FF
  $%  REQ010:786 03 22 F1 99 FF FF FF FF       $%  ANS010:796 03 22 F1 99 FF FF FF FF
  $%  REQ011:786 03 22 F1 86 FF FF FF FF       $%  ANS011:796 03 22 F1 86 FF FF FF FF
  $%  REQ012:786 03 22 F1 9D FF FF FF FF       $%  ANS012:796 03 22 F1 9D FF FF FF FF
  $%  REQ013:786 03 22 F1 BF FF FF FF FF       $%  ANS013:796 03 22 F1 BF FF FF FF FF
  $%  REQ014:786 03 22 F1 C0 FF FF FF FF       $%  ANS014:796 03 22 F1 C0 FF FF FF FF
  $%  REQ015:786 03 22 F1 D0 FF FF FF FF       $%  ANS015:796 03 22 F1 D0 FF FF FF FF

  $%  000:Bootloader软件版本号:                  $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:整车零部件号:                          $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  002:应用软件版本号（正常升级版本）:        $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  003:应用软件版本号（固定版本）:            $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:系统供应商代码:                        $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  005:ECU生产日期:                           $%    $%  ANS005.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  006:控制器序列号:                          $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $%  007:整车VIN:                               $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  008:硬件版本号:                            $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  009:测试设备序列号:                        $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  010:刷新日期:                              $%    $%  ANS010.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  011:当前诊断任务模式:                      $%    $%  ANS011.BYTE004  $%  switxh(x) 0x01:y=@0384;0x02:y=@0191;0x03:y=@0385;default: y=@0007;
  $%  012:ECU装配日期:                           $%    $%  ANS012.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  013:硬件版本号（固定版本）:                $%    $%  ANS013.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  014:软件总成版本:                          $%    $%  ANS014.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  015:软件总成零件号:                        $%    $%  ANS015.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:786 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
