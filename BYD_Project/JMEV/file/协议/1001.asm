
    车型ID：1001

    模拟：协议模拟-->1001

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~250K$~805FF80

进入命令:

  $~  REQ000:804FF80 02 10 01 00 00 00 00 00       $~  ANS000:805FF80 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:804FF80 02 3E 00 00 00 00 00 00       $!  ANS000:805FF80 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:804FF80 03 19 02 FF 00 00 00 00       $#  ANS000:805FF80 03 19 02 FF 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/01000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:804FF80 04 14 FF FF FF 00 00 00       $$  ANS000:805FF80 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:804FF80 03 22 F1 95 00 00 00 00       $%  ANS000:805FF80 03 22 F1 95 00 00 00 00

  $%  000:软件版本号:        $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:804FF80 03 22 40 00 00 00 00 00       $  ANS000:805FF80 03 22 40 00 00 00 00 00
  $  REQ001:804FF80 03 22 40 01 00 00 00 00       $  ANS001:805FF80 03 22 40 01 00 00 00 00
  $  REQ002:804FF80 03 22 40 02 00 00 00 00       $  ANS002:805FF80 03 22 40 02 00 00 00 00
  $  REQ003:804FF80 03 22 40 03 00 00 00 00       $  ANS003:805FF80 03 22 40 03 00 00 00 00
  $  REQ004:804FF80 03 22 40 04 00 00 00 00       $  ANS004:805FF80 03 22 40 04 00 00 00 00
  $  REQ005:804FF80 03 22 40 05 00 00 00 00       $  ANS005:805FF80 03 22 40 05 00 00 00 00
  $  REQ006:804FF80 03 22 40 06 00 00 00 00       $  ANS006:805FF80 03 22 40 06 00 00 00 00

  $  000.前左轮速           $    $  km/h       $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.01;
  $  001.前右轮速           $    $  km/h       $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.01;
  $  002.后左轮速           $    $  km/h       $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.01;
  $  003.后右轮速           $    $  km/h       $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.01;
  $  004.车速               $    $  km/h       $    $  ANS004.BYTE004  $  y=(x1*256+x2)*0.01;
  $  005.当前电压           $    $  V          $    $  ANS005.BYTE004  $  y=x*0.1;
  $  006.制动信号状态       $    $  0或255     $    $  ANS006.BYTE004  $  y=x1*256+x2;

;******************************************************************************************************************************************************

