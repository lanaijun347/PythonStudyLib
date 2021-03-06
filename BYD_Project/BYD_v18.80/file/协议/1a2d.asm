
    车型ID：1a2d

    模拟：协议模拟-->1a2d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7DE

进入命令:

  $~  REQ000:7D6 02 10 01 00 00 00 00 00       $~  ANS000:7DE 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7D6 02 3E 80 00 00 00 00 00       $!  ANS000:7DE 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7D6 04 18 00 00 FF 00 00 00       $#  ANS000:7DE 04 18 00 00 FF 00 00 00

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

  $$  REQ000:7D6 03 14 00 FF 00 00 00 00       $$  ANS000:7DE 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7D6 03 22 F1 93 00 00 00 00       $%  ANS000:7DE 03 22 F1 93 00 00 00 00
  $%  REQ001:7D6 03 22 F1 94 00 00 00 00       $%  ANS001:7DE 03 22 F1 94 00 00 00 00
  $%  REQ002:7D6 03 22 F1 95 00 00 00 00       $%  ANS002:7DE 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7D6 03 22 00 04 00 00 00 00       $  ANS000:7DE 03 22 00 04 00 00 00 00

  $  000.静音开关           $    $       $    $  ANS000.BYTE004  $  if(x1&0x01)y=@0000;else y=@0001;
  $  001.音量增开关         $    $       $    $  ANS000.BYTE004  $  if(x1&0x02)y=@0000;else y=@0001;
  $  002.音量减开关         $    $       $    $  ANS000.BYTE004  $  if(x1&0x04)y=@0000;else y=@0001;
  $  003.搜索+              $    $       $    $  ANS000.BYTE004  $  if(x1&0x08)y=@0000;else y=@0001;
  $  004.搜索-              $    $       $    $  ANS000.BYTE004  $  if(x1&0x10)y=@0000;else y=@0001;
  $  005.模式               $    $       $    $  ANS000.BYTE004  $  if(x1&0x20)y=@0000;else y=@0001;
  $  006.温度调节增         $    $       $    $  ANS000.BYTE004  $  if(x1&0x40)y=@0000;else y=@0001;
  $  007.温度调节减         $    $       $    $  ANS000.BYTE004  $  if(x1&0x80)y=@0000;else y=@0001;
  $  008.空调自动模式       $    $       $    $  ANS000.BYTE005  $  if(x1&0x01)y=@0000;else y=@0001;
  $  009.空调关闭模式       $    $       $    $  ANS000.BYTE005  $  if(x1&0x02)y=@0000;else y=@0001;

;******************************************************************************************************************************************************

动作测试:

$^ 00.静音开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7D6 05 2F 20 01 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:7D6 05 2F 20 01 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7D6 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.音量增开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7D6 05 2F 20 02 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:7D6 05 2F 20 02 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7D6 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.音量减开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7D6 05 2F 20 03 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:7D6 05 2F 20 03 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7D6 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.搜索+开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7D6 05 2F 20 04 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:7D6 05 2F 20 04 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7D6 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.搜索-开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7D6 05 2F 20 05 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:7D6 05 2F 20 05 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7D6 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.模式开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7D6 05 2F 20 06 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:7D6 05 2F 20 06 03 01 00 00     $^

$^BUTTON:切换(预留) 
$^REQ00:7D6 05 2F 20 06 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:7D6 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.温度增开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7D6 05 2F 20 07 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:7D6 05 2F 20 07 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7D6 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.温度减开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7D6 05 2F 20 08 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:7D6 05 2F 20 08 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7D6 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 08.空调自动模式开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7D6 05 2F 20 09 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:7D6 05 2F 20 09 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7D6 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 09.空调关闭开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:7D6 05 2F 20 0A 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:7D6 05 2F 20 0A 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7D6 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:7D6 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
