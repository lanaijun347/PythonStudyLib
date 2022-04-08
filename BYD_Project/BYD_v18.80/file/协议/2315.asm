
    车型ID：2315

    模拟：协议模拟-->2315

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~78F

进入命令:

  $~  REQ000:787 02 10 01 00 00 00 00 00       $~  ANS000:78F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:787 02 3E 80 00 00 00 00 00       $!  ANS000:78F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:787 05 18 00 FF FF FF 00 00       $#  ANS000:78F 05 18 00 FF FF FF 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/ce0c0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:787 04 14 FF FF FF 00 00 00       $$  ANS000:78F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:787 03 22 00 01 00 00 00 00       $%  ANS000:78F 03 22 00 01 00 00 00 00
  $%  REQ001:787 03 22 00 03 00 00 00 00       $%  ANS001:78F 03 22 00 03 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x3,x2,x1);
  $%  001:软件版本:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],x3,x2,x1);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:787 03 22 00 04 00 00 00 00       $  ANS000:78F 03 22 00 04 00 00 00 00
  $  REQ001:787 03 22 00 05 00 00 00 00       $  ANS001:78F 03 22 00 05 00 00 00 00
  $  REQ002:787 03 22 00 06 00 00 00 00       $  ANS002:78F 03 22 00 06 00 00 00 00
  $  REQ003:787 03 22 00 07 00 00 00 00       $  ANS003:78F 03 22 00 07 00 00 00 00
  $  REQ004:787 03 22 00 08 00 00 00 00       $  ANS004:78F 03 22 00 08 00 00 00 00

  $  000.故障监测标志位           $    $       $    $  ANS000.BYTE004  $  switxh(x1)0x00: y=@010e;0x01: y=@011e;0x02: y=@011f;0x03: y=@0120;0x04: y=@0121;0x05: y=@0122;0x06: y=@0123;default: y=@0002;
  $  001.巡航按键故障标志位       $    $       $    $  ANS001.BYTE004  $  switxh(x1)0x01: y=@0378;0x02: y=@0379;default: y=@0002;
  $  002.故障检测标志位           $    $       $    $  ANS002.BYTE004  $  switxh(x1)0x00: y=@010e;0x01: y=@011e;0x02: y=@011f;0x03: y=@0120;0x04: y=@0121;0x05: y=@0122;0x06: y=@0123;default: y=@0002;
  $  003.故障监测持续判断         $    $       $    $  ANS003.BYTE004  $  switxh(x1)0x00: y=@010e;0x01: y=@0125;0x02: y=@0126;0x03: y=@0127;0x04: y=@0128;default: y=@0002;
  $  004.自身识别档位信号         $    $       $    $  ANS004.BYTE004  $  switxh(x1)0x00: y=@0124;0x01: y=@00d7;0x02: y=@0071;0x03: y=@0072;0x04: y=@00d8;default: y=@0002;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:787 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
