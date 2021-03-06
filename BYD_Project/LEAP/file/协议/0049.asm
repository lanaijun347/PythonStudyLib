
    车型ID：0049

    模拟：协议模拟-->0049

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~73E

进入命令:

  $~  REQ000:736 02 10 01 00 00 00 00 00       $~  ANS000:73E 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:736 02 3E 80 00 00 00 00 00       $!  ANS000:73E 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:736 03 19 02 09 00 00 00 00       $#  ANS000:73E 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/33000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:736 04 14 FF FF FF 00 00 00       $$  ANS000:73E 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:736 03 22 F1 90 00 00 00 00       $%  ANS000:73E 03 22 F1 90 00 00 00 00
  $%  REQ001:736 03 22 F1 87 00 00 00 00       $%  ANS001:73E 03 22 F1 87 00 00 00 00
  $%  REQ002:736 03 22 F1 8A 00 00 00 00       $%  ANS002:73E 03 22 F1 8A 00 00 00 00
  $%  REQ003:736 03 22 F1 8C 00 00 00 00       $%  ANS003:73E 03 22 F1 8C 00 00 00 00
  $%  REQ004:736 03 22 F1 97 00 00 00 00       $%  ANS004:73E 03 22 F1 97 00 00 00 00
  $%  REQ005:736 03 22 F1 93 00 00 00 00       $%  ANS005:73E 03 22 F1 93 00 00 00 00
  $%  REQ006:736 03 22 F1 95 00 00 00 00       $%  ANS006:73E 03 22 F1 95 00 00 00 00
  $%  REQ007:736 03 22 F0 10 00 00 00 00       $%  ANS007:73E 03 22 F0 10 00 00 00 00

  $%  000:VIN码:                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:车厂备件号:               $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:供应商识别符:             $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:ECU序列号:                $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:系统名称:                 $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:车厂ECU硬件版本号:        $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%02X.%02X],x1,x2);
  $%  006:车厂ECU软件版本号:        $%    $%  ANS006.BYTE004  $%  HEX(x1,x2);
  $%  007:电控单元变码:             $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%X.%X.%X.%X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.系统状态
  $  00.系统状态
  $  REQ000:736 03 22 10 02 00 00 00 00       $  ANS000:73E 03 22 10 02 00 00 00 00
  $  REQ001:736 03 22 10 03 00 00 00 00       $  ANS001:73E 03 22 10 03 00 00 00 00
  $  REQ002:736 03 22 10 1C 00 00 00 00       $  ANS002:73E 03 22 10 1C 00 00 00 00
  $  REQ003:736 03 22 10 1D 00 00 00 00       $  ANS003:73E 03 22 10 1D 00 00 00 00

  $  000.液压单元状态       $    $        $    $  ANS000.BYTE004  $  if(x1==0) y=@0090;else if(x1==170) y=@00e7;else y=@00e8;
  $  001.下线检测状态       $    $        $    $  ANS001.BYTE004  $  if(x1==0) y=@0090;else if(x1==170) y=@00e7;else y=@00e8;
  $  002.电源电压           $    $  V     $    $  ANS002.BYTE004  $  y = SPRINTF([%.2f], x1*0.08+6);
  $  003.制动开关状态       $    $        $    $  ANS003.BYTE004  $  switxh(x1&0x01) 0x00: y=@0009; default: y=@0083;

  $)  01.速度信息
  $  01.速度信息
  $  REQ000:736 03 22 10 04 00 00 00 00       $  ANS000:73E 03 22 10 04 00 00 00 00
  $  REQ001:736 03 22 10 05 00 00 00 00       $  ANS001:73E 03 22 10 05 00 00 00 00
  $  REQ002:736 03 22 10 06 00 00 00 00       $  ANS002:73E 03 22 10 06 00 00 00 00
  $  REQ003:736 03 22 10 07 00 00 00 00       $  ANS003:73E 03 22 10 07 00 00 00 00
  $  REQ004:736 03 22 10 08 00 00 00 00       $  ANS004:73E 03 22 10 08 00 00 00 00

  $  000.左前轮轮速       $    $  km/h     $    $  ANS000.BYTE004  $  y = SPRINTF([%.2f], (x1*256+x2)*0.05625);
  $  001.右前轮轮速       $    $  km/h     $    $  ANS001.BYTE004  $  y = SPRINTF([%.2f], (x1*256+x2)*0.05625);
  $  002.左后轮轮速       $    $  km/h     $    $  ANS002.BYTE004  $  y = SPRINTF([%.2f], (x1*256+x2)*0.05625);
  $  003.右后轮轮速       $    $  km/h     $    $  ANS003.BYTE004  $  y = SPRINTF([%.2f], (x1*256+x2)*0.05625);
  $  004.车速轮速         $    $  km/h     $    $  ANS004.BYTE004  $  y = SPRINTF([%.2f], (x1*256+x2)*0.05625);

  $)  02.电磁阀当前状态
  $  02.电磁阀当前状态
  $  REQ000:736 03 22 10 09 00 00 00 00       $  ANS000:73E 03 22 10 09 00 00 00 00

  $  000.右后出油阀       $    $       $    $  ANS000.BYTE004  $  if(((x1>>7)&1)) y=@0083;else y=@0094;
  $  001.右后进油阀       $    $       $    $  ANS000.BYTE004  $  if(((x1>>6)&1)) y=@0083;else y=@0094;
  $  002.左后出油阀       $    $       $    $  ANS000.BYTE004  $  if(((x1>>5)&1)) y=@0083;else y=@0094;
  $  003.左后进油阀       $    $       $    $  ANS000.BYTE004  $  if(((x1>>4)&1)) y=@0083;else y=@0094;
  $  004.右前出油阀       $    $       $    $  ANS000.BYTE004  $  if(((x1>>3)&1)) y=@0083;else y=@0094;
  $  005.右前进油阀       $    $       $    $  ANS000.BYTE004  $  if(((x1>>2)&1)) y=@0083;else y=@0094;
  $  006.左前出油阀       $    $       $    $  ANS000.BYTE004  $  if(((x1>>1)&1)) y=@0083;else y=@0094;
  $  007.左前进油阀       $    $       $    $  ANS000.BYTE004  $  if(((x1>>0)&1)) y=@0083;else y=@0094;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:736 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
