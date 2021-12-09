
    车型ID：1b12

    模拟：协议模拟-->1b12

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:727 02 10 01 00 00 00 00 00       $~  ANS000:72F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:727 02 3E 80 00 00 00 00 00       $!  ANS000:72F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:727 04 18 00 00 FF 00 00 00       $#  ANS000:72F 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/1b000000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:727 03 14 00 FF 00 00 00 00       $$  ANS000:72F 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:727 03 22 00 01 00 00 00 00       $%  ANS000:72F 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=x1*0.1;
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=x1*0.1;
  $%  002:版本日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:727 03 22 00 05 00 00 00 00       $  ANS000:72F 03 22 00 05 00 00 00 00
  $  REQ001:727 03 22 00 06 00 00 00 00       $  ANS001:72F 03 22 00 06 00 00 00 00
  $  REQ002:727 03 22 00 08 00 00 00 00       $  ANS002:72F 03 22 00 08 00 00 00 00
  $  REQ003:727 03 22 00 09 00 00 00 00       $  ANS003:72F 03 22 00 09 00 00 00 00
  $  REQ004:727 03 22 00 0A 00 00 00 00       $  ANS004:72F 03 22 00 0A 00 00 00 00
  $  REQ005:727 03 22 00 0C 00 00 00 00       $  ANS005:72F 03 22 00 0C 00 00 00 00
  $  REQ006:727 03 22 00 0D 00 00 00 00       $  ANS006:72F 03 22 00 0D 00 00 00 00
  $  REQ007:727 03 22 00 10 00 00 00 00       $  ANS007:72F 03 22 00 10 00 00 00 00
  $  REQ008:727 03 22 00 13 00 00 00 00       $  ANS008:72F 03 22 00 13 00 00 00 00
  $  REQ009:727 03 22 00 14 00 00 00 00       $  ANS009:72F 03 22 00 14 00 00 00 00
  $  REQ010:727 03 22 00 16 00 00 00 00       $  ANS010:72F 03 22 00 16 00 00 00 00
  $  REQ011:727 03 22 00 17 00 00 00 00       $  ANS011:72F 03 22 00 17 00 00 00 00
  $  REQ012:727 03 22 00 18 00 00 00 00       $  ANS012:72F 03 22 00 18 00 00 00 00

  $  000:风速                                 $    $  级           $    $  ANS000.BYTE004  $  y=x1;
  $  001:送风模式                             $    $               $    $  ANS001.BYTE004  $  if(x1==0x00)y=@0097;else if(x1==0x01)y=@0144;else if(x1==0x02)y=@0198;else if(x1==0x03)y=@0146;else if(x1==0x04)y=@0199;else if(x1==0x05)y=@0148;else y=@001c;
  $  002:车外温度                             $    $  degree C     $    $  ANS002.BYTE004  $  if(((x1-128) > 0-41) && ((x1-128) <51)) y=x1-128;else if(x1==0xD0) y=@019d;else if(x1==0xD8) y=@038c;else y=@001c;
  $  003:车内温度                             $    $  degree C     $    $  ANS003.BYTE004  $  if(((x1-128) > 0-41) && ((x1-128) <80)) y=x1-128;else if(x1==0xD0) y=@019d;else if(x1==0xD8) y=@038c;else y=@001c;
  $  004:蒸发器温度                           $    $  degree C     $    $  ANS004.BYTE004  $  if( x1<=25) y=x1;else if(x1==0xD0) y=@019d;else if(x1==0xD8) y=@038c;else y=@001c;
  $  005:压力状态                             $    $               $    $  ANS005.BYTE004  $  if(x1==0x00)y=@0022;else if(x1==0x01)y=@0059;else y=@001c;
  $  006:压力值                               $    $  MPa          $    $  ANS005.BYTE005  $  y=(x1+x2*256)*0.01;
  $  007:空调给出的散热风扇占空比(无极)       $    $  %            $    $  ANS006.BYTE004  $  y=x1;
  $  008:主驾通道温度                         $    $  degree C     $    $  ANS007.BYTE004  $  if((x1-40)<101) y=x1-40;else y=@001c;
  $  009:电池放电允许信号                     $    $               $    $  ANS008.BYTE004  $  if(x1==0x00)y=@002d;else if(x1==0x01)y=@002c;else y=@001c;
  $  010:主驾PTC状态                          $    $               $    $  ANS009.BYTE004  $  if(x1==0x00)y=@0298;else if(x1==0x01)y=@011a;else y=@001c;
  $  011:主驾PTC占空比                        $    $  %            $    $  ANS009.BYTE005  $  y=x1;
  $  012:IG2电压                              $    $  V            $    $  ANS010.BYTE004  $  if((x1>=0x5A)&&(x1<0xA0)) y=x1*0.1;else y=@001c;
  $  013:电动压缩机状态                       $    $               $    $  ANS011.BYTE004  $  if(x1==0x00)y=@014a;else if(x1==0x01)y=@014b;else y=@001c;
  $  014:电动压缩机占空比                     $    $  %            $    $  ANS011.BYTE005  $  y=x1;
  $  015:允许开启电动压缩机                   $    $               $    $  ANS012.BYTE004  $  if(x1==0x00)y=@0097;else if(x1==0x01)y=@002d;else if(x1==0x02)y=@002c;else y=@001c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:727 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
