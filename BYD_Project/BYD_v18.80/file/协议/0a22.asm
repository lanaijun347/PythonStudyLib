
    车型ID：0a22

    模拟：协议模拟-->0a22

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~758

进入命令:

  $~  REQ000:750 02 10 01 00 00 00 00 00       $~  ANS000:758 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:750 02 3E 80 00 00 00 00 00       $!  ANS000:758 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:750 04 18 00 00 FF 00 00 00       $#  ANS000:758 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/96010000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:750 03 14 00 FF 00 00 00 00       $$  ANS000:758 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:750 03 22 00 01 00 00 00 00       $%  ANS000:758 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=x/10;
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=x/10;
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.状态量
  $  00.状态量
  $  REQ000:750 03 22 00 04 00 00 00 00       $  ANS000:758 03 22 00 04 00 00 00 00

  $  000.座椅工作状态               $    $       $    $  ANS000.BYTE005  $  if((x&0x0E)==0x00)y=@0150;else if((x&0x0E)==0x02)y=@0151;else if((x&0x0E)==0x04)y=@0152;else if((x&0x0E)==0x06)y=@01ce;else if((x&0x0E)==0x08)y=@0154;else y=@0054;
  $  001.电源档位状态               $    $       $    $  ANS000.BYTE005  $  if((x&0x30)==0x00)y=@014d;else if((x&0x30)==0x10)y=@014e;else if((x&0x30)==0x20)y=@014f;else y=@0054;
  $  002.座椅系统状态信息           $    $       $    $  ANS000.BYTE005  $  if(((x>>4)&1))y=@00b4;else y=@0045;
  $  003.背靠调节开关后倾信号       $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1))y=@014d;else y=@014f;
  $  004.背靠调节开关前倾信号       $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1))y=@014d;else y=@014f;
  $  005.座盆调节开关下调信号       $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1))y=@014d;else y=@014f;
  $  006.座盆调节开关上调信号       $    $       $    $  ANS000.BYTE004  $  if(((x>>3)&1))y=@014d;else y=@014f;
  $  007.高度调节开关下调信号       $    $       $    $  ANS000.BYTE004  $  if(((x>>4)&1))y=@014d;else y=@014f;
  $  008.高度调节开关上调信号       $    $       $    $  ANS000.BYTE004  $  if(((x>>5)&1))y=@014d;else y=@014f;
  $  009.水平调节开关后滑信号       $    $       $    $  ANS000.BYTE004  $  if(((x>>6)&1))y=@014d;else y=@014f;
  $  010.水平调节开关前滑信号       $    $       $    $  ANS000.BYTE004  $  if(((x>>7)&1))y=@014d;else y=@014f;

  $)  01.模拟量
  $  01.模拟量
  $  REQ000:750 03 22 00 05 00 00 00 00       $  ANS000:758 03 22 00 05 00 00 00 00

  $  000.电源电压                   $    $  V     $    $  ANS000.BYTE004  $  y=19.8*x/255;
  $  001.水平调节电机行程           $    $        $    $  ANS000.BYTE013  $  if(((x>>4)&1))y=@014d;else y=@014f;
  $  002.背靠调节电机行程           $    $        $    $  ANS000.BYTE015  $  if(((x>>5)&1))y=@014d;else y=@014f;
  $  003.座盆调节电机行程           $    $        $    $  ANS000.BYTE017  $  if(((x>>6)&1))y=@014d;else y=@014f;
  $  004.高度调节电机行程           $    $        $    $  ANS000.BYTE019  $  if(((x>>7)&1))y=@014d;else y=@014f;
  $  005.水平调节电机当前位置       $    $        $    $  ANS000.BYTE005  $  if((x1==0x0F)&&(x2==0xFF))y=@00c7;else if(x1>=0x0F)y=@010e;else y=x1*256+x2;
  $  006.背靠调节电机当前位置       $    $        $    $  ANS000.BYTE007  $  if((x1==0x0F)&&(x2==0xFF))y=@00c7;else if(x1>=0x0F)y=@010e;else y=x1*256+x2;
  $  007.座盆调节电机当前位置       $    $        $    $  ANS000.BYTE009  $  if((x1==0x0F)&&(x2==0xFF))y=@00c7;else if(x1>=0x0F)y=@010e;else y=x1*256+x2;
  $  008.高度调节电机当前位置       $    $        $    $  ANS000.BYTE011  $  if((x1==0x0F)&&(x2==0xFF))y=@00c7;else if(x1>=0x0F)y=@010e;else y=x1*256+x2;

;******************************************************************************************************************************************************

动作测试:

$^ 00.座椅水平调节操作 
$^TYPE0
$^BUTTON:向前 
$^REQ00:750 05 2F 20 01 03 00 00 00     $^

$^BUTTON:向后 
$^REQ00:750 05 2F 20 01 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:750 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.座椅高度调节操作 
$^TYPE0
$^BUTTON:上升 
$^REQ00:750 05 2F 20 02 03 00 00 00     $^

$^BUTTON:下降 
$^REQ00:750 05 2F 20 02 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:750 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.座椅座盆调节操作 
$^TYPE0
$^BUTTON:上升 
$^REQ00:750 05 2F 20 03 03 00 00 00     $^

$^BUTTON:下降 
$^REQ00:750 05 2F 20 03 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:750 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.座椅靠背倾斜操作 
$^TYPE0
$^BUTTON:前倾 
$^REQ00:750 05 2F 20 04 03 00 00 00     $^

$^BUTTON:后倾 
$^REQ00:750 05 2F 20 04 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:750 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.蜂鸣器操作 
$^TYPE0
$^BUTTON:关 
$^REQ00:750 05 2F 20 05 03 00 00 00     $^

$^BUTTON:开 
$^REQ00:750 05 2F 20 05 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:750 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:750 30 01 04 55 55 55 55 55  $FC 

;******************************************************************************************************************************************************
