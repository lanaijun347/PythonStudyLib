
    车型ID：07f9

    模拟：协议模拟-->07f9

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7EC

进入命令:

  $~  REQ000:7E4 02 10 01 00 00 00 00 00       $~  ANS000:7EC 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E4 02 3E 00 00 00 00 00 00       $!  ANS000:7EC 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7E4 03 19 02 09 00 00 00 00       $#  ANS000:7EC 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/4f000000


  $#  01.读故障码库
  $#  REQ000:7E4 02 19 0A 00 00 00 00 00       $#  ANS000:7EC 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/4f000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E4 04 14 FF FF FF 00 00 00       $$  ANS000:7EC 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E4 03 22 F1 12 00 00 00 00       $%  ANS000:7EC 03 22 F1 12 00 00 00 00
  $%  REQ001:7E4 03 22 F1 87 00 00 00 00       $%  ANS001:7EC 03 22 F1 87 00 00 00 00
  $%  REQ002:7E4 03 22 F1 89 00 00 00 00       $%  ANS002:7EC 03 22 F1 89 00 00 00 00
  $%  REQ003:7E4 03 22 F1 8A 00 00 00 00       $%  ANS003:7EC 03 22 F1 8A 00 00 00 00
  $%  REQ004:7E4 03 22 F1 8B 00 00 00 00       $%  ANS004:7EC 03 22 F1 8B 00 00 00 00
  $%  REQ005:7E4 03 22 F1 8C 00 00 00 00       $%  ANS005:7EC 03 22 F1 8C 00 00 00 00
  $%  REQ006:7E4 03 22 F1 90 00 00 00 00       $%  ANS006:7EC 03 22 F1 90 00 00 00 00
  $%  REQ007:7E4 03 22 F1 93 00 00 00 00       $%  ANS007:7EC 03 22 F1 93 00 00 00 00
  $%  REQ008:7E4 03 22 F1 95 00 00 00 00       $%  ANS008:7EC 03 22 F1 95 00 00 00 00
  $%  REQ009:7E4 03 22 F1 9D 00 00 00 00       $%  ANS009:7EC 03 22 F1 9D 00 00 00 00

  $%  000:车辆名称:                        $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                          $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:Geely软件版本号:                 $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3);
  $%  003:供应商代码:                      $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:         $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:           $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  006:车辆识别号（VIN码）:             $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:       $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:       $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)安装日期:         $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.读数据流
  $  00.读数据流
  $  REQ000:7E4 03 22 DF 00 00 00 00 00       $  ANS000:7EC 03 22 DF 00 00 00 00 00
  $  REQ001:7E4 03 22 DF 01 00 00 00 00       $  ANS001:7EC 03 22 DF 01 00 00 00 00
  $  REQ002:7E4 03 22 30 00 00 00 00 00       $  ANS002:7EC 03 22 30 00 00 00 00 00
  $  REQ003:7E4 03 22 30 01 00 00 00 00       $  ANS003:7EC 03 22 30 01 00 00 00 00
  $  REQ004:7E4 03 22 30 02 00 00 00 00       $  ANS004:7EC 03 22 30 02 00 00 00 00
  $  REQ005:7E4 03 22 30 03 00 00 00 00       $  ANS005:7EC 03 22 30 03 00 00 00 00
  $  REQ006:7E4 03 22 30 04 00 00 00 00       $  ANS006:7EC 03 22 30 04 00 00 00 00
  $  REQ007:7E4 03 22 C1 05 00 00 00 00       $  ANS007:7EC 03 22 C1 05 00 00 00 00
  $  REQ008:7E4 03 22 F1 09 00 00 00 00       $  ANS008:7EC 03 22 F1 09 00 00 00 00

  $  000.ECU(电子控制器)供电电压                  $    $  V        $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.车速                                     $    $  km/h     $    $  ANS001.BYTE004  $  y=INT((x1*256+x2)*0.05625);
  $  002.加注状态                                 $    $  /        $    $  ANS002.BYTE004  $  if(x==0x00) y=@0015;else if(x==0x01) y=@0016;else if(x==0x02) y=@0017;else if(x==0xff) y=@0014;else y=@0009;
  $  003.下线检测状态                             $    $  /        $    $  ANS003.BYTE004  $  if(x==0x00) y=@0011;else if(x==0x01) y=@0012;else if(x==0x02) y=@0013;else if(x==0xff) y=@0014;else y=@0009;
  $  004.左前轮速                                 $    $  km/h     $    $  ANS004.BYTE004  $  y=(x1*0x100+x2)*0.05625;
  $  005.右前轮速                                 $    $  km/h     $    $  ANS004.BYTE004  $  y=(x3*0x100+x4)*0.05625;
  $  006.左后轮速                                 $    $  km/h     $    $  ANS004.BYTE004  $  y=(x5*0x100+x6)*0.05625;
  $  007.右后轮速                                 $    $  km/h     $    $  ANS004.BYTE004  $  y=(x7*0x100+x8)*0.05625;
  $  008.阀继电器状态                             $    $  /        $    $  ANS005.BYTE004  $  if(x1==0x00) y=@0000;else y=@0001;
  $  009.泵马达状态                               $    $  /        $    $  ANS005.BYTE004  $  if(x2==0x00) y=@0000;else y=@0001;
  $  010.左前进气阀状态                           $    $  /        $    $  ANS005.BYTE004  $  if(((x3>>0)&1)) y=@0001;else y=@0000;
  $  011.左前排气阀状态                           $    $  /        $    $  ANS005.BYTE004  $  if(((x3>>1)&1)) y=@0001;else y=@0000;
  $  012.右前进气阀状态                           $    $  /        $    $  ANS005.BYTE004  $  if(((x3>>2)&1)) y=@0001;else y=@0000;
  $  013.右前排气阀状态                           $    $  /        $    $  ANS005.BYTE004  $  if(((x3>>3)&1)) y=@0001;else y=@0000;
  $  014.左后进气阀状态                           $    $  /        $    $  ANS005.BYTE004  $  if(((x3>>4)&1)) y=@0001;else y=@0000;
  $  015.左后排气阀状态                           $    $  /        $    $  ANS005.BYTE004  $  if(((x3>>5)&1)) y=@0001;else y=@0000;
  $  016.右后进气阀状态                           $    $  /        $    $  ANS005.BYTE004  $  if(((x3>>6)&1)) y=@0001;else y=@0000;
  $  017.右后排气阀状态                           $    $  /        $    $  ANS005.BYTE004  $  if(((x3>>7)&1)) y=@0001;else y=@0000;
  $  018.回路控制阀1状态(仅ESP)                   $    $  /        $    $  ANS005.BYTE004  $  if(((x4>>0)&1)) y=@0001;else y=@0000;
  $  019.回路控制阀2状态(仅ESP)                   $    $  /        $    $  ANS005.BYTE004  $  if(((x4>>1)&1)) y=@0001;else y=@0000;
  $  020.高压开关阀1状态(仅ESP)                   $    $  /        $    $  ANS005.BYTE004  $  if(((x4>>2)&1)) y=@0001;else y=@0000;
  $  021.高压开关阀2状态(仅ESP)                   $    $  /        $    $  ANS005.BYTE004  $  if(((x4>>3)&1)) y=@0001;else y=@0000;
  $  022.刹车灯开关                               $    $  /        $    $  ANS006.BYTE004  $  if(x==0x00) y=@0000;else y=@0001;
  $  023.TPMS(胎压监测系统)第一阶段学习状态       $    $  %        $    $  ANS007.BYTE004  $  y=x;
  $  024.TPMS(胎压监测系统)全阶段学习状态         $    $  %        $    $  ANS007.BYTE005  $  y=x;
  $  025.TPMS(胎压监测系统)软件版本信息           $    $  /        $    $  ANS008.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);

  $)  01.TPMS(胎压监测系统)信息
  $  01.TPMS(胎压监测系统)信息
  $  REQ000:7E4 03 22 C1 04 00 00 00 00       $  ANS000:7EC 03 22 C1 04 00 00 00 00

  $  000.TPMS(胎压监测系统)状态       $    $  /      $    $  ANS000.BYTE008  $  switxh(x) 0x01:y=@01b0;0x02:y=@035d;0x03:y=@035e;0x04:y=@035f;0x07:y=@0360;default:y=@0220;
  $  001.报警标志                     $    $  %      $    $  ANS000.BYTE009  $  y=x;
  $  002.重置按键次数                 $    $  /      $    $  ANS000.BYTE010  $  y=x1*0x100+x2;
  $  003.最后第1次报警里程数          $    $  Km     $    $  ANS000.BYTE012  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  004.最后第2次报警里程数          $    $  Km     $    $  ANS000.BYTE016  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  005.最后第3次报警里程数          $    $  Km     $    $  ANS000.BYTE020  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  006.最后第4次报警里程数          $    $  Km     $    $  ANS000.BYTE024  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  007.最后第5次报警里程数          $    $  Km     $    $  ANS000.BYTE028  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  008.最后第6次报警里程数          $    $  Km     $    $  ANS000.BYTE032  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  009.最后第7次报警里程数          $    $  Km     $    $  ANS000.BYTE036  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  010.最后第8次报警里程数          $    $  Km     $    $  ANS000.BYTE040  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  011.最后第9次报警里程数          $    $  Km     $    $  ANS000.BYTE044  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  012.最后第10次报警里程数         $    $  Km     $    $  ANS000.BYTE048  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  013.最后第1次自学习里程数        $    $  Km     $    $  ANS000.BYTE052  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  014.最后第2次自学习里程数        $    $  Km     $    $  ANS000.BYTE056  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  015.最后第3次自学习里程数        $    $  Km     $    $  ANS000.BYTE060  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  016.最后第4次自学习里程数        $    $  Km     $    $  ANS000.BYTE064  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  017.最后第5次自学习里程数        $    $  Km     $    $  ANS000.BYTE068  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  018.最后第6次自学习里程数        $    $  Km     $    $  ANS000.BYTE072  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  019.最后第7次自学习里程数        $    $  Km     $    $  ANS000.BYTE076  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  020.最后第8次自学习里程数        $    $  Km     $    $  ANS000.BYTE080  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  021.最后第9次自学习里程数        $    $  Km     $    $  ANS000.BYTE084  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  022.最后第10次自学习里程数       $    $  Km     $    $  ANS000.BYTE088  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E4 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
