
    车型ID：003e

    模拟：协议模拟-->003e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A2

进入命令:

  $~  REQ000:722 02 10 01 00 00 00 00 00       $~  ANS000:7A2 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:722 02 3E 00 00 00 00 00 00       $!  ANS000:7A2 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:722 03 19 02 09 00 00 00 00       $#  ANS000:7A2 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/2f000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:722 04 14 FF FF FF 00 00 00       $$  ANS000:7A2 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:722 03 22 F1 87 00 00 00 00       $%  ANS000:7A2 03 22 F1 87 00 00 00 00
  $%  REQ001:722 03 22 F1 8A 00 00 00 00       $%  ANS001:7A2 03 22 F1 8A 00 00 00 00
  $%  REQ002:722 03 22 F1 93 00 00 00 00       $%  ANS002:7A2 03 22 F1 93 00 00 00 00
  $%  REQ003:722 03 22 F1 95 00 00 00 00       $%  ANS003:7A2 03 22 F1 95 00 00 00 00
  $%  REQ004:722 03 22 F1 9D 00 00 00 00       $%  ANS004:7A2 03 22 F1 9D 00 00 00 00
  $%  REQ005:722 03 22 F1 8B 00 00 00 00       $%  ANS005:7A2 03 22 F1 8B 00 00 00 00
  $%  REQ006:722 03 22 F1 90 00 00 00 00       $%  ANS006:7A2 03 22 F1 90 00 00 00 00
  $%  REQ007:722 03 22 F1 84 00 00 00 00       $%  ANS007:7A2 03 22 F1 84 00 00 00 00
  $%  REQ008:722 03 22 F1 8C 00 00 00 00       $%  ANS008:7A2 03 22 F1 8C 00 00 00 00
  $%  REQ009:722 03 22 F0 10 00 00 00 00       $%  ANS009:7A2 03 22 F0 10 00 00 00 00

  $%  000:零部件件号:                     $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  001:系统供应商代码:                 $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:系统供应商ECU硬件版本号:        $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  003:系统供应商ECU软件版本号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  004:ECU安装日期:                    $%    $%  ANS004.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  005:ECU制造日期:                    $%    $%  ANS005.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  006:VIN:                            $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:指纹数据标识符:                 $%    $%  ANS007.BYTE004  $%  y = SPRINTF([%02X%02X%02X%02X%c%c%c%c%c%c%c%c%c%c],x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  008:ECU序列号:                      $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  009:车辆配置代码:                   $%    $%  ANS009.BYTE004  $%  if(x1+x2+x3+x4==0) y = @0095; else y = @002e;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:722 03 22 32 07 00 00 00 00       $  ANS000:7A2 03 22 32 07 00 00 00 00
  $  REQ001:722 03 22 32 08 00 00 00 00       $  ANS001:7A2 03 22 32 08 00 00 00 00
  $  REQ002:722 03 22 32 09 00 00 00 00       $  ANS002:7A2 03 22 32 09 00 00 00 00

  $  000.行驶里程                   $    $  km     $    $  ANS000.BYTE004  $  y = SPRINTF([%d], (x1*256*256+x2*256+x3));
  $  001.距离下次保养的公里数       $    $  km     $    $  ANS001.BYTE004  $  y = SPRINTF([%d], (x1*256+x2));
  $  002.累计里程                   $    $  km     $    $  ANS002.BYTE004  $  y = SPRINTF([%d], (x1*256*256+x2*256+x3));

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:722 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
