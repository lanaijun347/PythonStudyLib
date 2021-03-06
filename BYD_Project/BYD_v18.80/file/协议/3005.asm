
    车型ID：3005

    模拟：协议模拟-->3005

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~78D

进入命令:

  $~  REQ000:785 02 10 01 00 00 00 00 00       $~  ANS000:78D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:785 02 3E 80 00 00 00 00 00       $!  ANS000:78D 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:785 03 19 02 09 00 00 00 00       $#  ANS000:78D 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/b4000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:785 04 14 FF FF FF 00 00 00       $$  ANS000:78D 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:785 03 22 F1 93 00 00 00 00       $%  ANS000:78D 03 22 F1 93 00 00 00 00
  $%  REQ001:785 03 22 F1 94 00 00 00 00       $%  ANS001:78D 03 22 F1 94 00 00 00 00
  $%  REQ002:785 03 22 F1 95 00 00 00 00       $%  ANS002:78D 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:785 03 22 00 03 00 00 00 00       $  ANS000:78D 03 22 00 03 00 00 00 00
  $  REQ001:785 03 22 00 04 00 00 00 00       $  ANS001:78D 03 22 00 04 00 00 00 00
  $  REQ002:785 03 22 00 09 00 00 00 00       $  ANS002:78D 03 22 00 09 00 00 00 00
  $  REQ003:785 03 22 00 0A 00 00 00 00       $  ANS003:78D 03 22 00 0A 00 00 00 00
  $  REQ004:785 03 22 00 0B 00 00 00 00       $  ANS004:78D 03 22 00 0B 00 00 00 00
  $  REQ005:785 03 22 00 0C 00 00 00 00       $  ANS005:78D 03 22 00 0C 00 00 00 00
  $  REQ006:785 03 22 00 0E 00 00 00 00       $  ANS006:78D 03 22 00 0E 00 00 00 00
  $  REQ007:785 03 22 00 0F 00 00 00 00       $  ANS007:78D 03 22 00 0F 00 00 00 00
  $  REQ008:785 03 22 00 10 00 00 00 00       $  ANS008:78D 03 22 00 10 00 00 00 00
  $  REQ009:785 03 22 00 11 00 00 00 00       $  ANS009:78D 03 22 00 11 00 00 00 00
  $  REQ010:785 03 22 00 12 00 00 00 00       $  ANS010:78D 03 22 00 12 00 00 00 00
  $  REQ011:785 03 22 00 13 00 00 00 00       $  ANS011:78D 03 22 00 13 00 00 00 00
  $  REQ012:785 03 22 00 14 00 00 00 00       $  ANS012:78D 03 22 00 14 00 00 00 00
  $  REQ013:785 03 22 00 15 00 00 00 00       $  ANS013:78D 03 22 00 15 00 00 00 00
  $  REQ014:785 03 22 1F F0 00 00 00 00       $  ANS014:78D 03 22 1F F0 00 00 00 00

  $  000.后驱动电机状态       $    $           $    $  ANS000.BYTE004  $  switxh(x1)0x00: y=@00dd;0x01: y=@026e;0x02: y=@026f;default: y=@0002;
  $  001.启动允许             $    $           $    $  ANS001.BYTE004  $  switxh((x2*256+x1))0x00: y=@00e4;0x01: y=@04ee;default: y=@0002;
  $  002.母线电压             $    $  V        $    $  ANS002.BYTE004  $  y=(x2*256+x1);
  $  003.转速                 $    $  rpm      $    $  ANS003.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)-15000);
  $  004.扭矩                 $    $  N·M     $    $  ANS004.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)*0.1-500);
  $  005.功率                 $    $  kw       $    $  ANS005.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)*0.1-100);
  $  006.IPM散热器温度        $    $  ℃       $    $  ANS006.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)-40);
  $  007.电机温度             $    $  ℃       $    $  ANS007.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)-40);
  $  008.IGBT温度             $    $  ℃       $    $  ANS008.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)-40);
  $  009.A相电流              $    $  A        $    $  ANS009.BYTE004  $  y=(x2*256+x1);
  $  010.B相电流              $    $  A        $    $  ANS010.BYTE004  $  y=(x2*256+x1);
  $  011.C相电流              $    $  A        $    $  ANS011.BYTE004  $  y=(x2*256+x1);
  $  012.过载系数             $    $  %        $    $  ANS012.BYTE004  $  y=(x2*256+x1);
  $  013.桥臂状态             $    $           $    $  ANS013.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@026b;0x02: y=@026c;0x03: y=@026d;default: y=@0002;
  $  014.软件包版本           $    $           $    $  ANS014.BYTE004  $  y=SPRINTF([%02d.%02d.%02d],x1,x2,x3);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:785 30 08 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
