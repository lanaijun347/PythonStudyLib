
    车型ID：5831

    模拟：协议模拟-->5831

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~73E

进入命令:

  $~  REQ000:72E 02 10 03 FF FF FF FF FF       $~  ANS000:73E 02 10 03 FF FF FF FF FF
  $~  REQ001:72E 02 27 03 FF FF FF FF FF       $~  ANS001:73E 02 27 03 FF FF FF FF FF
  $~  REQ002:72E 04 27 04 1E B0 FF FF FF       $~  ANS002:73E 04 27 04 1E B0 FF FF FF

空闲命令:

  $!  REQ000:72E 02 3E 00 FF FF FF FF FF       $!  ANS000:73E 02 3E 00 FF FF FF FF FF

退出命令:

  $@  REQ000:72E 02 10 01 FF FF FF FF FF       $@  ANS000:73E 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:72E 03 19 02 09 FF FF FF FF       $#  ANS000:73E 03 19 02 09 FF FF FF FF

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/6f000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:72E 04 14 FF FF FF FF FF FF       $$  ANS000:73E 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:72E 03 22 F1 88 FF FF FF FF       $%  ANS000:73E 03 22 F1 88 FF FF FF FF

  $%  000:软件版本号(正常升级版本):        $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:72E 03 22 09 01 FF FF FF FF       $  ANS000:73E 03 22 09 01 FF FF FF FF
  $  REQ001:72E 03 22 09 02 FF FF FF FF       $  ANS001:73E 03 22 09 02 FF FF FF FF
  $  REQ002:72E 03 22 09 03 FF FF FF FF       $  ANS002:73E 03 22 09 03 FF FF FF FF
  $  REQ003:72E 03 22 09 04 FF FF FF FF       $  ANS003:73E 03 22 09 04 FF FF FF FF
  $  REQ004:72E 03 22 09 05 FF FF FF FF       $  ANS004:73E 03 22 09 05 FF FF FF FF
  $  REQ005:72E 03 22 09 06 FF FF FF FF       $  ANS005:73E 03 22 09 06 FF FF FF FF

  $  000.DCDC使能命令       $    $        $    $  ANS000.BYTE004  $  switxh(x) 0x01:y=@0101;default: y=@0130;
  $  001.DCDC工作状态       $    $        $    $  ANS001.BYTE004  $  switxh(x) 0x00:y=@0192;0x01:y=@0193;0x02:y=@0156;default: y=-;
  $  002.DCDC输入电压       $    $  V     $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.1;
  $  003.DCDC输入电流       $    $  A     $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.05;
  $  004.DCDC输出电压       $    $  V     $    $  ANS004.BYTE004  $  y=(x1*256+x2)*0.1;
  $  005.DCDC输出电流       $    $  A     $    $  ANS005.BYTE004  $  y=(x1*256+x2)*0.05;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:72E 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
