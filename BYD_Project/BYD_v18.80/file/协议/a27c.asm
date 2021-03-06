
    车型ID：a27c

    模拟：协议模拟-->a27c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~74F

进入命令:

  $~  REQ000:747 02 10 01 00 00 00 00 00       $~  ANS000:74F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:747 02 3E 01 00 00 00 00 00       $!  ANS000:74F 02 3E 01 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:747 04 18 00 00 FF 00 00 00       $#  ANS000:74F 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a27c0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:747 03 14 00 FF 00 00 00 00       $$  ANS000:74F 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:747 03 22 00 01 00 00 00 00       $%  ANS000:74F 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d/%02d/%02d],x1,x2,x3);

;******************************************************************************************************************************************************

动作测试:

$^ 00.外后视镜加热 
$^TYPE0
$^BUTTON:开 
$^REQ00:747 05 2F 20 01 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:747 05 2F 20 01 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:747 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.外后视镜折/展 
$^TYPE0
$^BUTTON:折叠 
$^REQ00:747 05 2F 20 02 03 00 00 00     $^

$^BUTTON:展开 
$^REQ00:747 05 2F 20 02 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:747 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.外后视镜左/右 
$^TYPE0
$^BUTTON:左调 
$^REQ00:747 05 2F 20 03 03 00 00 00     $^

$^BUTTON:右调 
$^REQ00:747 05 2F 20 03 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:747 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.外后视镜上/下 
$^TYPE0
$^BUTTON:上调 
$^REQ00:747 05 2F 20 04 03 00 00 00     $^

$^BUTTON:下调 
$^REQ00:747 05 2F 20 04 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:747 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.外后视镜照脚灯 
$^TYPE0
$^BUTTON:熄灭 
$^REQ00:747 05 2F 20 05 03 00 00 00     $^

$^BUTTON:点亮 
$^REQ00:747 05 2F 20 05 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:747 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:747 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
