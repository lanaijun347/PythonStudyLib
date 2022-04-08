
    车型ID：1f08

    模拟：协议模拟-->1f08

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7C8

进入命令:

  $~  REQ000:7C0 02 10 01 00 00 00 00 00       $~  ANS000:7C8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7C0 02 3E 80 00 00 00 00 00       $!  ANS000:7C8 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7C0 03 19 02 09 00 00 00 00       $#  ANS000:7C8 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7C0 04 14 FF FF FF 00 00 00       $$  ANS000:7C8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7C0 03 22 F1 93 00 00 00 00       $%  ANS000:7C8 03 22 F1 93 00 00 00 00
  $%  REQ001:7C0 03 22 F1 94 00 00 00 00       $%  ANS001:7C8 03 22 F1 94 00 00 00 00
  $%  REQ002:7C0 03 22 F1 95 00 00 00 00       $%  ANS002:7C8 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7C0 03 22 00 00 00 00 00 00       $  ANS000:7C8 03 22 00 00 00 00 00 00
  $  REQ001:7C0 03 22 00 01 00 00 00 00       $  ANS001:7C8 03 22 00 01 00 00 00 00
  $  REQ002:7C0 03 22 00 02 00 00 00 00       $  ANS002:7C8 03 22 00 02 00 00 00 00
  $  REQ003:7C0 03 22 00 03 00 00 00 00       $  ANS003:7C8 03 22 00 03 00 00 00 00
  $  REQ004:7C0 03 22 00 04 00 00 00 00       $  ANS004:7C8 03 22 00 04 00 00 00 00
  $  REQ005:7C0 03 22 00 05 00 00 00 00       $  ANS005:7C8 03 22 00 05 00 00 00 00
  $  REQ006:7C0 03 22 00 06 00 00 00 00       $  ANS006:7C8 03 22 00 06 00 00 00 00
  $  REQ007:7C0 03 22 00 07 00 00 00 00       $  ANS007:7C8 03 22 00 07 00 00 00 00
  $  REQ008:7C0 03 22 00 08 00 00 00 00       $  ANS008:7C8 03 22 00 08 00 00 00 00
  $  REQ009:7C0 03 22 00 09 00 00 00 00       $  ANS009:7C8 03 22 00 09 00 00 00 00
  $  REQ010:7C0 03 22 00 0A 00 00 00 00       $  ANS010:7C8 03 22 00 0A 00 00 00 00
  $  REQ011:7C0 03 22 00 0B 00 00 00 00       $  ANS011:7C8 03 22 00 0B 00 00 00 00
  $  REQ012:7C0 03 22 00 0C 00 00 00 00       $  ANS012:7C8 03 22 00 0C 00 00 00 00
  $  REQ013:7C0 03 22 00 0D 00 00 00 00       $  ANS013:7C8 03 22 00 0D 00 00 00 00
  $  REQ014:7C0 03 22 00 0E 00 00 00 00       $  ANS014:7C8 03 22 00 0E 00 00 00 00
  $  REQ015:7C0 03 22 00 0F 00 00 00 00       $  ANS015:7C8 03 22 00 0F 00 00 00 00
  $  REQ016:7C0 03 22 00 10 00 00 00 00       $  ANS016:7C8 03 22 00 10 00 00 00 00
  $  REQ017:7C0 03 22 00 11 00 00 00 00       $  ANS017:7C8 03 22 00 11 00 00 00 00
  $  REQ018:7C0 03 22 00 12 00 00 00 00       $  ANS018:7C8 03 22 00 12 00 00 00 00
  $  REQ019:7C0 03 22 00 13 00 00 00 00       $  ANS019:7C8 03 22 00 13 00 00 00 00
  $  REQ020:7C0 03 22 00 14 00 00 00 00       $  ANS020:7C8 03 22 00 14 00 00 00 00
  $  REQ021:7C0 03 22 00 15 00 00 00 00       $  ANS021:7C8 03 22 00 15 00 00 00 00

  $  000.后背门系统状态                 $    $        $    $  ANS000.BYTE004  $  if(x1&0x01)y=@00b4;else y=@0045;
  $  001.后背门动作状态                 $    $        $    $  ANS001.BYTE004  $  if((x1&0x03) == 0x00)y=@0001;else if((x1&0x03) == 0x01)y=@0000;else if((x1&0x03) == 0x02)y=@003e;else if((x1&0x03) == 0x03)y=@0002;
  $  002.电源档位状态                   $    $        $    $  ANS002.BYTE004  $  if((x1&0x03) == 0x00)y=@003f;else if((x1&0x03) == 0x01)y=@014f;else if((x1&0x03) == 0x02)y=@014e;else if((x1&0x03) == 0x03)y=@014d;
  $  003.遥控钥匙上后背门开关信号       $    $        $    $  ANS003.BYTE004  $  if(x1&0x01)y=@0001;else y=@0000;
  $  004.电动后背门内开关信号           $    $        $    $  ANS004.BYTE004  $  if(x1&0x01)y=@0001;else y=@0000;
  $  005.电动后背门外开关信号           $    $        $    $  ANS005.BYTE004  $  if(x1&0x01)y=@0001;else y=@0000;
  $  006.车内开关信号                   $    $        $    $  ANS006.BYTE004  $  if(x1&0x01)y=@0001;else y=@0000;
  $  007.后背门锁全锁信号               $    $        $    $  ANS007.BYTE004  $  if(x1&0x01)y=@0001;else y=@0000;
  $  008.后背门锁半锁信号               $    $        $    $  ANS008.BYTE004  $  if(x1&0x01)y=@0001;else y=@0000;
  $  009.后背门锁解锁信号               $    $        $    $  ANS009.BYTE004  $  if(x1&0x01)y=@0001;else y=@0000;
  $  010.左侧防夹条传感器信号           $    $        $    $  ANS010.BYTE004  $  if(x1&0x01)y=@0001;else y=@0000;
  $  011.右侧防夹条传感器信号           $    $        $    $  ANS011.BYTE004  $  if(x1&0x01)y=@0001;else y=@0000;
  $  012.吸合执行器动作信号             $    $        $    $  ANS012.BYTE004  $  if((x1&0x03)== 0x00)y=@015c;else if((x1&0x03) == 0x01)y=@015d;else if((x1&0x03) == 0x02)y=@003e;else if((x1&0x03) == 0x03)y=@0002;
  $  013.左侧纺锤型撑杆动作信号         $    $        $    $  ANS013.BYTE004  $  if((x1&0x03)== 0x00)y=@015c;else if((x1&0x03) == 0x01)y=@015d;else if((x1&0x03) == 0x02)y=@003e;else if((x1&0x03) == 0x03)y=@0002;
  $  014.右侧纺锤型撑杆动作信号         $    $        $    $  ANS014.BYTE004  $  if((x1&0x03)== 0x00)y=@015c;else if((x1&0x03) == 0x01)y=@015d;else if((x1&0x03) == 0x02)y=@003e;else if((x1&0x03) == 0x03)y=@0002;
  $  015.电源电压                       $    $  V     $    $  ANS015.BYTE004  $  y=x1*19.9/255;
  $  016.后背门当前位置                 $    $        $    $  ANS016.BYTE004  $  if((x1*256+x2) < 3001) y=x1*256+x2;else y=@0002;
  $  017.后背门行程                     $    $        $    $  ANS017.BYTE004  $  if((x1*256+x2) < 3001) y=x1*256+x2;else y=@0002;
  $  018.左侧撑杆当前位置               $    $        $    $  ANS018.BYTE004  $  if((x1*256+x2) < 3001) y=x1*256+x2;else y=@0002;
  $  019.左侧撑杆行程                   $    $        $    $  ANS019.BYTE004  $  if((x1*256+x2) < 3001) y=x1*256+x2;else y=@0002;
  $  020.右侧撑杆当前位置               $    $        $    $  ANS020.BYTE004  $  if((x1*256+x2) < 3001) y=x1*256+x2;else y=@0002;
  $  021.右侧撑杆行程                   $    $        $    $  ANS021.BYTE004  $  if((x1*256+x2) < 3001) y=x1*256+x2;else y=@0002;

;******************************************************************************************************************************************************

动作测试:

$^ 00.后背门开启关闭操作测试 
$^IN  REQ00:7C0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:无效 
$^REQ00:7C0 05 2F 20 01 03 00 00 00     $^

$^BUTTON:开启 
$^REQ00:7C0 05 2F 20 01 03 01 00 00     $^

$^BUTTON:悬停 
$^REQ00:7C0 05 2F 20 01 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:7C0 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.蜂鸣器鸣响测试 
$^IN  REQ00:7C0 02 10 03 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:7C0 05 2F 20 02 03 01 00 00     $^

$^BUTTON:关闭 
$^REQ00:7C0 05 2F 20 02 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:7C0 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:7C0 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
