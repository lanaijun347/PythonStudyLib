
    车型ID：000b

    模拟：协议模拟-->000b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7B2

进入命令:

  $~  REQ000:732 02 10 01 00 00 00 00 00       $~  ANS000:7B2 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:732 02 3E 80 00 00 00 00 00       $!  ANS000:7B2 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:732 03 19 02 09 00 00 00 00       $#  ANS000:7B2 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/0a000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:732 04 14 FF FF FF 00 00 00       $$  ANS000:7B2 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:732 03 22 F1 87 00 00 00 00       $%  ANS000:7B2 03 22 F1 87 00 00 00 00
  $%  REQ001:732 03 22 F1 8A 00 00 00 00       $%  ANS001:7B2 03 22 F1 8A 00 00 00 00
  $%  REQ002:732 03 22 F1 97 00 00 00 00       $%  ANS002:7B2 03 22 F1 97 00 00 00 00
  $%  REQ003:732 03 22 F1 93 00 00 00 00       $%  ANS003:7B2 03 22 F1 93 00 00 00 00
  $%  REQ004:732 03 22 F1 95 00 00 00 00       $%  ANS004:7B2 03 22 F1 95 00 00 00 00
  $%  REQ005:732 03 22 F1 8C 00 00 00 00       $%  ANS005:7B2 03 22 F1 8C 00 00 00 00
  $%  REQ006:732 03 22 F1 90 00 00 00 00       $%  ANS006:7B2 03 22 F1 90 00 00 00 00
  $%  REQ007:732 03 22 F1 80 00 00 00 00       $%  ANS007:7B2 03 22 F1 80 00 00 00 00
  $%  REQ008:732 03 22 F0 10 00 00 00 00       $%  ANS008:7B2 03 22 F0 10 00 00 00 00
  $%  REQ009:732 03 22 FD 03 00 00 00 00       $%  ANS009:7B2 03 22 FD 03 00 00 00 00

  $%  000:零件号:                                              $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  001:系统供应商识别符:                                    $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:系统名称:                                            $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:系统供应商硬件版本号:                                $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:系统供应商软件版本号:                                $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);
  $%  005:ECU序列号:                                           $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  006:车架号(VIN):                                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:系统供应商ECU Bootloader(引导加载程序)版本号:        $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:下线配置编码:                                        $%    $%  ANS008.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  009:旋变偏置角:                                          $%    $%  ANS009.BYTE004  $%  HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:732 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
