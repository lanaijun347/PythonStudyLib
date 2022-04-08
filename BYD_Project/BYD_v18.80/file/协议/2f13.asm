
    车型ID：2f13

    模拟：协议模拟-->2f13

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~72F

进入命令:

  $~  REQ000:727 02 10 01 00 00 00 00 00       $~  ANS000:72F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:727 02 3E 80 00 00 00 00 00       $!  ANS000:72F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:727 03 19 02 09 00 00 00 00       $#  ANS000:72F 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ab000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:727 04 14 FF FF FF 00 00 00       $$  ANS000:72F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:727 03 22 F1 93 00 00 00 00       $%  ANS000:72F 03 22 F1 93 00 00 00 00
  $%  REQ001:727 03 22 F1 94 00 00 00 00       $%  ANS001:72F 03 22 F1 94 00 00 00 00
  $%  REQ002:727 03 22 F1 95 00 00 00 00       $%  ANS002:72F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:727 03 22 00 05 00 00 00 00       $  ANS000:72F 03 22 00 05 00 00 00 00
  $  REQ001:727 03 22 00 06 00 00 00 00       $  ANS001:72F 03 22 00 06 00 00 00 00
  $  REQ002:727 03 22 00 0B 00 00 00 00       $  ANS002:72F 03 22 00 0B 00 00 00 00
  $  REQ003:727 03 22 00 16 00 00 00 00       $  ANS003:72F 03 22 00 16 00 00 00 00
  $  REQ004:727 03 22 00 25 00 00 00 00       $  ANS004:72F 03 22 00 25 00 00 00 00
  $  REQ005:727 03 22 00 26 00 00 00 00       $  ANS005:72F 03 22 00 26 00 00 00 00
  $  REQ006:727 03 22 00 2A 00 00 00 00       $  ANS006:72F 03 22 00 2A 00 00 00 00
  $  REQ007:727 03 22 00 31 00 00 00 00       $  ANS007:72F 03 22 00 31 00 00 00 00
  $  REQ008:727 03 22 00 3A 00 00 00 00       $  ANS008:72F 03 22 00 3A 00 00 00 00

  $  000.风速                             $    $  级     $    $  ANS000.BYTE004  $  y=x1;
  $  001.送风模式                         $    $         $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@002e;0x01: y=@002f;0x02: y=@0030;0x03: y=@0031;0x04: y=@0032;0x05: y=@0033;0x06: y=@04b5;0x07: y=@04b6;default: y=@0002;
  $  002.空调请求开启皮带驱动压缩机       $    $         $    $  ANS002.BYTE004  $  switxh(x1)0x01: y=@0037;0x00: y=@0036;default: y=@0002;
  $  003.工作电源电压                     $    $  V      $    $  ANS003.BYTE004  $  if(x1==160) y=@004f;else if(x1==208) y=@0050;else if((x1>=90)&&(x1<=159)) y=SPRINTF([%.1f],x1*0.1);else y=@0002;
  $  004.副驾冷暖电机位置百分比           $    $  %      $    $  ANS004.BYTE004  $  y=x1;
  $  005.出风模式电机位置百分比           $    $  %      $    $  ANS005.BYTE004  $  y=x1;
  $  006.内外循环电机位置百分比           $    $  %      $    $  ANS006.BYTE004  $  y=x1;
  $  007.蒸发器温度                       $    $  ℃     $    $  ANS007.BYTE004  $  if((x1>=0)&&(x1<=60)) y=x1-20;else if(x1==208) y=@0034;else if(x1==216) y=@0035;else y=@0002;
  $  008.压力开关                         $    $         $    $  ANS008.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@0046;default: y=@0002;

;******************************************************************************************************************************************************

动作测试:

$^ 00.空调请求“皮带驱动”压缩机 
$^IN  REQ00:727 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:不请求 
$^REQ00:727 05 2F 20 10 03 00 00 00     $^

$^BUTTON:请求 
$^REQ00:727 05 2F 20 10 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.副冷暖电机位置百分比 
$^IN  REQ00:727 02 10 03 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 1E 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:副冷暖电机位置百分比
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 02.模式电机位置百分比 
$^IN  REQ00:727 02 10 03 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 1F 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:模式电机位置百分比
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 03.循环电机位置百分比 
$^IN  REQ00:727 02 10 03 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 23 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:循环电机位置百分比
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:727 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
