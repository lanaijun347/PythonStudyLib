
    车型ID：1b12

    模拟：协议模拟-->1b12

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~72F

进入命令:

  $~  REQ000:727 02 10 01 00 00 00 00 00       $~  ANS000:72F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:727 02 3E 80 00 00 00 00 00       $!  ANS000:72F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:727 04 18 00 00 FF 00 00 00       $#  ANS000:72F 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/1b000000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:727 03 14 00 FF 00 00 00 00       $$  ANS000:72F 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:727 03 22 00 01 00 00 00 00       $%  ANS000:72F 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=x1*0.1;
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=x1*0.1;
  $%  002:版本日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:727 03 22 00 05 00 00 00 00       $  ANS000:72F 03 22 00 05 00 00 00 00
  $  REQ001:727 03 22 00 06 00 00 00 00       $  ANS001:72F 03 22 00 06 00 00 00 00
  $  REQ002:727 03 22 00 08 00 00 00 00       $  ANS002:72F 03 22 00 08 00 00 00 00
  $  REQ003:727 03 22 00 09 00 00 00 00       $  ANS003:72F 03 22 00 09 00 00 00 00
  $  REQ004:727 03 22 00 0A 00 00 00 00       $  ANS004:72F 03 22 00 0A 00 00 00 00
  $  REQ005:727 03 22 00 0C 00 00 00 00       $  ANS005:72F 03 22 00 0C 00 00 00 00
  $  REQ006:727 03 22 00 0D 00 00 00 00       $  ANS006:72F 03 22 00 0D 00 00 00 00
  $  REQ007:727 03 22 00 10 00 00 00 00       $  ANS007:72F 03 22 00 10 00 00 00 00
  $  REQ008:727 03 22 00 13 00 00 00 00       $  ANS008:72F 03 22 00 13 00 00 00 00
  $  REQ009:727 03 22 00 14 00 00 00 00       $  ANS009:72F 03 22 00 14 00 00 00 00
  $  REQ010:727 03 22 00 16 00 00 00 00       $  ANS010:72F 03 22 00 16 00 00 00 00
  $  REQ011:727 03 22 00 17 00 00 00 00       $  ANS011:72F 03 22 00 17 00 00 00 00
  $  REQ012:727 03 22 00 18 00 00 00 00       $  ANS012:72F 03 22 00 18 00 00 00 00

  $  000.风速                                 $    $  级           $    $  ANS000.BYTE004  $  y=x1;
  $  001.送风模式                             $    $               $    $  ANS001.BYTE004  $  if(x1==0x00)y=@002e;else if(x1==0x01)y=@002f;else if(x1==0x02)y=@0030;else if(x1==0x03)y=@0031;else if(x1==0x04)y=@0032;else if(x1==0x05)y=@0033;else y=@0002;
  $  002.车外温度                             $    $  degree C     $    $  ANS002.BYTE004  $  if(((x1-128) > 0-41) && ((x1-128) <51)) y=x1-128;else if(x1==0xD0) y=@0034;else if(x1==0xD8) y=@0035;else y=@0002;
  $  003.车内温度                             $    $  degree C     $    $  ANS003.BYTE004  $  if(((x1-128) > 0-41) && ((x1-128) <80)) y=x1-128;else if(x1==0xD0) y=@0034;else if(x1==0xD8) y=@0035;else y=@0002;
  $  004.蒸发器温度                           $    $  degree C     $    $  ANS004.BYTE004  $  if( x1<=25) y=x1;else if(x1==0xD0) y=@0034;else if(x1==0xD8) y=@0035;else y=@0002;
  $  005.压力状态                             $    $               $    $  ANS005.BYTE004  $  if(x1==0x00)y=@0045;else if(x1==0x01)y=@0046;else y=@0002;
  $  006.压力值                               $    $  MPa          $    $  ANS005.BYTE005  $  y=(x1+x2*256)*0.01;
  $  007.空调给出的散热风扇占空比(无极)       $    $  %            $    $  ANS006.BYTE004  $  y=x1;
  $  008.主驾通道温度                         $    $  degree C     $    $  ANS007.BYTE004  $  if((x1-40)<101) y=x1-40;else y=@0002;
  $  009.电池放电允许信号                     $    $               $    $  ANS008.BYTE004  $  if(x1==0x00)y=@004d;else if(x1==0x01)y=@004e;else y=@0002;
  $  010.主驾PTC状态                          $    $               $    $  ANS009.BYTE004  $  if(x1==0x00)y=@0049;else if(x1==0x01)y=@004a;else y=@0002;
  $  011.主驾PTC占空比                        $    $  %            $    $  ANS009.BYTE005  $  y=x1;
  $  012.IG2电压                              $    $  V            $    $  ANS010.BYTE004  $  if((x1>=0x5A)&&(x1<0xA0)) y=x1*0.1;else y=@0002;
  $  013.电动压缩机状态                       $    $               $    $  ANS011.BYTE004  $  if(x1==0x00)y=@0036;else if(x1==0x01)y=@0037;else y=@0002;
  $  014.电动压缩机占空比                     $    $  %            $    $  ANS011.BYTE005  $  y=x1;
  $  015.允许开启电动压缩机                   $    $               $    $  ANS012.BYTE004  $  if(x1==0x00)y=@002e;else if(x1==0x01)y=@004d;else if(x1==0x02)y=@004e;else y=@0002;

;******************************************************************************************************************************************************

动作测试:

$^ 00.主驾驶冷暖电机旋转控制 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 01 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:主驾驶冷暖电机旋转控制->度
$^TIP:请输入测试值(范围:50~200) 
$^IN_F:y=x1;
$^RANGE:50,200
;----------------------------------------------------------------------------------------------------

$^ 01.副驾驶冷暖电机旋转控制 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 02 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:副驾驶冷暖电机旋转控制->度
$^TIP:请输入测试值(范围:50~200) 
$^IN_F:y=x1;
$^RANGE:50,200
;----------------------------------------------------------------------------------------------------

$^ 02.出风模式电机旋转控制 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 06 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:出风模式电机旋转控制->度
$^TIP:请输入测试值(范围:50~200) 
$^IN_F:y=x1;
$^RANGE:50,200
;----------------------------------------------------------------------------------------------------

$^ 03.新风循环电机旋转控制 
$^TYPE0
$^BUTTON:外循环 
$^REQ00:727 05 2F 20 0D 03 00 00 00     $^

$^BUTTON:内循环 
$^REQ00:727 05 2F 20 0D 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.鼓风机电机电压控制 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 0F 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:鼓风机电机电压控制
$^TIP:请输入测试值(范围:50~200) 
$^IN_F:y=x1;
$^RANGE:50,200
;----------------------------------------------------------------------------------------------------

$^ 05.空调请求信号控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:727 05 2F 20 10 03 01 00 00     $^

$^BUTTON:关闭 
$^REQ00:727 05 2F 20 10 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.主驾驶冷暖电机旋转控制 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 31 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:主驾驶冷暖电机旋转控制->度
$^TIP:请输入测试值(范围:17~33) 
$^IN_F:y=x1;
$^RANGE:17,33
;----------------------------------------------------------------------------------------------------

$^ 07.出风模式控制 
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

$^ 08.风速档位控制 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 3F 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:风速档位控制->档
$^TIP:请输入测试值(范围:0~7) 
$^IN_F:y=x1;
$^RANGE:0,7
;----------------------------------------------------------------------------------------------------

$^ 09.电动压缩机控制 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 40 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:电动压缩机控制
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

$^ 10.机械压缩机控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:727 05 2F 20 41 03 01 00 00     $^

$^BUTTON:关闭 
$^REQ00:727 05 2F 20 41 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:727 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
