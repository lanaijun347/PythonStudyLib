
    车型ID：e108

    模拟：协议模拟-->e108

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~784

进入命令:

  $~  REQ000:704 02 10 01 00 00 00 00 00       $~  ANS000:784 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:704 02 3E 00 00 00 00 00 00       $!  ANS000:784 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:704 03 19 02 09 00 00 00 00       $#  ANS000:784 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/e9000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:704 04 14 FF FF FF 00 00 00       $$  ANS000:784 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:704 03 22 0A 06 00 00 00 00       $  ANS000:784 03 22 0A 06 00 00 00 00
  $  REQ001:704 03 22 F1 90 00 00 00 00       $  ANS001:784 03 22 F1 90 00 00 00 00

  $  000.PEPS学习流程       $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x03) 0x00: y=@0017;0x01: y=@0016;0x02: y=@0017;0x03: y=@0016;
  $  001.VIN码              $    $       $    $  ANS001.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:704 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
