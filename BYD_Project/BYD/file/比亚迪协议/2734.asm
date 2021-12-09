
    车型ID：2734

    模拟：协议模拟-->2734

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:754 02 10 01 00 00 00 00 00       $~  ANS000:75C 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:754 02 3E 80 00 00 00 00 00       $!  ANS000:75C 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:754 03 19 02 09 00 00 00 00       $#  ANS000:75C 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/66000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:754 04 14 FF FF FF 00 00 00       $$  ANS000:75C 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:754 03 22 F1 93 00 00 00 00       $%  ANS000:75C 03 22 F1 93 00 00 00 00
  $%  REQ001:754 03 22 F1 94 00 00 00 00       $%  ANS001:75C 03 22 F1 94 00 00 00 00
  $%  REQ002:754 03 22 F1 95 00 00 00 00       $%  ANS002:75C 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:754 03 22 00 04 00 00 00 00       $  ANS000:75C 03 22 00 04 00 00 00 00
  $  REQ001:754 03 22 00 05 00 00 00 00       $  ANS001:75C 03 22 00 05 00 00 00 00
  $  REQ002:754 03 22 00 06 00 00 00 00       $  ANS002:75C 03 22 00 06 00 00 00 00
  $  REQ003:754 03 22 00 07 00 00 00 00       $  ANS003:75C 03 22 00 07 00 00 00 00
  $  REQ004:754 03 22 00 0C 00 00 00 00       $  ANS004:75C 03 22 00 0C 00 00 00 00
  $  REQ005:754 03 22 00 0D 00 00 00 00       $  ANS005:75C 03 22 00 0D 00 00 00 00
  $  REQ006:754 03 22 00 0E 00 00 00 00       $  ANS006:75C 03 22 00 0E 00 00 00 00
  $  REQ007:754 03 22 00 0F 00 00 00 00       $  ANS007:75C 03 22 00 0F 00 00 00 00

  $  000:左前轮ID             $    $          $    $  ANS000.BYTE004  $  y=SPRINTF([%02X%02X%02X%02X],x1,x2,x3,x4);
  $  001:左前轮信号状态       $    $          $    $  ANS000.BYTE008  $  switxh(x1)0x00: y=@0022;0x01: y=@0099;0xFF: y=@0353;default: y=@001c;
  $  002:左前轮漏气状态       $    $          $    $  ANS000.BYTE009  $  switxh(x1&0x03)0x00: y=@0022;0x01: y=@03a3;0x02: y=@03a4;default: y=@001c;
  $  003:左前轮压力状态       $    $          $    $  ANS000.BYTE009  $  switxh(x1&0x0C)0x00: y=@0022;0x04: y=@03a1;0x08: y=@03a2;default: y=@001c;
  $  004:左前轮压力值         $    $  kPa     $    $  ANS000.BYTE010  $  y=(x2<<8)+x1;
  $  005:右前轮ID             $    $          $    $  ANS001.BYTE004  $  y=SPRINTF([%02X%02X%02X%02X],x1,x2,x3,x4);
  $  006:右前轮信号状态       $    $          $    $  ANS001.BYTE008  $  switxh(x1)0x00: y=@0022;0x01: y=@0099;0xFF: y=@0353;default: y=@001c;
  $  007:右前轮漏气状态       $    $          $    $  ANS001.BYTE009  $  switxh(x1&0x03)0x00: y=@0022;0x01: y=@03a3;0x02: y=@03a4;default: y=@001c;
  $  008:右前轮压力状态       $    $          $    $  ANS001.BYTE009  $  switxh(x1&0x0C)0x00: y=@0022;0x04: y=@03a1;0x08: y=@03a2;default: y=@001c;
  $  009:右前轮压力值         $    $  kPa     $    $  ANS001.BYTE010  $  y=((x2<<8)+x1)&0x0FFF;
  $  010:左后轮ID             $    $          $    $  ANS002.BYTE004  $  y=SPRINTF([%02X%02X%02X%02X],x1,x2,x3,x4);
  $  011:左后轮信号状态       $    $          $    $  ANS002.BYTE008  $  switxh(x1)0x00: y=@0022;0x01: y=@0099;0xFF: y=@0353;default: y=@001c;
  $  012:左后轮漏气状态       $    $          $    $  ANS002.BYTE009  $  switxh(x1&0x03)0x00: y=@0022;0x01: y=@03a3;0x02: y=@03a4;default: y=@001c;
  $  013:左后轮压力状态       $    $          $    $  ANS002.BYTE009  $  switxh(x1&0x0C)0x00: y=@0022;0x04: y=@03a1;0x08: y=@03a2;default: y=@001c;
  $  014:左后轮压力值         $    $  kPa     $    $  ANS002.BYTE010  $  y=((x2<<8)+x1)&0x0FFF;
  $  015:右后轮ID             $    $          $    $  ANS003.BYTE004  $  y=SPRINTF([%02X%02X%02X%02X],x1,x2,x3,x4);
  $  016:右后轮信号状态       $    $          $    $  ANS003.BYTE008  $  switxh(x1)0x00: y=@0022;0x01: y=@0099;0xFF: y=@0353;default: y=@001c;
  $  017:右后轮漏气状态       $    $          $    $  ANS003.BYTE009  $  switxh(x1&0x03)0x00: y=@0022;0x01: y=@03a3;0x02: y=@03a4;default: y=@001c;
  $  018:右后轮压力状态       $    $          $    $  ANS003.BYTE009  $  switxh(x1&0x0C)0x00: y=@0022;0x04: y=@03a1;0x08: y=@03a2;default: y=@001c;
  $  019:右后轮压力值         $    $  kPa     $    $  ANS003.BYTE010  $  y=((x2<<8)+x1)&0x0FFF;
  $  020:前轴标准压力         $    $  kPa     $    $  ANS004.BYTE004  $  y=(x2<<8)+x1;
  $  021:后轴标准压力         $    $  kPa     $    $  ANS005.BYTE004  $  y=(x2<<8)+x1;
  $  022:自定位功能           $    $          $    $  ANS006.BYTE004  $  switxh(x1)0x00: y=@047c;0x01: y=@047d;default: y=@001c;
  $  023:国标/欧标            $    $          $    $  ANS007.BYTE004  $  switxh(x1)0x00: y=@03b6;0x01: y=@03b9;default: y=@001c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:754 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
