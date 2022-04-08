
    车型ID：2d17

    模拟：协议模拟-->2d17

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

  $*$*DTC/48000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:727 04 14 FF FF FF 00 00 00       $$  ANS000:72F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:727 03 22 F1 93 00 00 00 00       $%  ANS000:72F 03 22 F1 93 00 00 00 00
  $%  REQ001:727 03 22 F1 94 00 00 00 00       $%  ANS001:72F 03 22 F1 94 00 00 00 00
  $%  REQ002:727 03 22 F1 95 00 00 00 00       $%  ANS002:72F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:727 03 22 00 05 00 00 00 00       $  ANS000:72F 03 22 00 05 00 00 00 00
  $  REQ001:727 03 22 00 06 00 00 00 00       $  ANS001:72F 03 22 00 06 00 00 00 00
  $  REQ002:727 03 22 00 08 00 00 00 00       $  ANS002:72F 03 22 00 08 00 00 00 00
  $  REQ003:727 03 22 00 09 00 00 00 00       $  ANS003:72F 03 22 00 09 00 00 00 00
  $  REQ004:727 03 22 00 0C 00 00 00 00       $  ANS004:72F 03 22 00 0C 00 00 00 00
  $  REQ005:727 03 22 00 0D 00 00 00 00       $  ANS005:72F 03 22 00 0D 00 00 00 00
  $  REQ006:727 03 22 00 0E 00 00 00 00       $  ANS006:72F 03 22 00 0E 00 00 00 00
  $  REQ007:727 03 22 00 0F 00 00 00 00       $  ANS007:72F 03 22 00 0F 00 00 00 00
  $  REQ008:727 03 22 00 14 00 00 00 00       $  ANS008:72F 03 22 00 14 00 00 00 00
  $  REQ009:727 03 22 00 16 00 00 00 00       $  ANS009:72F 03 22 00 16 00 00 00 00
  $  REQ010:727 03 22 00 17 00 00 00 00       $  ANS010:72F 03 22 00 17 00 00 00 00
  $  REQ011:727 03 22 00 18 00 00 00 00       $  ANS011:72F 03 22 00 18 00 00 00 00
  $  REQ012:727 03 22 00 1C 00 00 00 00       $  ANS012:72F 03 22 00 1C 00 00 00 00
  $  REQ013:727 03 22 00 1D 00 00 00 00       $  ANS013:72F 03 22 00 1D 00 00 00 00
  $  REQ014:727 03 22 00 21 00 00 00 00       $  ANS014:72F 03 22 00 21 00 00 00 00
  $  REQ015:727 03 22 00 22 00 00 00 00       $  ANS015:72F 03 22 00 22 00 00 00 00
  $  REQ016:727 03 22 00 23 00 00 00 00       $  ANS016:72F 03 22 00 23 00 00 00 00
  $  REQ017:727 03 22 00 24 00 00 00 00       $  ANS017:72F 03 22 00 24 00 00 00 00
  $  REQ018:727 03 22 00 26 00 00 00 00       $  ANS018:72F 03 22 00 26 00 00 00 00
  $  REQ019:727 03 22 00 29 00 00 00 00       $  ANS019:72F 03 22 00 29 00 00 00 00
  $  REQ020:727 03 22 00 2A 00 00 00 00       $  ANS020:72F 03 22 00 2A 00 00 00 00
  $  REQ021:727 03 22 00 2B 00 00 00 00       $  ANS021:72F 03 22 00 2B 00 00 00 00
  $  REQ022:727 03 22 00 2C 00 00 00 00       $  ANS022:72F 03 22 00 2C 00 00 00 00
  $  REQ023:727 03 22 00 2D 00 00 00 00       $  ANS023:72F 03 22 00 2D 00 00 00 00
  $  REQ024:727 03 22 00 2E 00 00 00 00       $  ANS024:72F 03 22 00 2E 00 00 00 00
  $  REQ025:727 03 22 00 31 00 00 00 00       $  ANS025:72F 03 22 00 31 00 00 00 00

  $  000.风速                                   $    $  级      $    $  ANS000.BYTE004  $  y=x1;
  $  001.送风模式                               $    $          $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@002e;0x01: y=@002f;0x02: y=@0030;0x03: y=@0031;0x04: y=@0032;0x05: y=@0033;default: y=@0002;
  $  002.车外温度                               $    $  ℃      $    $  ANS002.BYTE004  $  if((x1>=88)&&(x1<=178)) y=x1-128;else if(x1==208) y=@0034;else if(x1==216) y=@0035;else y=@0002;
  $  003.车内温度                               $    $  ℃      $    $  ANS003.BYTE004  $  if((x1>=88)&&(x1<=207)) y=x1-128;else if(x1==208) y=@0034;else if(x1==216) y=@0035;else y=@0002;
  $  004.压力状态                               $    $          $    $  ANS004.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@0046;default: y=@0002;
  $  005.压力值                                 $    $  MPa     $    $  ANS004.BYTE005  $  y=SPRINTF([%.2f],(x2*256+x1)/100);
  $  006.空调给出的散热风扇占空比（无极）       $    $  %       $    $  ANS005.BYTE004  $  y=x1;
  $  007.鼓风机正端继电器控制                   $    $          $    $  ANS006.BYTE004  $  switxh(x1)0x00: y=@0047;0x01: y=@0048;default: y=@0002;
  $  008.后除霜继电器控制                       $    $          $    $  ANS007.BYTE004  $  switxh(x1)0x00: y=@0047;0x01: y=@0048;default: y=@0002;
  $  009.主驾PTC状态                            $    $          $    $  ANS008.BYTE004  $  switxh(x1)0x00: y=@0049;0x01: y=@004a;default: y=@0002;
  $  010.主驾PTC占空比                          $    $  %       $    $  ANS008.BYTE005  $  y=x1;
  $  011.IG2电压                                $    $  V       $    $  ANS009.BYTE004  $  if((x1>=90)&&(x1<=159)) y=SPRINTF([%.1f],x1/10);else y=@0002;
  $  012.电动压缩机状态                         $    $          $    $  ANS010.BYTE004  $  switxh(x1)0x00: y=@0036;0x01: y=@0037;default: y=@0002;
  $  013.电机压缩机占空比                       $    $  %       $    $  ANS010.BYTE005  $  y=x1;
  $  014.整车允许开启电动压缩机状态             $    $          $    $  ANS011.BYTE004  $  switxh(x1)0x00: y=@002e;0x01: y=@004d;0x02: y=@004e;default: y=@0002;
  $  015.主驾吹面通道温度                       $    $  ℃      $    $  ANS012.BYTE004  $  if((x1>=0)&&(x1<=140)) y=x1-40;else if(x1==208) y=@0034;else if(x1==216) y=@0035;else if(x1==255) y=@003f;else y=@0002;
  $  016.主驾吹脚通道温度                       $    $  ℃      $    $  ANS013.BYTE004  $  if((x1>=0)&&(x1<=140)) y=x1-40;else if(x1==208) y=@0034;else if(x1==216) y=@0035;else if(x1==255) y=@003f;else y=@0002;
  $  017.水泵继电器控制                         $    $          $    $  ANS014.BYTE004  $  switxh(x1)0x00: y=@0047;0x01: y=@0048;default: y=@0002;
  $  018.净化继电器控制                         $    $          $    $  ANS015.BYTE004  $  switxh(x1)0x00: y=@0047;0x01: y=@0048;default: y=@0002;
  $  019.空调高压模块状态                       $    $          $    $  ANS016.BYTE004  $  switxh(x1)0x00: y=@01e1;0x01: y=@01e2;0x02: y=@04b1;0x03: y=@01e4;default: y=@0002;
  $  020.主驾冷暖电机位置百分比                 $    $  %       $    $  ANS017.BYTE004  $  y=x1;
  $  021.前置模式电机位置百分比                 $    $  %       $    $  ANS018.BYTE004  $  y=x1;
  $  022.除霜电机(左)位置百分比                 $    $  %       $    $  ANS019.BYTE004  $  y=x1;
  $  023.新风循环电机位置百分比                 $    $  %       $    $  ANS020.BYTE004  $  y=x1;
  $  024.电子膨胀阀1位置百分比                  $    $  %       $    $  ANS021.BYTE004  $  y=x1;
  $  025.蒸发器出口冷媒温度                     $    $  ℃      $    $  ANS022.BYTE004  $  if(((x2*256+x1)>=0)&&((x2*256+x1)<=800)) y=SPRINTF([%.1f],(x2*256+x1)/10);else if(((x2*256+x1)>=65136)&&((x2*256+x1)<=65535)) y=SPRINTF([%.1f%.1f],(x2*256+x1)/10,((x2*256+x1)-65536)/10);else y=@0002;
  $  026.蒸发器出口压力                         $    $          $    $  ANS023.BYTE004  $  y=(x2*256+x1)*0.001;
  $  027.蒸发器出口冷媒过热度                   $    $  ℃      $    $  ANS024.BYTE004  $  if(x1<0x80) y=SPRINTF([%d],(x2*256+x1)*0.1);else y=SPRINTF([%d],((x2-256)*256+x1)*0.1);
  $  028.蒸发器温度                             $    $  ℃      $    $  ANS025.BYTE004  $  if((x1>=0)&&(x1<=60)) y=x1-20;else if(x1==208) y=@0034;else if(x1==216) y=@0035;else y=@0002;

;******************************************************************************************************************************************************

动作测试:

$^ 00.后除霜请求信号测试 
$^TYPE0
$^BUTTON:不请求 
$^REQ00:727 05 2F 20 14 03 00 00 00     $^

$^BUTTON:请求 
$^REQ00:727 05 2F 20 14 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.主冷暖电机位置百分比测试 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 1D 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:主冷暖电机位置百分比测试
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 02.前置模式电机位置百分比测试 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 1F 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:前置模式电机位置百分比测试
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 03.除霜电机（左）位置百分比 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 22 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:除霜电机（左）位置百分比
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 04.新风循环电机位置百分比 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 23 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:新风循环电机位置百分比
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 05.电子膨胀阀开度百分比 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 24 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:电子膨胀阀开度百分比
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 06.循环模式控制 
$^TYPE0
$^BUTTON:外循环 
$^REQ00:727 05 2F 20 0D 03 00 00 00     $^

$^BUTTON:内循环 
$^REQ00:727 05 2F 20 0D 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.鼓风机电机调压档位 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 0F 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:鼓风机电机调压档位
$^TIP:请输入测试值(范围:50~200) 
$^IN_F:y=x1;
$^RANGE:50,200
;----------------------------------------------------------------------------------------------------

$^ 08.主驾驶冷暖电机档位测试 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 31 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:主驾驶冷暖电机档位测试
$^TIP:请输入测试值(范围:17~33) 
$^IN_F:y=x1;
$^RANGE:17,33
;----------------------------------------------------------------------------------------------------

$^ 09.出风模式（左）测试 
$^TYPE0
$^BUTTON:吹面 
$^REQ00:727 05 2F 20 36 03 01 00 00     $^

$^BUTTON:吹面吹脚 
$^REQ00:727 05 2F 20 36 03 02 00 00     $^

$^BUTTON:吹脚 
$^REQ00:727 05 2F 20 36 03 03 00 00     $^

$^BUTTON:吹脚除霜 
$^REQ00:727 05 2F 20 36 03 04 00 00     $^

$^BUTTON:退出 
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 10.（前）风速档位测试 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 3F 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:（前）风速档位测试
$^TIP:请输入测试值(范围:0~7) 
$^IN_F:y=x1;
$^RANGE:0,7
;----------------------------------------------------------------------------------------------------

$^ 11.电动压缩机档位控制测试 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 40 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:电动压缩机档位控制测试
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 12.PTC档位控制 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 43 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:PTC档位控制
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 13.鼓风机继电器控制 
$^TYPE0
$^BUTTON:断开 
$^REQ00:727 05 2F 20 52 03 00 00 00     $^

$^BUTTON:吸合 
$^REQ00:727 05 2F 20 52 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 14.净化空气继电器控制 
$^TYPE0
$^BUTTON:断开 
$^REQ00:727 05 2F 20 54 03 00 00 00     $^

$^BUTTON:吸合 
$^REQ00:727 05 2F 20 54 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 15.水泵继电器控制 
$^TYPE0
$^BUTTON:断开 
$^REQ00:727 05 2F 20 55 03 00 00 00     $^

$^BUTTON:吸合 
$^REQ00:727 05 2F 20 55 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 16.散热风扇转速百分比（无极）测试 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 60 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:散热风扇转速百分比（无极）测试
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:727 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
