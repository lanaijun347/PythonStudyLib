
    车型ID：57c2

    模拟：协议模拟-->57c2

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~7AD

进入命令:

  $~  REQ000:72D 02 10 01 00 00 00 00 00       $~  ANS000:7AD 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:72D 02 3E 00 00 00 00 00 00       $!  ANS000:7AD 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读取当前故障码
  $#  REQ000:72D 03 19 02 01 00 00 00 00       $#  ANS000:7AD 03 19 02 01 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/6c000000


  $#  01.读取历史故障码
  $#  REQ000:72D 03 19 02 08 00 00 00 00       $#  ANS000:7AD 03 19 02 08 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/6c000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:72D 04 14 FF FF FF 00 00 00       $$  ANS000:7AD 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:72D 03 22 F1 90 00 00 00 00       $%  ANS000:7AD 03 22 F1 90 00 00 00 00
  $%  REQ001:72D 03 22 F1 87 00 00 00 00       $%  ANS001:7AD 03 22 F1 87 00 00 00 00
  $%  REQ002:72D 03 22 F1 97 00 00 00 00       $%  ANS002:7AD 03 22 F1 97 00 00 00 00
  $%  REQ003:72D 03 22 F1 8A 00 00 00 00       $%  ANS003:7AD 03 22 F1 8A 00 00 00 00
  $%  REQ004:72D 03 22 F1 93 00 00 00 00       $%  ANS004:7AD 03 22 F1 93 00 00 00 00
  $%  REQ005:72D 03 22 F1 95 00 00 00 00       $%  ANS005:7AD 03 22 F1 95 00 00 00 00
  $%  REQ006:72D 03 22 F1 8C 00 00 00 00       $%  ANS006:7AD 03 22 F1 8C 00 00 00 00
  $%  REQ007:72D 03 22 F1 00 00 00 00 00       $%  ANS007:7AD 03 22 F1 00 00 00 00 00
  $%  REQ008:72D 03 22 F1 99 00 00 00 00       $%  ANS008:7AD 03 22 F1 99 00 00 00 00
  $%  REQ009:72D 03 22 F1 80 00 00 00 00       $%  ANS009:7AD 03 22 F1 80 00 00 00 00

  $%  000:VIN:                       $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:零件号:                    $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  002:系统名称:                  $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:系统供应商标识:            $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:ECU硬件版本号:             $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  005:ECU软件版本号:             $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  006:ECU序列号:                 $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:诊断版本:                  $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  008:编程日期:                  $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  009:Bootloader软件版本:        $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:72D 30 00 10 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
