
    车型ID：a20e

    模拟：协议模拟-->a20e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7CF

进入命令:

  $~  REQ000:7C7 02 10 01 00 00 00 00 00       $~  ANS000:7CF 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7C7 02 3E 80 00 00 00 00 00       $!  ANS000:7CF 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7C7 04 18 00 00 FF 00 00 00       $#  ANS000:7CF 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a2050000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7C7 03 14 00 FF 00 00 00 00       $$  ANS000:7CF 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7C7 03 22 00 01 00 00 00 00       $%  ANS000:7CF 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d/%02d/%02d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.状态量
  $  00.状态量
  $  REQ000:7C7 03 22 00 04 00 00 00 00       $  ANS000:7CF 03 22 00 04 00 00 00 00

  $  000.电源档位状态           $    $       $    $  ANS000.BYTE005  $  if((x1&0x03)==0x00)y=@00c3;else if((x1&0x03)==0x01)y=@014e;else if((x1&0x03)==0x02)y=@00c4;else if((x1&0x03)==0x03)y=@010e;
  $  001.调节开关缩回信号       $    $       $    $  ANS000.BYTE004  $  if(x1&0x08)y=@00c3;else y=@00c4;
  $  002.系统状态信息           $    $       $    $  ANS000.BYTE004  $  if(x1&0x10)y=@00b4;else y=@0045;
  $  003.调节开关上倾信号       $    $       $    $  ANS000.BYTE004  $  if(x1&0x01)y=@00c3;else y=@00c4;
  $  004.调节开关下倾信号       $    $       $    $  ANS000.BYTE004  $  if(x1&0x02)y=@00c3;else y=@00c4;
  $  005.调节开关伸出信号       $    $       $    $  ANS000.BYTE004  $  if(x1&0x04)y=@00c3;else y=@00c4;
  $  006.工作状态信息           $    $       $    $  ANS000.BYTE004  $  if((x1&0xe0)==0x20)y=@0150;else if((x1&0xe0)==0x40)y=@05d4;else if((x1&0xe0)==0x60)y=@05d5;else if((x1&0xe0)==0x80)y=@084b;else if((x1&0xe0)==0xa0)y=@05d7;else y=@010e;

  $)  01.模拟量
  $  01.模拟量
  $  REQ000:7C7 03 22 00 05 00 00 00 00       $  ANS000:7CF 03 22 00 05 00 00 00 00

  $  000.电源电压                   $    $  V     $    $  ANS000.BYTE004  $  y=x1*19.8/255;
  $  001.轴向调节电机行程           $    $        $    $  ANS000.BYTE009  $  if((x1*256+x2)<0x0fff) y=(x1*256+x2);else if((x1*256+x2)==0x0fff)y=@00c7;else y=@010e;
  $  002.角度调节电机行程           $    $        $    $  ANS000.BYTE011  $  if((x1*256+x2)<0x0fff) y=(x1*256+x2);else if((x1*256+x2)==0x0fff)y=@00c7;else y=@010e;
  $  003.轴向调节电机当前位置       $    $        $    $  ANS000.BYTE005  $  if((x1*256+x2)<0x0fff) y=(x1*256+x2);else if((x1*256+x2)==0x0fff)y=@00c7;else y=@010e;
  $  004.角度调节电机当前位置       $    $        $    $  ANS000.BYTE007  $  if((x1*256+x2)<0x0fff) y=(x1*256+x2);else if((x1*256+x2)==0x0fff)y=@00c7;else y=@010e;

;******************************************************************************************************************************************************

动作测试:

$^ 00.管柱角度调节操作 
$^TYPE0
$^BUTTON:上倾 
$^REQ00:7C7 05 2F 20 01 03 00 00 00     $^

$^BUTTON:下倾 
$^REQ00:7C7 05 2F 20 01 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7C7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.管柱轴向调节操作 
$^TYPE0
$^BUTTON:伸出 
$^REQ00:7C7 05 2F 20 02 03 00 00 00     $^

$^BUTTON:缩回 
$^REQ00:7C7 05 2F 20 02 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7C7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:7C7 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
