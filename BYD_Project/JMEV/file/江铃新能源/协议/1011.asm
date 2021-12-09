
    车型ID：1011

    模拟：协议模拟-->1011

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A5

进入命令:

  $~  REQ000:725 02 10 01 00 00 00 00 00       $~  ANS000:7A5 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:725 02 3E 00 00 00 00 00 00       $!  ANS000:7A5 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:725 03 19 02 FF 00 00 00 00       $#  ANS000:7A5 03 19 02 FF 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/11000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:725 04 14 FF FF FF 00 00 00       $$  ANS000:7A5 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:725 03 22 F1 95 00 00 00 00       $%  ANS000:7A5 03 22 F1 95 00 00 00 00

  $%  000:软件版本号:        $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:725 03 22 0D 04 00 00 00 00       $  ANS000:7A5 03 22 0D 04 00 00 00 00
  $  REQ001:725 03 22 0D 05 00 00 00 00       $  ANS001:7A5 03 22 0D 05 00 00 00 00
  $  REQ002:725 03 22 0D 06 00 00 00 00       $  ANS002:7A5 03 22 0D 06 00 00 00 00
  $  REQ003:725 03 22 0D 07 00 00 00 00       $  ANS003:7A5 03 22 0D 07 00 00 00 00

  $  000.存储器故障           $    $       $    $  ANS000.BYTE004  $  HEX(X1);
  $  001.发送信号故障         $    $       $    $  ANS001.BYTE004  $  HEX(X1);
  $  002.温度过高             $    $       $    $  ANS002.BYTE004  $  HEX(X1);
  $  003.系统时钟不正常       $    $       $    $  ANS003.BYTE004  $  HEX(X1);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:725 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
