
    车型ID：1e09

    模拟：协议模拟-->1e09

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:797 02 10 01 00 00 00 00 00       $~  ANS000:79F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:797 02 3E 80 00 00 00 00 00       $!  ANS000:79F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:797 03 19 02 09 00 00 00 00       $#  ANS000:79F 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:797 04 14 FF FF FF 00 00 00       $$  ANS000:79F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:797 03 22 F1 93 00 00 00 00       $%  ANS000:79F 03 22 F1 93 00 00 00 00
  $%  REQ001:797 03 22 F1 94 00 00 00 00       $%  ANS001:79F 03 22 F1 94 00 00 00 00
  $%  REQ002:797 03 22 F1 95 00 00 00 00       $%  ANS002:79F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:797 03 22 00 04 00 00 00 00       $  ANS000:79F 03 22 00 04 00 00 00 00
  $  REQ001:797 03 22 00 05 00 00 00 00       $  ANS001:79F 03 22 00 05 00 00 00 00
  $  REQ002:797 03 22 00 08 00 00 00 00       $  ANS002:79F 03 22 00 08 00 00 00 00
  $  REQ003:797 03 22 00 09 00 00 00 00       $  ANS003:79F 03 22 00 09 00 00 00 00
  $  REQ004:797 03 22 00 0A 00 00 00 00       $  ANS004:79F 03 22 00 0A 00 00 00 00
  $  REQ005:797 03 22 00 0B 00 00 00 00       $  ANS005:79F 03 22 00 0B 00 00 00 00
  $  REQ006:797 03 22 00 0C 00 00 00 00       $  ANS006:79F 03 22 00 0C 00 00 00 00
  $  REQ007:797 03 22 00 0F 00 00 00 00       $  ANS007:79F 03 22 00 0F 00 00 00 00
  $  REQ008:797 03 22 00 10 00 00 00 00       $  ANS008:79F 03 22 00 10 00 00 00 00
  $  REQ009:797 03 22 00 11 00 00 00 00       $  ANS009:79F 03 22 00 11 00 00 00 00
  $  REQ010:797 03 22 00 12 00 00 00 00       $  ANS010:79F 03 22 00 12 00 00 00 00
  $  REQ011:797 03 22 00 13 00 00 00 00       $  ANS011:79F 03 22 00 13 00 00 00 00
  $  REQ012:797 03 22 00 15 00 00 00 00       $  ANS012:79F 03 22 00 15 00 00 00 00
  $  REQ013:797 03 22 00 17 00 00 00 00       $  ANS013:79F 03 22 00 17 00 00 00 00
  $  REQ014:797 03 22 00 18 00 00 00 00       $  ANS014:79F 03 22 00 18 00 00 00 00
  $  REQ015:797 03 22 00 19 00 00 00 00       $  ANS015:79F 03 22 00 19 00 00 00 00
  $  REQ016:797 03 22 00 1A 00 00 00 00       $  ANS016:79F 03 22 00 1A 00 00 00 00
  $  REQ017:797 03 22 00 1B 00 00 00 00       $  ANS017:79F 03 22 00 1B 00 00 00 00
  $  REQ018:797 03 22 00 1C 00 00 00 00       $  ANS018:79F 03 22 00 1C 00 00 00 00
  $  REQ019:797 03 22 00 1D 00 00 00 00       $  ANS019:79F 03 22 00 1D 00 00 00 00
  $  REQ020:797 03 22 00 1E 00 00 00 00       $  ANS020:79F 03 22 00 1E 00 00 00 00

  $  000:工作状态                           $    $          $    $  ANS000.BYTE004  $  if(x1==0x00)y=@0552;else if(x1==0x01)y=@0154;else if(x1==0x02)y=@0155;else if(x1==0x03)y=@0553;else if(x1==0x04)y=@009e;else y=@0440;
  $  001:故障状态                           $    $          $    $  ANS001.BYTE004  $  if(x1==0x00)y=@0022;else if(x1==0x01)y=@043f;else if(x1==0x02)y=@011e;else y=@0440;
  $  002:接地状态                           $    $          $    $  ANS002.BYTE004  $  if(x1==0x00)y=@0022;else if(x1==0x01)y=@0059;else y=@0440;
  $  003:交流侧输入电压                     $    $  V       $    $  ANS003.BYTE004  $  y=x1+x2*256;
  $  004:直流侧电压                         $    $  V       $    $  ANS004.BYTE004  $  y=x1+x2*256;
  $  005:直流侧电流                         $    $  A       $    $  ANS005.BYTE004  $  y=(x1*0.3)-30;
  $  006:交流侧频率                         $    $  Hz      $    $  ANS006.BYTE004  $  y=x1;
  $  007:PWM(脉宽调制)波占空比              $    $  %       $    $  ANS007.BYTE004  $  y=x1;
  $  008:12V输出电流                        $    $  A       $    $  ANS008.BYTE004  $  y=x1*0.1;
  $  009:12V输出电压                        $    $  V       $    $  ANS009.BYTE004  $  y=x1*0.1;
  $  010:车内插座放电状态                   $    $          $    $  ANS010.BYTE004  $  if(x1==0x00)y=@015c;else if(x1==0x01)y=@04d0;else if(x1==0x02)y=@04d1;else if(x1==0x03)y=@04d2;else if(x1==0x04)y=@04d3;else if(x1==0x05)y=@009e;else if(x1==0x06)y=@009e;else if(x1==0x07)y=@009e;else y=@0440;
  $  011:VTOL(车辆对用电设备)放电状态       $    $          $    $  ANS011.BYTE004  $  if(x1==0x00)y=@015c;else if(x1==0x01)y=@04d0;else if(x1==0x02)y=@04d1;else if(x1==0x03)y=@04d2;else if(x1==0x04)y=@04d3;else if(x1==0x05)y=@009e;else if(x1==0x06)y=@009e;else if(x1==0x07)y=@009e;else y=@0440;
  $  012:车载充电功率状态                   $    $          $    $  ANS012.BYTE004  $  if(x1==0x00)y=@054f;else if(x1==0x01)y=@0550;else if(x1==0x02)y=@0551;else if(x1==0x03)y=@009e;else y=@0440;
  $  013:交流外充设备故障状态               $    $          $    $  ANS013.BYTE004  $  if(x1==0x00)y=@0022;else if(x1==0x01)y=@0059;else y=@0440;
  $  014:交流外充接地状态                   $    $          $    $  ANS014.BYTE004  $  if(x1==0x00)y=@0022;else if(x1==0x01)y=@0059;else if(x1==0x02)y=@009e;else if(x1==0x03)y=@009e;else y=@0440;
  $  015:充电枪连接状态                     $    $          $    $  ANS015.BYTE004  $  if(x1==0x00)y=@0022;else if(x1==0x01)y=@0059;else if(x1==0x02)y=@002e;else y=@0440;
  $  016:限功率放电状态                     $    $          $    $  ANS016.BYTE004  $  if(x1==0x00)y=@0022;else if(x1==0x01)y=@0554;else y=@0440;
  $  017:应急充电是否允许                   $    $          $    $  ANS017.BYTE004  $  if(x1==0x00)y=@002d;else if(x1==0x01)y=@002c;else y=@0440;
  $  018:交流互锁故障                       $    $          $    $  ANS018.BYTE004  $  if(x1==0x00)y=@0022;else if(x1==0x01)y=@0059;else y=@0440;
  $  019:本次累计充电量                     $    $  KWH     $    $  ANS019.BYTE004  $  y=(x1+x2*256)*0.002;
  $  020:交流侧功率                         $    $  W       $    $  ANS020.BYTE004  $  y=(x1+x2*256)*0.2;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:797 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
