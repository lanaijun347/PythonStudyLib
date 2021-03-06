
    车型ID：9d34

    模拟：协议模拟-->9d34

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~611

进入命令:

  $~  REQ000:691 02 10 01 00 00 00 00 00       $~  ANS000:611 02 10 01 00 00 00 00 00
  $~~ REQ001:691 02 27 01 00 00 00 00 00       $~~ ANS001:611 02 27 01 00 00 00 00 00
  $~~ REQ002:691 04 27 02 00 00 00 00 00       $~~ ANS002:611 04 27 02 00 00 00 00 00

空闲命令:

  $!  REQ000:691 02 3E 00 00 00 00 00 00       $!  ANS000:611 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:691 03 19 02 09 00 00 00 00       $#  ANS000:611 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/1c000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:691 04 14 FF FF FF 00 00 00       $$  ANS000:611 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:691 03 22 02 00 00 00 00 00       $%  ANS000:611 03 22 02 00 00 00 00 00
  $%  REQ001:691 03 22 02 01 00 00 00 00       $%  ANS001:611 03 22 02 01 00 00 00 00
  $%  REQ002:691 03 22 F1 80 00 00 00 00       $%  ANS002:611 03 22 F1 80 00 00 00 00
  $%  REQ003:691 03 22 F1 87 00 00 00 00       $%  ANS003:611 03 22 F1 87 00 00 00 00
  $%  REQ004:691 03 22 F1 8A 00 00 00 00       $%  ANS004:611 03 22 F1 8A 00 00 00 00
  $%  REQ005:691 03 22 F1 8B 00 00 00 00       $%  ANS005:611 03 22 F1 8B 00 00 00 00
  $%  REQ006:691 03 22 F1 8C 00 00 00 00       $%  ANS006:611 03 22 F1 8C 00 00 00 00
  $%  REQ007:691 03 22 F1 90 00 00 00 00       $%  ANS007:611 03 22 F1 90 00 00 00 00
  $%  REQ008:691 03 22 F1 93 00 00 00 00       $%  ANS008:611 03 22 F1 93 00 00 00 00
  $%  REQ009:691 03 22 F1 95 00 00 00 00       $%  ANS009:611 03 22 F1 95 00 00 00 00
  $%  REQ010:691 03 22 F1 97 00 00 00 00       $%  ANS010:611 03 22 F1 97 00 00 00 00
  $%  REQ011:691 03 22 F1 99 00 00 00 00       $%  ANS011:611 03 22 F1 99 00 00 00 00

  $%  000:刷写次数:                   $%    $%  ANS000.BYTE004  $%  HEX(x1);
  $%  001:尝试刷写次数:               $%    $%  ANS001.BYTE004  $%  HEX(x1);
  $%  002:Bootloader版本号:           $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:供应商BOM号:                $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  004:供应商识别号:               $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:ECU制造日期[年月日]:        $%    $%  ANS005.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  006:ECU串号:                    $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  007:VIN码:                      $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  008:供应商ECU硬件版本号:        $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:供应商ECU软件版本号:        $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  010:ECU控制器名称:              $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:刷写日期[年月日]:           $%    $%  ANS011.BYTE004  $%  HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:691 03 22 FD 08 00 00 00 00       $  ANS000:611 03 22 FD 08 00 00 00 00
  $  REQ001:691 03 22 FD 09 00 00 00 00       $  ANS001:611 03 22 FD 09 00 00 00 00
  $  REQ002:691 04 31 03 F0 00 00 00 00       $  ANS002:611 04 31 03 F0 00 00 00 00
  $  REQ003:691 04 31 03 F0 01 00 00 00       $  ANS003:611 04 31 03 F0 01 00 00 00

  $  000.读取车身角度             $    $  °     $    $  ANS000.BYTE004  $  if(x<0x80) y=x;else y=128-x;
  $  001.读取离合传感器信号       $    $  V      $    $  ANS001.BYTE004  $  y=x*0.196/10.000;
  $  002.卡钳状态                 $    $         $    $  ANS002.BYTE005  $  if(x==0x00) y=@0011;else if(x==0x01) y=@0012;else if(x==0x02) y=@0013;else if(x==0x03) y=@0014;else if(x==0x04) y=@0015;else y=@0016;
  $  003.标定状态                 $    $         $    $  ANS003.BYTE005  $  if(((x>>0)&1)) y=@0017;else y=@0018;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:691 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
