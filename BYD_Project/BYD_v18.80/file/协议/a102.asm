
    车型ID：a102

    模拟：协议模拟-->a102

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~798

进入命令:

  $~  REQ000:790 02 10 01 00 00 00 00 00       $~  ANS000:798 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:790 02 3E 01 00 00 00 00 00       $!  ANS000:798 02 3E 01 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:790 05 18 00 FF FF FF 00 00       $#  ANS000:798 05 18 00 FF FF FF 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/feff0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:790 04 14 FF FF FF 00 00 00       $$  ANS000:798 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:790 03 22 00 01 00 00 00 00       $%  ANS000:798 03 22 00 01 00 00 00 00
  $%  REQ001:790 03 22 00 03 00 00 00 00       $%  ANS001:798 03 22 00 03 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  001:软件版本:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:790 03 22 00 04 00 00 00 00       $  ANS000:798 03 22 00 04 00 00 00 00
  $  REQ001:790 03 22 00 05 00 00 00 00       $  ANS001:798 03 22 00 05 00 00 00 00
  $  REQ002:790 03 22 00 06 00 00 00 00       $  ANS002:798 03 22 00 06 00 00 00 00
  $  REQ003:790 03 22 00 07 00 00 00 00       $  ANS003:798 03 22 00 07 00 00 00 00

  $  000.P档锁定状态            $    $       $    $  ANS000.BYTE004  $  if(x1==0x00) y=@017c; else if(x1==0x01) y=@017d; else if(x1==0x02) y=@017e; else if(x1==0x03) y=@017f;else y=@0108;
  $  001.驱动管或电机故障       $    $       $    $  ANS001.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@011d; else y=@0108;
  $  002.备用霍尔信号           $    $       $    $  ANS002.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@00cf; else y=@0108;
  $  003.位置霍尔信号状况       $    $       $    $  ANS003.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@0687; else if(x1==0x02) y=@036a;else y=@0108;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:790 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
