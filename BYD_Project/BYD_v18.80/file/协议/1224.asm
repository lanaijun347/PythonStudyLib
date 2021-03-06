
    车型ID：1224

    模拟：协议模拟-->1224

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~76F

进入命令:

  $~  REQ000:767 02 10 01 00 00 00 00 00       $~  ANS000:76F 02 10 01 00 00 00 00 00
  $~  REQ001:767 02 10 03 00 00 00 00 00       $~  ANS001:76F 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:767 02 3E 80 00 00 00 00 00       $!  ANS000:76F 02 3E 80 00 00 00 00 00

退出命令:

  $@  REQ000:767 02 10 01 00 00 00 00 00       $@  ANS000:76F 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:767 03 19 02 09 00 00 00 00       $#  ANS000:76F 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:767 04 14 FF FF FF 00 00 00       $$  ANS000:76F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:767 03 22 F1 93 00 00 00 00       $%  ANS000:76F 03 22 F1 93 00 00 00 00
  $%  REQ001:767 03 22 F1 94 00 00 00 00       $%  ANS001:76F 03 22 F1 94 00 00 00 00
  $%  REQ002:767 03 22 F1 95 00 00 00 00       $%  ANS002:76F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:767 03 22 00 04 00 00 00 00       $  ANS000:76F 03 22 00 04 00 00 00 00
  $  REQ001:767 03 22 B0 04 00 00 00 00       $  ANS001:76F 03 22 B0 04 00 00 00 00
  $  REQ002:767 03 22 B0 05 00 00 00 00       $  ANS002:76F 03 22 B0 05 00 00 00 00
  $  REQ003:767 03 22 B0 06 00 00 00 00       $  ANS003:76F 03 22 B0 06 00 00 00 00
  $  REQ004:767 03 22 B0 07 00 00 00 00       $  ANS004:76F 03 22 B0 07 00 00 00 00

  $  000.座椅水平调节状态                   $    $       $    $  ANS000.BYTE004  $  if(((x1&0x03))==0x00) y=@003e;else if(((x1&0x03))==0x01) y=@0167;else if(((x1&0x03))==0x02) y=@0168;else if(((x1&0x03))==0x03) y=@0002;
  $  001.座椅垂直调节状态                   $    $       $    $  ANS000.BYTE004  $  if((x1&0x0C)==0x00) y=@003e;else if((x1&0x0C)==0x04) y=@0042;else if((x1&0x0C)==0x08) y=@0043;else if((x1&0x0C)==0x0C) y=@0002;
  $  002.靠背调节状态                       $    $       $    $  ANS000.BYTE004  $  if((x1&0x30)==0x00) y=@003e;else if((x1&0x30)==0x10) y=@0169;else if((x1&0x30)==0x20) y=@016a;else if((x1&0x30)==0x30) y=@0002;
  $  003.座椅水平向前调节按键开关次数       $    $       $    $  ANS001.BYTE004  $  if((x1+x2*256)<50001) y=x1+x2*256;else y=@0059;
  $  004.座椅水平向后调节按键开关次数       $    $       $    $  ANS001.BYTE006  $  if((x1+x2*256)<50001) y=x1+x2*256;else y=@0059;
  $  005.靠背前倾调节按键开关次数           $    $       $    $  ANS002.BYTE004  $  if((x1+x2*256)<50001) y=x1+x2*256;else y=@0059;
  $  006.靠背后倾调节按键开关次数           $    $       $    $  ANS002.BYTE006  $  if((x1+x2*256)<50001) y=x1+x2*256;else y=@0059;
  $  007.座椅高度上调按键开关次数           $    $       $    $  ANS003.BYTE004  $  if((x1+x2*256)<50001) y=x1+x2*256;else y=@0059;
  $  008.座椅高度下调按键开关次数           $    $       $    $  ANS003.BYTE006  $  if((x1+x2*256)<50001) y=x1+x2*256;else y=@0059;
  $  009.座盆向上调节按键开关次数           $    $       $    $  ANS004.BYTE004  $  if((x1+x2*256)<50001) y=x1+x2*256;else y=@0059;
  $  010.座盆向下调节按键开关次数           $    $       $    $  ANS004.BYTE006  $  if((x1+x2*256)<50001) y=x1+x2*256;else y=@0059;

;******************************************************************************************************************************************************

动作测试:

$^ 00.座椅水平调节操作测试 
$^TYPE0
$^BUTTON:停止 
$^REQ00:767 05 2F 20 01 03 00 00 00     $^

$^BUTTON:向前 
$^REQ00:767 05 2F 20 01 03 01 00 00     $^

$^BUTTON:向后 
$^REQ00:767 05 2F 20 01 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.座椅高度调节操作测试 
$^TYPE0
$^BUTTON:停止 
$^REQ00:767 05 2F 20 02 03 00 00 00     $^

$^BUTTON:上升 
$^REQ00:767 05 2F 20 02 03 01 00 00     $^

$^BUTTON:下降 
$^REQ00:767 05 2F 20 02 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.座椅靠背调节操作测试 
$^TYPE0
$^BUTTON:停止 
$^REQ00:767 05 2F 20 03 03 00 00 00     $^

$^BUTTON:前倾 
$^REQ00:767 05 2F 20 03 03 01 00 00     $^

$^BUTTON:后倾 
$^REQ00:767 05 2F 20 03 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.座椅座盆调节操作测试 
$^TYPE0
$^BUTTON:停止 
$^REQ00:767 05 2F 20 04 03 00 00 00     $^

$^BUTTON:上升 
$^REQ00:767 05 2F 20 04 03 01 00 00     $^

$^BUTTON:下降 
$^REQ00:767 05 2F 20 04 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.记忆档位1测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:767 05 2F 20 06 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:767 05 2F 20 06 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.记忆档位2测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:767 05 2F 20 07 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:767 05 2F 20 07 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.记忆档位3测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:767 05 2F 20 08 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:767 05 2F 20 08 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.记忆档位SET测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:767 05 2F 20 09 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:767 05 2F 20 09 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 08.记忆档位SET+1测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:767 05 2F 20 0A 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:767 05 2F 20 0A 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 09.记忆档位SET+2测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:767 05 2F 20 0B 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:767 05 2F 20 0B 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 10.记忆档位SET+3测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:767 05 2F 20 0C 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:767 05 2F 20 0C 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 11.座椅通风高速档测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:767 05 2F 20 0D 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:767 05 2F 20 0D 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 12.座椅通风低速档测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:767 05 2F 20 0F 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:767 05 2F 20 0F 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 13.座椅加热高速档测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:767 05 2F 20 10 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:767 05 2F 20 10 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 14.座椅加热低速档测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:767 05 2F 20 12 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:767 05 2F 20 12 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:767 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
