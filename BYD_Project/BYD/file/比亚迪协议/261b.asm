
    车型ID：261b

    模拟：协议模拟-->261b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7A5 02 10 01 00 00 00 00 00       $~  ANS000:7AD 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A5 02 3E 80 00 00 00 00 00       $!  ANS000:7AD 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7A5 03 19 02 09 00 00 00 00       $#  ANS000:7AD 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/3a000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A5 04 14 FF FF FF 00 00 00       $$  ANS000:7AD 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A5 03 22 F1 93 00 00 00 00       $%  ANS000:7AD 03 22 F1 93 00 00 00 00
  $%  REQ001:7A5 03 22 F1 94 00 00 00 00       $%  ANS001:7AD 03 22 F1 94 00 00 00 00
  $%  REQ002:7A5 03 22 F1 95 00 00 00 00       $%  ANS002:7AD 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7A5 03 22 00 04 00 00 00 00       $  ANS000:7AD 03 22 00 04 00 00 00 00
  $  REQ001:7A5 03 22 00 05 00 00 00 00       $  ANS001:7AD 03 22 00 05 00 00 00 00
  $  REQ002:7A5 03 22 00 06 00 00 00 00       $  ANS002:7AD 03 22 00 06 00 00 00 00
  $  REQ003:7A5 03 22 00 10 00 00 00 00       $  ANS003:7AD 03 22 00 10 00 00 00 00

  $  000:P档1号霍尔AD采集值         $    $       $    $  ANS000.BYTE004  $  y=x1;
  $  001:P档2号霍尔AD采集值         $    $       $    $  ANS000.BYTE005  $  y=x1;
  $  002:R档1号霍尔AD采集值         $    $       $    $  ANS000.BYTE006  $  y=x1;
  $  003:R档2号霍尔AD采集值         $    $       $    $  ANS000.BYTE007  $  y=x1;
  $  004:N档1号霍尔AD采集值         $    $       $    $  ANS000.BYTE008  $  y=x1;
  $  005:N档2号霍尔AD采集值         $    $       $    $  ANS000.BYTE009  $  y=x1;
  $  006:D档1号霍尔AD采集值         $    $       $    $  ANS000.BYTE010  $  y=x1;
  $  007:D档2号霍尔AD采集值         $    $       $    $  ANS000.BYTE011  $  y=x1;
  $  008:S档信号AD采集              $    $       $    $  ANS001.BYTE004  $  y=x1;
  $  009:＋档信号AD采集             $    $       $    $  ANS001.BYTE005  $  y=x1;
  $  010:—档信号AD采集             $    $       $    $  ANS001.BYTE006  $  y=x1;
  $  011:PCB序列号                  $    $       $    $  ANS002.BYTE004  $  ASCII(x17,x16,x15,x14,x13,x12,x11,x10,x9,x8,x7,x6,x5,x4,x3,x2,x1);
  $  012:白天挡位指示灯占空比       $    $       $    $  ANS003.BYTE004  $  y=((x1<<8)+x2)*1.0/4000;
  $  013:夜间挡位指示灯占空比       $    $       $    $  ANS003.BYTE006  $  y=((x1<<8)+x2)*1.0/4000;
  $  014:夜间P挡背光占空比          $    $       $    $  ANS003.BYTE008  $  y=((x1<<8)+x2)*1.0/4000;
  $  015:夜间R挡背光占空比          $    $       $    $  ANS003.BYTE010  $  y=((x1<<8)+x2)*1.0/4000;
  $  016:夜间N挡背光占空比          $    $       $    $  ANS003.BYTE012  $  y=((x1<<8)+x2)*1.0/4000;
  $  017:夜间D挡背光占空比          $    $       $    $  ANS003.BYTE014  $  y=((x1<<8)+x2)*1.0/4000;
  $  018:夜间S挡背光占空比          $    $       $    $  ANS003.BYTE016  $  y=((x1<<8)+x2)*1.0/4000;
  $  019:夜间+/-挡背光占空比        $    $       $    $  ANS003.BYTE018  $  y=((x1<<8)+x2)*1.0/4000;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A5 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
