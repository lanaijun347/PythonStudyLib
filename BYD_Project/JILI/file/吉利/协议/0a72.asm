
    车型ID：0a72

    模拟：协议模拟-->0a72

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7ED

进入命令:

  $~  REQ000:7E5 02 10 81 00 00 00 00 00       $~  ANS000:7ED 02 10 81 00 00 00 00 00

空闲命令:

  $!  REQ000:7E5 01 3E 00 00 00 00 00 00       $!  ANS000:7ED 01 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E5 04 18 00 FF 00 00 00 00       $#  ANS000:7ED 04 18 00 FF 00 00 00 00

		控制公式：
			y=(x1<<8)+x2; 

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/71000000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E5 03 14 FF 00 00 00 00 00       $$  ANS000:7ED 03 14 FF 00 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E5 02 1A 8A 00 00 00 00 00       $%  ANS000:7ED 02 1A 8A 00 00 00 00 00
  $%  REQ001:7E5 02 1A 8E 00 00 00 00 00       $%  ANS001:7ED 02 1A 8E 00 00 00 00 00

  $%  000:零件号:        $%    $%  ANS000.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  001:元件号:        $%    $%  ANS001.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E5 03 22 F0 01 00 00 00 00       $  ANS000:7ED 03 22 F0 01 00 00 00 00
  $  REQ001:7E5 03 22 F0 02 00 00 00 00       $  ANS001:7ED 03 22 F0 02 00 00 00 00
  $  REQ002:7E5 03 22 F0 03 00 00 00 00       $  ANS002:7ED 03 22 F0 03 00 00 00 00

  $  000.软件号                 $    $  /     $    $  ANS000.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $  001.文件名                 $    $  /     $    $  ANS001.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $  002.制造可追溯标识符       $    $  /     $    $  ANS002.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E5 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
