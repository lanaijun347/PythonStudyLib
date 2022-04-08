
    车型ID：1d24

    模拟：协议模拟-->1d24

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~72C

进入命令:

  $~  REQ000:724 02 10 01 00 00 00 00 00       $~  ANS000:72C 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:724 02 3E 80 00 00 00 00 00       $!  ANS000:72C 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:724 04 18 00 00 FF 00 00 00       $#  ANS000:72C 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/feff0000_2BYTE


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

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=x1*0.1;
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=x1*0.1;
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);

;******************************************************************************************************************************************************

动作测试:

$^ 00.前雨刮电机测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:724 05 2F 20 01 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:724 05 2F 20 02 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.前雨刮速度变化测试 
$^TYPE0
$^BUTTON:停止 
$^REQ00:724 05 2F 20 03 03 00 00 00     $^

$^BUTTON:慢速 
$^REQ00:724 05 2F 20 03 03 01 00 00     $^

$^BUTTON:快速 
$^REQ00:724 05 2F 20 03 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.前洗涤电机测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:724 05 2F 20 04 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:724 05 2F 20 04 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.后除霜测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:724 05 2F 20 06 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:724 05 2F 20 06 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.远光灯测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:724 05 2F 20 07 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:724 05 2F 20 07 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.近光灯测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:724 05 2F 20 08 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:724 05 2F 20 08 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.前雾灯测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:724 05 2F 20 09 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:724 05 2F 20 09 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.小灯测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:724 05 2F 20 0A 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:724 05 2F 20 0A 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 08.昼行灯测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:724 05 2F 20 0B 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:724 05 2F 20 0B 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 09.喇叭测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:724 05 2F 20 0C 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:724 05 2F 20 0C 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 10.报警测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:724 05 2F 20 0D 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:724 05 2F 20 0D 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:724 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
