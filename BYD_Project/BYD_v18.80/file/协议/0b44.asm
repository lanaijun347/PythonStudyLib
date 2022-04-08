
    车型ID：0b44

    模拟：协议模拟-->0b44

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~75B

进入命令:

  $~  REQ000:753 02 10 01 00 00 00 00 00       $~  ANS000:75B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:753 02 3E 80 00 00 00 00 00       $!  ANS000:75B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:753 04 18 00 00 FF 00 00 00       $#  ANS000:75B 04 18 00 00 FF 00 00 00

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

  $$  REQ000:753 03 14 00 FF 00 00 00 00       $$  ANS000:75B 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:753 03 22 F1 93 00 00 00 00       $%  ANS000:75B 03 22 F1 93 00 00 00 00
  $%  REQ001:753 03 22 F1 94 00 00 00 00       $%  ANS001:75B 03 22 F1 94 00 00 00 00
  $%  REQ002:753 03 22 F1 95 00 00 00 00       $%  ANS002:75B 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,x1%100/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%d%s%d%s%d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1*256+x2)/10000,(x1*256+x2)%10000/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%d%s%d%s%d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:753 03 22 00 04 00 00 00 00       $  ANS000:75B 03 22 00 04 00 00 00 00
  $  REQ001:753 03 22 00 05 00 00 00 00       $  ANS001:75B 03 22 00 05 00 00 00 00
  $  REQ002:753 03 22 00 06 00 00 00 00       $  ANS002:75B 03 22 00 06 00 00 00 00

  $  000.座椅通风总档位数       $    $       $    $  ANS000.BYTE004  $  if(x1==0x00)y=@016b;else if(x1==0x01)y=@0363;else y=@00d6;
  $  001.座椅通风当前档位       $    $       $    $  ANS000.BYTE005  $  if(x1==0x00)y=@0000;else if(x1==0x01)y=@004c;else if(x1==0x02)y=@0362;else if(x1==0x03)y=@004b;else y=@00d6;
  $  002.座椅加热总档位数       $    $       $    $  ANS001.BYTE004  $  if(x1==0x00)y=@016b;else if(x1==0x01)y=@0363;else y=@00d6;
  $  003.座椅加热当前档位       $    $       $    $  ANS001.BYTE005  $  if(x1==0x00)y=@0000;else if(x1==0x01)y=@004c;else if(x1==0x02)y=@0362;else if(x1==0x03)y=@004b;else y=@00d6;
  $  004.座椅档位1按键          $    $       $    $  ANS002.BYTE004  $  if(x1&0x01)y=@0047;else y=@0056;
  $  005.座椅档位2按键          $    $       $    $  ANS002.BYTE004  $  if(x1&0x02)y=@0047;else y=@0056;
  $  006.座椅档位3按键          $    $       $    $  ANS002.BYTE004  $  if(x1&0x04)y=@0047;else y=@0056;
  $  007.座椅档位SET按键        $    $       $    $  ANS002.BYTE004  $  if(x1&0x08)y=@0047;else y=@0056;
  $  008.座椅通风按键           $    $       $    $  ANS002.BYTE004  $  if(x1&0x10)y=@0047;else y=@0056;
  $  009.座椅加热按键           $    $       $    $  ANS002.BYTE004  $  if(x1&0x20)y=@0047;else y=@0056;

;******************************************************************************************************************************************************

动作测试:

$^ 00.座椅档位1控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:753 05 2F 20 01 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:753 05 2F 20 01 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:753 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.座椅档位2控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:753 05 2F 20 02 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:753 05 2F 20 02 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:753 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.座椅档位3控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:753 05 2F 20 03 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:753 05 2F 20 03 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:753 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.座椅档位SET控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:753 05 2F 20 04 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:753 05 2F 20 04 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:753 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.座椅档位SET1控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:753 05 2F 20 05 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:753 05 2F 20 05 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:753 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.座椅档位SET2控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:753 05 2F 20 06 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:753 05 2F 20 06 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:753 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.座椅档位SET3控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:753 05 2F 20 07 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:753 05 2F 20 07 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:753 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.座椅通风高速档位控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:753 05 2F 20 08 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:753 05 2F 20 08 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:753 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 08.座椅通风中速档位控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:753 05 2F 20 09 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:753 05 2F 20 09 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:753 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 09.座椅通风低速档位控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:753 05 2F 20 0A 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:753 05 2F 20 0A 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:753 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 10.座椅加热高速档位控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:753 05 2F 20 0B 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:753 05 2F 20 0B 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:753 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 11.座椅加热中速档位控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:753 05 2F 20 0C 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:753 05 2F 20 0C 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:753 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 12.座椅加热低速档位控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:753 05 2F 20 0D 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:753 05 2F 20 0D 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:753 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:753 30 01 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
