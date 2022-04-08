
    车型ID：1506

    模拟：协议模拟-->1506

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7AD

进入命令:

  $~  REQ000:7A5 02 10 01 00 00 00 00 00       $~  ANS000:7AD 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A5 02 3E 80 00 00 00 00 00       $!  ANS000:7AD 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7A5 04 18 00 00 FF 00 00 00       $#  ANS000:7AD 04 18 00 00 FF 00 00 00

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

  $$  REQ000:7A5 03 14 00 FF 00 00 00 00       $$  ANS000:7AD 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A5 03 22 00 01 00 00 00 00       $%  ANS000:7AD 03 22 00 01 00 00 00 00
  $%  REQ001:7A5 03 22 00 03 00 00 00 00       $%  ANS001:7AD 03 22 00 03 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  001:软件日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:硬件版本:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  003:硬件日期:        $%    $%  ANS001.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7A5 03 22 00 04 00 00 00 00       $  ANS000:7AD 03 22 00 04 00 00 00 00
  $  REQ001:7A5 03 22 00 05 00 00 00 00       $  ANS001:7AD 03 22 00 05 00 00 00 00

  $  000.P档1号霍尔AD采集值       $    $       $    $  ANS000.BYTE004  $  y=x1;
  $  001.P档2号霍尔AD采集值       $    $       $    $  ANS000.BYTE005  $  y=x1;
  $  002.P档3号霍尔AD采集值       $    $       $    $  ANS000.BYTE006  $  y=x1;
  $  003.P档4号霍尔AD采集值       $    $       $    $  ANS000.BYTE007  $  y=x1;
  $  004.P档5号霍尔AD采集值       $    $       $    $  ANS000.BYTE008  $  y=x1;
  $  005.P档6号霍尔AD采集值       $    $       $    $  ANS000.BYTE009  $  y=x1;
  $  006.P档7号霍尔AD采集值       $    $       $    $  ANS000.BYTE010  $  y=x1;
  $  007.P档8号霍尔AD采集值       $    $       $    $  ANS000.BYTE011  $  y=x1;
  $  008.S档信号AD采集            $    $       $    $  ANS001.BYTE004  $  y=x1;
  $  009.+档信号AD采集            $    $       $    $  ANS001.BYTE005  $  y=x1;
  $  010.-档信号AD采集            $    $       $    $  ANS001.BYTE006  $  y=x1;
  $  011.ECO档信号AD采集          $    $       $    $  ANS001.BYTE007  $  y=x1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A5 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
