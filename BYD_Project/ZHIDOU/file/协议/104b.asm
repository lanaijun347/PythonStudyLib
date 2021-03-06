
    车型ID：104b

    模拟：协议模拟-->104b

;******************************************************************************************************************************************************

    通讯线: $~12$~13$~500k$~6E1

进入命令:


空闲命令:

  $!  REQ000:611 02 3E 00 00 00 00 00 00       $!  ANS000:6E1 02 3E 00 00 00 00 00 00
  $!  REQ001:611 02 3E 00 00 00 00 00 00       $!  ANS001:6E1 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:611 03 19 02 09 00 00 00 00       $#  ANS000:6E1 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/42000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:611 04 14 FF FF FF 00 00 00       $$  ANS000:6E1 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:611 03 22 F1 87 00 00 00 00       $%  ANS000:6E1 03 22 F1 87 00 00 00 00
  $%  REQ001:611 03 22 F1 8A 00 00 00 00       $%  ANS001:6E1 03 22 F1 8A 00 00 00 00
  $%  REQ002:611 03 22 F1 93 00 00 00 00       $%  ANS002:6E1 03 22 F1 93 00 00 00 00
  $%  REQ003:611 03 22 F1 95 00 00 00 00       $%  ANS003:6E1 03 22 F1 95 00 00 00 00

  $%  000:零部件号:          $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  001:供应商代码:        $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9);
  $%  002:硬件版本号:        $%    $%  ANS002.BYTE004  $%  ASCII(X1,X2,X3);
  $%  003:软件版本号:        $%    $%  ANS003.BYTE004  $%  ASCII(X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:611 03 22 60 01 00 00 00 00       $  ANS000:6E1 03 22 60 01 00 00 00 00
  $  REQ001:611 03 22 60 02 00 00 00 00       $  ANS001:6E1 03 22 60 02 00 00 00 00
  $  REQ002:611 03 22 60 03 00 00 00 00       $  ANS002:6E1 03 22 60 03 00 00 00 00
  $  REQ003:611 03 22 60 04 00 00 00 00       $  ANS003:6E1 03 22 60 04 00 00 00 00
  $  REQ004:611 03 22 60 05 00 00 00 00       $  ANS004:6E1 03 22 60 05 00 00 00 00

  $  000.伪IP地址               $    $       $    $  ANS000.BYTE004  $  HEX(X1,X2,X3,X4,X5,X6);
  $  001.租赁平台IP及PORT       $    $       $    $  ANS001.BYTE004  $  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19);
  $  002.监控平台IP及PORT       $    $       $    $  ANS002.BYTE004  $  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19);
  $  003.数据上传周期配置       $    $       $    $  ANS003.BYTE004  $  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);
  $  004.GPS定位信息            $    $       $    $  ANS004.BYTE004  $  HEX(X1,X2,X3,X4,X5,X6);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:611 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
