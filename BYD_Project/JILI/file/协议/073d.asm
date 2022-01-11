
    车型ID：073d

    模拟：协议模拟-->073d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7CE

进入命令:

  $~  REQ000:7C6 02 10 01 00 00 00 00 00       $~  ANS000:7CE 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7C6 02 3E 00 00 00 00 00 00       $!  ANS000:7CE 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7C6 03 19 02 09 00 00 00 00       $#  ANS000:7CE 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/b3000000


  $#  01.读故障码库
  $#  REQ000:7C6 02 19 0A 00 00 00 00 00       $#  ANS000:7CE 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/b3000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="0"/>
   </FUNCTION>
  <FUNCTION type="0" num="1">
     <param type="string" value="0"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7C6 04 14 FF FF FF 00 00 00       $$  ANS000:7CE 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7C6 03 22 F1 12 00 00 00 00       $%  ANS000:7CE 03 22 F1 12 00 00 00 00
  $%  REQ001:7C6 03 22 F1 80 00 00 00 00       $%  ANS001:7CE 03 22 F1 80 00 00 00 00
  $%  REQ002:7C6 03 22 F1 87 00 00 00 00       $%  ANS002:7CE 03 22 F1 87 00 00 00 00
  $%  REQ003:7C6 03 22 F1 8A 00 00 00 00       $%  ANS003:7CE 03 22 F1 8A 00 00 00 00
  $%  REQ004:7C6 03 22 F1 8B 00 00 00 00       $%  ANS004:7CE 03 22 F1 8B 00 00 00 00
  $%  REQ005:7C6 03 22 F1 8C 00 00 00 00       $%  ANS005:7CE 03 22 F1 8C 00 00 00 00
  $%  REQ006:7C6 03 22 F1 90 00 00 00 00       $%  ANS006:7CE 03 22 F1 90 00 00 00 00
  $%  REQ007:7C6 03 22 F1 93 00 00 00 00       $%  ANS007:7CE 03 22 F1 93 00 00 00 00
  $%  REQ008:7C6 03 22 F1 95 00 00 00 00       $%  ANS008:7CE 03 22 F1 95 00 00 00 00
  $%  REQ009:7C6 03 22 F1 98 00 00 00 00       $%  ANS009:7CE 03 22 F1 98 00 00 00 00
  $%  REQ010:7C6 03 22 F1 99 00 00 00 00       $%  ANS010:7CE 03 22 F1 99 00 00 00 00
  $%  REQ011:7C6 03 22 F1 9D 00 00 00 00       $%  ANS011:7CE 03 22 F1 9D 00 00 00 00
  $%  REQ012:7C6 03 22 F1 82 00 00 00 00       $%  ANS012:7CE 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:引导程序软件识别号:                          $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  002:零件号:                                      $%    $%  ANS002.BYTE004  $%  0 ASCII
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:                     $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:ECU(电子控制器)刷写日期:                     $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  011:ECU(电子控制器)安装日期:                     $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:标定软件版本号:                              $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7C6 03 22 DF 00 00 00 00 00       $  ANS000:7CE 03 22 DF 00 00 00 00 00
  $  REQ001:7C6 03 22 63 00 00 00 00 00       $  ANS001:7CE 03 22 63 00 00 00 00 00
  $  REQ002:7C6 03 22 63 03 00 00 00 00       $  ANS002:7CE 03 22 63 03 00 00 00 00
  $  REQ003:7C6 03 22 63 08 00 00 00 00       $  ANS003:7CE 03 22 63 08 00 00 00 00
  $  REQ004:7C6 03 22 63 0A 00 00 00 00       $  ANS004:7CE 03 22 63 0A 00 00 00 00
  $  REQ005:7C6 03 22 63 0B 00 00 00 00       $  ANS005:7CE 03 22 63 0B 00 00 00 00
  $  REQ006:7C6 03 22 63 0C 00 00 00 00       $  ANS006:7CE 03 22 63 0C 00 00 00 00
  $  REQ007:7C6 03 22 63 0D 00 00 00 00       $  ANS007:7CE 03 22 63 0D 00 00 00 00
  $  REQ008:7C6 03 22 63 0E 00 00 00 00       $  ANS008:7CE 03 22 63 0E 00 00 00 00
  $  REQ009:7C6 03 22 63 0F 00 00 00 00       $  ANS009:7CE 03 22 63 0F 00 00 00 00
  $  REQ010:7C6 03 22 63 10 00 00 00 00       $  ANS010:7CE 03 22 63 10 00 00 00 00
  $  REQ011:7C6 03 22 63 13 00 00 00 00       $  ANS011:7CE 03 22 63 13 00 00 00 00
  $  REQ012:7C6 03 22 63 33 00 00 00 00       $  ANS012:7CE 03 22 63 33 00 00 00 00

  $  000.ECU(电子控制器)供电电压       $    $  V        $    $  ANS000.BYTE004  $  y=x1*0.1;
  $  001.驾驶员侧温度风门位置          $    $  %        $    $  ANS001.BYTE004  $  y=x1/2.55;
  $  002.蒸发器温度                    $    $  degC     $    $  ANS002.BYTE004  $  y=x1*0.5-40;
  $  003.内外循环模式                  $    $  /        $    $  ANS003.BYTE004  $  switxh(x1&0xFF)0x00:y=@02c0;0x01:y=@02bf;0xFF:y=@0132;default:y=@0209;
  $  004.空调工作状态                  $    $  /        $    $  ANS004.BYTE004  $  switxh(x1&0xFF)0x00:y=@0000;0x01:y=@02bb;0x02:y=@02bc; default:y=@000b;
  $  005.鼓风机档位                    $    $  /        $    $  ANS005.BYTE004  $  switxh(x1&0xFF)0x00:y=@0000;0x01:y=@0118;0x02:y=@0119;0x03:y=@011a;0x04:y=@011b;0x05:y=@011c;0x06:y=@011d;0x07:y=@02bd;0x08:y=@02be; default:y=@000b;
  $  006.吹风模式开关                  $    $  /        $    $  ANS006.BYTE004  $  switxh(x1&0xFF)0x01:y=@03a7;0x02:y=@03a8;0x03:y=@0a1a;0x04:y=@0a1b;0x05:y=@02ba;default:y=@000b;
  $  007.除霜开关                      $    $  /        $    $  ANS007.BYTE004  $  switxh(x1&0xFF)0x00:y=@0000;0x01:y=@0001; default:y=@000b;
  $  008.后除霜开关                    $    $  /        $    $  ANS008.BYTE004  $  switxh(x1&0xFF)0x00:y=@0000;0x01:y=@0001; default:y=@000b;
  $  009.AC(空调)制冷按键              $    $  /        $    $  ANS009.BYTE004  $  switxh(x1&0xFF)0x00:y=@0000;0x01:y=@0001; default:y=@000b;
  $  010.最大制冷按键                  $    $  /        $    $  ANS010.BYTE004  $  switxh(x1&0xFF)0x00:y=@0000;0x01:y=@0001; default:y=@000b;
  $  011.进风风门位置                  $    $  %        $    $  ANS011.BYTE004  $  y=x1*100/255;
  $  012.鼓风机反馈                    $    $  V        $    $  ANS012.BYTE004  $  y=x*0.1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7C6 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:7C6 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
