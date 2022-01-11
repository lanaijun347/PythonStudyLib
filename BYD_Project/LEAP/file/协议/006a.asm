
    车型ID：006a

    模拟：协议模拟-->006a

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~73D

进入命令:

  $~  REQ000:735 02 10 01 00 00 00 00 00       $~  ANS000:73D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:735 02 3E 80 00 00 00 00 00       $!  ANS000:73D 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:735 03 19 02 09 00 00 00 00       $#  ANS000:73D 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/48000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:735 04 14 FF FF FF 00 00 00       $$  ANS000:73D 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:735 03 22 F1 90 00 00 00 00       $%  ANS000:73D 03 22 F1 90 00 00 00 00
  $%  REQ001:735 03 22 F1 87 00 00 00 00       $%  ANS001:73D 03 22 F1 87 00 00 00 00
  $%  REQ002:735 03 22 F1 8A 00 00 00 00       $%  ANS002:73D 03 22 F1 8A 00 00 00 00
  $%  REQ003:735 03 22 F1 8B 00 00 00 00       $%  ANS003:73D 03 22 F1 8B 00 00 00 00
  $%  REQ004:735 03 22 F1 50 00 00 00 00       $%  ANS004:73D 03 22 F1 50 00 00 00 00
  $%  REQ005:735 03 22 F1 89 00 00 00 00       $%  ANS005:73D 03 22 F1 89 00 00 00 00
  $%  REQ006:735 03 22 F1 88 00 00 00 00       $%  ANS006:73D 03 22 F1 88 00 00 00 00
  $%  REQ007:735 03 22 F1 97 00 00 00 00       $%  ANS007:73D 03 22 F1 97 00 00 00 00
  $%  REQ008:735 03 22 F1 80 00 00 00 00       $%  ANS008:73D 03 22 F1 80 00 00 00 00
  $%  REQ009:735 03 22 F1 99 00 00 00 00       $%  ANS009:73D 03 22 F1 99 00 00 00 00
  $%  REQ010:735 03 22 FF 00 00 00 00 00       $%  ANS010:73D 03 22 FF 00 00 00 00 00
  $%  REQ011:735 03 22 F1 84 00 00 00 00       $%  ANS011:73D 03 22 F1 84 00 00 00 00
  $%  REQ012:735 03 22 F1 EF 00 00 00 00       $%  ANS012:73D 03 22 F1 EF 00 00 00 00

  $%  000:VIN码:                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:物料号:                   $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  002:系统供应商识别符:         $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:ECU生产日期:              $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  004:车厂ECU硬件版本号:        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  005:车厂ECU软件版本号:        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  006:车厂ECU软件号:            $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  007:产品型号:                 $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:Boot软件标识:             $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:升级程序日期:             $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  010:UDS版本号:                $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%X.%X.%X.%X],x1,x2,x3,x4);
  $%  011:应用软件指纹:             $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  012:BOOT应用分区标识:         $%    $%  ANS012.BYTE004  $%  if(x==0) y=@000b; else if(x==1) y=@000c; else if(x==2) y=@0059;else y=@0008;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:735 03 22 05 06 00 00 00 00       $  ANS000:73D 03 22 05 06 00 00 00 00
  $  REQ001:735 03 22 05 07 00 00 00 00       $  ANS001:73D 03 22 05 07 00 00 00 00
  $  REQ002:735 03 22 05 08 00 00 00 00       $  ANS002:73D 03 22 05 08 00 00 00 00
  $  REQ003:735 03 22 05 12 00 00 00 00       $  ANS003:73D 03 22 05 12 00 00 00 00
  $  REQ004:735 03 22 05 13 00 00 00 00       $  ANS004:73D 03 22 05 13 00 00 00 00
  $  REQ005:735 03 22 05 14 00 00 00 00       $  ANS005:73D 03 22 05 14 00 00 00 00
  $  REQ006:735 03 22 05 17 00 00 00 00       $  ANS006:73D 03 22 05 17 00 00 00 00
  $  REQ007:735 03 22 05 19 00 00 00 00       $  ANS007:73D 03 22 05 19 00 00 00 00

  $  000.助力扭矩                                  $    $  Nm        $    $  ANS000.BYTE004  $  y = SPRINTF([%.4f], (x1*256+x2)/4096.0-8);
  $  001.系统操作模式                              $    $            $    $  ANS001.BYTE004  $  if(x1==1) y=@00be;else if(x1==2) y=@00bf;else if(x1==3) y=@00c0;else y=@0005;
  $  002.电池电压                                  $    $  V         $    $  ANS002.BYTE004  $  y = SPRINTF([%.2f], (x1*256+x2)*0.02);
  $  003.ECU温度                                   $    $  deg C     $    $  ANS003.BYTE004  $  y = SPRINTF([%d], (x1*256+x2)-32768);
  $  004.EPS(电子助力转向模块)扭矩传感器电压       $    $  V         $    $  ANS004.BYTE004  $  y = SPRINTF([%.3f], (x1*256+x2)*5/1024.0);
  $  005.MCU(电机控制器)电压                       $    $  V         $    $  ANS005.BYTE004  $  y = SPRINTF([%.3f], (x1*256+x2)*9/1024.0);
  $  006.车速                                      $    $  km/h      $    $  ANS006.BYTE004  $  y = SPRINTF([%d], x1);
  $  007.转向角度                                  $    $  度        $    $  ANS007.BYTE004  $  y = SPRINTF([%.2f], (x1*256+x2)/16.0-2048);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:735 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
