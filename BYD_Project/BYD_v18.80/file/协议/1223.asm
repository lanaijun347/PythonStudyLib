
    车型ID：1223

    模拟：协议模拟-->1223

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~72C

进入命令:

  $~  REQ000:724 02 10 01 00 00 00 00 00       $~  ANS000:72C 02 10 01 00 00 00 00 00
  $~  REQ001:724 02 10 03 00 00 00 00 00       $~  ANS001:72C 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:724 02 3E 80 00 00 00 00 00       $!  ANS000:72C 02 3E 80 00 00 00 00 00

退出命令:

  $@  REQ000:724 02 10 01 00 00 00 00 00       $@  ANS000:72C 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:724 03 19 02 09 00 00 00 00       $#  ANS000:72C 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:724 04 14 FF FF FF 00 00 00       $$  ANS000:72C 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:724 03 22 F1 93 00 00 00 00       $%  ANS000:72C 03 22 F1 93 00 00 00 00
  $%  REQ001:724 03 22 F1 94 00 00 00 00       $%  ANS001:72C 03 22 F1 94 00 00 00 00
  $%  REQ002:724 03 22 F1 95 00 00 00 00       $%  ANS002:72C 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:724 03 22 B0 00 00 00 00 00       $  ANS000:72C 03 22 B0 00 00 00 00 00
  $  REQ001:724 03 22 B0 01 00 00 00 00       $  ANS001:72C 03 22 B0 01 00 00 00 00
  $  REQ002:724 03 22 B0 02 00 00 00 00       $  ANS002:72C 03 22 B0 02 00 00 00 00
  $  REQ003:724 03 22 B0 03 00 00 00 00       $  ANS003:72C 03 22 B0 03 00 00 00 00
  $  REQ004:724 03 22 B0 04 00 00 00 00       $  ANS004:72C 03 22 B0 04 00 00 00 00
  $  REQ005:724 03 22 B0 05 00 00 00 00       $  ANS005:72C 03 22 B0 05 00 00 00 00
  $  REQ006:724 03 22 B0 06 00 00 00 00       $  ANS006:72C 03 22 B0 06 00 00 00 00
  $  REQ007:724 03 22 B0 07 00 00 00 00       $  ANS007:72C 03 22 B0 07 00 00 00 00
  $  REQ008:724 03 22 B0 08 00 00 00 00       $  ANS008:72C 03 22 B0 08 00 00 00 00
  $  REQ009:724 03 22 B0 09 00 00 00 00       $  ANS009:72C 03 22 B0 09 00 00 00 00
  $  REQ010:724 03 22 B0 0A 00 00 00 00       $  ANS010:72C 03 22 B0 0A 00 00 00 00
  $  REQ011:724 03 22 B0 0B 00 00 00 00       $  ANS011:72C 03 22 B0 0B 00 00 00 00
  $  REQ012:724 03 22 B0 0C 00 00 00 00       $  ANS012:72C 03 22 B0 0C 00 00 00 00
  $  REQ013:724 03 22 B0 0D 00 00 00 00       $  ANS013:72C 03 22 B0 0D 00 00 00 00
  $  REQ014:724 03 22 B0 0E 00 00 00 00       $  ANS014:72C 03 22 B0 0E 00 00 00 00
  $  REQ015:724 03 22 B0 0F 00 00 00 00       $  ANS015:72C 03 22 B0 0F 00 00 00 00

  $  000.昼行灯继电器使用次数           $    $  次     $    $  ANS000.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  001.昼行灯继电器使用时间           $    $  H      $    $  ANS000.BYTE007  $  y=x1*256+x2;
  $  002.喇叭继电器使用次数             $    $  次     $    $  ANS001.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  003.喇叭继电器使用时间             $    $  H      $    $  ANS001.BYTE007  $  y=x1*256+x2;
  $  004.小灯继电器使用次数             $    $  次     $    $  ANS002.BYTE004  $  y=x3*256*256+x2*256+x1;
  $  005.小灯继电器使用时间             $    $  H      $    $  ANS002.BYTE007  $  y=x1+x2*256;
  $  006.前洗涤继电器使用次数           $    $  次     $    $  ANS003.BYTE004  $  y=x3*256*256+x2*256+x1;
  $  007.前洗涤继电器使用时间           $    $  H      $    $  ANS003.BYTE007  $  y=x1+x2*256;
  $  008.前高速雨刮继电器使用次数       $    $  次     $    $  ANS004.BYTE004  $  y=x3*256*256+x2*256+x1;
  $  009.前高速雨刮继电器使用时间       $    $  H      $    $  ANS004.BYTE007  $  y=x1+x2*256;
  $  010.前低速继电器使用次数           $    $  次     $    $  ANS005.BYTE004  $  y=x3*256*256+x2*256+x1;
  $  011.前低速继电器使用时间           $    $  H      $    $  ANS005.BYTE007  $  y=x1+x2*256;
  $  012.前雾灯继电器使用次数           $    $  次     $    $  ANS006.BYTE004  $  y=x3*256*256+x2*256+x1;
  $  013.前雾灯继电器使用时间           $    $  H      $    $  ANS006.BYTE007  $  y=x1+x2*256;
  $  014.报警继电器使用次数             $    $  次     $    $  ANS007.BYTE004  $  y=x3*256*256+x2*256+x1;
  $  015.报警继电器使用时间             $    $  H      $    $  ANS007.BYTE007  $  y=x1+x2*256;
  $  016.后除霜继电器使用次数           $    $  次     $    $  ANS008.BYTE004  $  y=x3*256*256+x2*256+x1;
  $  017.后除霜继电器使用时间           $    $  H      $    $  ANS008.BYTE007  $  y=x1+x2*256;
  $  018.前舱盖打开次数                 $    $  次     $    $  ANS009.BYTE004  $  y=x3*256*256+x2*256+x1;
  $  019.近光灯继电器使用次数           $    $  次     $    $  ANS010.BYTE004  $  y=x3*256*256+x2*256+x1;
  $  020.近光灯继电器使用时间           $    $  H      $    $  ANS010.BYTE007  $  y=x1+x2*256;
  $  021.远光灯继电器使用次数           $    $  次     $    $  ANS011.BYTE004  $  y=x3*256*256+x2*256+x1;
  $  022.远光灯继电器使用时间           $    $  H      $    $  ANS011.BYTE007  $  y=x1+x2*256;
  $  023.后雾灯继电器使用次数           $    $  次     $    $  ANS012.BYTE004  $  y=x3*256*256+x2*256+x1;
  $  024.后雾灯继电器使用时间           $    $  H      $    $  ANS012.BYTE007  $  y=x1+x2*256;
  $  025.后雨刮继电器使用次数           $    $  次     $    $  ANS013.BYTE004  $  y=x3*256*256+x2*256+x1;
  $  026.后雨刮继电器使用时间           $    $  H      $    $  ANS013.BYTE007  $  y=x1+x2*256;
  $  027.后洗涤继电器使用次数           $    $  次     $    $  ANS014.BYTE004  $  y=x3*256*256+x2*256+x1;
  $  028.后洗涤继电器使用时间           $    $  H      $    $  ANS014.BYTE007  $  y=x1+x2*256;
  $  029.电源电压                       $    $  V      $    $  ANS015.BYTE004  $  y=x1;

;******************************************************************************************************************************************************

动作测试:

$^ 00.前雨刮速度变化测试 
$^TYPE0
$^BUTTON:停止 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 03 03 00 00 00     $^

$^BUTTON:慢速 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 03 03 01 00 00     $^

$^BUTTON:快速 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 03 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.前洗涤电机测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 04 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 04 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.后除霜测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 06 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 06 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.远光灯测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 07 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 07 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.近光灯测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 08 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 08 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.前雾灯测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 09 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 09 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.小灯测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 0A 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 0A 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.昼行灯测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 0B 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 0B 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 08.喇叭测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 0C 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 0C 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 09.报警测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 0D 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 05 2F 20 0D 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:724 02 10 03 00 00 00 00 00     $^
$^REQ01:724 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:724 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
