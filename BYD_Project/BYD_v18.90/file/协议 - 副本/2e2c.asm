
    车型ID：2e2c

    模拟：协议模拟-->2e2c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~72F

进入命令:

  $~  REQ000:727 02 10 01 00 00 00 00 00       $~  ANS000:72F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:727 02 3E 80 00 00 00 00 00       $!  ANS000:72F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:727 03 19 02 09 00 00 00 00       $#  ANS000:72F 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/8c000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:727 04 14 FF FF FF 00 00 00       $$  ANS000:72F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:727 03 22 F1 93 00 00 00 00       $%  ANS000:72F 03 22 F1 93 00 00 00 00
  $%  REQ001:727 03 22 F1 94 00 00 00 00       $%  ANS001:72F 03 22 F1 94 00 00 00 00
  $%  REQ002:727 03 22 F1 95 00 00 00 00       $%  ANS002:72F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:727 03 22 00 05 00 00 00 00       $  ANS000:72F 03 22 00 05 00 00 00 00
  $  REQ001:727 03 22 00 06 00 00 00 00       $  ANS001:72F 03 22 00 06 00 00 00 00
  $  REQ002:727 03 22 00 08 00 00 00 00       $  ANS002:72F 03 22 00 08 00 00 00 00
  $  REQ003:727 03 22 00 09 00 00 00 00       $  ANS003:72F 03 22 00 09 00 00 00 00
  $  REQ004:727 03 22 00 0C 00 00 00 00       $  ANS004:72F 03 22 00 0C 00 00 00 00
  $  REQ005:727 03 22 00 0D 00 00 00 00       $  ANS005:72F 03 22 00 0D 00 00 00 00
  $  REQ006:727 03 22 00 0E 00 00 00 00       $  ANS006:72F 03 22 00 0E 00 00 00 00
  $  REQ007:727 03 22 00 14 00 00 00 00       $  ANS007:72F 03 22 00 14 00 00 00 00
  $  REQ008:727 03 22 00 15 00 00 00 00       $  ANS008:72F 03 22 00 15 00 00 00 00
  $  REQ009:727 03 22 00 16 00 00 00 00       $  ANS009:72F 03 22 00 16 00 00 00 00
  $  REQ010:727 03 22 00 17 00 00 00 00       $  ANS010:72F 03 22 00 17 00 00 00 00
  $  REQ011:727 03 22 00 18 00 00 00 00       $  ANS011:72F 03 22 00 18 00 00 00 00
  $  REQ012:727 03 22 00 1C 00 00 00 00       $  ANS012:72F 03 22 00 1C 00 00 00 00
  $  REQ013:727 03 22 00 1D 00 00 00 00       $  ANS013:72F 03 22 00 1D 00 00 00 00
  $  REQ014:727 03 22 00 1E 00 00 00 00       $  ANS014:72F 03 22 00 1E 00 00 00 00
  $  REQ015:727 03 22 00 1F 00 00 00 00       $  ANS015:72F 03 22 00 1F 00 00 00 00
  $  REQ016:727 03 22 00 23 00 00 00 00       $  ANS016:72F 03 22 00 23 00 00 00 00
  $  REQ017:727 03 22 00 24 00 00 00 00       $  ANS017:72F 03 22 00 24 00 00 00 00
  $  REQ018:727 03 22 00 25 00 00 00 00       $  ANS018:72F 03 22 00 25 00 00 00 00
  $  REQ019:727 03 22 00 26 00 00 00 00       $  ANS019:72F 03 22 00 26 00 00 00 00
  $  REQ020:727 03 22 00 2A 00 00 00 00       $  ANS020:72F 03 22 00 2A 00 00 00 00
  $  REQ021:727 03 22 00 2E 00 00 00 00       $  ANS021:72F 03 22 00 2E 00 00 00 00
  $  REQ022:727 03 22 00 2F 00 00 00 00       $  ANS022:72F 03 22 00 2F 00 00 00 00
  $  REQ023:727 03 22 00 3F 00 00 00 00       $  ANS023:72F 03 22 00 3F 00 00 00 00
  $  REQ024:727 03 22 00 31 00 00 00 00       $  ANS024:72F 03 22 00 31 00 00 00 00
  $  REQ025:727 03 22 10 01 00 00 00 00       $  ANS025:72F 03 22 10 01 00 00 00 00
  $  REQ026:727 03 22 10 03 00 00 00 00       $  ANS026:72F 03 22 10 03 00 00 00 00
  $  REQ027:727 03 22 10 04 00 00 00 00       $  ANS027:72F 03 22 10 04 00 00 00 00
  $  REQ028:727 03 22 10 05 00 00 00 00       $  ANS028:72F 03 22 10 05 00 00 00 00
  $  REQ029:727 03 22 10 06 00 00 00 00       $  ANS029:72F 03 22 10 06 00 00 00 00

  $  000.风速                                  $    $  级      $    $  ANS000.BYTE004  $  y=x1;
  $  001.送风模式                              $    $          $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@006d;0x01: y=@006e;0x02: y=@006f;0x03: y=@0070;0x04: y=@0071;0x05: y=@0072;0x06: y=@0073;0x07: y=@0074;default: y=@0001;
  $  002.车外温度                              $    $  ℃      $    $  ANS002.BYTE004  $  if((x1>=88)&&(x1<=178)) y=x1-128;else if(x1==208) y=@01e4;else if(x1==216) y=@01e3;else y=@0001;
  $  003.车内温度                              $    $  ℃      $    $  ANS003.BYTE004  $  if((x1>=88)&&(x1<=207)) y=x1-128;else if(x1==208) y=@01e4;else if(x1==216) y=@01e3;else y=@0001;
  $  004.压力状态                              $    $          $    $  ANS004.BYTE004  $  switxh(x1)0x00: y=@03c3;0x01: y=@02df;0x02: y=@03c4;0x03: y=@03c5;default: y=@0001;
  $  005.压力值                                $    $  MPa     $    $  ANS004.BYTE005  $  y=SPRINTF([%.2f],(x1*256+x2)/100);
  $  006.空调无级风扇占空比需求                $    $  %       $    $  ANS005.BYTE004  $  y=x1;
  $  007.鼓风机继电器控制                      $    $          $    $  ANS006.BYTE004  $  switxh(x1)0x00: y=@002a;0x01: y=@002b;default: y=@0001;
  $  008.主驾PTC(辅助加热)状态                 $    $          $    $  ANS007.BYTE004  $  switxh(x1)0x00: y=@004d;0x01: y=@004e;default: y=@0001;
  $  009.主驾PTC(辅助加热)占空比               $    $  %       $    $  ANS007.BYTE005  $  y=x1;
  $  010.副驾PTC(辅助加热)状态                 $    $          $    $  ANS008.BYTE004  $  switxh(x1)0x00: y=@004d;0x01: y=@004e;default: y=@0001;
  $  011.副驾PTC(辅助加热)占空比               $    $  %       $    $  ANS008.BYTE005  $  y=x1;
  $  012.工作电源电压                          $    $  V       $    $  ANS009.BYTE004  $  if((x1>=90)&&(x1<=159)) y=x1/10;else if(x1==160) y=@01e9;else if(x1==208) y=@01e8;else y=@0001;
  $  013.电动压缩机状态                        $    $          $    $  ANS010.BYTE004  $  switxh(x1)0x00: y=@003f;0x01: y=@0044;default: y=@0001;
  $  014.电机压缩机占空比                      $    $  %       $    $  ANS010.BYTE005  $  y=x1;
  $  015.BMS(电池管理器)允许开启高压模块       $    $          $    $  ANS011.BYTE004  $  switxh(x1)0x00: y=@006d;0x01: y=@0196;0x02: y=@0195;0x03: y=@006c;default: y=@0001;
  $  016.主驾吹面通道温度                      $    $  ℃      $    $  ANS012.BYTE004  $  if((x1>=0)&&(x1<=140)) y=x1-40;else if(x1==208) y=@01e4;else if(x1==216) y=@01e3;else y=@0001;
  $  017.主驾吹脚通道温度                      $    $  ℃      $    $  ANS013.BYTE004  $  if((x1>=0)&&(x1<=140)) y=x1-40;else if(x1==208) y=@01e4;else if(x1==216) y=@01e3;else y=@0001;
  $  018.副驾吹面通道温度                      $    $  ℃      $    $  ANS014.BYTE004  $  if((x1>=0)&&(x1<=140)) y=x1-40;else if(x1==208) y=@01e4;else if(x1==216) y=@01e3;else y=@0001;
  $  019.副驾吹脚通道温度                      $    $  ℃      $    $  ANS015.BYTE004  $  if((x1>=0)&&(x1<=140)) y=x1-40;else if(x1==208) y=@01e4;else if(x1==216) y=@01e3;else y=@0001;
  $  020.空调高压模块状态                      $    $          $    $  ANS016.BYTE004  $  switxh(x1)0x00: y=@02c9;0x01: y=@02ca;0x02: y=@03fc;0x03: y=@02cc;default: y=@0001;
  $  021.主驾冷暖电机位置百分比                $    $  %       $    $  ANS017.BYTE004  $  y=x1;
  $  022.副驾冷暖电机位置百分比                $    $  %       $    $  ANS018.BYTE004  $  y=x1;
  $  023.前置模式电机位置百分比                $    $  %       $    $  ANS019.BYTE004  $  y=x1;
  $  024.内外循环电机位置百分比                $    $  %       $    $  ANS020.BYTE004  $  y=x1;
  $  025.蒸发器出口冷媒过热度                  $    $  %       $    $  ANS021.BYTE004  $  if(x2<0x80) y=SPRINTF([%.1f],(x2*256+x1)*0.1);else y=SPRINTF([%.1f],((x2-256)*256+x1)*0.1);
  $  026.电子膨胀阀2位置百分比                 $    $  %       $    $  ANS022.BYTE004  $  y=x1;
  $  027.电池热管理需求                        $    $          $    $  ANS023.BYTE004  $  switxh(x1)0x00: y=@0060;0x01: y=@02d0;0x02: y=@02d1;0x03: y=@03f9;0x04: y=@03fa;0x05: y=@03fb;0x06: y=@02d5;0x07: y=@004c;default: y=@0001;
  $  028.蒸发器温度                            $    $  ℃      $    $  ANS024.BYTE004  $  if((x1>=0)&&(x1<=60)) y=x1-20;else if(x1==208) y=@01e4;else if(x1==216) y=@01e3;else y=@0001;
  $  029.电池冷却系统开启状态                  $    $          $    $  ANS025.BYTE004  $  switxh(x1)0x00: y=@0049;0x01: y=@004a;0x02: y=@004b;0x03: y=@004c;0x07: y=@001e;default: y=@0001;
  $  030.板换出口侧冷却液温度信息              $    $          $    $  ANS026.BYTE004  $  if((x1>=0)&&(x1<=90)) y=x1-20;else if(x1==208) y=@01e4;else if(x1==216) y=@01e3;else y=@0001;
  $  031.板式换热器出口冷媒压力                $    $  Mpa     $    $  ANS027.BYTE004  $  if(((x1*256+x2)>=0)&&((x1*256+x2)<=65534)) y=(x1*256+x2)*0.001;else if((x1*256+x2)==65535) y=@0003;else y=@0001;
  $  032.板式换热器出口冷媒温度                $    $          $    $  ANS028.BYTE004  $  if(((x2*256+x1)>=0)&&((x2*256+x1)<=500)) y=(x2*256+x1)/10-10;else if((x2*256+x1)==208) y=@01e4;else if((x2*256+x1)==216) y=@01e3;else y=@0001;
  $  033.热管理水泵启停命令                    $    $          $    $  ANS029.BYTE004  $  switxh(x1)0x00: y=@004d;0x01: y=@004e;default: y=@0001;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:727 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
