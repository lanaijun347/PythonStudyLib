
    车型ID：a2b2

    模拟：协议模拟-->a2b2

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~72D

进入命令:

  $~  REQ000:725 02 10 01 00 00 00 00 00       $~  ANS000:72D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:725 02 3E 80 00 00 00 00 00       $!  ANS000:72D 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:725 04 18 00 00 FF 00 00 00       $#  ANS000:72D 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a2b20000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:725 03 14 00 FF 00 00 00 00       $$  ANS000:72D 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:725 03 22 00 01 00 00 00 00       $%  ANS000:72D 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=x1*0.1;
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=x1*0.1;
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d/%02d/%02d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:725 03 22 00 03 00 00 00 00       $  ANS000:72D 03 22 00 03 00 00 00 00
  $  REQ001:725 03 22 00 04 00 00 00 00       $  ANS001:72D 03 22 00 04 00 00 00 00
  $  REQ002:725 03 22 00 05 00 00 00 00       $  ANS002:72D 03 22 00 05 00 00 00 00

  $  000.AUTO功能                       $    $       $    $  ANS000.BYTE004  $  if(x1&0x01) y=@0000;else y=@0001;
  $  001.小灯开关                       $    $       $    $  ANS000.BYTE004  $  if(x1&0x02) y=@0000;else y=@0001;
  $  002.前雾灯开关                     $    $       $    $  ANS000.BYTE004  $  if(x1&0x04) y=@0000;else y=@0001;
  $  003.后雾灯开关                     $    $       $    $  ANS000.BYTE004  $  if(x1&0x08) y=@0000;else y=@0001;
  $  004.远光灯开关                     $    $       $    $  ANS000.BYTE004  $  if(x1&0x10) y=@0000;else y=@0001;
  $  005.近光灯开关                     $    $       $    $  ANS000.BYTE004  $  if(x1&0x20) y=@0000;else y=@0001;
  $  006.左转向灯开关                   $    $       $    $  ANS000.BYTE004  $  if(x1&0x40) y=@0000;else y=@0001;
  $  007.右转向灯开关                   $    $       $    $  ANS000.BYTE004  $  if(x1&0x80) y=@0000;else y=@0001;
  $  008.前雨刮单次刮擦(MIST)开关       $    $       $    $  ANS001.BYTE004  $  if(x1&0x01) y=@0000;else y=@0001;
  $  009.前雨刮高频率(HI)开关           $    $       $    $  ANS001.BYTE004  $  if(x1&0x02) y=@0000;else y=@0001;
  $  010.前雨刮低频率(LO)开关           $    $       $    $  ANS001.BYTE004  $  if(x1&0x04) y=@0000;else y=@0001;
  $  011.前雨刮INT开关                  $    $       $    $  ANS001.BYTE004  $  if((x1&0x7F)<0x10) y=@085a;else if((x1&0x7F)<0x20) y=@085b;else if((x1&0x7F)<0x30) y=@085c;else if((x1&0x7F)<0x40) y=@085d;else if((x1&0x7F)<0x50) y=@0194;else if((x1&0x7F)<0x60) y=@06a4;else if((x1&0x7F)<0x70) y=@06a5;else y=@06a6;
  $  012.前雨刮AUTO开关                 $    $       $    $  ANS001.BYTE005  $  if((x1&0x07)==0x00)y=@06a3;else if((x1&0x07)==0x01)y=@06a4;else if((x1&0x07)==0x02)y=@06a5;else if((x1&0x07)==0x03)y=@06a6;else if((x1&0x07)==0x04)y=@08b5;else if((x1&0x07)==0x05)y=@06a7;else if((x1&0x07)==0x06)y=@06a8;else if((x1&0x07)==0x07)y=@06a9;
  $  013.时间设置关                     $    $       $    $  ANS001.BYTE005  $  if(x1&0x08) y=@0000;else y=@0001;
  $  014.回家照明功能时间设置           $    $       $    $  ANS002.BYTE004  $  if(x1==0x06) y=@0000;else if((x1&0x07)==0) y=@0853;else if((x1&0x07)==1) y=@0854;else if((x1&0x07)==2) y=@0855;else if((x1&0x07)==3) y=@0856;else if((x1&0x07)==4) y=@0857;else if((x1&0x07)==5) y=@0858;
  $  015.离家照明功能时间设置           $    $       $    $  ANS002.BYTE004  $  if((x1&0x3F)<0x08) y=@0853;else if((x1&0x3F)<0x10) y=@0854;else if((x1&0x3F)<0x18) y=@0855;else if((x1&0x3F)<0x20) y=@0856;else if((x1&0x3F)<0x28) y=@0857;else if((x1&0x3F)<0x30) y=@0858;else y=@0000;

;******************************************************************************************************************************************************

动作测试:

$^ 00.AUTO功能 
$^TYPE0
$^BUTTON:开 
$^REQ00:725 05 2F 20 01 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:725 05 2F 20 01 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.小灯开关 
$^TYPE0
$^BUTTON:开 
$^REQ00:725 05 2F 20 02 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:725 05 2F 20 02 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.近光灯开关 
$^TYPE0
$^BUTTON:开 
$^REQ00:725 05 2F 20 03 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:725 05 2F 20 03 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.远光灯开关 
$^TYPE0
$^BUTTON:开 
$^REQ00:725 05 2F 20 04 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:725 05 2F 20 04 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.左转向灯开关 
$^TYPE0
$^BUTTON:开 
$^REQ00:725 05 2F 20 05 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:725 05 2F 20 05 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.右转向灯开关 
$^TYPE0
$^BUTTON:开 
$^REQ00:725 05 2F 20 06 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:725 05 2F 20 06 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.前雾灯开关 
$^TYPE0
$^BUTTON:开 
$^REQ00:725 05 2F 20 07 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:725 05 2F 20 07 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.后雾灯开关 
$^TYPE0
$^BUTTON:开 
$^REQ00:725 05 2F 20 08 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:725 05 2F 20 08 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 08.前雨刮低频率(LO)开关 
$^TYPE0
$^BUTTON:开 
$^REQ00:725 05 2F 20 09 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:725 05 2F 20 09 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 09.前雨刮高频率(HI)开关 
$^TYPE0
$^BUTTON:开 
$^REQ00:725 05 2F 20 0A 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:725 05 2F 20 0A 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 10.前洗涤开关 
$^TYPE0
$^BUTTON:开 
$^REQ00:725 05 2F 20 0B 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:725 05 2F 20 0B 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 11.前雨刮单次刮擦(MIST)开关 
$^TYPE0
$^BUTTON:开 
$^REQ00:725 05 2F 20 0C 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:725 05 2F 20 0C 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 12.前雨刮自动间歇刮擦(INT)开关 
$^TYPE0
$^BUTTON:开 
$^REQ00:725 05 2F 20 0D 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:725 05 2F 20 0D 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 13.前雨刮AUTO开关(预留) 
$^TYPE0
$^BUTTON:开 
$^REQ00:725 05 2F 20 0E 03 00 00 00     $^

$^BUTTON:关 
$^REQ00:725 05 2F 20 0E 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 14.INT间歇时间设置 
$^TYPE0
$^BUTTON:间歇时间1秒 
$^REQ00:725 05 2F 20 0F 03 00 00 00     $^

$^BUTTON:间歇时间3秒 
$^REQ00:725 05 2F 20 0F 03 01 00 00     $^

$^BUTTON:间歇时间5秒 
$^REQ00:725 05 2F 20 0F 03 02 00 00     $^

$^BUTTON:间歇时间7秒 
$^REQ00:725 05 2F 20 0F 03 03 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 15.雨刮灵敏度等级设置(预留) 
$^TYPE0
$^BUTTON:等级1 
$^REQ00:725 05 2F 20 10 03 00 00 00     $^

$^BUTTON:等级2 
$^REQ00:725 05 2F 20 10 03 01 00 00     $^

$^BUTTON:等级3 
$^REQ00:725 05 2F 20 10 03 02 00 00     $^

$^BUTTON:等级4 
$^REQ00:725 05 2F 20 10 03 03 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:725 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
