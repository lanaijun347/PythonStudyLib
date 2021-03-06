
    车型ID：7212

    模拟：协议模拟-->7212

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7F1 02 10 01 00 00 00 00 00       $~  ANS000:7F9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7F1 02 3E 00 00 00 00 00 00       $!  ANS000:7F9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7F1 03 19 02 08 00 00 00 00       $#  ANS000:7F9 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7F1 04 14 FF FF FF 00 00 00       $$  ANS000:7F9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7F1 03 22 F1 87 00 00 00 00       $%  ANS000:7F9 03 22 F1 87 00 00 00 00
  $%  REQ001:7F1 03 22 F1 89 00 00 00 00       $%  ANS001:7F9 03 22 F1 89 00 00 00 00
  $%  REQ002:7F1 03 22 F1 90 00 00 00 00       $%  ANS002:7F9 03 22 F1 90 00 00 00 00
  $%  REQ003:7F1 03 22 F1 91 00 00 00 00       $%  ANS003:7F9 03 22 F1 91 00 00 00 00
  $%  REQ004:7F1 03 22 F1 93 00 00 00 00       $%  ANS004:7F9 03 22 F1 93 00 00 00 00
  $%  REQ005:7F1 03 22 F1 95 00 00 00 00       $%  ANS005:7F9 03 22 F1 95 00 00 00 00
  $%  REQ006:7F1 03 22 F1 9D 00 00 00 00       $%  ANS006:7F9 03 22 F1 9D 00 00 00 00
  $%  REQ007:7F1 03 22 F1 A1 00 00 00 00       $%  ANS007:7F9 03 22 F1 A1 00 00 00 00
  $%  REQ008:7F1 03 22 F1 8A 00 00 00 00       $%  ANS008:7F9 03 22 F1 8A 00 00 00 00
  $%  REQ009:7F1 03 22 F1 00 00 00 00 00       $%  ANS009:7F9 03 22 F1 00 00 00 00 00
  $%  REQ010:7F1 03 22 F1 98 00 00 00 00       $%  ANS010:7F9 03 22 F1 98 00 00 00 00
  $%  REQ011:7F1 03 22 F1 8C 00 00 00 00       $%  ANS011:7F9 03 22 F1 8C 00 00 00 00

  $%  000:零件号:                                 $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU(电子控制器)软件版本号:              $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:车辆VIN:                                $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU(电子控制器)硬件版本号:              $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:供应商ECU(电子控制器)硬件版本号:        $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU(电子控制器)软件版本号:        $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:ECU(电子控制器)安装日期:                $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);
  $%  007:配置参数:                               $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  008:供应商标识符:                           $%    $%  ANS008.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  009:模式配置:                               $%    $%  ANS009.BYTE004  $%  Y=ASCII(X1);
  $%  010:诊断仪序列号:                           $%    $%  ANS010.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:ECU(电子控制器)序列号:                  $%    $%  ANS011.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7F1 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
