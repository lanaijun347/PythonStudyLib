
    车型ID：141d

    模拟：协议模拟-->141d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~719

进入命令:

  $~  REQ000:711 02 10 01 00 00 00 00 00       $~  ANS000:719 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:711 02 3E 80 00 00 00 00 00       $!  ANS000:719 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:711 03 19 02 09 00 00 00 00       $#  ANS000:719 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/feff0000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:711 04 14 FF FF FF 00 00 00       $$  ANS000:719 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:711 03 22 F1 93 00 00 00 00       $%  ANS000:719 03 22 F1 93 00 00 00 00
  $%  REQ001:711 03 22 F1 94 00 00 00 00       $%  ANS001:719 03 22 F1 94 00 00 00 00
  $%  REQ002:711 03 22 F1 95 00 00 00 00       $%  ANS002:719 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:711 03 22 00 04 00 00 00 00       $  ANS000:719 03 22 00 04 00 00 00 00
  $  REQ001:711 03 22 00 05 00 00 00 00       $  ANS001:719 03 22 00 05 00 00 00 00

  $  000.音量增           $    $       $    $  ANS000.BYTE004  $  if(x1&0x01)y=@0047;else y=@0056;
  $  001.音量减           $    $       $    $  ANS000.BYTE004  $  if(x1&0x02)y=@0047;else y=@0056;
  $  002.上一频道         $    $       $    $  ANS000.BYTE004  $  if(x1&0x04)y=@0047;else y=@0056;
  $  003.下一频道         $    $       $    $  ANS000.BYTE004  $  if(x1&0x08)y=@0047;else y=@0056;
  $  004.模式             $    $       $    $  ANS000.BYTE004  $  if(x1&0x10)y=@0047;else y=@0056;
  $  005.蓝牙电话开       $    $       $    $  ANS000.BYTE004  $  if(x1&0x20)y=@0047;else y=@0056;
  $  006.仪表确定         $    $       $    $  ANS000.BYTE004  $  if(x1&0x40) y=@0047;else y=@0056;
  $  007.上翻页           $    $       $    $  ANS000.BYTE004  $  if(x1&0x80) y=@0047;else y=@0056;
  $  008.下翻页           $    $       $    $  ANS000.BYTE005  $  if(x1&0x01)y=@0047;else y=@0056;
  $  009.语音输入         $    $       $    $  ANS000.BYTE005  $  if(x1&0x02)y=@0047;else y=@0056;
  $  010.前影像           $    $       $    $  ANS000.BYTE005  $  if(x1&0x04)y=@0047;else y=@0056;
  $  011.后影像           $    $       $    $  ANS000.BYTE005  $  if(x1&0x08)y=@0047;else y=@0056;
  $  012.左影像           $    $       $    $  ANS000.BYTE005  $  if(x1&0x10)y=@0047;else y=@0056;
  $  013.右影像           $    $       $    $  ANS000.BYTE005  $  if(x1&0x20)y=@0047;else y=@0056;
  $  014.全景影像         $    $       $    $  ANS000.BYTE005  $  if(x1&0x40) y=@0047;else y=@0056;
  $  015.蓝牙电话关       $    $       $    $  ANS000.BYTE005  $  if(x1&0x80) y=@0047;else y=@0056;
  $  016.仪表返回         $    $       $    $  ANS001.BYTE004  $  if(x1&0x08)y=@0047;else y=@0056;

;******************************************************************************************************************************************************

动作测试:

$^ 00.音量增开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:711 05 2F 20 01 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:711 05 2F 20 01 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.音量减开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:711 05 2F 20 02 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:711 05 2F 20 02 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.上一频道开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:711 05 2F 20 03 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:711 05 2F 20 03 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.下一频道开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:711 05 2F 20 04 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:711 05 2F 20 04 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.模式开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:711 05 2F 20 05 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:711 05 2F 20 05 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.蓝牙开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:711 05 2F 20 06 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:711 05 2F 20 06 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.仪表确定开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:711 05 2F 20 07 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:711 05 2F 20 07 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.上翻页开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:711 05 2F 20 08 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:711 05 2F 20 08 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 08.下翻页开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:711 05 2F 20 09 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:711 05 2F 20 09 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 09.语音开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:711 05 2F 20 0A 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:711 05 2F 20 0A 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 10.前景影像开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:711 05 2F 20 0B 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:711 05 2F 20 0B 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 11.后景影像开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:711 05 2F 20 0C 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:711 05 2F 20 0C 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 12.左景影像开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:711 05 2F 20 0D 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:711 05 2F 20 0D 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 13.右景影像开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:711 05 2F 20 0E 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:711 05 2F 20 0E 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 14.全景影像开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:711 05 2F 20 0F 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:711 05 2F 20 0F 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 15.蓝牙电话关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:711 05 2F 20 10 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:711 05 2F 20 10 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 16.仪表返回测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:711 05 2F 20 14 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:711 05 2F 20 14 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:711 30 01 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
