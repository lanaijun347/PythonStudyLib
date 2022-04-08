
    车型ID：3108

    模拟：协议模拟-->3108

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

  $*$*DTC/0a000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:783 04 14 FF FF FF 00 00 00       $$  ANS000:78B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:783 03 22 F1 95 00 00 00 00       $%  ANS000:78B 03 22 F1 95 00 00 00 00
  $%  REQ001:783 03 22 F1 94 00 00 00 00       $%  ANS001:78B 03 22 F1 94 00 00 00 00
  $%  REQ002:783 03 22 F1 93 00 00 00 00       $%  ANS002:78B 03 22 F1 93 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  001:软件日期:        $%    $%  ANS000.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:修改次数:        $%    $%  ANS000.BYTE009  $%  y=x1;
  $%  003:软件编号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  004:硬件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  005:硬件日期:        $%    $%  ANS002.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:783 03 22 01 00 00 00 00 00       $  ANS000:78B 03 22 01 00 00 00 00 00
  $  REQ001:783 03 22 01 01 00 00 00 00       $  ANS001:78B 03 22 01 01 00 00 00 00
  $  REQ002:783 03 22 01 12 00 00 00 00       $  ANS002:78B 03 22 01 12 00 00 00 00
  $  REQ003:783 03 22 01 13 00 00 00 00       $  ANS003:78B 03 22 01 13 00 00 00 00
  $  REQ004:783 03 22 01 15 00 00 00 00       $  ANS004:78B 03 22 01 15 00 00 00 00
  $  REQ005:783 03 22 01 19 00 00 00 00       $  ANS005:78B 03 22 01 19 00 00 00 00
  $  REQ006:783 03 22 01 1A 00 00 00 00       $  ANS006:78B 03 22 01 1A 00 00 00 00
  $  REQ007:783 03 22 01 1F 00 00 00 00       $  ANS007:78B 03 22 01 1F 00 00 00 00
  $  REQ008:783 03 22 01 2A 00 00 00 00       $  ANS008:78B 03 22 01 2A 00 00 00 00
  $  REQ009:783 03 22 01 2C 00 00 00 00       $  ANS009:78B 03 22 01 2C 00 00 00 00
  $  REQ010:783 03 22 01 2F 00 00 00 00       $  ANS010:78B 03 22 01 2F 00 00 00 00
  $  REQ011:783 03 22 01 60 00 00 00 00       $  ANS011:78B 03 22 01 60 00 00 00 00
  $  REQ012:783 03 22 01 D1 00 00 00 00       $  ANS012:78B 03 22 01 D1 00 00 00 00
  $  REQ013:783 03 22 01 D2 00 00 00 00       $  ANS013:78B 03 22 01 D2 00 00 00 00
  $  REQ014:783 03 22 F1 87 00 00 00 00       $  ANS014:78B 03 22 F1 87 00 00 00 00
  $  REQ015:783 03 22 01 2E 00 00 00 00       $  ANS015:78B 03 22 01 2E 00 00 00 00
  $  REQ016:783 03 22 F1 8C 00 00 00 00       $  ANS016:78B 03 22 F1 8C 00 00 00 00

  $  000.方向盘转角             $    $  °       $    $  ANS000.BYTE004  $  if(((x1*256+x2)>=0)&&((x1*256+x2)<=7200)) y=SPRINTF([%.1f],(x1*256+x2)*0.1);else if(((x1*256+x2)>=58336)&&((x1*256+x2)<=65535)) y=SPRINTF([%.1f%.1f],(x1*256+x2)*0.1,((x1*256+x2)-65536)*0.1);else if((x1*256+x2)==32767) y=@0653;else y=@0510;
  $  001.方向盘转速             $    $  °/s     $    $  ANS001.BYTE004  $  y=SPRINTF([%.1f],(x1*256+x2)*4);
  $  002.输入扭矩               $    $           $    $  ANS002.BYTE004  $  y=SPRINTF([%.1f],(x1*256+x2)*0.1-20);
  $  003.电机电流请求           $    $           $    $  ANS003.BYTE004  $  y=SPRINTF([%d],x1-127);
  $  004.助力等级               $    $  %        $    $  ANS004.BYTE004  $  y=x1;
  $  005.系统状态               $    $           $    $  ANS005.BYTE004  $  switxh(x1)0x00: y=@0654;0x01: y=@0655;0x02: y=@0656;0x03: y=@0657;0x04: y=@0658;0x05: y=@0659;0x06: y=@065a;0x07: y=@065b;default: y=@0002;
  $  006.EPS报警                $    $           $    $  ANS006.BYTE004  $  switxh((x1*256+x2))0x00: y=@065c;0x01: y=@065d;0x02: y=@065e;0x03: y=@065f;default: y=@0002;
  $  007.助力请求               $    $           $    $  ANS007.BYTE004  $  y=SPRINTF([%.1f],(x1*256+x2)*0.1-20);
  $  008.末端保护激活           $    $           $    $  ANS008.BYTE004  $  y=x1;
  $  009.实测电机电流           $    $           $    $  ANS009.BYTE004  $  y=SPRINTF([%d],x1-127);
  $  010.EPS供电电压            $    $           $    $  ANS010.BYTE004  $  y=SPRINTF([%.1f],x1*0.1);
  $  011.助力降级等级           $    $  %        $    $  ANS011.BYTE004  $  y=x1;
  $  012.车速                   $    $           $    $  ANS012.BYTE004  $  y=SPRINTF([%.2f],(x1*256+x2)*0.01);
  $  013.Ready指示灯状态        $    $           $    $  ANS013.BYTE004  $  switxh((x1*256+x2))0x00: y=@064f;0x01: y=@0650;0x02: y=@0651;0x03: y=@0652;default: y=@0002;
  $  014.车辆制造商备件号       $    $           $    $  ANS014.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $  015.ECU温度                $    $           $    $  ANS015.BYTE004  $  y=SPRINTF([%d],x1-50);
  $  016.ECU序列号标识符        $    $           $    $  ANS016.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:783 30 01 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
