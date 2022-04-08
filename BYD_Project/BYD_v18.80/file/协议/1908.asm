
    车型ID：1908

    模拟：协议模拟-->1908

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~78E

进入命令:

  $~  REQ000:787 02 10 01 00 00 00 00 00       $~  ANS000:78E 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:787 02 3E 80 00 00 00 00 00       $!  ANS000:78E 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:787 05 18 00 FF FF FF 00 00       $#  ANS000:78E 05 18 00 FF FF FF 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/feff0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:787 04 14 FF FF FF 00 00 00       $$  ANS000:78E 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:787 03 22 00 01 00 00 00 00       $%  ANS000:78E 03 22 00 01 00 00 00 00
  $%  REQ001:787 03 22 00 03 00 00 00 00       $%  ANS001:78E 03 22 00 03 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  001:软件版本:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:787 03 22 00 04 00 00 00 00       $  ANS000:78E 03 22 00 04 00 00 00 00
  $  REQ001:787 03 22 00 05 00 00 00 00       $  ANS001:78E 03 22 00 05 00 00 00 00
  $  REQ002:787 03 22 00 06 00 00 00 00       $  ANS002:78E 03 22 00 06 00 00 00 00
  $  REQ003:787 03 22 00 07 00 00 00 00       $  ANS003:78E 03 22 00 07 00 00 00 00
  $  REQ004:787 03 22 00 08 00 00 00 00       $  ANS004:78E 03 22 00 08 00 00 00 00

  $  000.故障监测标志位           $    $       $    $  ANS000.BYTE004  $  if(x1==0x00)y=@010e;else if(x1==0x01)y=@011e;else if(x1==0x02)y=@011f;else if(x1==0x03)y=@0120;else if(x1==0x04)y=@0121;else if(x1==0x05)y=@0122;else if(x1==0x06)y=@0123;else y=@0002;
  $  001.巡航按键故障标志位       $    $       $    $  ANS001.BYTE004  $  if(x1==0x01)y=@0378;else if(x1==0x02)y=@0379;else y=@0002;
  $  002.故障检测标志位           $    $       $    $  ANS002.BYTE004  $  if(x1==0x00)y=@010e;else if(x1==0x01)y=@011e;else if(x1==0x02)y=@011f;else if(x1==0x03)y=@0120;else if(x1==0x04)y=@0121;else if(x1==0x05)y=@0122;else if(x1==0x06)y=@0123;else y=@0002;
  $  003.故障监测持续判断         $    $       $    $  ANS003.BYTE004  $  if(x==0x01) y=@0125; else if(x==0x02) y=@0126; else if(x==0x03)  y=@0127; else if(x==0x04)  y=@0128; else y=@0002;
  $  004.自身识别档位信号         $    $       $    $  ANS004.BYTE004  $  if(x==0x00) y=@0124; else if(x==0x01) y=@00d7; else if(x==0x02) y=@0071; else if(x==0x03) y=@0072; else if(x==0x04) y=@00d8; else y=@0002;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:787 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
