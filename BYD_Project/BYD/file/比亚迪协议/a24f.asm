
    车型ID：a24f

    模拟：协议模拟-->a24f

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:726 02 10 01 00 00 00 00 00       $~  ANS000:72E 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:726 02 3E 01 00 00 00 00 00       $!  ANS000:72E 02 3E 01 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:726 04 18 00 00 FF 00 00 00       $#  ANS000:72E 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a24f0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:726 03 14 00 FF 00 00 00 00       $$  ANS000:72E 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:726 03 22 00 01 00 00 00 00       $%  ANS000:72E 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=x1/10.0;
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=x1/10.0;
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  if(x1<27) y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);else y=@0097;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:726 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
