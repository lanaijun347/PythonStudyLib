
    车型ID：0b09

    模拟：协议模拟-->0b09

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~72B

进入命令:

  $~  REQ000:723 02 10 01 00 00 00 00 00       $~  ANS000:72B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:723 02 3E 80 00 00 00 00 00       $!  ANS000:72B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:723 04 18 00 00 FF 00 00 00       $#  ANS000:72B 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<8)+x2;

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

  $$  REQ000:723 03 14 00 FF 00 00 00 00       $$  ANS000:72B 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:723 03 22 00 01 00 00 00 00       $%  ANS000:72B 03 22 00 01 00 00 00 00
  $%  REQ001:723 03 22 00 02 00 00 00 00       $%  ANS001:72B 03 22 00 02 00 00 00 00
  $%  REQ002:723 03 22 00 03 00 00 00 00       $%  ANS002:72B 03 22 00 03 00 00 00 00

  $%  000:软件版本:               $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,x1%100/10,x1%10);
  $%  001:硬件版本:               $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%d.%d.%d],x1/100,x1%100/10,x1%10);
  $%  002:生产日期:               $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%d%s%d%s%d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  003:显示板个数:             $%    $%  ANS001.BYTE004  $%  y=x1;
  $%  004:显示板1软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,x1%100/10,x1%10);
  $%  005:显示板1硬件版本:        $%    $%  ANS002.BYTE005  $%  y=SPRINTF([%d.%d.%d],x1/100,x1%100/10,x1%10);
  $%  006:显示板1生产日期:        $%    $%  ANS002.BYTE007  $%  y=SPRINTF([%d%s%d%s%d%s],x1,@0038,x2,@0039,x3,@003a);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:723 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
