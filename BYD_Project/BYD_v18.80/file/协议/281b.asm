
    车型ID：281b

    模拟：协议模拟-->281b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7BF

进入命令:

  $~  REQ000:7B7 02 10 01 00 00 00 00 00       $~  ANS000:7BF 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7B7 02 3E 80 00 00 00 00 00       $!  ANS000:7BF 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7B7 03 19 02 09 00 00 00 00       $#  ANS000:7BF 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/88000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7B7 04 14 FF FF FF 00 00 00       $$  ANS000:7BF 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7B7 03 22 F1 93 00 00 00 00       $%  ANS000:7BF 03 22 F1 93 00 00 00 00
  $%  REQ001:7B7 03 22 F1 94 00 00 00 00       $%  ANS001:7BF 03 22 F1 94 00 00 00 00
  $%  REQ002:7B7 03 22 F1 95 00 00 00 00       $%  ANS002:7BF 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7B7 03 22 01 08 00 00 00 00       $  ANS000:7BF 03 22 01 08 00 00 00 00
  $  REQ001:7B7 03 22 01 20 00 00 00 00       $  ANS001:7BF 03 22 01 20 00 00 00 00
  $  REQ002:7B7 03 22 01 21 00 00 00 00       $  ANS002:7BF 03 22 01 21 00 00 00 00

  $  000.左儿童锁闭锁状态               $    $       $    $  ANS000.BYTE004  $  if(x1&0x01) y=@0067;else y=@0068;
  $  001.右儿童锁闭锁状态               $    $       $    $  ANS000.BYTE004  $  if(x1&0x02) y=@0067;else y=@0068;
  $  002.行李箱解锁开关状态             $    $       $    $  ANS000.BYTE004  $  if(x1&0x10) y=@0093;else y=@003f;
  $  003.行李箱状态                     $    $       $    $  ANS000.BYTE004  $  if(x1&0x40) y=@0001;else y=@0000;
  $  004.行李箱灯状态                   $    $       $    $  ANS000.BYTE004  $  if(x1&0x80) y=@0001;else y=@0000;
  $  005.油箱口盖状态                   $    $       $    $  ANS000.BYTE005  $  if(x1&0x01) y=@0001;else y=@0000;
  $  006.后雨刮复位信号                 $    $       $    $  ANS000.BYTE005  $  if(x1&0x02) y=@0093;else y=@003f;
  $  007.后小灯状态                     $    $       $    $  ANS000.BYTE005  $  if(x1&0x04) y=@0001;else y=@0000;
  $  008.倒车灯状态                     $    $       $    $  ANS000.BYTE005  $  if(x1&0x08) y=@0001;else y=@0000;
  $  009.后雾灯状态                     $    $       $    $  ANS000.BYTE005  $  if(x1&0x10) y=@0001;else y=@0000;
  $  010.报警器状态                     $    $       $    $  ANS000.BYTE005  $  if(x1&0x20) y=@0001;else y=@0000;
  $  011.后除霜状态                     $    $       $    $  ANS000.BYTE005  $  if(x1&0x40) y=@0001;else y=@0000;
  $  012.后舱ACC电状态                  $    $       $    $  ANS000.BYTE005  $  if(x1&0x80) y=@0001;else y=@0000;
  $  013.后雨刮开关状态                 $    $       $    $  ANS000.BYTE006  $  if(x1&0x01) y=@0001;else y=@0000;
  $  014.后鼓风机状态                   $    $       $    $  ANS000.BYTE006  $  if(x1&0x02) y=@0001;else y=@0000;
  $  015.告警灯状态                     $    $       $    $  ANS000.BYTE007  $  switxh(x1&0x0C)0x00: y=@003f;0x04: y=@0726;0x08: y=@0727;0x0C: y=@0817;default: y=@0002;
  $  016.左转向灯开关状态               $    $       $    $  ANS000.BYTE007  $  switxh(x1&0x30)0x00: y=@003f;0x10: y=@072c;0x20: y=@072d;0x30: y=@010e;default: y=@0002;
  $  017.右转向灯开关状态               $    $       $    $  ANS000.BYTE007  $  switxh(x1&0xC0)0x00: y=@003f;0x40: y=@072c;0x80: y=@072d;0xC0: y=@010e;default: y=@0002;
  $  018.左后转向灯故障                 $    $       $    $  ANS000.BYTE008  $  if(x1&0x01) y=@0046;else y=@0045;
  $  019.右后转向灯故障                 $    $       $    $  ANS000.BYTE008  $  if(x1&0x02) y=@0046;else y=@0045;
  $  020.左后二排安全带状态             $    $       $    $  ANS000.BYTE008  $  if(x1&0x04) y=@072a;else y=@072b;
  $  021.左后二排座椅乘客有无状态       $    $       $    $  ANS000.BYTE008  $  if(x1&0x08) y=@05f1;else y=@0729;
  $  022.右后二排安全带状态             $    $       $    $  ANS000.BYTE008  $  if(x1&0x10) y=@072a;else y=@072b;
  $  023.右后二排座椅乘客有无状态       $    $       $    $  ANS000.BYTE008  $  if(x1&0x20) y=@05f1;else y=@0729;
  $  024.中后二排安全带状态             $    $       $    $  ANS000.BYTE008  $  if(x1&0x40) y=@072a;else y=@072b;
  $  025.中后二排座椅乘客有无状态       $    $       $    $  ANS000.BYTE008  $  if(x1&0x80) y=@05f1;else y=@0729;
  $  026.车型信息                       $    $       $    $  ANS000.BYTE009  $  switxh(x1)0x2B: y=@07cd;0x2C: y=@0464;0x2F: y=@05a3;0x30: y=@0467;0x36: y=@046b;default: y=@0002;
  $  027.数据标识                       $    $       $    $  ANS001.BYTE004  $  switxh(x1)0x21: y=@0093;default: y=@0002;
  $  028.接收窗控左儿童锁闭锁命令       $    $       $    $  ANS001.BYTE005  $  if(x1&0x01) y=@0818;else y=@003f;
  $  029.接收窗控右儿童锁闭锁命令       $    $       $    $  ANS001.BYTE005  $  if(x1&0x02) y=@0818;else y=@003f;
  $  030.通过IO控制左儿童锁闭锁         $    $       $    $  ANS001.BYTE005  $  if(x1&0x04) y=@0818;else y=@003f;
  $  031.通过IO控制右儿童锁闭锁         $    $       $    $  ANS001.BYTE005  $  if(x1&0x08) y=@0818;else y=@003f;
  $  032.数据索引                       $    $       $    $  ANS001.BYTE007  $  y=x1;
  $  033.儿童锁闭锁触发时间标识         $    $       $    $  ANS001.BYTE008  $  switxh(x1)0x11: y=@05d8;default: y=@0002;
  $  034.儿童锁闭锁触发时间标识_1       $    $       $    $  ANS001.BYTE008  $  switxh(x1)0x11: y=@05d8;default: y=@0002;
  $  035.月                             $    $       $    $  ANS001.BYTE009  $  if((x1==0)) y=@0002;else if((x1>=1)&&(x1<=12)) y=x1;else if((x1>=13)&&(x1<=255)) y=@0002;else y=@0002;
  $  036.日                             $    $       $    $  ANS001.BYTE010  $  if((x1==0)) y=@0002;else if((x1>=1)&&(x1<=31)) y=x1;else if((x1>=32)&&(x1<=255)) y=@0002;else y=@0002;
  $  037.时                             $    $       $    $  ANS001.BYTE011  $  if((x1>=0)&&(x1<=23)) y=x1;else if((x1>=24)&&(x1<=255)) y=@0002;else y=@0002;
  $  038.时_1                           $    $       $    $  ANS001.BYTE012  $  if((x1>=0)&&(x1<=59)) y=x1;else if((x1>=60)&&(x1<=255)) y=@0002;else y=@0002;
  $  039.数据索引_1                     $    $       $    $  ANS001.BYTE013  $  y=x1;
  $  040.数据标识_1                     $    $       $    $  ANS002.BYTE004  $  switxh(x1)0x21: y=@0093;default: y=@0002;
  $  041.接收窗控左儿童锁解锁命令       $    $       $    $  ANS002.BYTE005  $  if(x1&0x01) y=@0819;else y=@003f;
  $  042.接收窗控右儿童锁解锁命令       $    $       $    $  ANS002.BYTE005  $  if(x1&0x02) y=@0819;else y=@003f;
  $  043.通过IO控制左儿童锁解锁         $    $       $    $  ANS002.BYTE005  $  if(x1&0x04) y=@0819;else y=@003f;
  $  044.通过IO控制右儿童锁解锁         $    $       $    $  ANS002.BYTE005  $  if(x1&0x08) y=@0819;else y=@003f;
  $  045.数据索引_2                     $    $       $    $  ANS002.BYTE007  $  y=x1;
  $  046.儿童锁闭锁触发时间标识_2       $    $       $    $  ANS002.BYTE008  $  switxh(x1)0x11: y=@05d8;default: y=@0002;
  $  047.儿童锁闭锁触发时间标识_3       $    $       $    $  ANS002.BYTE008  $  switxh(x1)0x11: y=@05d8;default: y=@0002;
  $  048.月_1                           $    $       $    $  ANS002.BYTE009  $  if((x1==0)) y=@0002;else if((x1>=1)&&(x1<=12)) y=x1;else if((x1>=13)&&(x1<=255)) y=@0002;else y=@0002;
  $  049.日_1                           $    $       $    $  ANS002.BYTE010  $  if((x1==0)) y=@0002;else if((x1>=1)&&(x1<=31)) y=x1;else if((x1>=32)&&(x1<=255)) y=@0002;else y=@0002;
  $  050.时_2                           $    $       $    $  ANS002.BYTE011  $  if((x1>=0)&&(x1<=23)) y=x1;else if((x1>=24)&&(x1<=255)) y=@0002;else y=@0002;
  $  051.时_3                           $    $       $    $  ANS002.BYTE012  $  if((x1>=0)&&(x1<=59)) y=x1;else if((x1>=60)&&(x1<=255)) y=@0002;else y=@0002;
  $  052.数据索引_3                     $    $       $    $  ANS002.BYTE013  $  y=x1;

;******************************************************************************************************************************************************

动作测试:

$^ 00.左儿童锁解锁控制 
$^IN  REQ00:7B7 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:左儿童解锁 
$^REQ00:7B7 05 2F 20 01 03 01 00 00     $^

$^BUTTON:无动作 
$^REQ00:7B7 05 2F 20 01 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7B7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.左儿童锁闭锁控制 
$^IN  REQ00:7B7 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:左儿童闭锁 
$^REQ00:7B7 05 2F 20 02 03 01 00 00     $^

$^BUTTON:无动作 
$^REQ00:7B7 05 2F 20 02 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7B7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.右儿童锁解锁控制 
$^IN  REQ00:7B7 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:右儿童解锁 
$^REQ00:7B7 05 2F 20 03 03 01 00 00     $^

$^BUTTON:无动作 
$^REQ00:7B7 05 2F 20 03 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7B7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.右儿童锁闭锁控制 
$^IN  REQ00:7B7 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:右儿童闭锁 
$^REQ00:7B7 05 2F 20 04 03 01 00 00     $^

$^BUTTON:无动作 
$^REQ00:7B7 05 2F 20 04 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7B7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.行李箱开锁控制 
$^IN  REQ00:7B7 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:行李箱开锁 
$^REQ00:7B7 05 2F 20 05 03 01 00 00     $^

$^BUTTON:无动作 
$^REQ00:7B7 05 2F 20 05 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7B7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.加油口盖解锁控制 
$^IN  REQ00:7B7 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:加油口盖解锁 
$^REQ00:7B7 05 2F 20 08 03 01 00 00     $^

$^BUTTON:无动作 
$^REQ00:7B7 05 2F 20 08 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7B7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.行李箱灯控制 
$^IN  REQ00:7B7 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:点亮 
$^REQ00:7B7 05 2F 20 0A 03 01 00 00     $^

$^BUTTON:熄灭 
$^REQ00:7B7 05 2F 20 0A 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7B7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.倒车灯控制 
$^IN  REQ00:7B7 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:点亮 
$^REQ00:7B7 05 2F 20 0B 03 01 00 00     $^

$^BUTTON:熄灭 
$^REQ00:7B7 05 2F 20 0B 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7B7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 08.后雾灯控制 
$^IN  REQ00:7B7 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:点亮 
$^REQ00:7B7 05 2F 20 0C 03 01 00 00     $^

$^BUTTON:熄灭 
$^REQ00:7B7 05 2F 20 0C 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7B7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 09.后小灯控制 
$^IN  REQ00:7B7 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:点亮 
$^REQ00:7B7 05 2F 20 0D 03 01 00 00     $^

$^BUTTON:熄灭 
$^REQ00:7B7 05 2F 20 0D 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7B7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 10.报警器控制 
$^IN  REQ00:7B7 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:断开 
$^REQ00:7B7 05 2F 20 0E 03 00 00 00     $^

$^BUTTON:吸合 
$^REQ00:7B7 05 2F 20 0E 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7B7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 11.后部ACC继电器控制 
$^IN  REQ00:7B7 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:断开 
$^REQ00:7B7 05 2F 20 10 03 00 00 00     $^

$^BUTTON:吸合 
$^REQ00:7B7 05 2F 20 10 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7B7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 12.后除霜继电器控制 
$^IN  REQ00:7B7 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:断开 
$^REQ00:7B7 05 2F 20 11 03 00 00 00     $^

$^BUTTON:吸合 
$^REQ00:7B7 05 2F 20 11 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7B7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 13.后雨刮继电器控制 
$^IN  REQ00:7B7 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:断开 
$^REQ00:7B7 05 2F 20 12 03 00 00 00     $^

$^BUTTON:吸合 
$^REQ00:7B7 05 2F 20 12 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7B7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 14.后鼓风机继电器控制 
$^IN  REQ00:7B7 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:断开 
$^REQ00:7B7 05 2F 20 13 03 00 00 00     $^

$^BUTTON:吸合 
$^REQ00:7B7 05 2F 20 13 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7B7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 15.右后转向灯控制 
$^IN  REQ00:7B7 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:通电 
$^REQ00:7B7 05 2F 20 1E 03 01 00 00     $^

$^BUTTON:无动作 
$^REQ00:7B7 05 2F 20 1E 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7B7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 16.左后转向灯控制 
$^IN  REQ00:7B7 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:通电 
$^REQ00:7B7 05 2F 20 1F 03 01 00 00     $^

$^BUTTON:无动作 
$^REQ00:7B7 05 2F 20 1F 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7B7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 17.左转向灯故障信号输出 
$^IN  REQ00:7B7 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:故障输出 
$^REQ00:7B7 05 2F 20 20 03 01 00 00     $^

$^BUTTON:正常 
$^REQ00:7B7 05 2F 20 20 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7B7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 18.右转向灯故障信号输出 
$^IN  REQ00:7B7 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:故障输出 
$^REQ00:7B7 05 2F 20 21 03 01 00 00     $^

$^BUTTON:正常 
$^REQ00:7B7 05 2F 20 21 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7B7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:7B7 30 01 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
