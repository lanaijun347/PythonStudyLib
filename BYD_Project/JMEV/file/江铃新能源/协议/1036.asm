
    车型ID：1036

    模拟：协议模拟-->1036

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7B6

进入命令:

  $~  REQ000:736 02 10 01 00 00 00 00 00       $~  ANS000:7B6 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:736 02 3E 00 00 00 00 00 00       $!  ANS000:7B6 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:736 03 19 02 FF 00 00 00 00       $#  ANS000:7B6 03 19 02 FF 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/35000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:736 04 14 FF FF FF 00 00 00       $$  ANS000:7B6 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:736 03 22 F1 95 00 00 00 00       $%  ANS000:7B6 03 22 F1 95 00 00 00 00

  $%  000:软件版本号:        $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:736 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
