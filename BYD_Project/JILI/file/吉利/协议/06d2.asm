
    车型ID：06d2

    模拟：协议模拟-->06d2

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~74D

进入命令:

  $~  REQ000:745 02 10 01 00 00 00 00 00       $~  ANS000:74D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:745 02 3E 00 00 00 00 00 00       $!  ANS000:74D 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:745 03 19 02 09 00 00 00 00       $#  ANS000:74D 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/6f000000


  $#  01.读故障码库
  $#  REQ000:745 02 19 0A 00 00 00 00 00       $#  ANS000:74D 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/6f000000


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

  $$  REQ000:745 04 14 FF FF FF 00 00 00       $$  ANS000:74D 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:745 03 22 F1 12 00 00 00 00       $%  ANS000:74D 03 22 F1 12 00 00 00 00
  $%  REQ001:745 03 22 F1 80 00 00 00 00       $%  ANS001:74D 03 22 F1 80 00 00 00 00
  $%  REQ002:745 03 22 F1 87 00 00 00 00       $%  ANS002:74D 03 22 F1 87 00 00 00 00
  $%  REQ003:745 03 22 F1 89 00 00 00 00       $%  ANS003:74D 03 22 F1 89 00 00 00 00
  $%  REQ004:745 03 22 F1 8A 00 00 00 00       $%  ANS004:74D 03 22 F1 8A 00 00 00 00
  $%  REQ005:745 03 22 F1 8B 00 00 00 00       $%  ANS005:74D 03 22 F1 8B 00 00 00 00
  $%  REQ006:745 03 22 F1 8C 00 00 00 00       $%  ANS006:74D 03 22 F1 8C 00 00 00 00
  $%  REQ007:745 03 22 F1 90 00 00 00 00       $%  ANS007:74D 03 22 F1 90 00 00 00 00
  $%  REQ008:745 03 22 F1 93 00 00 00 00       $%  ANS008:74D 03 22 F1 93 00 00 00 00
  $%  REQ009:745 03 22 F1 95 00 00 00 00       $%  ANS009:74D 03 22 F1 95 00 00 00 00
  $%  REQ010:745 03 22 F1 99 00 00 00 00       $%  ANS010:74D 03 22 F1 99 00 00 00 00
  $%  REQ011:745 03 22 F1 9D 00 00 00 00       $%  ANS011:74D 03 22 F1 9D 00 00 00 00

  $%  000:车辆名称:                        $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:刷新程序软件版本:                $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  002:零件号:                          $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  003:Geely软件版本号:                 $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  004:供应商代码:                      $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  005:ECU(电子控制器)生产日期:         $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  006:ECU(电子控制器)序列号:           $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  007:车辆识别号（VIN码）:             $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  008:ECU(电子控制器)硬件版本号:       $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)软件版本号:       $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:ECU(电子控制器)刷写日期:         $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  011:ECU(电子控制器)安装日期:         $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:745 03 22 69 00 00 00 00 00       $  ANS000:74D 03 22 69 00 00 00 00 00
  $  REQ001:745 03 22 69 01 00 00 00 00       $  ANS001:74D 03 22 69 01 00 00 00 00

  $  000.DVR(行车记录仪)按键状态       $    $  /     $    $  ANS000.BYTE004  $  if(x==0x00) y=@06da;else if(x=0x01) y=@01b1;
  $  001.DVR(行车记录仪)系统状态       $    $  /     $    $  ANS001.BYTE004  $  switxh(x) 0x00:y=@0318;0x01:y=@06cd;0x02:y=@06ce;0x03:y=@06cf;0x04:y=@06d0;0x05:y=@06d1;0x06:y=@06d2;0x07:y=@06d3;0x08:y=@06d4;0x09:y=@06d5;0x0A:y=@06d6;0x0B:y=@06d7;0x0C:y=@06d8;0x0F:y=@06d9;default:y=@0168;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:745 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
