
    车型ID：a287

    模拟：协议模拟-->a287

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~72C

进入命令:

  $~  REQ000:724 02 10 01 00 00 00 00 00       $~  ANS000:72C 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:724 02 3E 01 00 00 00 00 00       $!  ANS000:72C 02 3E 01 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:724 04 18 00 00 FF 00 00 00       $#  ANS000:72C 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a2870000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:724 03 14 00 FF 00 00 00 00       $$  ANS000:72C 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:724 03 22 00 01 00 00 00 00       $%  ANS000:72C 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%d/%d/%d],x1,x2,x3);

;******************************************************************************************************************************************************

动作测试:

$^ 00.前雨刮电机(预留) 
$^TYPE0
$^BUTTON:开 
$^REQ00:724 05 2F 20 01 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:724 05 2F 20 01 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.后雨刮电机 
$^TYPE0
$^BUTTON:开 
$^REQ00:724 05 2F 20 02 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:724 05 2F 20 02 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.前雨刮速度变化 
$^TYPE0
$^BUTTON:停止 
$^REQ00:724 05 2F 20 03 03 00 00 00     $^

$^BUTTON:慢刮 
$^REQ00:724 05 2F 20 03 03 01 00 00     $^

$^BUTTON:快刮 
$^REQ00:724 05 2F 20 03 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.前洗涤电机 
$^TYPE0
$^BUTTON:开 
$^REQ00:724 05 2F 20 04 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:724 05 2F 20 04 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.后洗涤电机 
$^TYPE0
$^BUTTON:开 
$^REQ00:724 05 2F 20 05 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:724 05 2F 20 05 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.后除霜 
$^TYPE0
$^BUTTON:开 
$^REQ00:724 05 2F 20 06 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:724 05 2F 20 06 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.远光灯 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:724 05 2F 20 07 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:724 05 2F 20 07 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.近光灯 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:724 05 2F 20 08 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:724 05 2F 20 08 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 08.前雾灯 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:724 05 2F 20 09 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:724 05 2F 20 09 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 09.小灯 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:724 05 2F 20 0A 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:724 05 2F 20 0A 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 10.昼行灯 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:724 05 2F 20 0B 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:724 05 2F 20 0B 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 11.喇叭 
$^TYPE0
$^BUTTON:开 
$^REQ00:724 05 2F 20 0C 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:724 05 2F 20 0C 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 12.报警 
$^TYPE0
$^BUTTON:开 
$^REQ00:724 05 2F 20 0D 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:724 05 2F 20 0D 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:724 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
