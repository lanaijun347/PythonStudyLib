
    车型ID：130a

    模拟：协议模拟-->130a

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:727 02 10 01 00 00 00 00 00       $~  ANS000:72F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:727 02 3E 80 00 00 00 00 00       $!  ANS000:72F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:727 03 19 02 09 00 00 00 00       $#  ANS000:72F 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:727 04 14 FF FF FF 00 00 00       $$  ANS000:72F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:727 03 22 F1 93 00 00 00 00       $%  ANS000:72F 03 22 F1 93 00 00 00 00
  $%  REQ001:727 03 22 F1 94 00 00 00 00       $%  ANS001:72F 03 22 F1 94 00 00 00 00
  $%  REQ002:727 03 22 F1 95 00 00 00 00       $%  ANS002:72F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:727 03 22 00 04 00 00 00 00       $  ANS000:72F 03 22 00 04 00 00 00 00
  $  REQ001:727 03 22 00 05 00 00 00 00       $  ANS001:72F 03 22 00 05 00 00 00 00
  $  REQ002:727 03 22 00 06 00 00 00 00       $  ANS002:72F 03 22 00 06 00 00 00 00
  $  REQ003:727 03 22 00 07 00 00 00 00       $  ANS003:72F 03 22 00 07 00 00 00 00
  $  REQ004:727 03 22 00 08 00 00 00 00       $  ANS004:72F 03 22 00 08 00 00 00 00
  $  REQ005:727 03 22 00 09 00 00 00 00       $  ANS005:72F 03 22 00 09 00 00 00 00
  $  REQ006:727 03 22 00 0B 00 00 00 00       $  ANS006:72F 03 22 00 0B 00 00 00 00
  $  REQ007:727 03 22 00 0C 00 00 00 00       $  ANS007:72F 03 22 00 0C 00 00 00 00
  $  REQ008:727 03 22 00 0D 00 00 00 00       $  ANS008:72F 03 22 00 0D 00 00 00 00
  $  REQ009:727 03 22 00 0E 00 00 00 00       $  ANS009:72F 03 22 00 0E 00 00 00 00
  $  REQ010:727 03 22 00 12 00 00 00 00       $  ANS010:72F 03 22 00 12 00 00 00 00
  $  REQ011:727 03 22 00 16 00 00 00 00       $  ANS011:72F 03 22 00 16 00 00 00 00
  $  REQ012:727 03 22 00 1C 00 00 00 00       $  ANS012:72F 03 22 00 1C 00 00 00 00
  $  REQ013:727 03 22 00 1D 00 00 00 00       $  ANS013:72F 03 22 00 1D 00 00 00 00
  $  REQ014:727 03 22 00 22 00 00 00 00       $  ANS014:72F 03 22 00 22 00 00 00 00
  $  REQ015:727 03 22 00 24 00 00 00 00       $  ANS015:72F 03 22 00 24 00 00 00 00
  $  REQ016:727 03 22 00 26 00 00 00 00       $  ANS016:72F 03 22 00 26 00 00 00 00
  $  REQ017:727 03 22 00 29 00 00 00 00       $  ANS017:72F 03 22 00 29 00 00 00 00
  $  REQ018:727 03 22 00 2A 00 00 00 00       $  ANS018:72F 03 22 00 2A 00 00 00 00
  $  REQ019:727 03 22 00 31 00 00 00 00       $  ANS019:72F 03 22 00 31 00 00 00 00
  $  REQ020:727 03 22 00 39 00 00 00 00       $  ANS020:72F 03 22 00 39 00 00 00 00

  $  000:发动机允许信号                       $    $               $    $  ANS000.BYTE004  $  if(x1==0x00)y=@002d;else if(x1==0x01)y=@002c;else y=@0782;
  $  001:风速                                 $    $               $    $  ANS001.BYTE004  $  y=x1;
  $  002:送风模式                             $    $               $    $  ANS002.BYTE004  $  if(x1==0x00)y=@0097;else if(x1==0x01)y=@0144;else if(x1==0x02)y=@0198;else if(x1==0x03)y=@0146;else if(x1==0x04)y=@0199;else if(x1==0x05)y=@0148;else y=@0609;
  $  003:皮带驱动压缩机继电器状态             $    $               $    $  ANS003.BYTE004  $  if(x1==0x00)y=@019b;else if(x1==0x01)y=@019c;else y=@001c;
  $  004:车外温度                             $    $  degree C     $    $  ANS004.BYTE004  $  if(((x1-128) > (0-41)) && ((x1-128) <51)) y=x1-128;else if(x1==0xD0) y=@019d;else if(x1==0xD8) y=@038c;else y=@001c;
  $  005:车内温度                             $    $  degree C     $    $  ANS005.BYTE004  $  if(((x1-128) > (0-41)) && ((x1-128) <80)) y=x1-128;else if(x1==0xD0) y=@019d;else if(x1==0xD8) y=@038c;else y=@001c;
  $  006:皮带驱动空调压缩机请求               $    $               $    $  ANS006.BYTE004  $  if(x1==0x00)y=@014a;else if(x1==0x01)y=@014b;else y=@001c;
  $  007:压力状态                             $    $               $    $  ANS007.BYTE004  $  if(x1==0x00)y=@04d4;else if(x1==0x01)y=@04d5;else if(x1==0x02)y=@04d6;else if(x1==0x03)y=@04d7;else y=@001c;
  $  008:压力值                               $    $  MPa          $    $  ANS007.BYTE005  $  y=x1*3.0/255+x2*653.0/255;
  $  009:空调给出的散热风扇占空比(无极)       $    $  %            $    $  ANS008.BYTE004  $  y=x1;
  $  010:鼓风机正端继电器控制状态             $    $               $    $  ANS009.BYTE004  $  if(x1==0x00)y=@002e;else if(x1==0x01)y=@002f;else y=@060a;
  $  011:空调两级风扇档位需求                 $    $               $    $  ANS010.BYTE004  $  if(x1==0x00)y=@0005;else if(x1==0x01)y=@0294;else if(x1==0x02)y=@0295;else y=@001c;
  $  012:工作电源电压                         $    $  V            $    $  ANS011.BYTE004  $  if(((x1*0.1) >8) && (x1*0.1) <=15.9) y=x1*0.1;else y=@001c;
  $  013:主驾吹面通道温度                     $    $  degree C     $    $  ANS012.BYTE004  $  if(((x1-40) > (0-41)) && ((x1-40) <101)) y=x1-40;else y=@001c;
  $  014:主驾吹脚通道温度                     $    $  degree C     $    $  ANS013.BYTE004  $  if(((x1-40) > (0-41)) && ((x1-40) <101)) y=x1-40;else y=@001c;
  $  015:净化继电器控制                       $    $               $    $  ANS014.BYTE004  $  if(x1==0x00)y=@002e;else if(x1==0x01)y=@002f;else y=@001c;
  $  016:主驾冷暖电机位置百分比               $    $  %            $    $  ANS015.BYTE004  $  y=x1;
  $  017:前置模式电机位置百分比               $    $  %            $    $  ANS016.BYTE004  $  y=x1;
  $  018:除霜电机(左)位置百分比               $    $  %            $    $  ANS017.BYTE004  $  y=x1;
  $  019:新风循环电机位置百分比               $    $  %            $    $  ANS018.BYTE004  $  y=x1;
  $  020:蒸发器温度                           $    $  degree C     $    $  ANS019.BYTE004  $  if(((x1-20) > (0-21)) && ((x1-20) <41)) y=x1-20;else y=@001c;
  $  021:CAN请求后除霜                        $    $               $    $  ANS020.BYTE004  $  if(x1==0x00)y=@014a;else if(x1==0x01)y=@014b;else y=@001c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:727 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
