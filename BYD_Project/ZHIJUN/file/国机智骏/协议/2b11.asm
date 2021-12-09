
    车型ID：2b11

    模拟：协议模拟-->2b11

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~70D

进入命令:

  $~  REQ000:705 02 10 03 00 00 00 00 00       $~  ANS000:70D 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:705 02 3E 00 00 00 00 00 00       $!  ANS000:70D 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:705 03 19 02 7B 00 00 00 00       $#  ANS000:70D 03 19 02 7B 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/d2000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:705 04 14 FF FF FF 00 00 00       $$  ANS000:70D 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:705 03 22 F0 89 00 00 00 00       $%  ANS000:70D 03 22 F0 89 00 00 00 00
  $%  REQ001:705 03 22 F1 84 00 00 00 00       $%  ANS001:70D 03 22 F1 84 00 00 00 00
  $%  REQ002:705 03 22 F1 89 00 00 00 00       $%  ANS002:70D 03 22 F1 89 00 00 00 00
  $%  REQ003:705 03 22 F1 87 00 00 00 00       $%  ANS003:70D 03 22 F1 87 00 00 00 00
  $%  REQ004:705 03 22 F1 8A 00 00 00 00       $%  ANS004:70D 03 22 F1 8A 00 00 00 00
  $%  REQ005:705 03 22 F1 8C 00 00 00 00       $%  ANS005:70D 03 22 F1 8C 00 00 00 00
  $%  REQ006:705 03 22 F1 90 00 00 00 00       $%  ANS006:70D 03 22 F1 90 00 00 00 00
  $%  REQ007:705 03 22 F1 A2 00 00 00 00       $%  ANS007:70D 03 22 F1 A2 00 00 00 00
  $%  REQ008:705 03 22 F0 83 00 00 00 00       $%  ANS008:70D 03 22 F0 83 00 00 00 00
  $%  REQ009:705 03 22 F0 84 00 00 00 00       $%  ANS009:70D 03 22 F0 84 00 00 00 00
  $%  REQ010:705 03 22 F0 85 00 00 00 00       $%  ANS010:70D 03 22 F0 85 00 00 00 00
  $%  REQ011:705 03 22 F1 93 00 00 00 00       $%  ANS011:70D 03 22 F1 93 00 00 00 00
  $%  REQ012:705 03 22 F1 95 00 00 00 00       $%  ANS012:70D 03 22 F1 95 00 00 00 00

  $%  000:国机智骏ECU(电子控制器)硬件版本编号:          $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,x9,x10,x11,x12);
  $%  001:应用数据指纹数据标识:                         $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02d%02d%02d-%s],x1+2000,x2,x3,ASCII(x4,x5,x6,x7));
  $%  002:国机智骏ECU(电子控制器)软件版本编号:          $%    $%  ANS002.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,x9,x10,x11,x12);
  $%  003:ECU(电子控制器)零件号:                        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21); 
  $%  004:ECU(电子控制器)供应商ID:                      $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:ECU(电子控制器)串码:                          $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%u %s %02d-%02d-%02d],(x1*0x1000000+x2*0x10000+x3*0x100+x4),ASCII(x5,x6,x7,x8,x9,x10),0x7D0+x11,x12,x13);
  $%  006:车辆标识码(VIN):                              $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:整车在厂家生产线生产日期:                     $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);
  $%  008:供应商ECU(电子控制器)应用软件版本编号:        $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  009:供应商ECU(电子控制器)底层软件版本编号:        $%    $%  ANS009.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  010:供应商ECU(电子控制器)标定软件版本编号:        $%    $%  ANS010.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  011:供应商ECU(电子控制器)硬件版本编号:            $%    $%  ANS011.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  012:供应商ECU(电子控制器)软件版本编号:            $%    $%  ANS012.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:705 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
