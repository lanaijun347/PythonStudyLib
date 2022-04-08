
    车型ID：291e

    模拟：协议模拟-->291e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~76A

进入命令:

  $~  REQ000:762 02 10 01 00 00 00 00 00       $~  ANS000:76A 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:762 02 3E 80 00 00 00 00 00       $!  ANS000:76A 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:762 03 19 02 09 00 00 00 00       $#  ANS000:76A 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:762 04 14 FF FF FF 00 00 00       $$  ANS000:76A 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:762 03 22 F1 93 00 00 00 00       $%  ANS000:76A 03 22 F1 93 00 00 00 00
  $%  REQ001:762 03 22 F1 94 00 00 00 00       $%  ANS001:76A 03 22 F1 94 00 00 00 00
  $%  REQ002:762 03 22 F1 95 00 00 00 00       $%  ANS002:76A 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:762 03 22 00 04 00 00 00 00       $  ANS000:76A 03 22 00 04 00 00 00 00
  $  REQ001:762 03 22 00 05 00 00 00 00       $  ANS001:76A 03 22 00 05 00 00 00 00
  $  REQ002:762 03 22 00 06 00 00 00 00       $  ANS002:76A 03 22 00 06 00 00 00 00
  $  REQ003:762 03 22 00 07 00 00 00 00       $  ANS003:76A 03 22 00 07 00 00 00 00
  $  REQ004:762 03 22 00 0A 00 00 00 00       $  ANS004:76A 03 22 00 0A 00 00 00 00
  $  REQ005:762 03 22 00 0C 00 00 00 00       $  ANS005:76A 03 22 00 0C 00 00 00 00
  $  REQ006:762 03 22 00 0D 00 00 00 00       $  ANS006:76A 03 22 00 0D 00 00 00 00
  $  REQ007:762 03 22 00 0E 00 00 00 00       $  ANS007:76A 03 22 00 0E 00 00 00 00
  $  REQ008:762 03 22 00 0F 00 00 00 00       $  ANS008:76A 03 22 00 0F 00 00 00 00
  $  REQ009:762 03 22 00 10 00 00 00 00       $  ANS009:76A 03 22 00 10 00 00 00 00
  $  REQ010:762 03 22 00 12 00 00 00 00       $  ANS010:76A 03 22 00 12 00 00 00 00
  $  REQ011:762 03 22 00 13 00 00 00 00       $  ANS011:76A 03 22 00 13 00 00 00 00
  $  REQ012:762 03 22 00 14 00 00 00 00       $  ANS012:76A 03 22 00 14 00 00 00 00

  $  000.充电是否允许              $    $               $    $  ANS000.BYTE004  $  switxh(x1)0x00: y=@004d;0x01: y=@004e;default: y=@0002;
  $  001.放电是否允许              $    $               $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@004d;0x01: y=@004e;default: y=@0002;
  $  002.铁电池故障报警            $    $               $    $  ANS002.BYTE004  $  switxh(x1)0x00: y=@010c;0x01: y=@010d;default: y=@0002;
  $  003.SOC过低请求充电命令       $    $               $    $  ANS003.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@0117;default: y=@0002;
  $  004.充放电状态                $    $               $    $  ANS004.BYTE004  $  switxh(x1)0x00: y=@0115;0x01: y=@0116;default: y=@0002;
  $  005.总电压                    $    $  V            $    $  ANS005.BYTE004  $  y=x1*1.0/10;
  $  006.1号单体电压               $    $  V            $    $  ANS006.BYTE004  $  y=x1*0.1;
  $  007.2号单体电压               $    $  V            $    $  ANS007.BYTE004  $  y=x1*0.1;
  $  008.3号单体电压               $    $  V            $    $  ANS008.BYTE004  $  y=x1*0.1;
  $  009.4号单体电压               $    $  V            $    $  ANS009.BYTE004  $  y=x1*0.1;
  $  010.平均温度                  $    $  degree C     $    $  ANS010.BYTE004  $  y=x1-60;
  $  011.负极柱温度                $    $  degree C     $    $  ANS011.BYTE004  $  y=x1-60;
  $  012.MOS温度                   $    $  degree C     $    $  ANS012.BYTE004  $  y=x1-60;

;******************************************************************************************************************************************************

动作测试:

$^ 00.启动铁电池智能充电功能 
$^IN  REQ00:762 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:启动电池智能充电功能 
$^REQ00:762 05 2F 20 01 03 01 00 00     $^

$^BUTTON:正常 
$^REQ00:762 05 2F 20 01 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:762 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.启动铁电池整车超低功耗功能(整车会掉电谨慎操作) 
$^IN  REQ00:762 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:进入超低功耗 
$^REQ00:762 05 2F 20 02 03 01 00 00     $^

$^BUTTON:正常 
$^REQ00:762 05 2F 20 02 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:762 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.启动铁电池故障报警 
$^IN  REQ00:762 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:故障报警 
$^REQ00:762 05 2F 20 03 03 01 00 00     $^

$^BUTTON:正常 
$^REQ00:762 05 2F 20 03 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:762 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:762 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
