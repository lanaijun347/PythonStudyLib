
    车型ID：a11e

    模拟：协议模拟-->a11e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~72B

进入命令:

  $~  REQ000:723 02 10 01 00 00 00 00 00       $~  ANS000:72B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:723 02 3E 01 00 00 00 00 00       $!  ANS000:72B 02 3E 01 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:723 04 18 00 00 FF 00 00 00       $#  ANS000:72B 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/0a000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:723 03 14 00 FF 00 00 00 00       $$  ANS000:72B 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:723 03 22 00 01 00 00 00 00       $%  ANS000:72B 03 22 00 01 00 00 00 00

  $%  000:软件号:          $%    $%  ANS000.BYTE004  $%  y=x1/10.0;
  $%  001:硬件号:          $%    $%  ANS000.BYTE005  $%  y=x1/10.0;
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  if(x1<27) y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);else y=@002e;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:723 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
