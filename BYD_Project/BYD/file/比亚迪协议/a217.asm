
    车型ID：a217

    模拟：协议模拟-->a217

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:767 02 10 01 00 00 00 00 00       $~  ANS000:76F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:767 02 3E 80 00 00 00 00 00       $!  ANS000:76F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:767 04 18 00 00 FF 00 00 00       $#  ANS000:76F 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a2040000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:767 03 14 00 FF 00 00 00 00       $$  ANS000:76F 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:767 03 22 F1 94 00 00 00 00       $%  ANS000:76F 03 22 F1 94 00 00 00 00
  $%  REQ001:767 03 22 F1 95 00 00 00 00       $%  ANS001:76F 03 22 F1 95 00 00 00 00
  $%  REQ002:767 03 22 F1 93 00 00 00 00       $%  ANS002:76F 03 22 F1 93 00 00 00 00

  $%  000:软件类型:          $%    $%  ANS000.BYTE006  $%  if(x1==0x00)y=@02dd;else if(x1==0x01)y=@02de;else y=@0076;
  $%  001:车型:              $%    $%  ANS000.BYTE007  $%  if(x1!=0x03) y=@0076;else if(x2==0xE8)y=@02c6;else if(x2==0xE9)y=@02c7;else if(x2==0xEA)y=@02c8;else if(x2==0xEB)y=@02c9;else if(x2==0xEC)y=@02ca;else if(x2==0xED)y=@02cb;else if(x2==0xEE)y=@02cc;else if(x2==0xEF)y=@02cd;else if(x2==0xF0)y=@02ce;else if(x2==0xF1)y=@02cf;else if(x2==0xF2)y=@02d0;else if(x2==0xF3)y=@02d1;else if(x2==0xF4)y=@02d2;else if(x2==0xF5)y=@02d3;else if(x2==0xF6)y=@02d4;else if(x2==0xF7)y=@02d5;else if(x2==0xF8)y=@02d6;else if(x2==0xF9)y=@02d7;else if(x2==0xFA)y=@02d8;else if(x2==0xFB)y=@02d9;else if(x2==0xFC)y=@02da;else if(x2==0xFD)y=@02db;else if(x2==0xFE)y=@02dc;else if(x2==0xFF)y=@0195;else y=@0076;
  $%  002:ECU类型:           $%    $%  ANS000.BYTE009  $%  if(x1==0x00)y=@029a;else if(x1==0x01)y=@029b;else if(x1==0x02)y=@029c;else if(x1==0x03)y=@029d;else if(x1==0x04)y=@029e;else if(x1==0x05)y=@029f;else if(x1==0x06)y=@02a0;else if(x1==0x07)y=@02a1;else if(x1==0x08)y=@02a2;else if(x1==0x09)y=@02a3;else if(x1==0x0A)y=@02a4;else if(x1==0x0B)y=@02a5;else if(x1==0x0C)y=@02a6;else if(x1==0x0D)y=@02a7;else if(x1==0x0E)y=@02a8;else if(x1==0x0F)y=@02a9;else if(x1==0x10)y=@02aa;else if(x1==0x11)y=@02ab;else if(x1==0x12)y=@02ac;else if(x1==0x13)y=@02ad;else if(x1==0x14)y=@02ae;else if(x1==0x15)y=@02af;else if(x1==0x16)y=@02b0;else if(x1==0x17)y=@02b1;else if(x1==0x18)y=@02b2;else if(x1==0x19)y=@02b3;else if(x1==0x1A)y=@02b4;else if(x1==0x1B)y=@02b5;else if(x==0x1C) y=@02b6;else if(x==0x1D) y=@02b7;else if(x==0x1E) y=@02b8;else if(x==0x1F) y=@02b9;else if(x==0x20) y=@02ba;else if(x==0x21) y=@02bb;else if(x==0x22) y=@02bc;else if(x==0x23) y=@02bd;else if(x==0x24) y=@02be;else if(x==0x25) y=@02bf;else if(x==0x26) y=@02c0;else y=@009a;
  $%  003:适用地区:          $%    $%  ANS000.BYTE010  $%  if(x1==0x00)y=@0299;else y=@0076;
  $%  004:扩展信息1:         $%    $%  ANS000.BYTE011  $%  if(x1==0x00)y=@002b;else y=@0076;
  $%  005:扩展信息2:         $%    $%  ANS000.BYTE010  $%  if(x1==0x00)y=@002b;else y=@0076;
  $%  006:软件版本号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  007:发布日期:          $%    $%  ANS001.BYTE007  $%  y=SPRINTF([20%02d/%02d/%02d],x1,x2,x3);
  $%  008:次数:              $%    $%  ANS001.BYTE010  $%  y=x1;
  $%  009:硬件版本号:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  010:发布日期:          $%    $%  ANS002.BYTE007  $%  y=SPRINTF([20%02d/%02d/%02d],x1,x2,x3);
  $%  011:扩展信息:          $%    $%  ANS002.BYTE010  $%  y=x1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:767 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
