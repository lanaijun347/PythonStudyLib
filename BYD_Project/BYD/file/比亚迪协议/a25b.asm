
    车型ID：a25b

    模拟：协议模拟-->a25b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:731 02 10 01 00 00 00 00 00       $~  ANS000:739 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:731 02 3E 01 00 00 00 00 00       $!  ANS000:739 02 3E 01 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:731 04 18 00 00 FF 00 00 00       $#  ANS000:739 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a25b0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:731 03 14 00 FF 00 00 00 00       $$  ANS000:739 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:731 03 22 00 01 00 00 00 00       $%  ANS000:739 03 22 00 01 00 00 00 00
  $%  REQ001:731 03 22 00 03 00 00 00 00       $%  ANS001:739 03 22 00 03 00 00 00 00
  $%  REQ002:731 03 22 00 02 00 00 00 00       $%  ANS002:739 03 22 00 02 00 00 00 00

  $%  000:软件版本:          $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  001:软件日期:          $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  002:硬件版本:          $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  003:硬件日期:          $%    $%  ANS001.BYTE007  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  004:产品序列号:        $%    $%  ANS002.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:731 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
