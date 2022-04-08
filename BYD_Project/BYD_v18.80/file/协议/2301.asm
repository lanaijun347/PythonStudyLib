
    车型ID：2301

    模拟：协议模拟-->2301

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~76E

进入命令:

  $~  REQ000:766 02 10 01 00 00 00 00 00       $~  ANS000:76E 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:766 02 3E 80 00 00 00 00 00       $!  ANS000:76E 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:766 04 18 00 00 FF 00 00 00       $#  ANS000:76E 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/ce090000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:766 03 14 00 FF 00 00 00 00       $$  ANS000:76E 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:766 03 22 00 01 00 00 00 00       $%  ANS000:76E 03 22 00 01 00 00 00 00
  $%  REQ001:766 03 22 F1 8C 00 00 00 00       $%  ANS001:76E 03 22 F1 8C 00 00 00 00

  $%  000:软件版本:                $%    $%  ANS000.BYTE004  $%  y=x1*0.1;
  $%  001:硬件版本:                $%    $%  ANS000.BYTE005  $%  y=x1*0.1;
  $%  002:软件最后更新日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  003:PTC产品序列号:           $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X %02X %02X],x1,x2,x3);
  $%  004:生产日期:                $%    $%  ANS001.BYTE007  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:766 03 22 00 04 00 00 00 00       $  ANS000:76E 03 22 00 04 00 00 00 00
  $  REQ001:766 03 22 00 05 00 00 00 00       $  ANS001:76E 03 22 00 05 00 00 00 00
  $  REQ002:766 03 22 00 06 00 00 00 00       $  ANS002:76E 03 22 00 06 00 00 00 00
  $  REQ003:766 03 22 00 10 00 00 00 00       $  ANS003:76E 03 22 00 10 00 00 00 00
  $  REQ004:766 03 22 00 11 00 00 00 00       $  ANS004:76E 03 22 00 11 00 00 00 00

  $  000.散热片温度             $    $  degree C     $    $  ANS000.BYTE004  $  y=x1;
  $  001.PTC预置档位            $    $               $    $  ANS001.BYTE004  $  y=x1;
  $  002.PTC实际档位            $    $               $    $  ANS002.BYTE004  $  y=x1;
  $  003.IG2低压电源电压        $    $  V            $    $  ANS003.BYTE004  $  y=((x1<<8)+x2)*0.1;
  $  004.总线高压电源电压       $    $  V            $    $  ANS004.BYTE004  $  y=(x1<<8)+x2;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:766 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
