
    车型ID：2300

    模拟：协议模拟-->2300

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:732 02 10 01 00 00 00 00 00       $~  ANS000:73A 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:732 02 3E 80 00 00 00 00 00       $!  ANS000:73A 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:732 04 18 00 00 FF 00 00 00       $#  ANS000:73A 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/ce060000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:732 03 14 00 FF 00 00 00 00       $$  ANS000:73A 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:732 03 22 00 01 00 00 00 00       $%  ANS000:73A 03 22 00 01 00 00 00 00

  $%  000:ECU车型系列:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d],x1&0x0F);
  $%  001:软件版本:           $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%0X.%0X],(x1&0xF0),(x1&0x0F));
  $%  002:硬件版本:           $%    $%  ANS000.BYTE008  $%  y=SPRINTF([%0X.%0X],(x1&0xF0),(x1&0x0F));
  $%  003:生产日期:           $%    $%  ANS000.BYTE009  $%  y=SPRINTF([%02X%s%02X%s%02X%s],x1,@001d,x2,@001e,x3,@001f);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:732 03 22 00 02 00 00 00 00       $  ANS000:73A 03 22 00 02 00 00 00 00
  $  REQ001:732 03 22 00 0D 00 00 00 00       $  ANS001:73A 03 22 00 0D 00 00 00 00

  $  000:车速              $    $  km/h     $    $  ANS000.BYTE008  $  y=x1;
  $  001:ECU加密信息       $    $           $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@0077;0x01: y=@0078;default: y=@001c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:732 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
