
    车型ID：a509

    模拟：协议模拟-->a509

;******************************************************************************************************************************************************

    通讯线: $~12$~12$~10400

$JSON{"P4":5}

<VCI>
	<ACTIVE_ADDNODE type="0" num="0">
	<param type="string" value="1"/>
	<param type="string" value="3,11,1,12,8,2,15,6,7,9,13"/>
	</ACTIVE_ADDNODE>
</VCI>

进入命令:

  $~  REQ000:81 28 F1 81 1B       $~  ANS000:81 28 F1 81 1B
  $~  REQ001:82 28 F1 10 83 2E       $~  ANS001:82 28 F1 10 83 2E

空闲命令:

  $!  REQ000:81 28 F1 3E D8       $!  ANS000:81 28 F1 3E D8

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:84 28 F1 18 00 FF 00 B4       $#  ANS000:84 28 F1 18 00 FF 00 B4

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE04 控制故障码个数，从$#ANS000.BYTE5$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a5090000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:83 28 F1 14 FF 00 AF       $$  ANS000:83 28 F1 14 FF 00 AF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:82 28 F1 1A 80 35       $%  ANS000:82 28 F1 1A 80 35

  $%  000:厂家硬件号:          $%    $%  ANS000.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  001:诊断系统标识:        $%    $%  ANS000.BYTE016  $%  ASCII(x1,x2);
  $%  002:系统名称:            $%    $%  ANS000.BYTE018  $%  ASCII(x1,x2,x3,x4);
  $%  003:硬件号:              $%    $%  ANS000.BYTE024  $%  HEX(x1,x2,x3,x4,x5);
  $%  004:软件号:              $%    $%  ANS000.BYTE029  $%  HEX(x1,x2);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:82 28 F1 21 02 BE       $  ANS000:82 28 F1 21 02 BE
  $  REQ001:82 28 F1 21 03 BF       $  ANS001:82 28 F1 21 03 BF
  $  REQ002:82 28 F1 21 04 C0       $  ANS002:82 28 F1 21 04 C0
  $  REQ003:82 28 F1 21 BF 7B       $  ANS003:82 28 F1 21 BF 7B

  $  000.左前轮速               $    $  km/h     $    $  ANS000.BYTE005  $  if((x1*15.94/255)<2.7) y=0; else y=x1*15.94/255+16.0*x2;
  $  001.右前轮速               $    $  km/h     $    $  ANS000.BYTE007  $  if((x1*15.94/255)<2.7) y=0; else y=x1*15.94/255+16.0*x2;
  $  002.左后轮速               $    $  km/h     $    $  ANS000.BYTE009  $  if((x1*15.94/255)<2.7) y=0; else y=x1*15.94/255+16.0*x2;
  $  003.右后轮速               $    $  km/h     $    $  ANS000.BYTE011  $  if((x1*15.94/255)<2.7) y=0; else y=x1*15.94/255+16.0*x2;
  $  004.电瓶电压               $    $  V        $    $  ANS001.BYTE005  $  y=x1*20.30/255;
  $  005.左前进油阀状态         $    $           $    $  ANS002.BYTE006  $  if(x1&0x01) y=@00c3;else y=@00c4;
  $  006.左前出油阀状态         $    $           $    $  ANS002.BYTE006  $  if(x1&0x02) y=@00c3;else y=@00c4;
  $  007.右前进油阀状态         $    $           $    $  ANS002.BYTE006  $  if(x1&0x04) y=@00c3;else y=@00c4;
  $  008.右前出油阀状态         $    $           $    $  ANS002.BYTE006  $  if(x1&0x08) y=@00c3;else y=@00c4;
  $  009.左后进油阀状态         $    $           $    $  ANS002.BYTE006  $  if(x1&0x10) y=@00c3;else y=@00c4;
  $  010.左后出油阀状态         $    $           $    $  ANS002.BYTE006  $  if(x1&0x20) y=@00c3;else y=@00c4;
  $  011.右后进油阀状态         $    $           $    $  ANS002.BYTE006  $  if(x1&0x40) y=@00c3;else y=@00c4;
  $  012.右后出油阀状态         $    $           $    $  ANS002.BYTE006  $  if(x1&0x80) y=@00c3;else y=@00c4;
  $  013.制动灯状态             $    $           $    $  ANS002.BYTE007  $  if(x1&0x20) y=@00c3;else y=@00c4;
  $  014.回流泵电机状态         $    $           $    $  ANS002.BYTE007  $  if(x1&0x40) y=@00c3;else y=@00c4;
  $  015.电磁阀继电器状态       $    $           $    $  ANS002.BYTE007  $  if(x1&0x80) y=@00c3;else y=@00c4;
  $  016.制动液压模块状态       $    $           $    $  ANS003.BYTE005  $  if(x1==0) y=@0014;else if(x1==0x01) y=@0844;else if(x1==0xAA) y=@0845;else if(x1==0xEE) y=@0846;else if(x1==0xFF) y=@0844;else y=@007f;

;******************************************************************************************************************************************************

动作测试:

$^ 00.ABS(防抱死刹车系统)警告灯 
$^TYPE0
$^BUTTON:开 
$^REQ00: 96 28 F1 31 FB 06 00 FF FF 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:关 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:退出 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.EBD(电子制动力分配)警告灯 
$^TYPE0
$^BUTTON:开 
$^REQ00: 96 28 F1 31 FB 06 00 FF FF 00 0E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:关 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 0E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:退出 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 0E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.马达泵继电器 
$^TYPE0
$^BUTTON:开 
$^REQ00: 96 28 F1 31 FB 06 00 FF FF 00 22 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:关 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 22 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:退出 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 22 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.左前进油阀 
$^TYPE0
$^BUTTON:开 
$^REQ00: 96 28 F1 31 FB 06 00 FF FF 00 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:关 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:退出 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.左前出油阀 
$^TYPE0
$^BUTTON:开 
$^REQ00: 96 28 F1 31 FB 06 00 FF FF 00 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:关 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:退出 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.右前进油阀 
$^TYPE0
$^BUTTON:开 
$^REQ00: 96 28 F1 31 FB 06 00 FF FF 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:关 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:退出 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.右前出油阀 
$^TYPE0
$^BUTTON:开 
$^REQ00: 96 28 F1 31 FB 06 00 FF FF 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:关 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:退出 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.左后进油阀 
$^TYPE0
$^BUTTON:开 
$^REQ00: 96 28 F1 31 FB 06 00 FF FF 00 38 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:关 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 38 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:退出 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 38 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 08.左后出油阀 
$^TYPE0
$^BUTTON:开 
$^REQ00: 96 28 F1 31 FB 06 00 FF FF 00 3A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:关 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 3A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:退出 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 3A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 09.右后进油阀 
$^TYPE0
$^BUTTON:开 
$^REQ00: 96 28 F1 31 FB 06 00 FF FF 00 3C 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:关 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 3C 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:退出 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 3C 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 10.右后出油阀 
$^TYPE0
$^BUTTON:开 
$^REQ00: 96 28 F1 31 FB 06 00 FF FF 00 3E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:关 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 3E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:退出 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 3E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 11.过热保护 
$^TYPE0
$^BUTTON:开 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 5E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:关 
$^REQ00: 96 28 F1 31 FB 06 00 00 A5 00 5E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:退出 
$^REQ00: 96 28 F1 31 FB 06 00 00 A5 00 5E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 12.电磁阀继电器 
$^TYPE0
$^BUTTON:开 
$^REQ00: 96 28 F1 31 FB 06 00 00 00 00 64 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:关 
$^REQ00: 96 28 F1 31 FB 06 00 00 A5 00 64 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

$^BUTTON:退出 
$^REQ00: 96 28 F1 31 FB 06 00 00 A5 00 64 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

