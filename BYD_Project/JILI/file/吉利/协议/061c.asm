
    车型ID：061c

    模拟：协议模拟-->061c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7AA

进入命令:

  $~  REQ000:7A2 02 10 01 00 00 00 00 00       $~  ANS000:7AA 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A2 02 3E 00 00 00 00 00 00       $!  ANS000:7AA 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7A2 03 19 02 09 00 00 00 00       $#  ANS000:7AA 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fc000000


  $#  01.读故障码库
  $#  REQ000:7A2 02 19 0A 00 00 00 00 00       $#  ANS000:7AA 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fc000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A2 04 14 FF FF FF 00 00 00       $$  ANS000:7AA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A2 03 22 F1 12 00 00 00 00       $%  ANS000:7AA 03 22 F1 12 00 00 00 00
  $%  REQ001:7A2 03 22 F1 8A 00 00 00 00       $%  ANS001:7AA 03 22 F1 8A 00 00 00 00
  $%  REQ002:7A2 03 22 F1 8C 00 00 00 00       $%  ANS002:7AA 03 22 F1 8C 00 00 00 00
  $%  REQ003:7A2 03 22 F1 90 00 00 00 00       $%  ANS003:7AA 03 22 F1 90 00 00 00 00
  $%  REQ004:7A2 03 22 F1 93 00 00 00 00       $%  ANS004:7AA 03 22 F1 93 00 00 00 00
  $%  REQ005:7A2 03 22 F1 95 00 00 00 00       $%  ANS005:7AA 03 22 F1 95 00 00 00 00
  $%  REQ006:7A2 03 22 F1 97 00 00 00 00       $%  ANS006:7AA 03 22 F1 97 00 00 00 00
  $%  REQ007:7A2 03 22 F1 99 00 00 00 00       $%  ANS007:7AA 03 22 F1 99 00 00 00 00
  $%  REQ008:7A2 03 22 F1 9D 00 00 00 00       $%  ANS008:7AA 03 22 F1 9D 00 00 00 00
  $%  REQ009:7A2 03 22 F1 87 00 00 00 00       $%  ANS009:7AA 03 22 F1 87 00 00 00 00

  $%  000:车辆名称:                                  $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:供应商代码:                                $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:ECU(电子控制器)序列号:                     $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:车辆识别号(VIN码):                         $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  004:ECU(电子控制器)硬件版本号:                 $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  005:ECU(电子控制器)软件版本号:                 $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  006:ECU(电子控制器)系统名称或发动机类型:       $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  007:ECU(电子控制器)刷写日期:                   $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  008:ECU(电子控制器)安装日期:                   $%    $%  ANS008.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  009:零件号:                                    $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7A2 03 22 10 00 00 00 00 00       $  ANS000:7AA 03 22 10 00 00 00 00 00
  $  REQ001:7A2 03 22 10 01 00 00 00 00       $  ANS001:7AA 03 22 10 01 00 00 00 00

  $  000.ECU(电子控制器)供电电压       $    $  V       $    $  ANS000.BYTE004  $  y=(x1*0x100+x2)*0.01;
  $  001.方向盘转角                    $    $  deg     $    $  ANS001.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.1;else y=(x1*0x100+x2-65536)*0.1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A2 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
