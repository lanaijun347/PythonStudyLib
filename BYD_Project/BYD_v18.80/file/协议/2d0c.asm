
    车型ID：2d0c

    模拟：协议模拟-->2d0c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~74B

进入命令:

  $~  REQ000:743 02 10 01 00 00 00 00 00       $~  ANS000:74B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:743 02 3E 80 00 00 00 00 00       $!  ANS000:74B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:743 03 19 02 09 00 00 00 00       $#  ANS000:74B 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/42000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:743 04 14 FF FF FF 00 00 00       $$  ANS000:74B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:743 03 22 F1 93 00 00 00 00       $%  ANS000:74B 03 22 F1 93 00 00 00 00
  $%  REQ001:743 03 22 F1 94 00 00 00 00       $%  ANS001:74B 03 22 F1 94 00 00 00 00
  $%  REQ002:743 03 22 F1 95 00 00 00 00       $%  ANS002:74B 03 22 F1 95 00 00 00 00
  $%  REQ003:743 03 22 00 32 00 00 00 00       $%  ANS003:74B 03 22 00 32 00 00 00 00

  $%  000:硬件版本:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:              $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:              $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:              $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:              $%    $%  ANS002.BYTE009  $%  y=x1;
  $%  006:售后软件版本号:        $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02d.%02d.%02d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:743 03 22 00 01 00 00 00 00       $  ANS000:74B 03 22 00 01 00 00 00 00
  $  REQ001:743 03 22 00 06 00 00 00 00       $  ANS001:74B 03 22 00 06 00 00 00 00
  $  REQ002:743 03 22 00 07 00 00 00 00       $  ANS002:74B 03 22 00 07 00 00 00 00
  $  REQ003:743 03 22 00 08 00 00 00 00       $  ANS003:74B 03 22 00 08 00 00 00 00
  $  REQ004:743 03 22 00 0A 00 00 00 00       $  ANS004:74B 03 22 00 0A 00 00 00 00
  $  REQ005:743 03 22 00 0B 00 00 00 00       $  ANS005:74B 03 22 00 0B 00 00 00 00
  $  REQ006:743 03 22 00 0C 00 00 00 00       $  ANS006:74B 03 22 00 0C 00 00 00 00
  $  REQ007:743 03 22 00 0D 00 00 00 00       $  ANS007:74B 03 22 00 0D 00 00 00 00
  $  REQ008:743 03 22 00 0E 00 00 00 00       $  ANS008:74B 03 22 00 0E 00 00 00 00
  $  REQ009:743 03 22 00 0F 00 00 00 00       $  ANS009:74B 03 22 00 0F 00 00 00 00
  $  REQ010:743 03 22 00 10 00 00 00 00       $  ANS010:74B 03 22 00 10 00 00 00 00
  $  REQ011:743 03 22 00 11 00 00 00 00       $  ANS011:74B 03 22 00 11 00 00 00 00
  $  REQ012:743 03 22 00 12 00 00 00 00       $  ANS012:74B 03 22 00 12 00 00 00 00
  $  REQ013:743 03 22 00 14 00 00 00 00       $  ANS013:74B 03 22 00 14 00 00 00 00
  $  REQ014:743 03 22 00 15 00 00 00 00       $  ANS014:74B 03 22 00 15 00 00 00 00
  $  REQ015:743 03 22 00 16 00 00 00 00       $  ANS015:74B 03 22 00 16 00 00 00 00

  $  000.动力源组合模式                     $    $           $    $  ANS000.BYTE004  $  switxh((x2*256+x1))0x00: y=@02b1;0x01: y=@02b2;0x02: y=@02b3;0x03: y=@02b4;0x04: y=@02b5;0x05: y=@02b6;0x06: y=@02b7;0x07: y=@02b8;0x08: y=@02b9;default: y=@02ae;
  $  001.前驱动电机控制器启动允许命令       $    $           $    $  ANS001.BYTE004  $  switxh((x2*256+x1))0x00: y=@00e4;0x01: y=@02c7;default: y=@02ae;
  $  002.后驱电动机控制器启动允许命令       $    $           $    $  ANS002.BYTE004  $  switxh((x2*256+x1))0x00: y=@00e4;0x01: y=@02c7;default: y=@02ae;
  $  003.整车控制器防盗解除状态             $    $           $    $  ANS003.BYTE004  $  switxh((x2*256+x1))0x00: y=@00e1;0x01: y=@00e2;0x02: y=@04be;default: y=@02ae;
  $  004.整车档位                           $    $           $    $  ANS004.BYTE004  $  switxh((x2*256+x1))0x01: y=@00d7;0x02: y=@0071;0x03: y=@0072;0x04: y=@00d8;default: y=@02ae;
  $  005.整车工作模式                       $    $           $    $  ANS005.BYTE004  $  switxh((x2*256+x1))0x00: y=@00d2;0x01: y=@00d3;0x02: y=@00d4;0x03: y=@00d5;default: y=@02ae;
  $  006.整车运行模式                       $    $           $    $  ANS006.BYTE004  $  switxh((x2*256+x1))0x00: y=@00d9;0x01: y=@00da;default: y=@02ae;
  $  007.动力系统状态                       $    $           $    $  ANS007.BYTE004  $  switxh((x2*256+x1))0x00: y=@0045;0x01: y=@02ba;0x02: y=@02bb;0x03: y=@02bc;default: y=@02ae;
  $  008.水泵状态                           $    $           $    $  ANS008.BYTE004  $  switxh((x2*256+x1))0x00: y=@002d;0x01: y=@0000;default: y=@02ae;
  $  009.巡航状态                           $    $           $    $  ANS009.BYTE004  $  switxh((x2*256+x1))0x00: y=@02bd;0x01: y=@02be;default: y=@02ae;
  $  010.巡航目标车速                       $    $  Km/h     $    $  ANS010.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)*0.1);
  $  011.风扇请求状态                       $    $  NM       $    $  ANS011.BYTE004  $  y=(x2*256+x1);
  $  012.前驱目标扭矩                       $    $  NM       $    $  ANS012.BYTE004  $  y=(x2*256+x1)*0.1-500;
  $  013.油门深度                           $    $  %        $    $  ANS013.BYTE004  $  y=(x2*256+x1);
  $  014.刹车深度                           $    $  %        $    $  ANS014.BYTE004  $  y=(x2*256+x1);
  $  015.冷却液温度                         $    $  ℃       $    $  ANS015.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)-40);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:743 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
