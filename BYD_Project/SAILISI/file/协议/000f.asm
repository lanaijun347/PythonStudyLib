
    车型ID：000f

    模拟：协议模拟-->000f

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~781

进入命令:

  $~  REQ000:701 02 10 01 00 00 00 00 00       $~  ANS000:781 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:701 02 3E 80 00 00 00 00 00       $!  ANS000:781 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:701 03 19 02 09 00 00 00 00       $#  ANS000:781 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/0e000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:701 04 14 FF FF FF 00 00 00       $$  ANS000:781 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:701 03 22 F1 87 00 00 00 00       $%  ANS000:781 03 22 F1 87 00 00 00 00
  $%  REQ001:701 03 22 F1 8A 00 00 00 00       $%  ANS001:781 03 22 F1 8A 00 00 00 00
  $%  REQ002:701 03 22 F1 97 00 00 00 00       $%  ANS002:781 03 22 F1 97 00 00 00 00
  $%  REQ003:701 03 22 F1 93 00 00 00 00       $%  ANS003:781 03 22 F1 93 00 00 00 00
  $%  REQ004:701 03 22 F1 95 00 00 00 00       $%  ANS004:781 03 22 F1 95 00 00 00 00
  $%  REQ005:701 03 22 F1 8C 00 00 00 00       $%  ANS005:781 03 22 F1 8C 00 00 00 00
  $%  REQ006:701 03 22 F1 90 00 00 00 00       $%  ANS006:781 03 22 F1 90 00 00 00 00
  $%  REQ007:701 03 22 F1 80 00 00 00 00       $%  ANS007:781 03 22 F1 80 00 00 00 00
  $%  REQ008:701 03 22 F0 10 00 00 00 00       $%  ANS008:781 03 22 F0 10 00 00 00 00
  $%  REQ009:701 03 22 16 00 00 00 00 00       $%  ANS009:781 03 22 16 00 00 00 00 00
  $%  REQ010:701 03 22 F1 89 00 00 00 00       $%  ANS010:781 03 22 F1 89 00 00 00 00

  $%  000:零件号:                                              $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  001:系统供应商识别符:                                    $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:系统名称:                                            $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:系统供应商硬件版本号:                                $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:系统供应商软件版本号:                                $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  005:ECU序列号:                                           $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  006:车架号(VIN):                                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:系统供应商ECU Bootloader(引导加载程序)版本号:        $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:下线配置编码:                                        $%    $%  ANS008.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  009:防盗密码匹配状态:                                    $%    $%  ANS009.BYTE004  $%  if(x1==1) y=@014e; else if(x1==2) y=@014f; else y=@0003;
  $%  010:OEM软件版本号:                                       $%    $%  ANS010.BYTE004  $%  0 ASCII

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:701 03 22 16 03 00 00 00 00       $  ANS000:781 03 22 16 03 00 00 00 00
  $  REQ001:701 03 22 16 04 00 00 00 00       $  ANS001:781 03 22 16 04 00 00 00 00
  $  REQ002:701 03 22 CF 00 00 00 00 00       $  ANS002:781 03 22 CF 00 00 00 00 00
  $  REQ003:701 03 22 07 12 00 00 00 00       $  ANS003:781 03 22 07 12 00 00 00 00
  $  REQ004:701 03 22 46 10 00 00 00 00       $  ANS004:781 03 22 46 10 00 00 00 00
  $  REQ005:701 03 22 46 11 00 00 00 00       $  ANS005:781 03 22 46 11 00 00 00 00

  $  000.左前轮胎压传感器ID              $    $       $    $  ANS000.BYTE004  $  y = SPRINTF([%02X%02X%02X%02X], x1,x2,x3,x4);
  $  001.右前轮胎压传感器ID              $    $       $    $  ANS000.BYTE008  $  y = SPRINTF([%02X%02X%02X%02X], x1,x2,x3,x4);
  $  002.右后轮胎压传感器ID              $    $       $    $  ANS000.BYTE012  $  y = SPRINTF([%02X%02X%02X%02X], x1,x2,x3,x4);
  $  003.左后轮胎压传感器ID              $    $       $    $  ANS000.BYTE016  $  y = SPRINTF([%02X%02X%02X%02X], x1,x2,x3,x4);
  $  004.钥匙数量                        $    $       $    $  ANS001.BYTE004  $  y = SPRINTF([%d], x1);
  $  005.电压                            $    $       $    $  ANS002.BYTE004  $  y = SPRINTF([%x.%x], x1,x2);
  $  006.最近一次闭锁和解锁源            $    $       $    $  ANS003.BYTE004  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  007.倒数第2次闭锁和解锁源           $    $       $    $  ANS003.BYTE005  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  008.倒数第3次闭锁和解锁源           $    $       $    $  ANS003.BYTE006  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  009.倒数第4次闭锁和解锁源           $    $       $    $  ANS003.BYTE007  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  010.倒数第5次闭锁和解锁源           $    $       $    $  ANS003.BYTE008  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  011.倒数第6次闭锁和解锁源           $    $       $    $  ANS003.BYTE009  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  012.倒数第7次闭锁和解锁源           $    $       $    $  ANS003.BYTE010  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  013.倒数第8次闭锁和解锁源           $    $       $    $  ANS003.BYTE011  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  014.倒数第9次闭锁和解锁源           $    $       $    $  ANS003.BYTE012  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  015.倒数第10次闭锁和解锁源          $    $       $    $  ANS003.BYTE013  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  016.倒数第11次闭锁和解锁源          $    $       $    $  ANS003.BYTE014  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  017.倒数第12次闭锁和解锁源          $    $       $    $  ANS003.BYTE015  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  018.倒数第13次闭锁和解锁源          $    $       $    $  ANS003.BYTE016  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  019.倒数第14次闭锁和解锁源          $    $       $    $  ANS003.BYTE017  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  020.倒数第15次闭锁和解锁源          $    $       $    $  ANS003.BYTE018  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  021.倒数第16次闭锁和解锁源          $    $       $    $  ANS003.BYTE019  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  022.倒数第17次闭锁和解锁源          $    $       $    $  ANS003.BYTE020  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  023.倒数第18次闭锁和解锁源          $    $       $    $  ANS003.BYTE021  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  024.倒数第19次闭锁和解锁源          $    $       $    $  ANS003.BYTE022  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  025.倒数第20次闭锁和解锁源          $    $       $    $  ANS003.BYTE023  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  026.后雾灯开关                      $    $       $    $  ANS004.BYTE004  $  if(((x1>>6)&1)) y=@00e1;else y=@002b;
  $  027.远光灯开关                      $    $       $    $  ANS004.BYTE004  $  if(((x1>>4)&1)) y=@00e1;else y=@002b;
  $  028.超车灯开关                      $    $       $    $  ANS004.BYTE004  $  if(((x1>>3)&1)) y=@00e1;else y=@002b;
  $  029.自动灯开关                      $    $       $    $  ANS004.BYTE004  $  if(((x1>>2)&1)) y=@00e1;else y=@002b;
  $  030.近光灯开关                      $    $       $    $  ANS004.BYTE004  $  if(((x1>>1)&1)) y=@00e1;else y=@002b;
  $  031.位置灯开关                      $    $       $    $  ANS004.BYTE004  $  if(((x1>>0)&1)) y=@00e1;else y=@002b;
  $  032.刹车开关                        $    $       $    $  ANS004.BYTE005  $  if(((x1>>6)&1)) y=@00e1;else y=@002b;
  $  033.危险报警灯开关                  $    $       $    $  ANS004.BYTE005  $  if(((x1>>5)&1)) y=@00e1;else y=@002b;
  $  034.右转向开开关                    $    $       $    $  ANS004.BYTE005  $  if(((x1>>4)&1)) y=@00e1;else y=@002b;
  $  035.左转向灯开关                    $    $       $    $  ANS004.BYTE005  $  if(((x1>>3)&1)) y=@00e1;else y=@002b;
  $  036.自动雨刮灵敏度调节              $    $       $    $  ANS004.BYTE005  $  switxh(x1&0x07) 0x00: y=@00e8; 0x01: y=@00e9; 0x02: y=@00ea; 0x03: y=@00eb; 0x04: y=@00ec; 0x05: y=@00ed; 0x06: y=@0003; 0x07: y=@0003;
  $  037.后雨刮归位信号                  $    $       $    $  ANS004.BYTE006  $  if(((x1>>7)&1)) y=@00e1;else y=@002b;
  $  038.前雨刮归位信号                  $    $       $    $  ANS004.BYTE006  $  if(((x1>>6)&1)) y=@00e1;else y=@002b;
  $  039.后洗涤开关                      $    $       $    $  ANS004.BYTE006  $  if(((x1>>5)&1)) y=@00e1;else y=@002b;
  $  040.后雨刮开关                      $    $       $    $  ANS004.BYTE006  $  if(((x1>>4)&1)) y=@00e1;else y=@002b;
  $  041.前洗涤开关                      $    $       $    $  ANS004.BYTE006  $  if(((x1>>3)&1)) y=@00e1;else y=@002b;
  $  042.前雨刮自动开关                  $    $       $    $  ANS004.BYTE006  $  if(((x1>>2)&1)) y=@00e1;else y=@002b;
  $  043.前雨刮高速开关                  $    $       $    $  ANS004.BYTE006  $  if(((x1>>1)&1)) y=@00e1;else y=@002b;
  $  044.前雨刮低速开关                  $    $       $    $  ANS004.BYTE006  $  if(((x1>>0)&1)) y=@00e1;else y=@002b;
  $  045.巡航开关                        $    $       $    $  ANS004.BYTE007  $  switxh((x1>>4)&0x07) 0x00: y=@00e2; 0x01: y=@00e3; 0x02: y=@00e4; 0x03: y=@00e5; 0x04: y=@00e6; 0x05: y=@00e7; 0x06: y=@0003; 0x07: y=@0003;
  $  046.加油口盖状态开关                $    $       $    $  ANS004.BYTE007  $  if(((x1>>3)&1)) y=@00e1;else y=@002b;
  $  047.充电口盖状态开关                $    $       $    $  ANS004.BYTE007  $  if(((x1>>2)&1)) y=@00e1;else y=@002b;
  $  048.前舱盖状态开关                  $    $       $    $  ANS005.BYTE004  $  if(((x1>>4)&1)) y=@00e1;else y=@002b;
  $  049.右后门状态开关                  $    $       $    $  ANS005.BYTE004  $  if(((x1>>3)&1)) y=@00e1;else y=@002b;
  $  050.左后门状态开关                  $    $       $    $  ANS005.BYTE004  $  if(((x1>>2)&1)) y=@00e1;else y=@002b;
  $  051.右前门状态开关                  $    $       $    $  ANS005.BYTE004  $  if(((x1>>1)&1)) y=@00e1;else y=@002b;
  $  052.左前门状态开关                  $    $       $    $  ANS005.BYTE004  $  if(((x1>>0)&1)) y=@00e1;else y=@002b;
  $  053.右后儿童锁反馈                  $    $       $    $  ANS005.BYTE005  $  if(((x1>>6)&1)) y=@00e1;else y=@002b;
  $  054.左后儿童锁反馈                  $    $       $    $  ANS005.BYTE005  $  if(((x1>>5)&1)) y=@00e1;else y=@002b;
  $  055.中控解闭锁开关                  $    $       $    $  ANS005.BYTE005  $  if(((x1>>4)&1)) y=@00e1;else y=@002b;
  $  056.主驾重力传感器                  $    $       $    $  ANS005.BYTE005  $  if(((x1>>3)&1)) y=@00e1;else y=@002b;
  $  057.前舱盖内部解锁开关              $    $       $    $  ANS005.BYTE005  $  if(((x1>>2)&1)) y=@00e1;else y=@002b;
  $  058.主驾门锁反馈                    $    $       $    $  ANS005.BYTE005  $  if(((x1>>1)&1)) y=@00e1;else y=@002b;
  $  059.后背门解锁开关                  $    $       $    $  ANS005.BYTE005  $  if(((x1>>0)&1)) y=@00e1;else y=@002b;
  $  060.玻璃顶调光开关                  $    $       $    $  ANS005.BYTE006  $  if(((x1>>3)&1)) y=@00e1;else y=@002b;
  $  061.KL15_2_继电器反馈（IGN2）       $    $       $    $  ANS005.BYTE006  $  if(((x1>>2)&1)) y=@00e1;else y=@002b;
  $  062.KL15_1_继电器反馈（IGN1）       $    $       $    $  ANS005.BYTE006  $  if(((x1>>1)&1)) y=@00e1;else y=@002b;
  $  063.右近光灯故障                    $    $       $    $  ANS005.BYTE007  $  if(((x1>>7)&1)) y=@00e1;else y=@002b;
  $  064.左近光灯故障                    $    $       $    $  ANS005.BYTE007  $  if(((x1>>6)&1)) y=@00e1;else y=@002b;
  $  065.后右固定转向灯故障              $    $       $    $  ANS005.BYTE007  $  if(((x1>>5)&1)) y=@00e1;else y=@002b;
  $  066.后右活动转向灯故障              $    $       $    $  ANS005.BYTE007  $  if(((x1>>4)&1)) y=@00e1;else y=@002b;
  $  067.后左固定转向灯故障              $    $       $    $  ANS005.BYTE007  $  if(((x1>>3)&1)) y=@00e1;else y=@002b;
  $  068.后左活动转向灯故障              $    $       $    $  ANS005.BYTE007  $  if(((x1>>2)&1)) y=@00e1;else y=@002b;
  $  069.前右转向灯故障                  $    $       $    $  ANS005.BYTE007  $  if(((x1>>1)&1)) y=@00e1;else y=@002b;
  $  070.前左转向灯故障                  $    $       $    $  ANS005.BYTE007  $  if(((x1>>0)&1)) y=@00e1;else y=@002b;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:701 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
