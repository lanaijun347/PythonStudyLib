
    车型ID：a28c

    模拟：协议模拟-->a28c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7F1 02 10 01 00 00 00 00 00       $~  ANS000:7F9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7F1 02 3E 01 00 00 00 00 00       $!  ANS000:7F9 02 3E 01 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7F1 04 18 00 00 FF 00 00 00       $#  ANS000:7F9 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a28c0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7F1 03 14 00 FF 00 00 00 00       $$  ANS000:7F9 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7F1 03 22 00 01 00 00 00 00       $%  ANS000:7F9 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%d/%d/%d],x1,x2,x3);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7F1 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
