
    车型ID：343d

    模拟：协议模拟-->343d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~758

进入命令:

  $~  REQ000:750 02 10 01 00 00 00 00 00       $~  ANS000:758 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:750 02 3E 80 00 00 00 00 00       $!  ANS000:758 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:750 03 19 02 09 00 00 00 00       $#  ANS000:758 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/7c000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:750 04 14 FF FF FF 00 00 00       $$  ANS000:758 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:750 03 22 F1 93 00 00 00 00       $%  ANS000:758 03 22 F1 93 00 00 00 00
  $%  REQ001:750 03 22 F1 94 00 00 00 00       $%  ANS001:758 03 22 F1 94 00 00 00 00
  $%  REQ002:750 03 22 F1 95 00 00 00 00       $%  ANS002:758 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:750 03 22 00 04 00 00 00 00       $  ANS000:758 03 22 00 04 00 00 00 00
  $  REQ001:750 03 22 00 05 00 00 00 00       $  ANS001:758 03 22 00 05 00 00 00 00

  $  000.靠背后倾                   $    $        $    $  ANS000.BYTE004  $  if(x1&0x01) y=@014d;else y=@014f;
  $  001.靠背前倾                   $    $        $    $  ANS000.BYTE004  $  if(x1&0x02) y=@014d;else y=@014f;
  $  002.座盆下调                   $    $        $    $  ANS000.BYTE004  $  if(x1&0x04) y=@014d;else y=@014f;
  $  003.座盆上调                   $    $        $    $  ANS000.BYTE004  $  if(x1&0x08) y=@014d;else y=@014f;
  $  004.高度下调                   $    $        $    $  ANS000.BYTE004  $  if(x1&0x10) y=@014d;else y=@014f;
  $  005.高度上调                   $    $        $    $  ANS000.BYTE004  $  if(x1&0x20) y=@014d;else y=@014f;
  $  006.水平后滑                   $    $        $    $  ANS000.BYTE004  $  if(x1&0x40) y=@014d;else y=@014f;
  $  007.水平前滑                   $    $        $    $  ANS000.BYTE004  $  if(x1&0x80) y=@014d;else y=@014f;
  $  008.加热开关低温档             $    $        $    $  ANS000.BYTE005  $  if(x1&0x01) y=@014d;else y=@014f;
  $  009.加热开关高温档             $    $        $    $  ANS000.BYTE005  $  if(x1&0x02) y=@014d;else y=@014f;
  $  010.通风开关低速档             $    $        $    $  ANS000.BYTE005  $  if(x1&0x04) y=@014d;else y=@014f;
  $  011.通风开关高速档             $    $        $    $  ANS000.BYTE005  $  if(x1&0x08) y=@014d;else y=@014f;
  $  012.座椅系统状态信息           $    $        $    $  ANS000.BYTE005  $  if(x1&0x10) y=@00b4;else y=@0045;
  $  013.座椅工作状态               $    $        $    $  ANS000.BYTE005  $  switxh(x1&0xE0)0x00: y=@0150;0x20: y=@0151;0x40: y=@0152;0x60: y=@0153;0x80: y=@0154;default: y=@0002;
  $  014.通风加热工作状态           $    $        $    $  ANS000.BYTE006  $  switxh(x1&0x07)0x00: y=@0040;0x01: y=@01d2;0x02: y=@01d3;0x03: y=@01d6;0x04: y=@02dd;default: y=@0002;
  $  015.电源档位状态               $    $        $    $  ANS000.BYTE006  $  switxh(x1&0x18)0x00: y=@014d;0x08: y=@014e;0x10: y=@014f;default: y=@0002;
  $  016.电源电压                   $    $  V     $    $  ANS001.BYTE004  $  y=SPRINTF([%.2f],x1*0.078);
  $  017.水平调节电机当前位置       $    $        $    $  ANS001.BYTE005  $  y=(x1*256+x2);
  $  018.靠背调节电机当前位置       $    $        $    $  ANS001.BYTE007  $  y=(x1*256+x2);
  $  019.座盆调节电机当前位置       $    $        $    $  ANS001.BYTE009  $  y=(x1*256+x2);
  $  020.高度调节电机当前位置       $    $        $    $  ANS001.BYTE011  $  y=(x1*256+x2);
  $  021.水平调节电机行程           $    $        $    $  ANS001.BYTE013  $  y=(x1*256+x2);
  $  022.靠背调节电机行程           $    $        $    $  ANS001.BYTE015  $  y=(x1*256+x2);
  $  023.座盆调节电机行程           $    $        $    $  ANS001.BYTE017  $  y=(x1*256+x2);
  $  024.高度调节电机行程           $    $        $    $  ANS001.BYTE019  $  y=(x1*256+x2);
  $  025.水平调节电机循环次数       $    $        $    $  ANS001.BYTE021  $  if(((x1*256+x2)>=0)&&((x1*256+x2)<=30000)) y=(x1*256+x2);else if((x1*256+x2)==65535) y=@0059;else y=@0002;
  $  026.靠背调节电机循环次数       $    $        $    $  ANS001.BYTE023  $  if(((x1*256+x2)>=0)&&((x1*256+x2)<=10000)) y=(x1*256+x2);else if((x1*256+x2)==65535) y=@0059;else y=@0002;
  $  027.高度调节电机循环次数       $    $        $    $  ANS001.BYTE025  $  if(((x1*256+x2)>=0)&&((x1*256+x2)<=10000)) y=(x1*256+x2);else if((x1*256+x2)==65535) y=@0059;else y=@0002;
  $  028.坐盆调节电机循环次数       $    $        $    $  ANS001.BYTE027  $  if(((x1*256+x2)>=0)&&((x1*256+x2)<=10000)) y=(x1*256+x2);else if((x1*256+x2)==65535) y=@0059;else y=@0002;
  $  029.座椅加热时间               $    $  H     $    $  ANS001.BYTE029  $  if(((x1*256+x2)>=0)&&((x1*256+x2)<=3000)) y=(x1*256+x2);else if((x1*256+x2)==4095) y=@0059;else y=@0002;
  $  030.座椅通风时间               $    $  H     $    $  ANS001.BYTE031  $  if(((x1*256+x2)>=0)&&((x1*256+x2)<=3000)) y=(x1*256+x2);else if((x1*256+x2)==4095) y=@0059;else y=@0002;

;******************************************************************************************************************************************************

动作测试:

$^ 00.座椅水平调节操作测试 
$^TYPE0
$^BUTTON:向前 
$^REQ00:750 05 2F 20 01 03 00 00 00     $^

$^BUTTON:向后 
$^REQ00:750 05 2F 20 01 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:750 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.座椅高度调节操作测试 
$^TYPE0
$^BUTTON:上升 
$^REQ00:750 05 2F 20 02 03 00 00 00     $^

$^BUTTON:下降 
$^REQ00:750 05 2F 20 02 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:750 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.座椅座盆调角操作测试 
$^TYPE0
$^BUTTON:上升 
$^REQ00:750 05 2F 20 03 03 00 00 00     $^

$^BUTTON:下降 
$^REQ00:750 05 2F 20 03 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:750 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.座椅靠背倾斜操作测试 
$^TYPE0
$^BUTTON:前倾 
$^REQ00:750 05 2F 20 04 03 00 00 00     $^

$^BUTTON:后倾 
$^REQ00:750 05 2F 20 04 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:750 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.蜂鸣器操作测试 
$^TYPE0
$^BUTTON:关闭 
$^REQ00:750 05 2F 20 05 03 00 00 00     $^

$^BUTTON:打开 
$^REQ00:750 05 2F 20 05 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:750 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.主驾座椅加热低温档测试 
$^TYPE0
$^BUTTON:关闭 
$^REQ00:750 05 2F 20 06 03 00 00 00     $^

$^BUTTON:打开 
$^REQ00:750 05 2F 20 06 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:750 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.主驾座椅加热高温档测试 
$^TYPE0
$^BUTTON:关闭 
$^REQ00:750 05 2F 20 07 03 00 00 00     $^

$^BUTTON:打开 
$^REQ00:750 05 2F 20 07 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:750 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.主驾座椅通风低速档测试 
$^TYPE0
$^BUTTON:关闭 
$^REQ00:750 05 2F 20 08 03 00 00 00     $^

$^BUTTON:打开 
$^REQ00:750 05 2F 20 08 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:750 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 08.主驾座椅通风高速档测试 
$^TYPE0
$^BUTTON:关闭 
$^REQ00:750 05 2F 20 09 03 00 00 00     $^

$^BUTTON:打开 
$^REQ00:750 05 2F 20 09 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:750 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:750 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
