
    车型ID：2508

    模拟：协议模拟-->2508

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:766 02 10 01 00 00 00 00 00       $~  ANS000:76E 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:766 02 3E 80 00 00 00 00 00       $!  ANS000:76E 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:766 03 19 02 09 00 00 00 00       $#  ANS000:76E 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/0b000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:766 04 14 FF FF FF 00 00 00       $$  ANS000:76E 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:766 03 22 F1 93 00 00 00 00       $%  ANS000:76E 03 22 F1 93 00 00 00 00
  $%  REQ001:766 03 22 F1 94 00 00 00 00       $%  ANS001:76E 03 22 F1 94 00 00 00 00
  $%  REQ002:766 03 22 F1 95 00 00 00 00       $%  ANS002:76E 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:766 03 22 00 04 00 00 00 00       $  ANS000:76E 03 22 00 04 00 00 00 00
  $  REQ001:766 03 22 00 05 00 00 00 00       $  ANS001:76E 03 22 00 05 00 00 00 00
  $  REQ002:766 03 22 00 06 00 00 00 00       $  ANS002:76E 03 22 00 06 00 00 00 00
  $  REQ003:766 03 22 00 07 00 00 00 00       $  ANS003:76E 03 22 00 07 00 00 00 00
  $  REQ004:766 03 22 00 08 00 00 00 00       $  ANS004:76E 03 22 00 08 00 00 00 00
  $  REQ005:766 03 22 00 10 00 00 00 00       $  ANS005:76E 03 22 00 10 00 00 00 00
  $  REQ006:766 03 22 00 11 00 00 00 00       $  ANS006:76E 03 22 00 11 00 00 00 00
  $  REQ007:766 03 22 00 12 00 00 00 00       $  ANS007:76E 03 22 00 12 00 00 00 00
  $  REQ008:766 03 22 00 13 00 00 00 00       $  ANS008:76E 03 22 00 13 00 00 00 00
  $  REQ009:766 03 22 00 14 00 00 00 00       $  ANS009:76E 03 22 00 14 00 00 00 00

  $  000:散热片温度           $    $  degree C     $    $  ANS000.BYTE004  $  if((x1>=0)&&(x1<=170)) y=x1;else if((x1==208)) y=@0193;else if((x1==216)) y=@03a0;else y=@001c;
  $  001:PTC预置档位          $    $  %            $    $  ANS001.BYTE004  $  y=x1;
  $  002:PTC实际档位          $    $  %            $    $  ANS002.BYTE004  $  y=x1;
  $  003:右侧散热片温度       $    $  degree C     $    $  ANS003.BYTE004  $  if((x1>=0)&&(x1<=170)) y=x1;else if((x1==208)) y=@0193;else if((x1==216)) y=@03a0;else y=@001c;
  $  004:冷却液温度           $    $  degree C     $    $  ANS004.BYTE004  $  if((x1>=0)&&(x1<=170)) y=x1;else if((x1==208)) y=@0193;else if((x1==216)) y=@03a0;else y=@001c;
  $  005:低压侧电源           $    $  V            $    $  ANS005.BYTE004  $  y=((x1<<8)+x2)*0.1;
  $  006:高压侧电源           $    $  V            $    $  ANS006.BYTE004  $  y=(x1<<8)+x2;
  $  007:负载电流             $    $  A            $    $  ANS007.BYTE004  $  y=((x1<<8)+x2)*0.1;
  $  008:PTC消耗功率          $    $  W            $    $  ANS008.BYTE004  $  y=(x1<<8)+x2;
  $  009:PTC控制板温度        $    $  degree C     $    $  ANS009.BYTE004  $  if((x1>=0)&&(x1<=170)) y=x1;else if((x1==208)) y=@0193;else if((x1==216)) y=@03a0;else y=@001c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:766 30 01 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
