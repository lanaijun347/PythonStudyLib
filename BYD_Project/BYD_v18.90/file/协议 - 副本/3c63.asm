
    车型ID：3c63

    模拟：协议模拟-->3c63

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

  $*$*DTC/ed000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:797 04 14 FF FF FF 00 00 00       $$  ANS000:79F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:797 03 22 F1 93 00 00 00 00       $%  ANS000:79F 03 22 F1 93 00 00 00 00
  $%  REQ001:797 03 22 F1 94 00 00 00 00       $%  ANS001:79F 03 22 F1 94 00 00 00 00
  $%  REQ002:797 03 22 F1 95 00 00 00 00       $%  ANS002:79F 03 22 F1 95 00 00 00 00
  $%  REQ003:797 03 22 F1 80 00 00 00 00       $%  ANS003:79F 03 22 F1 80 00 00 00 00

  $%  000:硬件版本:            $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:            $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  002:软件编号:            $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:            $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:            $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  005:修改次数:            $%    $%  ANS002.BYTE009  $%  y=x1;
  $%  006:boot版本号:          $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%d%s%d%s%s%d],x1+2000,@0197,x2,@019a,@019b,x1);
  $%  007:boot版本信息:        $%    $%  ANS003.BYTE007  $%  y=SPRINTF([%d%d%d],x1,x2,x3);
  $%  008:发布日期:            $%    $%  ANS003.BYTE010  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:797 03 22 00 01 00 00 00 00       $  ANS000:79F 03 22 00 01 00 00 00 00
  $  REQ001:797 03 22 00 02 00 00 00 00       $  ANS001:79F 03 22 00 02 00 00 00 00
  $  REQ002:797 03 22 00 03 00 00 00 00       $  ANS002:79F 03 22 00 03 00 00 00 00
  $  REQ003:797 03 22 00 04 00 00 00 00       $  ANS003:79F 03 22 00 04 00 00 00 00
  $  REQ004:797 03 22 00 05 00 00 00 00       $  ANS004:79F 03 22 00 05 00 00 00 00
  $  REQ005:797 03 22 00 06 00 00 00 00       $  ANS005:79F 03 22 00 06 00 00 00 00
  $  REQ006:797 03 22 00 07 00 00 00 00       $  ANS006:79F 03 22 00 07 00 00 00 00
  $  REQ007:797 03 22 00 08 00 00 00 00       $  ANS007:79F 03 22 00 08 00 00 00 00
  $  REQ008:797 03 22 00 09 00 00 00 00       $  ANS008:79F 03 22 00 09 00 00 00 00
  $  REQ009:797 03 22 00 10 00 00 00 00       $  ANS009:79F 03 22 00 10 00 00 00 00
  $  REQ010:797 03 22 00 11 00 00 00 00       $  ANS010:79F 03 22 00 11 00 00 00 00
  $  REQ011:797 03 22 00 12 00 00 00 00       $  ANS011:79F 03 22 00 12 00 00 00 00
  $  REQ012:797 03 22 00 13 00 00 00 00       $  ANS012:79F 03 22 00 13 00 00 00 00
  $  REQ013:797 03 22 00 14 00 00 00 00       $  ANS013:79F 03 22 00 14 00 00 00 00
  $  REQ014:797 03 22 00 15 00 00 00 00       $  ANS014:79F 03 22 00 15 00 00 00 00
  $  REQ015:797 03 22 00 16 00 00 00 00       $  ANS015:79F 03 22 00 16 00 00 00 00
  $  REQ016:797 03 22 00 17 00 00 00 00       $  ANS016:79F 03 22 00 17 00 00 00 00
  $  REQ017:797 03 22 00 18 00 00 00 00       $  ANS017:79F 03 22 00 18 00 00 00 00
  $  REQ018:797 03 22 00 19 00 00 00 00       $  ANS018:79F 03 22 00 19 00 00 00 00
  $  REQ019:797 03 22 00 1A 00 00 00 00       $  ANS019:79F 03 22 00 1A 00 00 00 00
  $  REQ020:797 03 22 00 1B 00 00 00 00       $  ANS020:79F 03 22 00 1B 00 00 00 00
  $  REQ021:797 03 22 00 1C 00 00 00 00       $  ANS021:79F 03 22 00 1C 00 00 00 00
  $  REQ022:797 03 22 00 1D 00 00 00 00       $  ANS022:79F 03 22 00 1D 00 00 00 00
  $  REQ023:797 03 22 F1 80 00 00 00 00       $  ANS023:79F 03 22 F1 80 00 00 00 00

  $  000.S2开关状态                        $    $          $    $  ANS000.BYTE004  $  switxh(x1)0x00: y=@002a;0x01: y=@002b;default: y=@0001;
  $  001.故障状态                          $    $          $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@0078;0x01: y=@01d7;0x02: y=@01d8;default: y=@0001;
  $  002.交流侧电压                        $    $  V       $    $  ANS002.BYTE004  $  y=(x2*256+x1);
  $  003.直流侧电压                        $    $  V       $    $  ANS003.BYTE004  $  y=(x2*256+x1);
  $  004.直流侧电流                        $    $  A       $    $  ANS004.BYTE004  $  y=SPRINTF([%.1f],x1*0.4-50);
  $  005.交流侧频率                        $    $  HZ      $    $  ANS005.BYTE004  $  y=x1;
  $  006.交流侧电流                        $    $  A       $    $  ANS006.BYTE004  $  y=SPRINTF([%.1f],x1*0.2);
  $  007.PWM(脉宽调制)波占空比监测         $    $  %       $    $  ANS007.BYTE004  $  y=x1;
  $  008.交流外充接地状态                  $    $          $    $  ANS008.BYTE004  $  switxh(x1)0x00: y=@0078;0x01: y=@0167;default: y=@0001;
  $  009.交流互锁故障                      $    $          $    $  ANS009.BYTE004  $  switxh(x1)0x00: y=@0078;0x01: y=@0167;default: y=@0001;
  $  010.本次累积充电量                    $    $  KWH     $    $  ANS010.BYTE004  $  y=SPRINTF([%.3f],(x1*256+x2)/500);
  $  011.交流侧功率                        $    $  W       $    $  ANS011.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)*0.2);
  $  012.内部温度1                         $    $  ℃      $    $  ANS012.BYTE004  $  y=SPRINTF([%d],x1-40);
  $  013.内部温度2                         $    $  ℃      $    $  ANS013.BYTE004  $  y=SPRINTF([%d],x1-40);
  $  014.内部温度3                         $    $  ℃      $    $  ANS014.BYTE004  $  y=SPRINTF([%d],x1-40);
  $  015.内部温度4                         $    $  ℃      $    $  ANS015.BYTE004  $  y=SPRINTF([%d],x1-40);
  $  016.充电口温度                        $    $  ℃      $    $  ANS016.BYTE004  $  y=SPRINTF([%d],x1-40);
  $  017.与BMS(电池管理系统)通讯状态       $    $          $    $  ANS017.BYTE004  $  switxh(x1)0x00: y=@0078;0x01: y=@0167;default: y=@0001;
  $  018.散热风扇占空比                    $    $  %       $    $  ANS018.BYTE004  $  y=x1;
  $  019.充放电系统工作状态                $    $          $    $  ANS019.BYTE004  $  switxh(x1)0x00: y=@025c;0x01: y=@025d;0x02: y=@01da;0x03: y=@01db;0x04: y=@025e;0x05: y=@025f;0x06: y=@0260;0x07: y=@0261;0x08: y=@0262;0x09: y=@0263;0x0A: y=@0810;0x0B: y=@0811;0x0C: y=@0421;0x0D: y=@0422;default: y=@0001;
  $  020.充放电系统故障状态                $    $          $    $  ANS020.BYTE004  $  switxh(x1)0x00: y=@0078;0x01: y=@0417;0x02: y=@0259;0x04: y=@025a;0x05: y=@04c7;0x06: y=@0614;0x07: y=@0615;default: y=@0001;
  $  021.充电连接装置连接状态              $    $          $    $  ANS021.BYTE004  $  switxh(x1)0x00: y=@0254;0x01: y=@0416;0x02: y=@0256;0x03: y=@0257;default: y=@0001;
  $  022.DC通讯失效                        $    $          $    $  ANS022.BYTE004  $  switxh(x1)0x00: y=@0078;0x01: y=@0167;default: y=@0001;
  $  023.boot版本号                        $    $          $    $  ANS023.BYTE004  $  y=SPRINTF([%d%s%d%s%s%d],x1+2000,@0197,x2,@019a,@019b,x1);
  $  024.boot版本信息                      $    $          $    $  ANS023.BYTE007  $  y=SPRINTF([%d%d%d],x1,x2,x3);
  $  025.发布日期                          $    $          $    $  ANS023.BYTE010  $  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:797 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
