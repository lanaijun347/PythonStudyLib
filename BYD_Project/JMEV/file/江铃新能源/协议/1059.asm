
    车型ID：1059

    模拟：协议模拟-->1059

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7B4

进入命令:

  $~  REQ000:734 02 10 01 00 00 00 00 00       $~  ANS000:7B4 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:734 02 3E 00 00 00 00 00 00       $!  ANS000:7B4 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:734 03 19 02 FF 00 00 00 00       $#  ANS000:7B4 03 19 02 FF 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/59000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:734 04 14 FF FF FF 00 00 00       $$  ANS000:7B4 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:734 03 22 F1 90 00 00 00 00       $%  ANS000:7B4 03 22 F1 90 00 00 00 00
  $%  REQ001:734 03 22 F1 94 00 00 00 00       $%  ANS001:7B4 03 22 F1 94 00 00 00 00
  $%  REQ002:734 03 22 16 F1 00 00 00 00       $%  ANS002:7B4 03 22 16 F1 00 00 00 00
  $%  REQ003:734 03 22 16 F2 00 00 00 00       $%  ANS003:7B4 03 22 16 F2 00 00 00 00
  $%  REQ004:734 03 22 16 F3 00 00 00 00       $%  ANS004:7B4 03 22 16 F3 00 00 00 00
  $%  REQ005:734 03 22 16 F4 00 00 00 00       $%  ANS005:7B4 03 22 16 F4 00 00 00 00

  $%  000:VIN:               $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  001:软件版本号:        $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  002:左前胎压ID:        $%    $%  ANS002.BYTE004  $%  HEX(X1,X2,X3,X4);
  $%  003:右前胎压ID:        $%    $%  ANS003.BYTE004  $%  HEX(X1,X2,X3,X4);
  $%  004:左后胎压ID:        $%    $%  ANS004.BYTE004  $%  HEX(X1,X2,X3,X4);
  $%  005:右后胎压ID:        $%    $%  ANS005.BYTE004  $%  HEX(X1,X2,X3,X4);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:734 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
