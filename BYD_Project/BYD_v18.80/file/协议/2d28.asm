
    车型ID：2d28

    模拟：协议模拟-->2d28

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7CF

进入命令:

  $~  REQ000:7C7 02 10 01 00 00 00 00 00       $~  ANS000:7CF 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7C7 02 3E 80 00 00 00 00 00       $!  ANS000:7CF 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7C7 03 19 02 09 00 00 00 00       $#  ANS000:7CF 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/56000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7C7 04 14 FF FF FF 00 00 00       $$  ANS000:7CF 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7C7 03 22 F1 93 00 00 00 00       $%  ANS000:7CF 03 22 F1 93 00 00 00 00
  $%  REQ001:7C7 03 22 F1 94 00 00 00 00       $%  ANS001:7CF 03 22 F1 94 00 00 00 00
  $%  REQ002:7C7 03 22 F1 95 00 00 00 00       $%  ANS002:7CF 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7C7 03 22 00 04 00 00 00 00       $  ANS000:7CF 03 22 00 04 00 00 00 00
  $  REQ001:7C7 03 22 00 05 00 00 00 00       $  ANS001:7CF 03 22 00 05 00 00 00 00

  $  000.管柱上倾                           $    $        $    $  ANS000.BYTE004  $  if(x1&0x01) y=@014d;else y=@014f;
  $  001.管柱下倾                           $    $        $    $  ANS000.BYTE004  $  if(x1&0x02) y=@014d;else y=@014f;
  $  002.管柱伸出                           $    $        $    $  ANS000.BYTE004  $  if(x1&0x04) y=@014d;else y=@014f;
  $  003.管柱缩回                           $    $        $    $  ANS000.BYTE004  $  if(x1&0x08) y=@014d;else y=@014f;
  $  004.电动管柱系统状态                   $    $        $    $  ANS000.BYTE004  $  if(x1&0x30) y=@00b4;else y=@0045;
  $  005.电动管柱工作状态                   $    $        $    $  ANS000.BYTE004  $  switxh(x1&0xE0)0x20: y=@0150;0x40: y=@0151;0x60: y=@0152;0x80: y=@01ce;0xA0: y=@0154;default: y=@0002;
  $  006.电源档位状态                       $    $        $    $  ANS000.BYTE005  $  switxh(x1&0x03)0x00: y=@014d;0x01: y=@014e;0x02: y=@014f;default: y=@0002;
  $  007.电源电压                           $    $  V     $    $  ANS001.BYTE004  $  y=SPRINTF([%.1f],x1*0.078);
  $  008.电动管柱轴向调节电机当前位置       $    $        $    $  ANS001.BYTE005  $  y=(x1*256+x2);
  $  009.电动管柱角度调节电机当前位置       $    $        $    $  ANS001.BYTE007  $  y=(x1*256+x2);
  $  010.电动管柱轴向调节电机行程           $    $        $    $  ANS001.BYTE009  $  y=(x1*256+x2);
  $  011.电动管柱角度调节电机行程           $    $        $    $  ANS001.BYTE011  $  y=(x1*256+x2);
  $  012.管住轴向电机循环次数               $    $        $    $  ANS001.BYTE013  $  if(((x1*256+x2)>=0)&&((x1*256+x2)<=30000)) y=(x1*256+x2);else y=@0002;
  $  013.管柱角度电机循环次数               $    $        $    $  ANS001.BYTE015  $  if(((x1*256+x2)>=0)&&((x1*256+x2)<=30000)) y=(x1*256+x2);else y=@0002;
  $  014.方向盘上倾开关调节次数             $    $        $    $  ANS001.BYTE017  $  if(((x1*256+x2)>=0)&&((x1*256+x2)<=30000)) y=(x1*256+x2);else y=@0002;
  $  015.方向盘下倾开关调节次数             $    $        $    $  ANS001.BYTE019  $  if(((x1*256+x2)>=0)&&((x1*256+x2)<=30000)) y=(x1*256+x2);else y=@0002;
  $  016.方向盘回缩开关调节次数             $    $        $    $  ANS001.BYTE021  $  if(((x1*256+x2)>=0)&&((x1*256+x2)<=30000)) y=(x1*256+x2);else y=@0002;
  $  017.方向盘伸出开关调节次数             $    $        $    $  ANS001.BYTE023  $  if(((x1*256+x2)>=0)&&((x1*256+x2)<=30000)) y=(x1*256+x2);else y=@0002;

;******************************************************************************************************************************************************

动作测试:

$^ 00.转向轴管柱上下角度调节测试 
$^TYPE0
$^BUTTON:上倾 
$^REQ00:7C7 05 2F 20 01 03 00 00 00     $^

$^BUTTON:下倾 
$^REQ00:7C7 05 2F 20 01 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7C7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.转向轴管柱伸出缩回调节测试 
$^TYPE0
$^BUTTON:伸出 
$^REQ00:7C7 05 2F 20 02 03 00 00 00     $^

$^BUTTON:缩回 
$^REQ00:7C7 05 2F 20 02 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:7C7 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:7C7 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
