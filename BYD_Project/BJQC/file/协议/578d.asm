
    车型ID：578d

    模拟：协议模拟-->578d

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~7A3

进入命令:

  $~  REQ000:723 02 10 03 00 00 00 00 00       $~  ANS000:7A3 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:723 02 3E 00 00 00 00 00 00       $!  ANS000:7A3 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读取当前故障码
  $#  REQ000:723 03 19 02 01 00 00 00 00       $#  ANS000:7A3 03 19 02 01 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/45000000


  $#  01.读取历史故障码
  $#  REQ000:723 03 19 02 08 00 00 00 00       $#  ANS000:7A3 03 19 02 08 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/45000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:723 04 14 FF FF FF 00 00 00       $$  ANS000:7A3 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:723 03 22 F1 90 00 00 00 00       $%  ANS000:7A3 03 22 F1 90 00 00 00 00
  $%  REQ001:723 03 22 F1 87 00 00 00 00       $%  ANS001:7A3 03 22 F1 87 00 00 00 00
  $%  REQ002:723 03 22 F1 97 00 00 00 00       $%  ANS002:7A3 03 22 F1 97 00 00 00 00
  $%  REQ003:723 03 22 F1 8A 00 00 00 00       $%  ANS003:7A3 03 22 F1 8A 00 00 00 00
  $%  REQ004:723 03 22 F1 93 00 00 00 00       $%  ANS004:7A3 03 22 F1 93 00 00 00 00
  $%  REQ005:723 03 22 F1 95 00 00 00 00       $%  ANS005:7A3 03 22 F1 95 00 00 00 00
  $%  REQ006:723 03 22 F1 8C 00 00 00 00       $%  ANS006:7A3 03 22 F1 8C 00 00 00 00
  $%  REQ007:723 03 22 F1 00 00 00 00 00       $%  ANS007:7A3 03 22 F1 00 00 00 00 00
  $%  REQ008:723 03 22 F1 99 00 00 00 00       $%  ANS008:7A3 03 22 F1 99 00 00 00 00

  $%  000:VIN:                   $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:零件号:                $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  002:系统名称:              $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:系统供应商标识:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:ECU硬件版本号:         $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  005:ECU软件版本号:         $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  006:ECU序列号:             $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:诊断版本:              $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  008:编程日期:              $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:723 03 22 56 1F 00 00 00 00       $  ANS000:7A3 03 22 56 1F 00 00 00 00
  $  REQ001:723 03 22 56 A6 00 00 00 00       $  ANS001:7A3 03 22 56 A6 00 00 00 00
  $  REQ002:723 03 22 56 A7 00 00 00 00       $  ANS002:7A3 03 22 56 A7 00 00 00 00
  $  REQ003:723 03 22 56 A8 00 00 00 00       $  ANS003:7A3 03 22 56 A8 00 00 00 00
  $  REQ004:723 03 22 56 BB 00 00 00 00       $  ANS004:7A3 03 22 56 BB 00 00 00 00
  $  REQ005:723 03 22 56 10 00 00 00 00       $  ANS005:7A3 03 22 56 10 00 00 00 00

  $  000.蒸发箱温度         $    $  ℃     $    $  ANS000.BYTE004  $  y=(x1*256+x2)/10-40;
  $  001.送风模式           $    $         $    $  ANS001.BYTE004  $  switxh(x1*256+x2)0x01:y=@027a;0x02:y=@027b;0x03:y=@027c;0x04:y=@0a6a;0x05:y=@0025;default:y=@0011;
  $  002.内外循环           $    $         $    $  ANS002.BYTE004  $  switxh(x1*256+x2)0x00:y=@0263;0x01:y=@0264;
  $  003.温度控制           $    $  ℃     $    $  ANS003.BYTE004  $  y=(x1*256+x2)+16;
  $  004.鼓风机状态值       $    $         $    $  ANS004.BYTE004  $  switxh(x1)0x00:y=@000b;0x01:y=@0281;0x02:y=@0282;0x03:y=@0283;0x04:y=@0284;0x05:y=@0285;0x06:y=@0286;0x07:y=@0287;0x08:y=@0288;default:y=@0011;
  $  005.数字输出3          $    $         $    $  ANS005.BYTE004  $  switxh((x1>>3)&0x01)0x00:y=@0e1a;0x01:y=@0e1b;
  $  006.数字输出4          $    $         $    $  ANS005.BYTE004  $  switxh((x1>>4)&0x01)0x00:y=@0a6d;0x01:y=@0a6e;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:723 30 08 14 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
