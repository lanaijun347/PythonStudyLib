
    车型ID：2741

    模拟：协议模拟-->2741

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

  $*$*DTC/71000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:797 04 14 FF FF FF 00 00 00       $$  ANS000:79F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:797 03 22 F1 93 00 00 00 00       $%  ANS000:79F 03 22 F1 93 00 00 00 00
  $%  REQ001:797 03 22 F1 94 00 00 00 00       $%  ANS001:79F 03 22 F1 94 00 00 00 00
  $%  REQ002:797 03 22 F1 95 00 00 00 00       $%  ANS002:79F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:797 03 22 00 04 00 00 00 00       $  ANS000:79F 03 22 00 04 00 00 00 00
  $  REQ001:797 03 22 00 05 00 00 00 00       $  ANS001:79F 03 22 00 05 00 00 00 00
  $  REQ002:797 03 22 00 07 00 00 00 00       $  ANS002:79F 03 22 00 07 00 00 00 00
  $  REQ003:797 03 22 00 08 00 00 00 00       $  ANS003:79F 03 22 00 08 00 00 00 00
  $  REQ004:797 03 22 00 09 00 00 00 00       $  ANS004:79F 03 22 00 09 00 00 00 00
  $  REQ005:797 03 22 00 0A 00 00 00 00       $  ANS005:79F 03 22 00 0A 00 00 00 00
  $  REQ006:797 03 22 00 0B 00 00 00 00       $  ANS006:79F 03 22 00 0B 00 00 00 00
  $  REQ007:797 03 22 00 0C 00 00 00 00       $  ANS007:79F 03 22 00 0C 00 00 00 00
  $  REQ008:797 03 22 00 0D 00 00 00 00       $  ANS008:79F 03 22 00 0D 00 00 00 00
  $  REQ009:797 03 22 00 0F 00 00 00 00       $  ANS009:79F 03 22 00 0F 00 00 00 00
  $  REQ010:797 03 22 00 10 00 00 00 00       $  ANS010:79F 03 22 00 10 00 00 00 00
  $  REQ011:797 03 22 00 11 00 00 00 00       $  ANS011:79F 03 22 00 11 00 00 00 00
  $  REQ012:797 03 22 00 12 00 00 00 00       $  ANS012:79F 03 22 00 12 00 00 00 00
  $  REQ013:797 03 22 00 13 00 00 00 00       $  ANS013:79F 03 22 00 13 00 00 00 00
  $  REQ014:797 03 22 00 15 00 00 00 00       $  ANS014:79F 03 22 00 15 00 00 00 00
  $  REQ015:797 03 22 00 17 00 00 00 00       $  ANS015:79F 03 22 00 17 00 00 00 00
  $  REQ016:797 03 22 00 18 00 00 00 00       $  ANS016:79F 03 22 00 18 00 00 00 00
  $  REQ017:797 03 22 00 19 00 00 00 00       $  ANS017:79F 03 22 00 19 00 00 00 00
  $  REQ018:797 03 22 00 1A 00 00 00 00       $  ANS018:79F 03 22 00 1A 00 00 00 00
  $  REQ019:797 03 22 00 1B 00 00 00 00       $  ANS019:79F 03 22 00 1B 00 00 00 00
  $  REQ020:797 03 22 00 1C 00 00 00 00       $  ANS020:79F 03 22 00 1C 00 00 00 00
  $  REQ021:797 03 22 00 1D 00 00 00 00       $  ANS021:79F 03 22 00 1D 00 00 00 00
  $  REQ022:797 03 22 00 1E 00 00 00 00       $  ANS022:79F 03 22 00 1E 00 00 00 00

  $  000.工作状态                           $    $             $    $  ANS000.BYTE004  $  switxh(x1)0x00: y=@0118;0x01: y=@0119;0x02: y=@011a;0x03: y=@0206;0x04: y=@010e;default: y=@00d6;
  $  001.故障状态                           $    $             $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@011c;0x02: y=@011d;default: y=@00d6;
  $  002.风扇状态                           $    $             $    $  ANS002.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@0046;0x02: y=@010e;0x03: y=@010e;default: y=@00d6;
  $  003.接地状态                           $    $             $    $  ANS003.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@0046;0x02: y=@010e;0x03: y=@010e;default: y=@00d6;
  $  004.交流侧输入电压                     $    $  V          $    $  ANS004.BYTE004  $  y=(x2<<8)+x1;
  $  005.直流侧电压                         $    $  V          $    $  ANS005.BYTE004  $  y=(x2<<8)+x1;
  $  006.直流侧电流                         $    $  A          $    $  ANS006.BYTE004  $  y=x1*0.3-30;
  $  007.交流侧频率                         $    $  赫兹       $    $  ANS007.BYTE004  $  y=x1;
  $  008.PFC桥温度                          $    $  赫兹       $    $  ANS008.BYTE004  $  y=x1-40;
  $  009.PWM(脉宽调制)波占空比              $    $  %          $    $  ANS009.BYTE004  $  y=x1;
  $  010.12V输出电流                        $    $  A          $    $  ANS010.BYTE004  $  y=x1*0.1;
  $  011.12V输出电压                        $    $  V          $    $  ANS011.BYTE004  $  y=x1*0.1;
  $  012.车内插座放电状态                   $    $             $    $  ANS012.BYTE004  $  switxh(x1)0x00: y=@0207;0x01: y=@0208;0x02: y=@0209;0x03: y=@020a;0x04: y=@020b;0x05: y=@010e;0x06: y=@010e;0x07: y=@010e;default: y=@00d6;
  $  013.VTOL(车辆对用电设备)放电状态       $    $             $    $  ANS013.BYTE004  $  switxh(x1)0x00: y=@0207;0x01: y=@0208;0x02: y=@0209;0x03: y=@020a;0x04: y=@020b;0x05: y=@010e;0x06: y=@010e;0x07: y=@010e;default: y=@00d6;
  $  014.车载充电功率状态                   $    $             $    $  ANS014.BYTE004  $  switxh(x1)0x00: y=@020c;0x01: y=@020d;0x02: y=@020e;0x03: y=@010e;default: y=@00d6;
  $  015.交流外充设备故障状态               $    $             $    $  ANS015.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@0046;default: y=@00d6;
  $  016.交流外充接地状态                   $    $             $    $  ANS016.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@0046;0x02: y=@010e;0x03: y=@010e;default: y=@00d6;
  $  017.充电枪连接状态                     $    $             $    $  ANS017.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@0046;0x02: y=@0047;default: y=@00d6;
  $  018.限功率放电状态                     $    $             $    $  ANS018.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@0200;default: y=@00d6;
  $  019.应急充电是否允许                   $    $             $    $  ANS019.BYTE004  $  switxh(x1)0x00: y=@004d;0x01: y=@004e;default: y=@00d6;
  $  020.交流互锁故障                       $    $             $    $  ANS020.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@0046;default: y=@00d6;
  $  021.本次累计充电量                     $    $  千瓦时     $    $  ANS021.BYTE004  $  y=((x2<<8)+x1)*1.0/500;
  $  022.交流侧功率                         $    $  W          $    $  ANS022.BYTE004  $  y=((x2<<8)+x1)*0.2;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:797 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
