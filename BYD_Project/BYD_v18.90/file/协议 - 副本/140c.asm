
    车型ID：140c

    模拟：协议模拟-->140c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~72D

进入命令:

  $~  REQ000:725 02 10 01 00 00 00 00 00       $~  ANS000:72D 02 10 01 00 00 00 00 00
  $~  REQ001:725 02 10 01 00 00 00 00 00       $~  ANS001:72D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:725 02 3E 80 00 00 00 00 00       $!  ANS000:72D 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:725 03 19 02 09 00 00 00 00       $#  ANS000:72D 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/feff0000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:725 04 14 FF FF FF 00 00 00       $$  ANS000:72D 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:725 03 22 F1 93 00 00 00 00       $%  ANS000:72D 03 22 F1 93 00 00 00 00
  $%  REQ001:725 03 22 F1 94 00 00 00 00       $%  ANS001:72D 03 22 F1 94 00 00 00 00
  $%  REQ002:725 03 22 F1 95 00 00 00 00       $%  ANS002:72D 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:725 03 22 00 03 00 00 00 00       $  ANS000:72D 03 22 00 03 00 00 00 00
  $  REQ001:725 03 22 00 04 00 00 00 00       $  ANS001:72D 03 22 00 04 00 00 00 00
  $  REQ002:725 03 22 00 06 00 00 00 00       $  ANS002:72D 03 22 00 06 00 00 00 00
  $  REQ003:725 03 22 B0 00 00 00 00 00       $  ANS003:72D 03 22 B0 00 00 00 00 00
  $  REQ004:725 03 22 B0 01 00 00 00 00       $  ANS004:72D 03 22 B0 01 00 00 00 00
  $  REQ005:725 03 22 B0 02 00 00 00 00       $  ANS005:72D 03 22 B0 02 00 00 00 00
  $  REQ006:725 03 22 B0 03 00 00 00 00       $  ANS006:72D 03 22 B0 03 00 00 00 00
  $  REQ007:725 03 22 B0 04 00 00 00 00       $  ANS007:72D 03 22 B0 04 00 00 00 00
  $  REQ008:725 03 22 B0 05 00 00 00 00       $  ANS008:72D 03 22 B0 05 00 00 00 00
  $  REQ009:725 03 22 B0 06 00 00 00 00       $  ANS009:72D 03 22 B0 06 00 00 00 00
  $  REQ010:725 03 22 B0 07 00 00 00 00       $  ANS010:72D 03 22 B0 07 00 00 00 00
  $  REQ011:725 03 22 B0 09 00 00 00 00       $  ANS011:72D 03 22 B0 09 00 00 00 00
  $  REQ012:725 03 22 B0 0A 00 00 00 00       $  ANS012:72D 03 22 B0 0A 00 00 00 00
  $  REQ013:725 03 22 B0 0B 00 00 00 00       $  ANS013:72D 03 22 B0 0B 00 00 00 00
  $  REQ014:725 03 22 B0 0C 00 00 00 00       $  ANS014:72D 03 22 B0 0C 00 00 00 00
  $  REQ015:725 03 22 B0 0D 00 00 00 00       $  ANS015:72D 03 22 B0 0D 00 00 00 00
  $  REQ016:725 03 22 B0 0E 00 00 00 00       $  ANS016:72D 03 22 B0 0E 00 00 00 00
  $  REQ017:725 03 22 B0 0F 00 00 00 00       $  ANS017:72D 03 22 B0 0F 00 00 00 00
  $  REQ018:725 03 22 B0 10 00 00 00 00       $  ANS018:72D 03 22 B0 10 00 00 00 00
  $  REQ019:725 03 22 B0 11 00 00 00 00       $  ANS019:72D 03 22 B0 11 00 00 00 00

  $  000.远光灯开关                       $    $         $    $  ANS000.BYTE004  $  if(x1&0x10)y=@001e;else y=@001d;
  $  001.会车灯开关                       $    $         $    $  ANS000.BYTE004  $  if(x1&0x20)y=@001e;else y=@001d;
  $  002.左转向灯开关                     $    $         $    $  ANS000.BYTE004  $  if(x1&0x40)y=@001e;else y=@001d;
  $  003.右转向灯开关                     $    $         $    $  ANS000.BYTE004  $  if(x1&0x80)y=@001e;else y=@001d;
  $  004.前刮水器MIST(单次刮擦)开关       $    $         $    $  ANS001.BYTE004  $  if(x1&0x01)y=@001e;else y=@001d;
  $  005.前刮水器HI(高速)档开关           $    $         $    $  ANS001.BYTE004  $  if(x1&0x02)y=@001e;else y=@001d;
  $  006.前刮水器LO(低速)档开关           $    $         $    $  ANS001.BYTE004  $  if(x1&0x04)y=@001e;else y=@001d;
  $  007.前刮水器INT(间歇)开关            $    $         $    $  ANS001.BYTE004  $  if((x1&0x7F)<0x10)y=@09f3;else if((x1&0x7F)<0x20)y=@09f4;else if((x1&0x7F)<0x30)y=@09f5;else if((x1&0x7F)<0x40)y=@09f6;else if((x1&0x7F)<0x50)y=@003e;else y=@0001;
  $  008.前洗涤器开关                     $    $         $    $  ANS001.BYTE005  $  if(x1&0x08)y=@001e;else y=@001d;
  $  009.后雨刮开关                       $    $         $    $  ANS001.BYTE005  $  if(x1&0x10)y=@001e;else y=@001d;
  $  010.后洗涤开关                       $    $         $    $  ANS001.BYTE005  $  if(x1&0x20)y=@001e;else y=@001d;
  $  011.方向盘位置调节信号               $    $         $    $  ANS002.BYTE004  $  switxh(x1&0x07)0x00: y=@0003;0x01: y=@09f7;0x02: y=@09f8;0x03: y=@09f9;0x04: y=@09fa;0x05: y=@001e;default:y=@0001;
  $  012.方向盘加热                       $    $         $    $  ANS002.BYTE004  $  if((x1&0x3F)<0x08)y=@001d;else if((x1&0x3F)<0x10)y=@001e;else y=@0001;
  $  013.当前低压电源电压值               $    $  V      $    $  ANS003.BYTE004  $  y=SPRINTF([%.1f],(x1*256+x2)/10);
  $  014.左转向灯开关次数                 $    $  次     $    $  ANS004.BYTE004  $  y=x3+x2*256+x1*256*256;
  $  015.右转向灯开关次数                 $    $  次     $    $  ANS004.BYTE007  $  y=x3+x2*256+x1*256*256;
  $  016.超车灯开关次数                   $    $  次     $    $  ANS005.BYTE004  $  y=x3+x2*256+x1*256*256;
  $  017.INT1档次数                       $    $  次     $    $  ANS006.BYTE004  $  y=x3+x2*256+x1*256*256;
  $  018.INT2档次数                       $    $  次     $    $  ANS006.BYTE007  $  y=x3+x2*256+x1*256*256;
  $  019.INT3档次数                       $    $  次     $    $  ANS007.BYTE004  $  y=x3+x2*256+x1*256*256;
  $  020.INT4档次数                       $    $  次     $    $  ANS007.BYTE007  $  y=x3+x2*256+x1*256*256;
  $  021.MIST(单次刮擦)档次数             $    $  次     $    $  ANS008.BYTE004  $  y=x3+x2*256+x1*256*256;
  $  022.INT(间歇)档次数                  $    $  次     $    $  ANS008.BYTE007  $  y=x3+x2*256+x1*256*256;
  $  023.LO(低速)档次数                   $    $  次     $    $  ANS009.BYTE004  $  y=x3+x2*256+x1*256*256;
  $  024.HI(高速)档次数                   $    $  次     $    $  ANS009.BYTE007  $  y=x3+x2*256+x1*256*256;
  $  025.洗涤档次数                       $    $  次     $    $  ANS010.BYTE004  $  y=x3+x2*256+x1*256*256;
  $  026.远光档次数                       $    $  次     $    $  ANS011.BYTE004  $  y=x3+x2*256+x1*256*256;
  $  027.时距次数                         $    $  次     $    $  ANS012.BYTE007  $  y=x3+x2*256+x1*256*256;
  $  028.速度次数                         $    $  次     $    $  ANS013.BYTE004  $  y=x3+x2*256+x1*256*256;
  $  029.功能切换次数                     $    $  次     $    $  ANS013.BYTE007  $  y=x3+x2*256+x1*256*256;
  $  030.取消复位次数                     $    $  次     $    $  ANS014.BYTE004  $  y=x3+x2*256+x1*256*256;
  $  031.方向盘调节次数                   $    $  次     $    $  ANS014.BYTE007  $  y=x3+x2*256+x1*256*256;
  $  032.方向盘加热次数                   $    $  次     $    $  ANS015.BYTE004  $  y=x3+x2*256+x1*256*256;
  $  033.后雨刮次数                       $    $  次     $    $  ANS015.BYTE007  $  y=x3+x2*256+x1*256*256;
  $  034.后洗涤次数                       $    $  次     $    $  ANS016.BYTE004  $  y=x3+x2*256+x1*256*256;
  $  035.AUTO(自动)档次数                 $    $  次     $    $  ANS017.BYTE004  $  y=x3+x2*256+x1*256*256;
  $  036.AUTO 1档次数                     $    $  次     $    $  ANS018.BYTE004  $  y=x3+x2*256+x1*256*256;
  $  037.AUTO 2档次数                     $    $  次     $    $  ANS018.BYTE007  $  y=x3+x2*256+x1*256*256;
  $  038.AUTO 3档次数                     $    $  次     $    $  ANS019.BYTE007  $  y=x3+x2*256+x1*256*256;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:725 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
