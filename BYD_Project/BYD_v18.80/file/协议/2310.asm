
    车型ID：2310

    模拟：协议模拟-->2310

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~79B

进入命令:

  $~  REQ000:793 02 10 01 00 00 00 00 00       $~  ANS000:79B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:793 02 3E 80 00 00 00 00 00       $!  ANS000:79B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:793 04 18 00 00 FF 00 00 00       $#  ANS000:79B 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:793 03 14 00 FF 00 00 00 00       $$  ANS000:79B 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:793 03 22 00 01 00 00 00 00       $%  ANS000:79B 03 22 00 01 00 00 00 00
  $%  REQ001:793 03 22 00 03 00 00 00 00       $%  ANS001:79B 03 22 00 03 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x3,x2,x1);
  $%  001:软件版本:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],x3,x2,x1);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:793 03 22 00 04 00 00 00 00       $  ANS000:79B 03 22 00 04 00 00 00 00
  $  REQ001:793 03 22 00 05 00 00 00 00       $  ANS001:79B 03 22 00 05 00 00 00 00
  $  REQ002:793 03 22 00 06 00 00 00 00       $  ANS002:79B 03 22 00 06 00 00 00 00
  $  REQ003:793 03 22 00 07 00 00 00 00       $  ANS003:79B 03 22 00 07 00 00 00 00
  $  REQ004:793 03 22 00 08 00 00 00 00       $  ANS004:79B 03 22 00 08 00 00 00 00
  $  REQ005:793 03 22 00 09 00 00 00 00       $  ANS005:79B 03 22 00 09 00 00 00 00
  $  REQ006:793 03 22 00 0A 00 00 00 00       $  ANS006:79B 03 22 00 0A 00 00 00 00

  $  000.DC_1工作状态       $    $               $    $  ANS000.BYTE004  $  switxh(x1)0x01: y=@022d;0x02: y=@022e;default: y=@0002;
  $  001.DC_1故障状态       $    $               $    $  ANS001.BYTE004  $  switxh(x1)0x01: y=@0045;0x02: y=@0046;default: y=@0002;
  $  002.输出断路故障       $    $               $    $  ANS002.BYTE004  $  switxh(x1)0x00: y=@0045;0x01: y=@0799;0x02: y=@0376;0x03: y=@0377;default: y=@0002;
  $  003.DC_1输出电流       $    $  A            $    $  ANS003.BYTE004  $  y=(x2<<8)+x1;
  $  004.DC_1输入电压       $    $  V            $    $  ANS004.BYTE004  $  y=(x2<<8)+x1;
  $  005.DC_1输出电压       $    $  V            $    $  ANS005.BYTE004  $  y=x1*1.0/10;
  $  006.DC_1温度           $    $  degree C     $    $  ANS006.BYTE004  $  y=x1-40;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:793 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
