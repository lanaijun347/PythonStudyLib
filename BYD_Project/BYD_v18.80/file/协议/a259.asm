
    车型ID：a259

    模拟：协议模拟-->a259

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~73C

进入命令:

  $~  REQ000:734 02 10 01 00 00 00 00 00       $~  ANS000:73C 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:734 02 3E 01 00 00 00 00 00       $!  ANS000:73C 02 3E 01 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:734 04 18 00 00 FF 00 00 00       $#  ANS000:73C 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a2590000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:734 03 14 00 FF 00 00 00 00       $$  ANS000:73C 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:734 03 22 00 01 00 00 00 00       $%  ANS000:73C 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%d-%d-%d],x1,x2,x3);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:734 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
