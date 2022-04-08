
    车型ID：361b

    模拟：协议模拟-->361b

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

  $*$*DTC/ae000000


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

  $  REQ000:710 03 22 FD 00 00 00 00 00       $  ANS000:718 03 22 FD 00 00 00 00 00
  $  REQ001:710 03 22 FD 10 00 00 00 00       $  ANS001:718 03 22 FD 10 00 00 00 00
  $  REQ002:710 03 22 FD 11 00 00 00 00       $  ANS002:718 03 22 FD 11 00 00 00 00
  $  REQ003:710 03 22 FD 12 00 00 00 00       $  ANS003:718 03 22 FD 12 00 00 00 00
  $  REQ004:710 03 22 FD 13 00 00 00 00       $  ANS004:718 03 22 FD 13 00 00 00 00
  $  REQ005:710 03 22 FD 14 00 00 00 00       $  ANS005:718 03 22 FD 14 00 00 00 00
  $  REQ006:710 03 22 FD 15 00 00 00 00       $  ANS006:718 03 22 FD 15 00 00 00 00
  $  REQ007:710 03 22 FD 16 00 00 00 00       $  ANS007:718 03 22 FD 16 00 00 00 00
  $  REQ008:710 03 22 FD 17 00 00 00 00       $  ANS008:718 03 22 FD 17 00 00 00 00
  $  REQ009:710 03 22 FD 18 00 00 00 00       $  ANS009:718 03 22 FD 18 00 00 00 00
  $  REQ010:710 03 22 FD 19 00 00 00 00       $  ANS010:718 03 22 FD 19 00 00 00 00
  $  REQ011:710 03 22 FD 20 00 00 00 00       $  ANS011:718 03 22 FD 20 00 00 00 00
  $  REQ012:710 03 22 FD 21 00 00 00 00       $  ANS012:718 03 22 FD 21 00 00 00 00
  $  REQ013:710 03 22 FD 22 00 00 00 00       $  ANS013:718 03 22 FD 22 00 00 00 00
  $  REQ014:710 03 22 FD 30 00 00 00 00       $  ANS014:718 03 22 FD 30 00 00 00 00
  $  REQ015:710 03 22 FD 40 00 00 00 00       $  ANS015:718 03 22 FD 40 00 00 00 00
  $  REQ016:710 03 22 FD 41 00 00 00 00       $  ANS016:718 03 22 FD 41 00 00 00 00
  $  REQ017:710 03 22 FD 50 00 00 00 00       $  ANS017:718 03 22 FD 50 00 00 00 00
  $  REQ018:710 03 22 FD 51 00 00 00 00       $  ANS018:718 03 22 FD 51 00 00 00 00
  $  REQ019:710 03 22 FD 52 00 00 00 00       $  ANS019:718 03 22 FD 52 00 00 00 00

  $  000.电源电压                                    $    $  V         $    $  ANS000.BYTE004  $  y=SPRINTF([%.1f],x1*0.1);
  $  001.左侧夹紧力                                  $    $  N         $    $  ANS001.BYTE004  $  y=SPRINTF([%d],(x1*256+x2)*10);
  $  002.右侧夹紧力                                  $    $  N         $    $  ANS002.BYTE004  $  y=SPRINTF([%d],(x1*256+x2)*10);
  $  003.左侧制动盘温度                              $    $  ℃        $    $  ANS003.BYTE004  $  y=SPRINTF([%d],(x1*256+x2)-50);
  $  004.右侧制动盘温度                              $    $  ℃        $    $  ANS004.BYTE004  $  y=SPRINTF([%d],(x1*256+x2)-50);
  $  005.左侧拉起计数                                $    $            $    $  ANS005.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  006.右侧拉起计数                                $    $            $    $  ANS006.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  007.左后轮防抱死计数                            $    $            $    $  ANS007.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  008.右后轮防抱死计数                            $    $            $    $  ANS008.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  009.左侧完全释放次数                            $    $            $    $  ANS009.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  010.右侧完全释放次数                            $    $            $    $  ANS010.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  011.左侧驻车状态                                $    $            $    $  ANS011.BYTE004  $  switxh(x1)0x00: y=@0005;0x01: y=@0006;0x02: y=@0007;0x03: y=@0008;0x04: y=@0009;0x05: y=@000a;0x06: y=@000b;default: y=@0002;
  $  012.右侧驻车状态                                $    $            $    $  ANS012.BYTE004  $  switxh(x1)0x00: y=@0005;0x01: y=@0006;0x02: y=@0007;0x03: y=@0008;0x04: y=@0009;0x05: y=@000a;0x06: y=@000b;default: y=@0002;
  $  013.EPB(电子驻车系统)开关状态                   $    $            $    $  ANS013.BYTE004  $  switxh(x1)0x00: y=@000c;0x01: y=@000d;default: y=@0002;
  $  014.车速                                        $    $  km/h      $    $  ANS014.BYTE004  $  y=SPRINTF([%.1f],(x1*256+x2)/10);
  $  015.点火开关状态                                $    $            $    $  ANS015.BYTE004  $  switxh(x1)0x00: y=@0000;0x01: y=@0001;default: y=@0002;
  $  016.ECU唤醒计数                                 $    $            $    $  ANS016.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  017.ESP(电子车身稳定系统)加速度值               $    $  m/s^2     $    $  ANS017.BYTE004  $  y=SPRINTF([%.1f],(x1*256+x2)/10-20);
  $  018.ESP(电子车身稳定系统)加速度传感器偏差       $    $  m/s^2     $    $  ANS018.BYTE004  $  y=SPRINTF([%.1f],(x1*256+x2)/10-20);
  $  019.距离上次夹紧的里程                          $    $  m         $    $  ANS019.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);

;******************************************************************************************************************************************************

动作测试:

$^ 00.维修模式释放 
$^TYPE0
$^BUTTON:执行 
$^REQ00:710 04 2F 20 00 03 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.维修模式夹紧 
$^TYPE0
$^BUTTON:执行 
$^REQ00:710 04 2F 20 01 03 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.组装检测 
$^TYPE0
$^BUTTON:执行 
$^REQ00:710 04 2F 20 02 03 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.两侧执行器同时夹紧 
$^TYPE0
$^BUTTON:执行 
$^REQ00:710 04 2F 20 04 03 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.两侧执行器同时释放 
$^TYPE0
$^BUTTON:执行 
$^REQ00:710 04 2F 20 05 03 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.右侧执行器夹紧 
$^TYPE0
$^BUTTON:执行 
$^REQ00:710 04 2F 20 06 03 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.左侧执行器夹紧 
$^TYPE0
$^BUTTON:执行 
$^REQ00:710 04 2F 20 07 03 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.右侧执行器释放 
$^TYPE0
$^BUTTON:执行 
$^REQ00:710 04 2F 20 08 03 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 08.左侧执行器释放 
$^TYPE0
$^BUTTON:执行 
$^REQ00:710 04 2F 20 09 03 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:710 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
