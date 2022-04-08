
    车型ID：2f02

    模拟：协议模拟-->2f02

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~718

进入命令:

  $~  REQ000:710 02 10 01 00 00 00 00 00       $~  ANS000:718 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:710 02 3E 80 00 00 00 00 00       $!  ANS000:718 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:710 03 19 02 C9 00 00 00 00       $#  ANS000:718 03 19 02 C9 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/99000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:710 04 14 FF FF FF 00 00 00       $$  ANS000:718 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:710 03 22 F1 93 00 00 00 00       $%  ANS000:718 03 22 F1 93 00 00 00 00
  $%  REQ001:710 03 22 F1 94 00 00 00 00       $%  ANS001:718 03 22 F1 94 00 00 00 00
  $%  REQ002:710 03 22 F1 95 00 00 00 00       $%  ANS002:718 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:710 03 22 10 00 00 00 00 00       $  ANS000:718 03 22 10 00 00 00 00 00
  $  REQ001:710 03 22 10 02 00 00 00 00       $  ANS001:718 03 22 10 02 00 00 00 00
  $  REQ002:710 03 22 11 01 00 00 00 00       $  ANS002:718 03 22 11 01 00 00 00 00
  $  REQ003:710 03 22 11 02 00 00 00 00       $  ANS003:718 03 22 11 02 00 00 00 00
  $  REQ004:710 03 22 12 00 00 00 00 00       $  ANS004:718 03 22 12 00 00 00 00 00
  $  REQ005:710 03 22 20 01 00 00 00 00       $  ANS005:718 03 22 20 01 00 00 00 00
  $  REQ006:710 03 22 21 00 00 00 00 00       $  ANS006:718 03 22 21 00 00 00 00 00
  $  REQ007:710 03 22 21 01 00 00 00 00       $  ANS007:718 03 22 21 01 00 00 00 00
  $  REQ008:710 03 22 21 02 00 00 00 00       $  ANS008:718 03 22 21 02 00 00 00 00
  $  REQ009:710 03 22 21 06 00 00 00 00       $  ANS009:718 03 22 21 06 00 00 00 00
  $  REQ010:710 03 22 21 07 00 00 00 00       $  ANS010:718 03 22 21 07 00 00 00 00
  $  REQ011:710 03 22 21 08 00 00 00 00       $  ANS011:718 03 22 21 08 00 00 00 00
  $  REQ012:710 03 22 21 09 00 00 00 00       $  ANS012:718 03 22 21 09 00 00 00 00
  $  REQ013:710 03 22 F1 86 00 00 00 00       $  ANS013:718 03 22 F1 86 00 00 00 00

  $  000.电源电压                    $    $  V      $    $  ANS000.BYTE004  $  y=SPRINTF([%.1f],x1*0.1+3);
  $  001.打开拉起功能电路正常        $    $         $    $  ANS001.BYTE004  $  if(x1&0x01) y=@014d;else y=@014f;
  $  002.关闭拉起功能电路正常        $    $         $    $  ANS001.BYTE004  $  if(x1&0x02) y=@014d;else y=@014f;
  $  003.关闭释放功能电路正常        $    $         $    $  ANS001.BYTE004  $  if(x1&0x04) y=@014d;else y=@014f;
  $  004.打开释放功能电路正常        $    $         $    $  ANS001.BYTE004  $  if(x1&0x08) y=@014d;else y=@014f;
  $  005.供应电压电路                $    $         $    $  ANS001.BYTE004  $  if(x1&0x10) y=@014d;else y=@014f;
  $  006.电机电流                    $    $  A      $    $  ANS002.BYTE004  $  if(x1<0x80) y=SPRINTF([%.1f],(x1*256+x2)*0.1);else y=SPRINTF([%.1f],((x1-256)*256+x2)*0.1);
  $  007.ECU温度                     $    $  oC     $    $  ANS003.BYTE004  $  y=SPRINTF([%d],x1-40);
  $  008.驻车制动开关状态            $    $         $    $  ANS004.BYTE004  $  switxh(x1)0x00: y=@012a;0x01: y=@012b;0x02: y=@012c;0x03: y=@003f;default: y=@0002;
  $  009.目标拉力                    $    $  N      $    $  ANS005.BYTE004  $  y=SPRINTF([%d],x1*10);
  $  010.EPB(电子驻车系统)状态       $    $         $    $  ANS006.BYTE004  $  switxh(x1)0x00: y=@012f;0x01: y=@0130;0x02: y=@0131;0x03: y=@0132;0x04: y=@0046;default: y=@0002;
  $  011.EPB校准检测状态             $    $         $    $  ANS007.BYTE004  $  switxh(x1)0x00: y=@012d;0x01: y=@012e;default: y=@0002;
  $  012.IGN状态                     $    $         $    $  ANS008.BYTE004  $  switxh(x1)0x00: y=@0135;0x01: y=@0136;0x02: y=@0137;0x03: y=@0138;default: y=@0002;
  $  013.维修模式                    $    $         $    $  ANS009.BYTE004  $  switxh(x1)0x00: y=@003b;0x01: y=@0133;0x02: y=@0134;default: y=@0002;
  $  014.EPB电机操作有效             $    $         $    $  ANS010.BYTE004  $  switxh(x1)0x00: y=@013c;0x01: y=@013d;default: y=@0002;
  $  015.动态拉起状态                $    $         $    $  ANS011.BYTE004  $  switxh(x1)0x00: y=@012c;0x01: y=@0139;0x02: y=@013a;0x03: y=@013b;default: y=@0002;
  $  016.EPB操作模式                 $    $         $    $  ANS012.BYTE004  $  switxh(x1)0x00: y=@0140;0x01: y=@0141;default: y=@0002;
  $  017.诊断会话转换                $    $         $    $  ANS013.BYTE004  $  switxh(x1)0x01: y=@0060;0x02: y=@0546;0x03: y=@0547;default: y=@0002;

;******************************************************************************************************************************************************

动作测试:

$^ 00.元件动作测试 
$^TYPE0
$^BUTTON:无效 
$^REQ00:710 05 2F F0 20 03 00 00 00     $^

$^BUTTON:停止驱动器 
$^REQ00:710 05 2F F0 20 03 01 00 00     $^

$^BUTTON:装配位置 
$^REQ00:710 05 2F F0 20 03 02 00 00     $^

$^BUTTON:力标定 
$^REQ00:710 05 2F F0 20 03 04 00 00     $^

$^BUTTON:拉起 
$^REQ00:710 05 2F F0 20 03 08 00 00     $^

$^BUTTON:释放 
$^REQ00:710 05 2F F0 20 03 10 00 00     $^

$^BUTTON:Run-In 
$^REQ00:710 05 2F F0 20 03 20 00 00     $^

$^BUTTON:退出 
$^REQ00:710 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.电机动作测试 
$^TYPE0
$^BUTTON:无效 
$^REQ00:710 05 2F 20 01 03 00 00 00     $^

$^BUTTON:坡度标定 
$^REQ00:710 05 2F 20 01 03 01 00 00     $^

$^BUTTON:左电机拉起 
$^REQ00:710 05 2F 20 01 03 02 00 00     $^

$^BUTTON:左电机释放 
$^REQ00:710 05 2F 20 01 03 04 00 00     $^

$^BUTTON:右电机拉起 
$^REQ00:710 05 2F 20 01 03 08 00 00     $^

$^BUTTON:右电机释放 
$^REQ00:710 05 2F 20 01 03 10 00 00     $^

$^BUTTON:退出 
$^REQ00:710 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:710 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
