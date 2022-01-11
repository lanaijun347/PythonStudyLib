
    车型ID：077b

    模拟：协议模拟-->077b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7C9

进入命令:

  $~  REQ000:7C1 02 10 01 00 00 00 00 00       $~  ANS000:7C9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7C1 02 3E 00 00 00 00 00 00       $!  ANS000:7C9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7C1 03 19 02 09 00 00 00 00       $#  ANS000:7C9 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/68000000


  $#  01.读故障码库
  $#  REQ000:7C1 02 19 0A 00 00 00 00 00       $#  ANS000:7C9 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/68000000


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

  $$  REQ000:7C1 04 14 FF FF FF 00 00 00       $$  ANS000:7C9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7C1 03 22 F1 12 00 00 00 00       $%  ANS000:7C9 03 22 F1 12 00 00 00 00
  $%  REQ001:7C1 03 22 F1 87 00 00 00 00       $%  ANS001:7C9 03 22 F1 87 00 00 00 00
  $%  REQ002:7C1 03 22 F1 89 00 00 00 00       $%  ANS002:7C9 03 22 F1 89 00 00 00 00
  $%  REQ003:7C1 03 22 F1 8A 00 00 00 00       $%  ANS003:7C9 03 22 F1 8A 00 00 00 00
  $%  REQ004:7C1 03 22 F1 8B 00 00 00 00       $%  ANS004:7C9 03 22 F1 8B 00 00 00 00
  $%  REQ005:7C1 03 22 F1 8C 00 00 00 00       $%  ANS005:7C9 03 22 F1 8C 00 00 00 00
  $%  REQ006:7C1 03 22 F1 90 00 00 00 00       $%  ANS006:7C9 03 22 F1 90 00 00 00 00
  $%  REQ007:7C1 03 22 F1 93 00 00 00 00       $%  ANS007:7C9 03 22 F1 93 00 00 00 00
  $%  REQ008:7C1 03 22 F1 95 00 00 00 00       $%  ANS008:7C9 03 22 F1 95 00 00 00 00
  $%  REQ009:7C1 03 22 F1 9D 00 00 00 00       $%  ANS009:7C9 03 22 F1 9D 00 00 00 00

  $%  000:车辆名称:                         $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                           $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:Geely软件版本号:                  $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:供应商代码:                       $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:          $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:            $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号(VIN码):                $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:        $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:        $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)安装日期:          $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7C1 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
