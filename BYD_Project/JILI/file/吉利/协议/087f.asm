
    车型ID：087f

    模拟：协议模拟-->087f

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~79B

进入命令:

  $~  REQ000:793 02 10 01 00 00 00 00 00       $~  ANS000:79B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:793 02 3E 00 00 00 00 00 00       $!  ANS000:79B 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:793 03 19 02 09 00 00 00 00       $#  ANS000:79B 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/a6000000


  $#  01.读故障码库
  $#  REQ000:793 02 19 0A 00 00 00 00 00       $#  ANS000:79B 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/a6000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:793 04 14 FF FF FF 00 00 00       $$  ANS000:79B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:793 03 22 F1 12 00 00 00 00       $%  ANS000:79B 03 22 F1 12 00 00 00 00
  $%  REQ001:793 03 22 F1 87 00 00 00 00       $%  ANS001:79B 03 22 F1 87 00 00 00 00
  $%  REQ002:793 03 22 F1 89 00 00 00 00       $%  ANS002:79B 03 22 F1 89 00 00 00 00
  $%  REQ003:793 03 22 F1 8A 00 00 00 00       $%  ANS003:79B 03 22 F1 8A 00 00 00 00
  $%  REQ004:793 03 22 F1 8B 00 00 00 00       $%  ANS004:79B 03 22 F1 8B 00 00 00 00
  $%  REQ005:793 03 22 F1 8C 00 00 00 00       $%  ANS005:79B 03 22 F1 8C 00 00 00 00
  $%  REQ006:793 03 22 F1 90 00 00 00 00       $%  ANS006:79B 03 22 F1 90 00 00 00 00
  $%  REQ007:793 03 22 F1 93 00 00 00 00       $%  ANS007:79B 03 22 F1 93 00 00 00 00
  $%  REQ008:793 03 22 F1 95 00 00 00 00       $%  ANS008:79B 03 22 F1 95 00 00 00 00
  $%  REQ009:793 03 22 F1 9D 00 00 00 00       $%  ANS009:79B 03 22 F1 9D 00 00 00 00
  $%  REQ010:793 03 22 F1 97 00 00 00 00       $%  ANS010:79B 03 22 F1 97 00 00 00 00
  $%  REQ011:793 03 22 F1 98 00 00 00 00       $%  ANS011:79B 03 22 F1 98 00 00 00 00
  $%  REQ012:793 03 22 F1 99 00 00 00 00       $%  ANS012:79B 03 22 F1 99 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                                      $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:Geely软件版本号:                             $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:                     $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)安装日期:                     $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  010:ECU(电子控制器)系统名称或发动机类型:         $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  011:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  012:ECU(电子控制器)刷写日期:                     $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:793 03 22 DF 00 00 00 00 00       $  ANS000:79B 03 22 DF 00 00 00 00 00
  $  REQ001:793 03 22 DF 01 00 00 00 00       $  ANS001:79B 03 22 DF 01 00 00 00 00

  $  000.ECU(电子控制器)供电电压       $    $  V        $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.车速                          $    $  km/h     $    $  ANS001.BYTE004  $  y=INT((x1*256+x2)*0.05625);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:793 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
