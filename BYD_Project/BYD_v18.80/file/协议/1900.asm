
    车型ID：1900

    模拟：协议模拟-->1900

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

  $*$*DTC/feff0000_2BYTE


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
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:727 03 22 00 04 00 00 00 00       $  ANS000:72F 03 22 00 04 00 00 00 00
  $  REQ001:727 03 22 00 05 00 00 00 00       $  ANS001:72F 03 22 00 05 00 00 00 00
  $  REQ002:727 03 22 00 06 00 00 00 00       $  ANS002:72F 03 22 00 06 00 00 00 00
  $  REQ003:727 03 22 00 07 00 00 00 00       $  ANS003:72F 03 22 00 07 00 00 00 00
  $  REQ004:727 03 22 00 08 00 00 00 00       $  ANS004:72F 03 22 00 08 00 00 00 00
  $  REQ005:727 03 22 00 09 00 00 00 00       $  ANS005:72F 03 22 00 09 00 00 00 00
  $  REQ006:727 03 22 00 0A 00 00 00 00       $  ANS006:72F 03 22 00 0A 00 00 00 00
  $  REQ007:727 03 22 00 0B 00 00 00 00       $  ANS007:72F 03 22 00 0B 00 00 00 00
  $  REQ008:727 03 22 00 0C 00 00 00 00       $  ANS008:72F 03 22 00 0C 00 00 00 00

  $  000.发动机允许信号       $    $               $    $  ANS000.BYTE004  $  if(x1==0x00)y=@004d;else if(x1==0x01)y=@004e;else y=@0002;
  $  001.风速                 $    $  级           $    $  ANS001.BYTE004  $  y=x1;
  $  002.送风模式             $    $               $    $  ANS002.BYTE004  $  if(x1==0x00)y=@002e;else if(x1==0x01)y=@002f;else if(x1==0x02)y=@0030;else if(x1==0x03)y=@0031;else if(x1==0x04)y=@0032;else if(x1==0x05)y=@0033;else y=@0002;
  $  003.AC状态               $    $               $    $  ANS003.BYTE004  $  if(x1==0x00)y=@00f4;else if(x1==0x01)y=@00f5;else y=@0002;
  $  004.车外温度             $    $  degree C     $    $  ANS004.BYTE004  $  if(((x1-128) > 0-41) && ((x1-128) <51)) y=x1-128;else y=@0002;
  $  005.车内温度             $    $  degree C     $    $  ANS005.BYTE004  $  if(((x1-128) > 0-41) && ((x1-128) <80)) y=x1-128;else y=@0002;
  $  006.蒸发器温度           $    $  degree C     $    $  ANS006.BYTE004  $  y=x1;
  $  007.AC请求状态           $    $               $    $  ANS007.BYTE004  $  if(x1==0x00)y=@0037;else if(x1==0x01)y=@0036;else y=@0002;
  $  008.压力状态             $    $               $    $  ANS008.BYTE004  $  if(x1==0x00)y=@0045;else if(x1==0x01)y=@0046;else y=@0002;

;******************************************************************************************************************************************************

动作测试:

$^ 00.主驾驶冷暖电机旋转控制 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 01 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:主驾驶冷暖电机旋转控制->度
$^TIP:请输入测试值(范围:17~33) 
$^IN_F:y=x1;
$^RANGE:17,33
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

$^ 02.后置冷暖电机旋转控制(预留) 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 03 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:后置冷暖电机旋转控制(预留)->度
$^TIP:请输入测试值(范围:50~200) 
$^IN_F:y=x1;
$^RANGE:50,200
;----------------------------------------------------------------------------------------------------

$^ 03.出风模式电机旋转控制 
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

$^ 04.内外循环控制 
$^TYPE0
$^BUTTON:外循环 
$^REQ00:727 05 2F 20 0D 03 00 00 00     $^

$^BUTTON:内循环 
$^REQ00:727 05 2F 20 0D 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.鼓风机电机电压控制 
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

$^ 06.空调请求信号控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00:727 05 2F 20 10 03 01 00 00     $^

$^BUTTON:关闭 
$^REQ00:727 05 2F 20 10 03 00 00 00     $^

$^BUTTON:退出 
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.压缩机电磁离合器控制 
$^TYPE0
$^BUTTON:断开 
$^REQ00:727 05 2F 20 11 03 00 00 00     $^

$^BUTTON:吸合 
$^REQ00:727 05 2F 20 11 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 08.后除霜请求信号控制 
$^TYPE0
$^BUTTON:不请求 
$^REQ00:727 05 2F 20 14 03 00 00 00     $^

$^BUTTON:请求 
$^REQ00:727 05 2F 20 14 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 09.主驾驶冷暖电机旋转控制 
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

$^ 10.副驾驶冷暖电机旋转控制 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:727 05 2F 20 32 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:727 04 2F FF 00 00 00 00 00     $^

$^DSP:副驾驶冷暖电机旋转控制->度
$^TIP:请输入测试值(范围:17~33) 
$^IN_F:y=x1;
$^RANGE:17,33
;----------------------------------------------------------------------------------------------------

$^ 11.出风模式控制 
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

$^ 12.风速档位控制 
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

30帧:

  $FC REQ000:727 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
