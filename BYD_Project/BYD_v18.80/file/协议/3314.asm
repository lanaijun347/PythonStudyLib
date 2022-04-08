
    车型ID：3314

    模拟：协议模拟-->3314

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7BB

进入命令:

  $~  REQ000:7B3 02 10 01 00 00 00 00 00       $~  ANS000:7BB 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7B3 02 3E 80 00 00 00 00 00       $!  ANS000:7BB 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7B3 03 19 02 09 00 00 00 00       $#  ANS000:7BB 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/3f000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7B3 04 14 FF FF FF 00 00 00       $$  ANS000:7BB 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7B3 03 22 F1 93 00 00 00 00       $%  ANS000:7BB 03 22 F1 93 00 00 00 00
  $%  REQ001:7B3 03 22 F1 94 00 00 00 00       $%  ANS001:7BB 03 22 F1 94 00 00 00 00
  $%  REQ002:7B3 03 22 F1 95 00 00 00 00       $%  ANS002:7BB 03 22 F1 95 00 00 00 00
  $%  REQ003:7B3 03 22 00 05 00 00 00 00       $%  ANS003:7BB 03 22 00 05 00 00 00 00
  $%  REQ004:7B3 03 22 F1 8C 00 00 00 00       $%  ANS004:7BB 03 22 F1 8C 00 00 00 00

  $%  000:硬件版本:                $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:                $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%d%s%02d%s%02d%s],x1+2000,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:                $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:                $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:                $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:                $%    $%  ANS002.BYTE009  $%  y=x1;
  $%  006:MCU:                     $%    $%  ANS003.BYTE004  $%  switxh(x1)0x33: y=@00f6;default: y=@0063;
  $%  007:压缩机产品序列号:        $%    $%  ANS004.BYTE004  $%  HEX(x1,x2,x3);
  $%  008:PTC生产日期:             $%    $%  ANS004.BYTE007  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7B3 03 22 00 05 00 00 00 00       $  ANS000:7BB 03 22 00 05 00 00 00 00
  $  REQ001:7B3 03 22 00 06 00 00 00 00       $  ANS001:7BB 03 22 00 06 00 00 00 00
  $  REQ002:7B3 03 22 00 07 00 00 00 00       $  ANS002:7BB 03 22 00 07 00 00 00 00
  $  REQ003:7B3 03 22 00 08 00 00 00 00       $  ANS003:7BB 03 22 00 08 00 00 00 00
  $  REQ004:7B3 03 22 00 09 00 00 00 00       $  ANS004:7BB 03 22 00 09 00 00 00 00
  $  REQ005:7B3 03 22 00 0A 00 00 00 00       $  ANS005:7BB 03 22 00 0A 00 00 00 00
  $  REQ006:7B3 03 22 00 0B 00 00 00 00       $  ANS006:7BB 03 22 00 0B 00 00 00 00
  $  REQ007:7B3 03 22 00 0C 00 00 00 00       $  ANS007:7BB 03 22 00 0C 00 00 00 00
  $  REQ008:7B3 03 22 00 0D 00 00 00 00       $  ANS008:7BB 03 22 00 0D 00 00 00 00

  $  000.MCU                  $    $          $    $  ANS000.BYTE004  $  switxh(x1)0x33: y=@00f6;default: y=@0063;
  $  001.压缩机控制状态       $    $          $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@003e;0x01: y=@004a;default: y=@0002;
  $  002.压缩机实际状态       $    $          $    $  ANS002.BYTE004  $  switxh(x1)0x00: y=@003e;0x01: y=@004a;default: y=@0002;
  $  003.压缩机目标转速       $    $  rpm     $    $  ANS003.BYTE004  $  y=(x1*256+x2);
  $  004.压缩机实际转速       $    $  rpm     $    $  ANS004.BYTE004  $  y=(x1*256+x2);
  $  005.母线电压             $    $  V       $    $  ANS005.BYTE004  $  y=(x1*256+x2);
  $  006.母线电流             $    $  A       $    $  ANS006.BYTE004  $  y=SPRINTF([%.1f],x1*0.125);
  $  007.压缩机当前功率       $    $  W       $    $  ANS007.BYTE004  $  y=(x1*256+x2);
  $  008.IPM/IGBT温度         $    $  ℃      $    $  ANS008.BYTE004  $  y=SPRINTF([%d],x1-100);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7B3 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
