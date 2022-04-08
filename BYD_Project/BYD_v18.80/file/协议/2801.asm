
    车型ID：2801

    模拟：协议模拟-->2801

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~70F

进入命令:

  $~  REQ000:707 02 10 01 00 00 00 00 00       $~  ANS000:70F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:707 02 3E 80 00 00 00 00 00       $!  ANS000:70F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:707 03 19 02 09 00 00 00 00       $#  ANS000:70F 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/78000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:707 04 14 FF FF FF 00 00 00       $$  ANS000:70F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:707 03 22 F1 93 00 00 00 00       $%  ANS000:70F 03 22 F1 93 00 00 00 00
  $%  REQ001:707 03 22 F1 94 00 00 00 00       $%  ANS001:70F 03 22 F1 94 00 00 00 00
  $%  REQ002:707 03 22 F1 95 00 00 00 00       $%  ANS002:70F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:707 03 22 00 05 00 00 00 00       $  ANS000:70F 03 22 00 05 00 00 00 00
  $  REQ001:707 03 22 00 06 00 00 00 00       $  ANS001:70F 03 22 00 06 00 00 00 00
  $  REQ002:707 03 22 00 07 00 00 00 00       $  ANS002:70F 03 22 00 07 00 00 00 00

  $  000.系统状态               $    $        $    $  ANS000.BYTE004  $  if(x1&0x01) y=@00b4;else y=@0045;
  $  001.冷凝风扇工作状态       $    $        $    $  ANS000.BYTE004  $  if(x1&0x02) y=@022e;else y=@003e;
  $  002.冷却风扇工作状态       $    $        $    $  ANS000.BYTE004  $  if(x1&0x04) y=@022e;else y=@003e;
  $  003.电源电压               $    $  V     $    $  ANS001.BYTE004  $  y=x1*0.078125;
  $  004.占空比信号             $    $  %     $    $  ANS002.BYTE004  $  y=x1;

;******************************************************************************************************************************************************

动作测试:

$^ 00.输入占空比 
$^IN  REQ00:707 02 10 01 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:707 05 2F 20 01 03 XX 00 00     $^

$^BUTTON:退出
$^REQ00:707 04 2F FF 00 00 00 00 00     $^

$^DSP:输入占空比->%
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:707 30 01 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
