
    车型ID：09a8

    模拟：协议模拟-->09a8

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~74D

进入命令:

  $~  REQ000:745 02 10 01 00 00 00 00 00       $~  ANS000:74D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:745 02 3E 00 00 00 00 00 00       $!  ANS000:74D 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:745 03 19 02 09 00 00 00 00       $#  ANS000:74D 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/9f000000


  $#  01.读故障码库
  $#  REQ000:745 02 19 0A 00 00 00 00 00       $#  ANS000:74D 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/9f000000


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
  $%  REQ003:745 03 22 F1 8A 00 00 00 00       $%  ANS003:74D 03 22 F1 8A 00 00 00 00
  $%  REQ004:745 03 22 F1 8B 00 00 00 00       $%  ANS004:74D 03 22 F1 8B 00 00 00 00
  $%  REQ005:745 03 22 F1 8C 00 00 00 00       $%  ANS005:74D 03 22 F1 8C 00 00 00 00
  $%  REQ006:745 03 22 F1 90 00 00 00 00       $%  ANS006:74D 03 22 F1 90 00 00 00 00
  $%  REQ007:745 03 22 F1 93 00 00 00 00       $%  ANS007:74D 03 22 F1 93 00 00 00 00
  $%  REQ008:745 03 22 F1 95 00 00 00 00       $%  ANS008:74D 03 22 F1 95 00 00 00 00
  $%  REQ009:745 03 22 F1 98 00 00 00 00       $%  ANS009:74D 03 22 F1 98 00 00 00 00
  $%  REQ010:745 03 22 F1 99 00 00 00 00       $%  ANS010:74D 03 22 F1 99 00 00 00 00
  $%  REQ011:745 03 22 F1 9D 00 00 00 00       $%  ANS011:74D 03 22 F1 9D 00 00 00 00
  $%  REQ012:745 03 22 F1 82 00 00 00 00       $%  ANS012:74D 03 22 F1 82 00 00 00 00

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

  $  REQ000:745 03 22 69 01 00 00 00 00       $  ANS000:74D 03 22 69 01 00 00 00 00
  $  REQ001:745 03 22 DF 00 00 00 00 00       $  ANS001:74D 03 22 DF 00 00 00 00 00
  $  REQ002:745 03 22 DF 01 00 00 00 00       $  ANS002:74D 03 22 DF 01 00 00 00 00

  $  000.DVR(行车记录仪) 系统状态       $    $  /        $    $  ANS000.BYTE004  $  switxh(x)0x00:y=@0318;0x01:y=@0e14;0x02:y=@0e15;0x03:y=@0e16;0x04:y=@0e17;0x05:y=@0e18;0x06:y=@0e19;0x07:y=@0e1a;0x08:y=@0e1b;0x09:y=@0e1c;0x0A:y=@0e1d;0x0B:y=@0e1e;0x0C:y=@0e1f;0x0D:y=@0209;0x0E:y=@0209;0x0F:y=@00be;
  $  001.供电电压                       $    $  V        $    $  ANS001.BYTE004  $  if(x!=0xff)y=x*0.1;else y=@0008;
  $  002.车速                           $    $  km/h     $    $  ANS002.BYTE004  $  if((x1*0x100+x2)<0x1fff)y=INT((x1*256+x2)*0.05625);else y=@0008;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:745 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
