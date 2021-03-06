
    车型ID：080b

    模拟：协议模拟-->080b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~74E

进入命令:

  $~  REQ000:746 02 10 01 00 00 00 00 00       $~  ANS000:74E 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:746 02 3E 00 00 00 00 00 00       $!  ANS000:74E 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:746 03 19 02 09 00 00 00 00       $#  ANS000:74E 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/96000000


  $#  01.读故障码库
  $#  REQ000:746 02 19 0A 00 00 00 00 00       $#  ANS000:74E 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/96000000


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

  $$  REQ000:746 04 14 FF FF FF 00 00 00       $$  ANS000:74E 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:746 03 22 F1 12 00 00 00 00       $%  ANS000:74E 03 22 F1 12 00 00 00 00
  $%  REQ001:746 03 22 F1 80 00 00 00 00       $%  ANS001:74E 03 22 F1 80 00 00 00 00
  $%  REQ002:746 03 22 F1 87 00 00 00 00       $%  ANS002:74E 03 22 F1 87 00 00 00 00
  $%  REQ003:746 03 22 F1 8A 00 00 00 00       $%  ANS003:74E 03 22 F1 8A 00 00 00 00
  $%  REQ004:746 03 22 F1 8B 00 00 00 00       $%  ANS004:74E 03 22 F1 8B 00 00 00 00
  $%  REQ005:746 03 22 F1 8C 00 00 00 00       $%  ANS005:74E 03 22 F1 8C 00 00 00 00
  $%  REQ006:746 03 22 F1 90 00 00 00 00       $%  ANS006:74E 03 22 F1 90 00 00 00 00
  $%  REQ007:746 03 22 F1 93 00 00 00 00       $%  ANS007:74E 03 22 F1 93 00 00 00 00
  $%  REQ008:746 03 22 F1 95 00 00 00 00       $%  ANS008:74E 03 22 F1 95 00 00 00 00
  $%  REQ009:746 03 22 F1 98 00 00 00 00       $%  ANS009:74E 03 22 F1 98 00 00 00 00
  $%  REQ010:746 03 22 F1 99 00 00 00 00       $%  ANS010:74E 03 22 F1 99 00 00 00 00
  $%  REQ011:746 03 22 F1 9D 00 00 00 00       $%  ANS011:74E 03 22 F1 9D 00 00 00 00
  $%  REQ012:746 03 22 F1 82 00 00 00 00       $%  ANS012:74E 03 22 F1 82 00 00 00 00

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

  $  REQ000:746 03 22 6B 00 00 00 00 00       $  ANS000:74E 03 22 6B 00 00 00 00 00
  $  REQ001:746 03 22 6B 01 00 00 00 00       $  ANS001:74E 03 22 6B 01 00 00 00 00
  $  REQ002:746 03 22 6B 02 00 00 00 00       $  ANS002:74E 03 22 6B 02 00 00 00 00
  $  REQ003:746 03 22 6B 03 00 00 00 00       $  ANS003:74E 03 22 6B 03 00 00 00 00
  $  REQ004:746 03 22 6B 04 00 00 00 00       $  ANS004:74E 03 22 6B 04 00 00 00 00
  $  REQ005:746 03 22 6B 05 00 00 00 00       $  ANS005:74E 03 22 6B 05 00 00 00 00
  $  REQ006:746 03 22 6B 06 00 00 00 00       $  ANS006:74E 03 22 6B 06 00 00 00 00
  $  REQ007:746 03 22 6B 07 00 00 00 00       $  ANS007:74E 03 22 6B 07 00 00 00 00
  $  REQ008:746 03 22 6B 08 00 00 00 00       $  ANS008:74E 03 22 6B 08 00 00 00 00
  $  REQ009:746 03 22 6B 09 00 00 00 00       $  ANS009:74E 03 22 6B 09 00 00 00 00
  $  REQ010:746 03 22 6B 0A 00 00 00 00       $  ANS010:74E 03 22 6B 0A 00 00 00 00
  $  REQ011:746 03 22 6B 0B 00 00 00 00       $  ANS011:74E 03 22 6B 0B 00 00 00 00
  $  REQ012:746 03 22 6B 0C 00 00 00 00       $  ANS012:74E 03 22 6B 0C 00 00 00 00
  $  REQ013:746 03 22 6B 0D 00 00 00 00       $  ANS013:74E 03 22 6B 0D 00 00 00 00
  $  REQ014:746 03 22 6B 0E 00 00 00 00       $  ANS014:74E 03 22 6B 0E 00 00 00 00
  $  REQ015:746 03 22 6B 0F 00 00 00 00       $  ANS015:74E 03 22 6B 0F 00 00 00 00
  $  REQ016:746 03 22 6B 10 00 00 00 00       $  ANS016:74E 03 22 6B 10 00 00 00 00
  $  REQ017:746 03 22 6B 11 00 00 00 00       $  ANS017:74E 03 22 6B 11 00 00 00 00
  $  REQ018:746 03 22 6B 12 00 00 00 00       $  ANS018:74E 03 22 6B 12 00 00 00 00
  $  REQ019:746 03 22 6B 13 00 00 00 00       $  ANS019:74E 03 22 6B 13 00 00 00 00

  $  000.司机侧座椅通风控制占空比                       $    $  %        $    $  ANS000.BYTE004  $  if(x>=0x65 && x<=0xFE)y=@0209;else if(x==0xFF)y=@0132;else y=x;
  $  001.司机侧座椅通风控制频率                         $    $  Hz       $    $  ANS000.BYTE005  $  if(x>=0x65 && x<=0xFE)y=@0209;else if(x==0xFF)y=@0132;else y=x*10;
  $  002.副驾侧座椅通风控制占空比                       $    $  %        $    $  ANS001.BYTE004  $  if(x>=0x65 && x<=0xFE)y=@0209;else if(x==0xFF)y=@0132;else y=x;
  $  003.副驾侧座椅通风控制频率                         $    $  Hz       $    $  ANS001.BYTE005  $  if(x>=0x65 && x<=0xFE)y=@0209;else if(x==0xFF)y=@0132;else y=x*10;
  $  004.左后侧座椅通风控制占空比                       $    $  %        $    $  ANS002.BYTE004  $  if(x>=0x65 && x<=0xFE)y=@0209;else if(x==0xFF)y=@0132;else y=x;
  $  005.左后侧座椅通风控制频率                         $    $  Hz       $    $  ANS002.BYTE005  $  if(x>=0x65 && x<=0xFE)y=@0209;else if(x==0xFF)y=@0132;else y=x*10;
  $  006.右后侧座椅通风控制占空比                       $    $  %        $    $  ANS003.BYTE004  $  if(x>=0x65 && x<=0xFE)y=@0209;else if(x==0xFF)y=@0132;else y=x;
  $  007.右后侧座椅通风控制频率                         $    $  Hz       $    $  ANS003.BYTE005  $  if(x>=0x65 && x<=0xFE)y=@0209;else if(x==0xFF)y=@0132;else y=x*10;
  $  008.司机侧座椅加热控制占空比                       $    $  %        $    $  ANS004.BYTE004  $  if(x>=0x65 && x<=0xFE)y=@0209;else if(x==0xFF)y=@0132;else y=x;
  $  009.司机侧座椅加热控制频率                         $    $  Hz       $    $  ANS004.BYTE005  $  if(x>=0x65 && x<=0xFE)y=@0209;else if(x==0xFF)y=@0132;else y=x;
  $  010.副驾侧座椅加热控制占空比                       $    $  %        $    $  ANS005.BYTE004  $  if(x>=0x65 && x<=0xFE)y=@0209;else if(x==0xFF)y=@0132;else y=x;
  $  011.副驾侧座椅加热控制频率                         $    $  Hz       $    $  ANS005.BYTE005  $  if(x>=0x65 && x<=0xFE)y=@0209;else if(x==0xFF)y=@0132;else y=x;
  $  012.左后侧座椅加热控制占空比                       $    $  %        $    $  ANS006.BYTE004  $  if(x>=0x65 && x<=0xFE)y=@0209;else if(x==0xFF)y=@0132;else y=x;
  $  013.左后侧座椅加热控制频率                         $    $  Hz       $    $  ANS006.BYTE005  $  if(x>=0x65 && x<=0xFE)y=@0209;else if(x==0xFF)y=@0132;else y=x;
  $  014.右后侧座椅加热控制占空比                       $    $  %        $    $  ANS007.BYTE004  $  if(x>=0x65 && x<=0xFE)y=@0209;else if(x==0xFF)y=@0132;else y=x;
  $  015.右后侧座椅加热控制频率                         $    $  Hz       $    $  ANS007.BYTE005  $  if(x>=0x65 && x<=0xFE)y=@0209;else if(x==0xFF)y=@0132;else y=x;
  $  016.左后座椅加热控制开关状态                       $    $  /        $    $  ANS008.BYTE004  $  if(((x>>0)&1))y=@001c;else y=@001d;
  $  017.左后座椅通风控制开关状态                       $    $  /        $    $  ANS009.BYTE004  $  if(((x>>0)&1))y=@001c;else y=@001d;
  $  018.右后座椅加热控制开关状态                       $    $  /        $    $  ANS010.BYTE004  $  if(((x>>0)&1))y=@001c;else y=@001d;
  $  019.右后座椅通风控制开关状态                       $    $  /        $    $  ANS011.BYTE004  $  if(((x>>0)&1))y=@001c;else y=@001d;
  $  020.司机座椅加热负温度系数热敏电阻器反馈数据       $    $  /        $    $  ANS012.BYTE004  $  y=x1*256+x2;
  $  021.副驾座椅加热负温度系数热敏电阻器反馈数据       $    $  /        $    $  ANS013.BYTE004  $  y=x1*256+x2;
  $  022.左后座椅加热负温度系数热敏电阻器反馈数据       $    $  /        $    $  ANS014.BYTE004  $  y=x1*256+x2;
  $  023.右后座椅加热负温度系数热敏电阻器反馈数据       $    $  /        $    $  ANS015.BYTE004  $  y=x1*256+x2;
  $  024.司机座椅温度                                   $    $  degC     $    $  ANS016.BYTE004  $  y=x-40;
  $  025.副驾座椅温度                                   $    $  degC     $    $  ANS017.BYTE004  $  y=x-40;
  $  026.左后座椅温度                                   $    $  degC     $    $  ANS018.BYTE004  $  y=x-40;
  $  027.右后座椅温度                                   $    $  degC     $    $  ANS019.BYTE004  $  y=x-40;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:746 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
