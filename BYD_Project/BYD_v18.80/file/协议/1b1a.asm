
    车型ID：1b1a

    模拟：协议模拟-->1b1a

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~72E

进入命令:

  $~  REQ000:726 02 10 01 00 00 00 00 00       $~  ANS000:72E 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:726 02 3E 80 00 00 00 00 00       $!  ANS000:72E 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:726 04 18 00 00 FF 00 00 00       $#  ANS000:72E 04 18 00 00 FF 00 00 00

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

  $$  REQ000:726 03 14 00 FF 00 00 00 00       $$  ANS000:72E 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:726 03 22 00 01 00 00 00 00       $%  ANS000:72E 03 22 00 01 00 00 00 00
  $%  REQ001:726 03 22 00 0C 00 00 00 00       $%  ANS001:72E 03 22 00 0C 00 00 00 00
  $%  REQ002:726 03 22 00 0D 00 00 00 00       $%  ANS002:72E 03 22 00 0D 00 00 00 00

  $%  000:软件版本:                        $%    $%  ANS000.BYTE004  $%  y=x1*0.1;
  $%  001:硬件版本:                        $%    $%  ANS000.BYTE005  $%  y=x1*0.1;
  $%  002:生产日期:                        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  003:左前车窗防夹电机软件版本:        $%    $%  ANS001.BYTE004  $%  y=x1*0.1;
  $%  004:左前车窗防夹电机硬件版本:        $%    $%  ANS002.BYTE004  $%  y=x1*0.1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:726 03 22 00 04 00 00 00 00       $  ANS000:72E 03 22 00 04 00 00 00 00
  $  REQ001:726 03 22 00 05 00 00 00 00       $  ANS001:72E 03 22 00 05 00 00 00 00
  $  REQ002:726 03 22 00 06 00 00 00 00       $  ANS002:72E 03 22 00 06 00 00 00 00
  $  REQ003:726 03 22 00 07 00 00 00 00       $  ANS003:72E 03 22 00 07 00 00 00 00
  $  REQ004:726 03 22 00 08 00 00 00 00       $  ANS004:72E 03 22 00 08 00 00 00 00
  $  REQ005:726 03 22 00 09 00 00 00 00       $  ANS005:72E 03 22 00 09 00 00 00 00
  $  REQ006:726 03 22 00 0A 00 00 00 00       $  ANS006:72E 03 22 00 0A 00 00 00 00
  $  REQ007:726 03 22 00 0B 00 00 00 00       $  ANS007:72E 03 22 00 0B 00 00 00 00

  $  000.左前车窗当前动作状态           $    $        $    $  ANS000.BYTE004  $  if(x1==0x00)y=@003b;else if(x1==0x01)y=@003e;else if(x1==0x02)y=@01a0;else if(x1==0x03)y=@01a1;else y=@0002;
  $  001.左前车窗位置                   $    $        $    $  ANS001.BYTE004  $  if(x1==0x00)y=@003b;else if(x1==0x01)y=@003c;else if(x1==0x02)y=@003d;else if(x1==0x03)y=@0005;else y=@0002;
  $  002.左前车窗位置状态               $    $        $    $  ANS002.BYTE004  $  if(x1==0x00)y=@003f;else if(x1==0x01)y=@01a2;else if(x1==0x02)y=@01a3;else y=@0002;
  $  003.左前车窗自动上升开关信号       $    $        $    $  ANS003.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  004.左前车窗自动下降开关信号       $    $        $    $  ANS004.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  005.左前车窗手动上升开关信号       $    $        $    $  ANS005.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  006.左前车窗手动下降开关信号       $    $        $    $  ANS006.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  007.左前车窗玻璃位置百分比         $    $  %     $    $  ANS007.BYTE004  $  if(x1 < 0xC9) y=x1*0.5;else y=@0002;

;******************************************************************************************************************************************************

动作测试:

$^ 00.左前车窗电机动作测试 
$^TYPE0
$^BUTTON:向上移动到顶 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^
$^REQ01:726 05 2F 20 01 03 00 00 00     $^

$^BUTTON:向下移动到底 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^
$^REQ01:726 05 2F 20 01 03 01 00 00     $^

$^BUTTON:停止移动 
$^REQ00:726 05 2F 20 01 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:726 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
