
    车型ID：9d1e

    模拟：协议模拟-->9d1e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~60C

进入命令:

  $~  REQ000:68C 02 10 03 00 00 00 00 00       $~  ANS000:60C 02 10 03 00 00 00 00 00
  $~~ REQ001:68C 02 27 01 00 00 00 00 00       $~~ ANS001:60C 02 27 01 00 00 00 00 00
  $~~ REQ002:68C 04 27 02 00 00 00 00 00       $~~ ANS002:60C 04 27 02 00 00 00 00 00

空闲命令:

  $!  REQ000:68C 02 3E 00 00 00 00 00 00       $!  ANS000:60C 02 3E 00 00 00 00 00 00

退出命令:

  $@  REQ000:68C 02 10 01 00 00 00 00 00       $@  ANS000:60C 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:68C 03 19 02 09 00 00 00 00       $#  ANS000:60C 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/16000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:68C 04 14 FF FF FF 00 00 00       $$  ANS000:60C 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:68C 03 22 F1 87 00 00 00 00       $%  ANS000:60C 03 22 F1 87 00 00 00 00
  $%  REQ001:68C 03 22 F1 8A 00 00 00 00       $%  ANS001:60C 03 22 F1 8A 00 00 00 00
  $%  REQ002:68C 03 22 F1 8C 00 00 00 00       $%  ANS002:60C 03 22 F1 8C 00 00 00 00
  $%  REQ003:68C 03 22 F1 90 00 00 00 00       $%  ANS003:60C 03 22 F1 90 00 00 00 00
  $%  REQ004:68C 03 22 F1 93 00 00 00 00       $%  ANS004:60C 03 22 F1 93 00 00 00 00
  $%  REQ005:68C 03 22 F1 95 00 00 00 00       $%  ANS005:60C 03 22 F1 95 00 00 00 00
  $%  REQ006:68C 03 22 F1 97 00 00 00 00       $%  ANS006:60C 03 22 F1 97 00 00 00 00

  $%  000:车辆制造商备件号:               $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:系统供应商标识符:               $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:ECU序列号:                      $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:VIN码:                          $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  004:ECU硬件版本:                    $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  005:系统供应商ECU软件版本号:        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  006:系统名称:                       $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:68C 03 22 01 00 00 00 00 00       $  ANS000:60C 03 22 01 00 00 00 00 00
  $  REQ001:68C 03 22 01 01 00 00 00 00       $  ANS001:60C 03 22 01 01 00 00 00 00
  $  REQ002:68C 03 22 01 02 00 00 00 00       $  ANS002:60C 03 22 01 02 00 00 00 00
  $  REQ003:68C 03 22 01 03 00 00 00 00       $  ANS003:60C 03 22 01 03 00 00 00 00
  $  REQ004:68C 03 22 01 04 00 00 00 00       $  ANS004:60C 03 22 01 04 00 00 00 00
  $  REQ005:68C 03 22 01 05 00 00 00 00       $  ANS005:60C 03 22 01 05 00 00 00 00

  $  000.左前探测距离标识符         $    $       $    $  ANS000.BYTE004  $  y=HEX(x1,x2);
  $  001.右前探测距离标识符         $    $       $    $  ANS001.BYTE004  $  y=HEX(x1,x2);
  $  002.左后探测距离标识符         $    $       $    $  ANS002.BYTE004  $  y=HEX(x1,x2);
  $  003.左后中探测距离标识符       $    $       $    $  ANS003.BYTE004  $  y=HEX(x1,x2);
  $  004.右后中探测距离标识符       $    $       $    $  ANS004.BYTE004  $  y=HEX(x1,x2);
  $  005.右后探测距离标识符         $    $       $    $  ANS005.BYTE004  $  y=HEX(x1,x2);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:68C 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
