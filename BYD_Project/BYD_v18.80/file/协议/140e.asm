
    车型ID：140e

    模拟：协议模拟-->140e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~778

进入命令:

  $~  REQ000:770 02 10 01 00 00 00 00 00       $~  ANS000:778 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:770 02 3E 80 00 00 00 00 00       $!  ANS000:778 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:770 03 19 02 09 00 00 00 00       $#  ANS000:778 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:770 04 14 FF FF FF 00 00 00       $$  ANS000:778 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:770 03 22 F1 93 00 00 00 00       $%  ANS000:778 03 22 F1 93 00 00 00 00
  $%  REQ001:770 03 22 F1 94 00 00 00 00       $%  ANS001:778 03 22 F1 94 00 00 00 00
  $%  REQ002:770 03 22 F1 95 00 00 00 00       $%  ANS002:778 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:770 03 22 00 01 00 00 00 00       $  ANS000:778 03 22 00 01 00 00 00 00
  $  REQ001:770 03 22 00 02 00 00 00 00       $  ANS001:778 03 22 00 02 00 00 00 00
  $  REQ002:770 03 22 00 03 00 00 00 00       $  ANS002:778 03 22 00 03 00 00 00 00
  $  REQ003:770 03 22 00 04 00 00 00 00       $  ANS003:778 03 22 00 04 00 00 00 00
  $  REQ004:770 03 22 00 06 00 00 00 00       $  ANS004:778 03 22 00 06 00 00 00 00

  $  000.左近光灯工作时长       $    $       $    $  ANS000.BYTE004  $  y=x1*256+x2;
  $  001.左远光灯工作时长       $    $       $    $  ANS001.BYTE004  $  y=x1*256+x2;
  $  002.左位置灯工作时长       $    $       $    $  ANS002.BYTE004  $  y=x1*256+x2;
  $  003.左昼行灯工作时长       $    $       $    $  ANS003.BYTE004  $  y=x1*256+x2;
  $  004.左前雾灯工作时长       $    $       $    $  ANS004.BYTE004  $  y=x1*256+x2;

;******************************************************************************************************************************************************

动作测试:

$^ 00.左前位灯测试 
$^TYPE0
$^BUTTON:开 
$^REQ00:770 05 2F 20 01 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:770 05 2F 20 01 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:770 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.左近光灯测试 
$^TYPE0
$^BUTTON:开 
$^REQ00:770 05 2F 20 02 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:770 05 2F 20 02 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:770 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.左远光灯测试 
$^TYPE0
$^BUTTON:开 
$^REQ00:770 05 2F 20 03 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:770 05 2F 20 03 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:770 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.左昼行灯测试 
$^TYPE0
$^BUTTON:开 
$^REQ00:770 05 2F 20 04 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:770 05 2F 20 04 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:770 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.左前雾灯测试 
$^TYPE0
$^BUTTON:开 
$^REQ00:770 05 2F 20 06 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:770 05 2F 20 06 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:770 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:770 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
