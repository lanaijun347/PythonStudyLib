
    车型ID：2905

    模拟：协议模拟-->2905

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

  $*$*DTC/97000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:727 04 14 FF FF FF 00 00 00       $$  ANS000:72F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:727 03 22 F1 93 00 00 00 00       $%  ANS000:72F 03 22 F1 93 00 00 00 00
  $%  REQ001:727 03 22 F1 94 00 00 00 00       $%  ANS001:72F 03 22 F1 94 00 00 00 00
  $%  REQ002:727 03 22 F1 95 00 00 00 00       $%  ANS002:72F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:727 03 22 00 12 00 00 00 00       $  ANS000:72F 03 22 00 12 00 00 00 00
  $  REQ001:727 03 22 00 31 00 00 00 00       $  ANS001:72F 03 22 00 31 00 00 00 00
  $  REQ002:727 03 22 00 16 00 00 00 00       $  ANS002:72F 03 22 00 16 00 00 00 00
  $  REQ003:727 03 22 00 17 00 00 00 00       $  ANS003:72F 03 22 00 17 00 00 00 00
  $  REQ004:727 03 22 00 18 00 00 00 00       $  ANS004:72F 03 22 00 18 00 00 00 00
  $  REQ005:727 03 22 00 21 00 00 00 00       $  ANS005:72F 03 22 00 21 00 00 00 00
  $  REQ006:727 03 22 00 3B 00 00 00 00       $  ANS006:72F 03 22 00 3B 00 00 00 00
  $  REQ007:727 03 22 00 23 00 00 00 00       $  ANS007:72F 03 22 00 23 00 00 00 00
  $  REQ008:727 03 22 00 24 00 00 00 00       $  ANS008:72F 03 22 00 24 00 00 00 00
  $  REQ009:727 03 22 00 2A 00 00 00 00       $  ANS009:72F 03 22 00 2A 00 00 00 00
  $  REQ010:727 03 22 00 2B 00 00 00 00       $  ANS010:72F 03 22 00 2B 00 00 00 00
  $  REQ011:727 03 22 00 2C 00 00 00 00       $  ANS011:72F 03 22 00 2C 00 00 00 00
  $  REQ012:727 03 22 00 2D 00 00 00 00       $  ANS012:72F 03 22 00 2D 00 00 00 00
  $  REQ013:727 03 22 00 2E 00 00 00 00       $  ANS013:72F 03 22 00 2E 00 00 00 00
  $  REQ014:727 03 22 00 3F 00 00 00 00       $  ANS014:72F 03 22 00 3F 00 00 00 00
  $  REQ015:727 03 22 10 01 00 00 00 00       $  ANS015:72F 03 22 10 01 00 00 00 00
  $  REQ016:727 03 22 10 09 00 00 00 00       $  ANS016:72F 03 22 10 09 00 00 00 00
  $  REQ017:727 03 22 10 03 00 00 00 00       $  ANS017:72F 03 22 10 03 00 00 00 00
  $  REQ018:727 03 22 10 06 00 00 00 00       $  ANS018:72F 03 22 10 06 00 00 00 00
  $  REQ019:727 03 22 00 4E 00 00 00 00       $  ANS019:72F 03 22 00 4E 00 00 00 00
  $  REQ020:727 03 22 00 4D 00 00 00 00       $  ANS020:72F 03 22 00 4D 00 00 00 00
  $  REQ021:727 03 22 00 4C 00 00 00 00       $  ANS021:72F 03 22 00 4C 00 00 00 00

  $  000.空调两档风扇档位需求                        $    $               $    $  ANS000.BYTE004  $  switxh(x1)0x00: y=@0000;0x01: y=@004b;0x02: y=@004c;default: y=@0002;
  $  001.蒸发器温度                                  $    $  degree C     $    $  ANS001.BYTE004  $  if((x1>=0)&&(x1<=60))y=x1-20;else if((x1==208)) y=@0034;else if((x1==216)) y=@0035;else y=@0002;
  $  002.工作电源电压                                $    $  V            $    $  ANS002.BYTE004  $  if((x1>=90)&&(x1<=159))y=x1*1.0/10;else if((x1==160))y=@0002;else if((x1==208))y=@0002;else y=@0002;
  $  003.电动压缩机状态                              $    $               $    $  ANS003.BYTE004  $  switxh(x1)0x00: y=@0036;0x01: y=@0037;default: y=@0002;
  $  004.电机压缩机占空比                            $    $  %            $    $  ANS003.BYTE005  $  y=x1;
  $  005.BMS(电池管理系统)允许空调开启高压模块       $    $               $    $  ANS004.BYTE004  $  switxh(x1)0x00: y=@002e;0x01: y=@004d;0x02: y=@004e;default: y=@0002;
  $  006.空调采暖电动水泵继电器控制                  $    $               $    $  ANS005.BYTE004  $  switxh(x1)0x00: y=@0047;0x01: y=@0048;default: y=@0002;
  $  007.PTC水加热器占空比                           $    $  %            $    $  ANS006.BYTE004  $  y=x1;
  $  008.空调高压模块状态                            $    $               $    $  ANS007.BYTE004  $  switxh(x1)0x00: y=@01e1;0x01: y=@01e2;0x02: y=@04b1;0x03: y=@01e4;default: y=@0002;
  $  009.主驾冷暖电机位置百分比                      $    $  %            $    $  ANS008.BYTE004  $  y=x1;
  $  010.新风循环电机位置百分比                      $    $  %            $    $  ANS009.BYTE004  $  y=x1;
  $  011.蒸发器端电子膨胀阀位置                      $    $  %            $    $  ANS010.BYTE004  $  y=x1;
  $  012.蒸发器出口冷媒温度                          $    $  degree C     $    $  ANS011.BYTE004  $  if((((x2<<8)+x1)>=0)&&(((x2<<8)+x1)<=800))y=(((x2<<8)+x1))*1.0/10;else if((((x2<<8)+x1)>=65136)&&(((x2<<8)+x1)<=65535))y=((((x2<<8)+x1))-65536)*1.0/10;else if((((x2<<8)+x1)==32764)) y=@0002;else if((((x2<<8)+x1)==32765)) y=@0002;else y=@0002;
  $  013.蒸发器出口压力                              $    $               $    $  ANS012.BYTE004  $  y=((x2<<8)+x1)*0.001;
  $  014.蒸发器出口冷媒过热度                        $    $  degree C     $    $  ANS013.BYTE004  $  if(x2<0x80)y=((x2<<8)+x1)*0.1;else y=(((x2-256)<<8)+x1)*0.1;
  $  015.电池热管理需求                              $    $               $    $  ANS014.BYTE004  $  if((x1==0)) y=@0283;else if((x1==1)) y=@0490;else if((x1==2)) y=@0491;else if((x1==3)) y=@049a;else if((x1==4)) y=@049b;else if((x1==5)) y=@049c;else if((x1==6)) y=@0492;else if((x1==7)) y=@01e0;else y=@0002;
  $  016.电池冷却系统开启状态                        $    $               $    $  ANS015.BYTE004  $  if((x1==0)) y=@0000;else if((x1==1)) y=@01de;else if((x1==2)) y=@01df;else if((x1==3)) y=@01e0;else y=@0002;
  $  017.板换端电子膨胀阀位置                        $    $  %            $    $  ANS016.BYTE004  $  if((x1>=0)&&(x1<=100)) y=x1;else if((x1==255)) y=@0797;else y=@0002;
  $  018.板换出口侧冷却液温度信息                    $    $  degree C     $    $  ANS017.BYTE004  $  if((x1>=0)&&(x1<=90))y=x1-20;else if((x1==208)) y=@0034;else if((x1==216)) y=@0035;else y=@0002;
  $  019.热管理水泵启停命令                          $    $               $    $  ANS018.BYTE004  $  if((x1==0)) y=@0049;else if((x1==1)) y=@004a;else y=@0002;
  $  020.空调发送的电池热管理电动水泵占空比          $    $  %            $    $  ANS019.BYTE004  $  y=x1;
  $  021.电池热管理电动水泵反馈转速                  $    $  rpm          $    $  ANS020.BYTE004  $  y=x1*100;
  $  022.热管理水泵启停命令_1                        $    $               $    $  ANS021.BYTE004  $  if((x1==0)) y=@0049;else if((x1==1)) y=@004a;else y=@0002;

;******************************************************************************************************************************************************

动作测试:

$^ 00.PTC档位控制 
$^IN  REQ00:727 02 10 01 00 00 00 00 00     $^IN  

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

$^ 01.电动压缩机档位控制测试 
$^IN  REQ00:727 02 10 01 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 40 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:电动压缩机档位控制测试
$^TIP:请输入测试值(范围:0~7) 
$^IN_F:y=x1;
$^RANGE:0,7
;----------------------------------------------------------------------------------------------------

$^ 02.空调采暖水泵继电器 
$^IN  REQ00:727 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:断开 
$^REQ00:727 05 2F 30 05 03 00 00 00     $^

$^BUTTON:吸合 
$^REQ00:727 05 2F 30 05 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.热管理电动水泵控制 
$^IN  REQ00:727 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:断开 
$^REQ00:727 05 2F 30 01 03 00 00 00     $^

$^BUTTON:吸合 
$^REQ00:727 05 2F 30 01 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.电池热管理电动水泵转速控制信号 
$^IN  REQ00:727 02 10 01 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 30 04 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:电池热管理电动水泵转速控制信号->%
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 05.蒸发器端电子膨胀阀开度百分比测试 
$^IN  REQ00:727 02 10 01 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 24 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:蒸发器端电子膨胀阀开度百分比测试->%
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 06.热管理板换端器端电子膨胀阀开度百分比测试 
$^IN  REQ00:727 02 10 01 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 30 03 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:热管理板换端器端电子膨胀阀开度百分比测试->%
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 07.散热电子风扇运转控制 
$^IN  REQ00:727 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:停止 
$^REQ00:727 05 2F 20 61 03 00 00 00     $^

$^BUTTON:低速 
$^REQ00:727 05 2F 20 61 03 01 00 00     $^

$^BUTTON:高速 
$^REQ00:727 05 2F 20 61 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:727 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
