
    车型ID：a21f

    模拟：协议模拟-->a21f

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~728

进入命令:

  $~  REQ000:720 02 10 01 00 00 00 00 00       $~  ANS000:728 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:720 02 3E 01 00 00 00 00 00       $!  ANS000:728 02 3E 01 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:720 04 18 00 00 FF 00 00 00       $#  ANS000:728 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a21c0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:720 03 14 00 FF 00 00 00 00       $$  ANS000:728 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:720 03 22 00 01 00 00 00 00       $%  ANS000:728 03 22 00 01 00 00 00 00
  $%  REQ001:720 03 22 00 03 00 00 00 00       $%  ANS001:728 03 22 00 03 00 00 00 00
  $%  REQ002:720 03 22 00 02 00 00 00 00       $%  ANS002:728 03 22 00 02 00 00 00 00
  $%  REQ003:720 03 22 00 0A 00 00 00 00       $%  ANS003:728 03 22 00 0A 00 00 00 00
  $%  REQ004:720 03 22 00 20 00 00 00 00       $%  ANS004:728 03 22 00 20 00 00 00 00

  $%  000:软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%02X.%02X.%02X %d%s%d%s%d%s],x1,x2,x3,x4,@0038,x5,@0039,x6,@003a);
  $%  001:硬件号:              $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X.%02X.%02X %d%s%d%s%d%s],x1,x2,x3,x4,@0038,x5,@0039,x6,@003a);
  $%  002:序列号:              $%    $%  ANS002.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6);
  $%  003:已匹配钥匙数:        $%    $%  ANS003.BYTE004  $%  y=x1;
  $%  004:VIN:                 $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:720 03 22 00 0D 00 00 00 00       $  ANS000:728 03 22 00 0D 00 00 00 00

  $  000.读卡器供电电压       $    $       $    $  ANS000.BYTE004  $  if(x1==0x00) y=@0045;else if(x1==0xFF)y=@00af;else y=@007f;
  $  001.读卡器通讯情况       $    $       $    $  ANS000.BYTE005  $  if(x1==0x00) y=@00ac;else if(x1==0xFF)y=@0863;else y=@007f;
  $  002.读卡器内部天线       $    $       $    $  ANS000.BYTE006  $  if(x1==0x00) y=@0045;else if(x1==0xFF)y=@0862;else y=@007f;
  $  003.是否是本车钥匙       $    $       $    $  ANS000.BYTE007  $  if(x1==0x02) y=@001b;else if(x1==0x03)y=@001c; else y=@00b2;
  $  004.钥匙ID信息           $    $       $    $  ANS000.BYTE007  $  if(x1==0x02||x1==03)y=x2*16777216+x3*65536+x4*256+x5;else y=@007f;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:720 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
