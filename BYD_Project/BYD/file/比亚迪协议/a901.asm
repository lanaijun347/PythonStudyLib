
    车型ID：a901

    模拟：协议模拟-->a901

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:783 02 10 01 00 00 00 00 00       $~  ANS000:78B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:783 02 3E 80 00 00 00 00 00       $!  ANS000:78B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:783 03 19 01 FF 00 00 00 00       $#  ANS000:78B 03 19 01 FF 00 00 00 00
  $#  REQ001:783 03 19 02 FF 00 00 00 00       $#  ANS001:78B 03 19 02 FF 00 00 00 00

  ANS000.BYTE05-06 控制故障码个数，从$#ANS001.BYTE04$#开始每$#2$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a9010000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="2"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:783 04 14 FF FF FF 00 00 00       $$  ANS000:78B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:783 03 22 00 01 00 00 00 00       $%  ANS000:78B 03 22 00 01 00 00 00 00
  $%  REQ001:783 03 22 00 03 00 00 00 00       $%  ANS001:78B 03 22 00 03 00 00 00 00

  $%  000:软件号:          $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02X.%02X.%02X],x1,x2,x3);
  $%  001:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%d/%d/%d],x1,x2,x3);
  $%  002:硬件号:          $%    $%  ANS001.BYTE005  $%  y=SPRINTF([%02X.%02X.%02X],x1,x2,x3);
  $%  003:生产日期:        $%    $%  ANS001.BYTE007  $%  y=SPRINTF([%d/%d/%d],x1,x2,x3);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:783 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
