
    车型ID：000e

    模拟：协议模拟-->000e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~729

进入命令:

  $~  REQ000:721 02 10 01 00 00 00 00 00       $~  ANS000:729 02 10 01 00 00 00 00 00
  $~  REQ001:721 02 10 03 00 00 00 00 00       $~  ANS001:729 02 10 03 00 00 00 00 00
  $~~ REQ002:721 02 27 01 00 00 00 00 00       $~~ ANS002:729 02 27 01 00 00 00 00 00
  $~~ REQ003:721 06 27 02 34 98 65 CE 00       $~~ ANS003:729 06 27 02 34 98 65 CE 00

空闲命令:

  $!  REQ000:721 02 3E 00 00 00 00 00 00       $!  ANS000:729 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读当前故障码
  $#  REQ000:721 03 19 02 01 00 00 00 00       $#  ANS000:729 03 19 02 01 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/0d000000


  $#  01.读历史故障码
  $#  REQ000:721 03 19 02 08 00 00 00 00       $#  ANS000:729 03 19 02 08 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/0d000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:721 04 14 FF FF FF 00 00 00       $$  ANS000:729 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:721 03 22 F1 93 00 00 00 00       $%  ANS000:729 03 22 F1 93 00 00 00 00
  $%  REQ001:721 03 22 F1 95 00 00 00 00       $%  ANS001:729 03 22 F1 95 00 00 00 00
  $%  REQ002:721 03 22 F1 90 00 00 00 00       $%  ANS002:729 03 22 F1 90 00 00 00 00

  $%  000:硬件版本号:        $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3);
  $%  001:软件版本号:        $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3);
  $%  002:VIN码:             $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:721 03 22 16 00 00 00 00 00       $  ANS000:729 03 22 16 00 00 00 00 00
  $  REQ001:721 03 22 16 01 00 00 00 00       $  ANS001:729 03 22 16 01 00 00 00 00
  $  REQ002:721 03 22 16 02 00 00 00 00       $  ANS002:729 03 22 16 02 00 00 00 00

  $  000.IMMO(防盗控制器)学习状态       $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x03) 0x00: y=@0053; 0x01: y=@0054; 0x02: y=@0055; 0x03: y=@0056;
  $  001.已学钥匙数量                   $    $       $    $  ANS001.BYTE004  $  y = SPRINTF([%d], x1);
  $  002.PIN码                          $    $       $    $  ANS002.BYTE004  $  y = SPRINTF([0000%02X%02X], x1,x4);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:721 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
