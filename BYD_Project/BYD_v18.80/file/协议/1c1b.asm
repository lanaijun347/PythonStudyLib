
    车型ID：1c1b

    模拟：协议模拟-->1c1b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7BC

进入命令:

  $~  REQ000:7B4 02 10 01 00 00 00 00 00       $~  ANS000:7BC 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7B4 02 3E 80 00 00 00 00 00       $!  ANS000:7BC 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7B4 03 19 02 09 00 00 00 00       $#  ANS000:7BC 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7B4 04 14 FF FF FF 00 00 00       $$  ANS000:7BC 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7B4 03 22 F1 93 00 00 00 00       $%  ANS000:7BC 03 22 F1 93 00 00 00 00
  $%  REQ001:7B4 03 22 F1 94 00 00 00 00       $%  ANS001:7BC 03 22 F1 94 00 00 00 00
  $%  REQ002:7B4 03 22 F1 95 00 00 00 00       $%  ANS002:7BC 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7B4 03 22 00 04 00 00 00 00       $  ANS000:7BC 03 22 00 04 00 00 00 00
  $  REQ001:7B4 03 22 00 05 00 00 00 00       $  ANS001:7BC 03 22 00 05 00 00 00 00
  $  REQ002:7B4 03 22 00 06 00 00 00 00       $  ANS002:7BC 03 22 00 06 00 00 00 00
  $  REQ003:7B4 03 22 00 07 00 00 00 00       $  ANS003:7BC 03 22 00 07 00 00 00 00
  $  REQ004:7B4 03 22 00 08 00 00 00 00       $  ANS004:7BC 03 22 00 08 00 00 00 00
  $  REQ005:7B4 03 22 00 09 00 00 00 00       $  ANS005:7BC 03 22 00 09 00 00 00 00
  $  REQ006:7B4 03 22 00 0A 00 00 00 00       $  ANS006:7BC 03 22 00 0A 00 00 00 00
  $  REQ007:7B4 03 22 00 0B 00 00 00 00       $  ANS007:7BC 03 22 00 0B 00 00 00 00
  $  REQ008:7B4 03 22 00 0C 00 00 00 00       $  ANS008:7BC 03 22 00 0C 00 00 00 00
  $  REQ009:7B4 03 22 00 0D 00 00 00 00       $  ANS009:7BC 03 22 00 0D 00 00 00 00
  $  REQ010:7B4 03 22 00 0E 00 00 00 00       $  ANS010:7BC 03 22 00 0E 00 00 00 00
  $  REQ011:7B4 03 22 00 0F 00 00 00 00       $  ANS011:7BC 03 22 00 0F 00 00 00 00

  $  000.电池冷却系统开启状态                  $    $          $    $  ANS000.BYTE004  $  if(x1==0x00)y=@01dd;else if(x1==0x01)y=@01de;else if(x1==0x02)y=@01df;else if(x1==0x03)y=@01e0;else if(x1==0x07)y=@0000;else y=@0002;
  $  001.电池冷却副水箱液位                    $    $          $    $  ANS001.BYTE004  $  if(x1==0x00)y=@01db;else if(x1==0x01)y=@01dc;else y=@0002;
  $  002.板换出口侧冷却液温度                  $    $          $    $  ANS002.BYTE004  $  if((x2*256+x1) <41) y=(x2*256+x1);else if(((x2*256+x1)-65536) >= 0-10) y=(x2*256+x1)-65536;else y=@0002;
  $  003.板式换热器出口冷媒压力                $    $  Mpa     $    $  ANS003.BYTE004  $  if((x1*0.001+x2*0.256) <= 10) y=(x1*0.001+x2*0.256);else y=@0002;
  $  004.板式换热器出口冷媒温度                $    $          $    $  ANS004.BYTE004  $  if(((x2*256+x1)*0.1) <= 40) y=(x2*256+x1)*0.1;else if(((x2*25.6+x1*0.1)-6553.6) >= 0-10) y=(x2*25.6+x1*0.1)-6553.6;else y=@0002;
  $  005.水泵继电器状态                        $    $          $    $  ANS005.BYTE004  $  if(x1==0x00)y=@0047;else if(x1==0x01)y=@0048;else y=@0002;
  $  006.电池冷却ECU请求电动压缩机占空比       $    $  %       $    $  ANS006.BYTE004  $  y=x1;
  $  007.电磁阀状态                            $    $          $    $  ANS007.BYTE004  $  if(x1==0x00)y=@0047;else if(x1==0x01)y=@0048;else y=@0002;
  $  008.电子膨胀阀位置                        $    $  %       $    $  ANS008.BYTE004  $  if(x1 < 101) y=x1;else y=@0002;
  $  009.工作电源电压                          $    $  V       $    $  ANS009.BYTE004  $  if((x1 <= 0x9F) && (x1>=0x5A)) y=x1*0.1;else if(x1 == 0xA0) y=@004f;else if(x1 == 0xD0) y=@0050;else y=@01e5;
  $  010.板式换热器出口冷媒过热度              $    $  %       $    $  ANS010.BYTE004  $  if(((x2*256+x1)*0.1) <= 100) y=(x2*256+x1)*0.1;else if(((x2*25.6+x1*0.1)-6553.6) >= 0-100) y=(x2*25.6+x1*0.1)-6553.6;else y=@0002;
  $  011.皮带驱动压缩机请求信号                $    $          $    $  ANS011.BYTE004  $  if(x1==0x00)y=@0036;else if(x1==0x01)y=@0037;else y=@0002;

;******************************************************************************************************************************************************

动作测试:

$^ 00.水泵继电器控制测试 
$^IN  REQ00:7B4 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:断开 
$^REQ00:7B4 05 2F 20 00 03 00 00 00     $^

$^BUTTON:吸合 
$^REQ00:7B4 05 2F 20 00 03 01 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.电磁阀控制测试 
$^IN  REQ00:7B4 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:断开 
$^REQ00:7B4 05 2F 20 01 03 00 00 00     $^

$^BUTTON:吸合 
$^REQ00:7B4 05 2F 20 01 03 01 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.电子膨胀阀测试 
$^IN  REQ00:7B4 02 10 01 00 00 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7B4 06 2F 20 02 03 00 XX 00     $^

$^DSP:电子膨胀阀测试->%
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:7B4 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
