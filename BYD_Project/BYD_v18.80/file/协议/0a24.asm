
    车型ID：0a24

    模拟：协议模拟-->0a24

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~719

进入命令:

  $~  REQ000:711 02 10 01 00 00 00 00 00       $~  ANS000:719 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:711 02 3E 80 00 00 00 00 00       $!  ANS000:719 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:711 04 18 00 00 FF 00 00 00       $#  ANS000:719 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/0a240000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:711 03 14 00 FF 00 00 00 00       $$  ANS000:719 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:711 03 22 00 01 00 00 00 00       $%  ANS000:719 03 22 00 01 00 00 00 00
  $%  REQ001:711 03 22 00 03 00 00 00 00       $%  ANS001:719 03 22 00 03 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  001:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:硬件版本:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  003:生产日期:        $%    $%  ANS001.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:711 03 22 00 04 00 00 00 00       $  ANS000:719 03 22 00 04 00 00 00 00

  $  000.音量增               $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1))y=@0047;else y=@0056;
  $  001.音量减               $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1))y=@0047;else y=@0056;
  $  002.上一频道             $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1))y=@0047;else y=@0056;
  $  003.下一频道             $    $       $    $  ANS000.BYTE004  $  if(((x>>3)&1))y=@0047;else y=@0056;
  $  004.模式                 $    $       $    $  ANS000.BYTE004  $  if(((x>>4)&1))y=@0047;else y=@0056;
  $  005.蓝牙                 $    $       $    $  ANS000.BYTE004  $  if(((x>>5)&1))y=@0047;else y=@0056;
  $  006.仪表确定             $    $       $    $  ANS000.BYTE004  $  if(((x>>6)&1))y=@0047;else y=@0056;
  $  007.上翻页               $    $       $    $  ANS000.BYTE004  $  if(((x>>7)&1))y=@0047;else y=@0056;
  $  008.下翻页               $    $       $    $  ANS000.BYTE005  $  if(((x>>0)&1))y=@0047;else y=@0056;
  $  009.语言控制             $    $       $    $  ANS000.BYTE005  $  if(((x>>1)&1))y=@0047;else y=@0056;
  $  010.前影像               $    $       $    $  ANS000.BYTE005  $  if(((x>>2)&1))y=@0047;else y=@0056;
  $  011.后影像               $    $       $    $  ANS000.BYTE005  $  if(((x>>3)&1))y=@0047;else y=@0056;
  $  012.左影像               $    $       $    $  ANS000.BYTE005  $  if(((x>>4)&1))y=@0047;else y=@0056;
  $  013.右影像               $    $       $    $  ANS000.BYTE005  $  if(((x>>5)&1))y=@0047;else y=@0056;
  $  014.全景影像             $    $       $    $  ANS000.BYTE005  $  if(((x>>6)&1))y=@0047;else y=@0056;
  $  015.多媒体菜单返回       $    $       $    $  ANS000.BYTE005  $  if(((x>>7)&1))y=@0047;else y=@0056;

;******************************************************************************************************************************************************

动作测试:

$^ 00.音量增 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:711 05 2F 20 01 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:711 05 2F 20 01 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.音量减 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:711 05 2F 20 02 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:711 05 2F 20 02 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.上一频道 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:711 05 2F 20 03 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:711 05 2F 20 03 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.下一频道 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:711 05 2F 20 04 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:711 05 2F 20 04 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.音响控制 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:711 05 2F 20 05 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:711 05 2F 20 05 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.蓝牙 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:711 05 2F 20 06 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:711 05 2F 20 06 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.仪表确定 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:711 05 2F 20 07 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:711 05 2F 20 07 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.上翻页 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:711 05 2F 20 08 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:711 05 2F 20 08 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 08.下翻页 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:711 05 2F 20 09 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:711 05 2F 20 09 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 09.语音控制 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:711 05 2F 20 0A 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:711 05 2F 20 0A 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 10.前影像 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:711 05 2F 20 0B 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:711 05 2F 20 0B 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 11.后影像 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:711 05 2F 20 0C 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:711 05 2F 20 0C 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 12.左影像 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:711 05 2F 20 0D 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:711 05 2F 20 0D 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 13.右影像 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:711 05 2F 20 0E 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:711 05 2F 20 0E 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 14.全景影像 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:711 05 2F 20 0F 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:711 05 2F 20 0F 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 15.多媒体菜单返回 
$^TYPE0
$^BUTTON:闭合 
$^REQ00:711 05 2F 20 10 03 00 00 00     $^

$^BUTTON:断开 
$^REQ00:711 05 2F 20 10 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:711 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:711 30 01 04 55 55 55 55 55  $FC 

;******************************************************************************************************************************************************
