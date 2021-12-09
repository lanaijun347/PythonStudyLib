
    车型ID：2a05

    模拟：协议模拟-->2a05

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

  $*$*DTC/af000000


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
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:727 03 22 00 05 00 00 00 00       $  ANS000:72F 03 22 00 05 00 00 00 00
  $  REQ001:727 03 22 00 06 00 00 00 00       $  ANS001:72F 03 22 00 06 00 00 00 00
  $  REQ002:727 03 22 00 08 00 00 00 00       $  ANS002:72F 03 22 00 08 00 00 00 00
  $  REQ003:727 03 22 00 09 00 00 00 00       $  ANS003:72F 03 22 00 09 00 00 00 00
  $  REQ004:727 03 22 00 12 00 00 00 00       $  ANS004:72F 03 22 00 12 00 00 00 00
  $  REQ005:727 03 22 00 31 00 00 00 00       $  ANS005:72F 03 22 00 31 00 00 00 00
  $  REQ006:727 03 22 00 0C 00 00 00 00       $  ANS006:72F 03 22 00 0C 00 00 00 00
  $  REQ007:727 03 22 00 0E 00 00 00 00       $  ANS007:72F 03 22 00 0E 00 00 00 00
  $  REQ008:727 03 22 00 0F 00 00 00 00       $  ANS008:72F 03 22 00 0F 00 00 00 00
  $  REQ009:727 03 22 00 16 00 00 00 00       $  ANS009:72F 03 22 00 16 00 00 00 00
  $  REQ010:727 03 22 00 17 00 00 00 00       $  ANS010:72F 03 22 00 17 00 00 00 00
  $  REQ011:727 03 22 00 18 00 00 00 00       $  ANS011:72F 03 22 00 18 00 00 00 00
  $  REQ012:727 03 22 00 1C 00 00 00 00       $  ANS012:72F 03 22 00 1C 00 00 00 00
  $  REQ013:727 03 22 00 1D 00 00 00 00       $  ANS013:72F 03 22 00 1D 00 00 00 00
  $  REQ014:727 03 22 00 21 00 00 00 00       $  ANS014:72F 03 22 00 21 00 00 00 00
  $  REQ015:727 03 22 00 3B 00 00 00 00       $  ANS015:72F 03 22 00 3B 00 00 00 00
  $  REQ016:727 03 22 00 23 00 00 00 00       $  ANS016:72F 03 22 00 23 00 00 00 00
  $  REQ017:727 03 22 00 24 00 00 00 00       $  ANS017:72F 03 22 00 24 00 00 00 00
  $  REQ018:727 03 22 00 25 00 00 00 00       $  ANS018:72F 03 22 00 25 00 00 00 00
  $  REQ019:727 03 22 00 26 00 00 00 00       $  ANS019:72F 03 22 00 26 00 00 00 00
  $  REQ020:727 03 22 00 2A 00 00 00 00       $  ANS020:72F 03 22 00 2A 00 00 00 00
  $  REQ021:727 03 22 00 2B 00 00 00 00       $  ANS021:72F 03 22 00 2B 00 00 00 00
  $  REQ022:727 03 22 00 2C 00 00 00 00       $  ANS022:72F 03 22 00 2C 00 00 00 00
  $  REQ023:727 03 22 00 2D 00 00 00 00       $  ANS023:72F 03 22 00 2D 00 00 00 00
  $  REQ024:727 03 22 00 2E 00 00 00 00       $  ANS024:72F 03 22 00 2E 00 00 00 00
  $  REQ025:727 03 22 00 3F 00 00 00 00       $  ANS025:72F 03 22 00 3F 00 00 00 00
  $  REQ026:727 03 22 10 01 00 00 00 00       $  ANS026:72F 03 22 10 01 00 00 00 00
  $  REQ027:727 03 22 10 09 00 00 00 00       $  ANS027:72F 03 22 10 09 00 00 00 00
  $  REQ028:727 03 22 10 03 00 00 00 00       $  ANS028:72F 03 22 10 03 00 00 00 00
  $  REQ029:727 03 22 10 06 00 00 00 00       $  ANS029:72F 03 22 10 06 00 00 00 00
  $  REQ030:727 03 22 00 4E 00 00 00 00       $  ANS030:72F 03 22 00 4E 00 00 00 00
  $  REQ031:727 03 22 00 4D 00 00 00 00       $  ANS031:72F 03 22 00 4D 00 00 00 00
  $  REQ032:727 03 22 00 4C 00 00 00 00       $  ANS032:72F 03 22 00 4C 00 00 00 00

  $  000:风速                                        $    $               $    $  ANS000.BYTE004  $  y=x1;
  $  001:送风模式                                    $    $               $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@0097;0x01: y=@0144;0x02: y=@0198;0x03: y=@0146;0x04: y=@0199;0x05: y=@0148;default: y=@001c;
  $  002:车外温度                                    $    $  degree C     $    $  ANS002.BYTE004  $  if((x1>=88)&&(x1<=178))y=x1-128;else if((x1==208)) y=@019d;else if((x1==216)) y=@038c;else y=@001c;
  $  003:车内温度                                    $    $  degree C     $    $  ANS003.BYTE004  $  if((x1>=88)&&(x1<=207))y=x1-128;else if((x1==208)) y=@019d;else if((x1==216)) y=@038c;else y=@001c;
  $  004:空调两档风扇档位需求                        $    $               $    $  ANS004.BYTE004  $  switxh(x1)0x00: y=@0005;0x01: y=@0294;0x02: y=@0295;default: y=@001c;
  $  005:蒸发器温度                                  $    $  degree C     $    $  ANS005.BYTE004  $  if((x1>=0)&&(x1<=60))y=x1-20;else if((x1==208)) y=@019d;else if((x1==216)) y=@038c;else y=@001c;
  $  006:压力状态                                    $    $               $    $  ANS006.BYTE004  $  switxh(x1)0x00: y=@0022;0x01: y=@0059;default: y=@001c;
  $  007:压力值                                      $    $  MPa          $    $  ANS006.BYTE005  $  y=((x1<<8)+x2)*0.01;
  $  008:鼓风机正端继电器控制状态                    $    $               $    $  ANS007.BYTE004  $  switxh(x1)0x00: y=@002e;0x01: y=@002f;default: y=@001c;
  $  009:后除霜继电器控制                            $    $               $    $  ANS008.BYTE004  $  switxh(x1)0x00: y=@002e;0x01: y=@002f;default: y=@001c;
  $  010:工作电源电压                                $    $  V            $    $  ANS009.BYTE004  $  if((x1>=90)&&(x1<=159))y=x1*1.0/10;else if((x1==160))y=@001c;else if((x1==208))y=@001c;else y=@001c;
  $  011:电动压缩机状态                              $    $               $    $  ANS010.BYTE004  $  switxh(x1)0x00: y=@014a;0x01: y=@014b;default: y=@001c;
  $  012:电机压缩机占空比                            $    $  %            $    $  ANS010.BYTE005  $  y=x1;
  $  013:BMS(电池管理系统)允许空调开启高压模块       $    $               $    $  ANS011.BYTE004  $  switxh(x1)0x00: y=@0097;0x01: y=@002d;0x02: y=@002c;default: y=@001c;
  $  014:主驾吹面通道温度                            $    $  degree C     $    $  ANS012.BYTE004  $  if((x1>=0)&&(x1<=140))y=x1-40;else if((x1==208)) y=@019d;else if((x1==216)) y=@038c;else if((x1==255)) y=@0048;else y=@03df;
  $  015:主驾吹脚通道温度                            $    $  degree C     $    $  ANS013.BYTE004  $  if((x1>=0)&&(x1<=140))y=x1-40;else if((x1==208)) y=@019d;else if((x1==216)) y=@038c;else if((x1==255)) y=@0048;else y=@03df;
  $  016:空调采暖电动水泵继电器控制                  $    $               $    $  ANS014.BYTE004  $  switxh(x1)0x00: y=@002e;0x01: y=@002f;default: y=@001c;
  $  017:PTC水加热器占空比                           $    $  %            $    $  ANS015.BYTE004  $  y=x1;
  $  018:空调高压模块状态                            $    $               $    $  ANS016.BYTE004  $  switxh(x1)0x00: y=@0388;0x01: y=@0389;0x02: y=@038a;0x03: y=@038b;default: y=@001c;
  $  019:主驾冷暖电机位置百分比                      $    $  %            $    $  ANS017.BYTE004  $  y=x1;
  $  020:副驾冷暖电机位置百分比                      $    $  %            $    $  ANS018.BYTE004  $  y=x1;
  $  021:前置模式电机位置百分比                      $    $  %            $    $  ANS019.BYTE004  $  y=x1;
  $  022:新风循环电机位置百分比                      $    $  %            $    $  ANS020.BYTE004  $  y=x1;
  $  023:蒸发器端电子膨胀阀位置                      $    $  %            $    $  ANS021.BYTE004  $  y=x1;
  $  024:蒸发器出口冷媒温度                          $    $  degree C     $    $  ANS022.BYTE004  $  if((((x2<<8)+x1)>=0)&&(((x2<<8)+x1)<=800))y=(((x2<<8)+x1))*1.0/10;else if((((x2<<8)+x1)>=65136)&&(((x2<<8)+x1)<=65535))y=((((x2<<8)+x1))-65536)*1.0/10;else if((((x2<<8)+x1)==32764)) y=@019d;else if((((x2<<8)+x1)==32765)) y=@038c;else y=@001c;
  $  025:蒸发器出口压力                              $    $               $    $  ANS023.BYTE004  $  y=((x2<<8)+x1)*0.001;
  $  026:蒸发器出口冷媒过热度                        $    $  degree C     $    $  ANS024.BYTE004  $  if(x2<0x80)y=((x2<<8)+x1)*0.1;else y=(((x2-256)<<8)+x1)*0.1;
  $  027:电池热管理需求                              $    $               $    $  ANS025.BYTE004  $  if((x1==0)) y=@0391;else if((x1==1)) y=@0392;else if((x1==2)) y=@0393;else if((x1==3)) y=@0394;else if((x1==4)) y=@0395;else if((x1==5)) y=@0396;else if((x1==6)) y=@0397;else if((x1==7)) y=@0390;else y=@001c;
  $  028:电池冷却系统开启状态                        $    $               $    $  ANS026.BYTE004  $  if((x1==0)) y=@0005;else if((x1==1)) y=@038e;else if((x1==2)) y=@038f;else if((x1==3)) y=@0390;else y=@001c;
  $  029:板换端电子膨胀阀位置                        $    $  %            $    $  ANS027.BYTE004  $  if((x1>=0)&&(x1<=100)) y=x1;else if((x1==255)) y=@038d;else y=@001c;
  $  030:板换出口侧冷却液温度信息                    $    $  degree C     $    $  ANS028.BYTE004  $  if((x1>=0)&&(x1<=90))y=x1-20;else if((x1==208)) y=@019d;else if((x1==216)) y=@038c;else y=@001c;
  $  031:热管理水泵启停命令                          $    $               $    $  ANS029.BYTE004  $  if((x1==0)) y=@0298;else if((x1==1)) y=@011a;else y=@001c;
  $  032:空调发送的电池热管理电动水泵占空比          $    $  %            $    $  ANS030.BYTE004  $  y=x1;
  $  033:电池热管理电动水泵反馈转速                  $    $  rpm          $    $  ANS031.BYTE004  $  y=x1*100;
  $  034:热管理水泵启停命令_1                        $    $               $    $  ANS032.BYTE004  $  if((x1==0)) y=@0298;else if((x1==1)) y=@011a;else y=@001c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:727 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
