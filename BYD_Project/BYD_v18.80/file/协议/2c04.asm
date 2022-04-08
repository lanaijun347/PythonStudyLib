
    车型ID：2c04

    模拟：协议模拟-->2c04

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~748

进入命令:

  $~  REQ000:740 02 10 01 00 00 00 00 00       $~  ANS000:748 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:740 02 3E 80 00 00 00 00 00       $!  ANS000:748 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:740 03 19 02 09 00 00 00 00       $#  ANS000:748 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/0b000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:740 04 14 FF FF FF 00 00 00       $$  ANS000:748 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:740 03 22 F1 93 00 00 00 00       $%  ANS000:748 03 22 F1 93 00 00 00 00
  $%  REQ001:740 03 22 F1 94 00 00 00 00       $%  ANS001:748 03 22 F1 94 00 00 00 00
  $%  REQ002:740 03 22 F1 95 00 00 00 00       $%  ANS002:748 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:740 03 22 00 66 00 00 00 00       $  ANS000:748 03 22 00 66 00 00 00 00
  $  REQ001:740 03 22 00 67 00 00 00 00       $  ANS001:748 03 22 00 67 00 00 00 00
  $  REQ002:740 03 22 00 60 00 00 00 00       $  ANS002:748 03 22 00 60 00 00 00 00
  $  REQ003:740 03 22 00 62 00 00 00 00       $  ANS003:748 03 22 00 62 00 00 00 00
  $  REQ004:740 03 22 00 63 00 00 00 00       $  ANS004:748 03 22 00 63 00 00 00 00
  $  REQ005:740 03 22 00 64 00 00 00 00       $  ANS005:748 03 22 00 64 00 00 00 00
  $  REQ006:740 03 22 00 65 00 00 00 00       $  ANS006:748 03 22 00 65 00 00 00 00
  $  REQ007:740 03 22 00 68 00 00 00 00       $  ANS007:748 03 22 00 68 00 00 00 00
  $  REQ008:740 03 22 00 69 00 00 00 00       $  ANS008:748 03 22 00 69 00 00 00 00

  $  000.IGBT温度                   $    $  ℃     $    $  ANS000.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)-40);
  $  001.电感温度                   $    $  ℃     $    $  ANS001.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)-40);
  $  002.直流充电目标输入电压       $    $  V      $    $  ANS002.BYTE004  $  y=(x2*256+x1);
  $  003.直流充电实际输入电压       $    $  V      $    $  ANS003.BYTE004  $  y=(x2*256+x1);
  $  004.直流充电实际输入电流       $    $  A      $    $  ANS004.BYTE004  $  y=SPRINTF([%d],500-(x2*256+x1)*0.1);
  $  005.降压模块状态               $    $         $    $  ANS005.BYTE004  $  switxh(x1)0x00: y=@025a;0x01: y=@025b;0x02: y=@025c;0x03: y=@025d;default: y=@0002;
  $  006.升降压DC模块故障           $    $         $    $  ANS006.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@0046;default: y=@0002;
  $  007.升压侧电压                 $    $  V      $    $  ANS007.BYTE004  $  y=(x2*256+x1);
  $  008.升压侧电流                 $    $  A      $    $  ANS008.BYTE004  $  y=SPRINTF([%d],500-(x2*256+x1)*0.1);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:740 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
