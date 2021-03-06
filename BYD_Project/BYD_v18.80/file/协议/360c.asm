
    车型ID：360c

    模拟：协议模拟-->360c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~788

进入命令:

  $~  REQ000:780 02 10 01 00 00 00 00 00       $~  ANS000:788 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:780 02 3E 80 00 00 00 00 00       $!  ANS000:788 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:780 03 19 02 09 00 00 00 00       $#  ANS000:788 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/c0000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:780 04 14 FF FF FF 00 00 00       $$  ANS000:788 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:780 03 22 F1 93 00 00 00 00       $%  ANS000:788 03 22 F1 93 00 00 00 00
  $%  REQ001:780 03 22 F1 94 00 00 00 00       $%  ANS001:788 03 22 F1 94 00 00 00 00
  $%  REQ002:780 03 22 F1 95 00 00 00 00       $%  ANS002:788 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%d%s%02d%s%02d%s],x1+2000,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:780 03 22 00 03 00 00 00 00       $  ANS000:788 03 22 00 03 00 00 00 00
  $  REQ001:780 03 22 00 04 00 00 00 00       $  ANS001:788 03 22 00 04 00 00 00 00
  $  REQ002:780 03 22 00 08 00 00 00 00       $  ANS002:788 03 22 00 08 00 00 00 00
  $  REQ003:780 03 22 00 09 00 00 00 00       $  ANS003:788 03 22 00 09 00 00 00 00
  $  REQ004:780 03 22 00 0A 00 00 00 00       $  ANS004:788 03 22 00 0A 00 00 00 00
  $  REQ005:780 03 22 00 0B 00 00 00 00       $  ANS005:788 03 22 00 0B 00 00 00 00
  $  REQ006:780 03 22 00 0C 00 00 00 00       $  ANS006:788 03 22 00 0C 00 00 00 00
  $  REQ007:780 03 22 00 0D 00 00 00 00       $  ANS007:788 03 22 00 0D 00 00 00 00
  $  REQ008:780 03 22 00 0E 00 00 00 00       $  ANS008:788 03 22 00 0E 00 00 00 00
  $  REQ009:780 03 22 00 0F 00 00 00 00       $  ANS009:788 03 22 00 0F 00 00 00 00
  $  REQ010:780 03 22 00 10 00 00 00 00       $  ANS010:788 03 22 00 10 00 00 00 00
  $  REQ011:780 03 22 00 11 00 00 00 00       $  ANS011:788 03 22 00 11 00 00 00 00
  $  REQ012:780 03 22 00 12 00 00 00 00       $  ANS012:788 03 22 00 12 00 00 00 00
  $  REQ013:780 03 22 00 13 00 00 00 00       $  ANS013:788 03 22 00 13 00 00 00 00
  $  REQ014:780 03 22 00 14 00 00 00 00       $  ANS014:788 03 22 00 14 00 00 00 00
  $  REQ015:780 03 22 00 16 00 00 00 00       $  ANS015:788 03 22 00 16 00 00 00 00
  $  REQ016:780 03 22 00 17 00 00 00 00       $  ANS016:788 03 22 00 17 00 00 00 00
  $  REQ017:780 03 22 00 19 00 00 00 00       $  ANS017:788 03 22 00 19 00 00 00 00
  $  REQ018:780 03 22 00 24 00 00 00 00       $  ANS018:788 03 22 00 24 00 00 00 00
  $  REQ019:780 03 22 D0 02 00 00 00 00       $  ANS019:788 03 22 D0 02 00 00 00 00
  $  REQ020:780 03 22 D0 03 00 00 00 00       $  ANS020:788 03 22 D0 03 00 00 00 00
  $  REQ021:780 03 22 D0 04 00 00 00 00       $  ANS021:788 03 22 D0 04 00 00 00 00
  $  REQ022:780 03 22 F1 A0 00 00 00 00       $  ANS022:788 03 22 F1 A0 00 00 00 00
  $  REQ023:780 03 22 1F F3 00 00 00 00       $  ANS023:788 03 22 1F F3 00 00 00 00

  $  000.前驱动电机状态                $    $           $    $  ANS000.BYTE004  $  switxh((x2*256+x1))0x00: y=@00dd;0x01: y=@00de;0x02: y=@0000;default: y=@0002;
  $  001.启动允许                      $    $           $    $  ANS001.BYTE004  $  switxh((x2*256+x1))0x00: y=@00e4;0x01: y=@04ee;default: y=@0002;
  $  002.动力系统状态                  $    $           $    $  ANS002.BYTE004  $  switxh((x2*256+x1))0x00: y=@0045;0x01: y=@0046;default: y=@0002;
  $  003.前驱动电机母线电压            $    $  V        $    $  ANS003.BYTE004  $  y=(x2*256+x1);
  $  004.转速                          $    $  rpm      $    $  ANS004.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)-18000);
  $  005.扭矩                          $    $  N·M     $    $  ANS005.BYTE004  $  y=SPRINTF([%.1f],(x2*256+x1)*0.1-500);
  $  006.功率                          $    $  kw       $    $  ANS006.BYTE004  $  y=SPRINTF([%.1f],(x2*256+x1)*0.1-100);
  $  007.冷却液温度                    $    $  ℃       $    $  ANS007.BYTE004  $  if(((x2*256+x1)>=0)&&((x2*256+x1)<=200)) y=(x2*256+x1)-40;else if((x2*256+x1)==255) y=@04ef;else y=@0002;
  $  008.IPM散热器温度                 $    $  ℃       $    $  ANS008.BYTE004  $  if(((x2*256+x1)>=0)&&((x2*256+x1)<=200)) y=(x2*256+x1)-40;else if((x2*256+x1)==255) y=@04e7;else y=@0002;
  $  009.电机温度                      $    $  ℃       $    $  ANS009.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)-40);
  $  010.IGBT温度                      $    $  ℃       $    $  ANS010.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)-40);
  $  011.A相电流                       $    $  A        $    $  ANS011.BYTE004  $  y=(x2*256+x1);
  $  012.B相电流                       $    $  A        $    $  ANS012.BYTE004  $  y=(x2*256+x1);
  $  013.C相电流                       $    $  A        $    $  ANS013.BYTE004  $  y=(x2*256+x1);
  $  014.过载系数                      $    $  %        $    $  ANS014.BYTE004  $  y=(x2*256+x1);
  $  015.前驱动电机旋变状态            $    $           $    $  ANS015.BYTE004  $  switxh((x2*256+x1))0x00: y=@0045;0x01: y=@04e4;0x02: y=@04e5;0x03: y=@04e6;default: y=@0002;
  $  016.前驱过流状态                  $    $           $    $  ANS016.BYTE004  $  switxh((x2*256+x1))0x00: y=@0045;0x01: y=@0046;default: y=@0002;
  $  017.前驱动电机控制器IPM状态       $    $           $    $  ANS017.BYTE004  $  switxh((x2*256+x1))0x00: y=@0045;0x01: y=@0046;default: y=@0002;
  $  018.主动泄放状态                  $    $           $    $  ANS018.BYTE004  $  if(x1==0) y=@00e6;else if(x1==1) y=@00e7;else if(x1==2) y=@00e8;else if(x1==3) y=@00e9;else y=@04e8;
  $  019.前驱动电机零位值              $    $           $    $  ANS019.BYTE004  $  HEX(x2,x1);
  $  020.前驱动电机零位标定状态        $    $           $    $  ANS020.BYTE004  $  if(x1==0) y=@0013;else if(x1==1) y=@04ec;else if(x1==2) y=@04ed;else y=@0108;
  $  021.电机零位检验状态              $    $           $    $  ANS021.BYTE004  $  if(x1==0) y=@04e9;else if(x1==1) y=@04ea;else if(x1==2) y=@04eb;else if(x1==3) y=@005c;else y=@0108;
  $  022.电机编号                      $    $           $    $  ANS022.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $  023.电机流水号                    $    $           $    $  ANS022.BYTE016  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $  024.前驱A相结温温度               $    $  ℃       $    $  ANS023.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)-40);
  $  025.前驱B相结温温度               $    $  ℃       $    $  ANS023.BYTE006  $  y=SPRINTF([%d],(x2*256+x1)-40);
  $  026.前驱C相结温温度               $    $  ℃       $    $  ANS023.BYTE008  $  y=SPRINTF([%d],(x2*256+x1)-40);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:780 30 08 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
