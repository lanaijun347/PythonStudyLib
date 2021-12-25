
    车型ID：07b1

    模拟：协议模拟-->07b1

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~7EB

进入命令:

  $~  REQ000:7E3 02 10 01 00 00 00 00 00       $~  ANS000:7EB 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E3 02 3E 00 00 00 00 00 00       $!  ANS000:7EB 02 3E 00 00 00 00 00 00

退出命令:

  $@  REQ000:7E3 01 20 00 00 00 00 00 00       $@  ANS000:7EB 01 20 00 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7E3 03 19 02 09 00 00 00 00       $#  ANS000:7EB 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+(x3<<0); 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/59000000


  $#  01.读故障码库
  $#  REQ000:7E3 02 19 0A 00 00 00 00 00       $#  ANS000:7EB 02 19 0A 00 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+(x3<<0); 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/59000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E3 04 14 FF FF FF 00 00 00       $$  ANS000:7EB 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E3 03 22 F1 12 00 00 00 00       $%  ANS000:7EB 03 22 F1 12 00 00 00 00
  $%  REQ001:7E3 03 22 F1 80 00 00 00 00       $%  ANS001:7EB 03 22 F1 80 00 00 00 00
  $%  REQ002:7E3 03 22 F1 87 00 00 00 00       $%  ANS002:7EB 03 22 F1 87 00 00 00 00
  $%  REQ003:7E3 03 22 F1 89 00 00 00 00       $%  ANS003:7EB 03 22 F1 89 00 00 00 00
  $%  REQ004:7E3 03 22 F1 8A 00 00 00 00       $%  ANS004:7EB 03 22 F1 8A 00 00 00 00
  $%  REQ005:7E3 03 22 F1 8B 00 00 00 00       $%  ANS005:7EB 03 22 F1 8B 00 00 00 00
  $%  REQ006:7E3 03 22 F1 8C 00 00 00 00       $%  ANS006:7EB 03 22 F1 8C 00 00 00 00
  $%  REQ007:7E3 03 22 F1 90 00 00 00 00       $%  ANS007:7EB 03 22 F1 90 00 00 00 00
  $%  REQ008:7E3 03 22 F1 92 00 00 00 00       $%  ANS008:7EB 03 22 F1 92 00 00 00 00
  $%  REQ009:7E3 03 22 F1 93 00 00 00 00       $%  ANS009:7EB 03 22 F1 93 00 00 00 00
  $%  REQ010:7E3 03 22 F1 94 00 00 00 00       $%  ANS010:7EB 03 22 F1 94 00 00 00 00
  $%  REQ011:7E3 03 22 F1 95 00 00 00 00       $%  ANS011:7EB 03 22 F1 95 00 00 00 00
  $%  REQ012:7E3 03 22 F1 97 00 00 00 00       $%  ANS012:7EB 03 22 F1 97 00 00 00 00

  $%  000:车辆名称:                                  $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:驱动层软件版本:                            $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  002:零件号:                                    $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  003:Geely软件版本号:                           $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:供应商代码::                               $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:ECU(电子控制器)生产日期:                   $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  006:ECU(电子控制器)序列号:                     $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  007:车辆识别号（VIN码）:                       $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  008:ECU(电子控制器)硬件号:                     $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)硬件版本号:                 $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:ECU(电子控制器)软件号:                     $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  011:ECU(电子控制器)软件版本号:                 $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  012:ECU(电子控制器)系统名称或发动机类型:       $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E3 03 22 10 00 00 00 00 00       $  ANS000:7EB 03 22 10 00 00 00 00 00
  $  REQ001:7E3 03 22 12 01 00 00 00 00       $  ANS001:7EB 03 22 12 01 00 00 00 00
  $  REQ002:7E3 03 22 12 02 00 00 00 00       $  ANS002:7EB 03 22 12 02 00 00 00 00
  $  REQ003:7E3 03 22 12 03 00 00 00 00       $  ANS003:7EB 03 22 12 03 00 00 00 00
  $  REQ004:7E3 03 22 12 05 00 00 00 00       $  ANS004:7EB 03 22 12 05 00 00 00 00
  $  REQ005:7E3 03 22 14 05 00 00 00 00       $  ANS005:7EB 03 22 14 05 00 00 00 00
  $  REQ006:7E3 03 22 23 00 00 00 00 00       $  ANS006:7EB 03 22 23 00 00 00 00 00
  $  REQ007:7E3 03 22 23 02 00 00 00 00       $  ANS007:7EB 03 22 23 02 00 00 00 00

  $  000.仪表电压            $    $  V      $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.充电机状态          $    $  /      $    $  ANS001.BYTE004  $  if(x==0x00) y=@04d7;else if(x==0x01) y=@04d8;else y=@0009;
  $  002.IGN(点火)状态       $    $  /      $    $  ANS002.BYTE004  $  if(x==0x00) y=@04d9;else if(x==0x01) y=@04da;else y=@0009;
  $  003.仪表复位按钮        $    $  /      $    $  ANS003.BYTE004  $  if(x==0x00) y=@04d4;else if(x==0x01) y=@04d5;else y=@0009;
  $  004.仪表显示按钮        $    $  /      $    $  ANS004.BYTE004  $  if(x==0x00) y=@01cf;else if(x==0x01) y=@04d6;else y=@0009;
  $  005.手刹状态            $    $  /      $    $  ANS005.BYTE004  $  if(x==0x00) y=@01cf;else if(x==0x01) y=@04d6;else y=@0009;
  $  006.里程表              $    $  km     $    $  ANS006.BYTE004  $  y=(x3*0x10000+x2*0x100+x1)*0.1;
  $  007.背光亮度            $    $  /      $    $  ANS007.BYTE004  $  y=x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E3 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
