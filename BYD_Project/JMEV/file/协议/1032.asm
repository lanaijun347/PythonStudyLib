
    车型ID：1032

    模拟：协议模拟-->1032

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~789

进入命令:

  $~  REQ000:709 02 10 01 00 00 00 00 00       $~  ANS000:789 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:709 02 3E 00 00 00 00 00 00       $!  ANS000:789 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:709 03 19 02 FF 00 00 00 00       $#  ANS000:789 03 19 02 FF 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/31000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:709 04 14 FF FF FF 00 00 00       $$  ANS000:789 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:709 03 22 F1 95 00 00 00 00       $%  ANS000:789 03 22 F1 95 00 00 00 00

  $%  000:软件版本号:        $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:709 03 22 03 80 00 00 00 00       $  ANS000:789 03 22 03 80 00 00 00 00
  $  REQ001:709 03 22 03 81 00 00 00 00       $  ANS001:789 03 22 03 81 00 00 00 00
  $  REQ002:709 03 22 03 82 00 00 00 00       $  ANS002:789 03 22 03 82 00 00 00 00
  $  REQ003:709 03 22 03 83 00 00 00 00       $  ANS003:789 03 22 03 83 00 00 00 00

  $  000.设置电压             $    $  V      $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.1;
  $  001.设置电流             $    $  I      $    $  ANS000.BYTE006  $  y=(x1*256+x2)*0.1;
  $  002.输出电流限制         $    $  I      $    $  ANS001.BYTE005  $  y=x*1;
  $  003.输入电压             $    $  V      $    $  ANS002.BYTE004  $  y=x*3;
  $  004.DC(直流电)温度       $    $  ℃     $    $  ANS002.BYTE005  $  y=x-40;
  $  005.内部电源电压         $    $  V      $    $  ANS002.BYTE006  $  y=x*0.1;
  $  006.蓄电池电压           $    $  V      $    $  ANS002.BYTE007  $  y=x*0.2;
  $  007.输出电压             $    $  V      $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.1;
  $  008.输出电流             $    $  A      $    $  ANS003.BYTE006  $  y=(x1*256+x2)*0.1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:709 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
