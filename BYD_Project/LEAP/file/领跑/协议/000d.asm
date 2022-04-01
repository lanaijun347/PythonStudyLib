
    车型ID：000d

    模拟：协议模拟-->000d

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

  $*$*DTC/0b000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:736 04 14 FF FF FF 00 00 00       $$  ANS000:73E 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:736 03 22 F1 87 00 00 00 00       $%  ANS000:73E 03 22 F1 87 00 00 00 00
  $%  REQ001:736 03 22 F1 90 00 00 00 00       $%  ANS001:73E 03 22 F1 90 00 00 00 00
  $%  REQ002:736 03 22 F1 93 00 00 00 00       $%  ANS002:73E 03 22 F1 93 00 00 00 00
  $%  REQ003:736 03 22 F1 95 00 00 00 00       $%  ANS003:73E 03 22 F1 95 00 00 00 00
  $%  REQ004:736 03 22 F1 8B 00 00 00 00       $%  ANS004:73E 03 22 F1 8B 00 00 00 00

  $%  000:物料号:                   $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);
  $%  001:VIN码:                    $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  002:车厂ECU硬件版本号:        $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  003:车厂ECU软件版本号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  004:ECU生产日期:              $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.车速
  $  00.车速
  $  REQ000:736 03 22 FD 01 00 00 00 00       $  ANS000:73E 03 22 FD 01 00 00 00 00
  $  REQ001:736 03 22 FD 02 00 00 00 00       $  ANS001:73E 03 22 FD 02 00 00 00 00
  $  REQ002:736 03 22 FD 03 00 00 00 00       $  ANS002:73E 03 22 FD 03 00 00 00 00
  $  REQ003:736 03 22 FD 04 00 00 00 00       $  ANS003:73E 03 22 FD 04 00 00 00 00
  $  REQ004:736 03 22 FD 05 00 00 00 00       $  ANS004:73E 03 22 FD 05 00 00 00 00

  $  000.左前轮轮速       $    $  km/h     $    $  ANS000.BYTE004  $  y = SPRINTF([%u], (x1*256+x2)*0.1);
  $  001.右前轮轮速       $    $  km/h     $    $  ANS001.BYTE004  $  y = SPRINTF([%u], (x1*256+x2)*0.1);
  $  002.左后轮轮速       $    $  km/h     $    $  ANS002.BYTE004  $  y = SPRINTF([%u], (x1*256+x2)*0.1);
  $  003.右后轮轮速       $    $  km/h     $    $  ANS003.BYTE004  $  y = SPRINTF([%u], (x1*256+x2)*0.1);
  $  004.车速             $    $  km/h     $    $  ANS004.BYTE004  $  y = SPRINTF([%u], (x1*256+x2)*0.1);

  $)  01.ESC(车身稳定控制模块)按键状态
  $  01.ESC(车身稳定控制模块)按键状态
  $  REQ000:736 03 22 FD 06 00 00 00 00       $  ANS000:73E 03 22 FD 06 00 00 00 00

  $  000.刹车灯SW(开关)状态             $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x01) 0x00: y=@00c3; default: y=@00c4;
  $  001.车辆自动保持SW(开关)状态       $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x10) 0x00: y=@00c3; default: y=@00c4;
  $  002.电子稳定系统SW(开关)           $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x40) 0x00: y=@00c3; default: y=@00c4;

  $)  02.ESC(车身稳定控制模块)警报灯状态
  $  02.ESC(车身稳定控制模块)警报灯状态
  $  REQ000:736 03 22 FD 07 00 00 00 00       $  ANS000:73E 03 22 FD 07 00 00 00 00

  $  000.EBD(电子制动力分配)警告灯                 $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x01) 0x00: y=@00c5; default: y=@00c6;
  $  001.ABS(防抱死刹车系统)警告灯                 $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x02) 0x00: y=@00c5; default: y=@00c6;
  $  002.ESC(车身稳定控制模块)警告灯               $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x0C) 0x00: y=@00c5;0x04: y=@00c7;0x08: y=@00c6; default: y=@0005;
  $  003.ESC off(车身稳定控制模块关闭)警告灯       $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x10) 0x00: y=@00c5; default: y=@00c6;
  $  004.AVH警告灯                                 $    $       $    $  ANS000.BYTE005  $  switxh(x1&0x04) 0x00: y=@00c5; default: y=@00c6;

  $)  03.ESC(车身稳定控制模块)工作状态
  $  03.ESC(车身稳定控制模块)工作状态
  $  REQ000:736 03 22 FD 08 00 00 00 00       $  ANS000:73E 03 22 FD 08 00 00 00 00

  $  000.ABS(制动防抱死系统)           $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x01) 0x00: y=@0047; default: y=@0048;
  $  001.EBD(电子制动分配系统)         $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x02) 0x00: y=@0047; default: y=@0048;
  $  002.BTC(刹车扭矩控制系统)         $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x04) 0x00: y=@0047; default: y=@0048;
  $  003.TCS(牵引力控制系统)           $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x08) 0x00: y=@0047; default: y=@0048;
  $  004.AYC(主动后桥控制系统)         $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x10) 0x00: y=@0047; default: y=@0048;
  $  005.HAS(上坡辅助系统)             $    $       $    $  ANS000.BYTE005  $  switxh(x1&0x02) 0x00: y=@0047; default: y=@0048;
  $  006.ACC(自适应巡航控制系统)       $    $       $    $  ANS000.BYTE005  $  switxh(x1&0x10) 0x00: y=@0047; default: y=@0048;

  $)  04.诊断泵阀控制状态
  $  04.诊断泵阀控制状态
  $  REQ000:736 03 22 FD 0E 00 00 00 00       $  ANS000:73E 03 22 FD 0E 00 00 00 00

  $  000.左前进阀          $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x01) 0x00: y=@0047; default: y=@0048;
  $  001.左前出阀          $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x02) 0x00: y=@0047; default: y=@0048;
  $  002.右前进阀          $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x04) 0x00: y=@0047; default: y=@0048;
  $  003.右前出阀          $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x08) 0x00: y=@0047; default: y=@0048;
  $  004.左后进阀          $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x10) 0x00: y=@0047; default: y=@0048;
  $  005.左后出阀          $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x20) 0x00: y=@0047; default: y=@0048;
  $  006.右后进阀          $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x40) 0x00: y=@0047; default: y=@0048;
  $  007.右后出阀          $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x80) 0x00: y=@0047; default: y=@0048;
  $  008.分离阀1           $    $       $    $  ANS000.BYTE005  $  switxh(x1&0x01) 0x00: y=@0047; default: y=@0048;
  $  009.分离阀2           $    $       $    $  ANS000.BYTE005  $  switxh(x1&0x02) 0x00: y=@0047; default: y=@0048;
  $  010.电子转换阀1       $    $       $    $  ANS000.BYTE005  $  switxh(x1&0x04) 0x00: y=@0047; default: y=@0048;
  $  011.电子转换阀2       $    $       $    $  ANS000.BYTE005  $  switxh(x1&0x08) 0x00: y=@0047; default: y=@0048;
  $  012.泵                $    $       $    $  ANS000.BYTE006  $  switxh(x1&0x01) 0x00: y=@0047; default: y=@0048;

  $)  05.其他数据流
  $  05.其他数据流
  $  REQ000:736 03 22 FD 00 00 00 00 00       $  ANS000:73E 03 22 FD 00 00 00 00 00
  $  REQ001:736 03 22 FD 09 00 00 00 00       $  ANS001:73E 03 22 FD 09 00 00 00 00
  $  REQ002:736 03 22 FD 0A 00 00 00 00       $  ANS002:73E 03 22 FD 0A 00 00 00 00
  $  REQ003:736 03 22 FD 0B 00 00 00 00       $  ANS003:73E 03 22 FD 0B 00 00 00 00
  $  REQ004:736 03 22 FD 0C 00 00 00 00       $  ANS004:73E 03 22 FD 0C 00 00 00 00
  $  REQ005:736 03 22 FD 0D 00 00 00 00       $  ANS005:73E 03 22 FD 0D 00 00 00 00

  $  000.工作电压                 $    $  V         $    $  ANS000.BYTE004  $  y = SPRINTF([%u], x1*0.1);
  $  001.角速度传感器值           $    $  deg/s     $    $  ANS001.BYTE004  $  if((x1*256+x2)>32768) y=((x1*256+x2)-32768)*(0-0.00286); else if((x1*256+x2)<32768) y=(x1*256+x2)*0.00286; else y=@00c2;
  $  002.横向加速度传感器值       $    $  g         $    $  ANS002.BYTE004  $  if((x1*256+x2)>32768) y=((x1*256+x2)-32768)*(0-0.00981); else if((x1*256+x2)<32768) y=(x1*256+x2)*0.00981; else y=@00c2;
  $  003.纵向加速度传感器值       $    $  g         $    $  ANS003.BYTE004  $  if((x1*256+x2)>32768) y=((x1*256+x2)-32768)*(0-0.00981); else if((x1*256+x2)<32768) y=(x1*256+x2)*0.00981; else y=@00c2;
  $  004.转角传感器值             $    $  deg       $    $  ANS004.BYTE004  $  if((x1*256+x2)>=32768) y=((x1*256+x2)-32768)*(0-0.04375); else y=(x1*256+x2)*0.04375; 
  $  005.制动压力传感器值         $    $  deg       $    $  ANS005.BYTE004  $  y = SPRINTF([%u], (x1*256+x2)*0.01);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:736 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
