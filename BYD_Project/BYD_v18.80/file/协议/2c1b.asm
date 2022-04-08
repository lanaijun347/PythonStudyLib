
    车型ID：2c1b

    模拟：协议模拟-->2c1b

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

  $*$*DTC/1b000000


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
  $  REQ002:725 03 22 00 05 00 00 00 00       $  ANS002:72D 03 22 00 05 00 00 00 00
  $  REQ003:725 03 22 00 06 00 00 00 00       $  ANS003:72D 03 22 00 06 00 00 00 00
  $  REQ004:725 03 22 B0 00 00 00 00 00       $  ANS004:72D 03 22 B0 00 00 00 00 00
  $  REQ005:725 03 22 B0 01 00 00 00 00       $  ANS005:72D 03 22 B0 01 00 00 00 00
  $  REQ006:725 03 22 B0 02 00 00 00 00       $  ANS006:72D 03 22 B0 02 00 00 00 00
  $  REQ007:725 03 22 B0 03 00 00 00 00       $  ANS007:72D 03 22 B0 03 00 00 00 00
  $  REQ008:725 03 22 B0 04 00 00 00 00       $  ANS008:72D 03 22 B0 04 00 00 00 00
  $  REQ009:725 03 22 B0 05 00 00 00 00       $  ANS009:72D 03 22 B0 05 00 00 00 00
  $  REQ010:725 03 22 B0 06 00 00 00 00       $  ANS010:72D 03 22 B0 06 00 00 00 00
  $  REQ011:725 03 22 B0 07 00 00 00 00       $  ANS011:72D 03 22 B0 07 00 00 00 00
  $  REQ012:725 03 22 B0 09 00 00 00 00       $  ANS012:72D 03 22 B0 09 00 00 00 00
  $  REQ013:725 03 22 B0 0A 00 00 00 00       $  ANS013:72D 03 22 B0 0A 00 00 00 00
  $  REQ014:725 03 22 B0 0B 00 00 00 00       $  ANS014:72D 03 22 B0 0B 00 00 00 00
  $  REQ015:725 03 22 B0 0C 00 00 00 00       $  ANS015:72D 03 22 B0 0C 00 00 00 00
  $  REQ016:725 03 22 B0 0D 00 00 00 00       $  ANS016:72D 03 22 B0 0D 00 00 00 00
  $  REQ017:725 03 22 B0 0E 00 00 00 00       $  ANS017:72D 03 22 B0 0E 00 00 00 00

  $  000.远光灯开关                    $    $         $    $  ANS000.BYTE004  $  if(x1&0x10) y=@014f;else y=@014d;
  $  001.会车灯开关                    $    $         $    $  ANS000.BYTE004  $  if(x1&0x20) y=@014f;else y=@014d;
  $  002.左转向灯开关                  $    $         $    $  ANS000.BYTE004  $  if(x1&0x40) y=@014f;else y=@014d;
  $  003.右转向灯开关                  $    $         $    $  ANS000.BYTE004  $  if(x1&0x80) y=@014f;else y=@014d;
  $  004.前刮水器MIST开关              $    $         $    $  ANS001.BYTE004  $  if(x1&0x01) y=@014f;else y=@014d;
  $  005.前刮水器HI档开关              $    $         $    $  ANS001.BYTE004  $  if(x1&0x02) y=@014f;else y=@014d;
  $  006.前刮水器LO档开关              $    $         $    $  ANS001.BYTE004  $  if(x1&0x04) y=@014f;else y=@014d;
  $  007.前刮水器INT开关               $    $         $    $  ANS001.BYTE004  $  switxh(x1&0x70)0x00: y=@01ee;0x10: y=@01ef;0x20: y=@01f0;0x30: y=@01f1;0x40: y=@0162;default: y=@0002;
  $  008.前刮水器AUTO开关              $    $         $    $  ANS001.BYTE005  $  switxh(x1&0x07)0x00: y=@01f8;0x01: y=@01f9;0x02: y=@01fa;0x03: y=@01fb;0x04: y=@01fc;default: y=@0002;
  $  009.前洗涤器开关                  $    $         $    $  ANS001.BYTE005  $  if(x1&0x08) y=@014f;else y=@014d;
  $  010.后雨刮开关                    $    $         $    $  ANS001.BYTE005  $  if(x1&0x10) y=@014f;else y=@014d;
  $  011.后洗涤开关                    $    $         $    $  ANS001.BYTE005  $  if(x1&0x20) y=@014f;else y=@014d;
  $  012.方向盘位置调节信号            $    $         $    $  ANS002.BYTE004  $  switxh(x1&0x07)0x00: y=@003f;0x01: y=@0168;0x02: y=@07e4;0x03: y=@0167;0x04: y=@07e5;default: y=@0002;
  $  013.方向盘加热                    $    $         $    $  ANS002.BYTE004  $  if(x1&0x08) y=@014f;else y=@014d;
  $  014.功能模式                      $    $         $    $  ANS003.BYTE004  $  if(x1&0x07) y=@055d;else y=@055e;
  $  015.速度调节                      $    $         $    $  ANS003.BYTE004  $  switxh(x1&0x1C)0x00: y=@0560;0x04: y=@0561;0x08: y=@0562;0x0C: y=@0563;0x10: y=@0564;default: y=@0002;
  $  016.时距调节                      $    $         $    $  ANS003.BYTE004  $  switxh(x1&0xE0)0x00: y=@023b;0x20: y=@03cd;0x40: y=@0363;0x60: y=@055f;default: y=@0002;
  $  017.读取当前低压电源电压值        $    $  V      $    $  ANS004.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  018.读取左转向灯开关次数          $    $  次     $    $  ANS005.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  019.读取右转向灯开关次数          $    $  次     $    $  ANS005.BYTE007  $  y=(x1*256*256+x2*256+x3);
  $  020.读取超车灯开关次数            $    $  次     $    $  ANS006.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  021.读取INT1（AUTO1）档次数       $    $  次     $    $  ANS007.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  022.读取INT2（AUTO2）档次数       $    $  次     $    $  ANS007.BYTE007  $  y=(x1*256*256+x2*256+x3);
  $  023.读取INT3（AUTO3）档次数       $    $  次     $    $  ANS008.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  024.读取INT4（AUTO4）档次数       $    $  次     $    $  ANS008.BYTE007  $  y=(x1*256*256+x2*256+x3);
  $  025.读取MIST档次数                $    $  次     $    $  ANS009.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  026.读取INT（AUTO）档次数         $    $  次     $    $  ANS009.BYTE007  $  y=(x1*256*256+x2*256+x3);
  $  027.读取L0档次数                  $    $  次     $    $  ANS010.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  028.读取HI档次数                  $    $  次     $    $  ANS010.BYTE007  $  y=(x1*256*256+x2*256+x3);
  $  029.读取洗涤档次数                $    $  次     $    $  ANS011.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  030.读取远光档次数                $    $  次     $    $  ANS012.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  031.读取时距次数                  $    $  次     $    $  ANS013.BYTE007  $  y=(x1*256*256+x2*256+x3);
  $  032.读取速度次数                  $    $  次     $    $  ANS014.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  033.读取功能切换次数              $    $  次     $    $  ANS014.BYTE007  $  y=(x1*256*256+x2*256+x3);
  $  034.读取取消复位次数              $    $  次     $    $  ANS015.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  035.读取方向盘调节次数            $    $  次     $    $  ANS015.BYTE007  $  y=(x1*256*256+x2*256+x3);
  $  036.读取方向盘加热次数            $    $  次     $    $  ANS016.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  037.读取后雨刮次数                $    $  次     $    $  ANS016.BYTE007  $  y=(x1*256*256+x2*256+x3);
  $  038.读取后洗涤次数                $    $  次     $    $  ANS017.BYTE004  $  y=(x1*256*256+x2*256+x3);

;******************************************************************************************************************************************************

动作测试:

$^ 00.远光灯开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 04 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 04 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.左转向灯开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 05 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 05 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.右转向灯开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 06 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 06 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.前雨刮LO开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 09 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 09 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.前雨刮HI开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 0A 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 0A 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.前洗涤开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 0B 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 0B 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.前雨刮MIST开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 0C 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 0C 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.前雨刮INT开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 0D 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 0D 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 08.前雨刮AUTO开关测试 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 0E 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 0E 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 09.前雨刮INT间歇时间测试 
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

$^ 10.自动雨刮灵敏度测试 
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

$^ 11.方向盘位置调节开关 
$^TYPE0
$^BUTTON:向后调节 
$^REQ00:725 05 2F 20 11 03 00 00 00     $^

$^BUTTON:向下调节 
$^REQ00:725 05 2F 20 11 03 01 00 00     $^

$^BUTTON:向前调节 
$^REQ00:725 05 2F 20 11 03 02 00 00     $^

$^BUTTON:向上调节 
$^REQ00:725 05 2F 20 11 03 03 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 11 03 04 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 12.方向盘加热 
$^TYPE0
$^BUTTON:打开 
$^REQ00:725 05 2F 20 12 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:725 05 2F 20 12 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:725 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:725 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
