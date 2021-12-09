
    车型ID：270b

    模拟：协议模拟-->270b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:767 02 10 01 00 00 00 00 00       $~  ANS000:76F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:767 02 3E 80 00 00 00 00 00       $!  ANS000:76F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:767 03 19 02 09 00 00 00 00       $#  ANS000:76F 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/47000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:767 04 14 FF FF FF 00 00 00       $$  ANS000:76F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:767 03 22 F1 93 00 00 00 00       $%  ANS000:76F 03 22 F1 93 00 00 00 00
  $%  REQ001:767 03 22 F1 94 00 00 00 00       $%  ANS001:76F 03 22 F1 94 00 00 00 00
  $%  REQ002:767 03 22 F1 95 00 00 00 00       $%  ANS002:76F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:767 03 22 00 04 00 00 00 00       $  ANS000:76F 03 22 00 04 00 00 00 00
  $  REQ001:767 03 22 00 05 00 00 00 00       $  ANS001:76F 03 22 00 05 00 00 00 00
  $  REQ002:767 03 22 00 06 00 00 00 00       $  ANS002:76F 03 22 00 06 00 00 00 00
  $  REQ003:767 03 22 00 07 00 00 00 00       $  ANS003:76F 03 22 00 07 00 00 00 00
  $  REQ004:767 03 22 B0 03 00 00 00 00       $  ANS004:76F 03 22 B0 03 00 00 00 00
  $  REQ005:767 03 22 B0 04 00 00 00 00       $  ANS005:76F 03 22 B0 04 00 00 00 00
  $  REQ006:767 03 22 B0 05 00 00 00 00       $  ANS006:76F 03 22 B0 05 00 00 00 00
  $  REQ007:767 03 22 B0 06 00 00 00 00       $  ANS007:76F 03 22 B0 06 00 00 00 00
  $  REQ008:767 03 22 B0 07 00 00 00 00       $  ANS008:76F 03 22 B0 07 00 00 00 00

  $  000:座椅水平调节                   $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x03)0x00: y=@00d2;0x01: y=@05ce;0x02: y=@05cf;default: y=@001c;
  $  001:高度调节                       $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x0C)0x00: y=@00d2;0x04: y=@046e;0x08: y=@046f;default: y=@001c;
  $  002:靠背调节                       $    $       $    $  ANS000.BYTE004  $  switxh(x1&0x30)0x00: y=@00d2;0x10: y=@05d0;0x20: y=@05d1;default: y=@001c;
  $  003:座椅通风总档位数               $    $       $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@05cd;0x01: y=@009e;default: y=@001c;
  $  004:座椅通风当前档位               $    $       $    $  ANS001.BYTE005  $  switxh(x1)0x00: y=@0005;0x01: y=@0295;0x02: y=@009e;0x03: y=@0294;default: y=@001c;
  $  005:座椅加热总档位数               $    $       $    $  ANS002.BYTE004  $  switxh(x1)0x00: y=@05cd;0x01: y=@009e;default: y=@001c;
  $  006:座椅加热当前档位               $    $       $    $  ANS002.BYTE005  $  switxh(x1)0x00: y=@0005;0x01: y=@0295;0x02: y=@009e;0x03: y=@0294;default: y=@001c;
  $  007:座椅通风按键                   $    $       $    $  ANS003.BYTE004  $  if(x1&0x10) y=@002e;else y=@003e;
  $  008:座椅加热按键                   $    $       $    $  ANS003.BYTE004  $  if(x1&0x20) y=@002e;else y=@003e;
  $  009:副驾通风开关次数               $    $       $    $  ANS004.BYTE004  $  y=(x2<<8)+x1;
  $  010:副驾加热开关次数               $    $       $    $  ANS004.BYTE006  $  y=(x2<<8)+x1;
  $  011:副驾向前调节开关次数           $    $       $    $  ANS005.BYTE004  $  y=(x2<<8)+x1;
  $  012:副驾向后调节开关次数           $    $       $    $  ANS005.BYTE006  $  y=(x2<<8)+x1;
  $  013:副驾靠背向前调节开关次数       $    $       $    $  ANS006.BYTE004  $  y=(x2<<8)+x1;
  $  014:副驾靠背向后调节开关次数       $    $       $    $  ANS006.BYTE006  $  y=(x2<<8)+x1;
  $  015:副驾高度向上调节开关次数       $    $       $    $  ANS007.BYTE004  $  y=(x2<<8)+x1;
  $  016:副驾高度向下调节开关次数       $    $       $    $  ANS007.BYTE006  $  y=(x2<<8)+x1;
  $  017:副驾座盆向上调节开关次数       $    $       $    $  ANS008.BYTE004  $  y=(x2<<8)+x1;
  $  018:副驾座盆向下开关次数           $    $       $    $  ANS008.BYTE006  $  y=(x2<<8)+x1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:767 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
