
    车型ID：e20f

    模拟：协议模拟-->e20f

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A7

进入命令:

  $~  REQ000:727 02 10 01 00 00 00 00 00       $~  ANS000:7A7 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:727 02 3E 00 00 00 00 00 00       $!  ANS000:7A7 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:727 03 19 02 09 00 00 00 00       $#  ANS000:7A7 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/2f000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:727 04 14 FF FF FF 00 00 00       $$  ANS000:7A7 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:727 03 22 F1 87 00 00 00 00       $%  ANS000:7A7 03 22 F1 87 00 00 00 00
  $%  REQ001:727 03 22 F1 8A 00 00 00 00       $%  ANS001:7A7 03 22 F1 8A 00 00 00 00
  $%  REQ002:727 03 22 F1 8B 00 00 00 00       $%  ANS002:7A7 03 22 F1 8B 00 00 00 00
  $%  REQ003:727 03 22 F1 8C 00 00 00 00       $%  ANS003:7A7 03 22 F1 8C 00 00 00 00
  $%  REQ004:727 03 22 F1 90 00 00 00 00       $%  ANS004:7A7 03 22 F1 90 00 00 00 00
  $%  REQ005:727 03 22 F1 93 00 00 00 00       $%  ANS005:7A7 03 22 F1 93 00 00 00 00
  $%  REQ006:727 03 22 F1 95 00 00 00 00       $%  ANS006:7A7 03 22 F1 95 00 00 00 00
  $%  REQ007:727 03 22 F1 97 00 00 00 00       $%  ANS007:7A7 03 22 F1 97 00 00 00 00

  $%  000:零件号:                     $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  001:供应商名称:                 $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:ECU制造日期:                $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d%02X%s%02X%s%02X%s],X1,X2,@0070,X3,@0071,X4,@0072);
  $%  003:ECU流水编号:                $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  004:车辆识别编号(VIN码):        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  005:硬件版本号:                 $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%s%02X%s%02X%s%02X%02X%02X%02X],@0073,X1,@0074,X2,@0075,X6,X5,X4,X3);
  $%  006:软件版本号:                 $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%s%02X%s%02X%s%02X%02X%02X%02X],@0073,X1,@0074,X2,@0075,X6,X5,X4,X3);
  $%  007:ECU名称:                    $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:727 03 22 05 07 00 00 00 00       $  ANS000:7A7 03 22 05 07 00 00 00 00
  $  REQ001:727 03 22 05 08 00 00 00 00       $  ANS001:7A7 03 22 05 08 00 00 00 00
  $  REQ002:727 03 22 05 12 00 00 00 00       $  ANS002:7A7 03 22 05 12 00 00 00 00
  $  REQ003:727 03 22 05 13 00 00 00 00       $  ANS003:7A7 03 22 05 13 00 00 00 00
  $  REQ004:727 03 22 05 14 00 00 00 00       $  ANS004:7A7 03 22 05 14 00 00 00 00
  $  REQ005:727 03 22 05 17 00 00 00 00       $  ANS005:7A7 03 22 05 17 00 00 00 00
  $  REQ006:727 03 22 05 19 00 00 00 00       $  ANS006:7A7 03 22 05 19 00 00 00 00
  $  REQ007:727 03 22 05 20 00 00 00 00       $  ANS007:7A7 03 22 05 20 00 00 00 00

  $  000.系统运行模式             $    $                $    $  ANS000.BYTE004  $  switxh(x1&0x07) 0x01: y=@000f;0x02: y=@0010;0x03: y=@0011;0x04: y=@0012;default: y=@000c;
  $  001.电源电压                 $    $  V             $    $  ANS001.BYTE004  $  y=x1*256/50+x2/50;
  $  002.ECU温度                  $    $  degree C      $    $  ANS002.BYTE004  $  y=x1*256+x2-40;
  $  003.EPS 扭矩传感器电压       $    $  V             $    $  ANS003.BYTE004  $  y=x1*256*5/1024+x2*5/1024;
  $  004.MCU电压                  $    $  V             $    $  ANS004.BYTE004  $  y=x1*256*9/1024+x2*9/1024;
  $  005.车速                     $    $  km/h          $    $  ANS005.BYTE004  $  y=x1;
  $  006.转向角度                 $    $  degree        $    $  ANS006.BYTE004  $  y=x1*256/16+x2/16-2048;
  $  007.助力电流                 $    $  A             $    $  ANS007.BYTE004  $  y=x1*256/128+x2/128;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:727 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
