
    车型ID：3607

    模拟：协议模拟-->3607

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~79F

进入命令:

  $~  REQ000:797 02 10 01 00 00 00 00 00       $~  ANS000:79F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:797 02 3E 80 00 00 00 00 00       $!  ANS000:79F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:797 03 19 02 09 00 00 00 00       $#  ANS000:79F 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/bb000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:797 04 14 FF FF FF 00 00 00       $$  ANS000:79F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:797 03 22 F1 93 00 00 00 00       $%  ANS000:79F 03 22 F1 93 00 00 00 00
  $%  REQ001:797 03 22 F1 94 00 00 00 00       $%  ANS001:79F 03 22 F1 94 00 00 00 00
  $%  REQ002:797 03 22 F1 95 00 00 00 00       $%  ANS002:79F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $)  00.数据流
  $  00.数据流
  $  REQ000:797 03 22 00 03 00 00 00 00       $  ANS000:79F 03 22 00 03 00 00 00 00
  $  REQ001:797 03 22 00 04 00 00 00 00       $  ANS001:79F 03 22 00 04 00 00 00 00
  $  REQ002:797 03 22 00 05 00 00 00 00       $  ANS002:79F 03 22 00 05 00 00 00 00
  $  REQ003:797 03 22 00 06 00 00 00 00       $  ANS003:79F 03 22 00 06 00 00 00 00
  $  REQ004:797 03 22 00 07 00 00 00 00       $  ANS004:79F 03 22 00 07 00 00 00 00
  $  REQ005:797 03 22 00 08 00 00 00 00       $  ANS005:79F 03 22 00 08 00 00 00 00
  $  REQ006:797 03 22 00 0A 00 00 00 00       $  ANS006:79F 03 22 00 0A 00 00 00 00
  $  REQ007:797 03 22 00 0E 00 00 00 00       $  ANS007:79F 03 22 00 0E 00 00 00 00
  $  REQ008:797 03 22 00 11 00 00 00 00       $  ANS008:79F 03 22 00 11 00 00 00 00
  $  REQ009:797 03 22 00 12 00 00 00 00       $  ANS009:79F 03 22 00 12 00 00 00 00
  $  REQ010:797 03 22 00 13 00 00 00 00       $  ANS010:79F 03 22 00 13 00 00 00 00
  $  REQ011:797 03 22 00 14 00 00 00 00       $  ANS011:79F 03 22 00 14 00 00 00 00
  $  REQ012:797 03 22 00 15 00 00 00 00       $  ANS012:79F 03 22 00 15 00 00 00 00
  $  REQ013:797 03 22 00 16 00 00 00 00       $  ANS013:79F 03 22 00 16 00 00 00 00
  $  REQ014:797 03 22 00 17 00 00 00 00       $  ANS014:79F 03 22 00 17 00 00 00 00
  $  REQ015:797 03 22 00 18 00 00 00 00       $  ANS015:79F 03 22 00 18 00 00 00 00
  $  REQ016:797 03 22 00 19 00 00 00 00       $  ANS016:79F 03 22 00 19 00 00 00 00
  $  REQ017:797 03 22 00 1A 00 00 00 00       $  ANS017:79F 03 22 00 1A 00 00 00 00
  $  REQ018:797 03 22 00 1B 00 00 00 00       $  ANS018:79F 03 22 00 1B 00 00 00 00
  $  REQ019:797 03 22 00 1C 00 00 00 00       $  ANS019:79F 03 22 00 1C 00 00 00 00
  $  REQ020:797 03 22 00 1E 00 00 00 00       $  ANS020:79F 03 22 00 1E 00 00 00 00
  $  REQ021:797 03 22 00 1F 00 00 00 00       $  ANS021:79F 03 22 00 1F 00 00 00 00
  $  REQ022:797 03 22 00 20 00 00 00 00       $  ANS022:79F 03 22 00 20 00 00 00 00
  $  REQ023:797 03 22 00 23 00 00 00 00       $  ANS023:79F 03 22 00 23 00 00 00 00
  $  REQ024:797 03 22 00 24 00 00 00 00       $  ANS024:79F 03 22 00 24 00 00 00 00
  $  REQ025:797 03 22 00 25 00 00 00 00       $  ANS025:79F 03 22 00 25 00 00 00 00
  $  REQ026:797 03 22 00 26 00 00 00 00       $  ANS026:79F 03 22 00 26 00 00 00 00

  $  000.交流侧电压                        $    $  V       $    $  ANS000.BYTE004  $  y=(x2*256+x1);
  $  001.直流侧电压                        $    $  V       $    $  ANS001.BYTE004  $  y=(x2*256+x1);
  $  002.直流侧电流                        $    $  A       $    $  ANS002.BYTE004  $  y=SPRINTF([%.1f],x1*0.4-50);
  $  003.交流侧频率                        $    $  Hz      $    $  ANS003.BYTE004  $  y=x1;
  $  004.交流侧电流                        $    $  A       $    $  ANS004.BYTE004  $  y=SPRINTF([%d],x1*0.2);
  $  005.PWM波占空比                       $    $  %       $    $  ANS005.BYTE004  $  y=x1;
  $  006.车内插座放电状态                  $    $          $    $  ANS006.BYTE004  $  switxh(x1)0x00: y=@0207;0x01: y=@0208;0x02: y=@0209;0x03: y=@020a;0x04: y=@020b;0x05: y=@010e;0x06: y=@010e;0x07: y=@010e;default: y=@00d6;
  $  007.交流外充接地状态                  $    $          $    $  ANS007.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@0046;0x02: y=@010e;0x03: y=@010e;default: y=@00d6;
  $  008.交流互锁故障                      $    $          $    $  ANS008.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@0046;default: y=@00d6;
  $  009.本次累计充电量                    $    $  KwH     $    $  ANS009.BYTE004  $  y=SPRINTF([%.3f],(x2*256+x1)/1000);
  $  010.交流侧功率                        $    $  W       $    $  ANS010.BYTE004  $  y=SPRINTF([%.1f],(x2*256+x1)*0.2);
  $  011.内部温度1                         $    $  ℃      $    $  ANS011.BYTE004  $  y=SPRINTF([%d],x1-40);
  $  012.电感温度                          $    $  ℃      $    $  ANS012.BYTE004  $  y=SPRINTF([%d],x1-40);
  $  013.充电口温度                        $    $  ℃      $    $  ANS013.BYTE004  $  y=SPRINTF([%d],x1-40);
  $  014.车内插座交流侧电压                $    $          $    $  ANS014.BYTE004  $  y=(x2*256+x1);
  $  015.与BMS(电池管理器)通讯状态         $    $          $    $  ANS015.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@0046;0x02: y=@010e;0x03: y=@010e;default: y=@00d6;
  $  016.散热风扇占空比                    $    $  %       $    $  ANS016.BYTE004  $  y=x1;
  $  017.充放电系统工作状态                $    $          $    $  ANS017.BYTE004  $  switxh(x1)0x00: y=@020f;0x01: y=@04e0;0x02: y=@0119;0x03: y=@011a;0x04: y=@0211;0x05: y=@0212;0x06: y=@0213;0x07: y=@0214;0x08: y=@0215;0x09: y=@0216;0x0A: y=@04e1;default: y=@00d6;
  $  018.充放电系统故障状态                $    $          $    $  ANS018.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@04dc;0x02: y=@04dd;0x03: y=@010e;0x04: y=@04de;0x05: y=@04df;default: y=@00d6;
  $  019.充电连接装置连接状态              $    $          $    $  ANS019.BYTE004  $  switxh(x1)0x00: y=@021a;0x01: y=@04e2;0x02: y=@04e3;0x03: y=@021c;default: y=@00d6;
  $  020.放电是否允许 DC放电是否允许       $    $          $    $  ANS020.BYTE004  $  switxh(x1)0x00: y=@004e;0x01: y=@004d;0x02: y=@00ff;default: y=@00d6;
  $  021.DC系统故障状态                    $    $          $    $  ANS021.BYTE004  $  switxh(x1)0x00: y=@0108;0x01: y=@0045;0x02: y=@0046;0x03: y=@0108;default: y=@00d6;
  $  022.DC工作模式                        $    $          $    $  ANS022.BYTE004  $  switxh(x1)0x00: y=@0100;0x01: y=@0102;0x02: y=@0101;0x03: y=@0108;default: y=@0002;
  $  023.低压输出电压                      $    $  V       $    $  ANS023.BYTE004  $  y=SPRINTF([%.1f],x1*0.1);
  $  024.低压输出电流                      $    $  A       $    $  ANS024.BYTE004  $  y=SPRINTF([%d],x1*2-250);
  $  025.绝缘电阻阻值                      $    $  KΩ     $    $  ANS025.BYTE004  $  y=(x2*256+x1);
  $  026.电压检测                          $    $  V       $    $  ANS026.BYTE004  $  y=(x2*256+x1);

  $)  01.主动检测(慢)
  $  01.主动检测(慢)
  $  REQ000:797 05 2F 20 01 03 00 00 00       $  ANS000:79F 05 2F 20 01 03 00 00 00
  $  REQ001:797 05 2F 20 02 03 00 00 00       $  ANS001:79F 05 2F 20 02 03 00 00 00
  $  REQ002:797 05 2F 20 03 03 00 00 00       $  ANS002:79F 05 2F 20 03 03 00 00 00

  $  000.检测前的绝缘电阻阻值       $    $  KΩ     $    $  ANS000.BYTE006  $  y=(x2*256+x1);
  $  001.检测中的绝缘电阻阻值       $    $  KΩ     $    $  ANS001.BYTE006  $  y=(x2*256+x1);
  $  002.检测后的绝缘电阻阻值       $    $  KΩ     $    $  ANS002.BYTE006  $  y=(x2*256+x1);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:797 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
