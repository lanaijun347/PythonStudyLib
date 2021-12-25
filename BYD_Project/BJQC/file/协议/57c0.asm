
    车型ID：57c0

    模拟：协议模拟-->57c0

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~7BE

进入命令:

  $~  REQ000:73E 02 10 01 00 00 00 00 00       $~  ANS000:7BE 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:73E 02 3E 00 00 00 00 00 00       $!  ANS000:7BE 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读取当前故障码
  $#  REQ000:73E 03 19 02 01 00 00 00 00       $#  ANS000:7BE 03 19 02 01 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/6a000000


  $#  01.读取历史故障码
  $#  REQ000:73E 03 19 02 08 00 00 00 00       $#  ANS000:7BE 03 19 02 08 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/6a000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:73E 04 14 FF FF FF 00 00 00       $$  ANS000:7BE 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:73E 03 22 F1 90 00 00 00 00       $%  ANS000:7BE 03 22 F1 90 00 00 00 00
  $%  REQ001:73E 03 22 F1 87 00 00 00 00       $%  ANS001:7BE 03 22 F1 87 00 00 00 00
  $%  REQ002:73E 03 22 F1 97 00 00 00 00       $%  ANS002:7BE 03 22 F1 97 00 00 00 00
  $%  REQ003:73E 03 22 F1 8A 00 00 00 00       $%  ANS003:7BE 03 22 F1 8A 00 00 00 00
  $%  REQ004:73E 03 22 F1 93 00 00 00 00       $%  ANS004:7BE 03 22 F1 93 00 00 00 00
  $%  REQ005:73E 03 22 F1 95 00 00 00 00       $%  ANS005:7BE 03 22 F1 95 00 00 00 00
  $%  REQ006:73E 03 22 F1 8C 00 00 00 00       $%  ANS006:7BE 03 22 F1 8C 00 00 00 00
  $%  REQ007:73E 03 22 F1 00 00 00 00 00       $%  ANS007:7BE 03 22 F1 00 00 00 00 00
  $%  REQ008:73E 03 22 F1 99 00 00 00 00       $%  ANS008:7BE 03 22 F1 99 00 00 00 00
  $%  REQ009:73E 03 22 F1 80 00 00 00 00       $%  ANS009:7BE 03 22 F1 80 00 00 00 00
  $%  REQ010:73E 03 22 F1 84 00 00 00 00       $%  ANS010:7BE 03 22 F1 84 00 00 00 00
  $%  REQ011:73E 03 22 F1 50 00 00 00 00       $%  ANS011:7BE 03 22 F1 50 00 00 00 00

  $%  000:VIN:                   $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:零件号:                $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  002:系统名称:              $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:系统供应商标识:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:ECU硬件版本号:         $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  005:ECU软件版本号:         $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  006:ECU序列号:             $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:诊断版本:              $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  008:编程日期:              $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  009:蓝牙软件版本号:        $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  010:指纹识别(F184):        $%    $%  ANS010.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  011:指纹识别(F150):        $%    $%  ANS011.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:73E 30 00 10 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
