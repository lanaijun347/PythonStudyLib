
    车型ID：001b

    模拟：协议模拟-->001b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7B1

进入命令:

  $~  REQ000:731 02 10 01 00 00 00 00 00       $~  ANS000:7B1 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:731 02 3E 00 00 00 00 00 00       $!  ANS000:7B1 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:731 03 19 02 09 00 00 00 00       $#  ANS000:7B1 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/1a000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:731 04 14 FF FF FF 00 00 00       $$  ANS000:7B1 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:731 03 22 F1 87 00 00 00 00       $%  ANS000:7B1 03 22 F1 87 00 00 00 00
  $%  REQ001:731 03 22 F1 8A 00 00 00 00       $%  ANS001:7B1 03 22 F1 8A 00 00 00 00
  $%  REQ002:731 03 22 F1 93 00 00 00 00       $%  ANS002:7B1 03 22 F1 93 00 00 00 00
  $%  REQ003:731 03 22 F1 95 00 00 00 00       $%  ANS003:7B1 03 22 F1 95 00 00 00 00
  $%  REQ004:731 03 22 F1 9D 00 00 00 00       $%  ANS004:7B1 03 22 F1 9D 00 00 00 00
  $%  REQ005:731 03 22 F1 8B 00 00 00 00       $%  ANS005:7B1 03 22 F1 8B 00 00 00 00
  $%  REQ006:731 03 22 F1 90 00 00 00 00       $%  ANS006:7B1 03 22 F1 90 00 00 00 00
  $%  REQ007:731 03 22 F1 84 00 00 00 00       $%  ANS007:7B1 03 22 F1 84 00 00 00 00
  $%  REQ008:731 03 22 F1 8C 00 00 00 00       $%  ANS008:7B1 03 22 F1 8C 00 00 00 00
  $%  REQ009:731 03 22 F1 98 00 00 00 00       $%  ANS009:7B1 03 22 F1 98 00 00 00 00

  $%  000:零部件件号:                     $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  001:系统供应商代码:                 $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:系统供应商ECU硬件版本号:        $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  003:系统供应商ECU软件版本号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  004:ECU安装日期:                    $%    $%  ANS004.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  005:ECU制造日期:                    $%    $%  ANS005.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  006:VIN:                            $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:指纹数据标识符:                 $%    $%  ANS007.BYTE004  $%  y = SPRINTF([%02X%02X%02X%02X%c%c%c%c%c%c%c%c%c%c],x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  008:ECU序列号:                      $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  009:维修店代码/测试仪序列号:        $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:731 03 22 17 01 00 00 00 00       $  ANS000:7B1 03 22 17 01 00 00 00 00
  $  REQ001:731 03 22 17 02 00 00 00 00       $  ANS001:7B1 03 22 17 02 00 00 00 00
  $  REQ002:731 03 22 17 03 00 00 00 00       $  ANS002:7B1 03 22 17 03 00 00 00 00
  $  REQ003:731 03 22 17 04 00 00 00 00       $  ANS003:7B1 03 22 17 04 00 00 00 00
  $  REQ004:731 03 22 17 05 00 00 00 00       $  ANS004:7B1 03 22 17 05 00 00 00 00

  $  000.A路传感器角度值       $    $       $    $  ANS000.BYTE004  $  y = SPRINTF([%d], (x1*256+x2));
  $  001.B路传感器角度值       $    $       $    $  ANS000.BYTE006  $  y = SPRINTF([%d], (x1*256+x2));
  $  002.A路左止点角度值       $    $       $    $  ANS001.BYTE004  $  y = SPRINTF([%d], (x1*256+x2));
  $  003.B路左止点角度值       $    $       $    $  ANS001.BYTE006  $  y = SPRINTF([%d], (x1*256+x2));
  $  004.A路右止点角度值       $    $       $    $  ANS002.BYTE004  $  y = SPRINTF([%d], (x1*256+x2));
  $  005.B路右止点角度值       $    $       $    $  ANS002.BYTE006  $  y = SPRINTF([%d], (x1*256+x2));
  $  006.电源电压值            $    $       $    $  ANS003.BYTE004  $  y = SPRINTF([%d], (x1*256+x2));
  $  007.IGN状态               $    $       $    $  ANS004.BYTE004  $  if(x1==0) y=@0000;else if(x1==1) y=@0001;else if(x1==2) y=@0002;else if(x1==3) y=@0003;else y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:731 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
