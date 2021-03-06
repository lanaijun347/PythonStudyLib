
    车型ID：0628

    模拟：协议模拟-->0628

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A8

进入命令:

  $~  REQ000:7A0 02 10 01 00 00 00 00 00       $~  ANS000:7A8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A0 02 3E 00 00 00 00 00 00       $!  ANS000:7A8 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7A0 03 19 02 09 00 00 00 00       $#  ANS000:7A8 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/04000000


  $#  01.读故障码库
  $#  REQ000:7A0 02 19 0A 00 00 00 00 00       $#  ANS000:7A8 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/04000000


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

  $$  REQ000:7A0 04 14 FF FF FF 00 00 00       $$  ANS000:7A8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A0 03 22 F1 12 00 00 00 00       $%  ANS000:7A8 03 22 F1 12 00 00 00 00
  $%  REQ001:7A0 03 22 F1 87 00 00 00 00       $%  ANS001:7A8 03 22 F1 87 00 00 00 00
  $%  REQ002:7A0 03 22 F1 8A 00 00 00 00       $%  ANS002:7A8 03 22 F1 8A 00 00 00 00
  $%  REQ003:7A0 03 22 F1 8B 00 00 00 00       $%  ANS003:7A8 03 22 F1 8B 00 00 00 00
  $%  REQ004:7A0 03 22 F1 8C 00 00 00 00       $%  ANS004:7A8 03 22 F1 8C 00 00 00 00
  $%  REQ005:7A0 03 22 F1 90 00 00 00 00       $%  ANS005:7A8 03 22 F1 90 00 00 00 00
  $%  REQ006:7A0 03 22 F1 92 00 00 00 00       $%  ANS006:7A8 03 22 F1 92 00 00 00 00
  $%  REQ007:7A0 03 22 F1 93 00 00 00 00       $%  ANS007:7A8 03 22 F1 93 00 00 00 00
  $%  REQ008:7A0 03 22 F1 94 00 00 00 00       $%  ANS008:7A8 03 22 F1 94 00 00 00 00
  $%  REQ009:7A0 03 22 F1 95 00 00 00 00       $%  ANS009:7A8 03 22 F1 95 00 00 00 00
  $%  REQ010:7A0 03 22 F1 9D 00 00 00 00       $%  ANS010:7A8 03 22 F1 9D 00 00 00 00
  $%  REQ011:7A0 03 22 F1 B2 00 00 00 00       $%  ANS011:7A8 03 22 F1 B2 00 00 00 00
  $%  REQ012:7A0 03 22 F1 B4 00 00 00 00       $%  ANS012:7A8 03 22 F1 B4 00 00 00 00
  $%  REQ013:7A0 03 22 F1 B5 00 00 00 00       $%  ANS013:7A8 03 22 F1 B5 00 00 00 00
  $%  REQ014:7A0 03 22 F1 B7 00 00 00 00       $%  ANS014:7A8 03 22 F1 B7 00 00 00 00

  $%  000:车辆名称:                        $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                          $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:供应商代码:                      $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:ECU(电子控制器)生产日期:         $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  004:ECU(电子控制器)序列号:           $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28);
  $%  005:车辆识别号（VIN码）:             $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  006:ECU(电子控制器)硬件号:           $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:ECU(电子控制器)硬件版本号:       $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件号:           $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)软件版本号:       $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:ECU(电子控制器)安装日期:         $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  011:UNIT IMEI:                       $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  012:汽车动力类型:                    $%    $%  ANS012.BYTE004  $%  switxh(x4) 0x20:y=@0728;0x10:y=@0729;0x08:y=@072a;0x04:y=@072b;0x02:y=@072c;0x01:y=@072d;default:y=@0009;
  $%  013:汽车种类:                        $%    $%  ANS013.BYTE004  $%  switxh(x4) 0x01:y=@072e;0x02:y=@072f;0x03:y=@0730;0x04:y=@0731;0x05:y=@0732;0x06:y=@0733;0x07:y=@0734;0x08:y=@0735;0x09:y=@0736;0x0A:y=@0737;0x0B:y=@0738;0x0C:y=@0739;0x0D:y=@073a;default:y=@0009;
  $%  014:集成电路卡标识符:                $%    $%  ANS014.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
