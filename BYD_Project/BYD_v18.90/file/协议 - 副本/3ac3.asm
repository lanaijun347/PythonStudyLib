
    车型ID：3ac3

    模拟：协议模拟-->3ac3

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7CF

进入命令:

  $~  REQ000:7C7 02 10 01 00 00 00 00 00       $~  ANS000:7CF 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7C7 02 3E 80 00 00 00 00 00       $!  ANS000:7CF 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7C7 03 19 02 09 00 00 00 00       $#  ANS000:7CF 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/99000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7C7 04 14 FF FF FF 00 00 00       $$  ANS000:7CF 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7C7 03 22 F1 93 00 00 00 00       $%  ANS000:7CF 03 22 F1 93 00 00 00 00
  $%  REQ001:7C7 03 22 F1 94 00 00 00 00       $%  ANS001:7CF 03 22 F1 94 00 00 00 00
  $%  REQ002:7C7 03 22 F1 95 00 00 00 00       $%  ANS002:7CF 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7C7 03 22 00 04 00 00 00 00       $  ANS000:7CF 03 22 00 04 00 00 00 00
  $  REQ001:7C7 03 22 00 05 00 00 00 00       $  ANS001:7CF 03 22 00 05 00 00 00 00

  $  000.管柱调节开关上倾信号               $    $        $    $  ANS000.BYTE004  $  if(x1&0x01) y=@0010;else y=@0012;
  $  001.管柱调节信号下倾信号               $    $        $    $  ANS000.BYTE004  $  if(x1&0x02) y=@0010;else y=@0012;
  $  002.管柱调节开关伸出信号               $    $        $    $  ANS000.BYTE004  $  if(x1&0x04) y=@0010;else y=@0012;
  $  003.管柱调节开关缩回信号               $    $        $    $  ANS000.BYTE004  $  if(x1&0x08) y=@0010;else y=@0012;
  $  004.电动管柱系统状态                   $    $        $    $  ANS000.BYTE004  $  if(x1&0x10) y=@0087;else y=@0078;
  $  005.电动管柱工作状态                   $    $        $    $  ANS000.BYTE004  $  switxh(x1&0xE0)0x20: y=@0006;0x40: y=@0007;0x60: y=@0008;0x80: y=@050c;0xA0: y=@0343;default: y=@0001;
  $  006.电源档位状态                       $    $        $    $  ANS000.BYTE005  $  switxh(x1&0x03)0x00: y=@0010;0x01: y=@0011;0x02: y=@0012;default: y=@0001;
  $  007.电源电压                           $    $  V     $    $  ANS001.BYTE004  $  y=SPRINTF([%.1f],x1*0.078);
  $  008.电动管柱轴向调节电机当前位置       $    $        $    $  ANS001.BYTE005  $  y=(x1*256+x2);
  $  009.电动管柱角度调节电机当前位置       $    $        $    $  ANS001.BYTE007  $  y=(x1*256+x2);
  $  010.电动管柱轴向调节电机行程           $    $        $    $  ANS001.BYTE009  $  y=(x1*256+x2);
  $  011.电动管柱角度调节电机行程           $    $        $    $  ANS001.BYTE011  $  y=(x1*256+x2);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7C7 30 01 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
