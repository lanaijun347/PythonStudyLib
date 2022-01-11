
    车型ID：000f

    模拟：协议模拟-->000f

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

  $*$*DTC/0d000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:735 04 14 FF FF FF 00 00 00       $$  ANS000:73D 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:735 03 22 F1 90 00 00 00 00       $%  ANS000:73D 03 22 F1 90 00 00 00 00
  $%  REQ001:735 03 22 F1 87 00 00 00 00       $%  ANS001:73D 03 22 F1 87 00 00 00 00
  $%  REQ002:735 03 22 F1 8B 00 00 00 00       $%  ANS002:73D 03 22 F1 8B 00 00 00 00
  $%  REQ003:735 03 22 F1 93 00 00 00 00       $%  ANS003:73D 03 22 F1 93 00 00 00 00
  $%  REQ004:735 03 22 F1 95 00 00 00 00       $%  ANS004:73D 03 22 F1 95 00 00 00 00

  $%  000:VIN码:                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:物料号:                   $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  002:ECU生产日期:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  003:车厂ECU硬件版本号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  004:车厂ECU软件版本号:        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:735 03 22 05 06 00 00 00 00       $  ANS000:73D 03 22 05 06 00 00 00 00
  $  REQ001:735 03 22 05 07 00 00 00 00       $  ANS001:73D 03 22 05 07 00 00 00 00
  $  REQ002:735 03 22 05 08 00 00 00 00       $  ANS002:73D 03 22 05 08 00 00 00 00
  $  REQ003:735 03 22 05 10 00 00 00 00       $  ANS003:73D 03 22 05 10 00 00 00 00
  $  REQ004:735 03 22 05 11 00 00 00 00       $  ANS004:73D 03 22 05 11 00 00 00 00
  $  REQ005:735 03 22 05 12 00 00 00 00       $  ANS005:73D 03 22 05 12 00 00 00 00
  $  REQ006:735 03 22 05 13 00 00 00 00       $  ANS006:73D 03 22 05 13 00 00 00 00
  $  REQ007:735 03 22 05 14 00 00 00 00       $  ANS007:73D 03 22 05 14 00 00 00 00
  $  REQ008:735 03 22 05 17 00 00 00 00       $  ANS008:73D 03 22 05 17 00 00 00 00
  $  REQ009:735 03 22 05 19 00 00 00 00       $  ANS009:73D 03 22 05 19 00 00 00 00

  $  000.助力扭矩                                                 $    $  Nm       $    $  ANS000.BYTE004  $  y = SPRINTF([%d], (x1*256+x2)/4096-8);
  $  001.系统操作模式                                             $    $           $    $  ANS001.BYTE004  $  if(x1==1) y=@00be;else if(x1==2) y=@00bf;else if(x1==3) y=@00c0;else if(x1==4) y=@00c1;else y=@0008;
  $  002.蓄电池电压                                               $    $  V        $    $  ANS002.BYTE004  $  y = SPRINTF([%u], (x1*256+x2)/50);
  $  003.EPS(电子助力转向模块)扭矩传感器_TS1 Period TS1周期       $    $  us       $    $  ANS003.BYTE004  $  y = SPRINTF([%u], (x1*256+x2)/10);
  $  004.EPS(电子助力转向模块)扭矩传感器_TS2 Period TS2周期       $    $  us       $    $  ANS003.BYTE006  $  y = SPRINTF([%u], (x1*256+x2)/10);
  $  005.EPS(电子助力转向模块)扭矩传感器_TS1 Duty TS1占空比       $    $  %        $    $  ANS003.BYTE008  $  y = SPRINTF([%u], (x1*256+x2)*100/4096);
  $  006.EPS(电子助力转向模块)扭矩传感器_TS2 Duty TS2占空比       $    $  %        $    $  ANS003.BYTE010  $  y = SPRINTF([%u], (x1*256+x2)*100/4096);
  $  007.EPS(电子助力转向模块)角度传感器_AS Period AS周期         $    $  us       $    $  ANS004.BYTE004  $  y = SPRINTF([%u], (x1*256+x2)/10);
  $  008.EPS(电子助力转向模块)角度传感器_RS Period RS周期         $    $  us       $    $  ANS004.BYTE006  $  y = SPRINTF([%u], (x1*256+x2)/10);
  $  009.EPS(电子助力转向模块)角度传感器_AS Duty AS占空比         $    $  %        $    $  ANS004.BYTE008  $  y = SPRINTF([%u], (x1*256+x2)*100/4096);
  $  010.EPS(电子助力转向模块)角度传感器_RS Duty RS占空比         $    $  %        $    $  ANS004.BYTE010  $  y = SPRINTF([%u], (x1*256+x2)*100/4096);
  $  011.ECU温度                                                  $    $  ℃       $    $  ANS005.BYTE004  $  y = SPRINTF([%d], (x1*256+x2)-32768);
  $  012.EPS(电子助力转向模块)扭矩传感器电压                      $    $  V        $    $  ANS006.BYTE004  $  y = SPRINTF([%u], (x1*256+x2)*5/1024);
  $  013.MCU(电机控制器)电压                                      $    $  V        $    $  ANS007.BYTE004  $  y = SPRINTF([%u], (x1*256+x2)*9/1024);
  $  014.车速                                                     $    $  km/h     $    $  ANS008.BYTE004  $  y = SPRINTF([%u], x1);
  $  015.转向角度                                                 $    $  °       $    $  ANS009.BYTE004  $  y = SPRINTF([%.1f], (x1*256+x2)/16.0-2048);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:735 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
