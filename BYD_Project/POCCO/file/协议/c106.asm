
    车型ID：c106

    模拟：协议模拟-->c106

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A0

进入命令:

  $~  REQ000:720 02 10 03 00 00 00 00 00       $~  ANS000:7A0 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:720 02 3E 00 00 00 00 00 00       $!  ANS000:7A0 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:720 03 19 02 09 00 00 00 00       $#  ANS000:7A0 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/c6000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:720 04 14 FF FF FF 00 00 00       $$  ANS000:7A0 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:720 03 22 F1 87 00 00 00 00       $%  ANS000:7A0 03 22 F1 87 00 00 00 00
  $%  REQ001:720 03 22 F1 8A 00 00 00 00       $%  ANS001:7A0 03 22 F1 8A 00 00 00 00
  $%  REQ002:720 03 22 F1 8C 00 00 00 00       $%  ANS002:7A0 03 22 F1 8C 00 00 00 00
  $%  REQ003:720 03 22 F1 90 00 00 00 00       $%  ANS003:7A0 03 22 F1 90 00 00 00 00
  $%  REQ004:720 03 22 F1 93 00 00 00 00       $%  ANS004:7A0 03 22 F1 93 00 00 00 00
  $%  REQ005:720 03 22 F1 95 00 00 00 00       $%  ANS005:7A0 03 22 F1 95 00 00 00 00
  $%  REQ006:720 03 22 F1 98 00 00 00 00       $%  ANS006:7A0 03 22 F1 98 00 00 00 00
  $%  REQ007:720 03 22 F1 99 00 00 00 00       $%  ANS007:7A0 03 22 F1 99 00 00 00 00

  $%  000:零件号:                 $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  001:供应商代码:             $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:ECU流水编号:            $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:车辆识别号(VIN):        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  004:硬件版本号:             $%    $%  ANS004.BYTE004  $%  SPRINTF([%s%02X%s%02X%s%02X%02X%02X%02X],@001e,X1,@001f,X2,@0020,X6,X5,X4,X3);
  $%  005:软件版本号:             $%    $%  ANS005.BYTE004  $%  SPRINTF([%s%02X%s%02X%s%02X%02X%02X%02X],@001e,X1,@0021,X2,@0020,X6,X5,X4,X3);
  $%  006:测试仪序列号:           $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  007:软件编程日期:           $%    $%  ANS007.BYTE004  $%  SPRINTF([%02X%s%02X%s%02X%s],X1,@0022,X2,@0023,X3,@0024);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:720 03 22 05 02 00 00 00 00       $  ANS000:7A0 03 22 05 02 00 00 00 00
  $  REQ001:720 03 22 05 03 00 00 00 00       $  ANS001:7A0 03 22 05 03 00 00 00 00
  $  REQ002:720 03 22 05 04 00 00 00 00       $  ANS002:7A0 03 22 05 04 00 00 00 00
  $  REQ003:720 03 22 05 05 00 00 00 00       $  ANS003:7A0 03 22 05 05 00 00 00 00
  $  REQ004:720 03 22 05 06 00 00 00 00       $  ANS004:7A0 03 22 05 06 00 00 00 00
  $  REQ005:720 03 22 05 07 00 00 00 00       $  ANS005:7A0 03 22 05 07 00 00 00 00
  $  REQ006:720 03 22 05 08 00 00 00 00       $  ANS006:7A0 03 22 05 08 00 00 00 00
  $  REQ007:720 03 22 05 09 00 00 00 00       $  ANS007:7A0 03 22 05 09 00 00 00 00
  $  REQ008:720 03 22 05 0A 00 00 00 00       $  ANS008:7A0 03 22 05 0A 00 00 00 00
  $  REQ009:720 03 22 05 0B 00 00 00 00       $  ANS009:7A0 03 22 05 0B 00 00 00 00

  $  000.READY指示灯                           $    $           $    $  ANS000.BYTE004  $  if(x1&0x01) y=@004a;else y=@0025;
  $  001.左转向灯                              $    $           $    $  ANS000.BYTE004  $  if(x1&0x02) y=@004a;else y=@0025;
  $  002.右转向灯                              $    $           $    $  ANS000.BYTE004  $  if(x1&0x04) y=@004a;else y=@0025;
  $  003.位置灯指示                            $    $           $    $  ANS000.BYTE004  $  if(x1&0x08) y=@004a;else y=@0025;
  $  004.远光灯                                $    $           $    $  ANS000.BYTE004  $  if(x1&0x10) y=@004a;else y=@0025;
  $  005.后雾灯                                $    $           $    $  ANS000.BYTE004  $  if(x1&0x20) y=@002e;else y=@002f;
  $  006.驻车指示灯                            $    $           $    $  ANS000.BYTE004  $  if(x1&0x40) y=@002e;else y=@002f;
  $  007.充电连接线指示灯                      $    $           $    $  ANS000.BYTE004  $  if(x1&0x80) y=@004b;else y=@004c;
  $  008.主驾安全带未系指示灯                  $    $           $    $  ANS000.BYTE005  $  if(x1&0x01) y=@004d;else y=@004e;
  $  009.副驾安全带未系指示灯                  $    $           $    $  ANS000.BYTE005  $  if(x1&0x02) y=@004d;else y=@004e;
  $  010.电机过热指示灯                        $    $           $    $  ANS000.BYTE005  $  if(x1&0x04) y=@002e;else y=@002f;
  $  011.安全气囊故障灯                        $    $           $    $  ANS000.BYTE005  $  if(x1&0x08) y=@002e;else y=@002f;
  $  012.EPS(电子转向系统)故障指示灯           $    $           $    $  ANS000.BYTE005  $  if(x1&0x10) y=@002e;else y=@002f;
  $  013.ABS(防抱死刹车系统)故障指示灯         $    $           $    $  ANS000.BYTE005  $  if(x1&0x20) y=@002e;else y=@002f;
  $  014.动力电池故障指示灯                    $    $           $    $  ANS000.BYTE005  $  if(x1&0x40) y=@002e;else y=@002f;
  $  015.绝缘故障指示灯                        $    $           $    $  ANS000.BYTE005  $  if(x1&0x80) y=@002e;else y=@002f;
  $  016.电池电量低指示灯                      $    $           $    $  ANS000.BYTE006  $  if(x1&0x01) y=@002e;else y=@002f;
  $  017.整车系统故障指示灯                    $    $           $    $  ANS000.BYTE006  $  if(x1&0x02) y=@002e;else y=@002f;
  $  018.胎压故障指示灯                        $    $           $    $  ANS000.BYTE006  $  if(x1&0x04) y=@002e;else y=@002f;
  $  019.降功率指示灯                          $    $           $    $  ANS000.BYTE006  $  if(x1&0x08) y=@002e;else y=@002f;
  $  020.EPB(电子驻车系统)工作状态指示灯       $    $           $    $  ANS000.BYTE006  $  if(x1&0x10) y=@002e;else y=@002f;
  $  021.EBD故障指示灯                         $    $           $    $  ANS000.BYTE006  $  if(x1&0x20) y=@002e;else y=@002f;
  $  022.电机故障指示灯                        $    $           $    $  ANS000.BYTE006  $  if(x1&0x40) y=@002e;else y=@002f;
  $  023.动力电池高温报警                      $    $           $    $  ANS000.BYTE006  $  if(x1&0x80) y=@002e;else y=@002f;
  $  024.制动液位低指示灯                      $    $           $    $  ANS000.BYTE007  $  if(x1&0x01) y=@002e;else y=@002f;
  $  025.热失控报警                            $    $           $    $  ANS000.BYTE007  $  if(x1&0x02) y=@002e;else y=@002f;
  $  026.关闭低速指示音指示灯                  $    $           $    $  ANS000.BYTE007  $  if(x1&0x04) y=@002e;else y=@002f;
  $  027.充电状态指示灯                        $    $           $    $  ANS000.BYTE007  $  if(x1&0x08) y=@002e;else y=@002f;
  $  028.蓄电池故障指示灯                      $    $           $    $  ANS000.BYTE007  $  if(x1&0x10) y=@002e;else y=@002f;
  $  029.动力电池切断指示灯                    $    $           $    $  ANS000.BYTE007  $  if(x1&0x20) y=@002e;else y=@002f;
  $  030.门开指示灯                            $    $           $    $  ANS000.BYTE007  $  if(x1&0x40) y=@002e;else y=@002f;
  $  031.近光灯                                $    $           $    $  ANS000.BYTE007  $  if(x1&0x80) y=@002e;else y=@002f;
  $  032.左前门打开                            $    $           $    $  ANS001.BYTE004  $  if(x1&0x01) y=@0017;else y=@0019;
  $  033.右前门打开                            $    $           $    $  ANS001.BYTE004  $  if(x1&0x02) y=@0017;else y=@0019;
  $  034.后备箱门打开                          $    $           $    $  ANS001.BYTE004  $  if(x1&0x10) y=@0017;else y=@0019;
  $  035.报警音                                $    $           $    $  ANS002.BYTE004  $  switxh(x1) 0x01: y=@0030;0x02: y=@0031;0x03: y=@0032;0x04: y=@0033;0x05: y=@0034;0x10: y=@0035;0x11: y=@0036;0x12: y=@0037;0x13: y=@0038;0x14: y=@0039;0x15: y=@003a;0x16: y=@003b;0x17: y=@003c;0x18: y=@003d;0x19: y=@003e;0x1a: y=@003f;0x1b: y=@0040;0x1c: y=@0041;0x1d: y=@0042;0x1e: y=@0043;0x1f: y=@0044;default: y=@0045;
  $  036.档位                                  $    $           $    $  ANS003.BYTE004  $  switxh(x1) 0x00: y=@0046;0x0a: y=@0047;0x0d: y=@0048;0x0e: y=@0049;0xFF: y=@0025;default: y=@0045;
  $  037.总里程                                $    $  km       $    $  ANS004.BYTE004  $  y=x1*1677721.6+x2*6553.6+x3*25.6+x4*0.1;
  $  038.小计里程A                             $    $  km       $    $  ANS005.BYTE004  $  y=x1*1677721.6+x2*6553.6+x3*25.6+x4*0.1;
  $  039.小计里程B                             $    $  km       $    $  ANS005.BYTE008  $  y=x1*1677721.6+x2*6553.6+x3*25.6+x4*0.1;
  $  040.蓄电池电压                            $    $  V        $    $  ANS006.BYTE004  $  y=x1*2.56+x2*0.01;
  $  041.车速                                  $    $  km/h     $    $  ANS007.BYTE004  $  y=x1*25.6+x2*0.1;
  $  042.电机转速                              $    $  rpm      $    $  ANS008.BYTE004  $  y=x1*256+x2;
  $  043.动力电池电压                          $    $  V        $    $  ANS009.BYTE004  $  y=x1*256+x2;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:720 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
