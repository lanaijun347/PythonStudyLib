
    车型ID：121a

    模拟：协议模拟-->121a

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~75A

进入命令:

  $~  REQ000:752 02 10 01 00 00 00 00 00       $~  ANS000:75A 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:752 02 3E 80 00 00 00 00 00       $!  ANS000:75A 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:752 03 19 02 09 00 00 00 00       $#  ANS000:75A 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:752 04 14 FF FF FF 00 00 00       $$  ANS000:75A 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:752 03 22 F1 93 00 00 00 00       $%  ANS000:75A 03 22 F1 93 00 00 00 00
  $%  REQ001:752 03 22 F1 94 00 00 00 00       $%  ANS001:75A 03 22 F1 94 00 00 00 00
  $%  REQ002:752 03 22 F1 95 00 00 00 00       $%  ANS002:75A 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:752 03 22 00 04 00 00 00 00       $  ANS000:75A 03 22 00 04 00 00 00 00
  $  REQ001:752 03 22 00 05 00 00 00 00       $  ANS001:75A 03 22 00 05 00 00 00 00

  $  000.系统状态                           $    $        $    $  ANS000.BYTE004  $  if(x1&0x01) y=@00b4;else y=@0045;
  $  001.系统工作状态                       $    $        $    $  ANS000.BYTE004  $  switxh(x1&0x07)0:y=@0002; 1:y=@0002;2:y=@0150; 3:y=@0150;4:y=@0151; 5:y=@0151;6:y=@0152; 7:y=@0152;default:y=@007f;
  $  002.电源档位状态                       $    $        $    $  ANS000.BYTE004  $  switxh(x1&0x18)0x00:y=@014d;0x08:y=@014e;0x10:y=@014f;0x18:y=@0002;default:y=@007f;
  $  003.记忆倒车翻转前垂直位置电压         $    $  V     $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.01;
  $  004.记忆倒车翻转前水平位置电压         $    $  V     $    $  ANS001.BYTE006  $  y=(x1*256+x2)*0.01;
  $  005.后视镜垂直传感器电压               $    $  V     $    $  ANS001.BYTE008  $  y=(x1*256+x2)*0.01;
  $  006.后视镜水平传感器电压               $    $  V     $    $  ANS001.BYTE010  $  y=(x1*256+x2)*0.01;
  $  007.右外后视镜折叠电机                 $    $        $    $  ANS001.BYTE012  $  if((x1*256+x2) < 25001) y=x1*256+x2;else if((x1*256+x2) == 65535) y=@0059;else y=@0002;
  $  008.右外后视镜换向器水平位置电机       $    $        $    $  ANS001.BYTE014  $  if((x1*256+x2) < 20001) y=x1*256+x2;else if((x1*256+x2) == 65535) y=@0059;else y=@0002;
  $  009.右外后视镜换向器垂直位置电机       $    $        $    $  ANS001.BYTE016  $  if((x1*256+x2) < 20001) y=x1*256+x2;else if((x1*256+x2) == 65535) y=@0059;else y=@0002;
  $  010.右外后视镜照脚灯点亮时间           $    $  H     $    $  ANS001.BYTE018  $  if((x1*256+x2) < 1001) y=x1*256+x2;else y=@0002;
  $  011.右外后视镜加热时间                 $    $  H     $    $  ANS001.BYTE020  $  if((x1*256+x2) < 501) y=x1*256+x2;else y=@0002;

;******************************************************************************************************************************************************

动作测试:

$^ 00.外后视镜加热测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:752 05 2F 20 01 03 01 00 00     $^

$^BUTTON:关闭 
$^REQ00:752 05 2F 20 01 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:752 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.外后视镜折叠/展开测试 
$^TYPE0
$^BUTTON:折叠 
$^REQ00:752 05 2F 20 02 03 00 00 00     $^

$^BUTTON:展开 
$^REQ00:752 05 2F 20 02 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:752 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.外后视镜左右调整测试 
$^TYPE0
$^BUTTON:左调 
$^REQ00:752 05 2F 20 03 03 00 00 00     $^

$^BUTTON:右调 
$^REQ00:752 05 2F 20 03 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:752 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.外后视镜上下调整测试 
$^TYPE0
$^BUTTON:上调 
$^REQ00:752 05 2F 20 04 03 00 00 00     $^

$^BUTTON:下调 
$^REQ00:752 05 2F 20 04 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:752 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.外后视镜照脚灯测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:752 05 2F 20 05 03 01 00 00     $^

$^BUTTON:关闭 
$^REQ00:752 05 2F 20 05 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:752 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:752 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
