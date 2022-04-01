
    车型ID：0017

    模拟：协议模拟-->0017

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~78E

进入命令:

  $~  REQ000:70E 02 10 01 00 00 00 00 00       $~  ANS000:78E 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:70E 02 3E 80 00 00 00 00 00       $!  ANS000:78E 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:70E 03 19 02 09 00 00 00 00       $#  ANS000:78E 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/16000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:70E 04 14 FF FF FF 00 00 00       $$  ANS000:78E 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:70E 03 22 F1 80 00 00 00 00       $%  ANS000:78E 03 22 F1 80 00 00 00 00
  $%  REQ001:70E 03 22 F1 87 00 00 00 00       $%  ANS001:78E 03 22 F1 87 00 00 00 00
  $%  REQ002:70E 03 22 F1 8A 00 00 00 00       $%  ANS002:78E 03 22 F1 8A 00 00 00 00
  $%  REQ003:70E 03 22 F1 97 00 00 00 00       $%  ANS003:78E 03 22 F1 97 00 00 00 00
  $%  REQ004:70E 03 22 F1 93 00 00 00 00       $%  ANS004:78E 03 22 F1 93 00 00 00 00
  $%  REQ005:70E 03 22 F1 95 00 00 00 00       $%  ANS005:78E 03 22 F1 95 00 00 00 00
  $%  REQ006:70E 03 22 F1 8C 00 00 00 00       $%  ANS006:78E 03 22 F1 8C 00 00 00 00
  $%  REQ007:70E 03 22 F1 90 00 00 00 00       $%  ANS007:78E 03 22 F1 90 00 00 00 00
  $%  REQ008:70E 03 22 F0 10 00 00 00 00       $%  ANS008:78E 03 22 F0 10 00 00 00 00

  $%  000:引导加载程序版本号:          $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  001:零件号:                      $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  002:系统供应商号:                $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:系统名称:                    $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:系统供应商硬件版本号:        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:系统供应商软件版本号:        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);
  $%  006:ECU序列号:                   $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  007:VIN码:                       $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  008:下线配置编码:                $%    $%  ANS008.BYTE004  $%  HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:70E 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
