
    车型ID：2503

    模拟：协议模拟-->2503

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:750 02 10 01 00 00 00 00 00       $~  ANS000:758 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:750 02 3E 80 00 00 00 00 00       $!  ANS000:758 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:750 03 19 02 09 00 00 00 00       $#  ANS000:758 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/08000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:750 04 14 FF FF FF 00 00 00       $$  ANS000:758 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:750 03 22 F1 93 00 00 00 00       $%  ANS000:758 03 22 F1 93 00 00 00 00
  $%  REQ001:750 03 22 F1 94 00 00 00 00       $%  ANS001:758 03 22 F1 94 00 00 00 00
  $%  REQ002:750 03 22 F1 95 00 00 00 00       $%  ANS002:758 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:750 03 22 00 04 00 00 00 00       $  ANS000:758 03 22 00 04 00 00 00 00
  $  REQ001:750 03 22 00 05 00 00 00 00       $  ANS001:758 03 22 00 05 00 00 00 00

  $  000:靠背后倾                   $    $        $    $  ANS000.BYTE004  $  if(x1&0x01) y=@00d3;else y=@00d4;
  $  001:靠背前倾                   $    $        $    $  ANS000.BYTE004  $  if(x1&0x02) y=@00d3;else y=@00d4;
  $  002:座盆下调                   $    $        $    $  ANS000.BYTE004  $  if(x1&0x04) y=@00d3;else y=@00d4;
  $  003:座盆上调                   $    $        $    $  ANS000.BYTE004  $  if(x1&0x08) y=@00d3;else y=@00d4;
  $  004:高度下调                   $    $        $    $  ANS000.BYTE004  $  if(x1&0x10) y=@00d3;else y=@00d4;
  $  005:高度上调                   $    $        $    $  ANS000.BYTE004  $  if(x1&0x20) y=@00d3;else y=@00d4;
  $  006:水平后滑                   $    $        $    $  ANS000.BYTE004  $  if(x1&0x40) y=@00d3;else y=@00d4;
  $  007:水平前滑                   $    $        $    $  ANS000.BYTE004  $  if(x1&0x80) y=@00d3;else y=@00d4;
  $  008:加热开关低温档             $    $        $    $  ANS000.BYTE005  $  if(x1&0x01) y=@00d3;else y=@00d4;
  $  009:加热开关高温档             $    $        $    $  ANS000.BYTE005  $  if(x1&0x02) y=@00d3;else y=@00d4;
  $  010:通风开关低速档             $    $        $    $  ANS000.BYTE005  $  if(x1&0x04) y=@00d3;else y=@00d4;
  $  011:通风开关高速档             $    $        $    $  ANS000.BYTE005  $  if(x1&0x08) y=@00d3;else y=@00d4;
  $  012:座椅系统状态信息           $    $        $    $  ANS000.BYTE005  $  if(x1&0x10) y=@003a;else y=@0022;
  $  013:座椅工作状态               $    $        $    $  ANS000.BYTE005  $  switxh(x1&0xE0)0x00: y=@0259;0x20: y=@025a;0x40: y=@025b;0x60: y=@0476;0x80: y=@0260;default: y=@001c;
  $  014:通风加热工作状态           $    $        $    $  ANS000.BYTE006  $  switxh(x1&0x07)0x00: y=@02df;0x01: y=@0477;0x02: y=@0478;0x03: y=@0479;0x04: y=@047a;default: y=@001c;
  $  015:电源档位状态               $    $        $    $  ANS000.BYTE006  $  switxh(x1&0x18)0x00: y=@00d3;0x08: y=@025c;0x10: y=@00d4;default: y=@001c;
  $  016:副驾通风加热工作状态       $    $        $    $  ANS000.BYTE006  $  switxh(x1&0xE0)0x00: y=@02df;0x20: y=@0477;0x40: y=@0478;0x60: y=@0479;0x80: y=@047a;default: y=@001c;
  $  017:副驾加热开关低温档         $    $        $    $  ANS000.BYTE006  $  if(x1&0x40) y=@00d3;else y=@00d4;
  $  018:副驾加热开关高温档         $    $        $    $  ANS000.BYTE006  $  if(x1&0x80) y=@00d3;else y=@00d4;
  $  019:副驾通风开关低速档         $    $        $    $  ANS000.BYTE007  $  if(x1&0x01) y=@00d3;else y=@00d4;
  $  020:副驾通风开关高速档         $    $        $    $  ANS000.BYTE007  $  if(x1&0x02) y=@00d3;else y=@00d4;
  $  021:电源电压                   $    $  V     $    $  ANS001.BYTE004  $  y=x1*0.078;
  $  022:水平调节电机当前位置       $    $        $    $  ANS001.BYTE005  $  y=(x1<<8)+x2;
  $  023:靠背调节电机当前位置       $    $        $    $  ANS001.BYTE007  $  y=(x1<<8)+x2;
  $  024:座盆调节电机当前位置       $    $        $    $  ANS001.BYTE009  $  y=(x1<<8)+x2;
  $  025:高度调节电机当前位置       $    $        $    $  ANS001.BYTE011  $  y=(x1<<8)+x2;
  $  026:水平调节电机行程           $    $        $    $  ANS001.BYTE013  $  y=(x1<<8)+x2;
  $  027:靠背调节电机行程           $    $        $    $  ANS001.BYTE015  $  y=(x1<<8)+x2;
  $  028:座盆调节电机行程           $    $        $    $  ANS001.BYTE017  $  y=(x1<<8)+x2;
  $  029:高度调节电机行程           $    $        $    $  ANS001.BYTE019  $  y=(x1<<8)+x2;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:750 30 01 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
