
    车型ID：2707

    模拟：协议模拟-->2707

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~74F

进入命令:

  $~  REQ000:747 02 10 01 00 00 00 00 00       $~  ANS000:74F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:747 02 3E 80 00 00 00 00 00       $!  ANS000:74F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:747 03 19 02 09 00 00 00 00       $#  ANS000:74F 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/43000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:747 04 14 FF FF FF 00 00 00       $$  ANS000:74F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:747 03 22 F1 93 00 00 00 00       $%  ANS000:74F 03 22 F1 93 00 00 00 00
  $%  REQ001:747 03 22 F1 94 00 00 00 00       $%  ANS001:74F 03 22 F1 94 00 00 00 00
  $%  REQ002:747 03 22 F1 95 00 00 00 00       $%  ANS002:74F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:747 03 22 00 04 00 00 00 00       $  ANS000:74F 03 22 00 04 00 00 00 00
  $  REQ001:747 03 22 00 05 00 00 00 00       $  ANS001:74F 03 22 00 05 00 00 00 00
  $  REQ002:747 03 22 B0 00 00 00 00 00       $  ANS002:74F 03 22 B0 00 00 00 00 00
  $  REQ003:747 03 22 B0 01 00 00 00 00       $  ANS003:74F 03 22 B0 01 00 00 00 00
  $  REQ004:747 03 22 B0 02 00 00 00 00       $  ANS004:74F 03 22 B0 02 00 00 00 00
  $  REQ005:747 03 22 B0 04 00 00 00 00       $  ANS005:74F 03 22 B0 04 00 00 00 00
  $  REQ006:747 03 22 B0 05 00 00 00 00       $  ANS006:74F 03 22 B0 05 00 00 00 00

  $  000.L1系统位置记忆                      $    $           $    $  ANS000.BYTE004  $  if(x1&0x01) y=@01a4;else y=@01a5;
  $  001.L2系统位置记忆                      $    $           $    $  ANS000.BYTE004  $  if(x1&0x02) y=@01a4;else y=@01a5;
  $  002.L3系统位置记忆                      $    $           $    $  ANS000.BYTE004  $  if(x1&0x04) y=@01a4;else y=@01a5;
  $  003.电源档位状态                        $    $           $    $  ANS000.BYTE004  $  switxh(x1&0x18)0x00: y=@014d;0x08: y=@014e;0x10: y=@014f;default: y=@0002;
  $  004.系统工作状态                        $    $           $    $  ANS000.BYTE004  $  switxh(x1&0x60)0x20: y=@0150;0x40: y=@0151;0x60: y=@0152;default: y=@0002;
  $  005.请检查记忆系统                      $    $           $    $  ANS000.BYTE005  $  if(x1&0x01) y=@014d;else y=@014f;
  $  006.系统状态                            $    $           $    $  ANS000.BYTE005  $  if(x1&0x02) y=@00b4;else y=@0045;
  $  007.油箱口信号                          $    $           $    $  ANS000.BYTE005  $  if(x1&0x04) y=@0093;else y=@003f;
  $  008.左外后视镜水平记忆系统位置1         $    $  V        $    $  ANS001.BYTE008  $  y=((x1<<8)+x2)*0.01;
  $  009.左外后视镜水平记忆位置2             $    $  V        $    $  ANS001.BYTE010  $  y=((x1<<8)+x2)*0.01;
  $  010.左外后视镜水平记忆位置3             $    $  V        $    $  ANS001.BYTE012  $  y=((x1<<8)+x2)*0.01;
  $  011.左外后视镜垂直记忆位置1             $    $  V        $    $  ANS001.BYTE014  $  y=((x1<<8)+x2)*0.01;
  $  012.左外后视镜垂直记忆位置2             $    $  V        $    $  ANS001.BYTE016  $  y=((x1<<8)+x2)*0.01;
  $  013.左外后视镜垂直记忆位置3             $    $  V        $    $  ANS001.BYTE018  $  y=((x1<<8)+x2)*0.01;
  $  014.右外后视镜水平记忆系统位置1         $    $  V        $    $  ANS001.BYTE020  $  y=((x1<<8)+x2)*0.01;
  $  015.右外后视镜水平记忆位置2             $    $  V        $    $  ANS001.BYTE022  $  y=((x1<<8)+x2)*0.01;
  $  016.右外后视镜水平记忆位置3             $    $  V        $    $  ANS001.BYTE024  $  y=((x1<<8)+x2)*0.01;
  $  017.右外后视镜垂直记忆位置1             $    $  V        $    $  ANS001.BYTE026  $  y=((x1<<8)+x2)*0.01;
  $  018.右外后视镜垂直记忆位置2             $    $  V        $    $  ANS001.BYTE028  $  y=((x1<<8)+x2)*0.01;
  $  019.右外后视镜垂直记忆位置3             $    $  V        $    $  ANS001.BYTE030  $  y=((x1<<8)+x2)*0.01;
  $  020.水平调节电机系统位置1               $    $           $    $  ANS001.BYTE032  $  y=(x1<<8)+x2;
  $  021.靠背调节电机系统位置1               $    $           $    $  ANS001.BYTE034  $  y=(x1<<8)+x2;
  $  022.座盆调节电机系统位置1               $    $           $    $  ANS001.BYTE036  $  y=(x1<<8)+x2;
  $  023.高度调节电机系统位置1               $    $           $    $  ANS001.BYTE038  $  y=(x1<<8)+x2;
  $  024.水平调节电机系统位置2               $    $           $    $  ANS001.BYTE040  $  y=(x1<<8)+x2;
  $  025.靠背调节电机系统位置2               $    $           $    $  ANS001.BYTE042  $  y=(x1<<8)+x2;
  $  026.座盆调节电机系统位置2               $    $           $    $  ANS001.BYTE044  $  y=(x1<<8)+x2;
  $  027.高度调节电机系统位置2               $    $           $    $  ANS001.BYTE046  $  y=(x1<<8)+x2;
  $  028.水平调节电机系统位置3               $    $           $    $  ANS001.BYTE048  $  y=(x1<<8)+x2;
  $  029.靠背调节电机系统位置3               $    $           $    $  ANS001.BYTE050  $  y=(x1<<8)+x2;
  $  030.座盆调节电机系统位置3               $    $           $    $  ANS001.BYTE052  $  y=(x1<<8)+x2;
  $  031.高度调节电机系统位置3               $    $           $    $  ANS001.BYTE054  $  y=(x1<<8)+x2;
  $  032.电动管柱轴向调节电机系统位置1       $    $           $    $  ANS001.BYTE056  $  y=(x1<<8)+x2;
  $  033.电动管柱角度调节电机系统位置1       $    $           $    $  ANS001.BYTE058  $  y=(x1<<8)+x2;
  $  034.电动管柱轴向调节电机系统位置2       $    $           $    $  ANS001.BYTE060  $  y=(x1<<8)+x2;
  $  035.电动管柱角度调节电机系统位置2       $    $           $    $  ANS001.BYTE062  $  y=(x1<<8)+x2;
  $  036.电动管柱轴向调节电机系统位置3       $    $           $    $  ANS001.BYTE064  $  y=(x1<<8)+x2;
  $  037.电动管柱角度调节电机系统位置3       $    $           $    $  ANS001.BYTE066  $  y=(x1<<8)+x2;
  $  038.左外后视镜当前水平位置              $    $  V        $    $  ANS001.BYTE068  $  y=((x1<<8)+x2)*0.01;
  $  039.左外后视镜当前垂直位置              $    $  V        $    $  ANS001.BYTE070  $  y=((x1<<8)+x2)*0.01;
  $  040.左外后视镜折叠电机循环              $    $           $    $  ANS002.BYTE004  $  y=(x1<<8)+x2;
  $  041.左外后视镜换向水平电机循环          $    $           $    $  ANS002.BYTE006  $  y=(x1<<8)+x2;
  $  042.左外后视镜换向垂直电机循环          $    $           $    $  ANS002.BYTE008  $  y=(x1<<8)+x2;
  $  043.记忆一档按键次数                    $    $           $    $  ANS003.BYTE004  $  y=(x1<<8)+x2;
  $  044.记忆二档按键次数                    $    $           $    $  ANS003.BYTE006  $  y=(x1<<8)+x2;
  $  045.记忆三档按键次数                    $    $           $    $  ANS004.BYTE004  $  y=(x1<<8)+x2;
  $  046.Set按键工作次数                     $    $           $    $  ANS004.BYTE006  $  y=(x1<<8)+x2;
  $  047.照脚灯点亮时间                      $    $  小时     $    $  ANS005.BYTE004  $  y=(x1<<8)+x2;
  $  048.外后视镜加热时间                    $    $  小时     $    $  ANS006.BYTE004  $  y=(x1<<8)+x2;

;******************************************************************************************************************************************************

动作测试:

$^ 00.外后视镜加热测试 
$^IN  REQ00:747 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:747 05 2F 20 01 03 01 00 00     $^

$^BUTTON:关闭 
$^REQ00:747 05 2F 20 01 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:747 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.外后视镜折叠/展开测试 
$^IN  REQ00:747 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:展开 
$^REQ00:747 05 2F 20 02 03 01 00 00     $^

$^BUTTON:折叠 
$^REQ00:747 05 2F 20 02 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:747 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.外后视镜左右调整测试 
$^IN  REQ00:747 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:右调 
$^REQ00:747 05 2F 20 03 03 01 00 00     $^

$^BUTTON:左调 
$^REQ00:747 05 2F 20 03 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:747 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.外后视镜上下调整测试 
$^IN  REQ00:747 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:上调 
$^REQ00:747 05 2F 20 04 03 00 00 00     $^

$^BUTTON:下调 
$^REQ00:747 05 2F 20 04 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:747 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.外后视镜照脚灯测试 
$^IN  REQ00:747 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:747 05 2F 20 05 03 01 00 00     $^

$^BUTTON:关闭 
$^REQ00:747 05 2F 20 05 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:747 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.盲区检测指示灯测试 
$^IN  REQ00:747 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:点亮 
$^REQ00:747 05 2F 20 06 03 01 00 00     $^

$^BUTTON:熄灭 
$^REQ00:747 05 2F 20 06 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:747 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:747 30 01 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
