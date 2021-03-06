
    车型ID：a216

    模拟：协议模拟-->a216

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~75B

进入命令:

  $~  REQ000:753 02 10 01 00 00 00 00 00       $~  ANS000:75B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:753 02 3E 80 00 00 00 00 00       $!  ANS000:75B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:753 04 18 00 00 FF 00 00 00       $#  ANS000:75B 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a2010000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:753 03 14 00 FF 00 00 00 00       $$  ANS000:75B 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:753 03 22 F1 94 00 00 00 00       $%  ANS000:75B 03 22 F1 94 00 00 00 00
  $%  REQ001:753 03 22 F1 95 00 00 00 00       $%  ANS001:75B 03 22 F1 95 00 00 00 00
  $%  REQ002:753 03 22 F1 93 00 00 00 00       $%  ANS002:75B 03 22 F1 93 00 00 00 00

  $%  000:软件类型:          $%    $%  ANS000.BYTE006  $%  if(x1==0x00)y=@0885;else if(x1==0x01)y=@0886;else y=@007f;
  $%  001:车型:              $%    $%  ANS000.BYTE007  $%  if(x1!=0x03) y=@007f;else if(x2==0xE8)y=@086f;else if(x2==0xE9)y=@0870;else if(x2==0xEA)y=@0871;else if(x2==0xEB)y=@0872;else if(x2==0xEC)y=@0873;else if(x2==0xED)y=@0874;else if(x2==0xEE)y=@0875;else if(x2==0xEF)y=@0876;else if(x2==0xF0)y=@0877;else if(x2==0xF1)y=@0878;else if(x2==0xF2)y=@0879;else if(x2==0xF3)y=@087a;else if(x2==0xF4)y=@087b;else if(x2==0xF5)y=@087c;else if(x2==0xF6)y=@087d;else if(x2==0xF7)y=@087e;else if(x2==0xF8)y=@087f;else if(x2==0xF9)y=@0880;else if(x2==0xFA)y=@0881;else if(x2==0xFB)y=@0882;else if(x2==0xFC)y=@0459;else if(x2==0xFD)y=@0883;else if(x2==0xFE)y=@0884;else if(x2==0xFF)y=@00fa;else y=@007f;
  $%  002:ECU类型:           $%    $%  ANS000.BYTE009  $%  if(x1==0x00)y=@0827;else if(x1==0x01)y=@0888;else if(x1==0x02)y=@0889;else if(x1==0x03)y=@088a;else if(x1==0x04)y=@0826;else if(x1==0x05)y=@088b;else if(x1==0x06)y=@088c;else if(x1==0x07)y=@088d;else if(x1==0x08)y=@088e;else if(x1==0x09)y=@088f;else if(x1==0x0A)y=@0890;else if(x1==0x0B)y=@0891;else if(x1==0x0C)y=@0892;else if(x1==0x0D)y=@0893;else if(x1==0x0E)y=@0894;else if(x1==0x0F)y=@0895;else if(x1==0x10)y=@0896;else if(x1==0x11)y=@0897;else if(x1==0x12)y=@0898;else if(x1==0x13)y=@0899;else if(x1==0x14)y=@089a;else if(x1==0x15)y=@089b;else if(x1==0x16)y=@089c;else if(x1==0x17)y=@089d;else if(x1==0x18)y=@089e;else if(x1==0x19)y=@089f;else if(x1==0x1A)y=@08a0;else if(x1==0x1B)y=@08a1;else if(x==0x1C) y=@08a2;else if(x==0x1D) y=@08a3;else if(x==0x1E) y=@08a4;else if(x==0x1F) y=@08a5;else if(x==0x20) y=@08a6;else if(x==0x21) y=@08a7;else if(x==0x22) y=@08a8;else if(x==0x23) y=@08a9;else if(x==0x24) y=@08aa;else if(x==0x25) y=@08ab;else if(x==0x26) y=@08ac;else y=@0005;
  $%  003:适用地区:          $%    $%  ANS000.BYTE010  $%  if(x1==0x00)y=@0887;else y=@007f;
  $%  004:扩展信息1:         $%    $%  ANS000.BYTE011  $%  if(x1==0x00)y=@0147;else y=@007f;
  $%  005:扩展信息2:         $%    $%  ANS000.BYTE010  $%  if(x1==0x00)y=@0147;else y=@007f;
  $%  006:软件版本号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  007:发布日期:          $%    $%  ANS001.BYTE007  $%  y=SPRINTF([20%02d/%02d/%02d],x1,x2,x3);
  $%  008:次数:              $%    $%  ANS001.BYTE010  $%  y=x1;
  $%  009:硬件版本号:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  010:发布日期:          $%    $%  ANS002.BYTE007  $%  y=SPRINTF([20%02d/%02d/%02d],x1,x2,x3);
  $%  011:扩展信息:          $%    $%  ANS002.BYTE010  $%  y=x1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:753 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
