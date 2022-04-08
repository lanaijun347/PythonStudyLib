
    车型ID：2c23

    模拟：协议模拟-->2c23

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~73D

进入命令:

  $~  REQ000:735 02 10 01 00 00 00 00 00       $~  ANS000:73D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:735 02 3E 80 00 00 00 00 00       $!  ANS000:73D 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:735 03 19 02 09 00 00 00 00       $#  ANS000:73D 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/23000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:735 04 14 FF FF FF 00 00 00       $$  ANS000:73D 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:735 03 22 F1 93 00 00 00 00       $%  ANS000:73D 03 22 F1 93 00 00 00 00
  $%  REQ001:735 03 22 F1 94 00 00 00 00       $%  ANS001:73D 03 22 F1 94 00 00 00 00
  $%  REQ002:735 03 22 F1 95 00 00 00 00       $%  ANS002:73D 03 22 F1 95 00 00 00 00
  $%  REQ003:735 03 22 F1 80 00 00 00 00       $%  ANS003:73D 03 22 F1 80 00 00 00 00

  $%  000:硬件版本:            $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:            $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:            $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:            $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:            $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:            $%    $%  ANS002.BYTE009  $%  y=x1;
  $%  006:boot版本号:          $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%d%s%d%s%s%d],x1+2000,@0038,x2,@0521,@0522,x1);
  $%  007:boot版本信息:        $%    $%  ANS003.BYTE007  $%  y=SPRINTF([%d%d%d],x1,x2,x3);
  $%  008:发布日期:            $%    $%  ANS003.BYTE010  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:735 03 22 20 00 00 00 00 00       $  ANS000:73D 03 22 20 00 00 00 00 00

  $  000.驻车辅助配置类型       $    $       $    $  ANS000.BYTE004  $  switxh(x1)0x00: y=@0103;0x01: y=@0104;0x02: y=@0105;default: y=@0063;

;******************************************************************************************************************************************************

动作测试:

$^ 00.设置驻车辅助系统配置 
$^TYPE0
$^BUTTON:2探头 
$^REQ00:735 04 2E 20 00 00 00 00 00     $^

$^BUTTON:4探头 
$^REQ00:735 04 2E 20 00 01 00 00 00     $^

$^BUTTON:6探头 
$^REQ00:735 04 2E 20 00 02 00 00 00     $^

$^BUTTON:8探头 
$^REQ00:735 04 2E 20 00 03 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:735 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
