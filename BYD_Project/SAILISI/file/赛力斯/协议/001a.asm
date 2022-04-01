
    车型ID：001a

    模拟：协议模拟-->001a

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~782

进入命令:

  $~  REQ000:702 02 10 01 00 00 00 00 00       $~  ANS000:782 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:702 02 3E 80 00 00 00 00 00       $!  ANS000:782 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:702 03 19 02 09 00 00 00 00       $#  ANS000:782 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/19000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:702 04 14 FF FF FF 00 00 00       $$  ANS000:782 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:702 03 22 F1 87 00 00 00 00       $%  ANS000:782 03 22 F1 87 00 00 00 00
  $%  REQ001:702 03 22 F1 8A 00 00 00 00       $%  ANS001:782 03 22 F1 8A 00 00 00 00
  $%  REQ002:702 03 22 F1 97 00 00 00 00       $%  ANS002:782 03 22 F1 97 00 00 00 00
  $%  REQ003:702 03 22 F1 93 00 00 00 00       $%  ANS003:782 03 22 F1 93 00 00 00 00
  $%  REQ004:702 03 22 F1 95 00 00 00 00       $%  ANS004:782 03 22 F1 95 00 00 00 00
  $%  REQ005:702 03 22 F0 10 00 00 00 00       $%  ANS005:782 03 22 F0 10 00 00 00 00
  $%  REQ006:702 03 22 F1 90 00 00 00 00       $%  ANS006:782 03 22 F1 90 00 00 00 00
  $%  REQ007:702 03 22 F1 8B 00 00 00 00       $%  ANS007:782 03 22 F1 8B 00 00 00 00
  $%  REQ008:702 03 22 20 03 00 00 00 00       $%  ANS008:782 03 22 20 03 00 00 00 00
  $%  REQ009:702 03 22 20 04 00 00 00 00       $%  ANS009:782 03 22 20 04 00 00 00 00

  $%  000:零件号:                           $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  001:系统供应商号:                     $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:系统名称:                         $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:系统供应商硬件版本号:             $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:系统供应商软件版本号:             $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);
  $%  005:下线配置编码:                     $%    $%  ANS005.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  006:VIN码:                            $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU制造日期:                      $%    $%  ANS007.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  008:MCU(电机控制器)软件版本号:        $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  009:MPU软件版本号:                    $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:702 03 22 20 01 00 00 00 00       $  ANS000:782 03 22 20 01 00 00 00 00
  $  REQ001:702 03 22 20 02 00 00 00 00       $  ANS001:782 03 22 20 02 00 00 00 00

  $  000.里程表         $    $       $    $  ANS000.BYTE004  $  y = SPRINTF([%.1f], (x1*256*256+x2*256+x3));
  $  001.电源电压       $    $       $    $  ANS001.BYTE004  $  y = SPRINTF([%d], x1*0.1);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:702 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
