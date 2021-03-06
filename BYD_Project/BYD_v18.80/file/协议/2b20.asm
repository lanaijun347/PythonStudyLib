
    车型ID：2b20

    模拟：协议模拟-->2b20

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~70E

进入命令:

  $~  REQ000:706 02 10 01 00 00 00 00 00       $~  ANS000:70E 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:706 02 3E 80 00 00 00 00 00       $!  ANS000:70E 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:706 03 19 02 09 00 00 00 00       $#  ANS000:70E 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/e5000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:706 04 14 FF FF FF 00 00 00       $$  ANS000:70E 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:706 03 22 F1 93 00 00 00 00       $%  ANS000:70E 03 22 F1 93 00 00 00 00
  $%  REQ001:706 03 22 F1 94 00 00 00 00       $%  ANS001:70E 03 22 F1 94 00 00 00 00
  $%  REQ002:706 03 22 F1 95 00 00 00 00       $%  ANS002:70E 03 22 F1 95 00 00 00 00
  $%  REQ003:706 03 22 F1 80 00 00 00 00       $%  ANS003:70E 03 22 F1 80 00 00 00 00

  $%  000:硬件版本:            $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:            $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%d%s%02d%s%02d%s],x1+2000,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:            $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:            $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:            $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:            $%    $%  ANS002.BYTE009  $%  y=x1;
  $%  006:boot版本号:          $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%d%s%d%s%s%d],x1+2000,@0038,x2,@0521,@0522,x1);
  $%  007:boot版本信息:        $%    $%  ANS003.BYTE007  $%  y=SPRINTF([%d%d%d],x1,x2,x3);
  $%  008:发布日期:            $%    $%  ANS003.BYTE010  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:706 03 22 20 02 00 00 00 00       $  ANS000:70E 03 22 20 02 00 00 00 00
  $  REQ001:706 03 22 20 03 00 00 00 00       $  ANS001:70E 03 22 20 03 00 00 00 00
  $  REQ002:706 03 22 20 04 00 00 00 00       $  ANS002:70E 03 22 20 04 00 00 00 00
  $  REQ003:706 03 22 20 05 00 00 00 00       $  ANS003:70E 03 22 20 05 00 00 00 00
  $  REQ004:706 03 22 20 06 00 00 00 00       $  ANS004:70E 03 22 20 06 00 00 00 00
  $  REQ005:706 03 22 20 07 00 00 00 00       $  ANS005:70E 03 22 20 07 00 00 00 00
  $  REQ006:706 03 22 20 08 00 00 00 00       $  ANS006:70E 03 22 20 08 00 00 00 00
  $  REQ007:706 03 22 20 09 00 00 00 00       $  ANS007:70E 03 22 20 09 00 00 00 00
  $  REQ008:706 03 22 20 0A 00 00 00 00       $  ANS008:70E 03 22 20 0A 00 00 00 00
  $  REQ009:706 03 22 20 0B 00 00 00 00       $  ANS009:70E 03 22 20 0B 00 00 00 00
  $  REQ010:706 03 22 20 0C 00 00 00 00       $  ANS010:70E 03 22 20 0C 00 00 00 00
  $  REQ011:706 03 22 20 0D 00 00 00 00       $  ANS011:70E 03 22 20 0D 00 00 00 00

  $  000.当前炉温                     $    $  ℃      $    $  ANS000.BYTE004  $  y=SPRINTF([%d],x1-40);
  $  001.当前水温                     $    $  ℃      $    $  ANS001.BYTE004  $  y=SPRINTF([%d],x1-40);
  $  002.目标水温                     $    $  ℃      $    $  ANS002.BYTE004  $  y=SPRINTF([%d],x1-40);
  $  003.油泵频率                     $    $  HZ      $    $  ANS003.BYTE004  $  y=SPRINTF([%d],x1*0.1);
  $  004.风扇占空比                   $    $  %       $    $  ANS004.BYTE004  $  y=x1;
  $  005.风扇反馈转速                 $    $  r/m     $    $  ANS005.BYTE004  $  y=SPRINTF([%d],x1*100);
  $  006.火花塞占空比                 $    $  %       $    $  ANS006.BYTE004  $  if((x1>=1)&&(x1<=100)) y=x1;else if(x1==0) y=@003b;else y=@0002;
  $  007.锁机原因                     $    $          $    $  ANS007.BYTE004  $  switxh(x1)0x00: y=@0632;0x01: y=@0633;0x02: y=@0634;0x03: y=@0635;0x04: y=@0636;0x05: y=@0637;0x06: y=@0638;0x07: y=@0639;0x08: y=@063a;0x09: y=@063b;0x0A: y=@010e;0x0B: y=@063c;0x0C: y=@063d;0x0D: y=@063e;0x0E: y=@063f;0x0F: y=@0640;0x10: y=@0641;default: y=@0002;
  $  008.车型编号                     $    $          $    $  ANS008.BYTE004  $  if((x1*256+x2)==16) y=@0473;else if((x1*256+x2)==32) y=@0485;else if((x1*256+x2)==48) y=@0483;else if((x1*256+x2)==49) y=@0644;else if((x1*256+x2)==64) y=@0645;else y=@0002;
  $  009.自适应选择                   $    $          $    $  ANS008.BYTE006  $  if(x1==1) y=@0642;else if(x1==2) y=@0643;else y=@0002;
  $  010.出厂标定                     $    $          $    $  ANS008.BYTE006  $  if(x1==1) y=@062e;else if(x1==2) y=@062f;else y=@0002;
  $  011.波特率                       $    $  k/s     $    $  ANS008.BYTE007  $  if(x1==17) y=@062b;else if(x1==34) y=@062c;else if(x1==85) y=@062d;else y=@0002;
  $  012.异常熄火次数                 $    $          $    $  ANS009.BYTE004  $  if((x1>=1)&&(x1<=240)) y=x1;else if(x1==0) y=@003b;else y=@0002;
  $  013.自适应的高原或平原策略       $    $          $    $  ANS010.BYTE004  $  if(x1==1) y=@0630;else if(x1==2) y=@0631;else if(x1==255) y=@002e;else y=@0002;
  $  014.油位传感器电阻               $    $  Ω      $    $  ANS011.BYTE004  $  if(((x1*256+x2)>=0)&&((x1*256+x2)<=500)) y=(x1*256+x2);else if((x1*256+x2)==65535) y=@002e;else y=@0002;

;******************************************************************************************************************************************************

动作测试:

$^ 00.电热塞工作占空比控制 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:706 06 31 01 20 07 00 XX 00     $^

$^DSP:电热塞工作占空比控制
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1*1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 01.油泵工作档位控制 
$^TYPE0
$^BUTTON:1档 
$^REQ00:706 06 31 01 20 08 01 01 00     $^

$^BUTTON:2档 
$^REQ00:706 06 31 01 20 08 01 02 00     $^

$^BUTTON:3档 
$^REQ00:706 06 31 01 20 08 01 03 00     $^

$^BUTTON:4档 
$^REQ00:706 06 31 01 20 08 01 04 00     $^

$^BUTTON:5档 
$^REQ00:706 06 31 01 20 08 01 05 00     $^

$^BUTTON:6档 
$^REQ00:706 06 31 01 20 08 01 06 00     $^

$^BUTTON:7档 
$^REQ00:706 06 31 01 20 08 01 07 00     $^

$^BUTTON:8档 
$^REQ00:706 06 31 01 20 08 01 08 00     $^

$^BUTTON:9档 
$^REQ00:706 06 31 01 20 08 01 09 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.风扇工作占空比控制 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:706 06 31 01 20 09 02 XX 00     $^

$^DSP:风扇工作占空比控制
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1*1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 03.一键泵油控制 
$^TYPE0
$^BUTTON:不泵油 
$^REQ00:706 06 31 01 20 0A 04 00 00     $^

$^BUTTON:泵油 
$^REQ00:706 06 31 01 20 0A 04 01 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:706 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
