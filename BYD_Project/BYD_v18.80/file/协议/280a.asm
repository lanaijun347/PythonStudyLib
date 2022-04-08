
    车型ID：280a

    模拟：协议模拟-->280a

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

  $*$*DTC/7d000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:727 04 14 FF FF FF 00 00 00       $$  ANS000:72F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:727 03 22 F1 93 00 00 00 00       $%  ANS000:72F 03 22 F1 93 00 00 00 00
  $%  REQ001:727 03 22 F1 94 00 00 00 00       $%  ANS001:72F 03 22 F1 94 00 00 00 00
  $%  REQ002:727 03 22 F1 95 00 00 00 00       $%  ANS002:72F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:727 03 22 00 05 00 00 00 00       $  ANS000:72F 03 22 00 05 00 00 00 00
  $  REQ001:727 03 22 00 06 00 00 00 00       $  ANS001:72F 03 22 00 06 00 00 00 00
  $  REQ002:727 03 22 00 07 00 00 00 00       $  ANS002:72F 03 22 00 07 00 00 00 00
  $  REQ003:727 03 22 00 08 00 00 00 00       $  ANS003:72F 03 22 00 08 00 00 00 00
  $  REQ004:727 03 22 00 09 00 00 00 00       $  ANS004:72F 03 22 00 09 00 00 00 00
  $  REQ005:727 03 22 00 0B 00 00 00 00       $  ANS005:72F 03 22 00 0B 00 00 00 00
  $  REQ006:727 03 22 00 0C 00 00 00 00       $  ANS006:72F 03 22 00 0C 00 00 00 00
  $  REQ007:727 03 22 00 0D 00 00 00 00       $  ANS007:72F 03 22 00 0D 00 00 00 00
  $  REQ008:727 03 22 00 0E 00 00 00 00       $  ANS008:72F 03 22 00 0E 00 00 00 00
  $  REQ009:727 03 22 00 0F 00 00 00 00       $  ANS009:72F 03 22 00 0F 00 00 00 00
  $  REQ010:727 03 22 00 16 00 00 00 00       $  ANS010:72F 03 22 00 16 00 00 00 00
  $  REQ011:727 03 22 00 1C 00 00 00 00       $  ANS011:72F 03 22 00 1C 00 00 00 00
  $  REQ012:727 03 22 00 1D 00 00 00 00       $  ANS012:72F 03 22 00 1D 00 00 00 00
  $  REQ013:727 03 22 00 1E 00 00 00 00       $  ANS013:72F 03 22 00 1E 00 00 00 00
  $  REQ014:727 03 22 00 1F 00 00 00 00       $  ANS014:72F 03 22 00 1F 00 00 00 00
  $  REQ015:727 03 22 00 24 00 00 00 00       $  ANS015:72F 03 22 00 24 00 00 00 00
  $  REQ016:727 03 22 00 25 00 00 00 00       $  ANS016:72F 03 22 00 25 00 00 00 00
  $  REQ017:727 03 22 00 26 00 00 00 00       $  ANS017:72F 03 22 00 26 00 00 00 00
  $  REQ018:727 03 22 00 29 00 00 00 00       $  ANS018:72F 03 22 00 29 00 00 00 00
  $  REQ019:727 03 22 00 2A 00 00 00 00       $  ANS019:72F 03 22 00 2A 00 00 00 00
  $  REQ020:727 03 22 00 31 00 00 00 00       $  ANS020:72F 03 22 00 31 00 00 00 00
  $  REQ021:727 03 22 00 39 00 00 00 00       $  ANS021:72F 03 22 00 39 00 00 00 00
  $  REQ022:727 03 22 00 41 00 00 00 00       $  ANS022:72F 03 22 00 41 00 00 00 00
  $  REQ023:727 03 22 00 42 00 00 00 00       $  ANS023:72F 03 22 00 42 00 00 00 00
  $  REQ024:727 03 22 00 43 00 00 00 00       $  ANS024:72F 03 22 00 43 00 00 00 00
  $  REQ025:727 03 22 00 44 00 00 00 00       $  ANS025:72F 03 22 00 44 00 00 00 00
  $  REQ026:727 03 22 00 45 00 00 00 00       $  ANS026:72F 03 22 00 45 00 00 00 00
  $  REQ027:727 03 22 00 46 00 00 00 00       $  ANS027:72F 03 22 00 46 00 00 00 00
  $  REQ028:727 03 22 00 47 00 00 00 00       $  ANS028:72F 03 22 00 47 00 00 00 00
  $  REQ029:727 03 22 00 48 00 00 00 00       $  ANS029:72F 03 22 00 48 00 00 00 00
  $  REQ030:727 03 22 00 49 00 00 00 00       $  ANS030:72F 03 22 00 49 00 00 00 00
  $  REQ031:727 03 22 00 4A 00 00 00 00       $  ANS031:72F 03 22 00 4A 00 00 00 00
  $  REQ032:727 03 22 00 4B 00 00 00 00       $  ANS032:72F 03 22 00 4B 00 00 00 00

  $  000.风速                                 $    $  级           $    $  ANS000.BYTE004  $  y=x1;
  $  001.送风模式                             $    $               $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@002e;0x01: y=@002f;0x02: y=@0030;0x03: y=@0031;0x04: y=@0032;0x05: y=@0033;default: y=@0002;
  $  002.皮带驱动压缩机继电器状态             $    $               $    $  ANS002.BYTE004  $  if((x1==0)) y=@0047;else if((x1==1)) y=@0048;else y=@0002;
  $  003.车外温度                             $    $  degree C     $    $  ANS003.BYTE004  $  if((x1>=88)&&(x1<=178))y=x1-128;else if((x1==208)) y=@0034;else if((x1==216)) y=@0035;else y=@0002;
  $  004.车内温度                             $    $  degree C     $    $  ANS004.BYTE004  $  if((x1>=88)&&(x1<=207))y=x1-128;else if((x1==208)) y=@0034;else if((x1==216)) y=@0035;else y=@0002;
  $  005.空调请求开启皮带驱动压缩机           $    $               $    $  ANS005.BYTE004  $  switxh(x1)0x00: y=@0036;0x01: y=@0037;default: y=@0002;
  $  006.压力状态                             $    $               $    $  ANS006.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@0046;default: y=@0002;
  $  007.压力值                               $    $  MPa          $    $  ANS006.BYTE005  $  y=((x2<<8)+x1)*0.001;
  $  008.空调给出的散热风扇占空比(无级)       $    $  %            $    $  ANS007.BYTE004  $  y=x1;
  $  009.鼓风机正端继电器控制                 $    $               $    $  ANS008.BYTE004  $  switxh(x1)0x00: y=@0047;0x01: y=@0048;default: y=@0002;
  $  010.后除霜继电器控制                     $    $               $    $  ANS009.BYTE004  $  switxh(x1)0x00: y=@0047;0x01: y=@0048;default: y=@0002;
  $  011.工作电源电压                         $    $  V            $    $  ANS010.BYTE004  $  if((x1>=90)&&(x1<=159))y=x1*1.0/10;else if((x1==160)) y=@004f;else if((x1==208)) y=@0050;else y=@0002;
  $  012.主驾吹面通道温度                     $    $  degree C     $    $  ANS011.BYTE004  $  if((x1>=0)&&(x1<=140))y=x1-40;else if((x1==208)) y=@0034;else if((x1==216)) y=@0035;else y=@0002;
  $  013.主驾吹脚通道温度                     $    $  degree C     $    $  ANS012.BYTE004  $  if((x1>=0)&&(x1<=140))y=x1-40;else if((x1==208)) y=@0034;else if((x1==216)) y=@0035;else y=@0002;
  $  014.副驾吹面通道温度                     $    $  degree C     $    $  ANS013.BYTE004  $  if((x1>=0)&&(x1<=140))y=x1-40;else if((x1==208)) y=@0034;else if((x1==216)) y=@0035;else y=@0002;
  $  015.副驾吹脚通道温度                     $    $  degree C     $    $  ANS014.BYTE004  $  if((x1>=0)&&(x1<=140))y=x1-40;else if((x1==208)) y=@0034;else if((x1==216)) y=@0035;else y=@0002;
  $  016.主驾冷暖电机位置百分比               $    $  %            $    $  ANS015.BYTE004  $  y=x1;
  $  017.副驾冷暖电机位置                     $    $  %            $    $  ANS016.BYTE004  $  y=x1;
  $  018.前置模式电机位置百分比               $    $  %            $    $  ANS017.BYTE004  $  y=x1;
  $  019.除霜电机位置百分比                   $    $  %            $    $  ANS018.BYTE004  $  y=x1;
  $  020.新风循环电机位置百分比               $    $  %            $    $  ANS019.BYTE004  $  y=x1;
  $  021.蒸发器温度                           $    $  degree C     $    $  ANS020.BYTE004  $  if((x1>=0)&&(x1<=60))y=x1-20;else if((x1==208)) y=@0034;else if((x1==216)) y=@0035;else y=@0002;
  $  022.请求后除霜                           $    $               $    $  ANS021.BYTE004  $  switxh(x1)0x00: y=@0036;0x01: y=@0037;default: y=@0002;
  $  023.后风速                               $    $  级           $    $  ANS022.BYTE004  $  y=x1;
  $  024.后出风模式                           $    $               $    $  ANS023.BYTE004  $  if((x1==1)) y=@002f;else if((x1==2)) y=@03c1;else if((x1==3)) y=@0031;else y=@0002;
  $  025.后车内温度                           $    $  degree C     $    $  ANS024.BYTE004  $  if((x1>=88)&&(x1<=207))y=x1-128;else if((x1==208)) y=@0034;else if((x1==216)) y=@0035;else y=@0002;
  $  026.后吹面通道温度                       $    $  degree C     $    $  ANS025.BYTE004  $  if((x1>=0)&&(x1<=140))y=x1-40;else if((x1==208)) y=@0034;else if((x1==216)) y=@0035;else y=@0002;
  $  027.后吹脚通道温度                       $    $  %            $    $  ANS026.BYTE004  $  if((x1>=0)&&(x1<=140))y=x1-40;else if((x1==208)) y=@0034;else if((x1==216)) y=@0035;else y=@0002;
  $  028.后冷暖电机位置百分比                 $    $  %            $    $  ANS027.BYTE004  $  y=x1;
  $  029.后模式电机位置百分比                 $    $  %            $    $  ANS028.BYTE004  $  y=x1;
  $  030.玻璃温度信号                         $    $  %            $    $  ANS029.BYTE004  $  if((x1>=0)&&(x1<=200))y=x1*1.0/2;else y=@0002;
  $  031.玻璃湿度信号                         $    $  %            $    $  ANS030.BYTE004  $  if((x1>=0)&&(x1<=254))y=x1*1.0/2-40;else y=@0002;
  $  032.右侧阳光值                           $    $  w/m^2        $    $  ANS031.BYTE004  $  if((x1>=0)&&(x1<=254))y=x1*4.01575;else y=@0002;
  $  033.左侧阳光值                           $    $  w/m^2        $    $  ANS032.BYTE004  $  if((x1>=0)&&(x1<=254))y=x1*4.01575;else y=@0002;

;******************************************************************************************************************************************************

动作测试:

$^ 00.电动压缩机占空比控制测试 
$^IN  REQ00:727 02 10 01 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 40 03 XX 00 00     $^

$^DSP:电动压缩机占空比控制测试->%
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 01.PTC档位(右)测试 
$^IN  REQ00:727 02 10 01 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 42 03 XX 00 00     $^

$^DSP:PTC档位(右)测试->%
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 02.PTC档位(左)测试 
$^IN  REQ00:727 02 10 01 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 43 03 XX 00 00     $^

$^DSP:PTC档位(左)测试->%
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 03.散热风扇转速百分比(无极风扇)测试 
$^IN  REQ00:727 02 10 01 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 60 03 XX 00 00     $^

$^DSP:散热风扇转速百分比(无极风扇)测试->%
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 04.散热电子风扇运转控制(两极调速)测试 
$^IN  REQ00:727 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:停止 
$^REQ00:727 05 2F 20 61 03 00 00 00     $^

$^BUTTON:低速 
$^REQ00:727 05 2F 20 61 03 01 00 00     $^

$^BUTTON:高速 
$^REQ00:727 05 2F 20 61 03 02 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:727 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
