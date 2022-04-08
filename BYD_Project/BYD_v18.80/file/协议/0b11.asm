
    车型ID：0b11

    模拟：协议模拟-->0b11

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~718

进入命令:

  $~  REQ000:710 02 10 01 00 00 00 00 00       $~  ANS000:718 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:710 02 3E 80 00 00 00 00 00       $!  ANS000:718 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:710 03 19 01 C9 00 00 00 00       $#  ANS000:718 03 19 01 C9 00 00 00 00
  $#  REQ001:710 03 19 02 C9 00 00 00 00       $#  ANS001:718 03 19 02 C9 00 00 00 00

		控制公式：
			y=x1*256+x2;
			y=(x1<<16)+(x2<<8)+x3;

  ANS000.BYTE05-06 控制故障码个数，从$#ANS001.BYTE04$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="2"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:710 04 14 FF FF FF 00 00 00       $$  ANS000:718 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:710 03 22 F1 93 00 00 00 00       $%  ANS000:718 03 22 F1 93 00 00 00 00
  $%  REQ001:710 03 22 F1 94 00 00 00 00       $%  ANS001:718 03 22 F1 94 00 00 00 00
  $%  REQ002:710 03 22 F1 95 00 00 00 00       $%  ANS002:718 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,x1%100/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%d%s%d%s%d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1*256+x2)/10000,(x1*256+x2)%10000/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%d%s%d%s%d%s],x1,@0038,x2,@0039,x3,@003a);
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
  $  REQ013:710 03 22 22 01 00 00 00 00       $  ANS013:718 03 22 22 01 00 00 00 00
  $  REQ014:710 03 22 22 02 00 00 00 00       $  ANS014:718 03 22 22 02 00 00 00 00

  $  000.电源电压                        $    $  V            $    $  ANS000.BYTE004  $  y=x1*0.1+3.0;
  $  001.打开拉起功能电路正常            $    $               $    $  ANS001.BYTE004  $  if(x1&0x01)y=@0001;else y=@0000;
  $  002.关闭拉起功能电路正常            $    $               $    $  ANS001.BYTE004  $  if(x1&0x02)y=@0001;else y=@0000;
  $  003.关闭释放功能电路正常            $    $               $    $  ANS001.BYTE004  $  if(x1&0x04)y=@0001;else y=@0000;
  $  004.打开释放功能电路正常            $    $               $    $  ANS001.BYTE004  $  if(x1&0x08)y=@0001;else y=@0000;
  $  005.供应电压电路                    $    $               $    $  ANS001.BYTE004  $  if(x1&0x10)y=@0001;else y=@0000;
  $  006.左电机电流                      $    $  A            $    $  ANS002.BYTE004  $  y=x1*0.1;
  $  007.右电机电流                      $    $  A            $    $  ANS002.BYTE005  $  y=x1*0.1;
  $  008.ECU温度                         $    $  degree C     $    $  ANS003.BYTE004  $  y=x1-40;
  $  009.驻车制动开关状态                $    $               $    $  ANS004.BYTE004  $  if(x1==0)y=@012a;else if(x1==1)y=@012b;else if(x1==2)y=@012c;else if(x1==3)y=@003f;else y=@007f;
  $  010.目标拉力                        $    $  N            $    $  ANS005.BYTE004  $  y=x1*10;
  $  011.EPB(电子驻车)状态               $    $               $    $  ANS006.BYTE004  $  if(x1==0)y=@012f;else if(x1==1)y=@0130;else if(x1==2)y=@0131;else if(x1==3)y=@0132;else if(x1==4)y=@0046;else y=@007f;
  $  012.EPB(电子驻车)校准检测状态       $    $               $    $  ANS007.BYTE004  $  if(x1==0)y=@012d;else if(x1==1)y=@012e;else y=@007f;
  $  013.IGN状态                         $    $               $    $  ANS008.BYTE004  $  if(x1==0)y=@0135;else if(x1==1)y=@0136;else if(x1==2)y=@0137;else if(x1==3)y=@0138;else y=@007f;
  $  014.维修模式                        $    $               $    $  ANS009.BYTE004  $  if(x1==0)y=@003b;else if(x1==1)y=@03f3;else if(x1==2)y=@0134;else y=@007f;
  $  015.EPB(电子驻车)电机操作有效       $    $               $    $  ANS010.BYTE004  $  if(x1==0)y=@013c;else if(x1==1)y=@013d;else y=@007f;
  $  016.动态拉起状态                    $    $               $    $  ANS011.BYTE004  $  if(x1==0)y=@012c;else if(x1==1)y=@0139;else if(x1==2)y=@013a;else if(x1==3)y=@013b;else y=@007f;
  $  017.EPB(电子驻车)操作模式           $    $               $    $  ANS012.BYTE004  $  if(x1==0)y=@0140;else if(x1==1)y=@0141;else y=@007f;
  $  018.左最大力拉起                    $    $  次           $    $  ANS013.BYTE007  $  y=x1;
  $  019.左中力拉起                      $    $  次           $    $  ANS013.BYTE008  $  y=x1*256*256*256+x2*256*256+x3*256+x4;
  $  020.左小力拉起                      $    $  次           $    $  ANS013.BYTE012  $  y=x1*256*256*256+x2*256*256+x3*256+x4;
  $  021.右最大力拉起                    $    $  次           $    $  ANS014.BYTE007  $  y=x1;
  $  022.右中力拉起                      $    $  次           $    $  ANS014.BYTE008  $  y=x1*256*256*256+x2*256*256+x3*256+x4;
  $  023.右小力拉起                      $    $  次           $    $  ANS014.BYTE012  $  y=x1*256*256*256+x2*256*256+x3*256+x4;

;******************************************************************************************************************************************************

动作测试:

$^ 00.元件动作测试1(刹车片更换选择此菜单) 
$^TYPE0
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

$^BUTTON:EPB(电子驻车)初始化 
$^REQ00:710 05 2F F0 20 03 20 00 00     $^

$^BUTTON:退出 
$^REQ00:710 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.元件动作测试2 
$^TYPE0
$^BUTTON:坡度标定 
$^REQ00:710 02 10 03 00 00 00 00 00     $^
$^REQ01:710 05 2F 20 01 03 01 00 00     $^

$^BUTTON:左电机拉起 
$^REQ00:710 02 10 03 00 00 00 00 00     $^
$^REQ01:710 05 2F 20 01 03 02 00 00     $^

$^BUTTON:左电机释放 
$^REQ00:710 02 10 03 00 00 00 00 00     $^
$^REQ01:710 05 2F 20 01 03 04 00 00     $^

$^BUTTON:右电机拉起 
$^REQ00:710 02 10 03 00 00 00 00 00     $^
$^REQ01:710 05 2F 20 01 03 08 00 00     $^

$^BUTTON:右电机释放 
$^REQ00:710 02 10 03 00 00 00 00 00     $^
$^REQ01:710 05 2F 20 01 03 10 00 00     $^

$^BUTTON:左计数清零 
$^REQ00:710 02 10 03 00 00 00 00 00     $^
$^REQ01:710 05 2F 20 01 03 20 00 00     $^

$^BUTTON:右计数清零 
$^REQ00:710 02 10 03 00 00 00 00 00     $^
$^REQ01:710 05 2F 20 01 03 40 00 00     $^

$^BUTTON:退出 
$^REQ00:710 02 10 03 00 00 00 00 00     $^
$^REQ01:710 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:710 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
