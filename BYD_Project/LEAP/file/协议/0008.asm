
    车型ID：0008

    模拟：协议模拟-->0008

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~72E

进入命令:

  $~  REQ000:726 02 10 01 00 00 00 00 00       $~  ANS000:72E 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:726 02 3E 80 00 00 00 00 00       $!  ANS000:72E 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:726 03 19 02 09 00 00 00 00       $#  ANS000:72E 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/06000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:726 04 14 FF FF FF 00 00 00       $$  ANS000:72E 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:726 03 22 F1 B0 00 00 00 00       $%  ANS000:72E 03 22 F1 B0 00 00 00 00
  $%  REQ001:726 03 22 F1 90 00 00 00 00       $%  ANS001:72E 03 22 F1 90 00 00 00 00
  $%  REQ002:726 03 22 F1 87 00 00 00 00       $%  ANS002:72E 03 22 F1 87 00 00 00 00
  $%  REQ003:726 03 22 F1 8B 00 00 00 00       $%  ANS003:72E 03 22 F1 8B 00 00 00 00
  $%  REQ004:726 03 22 F1 50 00 00 00 00       $%  ANS004:72E 03 22 F1 50 00 00 00 00
  $%  REQ005:726 03 22 F1 89 00 00 00 00       $%  ANS005:72E 03 22 F1 89 00 00 00 00
  $%  REQ006:726 03 22 F1 80 00 00 00 00       $%  ANS006:72E 03 22 F1 80 00 00 00 00
  $%  REQ007:726 03 22 F1 99 00 00 00 00       $%  ANS007:72E 03 22 F1 99 00 00 00 00
  $%  REQ008:726 03 22 03 11 00 00 00 00       $%  ANS008:72E 03 22 03 11 00 00 00 00

  $%  000:车型代码:                  $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  001:VIN码:                     $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  002:物料号:                    $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  003:ECU生厂日期:               $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  004:车厂ECU硬件版本号:         $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  005:车厂ECU软件版本号:         $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  006:Boot软件标识:              $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  007:升级程序日期:              $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  008:自动泊车库更新日期:        $%    $%  ANS008.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.盲区状态
  $  00.盲区状态
  $  REQ000:726 03 22 03 00 00 00 00 00       $  ANS000:72E 03 22 03 00 00 00 00 00

  $  000.前左探头盲区状态         $    $       $    $  ANS000.BYTE004  $  if(((x1>>0)&1)) y=@0004;else y=@008a;
  $  001.前左中探头盲区状态       $    $       $    $  ANS000.BYTE004  $  if(((x1>>1)&1)) y=@0004;else y=@008a;
  $  002.前右中探头盲区状态       $    $       $    $  ANS000.BYTE004  $  if(((x1>>2)&1)) y=@0004;else y=@008a;
  $  003.前右探头盲区状态         $    $       $    $  ANS000.BYTE004  $  if(((x1>>3)&1)) y=@0004;else y=@008a;
  $  004.前左盲探头盲区状态       $    $       $    $  ANS000.BYTE004  $  if(((x1>>4)&1)) y=@0004;else y=@008a;
  $  005.前右盲探头盲区状态       $    $       $    $  ANS000.BYTE004  $  if(((x1>>5)&1)) y=@0004;else y=@008a;
  $  006.后左盲探头盲区状态       $    $       $    $  ANS000.BYTE004  $  if(((x1>>6)&1)) y=@0004;else y=@008a;
  $  007.后右盲探头盲区状态       $    $       $    $  ANS000.BYTE004  $  if(((x1>>7)&1)) y=@0004;else y=@008a;
  $  008.后左探头盲区状态         $    $       $    $  ANS000.BYTE005  $  if(((x1>>0)&1)) y=@0004;else y=@008a;
  $  009.后左中探头盲区状态       $    $       $    $  ANS000.BYTE005  $  if(((x1>>1)&1)) y=@0004;else y=@008a;
  $  010.后右中探头盲区状态       $    $       $    $  ANS000.BYTE005  $  if(((x1>>2)&1)) y=@0004;else y=@008a;
  $  011.后右探头盲区状态         $    $       $    $  ANS000.BYTE005  $  if(((x1>>3)&1)) y=@0004;else y=@008a;

  $)  01.最后一次泊车完成状态
  $  01.最后一次泊车完成状态
  $  REQ000:726 03 22 03 01 00 00 00 00       $  ANS000:72E 03 22 03 01 00 00 00 00

  $  000.水平/垂直泊车       $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x03) 0x00: y=@005a; 0x01: y=@005b; default: y=@005c;
  $  001.左右泊车            $    $       $    $  ANS000.BYTE004  $  switxh((x1>>2)&0x03) 0x00: y=@0066; 0x01: y=@0067; default: y=@005c;
  $  002.泊车是否成功        $    $       $    $  ANS000.BYTE004  $  if(((x1>>4)&1)) y=@0007;else y=@0068;
  $  003.失败原因            $    $       $    $  ANS000.BYTE005  $  if(x1==0) y=@0069;else if(x1==1) y=@006a;else if(x1==2) y=@006b;else if(x1==3) y=@006c;else if(x1==4) y=@006d;else if(x1==5) y=@006e;else if(x1==6) y=@005c;else if(x1==7) y=@006f;else if(x1==8) y=@0070;else if(x1==9) y=@0071;else if(x1==10) y=@0072;else if(x1==11) y=@0073;else if(x1==12) y=@0074;else if(x1==13) y=@0075;else if(x1==14) y=@0076;else if(x1==15) y=@00c8;else if(x1==16) y=@00c9;else if(x1==17) y=@00ca;else if(x1==18) y=@00cb;else if(x1==19) y=@00cc;else if(x1==20) y=@00cd;else if(x1==21) y=@00ce;else if(x1==22) y=@00cf;else if(x1==23) y=@00d0;else if(x1==24) y=@00d1;else if(x1==25) y=@00d2;else if(x1==26) y=@00d3;else if(x1==27) y=@00d4;else if(x1==28) y=@00d5;else if(x1==29) y=@00d6;else if(x1==30) y=@00d7;else if(x1==31) y=@00d8;else if(x1==32) y=@00d9;else if(x1==33) y=@00da;else if(x1==34) y=@00db;else if(x1==35) y=@00dc;else if(x1==36) y=@00dd;else if(x1==37) y=@00de;else if(x1==38) y=@00df;else if(x1==39) y=@00e0;else if(x1==40) y=@00e1;else if(x1==41) y=@00e2;else if(x1==42) y=@00e3;else if(x1==43) y=@00e4;else if(x1==44) y=@00e5;else if(x1==45) y=@00e6;else y=@005c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:726 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
