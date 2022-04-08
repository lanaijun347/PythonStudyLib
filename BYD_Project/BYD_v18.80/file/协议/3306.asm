
    车型ID：3306

    模拟：协议模拟-->3306

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~78B

进入命令:

  $~  REQ000:783 02 10 01 00 00 00 00 00       $~  ANS000:78B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:783 02 3E 80 00 00 00 00 00       $!  ANS000:78B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:783 03 19 02 09 00 00 00 00       $#  ANS000:78B 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/36000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:783 04 14 FF FF FF 00 00 00       $$  ANS000:78B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:783 03 22 F1 95 00 00 00 00       $%  ANS000:78B 03 22 F1 95 00 00 00 00
  $%  REQ001:783 03 22 F1 94 00 00 00 00       $%  ANS001:78B 03 22 F1 94 00 00 00 00
  $%  REQ002:783 03 22 F1 93 00 00 00 00       $%  ANS002:78B 03 22 F1 93 00 00 00 00
  $%  REQ003:783 03 22 F1 80 00 00 00 00       $%  ANS003:78B 03 22 F1 80 00 00 00 00

  $%  000:软件版本:            $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  001:软件日期:            $%    $%  ANS000.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:修改次数:            $%    $%  ANS000.BYTE009  $%  y=x1;
  $%  003:软件编号:            $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  004:硬件版本:            $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  005:硬件日期:            $%    $%  ANS002.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  006:boot版本号:          $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%d%s%d%s%s%d],x1+2000,@0038,x2,@0521,@0522,x1);
  $%  007:boot版本信息:        $%    $%  ANS003.BYTE007  $%  y=SPRINTF([%d%d%d],x1,x2,x3);
  $%  008:发布日期:            $%    $%  ANS003.BYTE010  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:783 03 22 01 08 00 00 00 00       $  ANS000:78B 03 22 01 08 00 00 00 00
  $  REQ001:783 03 22 01 0A 00 00 00 00       $  ANS001:78B 03 22 01 0A 00 00 00 00
  $  REQ002:783 03 22 32 00 00 00 00 00       $  ANS002:78B 03 22 32 00 00 00 00 00
  $  REQ003:783 03 22 32 01 00 00 00 00       $  ANS003:78B 03 22 32 01 00 00 00 00
  $  REQ004:783 03 22 32 08 00 00 00 00       $  ANS004:78B 03 22 32 08 00 00 00 00
  $  REQ005:783 03 22 32 02 00 00 00 00       $  ANS005:78B 03 22 32 02 00 00 00 00
  $  REQ006:783 03 22 32 03 00 00 00 00       $  ANS006:78B 03 22 32 03 00 00 00 00
  $  REQ007:783 03 22 32 04 00 00 00 00       $  ANS007:78B 03 22 32 04 00 00 00 00
  $  REQ008:783 03 22 32 05 00 00 00 00       $  ANS008:78B 03 22 32 05 00 00 00 00
  $  REQ009:783 03 22 32 06 00 00 00 00       $  ANS009:78B 03 22 32 06 00 00 00 00
  $  REQ010:783 03 22 32 07 00 00 00 00       $  ANS010:78B 03 22 32 07 00 00 00 00
  $  REQ011:783 03 22 32 0A 00 00 00 00       $  ANS011:78B 03 22 32 0A 00 00 00 00
  $  REQ012:783 03 22 32 0B 00 00 00 00       $  ANS012:78B 03 22 32 0B 00 00 00 00
  $  REQ013:783 03 22 32 0C 00 00 00 00       $  ANS013:78B 03 22 32 0C 00 00 00 00
  $  REQ014:783 03 22 32 0D 00 00 00 00       $  ANS014:78B 03 22 32 0D 00 00 00 00
  $  REQ015:783 03 22 32 0E 00 00 00 00       $  ANS015:78B 03 22 32 0E 00 00 00 00

  $  000.车速                     $    $  km/h     $    $  ANS000.BYTE004  $  y=SPRINTF([%d],x1*1);
  $  001.ECU供电电压              $    $  V        $    $  ANS001.BYTE004  $  y=SPRINTF([%.1f],x1*0.1);
  $  002.转向角度                 $    $  °       $    $  ANS002.BYTE004  $  y=SPRINTF([%.1f],(x1*256+x2)/10-780);
  $  003.ECU温度                  $    $  ℃       $    $  ANS003.BYTE004  $  y=SPRINTF([%d],x1/10-40);
  $  004.MOTOR温度                $    $  ℃       $    $  ANS004.BYTE004  $  y=SPRINTF([%d],x1-40);
  $  005.助力系数                 $    $  %        $    $  ANS005.BYTE004  $  y=SPRINTF([%d],x1*(100/255));
  $  006.电机电流                 $    $  A        $    $  ANS006.BYTE004  $  if(x1<0x80) y=SPRINTF([%.1f],(x1*256+x2)*0.5);else y=SPRINTF([%.1f],((x1-256)*256+x2)*0.5);
  $  007.转向速度                 $    $  °/s     $    $  ANS007.BYTE004  $  y=SPRINTF([%.1f],(x1*256+x2)*0.1);
  $  008.方向盘转矩               $    $  Nm       $    $  ANS008.BYTE004  $  if(x1<0x80) y=SPRINTF([%.2f],(x1*256+x2)*0.01);else y=SPRINTF([%.2f],((x1-256)*256+x2)*0.01);
  $  009.转矩传感器供电电压       $    $  V        $    $  ANS009.BYTE004  $  y=SPRINTF([%.1f],x1*0.1);
  $  010.电机输出力矩             $    $           $    $  ANS010.BYTE004  $  if(x1<0x80) y=SPRINTF([%.2f],(x1*256+x2)*0.01);else y=SPRINTF([%.2f],((x1-256)*256+x2)*0.01);
  $  011.电机转子位置             $    $  °       $    $  ANS011.BYTE004  $  y=SPRINTF([%d],(x1*256+x2)*(360/4096));
  $  012.电机转速                 $    $  rpm      $    $  ANS012.BYTE004  $  if(x1<0x80) y=SPRINTF([%d],(x1*256+x2)*1);else y=SPRINTF([%d],((x1-256)*256+x2)*1);
  $  013.端部保护状态             $    $           $    $  ANS013.BYTE004  $  switxh(x1&0x03)0x00: y=@05c6;0x01: y=@05c7;0x02: y=@05c8;default: y=@0002;
  $  014.系统状态                 $    $           $    $  ANS014.BYTE004  $  switxh((x1*256+x2))0x00: y=@05cc;0x01: y=@05cd;0x02: y=@05ce;0x03: y=@05cf;0x04: y=@05d0;0x05: y=@05d1;0x06: y=@05d2;0xFF: y=@00c7;default: y=@0002;
  $  015.助力模式                 $    $           $    $  ANS015.BYTE004  $  switxh(x1)0x00: y=@05c9;0x01: y=@05ca;0x02: y=@05cb;default: y=@0002;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:783 30 01 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
