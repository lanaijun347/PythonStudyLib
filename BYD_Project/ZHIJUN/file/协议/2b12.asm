
    车型ID：2b12

    模拟：协议模拟-->2b12

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A8

进入命令:

  $~  REQ000:7A0 02 10 03 00 00 00 00 00       $~  ANS000:7A8 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:7A0 02 3E 00 00 00 00 00 00       $!  ANS000:7A8 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7A0 03 19 02 09 00 00 00 00       $#  ANS000:7A8 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/d3000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A0 04 14 FF FF FF 00 00 00       $$  ANS000:7A8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A0 03 22 F0 89 00 00 00 00       $%  ANS000:7A8 03 22 F0 89 00 00 00 00
  $%  REQ001:7A0 03 22 F1 84 00 00 00 00       $%  ANS001:7A8 03 22 F1 84 00 00 00 00
  $%  REQ002:7A0 03 22 F1 89 00 00 00 00       $%  ANS002:7A8 03 22 F1 89 00 00 00 00
  $%  REQ003:7A0 03 22 F1 87 00 00 00 00       $%  ANS003:7A8 03 22 F1 87 00 00 00 00
  $%  REQ004:7A0 03 22 F1 8A 00 00 00 00       $%  ANS004:7A8 03 22 F1 8A 00 00 00 00
  $%  REQ005:7A0 03 22 F1 8C 00 00 00 00       $%  ANS005:7A8 03 22 F1 8C 00 00 00 00
  $%  REQ006:7A0 03 22 F1 90 00 00 00 00       $%  ANS006:7A8 03 22 F1 90 00 00 00 00
  $%  REQ007:7A0 03 22 F1 A2 00 00 00 00       $%  ANS007:7A8 03 22 F1 A2 00 00 00 00

  $%  000:国机智骏ECU(电子控制器)硬件版本编号:        $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  001:应用数据指纹数据标识:                       $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02d%02d%02d-%s],x1+2000,x2,x3,ASCII(x4,x5,x6,x7));
  $%  002:国机智骏ECU(电子控制器)软件版本编号:        $%    $%  ANS002.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  003:ECU(电子控制器)零件号:                      $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);
  $%  004:ECU(电子控制器)供应商ID:                    $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:ECU(电子控制器)串码:                        $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%u %s %02d-%02d-%02d],(x1*0x1000000+x2*0x10000+x3*0x100+x4),ASCII(x5,x6,x7,x8,x9,x10),0x7D0+x11,x12,x13);
  $%  006:车辆标识码(VIN):                            $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:整车在厂家生产线生产日期:                   $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
