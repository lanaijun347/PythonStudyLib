
    车型ID：1524

    模拟：协议模拟-->1524

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:792 02 10 01 00 00 00 00 00       $~  ANS000:79A 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:792 02 3E 80 00 00 00 00 00       $!  ANS000:79A 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:792 04 18 00 00 FF 00 00 00       $#  ANS000:79A 04 18 00 00 FF 00 00 00

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

  $$  REQ000:792 03 14 00 FF 00 00 00 00       $$  ANS000:79A 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:792 03 22 00 01 00 00 00 00       $%  ANS000:79A 03 22 00 01 00 00 00 00
  $%  REQ001:792 03 22 00 03 00 00 00 00       $%  ANS001:79A 03 22 00 03 00 00 00 00
  $%  REQ002:792 03 22 00 02 00 00 00 00       $%  ANS002:79A 03 22 00 02 00 00 00 00

  $%  000:主版本:          $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  001:软件日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:硬件日期:        $%    $%  ANS001.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  003:序列号:          $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%02X %02X %02X %02X %02X %02X],x1,x2,x3,x4,x5,x6);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:792 03 22 01 07 00 00 00 00       $  ANS000:79A 03 22 01 07 00 00 00 00

  $  000:IG1电       $    $       $    $  ANS000.BYTE004  $  if(x1&0x01) y=@02f4;else y=@02f3;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:792 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
