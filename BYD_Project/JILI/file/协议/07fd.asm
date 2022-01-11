
    车型ID：07fd

    模拟：协议模拟-->07fd

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

  $*$*DTC/81000000


  $#  01.读故障码库
  $#  REQ000:7C6 02 19 0A 00 00 00 00 00       $#  ANS000:7CE 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/81000000


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
  $%  REQ001:7C6 03 22 F1 87 00 00 00 00       $%  ANS001:7CE 03 22 F1 87 00 00 00 00
  $%  REQ002:7C6 03 22 F1 8A 00 00 00 00       $%  ANS002:7CE 03 22 F1 8A 00 00 00 00
  $%  REQ003:7C6 03 22 F1 8B 00 00 00 00       $%  ANS003:7CE 03 22 F1 8B 00 00 00 00
  $%  REQ004:7C6 03 22 F1 8C 00 00 00 00       $%  ANS004:7CE 03 22 F1 8C 00 00 00 00
  $%  REQ005:7C6 03 22 F1 90 00 00 00 00       $%  ANS005:7CE 03 22 F1 90 00 00 00 00
  $%  REQ006:7C6 03 22 F1 93 00 00 00 00       $%  ANS006:7CE 03 22 F1 93 00 00 00 00
  $%  REQ007:7C6 03 22 F1 95 00 00 00 00       $%  ANS007:7CE 03 22 F1 95 00 00 00 00
  $%  REQ008:7C6 03 22 F1 9D 00 00 00 00       $%  ANS008:7CE 03 22 F1 9D 00 00 00 00

  $%  000:车辆名称:                        $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                          $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:供应商代码:                      $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:ECU(电子控制器)生产日期:         $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  004:ECU(电子控制器)序列号:           $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  005:车辆识别号（VIN码）:             $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  006:ECU(电子控制器)硬件版本号:       $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:ECU(电子控制器)软件版本号:       $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)安装日期:         $%    $%  ANS008.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7C6 03 22 DF 00 00 00 00 00       $  ANS000:7CE 03 22 DF 00 00 00 00 00
  $  REQ001:7C6 03 22 63 00 00 00 00 00       $  ANS001:7CE 03 22 63 00 00 00 00 00
  $  REQ002:7C6 03 22 63 01 00 00 00 00       $  ANS002:7CE 03 22 63 01 00 00 00 00
  $  REQ003:7C6 03 22 63 03 00 00 00 00       $  ANS003:7CE 03 22 63 03 00 00 00 00
  $  REQ004:7C6 03 22 63 04 00 00 00 00       $  ANS004:7CE 03 22 63 04 00 00 00 00
  $  REQ005:7C6 03 22 63 05 00 00 00 00       $  ANS005:7CE 03 22 63 05 00 00 00 00
  $  REQ006:7C6 03 22 63 06 00 00 00 00       $  ANS006:7CE 03 22 63 06 00 00 00 00
  $  REQ007:7C6 03 22 63 12 00 00 00 00       $  ANS007:7CE 03 22 63 12 00 00 00 00
  $  REQ008:7C6 03 22 63 08 00 00 00 00       $  ANS008:7CE 03 22 63 08 00 00 00 00
  $  REQ009:7C6 03 22 63 09 00 00 00 00       $  ANS009:7CE 03 22 63 09 00 00 00 00
  $  REQ010:7C6 03 22 63 10 00 00 00 00       $  ANS010:7CE 03 22 63 10 00 00 00 00

  $  000.ECU(电子控制器)供电电压       $    $  V     $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.冷暖风门位置                  $    $  /     $    $  ANS001.BYTE004  $  y=SPRINTF([%d%%],(x1*0x100+x2)*100/1024);
  $  002.模式风门位置                  $    $  /     $    $  ANS002.BYTE004  $  y=SPRINTF([%d%%],(x1*0x100+x2)*100/1024);
  $  003.内外循环模式                  $    $  /     $    $  ANS003.BYTE004  $  if((x&0x01))y=@02bf;else y=@02c0;
  $  004.空调工作状态                  $    $  /     $    $  ANS004.BYTE004  $  if((x&0x01))y=@0170;else y=@010e;
  $  005.鼓风机档位                    $    $  /     $    $  ANS005.BYTE004  $  switxh(x)0x00:y=@010e;0x01:y=@0118;0x02:y=@0119;0x03:y=@011a;0x04:y=@011b;0x05:y=@011c;0x06:y=@011d;0x07:y=@02bd;0x08:y=@02be;
  $  006.模式风门位置/档位             $    $  /     $    $  ANS006.BYTE004  $  switxh(x)0x01:y=@02b6;0x02:y=@02b7;0x03:y=@0d47;0x04:y=@0d48;0x05:y=@0d49;
  $  007.除霜开关                      $    $  /     $    $  ANS007.BYTE004  $  if((x&0x01))y=@0170;else y=@010e;
  $  008.后除霜开关                    $    $  /     $    $  ANS008.BYTE004  $  if((x&0x01))y=@0170;else y=@010e;
  $  009.A/C制冷按键按键               $    $  /     $    $  ANS009.BYTE004  $  if((x&0x01))y=@0170;else y=@010e;
  $  010.A/C MAX 按键                  $    $  /     $    $  ANS010.BYTE004  $  if((x&0x01))y=@0170;else y=@010e;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7C6 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
