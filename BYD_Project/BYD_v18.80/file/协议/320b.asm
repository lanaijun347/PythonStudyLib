
    车型ID：320b

    模拟：协议模拟-->320b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~72D

进入命令:

  $~  REQ000:725 02 10 01 00 00 00 00 00       $~  ANS000:72D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:725 02 3E 80 00 00 00 00 00       $!  ANS000:72D 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:725 03 19 02 09 00 00 00 00       $#  ANS000:72D 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/27000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:725 04 14 FF FF FF 00 00 00       $$  ANS000:72D 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:725 03 22 F1 93 00 00 00 00       $%  ANS000:72D 03 22 F1 93 00 00 00 00
  $%  REQ001:725 03 22 F1 94 00 00 00 00       $%  ANS001:72D 03 22 F1 94 00 00 00 00
  $%  REQ002:725 03 22 F1 95 00 00 00 00       $%  ANS002:72D 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:725 03 22 00 03 00 00 00 00       $  ANS000:72D 03 22 00 03 00 00 00 00
  $  REQ001:725 03 22 00 04 00 00 00 00       $  ANS001:72D 03 22 00 04 00 00 00 00

  $  000.灯光总开关AUTO开关       $    $       $    $  ANS000.BYTE004  $  if(x1&0x01) y=@014f;else y=@014d;
  $  001.灯光总开关小灯开关       $    $       $    $  ANS000.BYTE004  $  if(x1&0x02) y=@014f;else y=@014d;
  $  002.前雾灯开关               $    $       $    $  ANS000.BYTE004  $  if(x1&0x04) y=@014f;else y=@014d;
  $  003.后雾灯开关               $    $       $    $  ANS000.BYTE004  $  if(x1&0x08) y=@014f;else y=@014d;
  $  004.远光灯开关               $    $       $    $  ANS000.BYTE004  $  if(x1&0x10) y=@014f;else y=@014d;
  $  005.会车灯开关               $    $       $    $  ANS000.BYTE004  $  if(x1&0x20) y=@014f;else y=@014d;
  $  006.左转向灯开关             $    $       $    $  ANS000.BYTE004  $  if(x1&0x40) y=@014f;else y=@014d;
  $  007.右转向灯开关             $    $       $    $  ANS000.BYTE004  $  if(x1&0x80) y=@014f;else y=@014d;
  $  008.前刮水器MIST开关         $    $       $    $  ANS001.BYTE004  $  if(x1&0x01) y=@014f;else y=@014d;
  $  009.前刮水器HI档开关         $    $       $    $  ANS001.BYTE004  $  if(x1&0x02) y=@014f;else y=@014d;
  $  010.前刮水器LO档开关         $    $       $    $  ANS001.BYTE004  $  if(x1&0x04) y=@014f;else y=@014d;
  $  011.前刮水器INT开关          $    $       $    $  ANS001.BYTE004  $  switxh(x1&0x70)0x00: y=@01ee;0x10: y=@01ef;0x20: y=@01f0;0x30: y=@01f1;0x40: y=@0162;default: y=@0002;
  $  012.前刮水器AUTO开关         $    $       $    $  ANS001.BYTE005  $  switxh(x1&0x07)0x00: y=@01f8;0x01: y=@01f9;0x02: y=@01fa;0x03: y=@01fb;0x04: y=@01fc;default: y=@0002;
  $  013.前洗涤器开关             $    $       $    $  ANS001.BYTE005  $  if(x1&0x08) y=@014f;else y=@014d;
  $  014.后雨刮开关               $    $       $    $  ANS001.BYTE005  $  if(x1&0x10) y=@014f;else y=@014d;
  $  015.后洗涤开关               $    $       $    $  ANS001.BYTE005  $  if(x1&0x20) y=@014f;else y=@014d;

;******************************************************************************************************************************************************

动作测试:

$^ 00.AUTO功能测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 01 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 01 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.小灯开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 02 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 02 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.近光灯开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 03 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 03 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.远光灯开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 04 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 04 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.左转向灯开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 05 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 05 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.右转向灯开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 06 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 06 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.前雾灯开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 07 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 07 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.后雾灯开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 08 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 08 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 08.前雨刮LO开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 09 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 09 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 09.前雨刮HI开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 0A 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 0A 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 10.前洗涤开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 0B 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 0B 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 11.前雨刮MIST开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 0C 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 0C 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 12.前雨刮INT开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 0D 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 0D 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 13.前雨刮AUTO开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 0E 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 0E 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 14.前雨刮INT间歇时间测试 
$^TYPE0
$^BUTTON:间歇时间1S 
$^REQ00:725 05 2F 20 0F 03 00 00 00     $^

$^BUTTON:间歇时间3S 
$^REQ00:725 05 2F 20 0F 03 01 00 00     $^

$^BUTTON:间歇时间5S 
$^REQ00:725 05 2F 20 0F 03 02 00 00     $^

$^BUTTON:间歇时间7S 
$^REQ00:725 05 2F 20 0F 03 03 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 15.自动雨刮灵敏度测试 
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

$^ 16.后雨刮(慢刮)开关 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 12 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 12 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 17.后洗涤开关 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 13 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 13 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:725 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
