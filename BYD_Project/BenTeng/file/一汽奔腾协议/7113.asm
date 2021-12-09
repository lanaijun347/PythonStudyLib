
    车型ID：7113

    模拟：协议模拟-->7113

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:744 02 10 01 00 00 00 00 00       $~  ANS000:74C 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:744 02 3E 00 00 00 00 00 00       $!  ANS000:74C 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:744 03 19 02 08 00 00 00 00       $#  ANS000:74C 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:744 04 14 FF FF FF 00 00 00       $$  ANS000:74C 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:744 03 22 F1 87 00 00 00 00       $%  ANS000:74C 03 22 F1 87 00 00 00 00
  $%  REQ001:744 03 22 F1 89 00 00 00 00       $%  ANS001:74C 03 22 F1 89 00 00 00 00
  $%  REQ002:744 03 22 F1 90 00 00 00 00       $%  ANS002:74C 03 22 F1 90 00 00 00 00
  $%  REQ003:744 03 22 F1 91 00 00 00 00       $%  ANS003:74C 03 22 F1 91 00 00 00 00
  $%  REQ004:744 03 22 F1 98 00 00 00 00       $%  ANS004:74C 03 22 F1 98 00 00 00 00
  $%  REQ005:744 03 22 F1 9C 00 00 00 00       $%  ANS005:74C 03 22 F1 9C 00 00 00 00
  $%  REQ006:744 03 22 F1 9D 00 00 00 00       $%  ANS006:74C 03 22 F1 9D 00 00 00 00
  $%  REQ007:744 03 22 F1 A1 00 00 00 00       $%  ANS007:74C 03 22 F1 A1 00 00 00 00
  $%  REQ008:744 03 22 F1 A6 00 00 00 00       $%  ANS008:74C 03 22 F1 A6 00 00 00 00
  $%  REQ009:744 03 22 F1 83 00 00 00 00       $%  ANS009:74C 03 22 F1 83 00 00 00 00
  $%  REQ010:744 03 22 F1 8C 00 00 00 00       $%  ANS010:74C 03 22 F1 8C 00 00 00 00
  $%  REQ011:744 03 22 F1 93 00 00 00 00       $%  ANS011:74C 03 22 F1 93 00 00 00 00
  $%  REQ012:744 03 22 F1 95 00 00 00 00       $%  ANS012:74C 03 22 F1 95 00 00 00 00
  $%  REQ013:744 03 22 F1 A4 00 00 00 00       $%  ANS013:74C 03 22 F1 A4 00 00 00 00
  $%  REQ014:744 03 22 F1 81 00 00 00 00       $%  ANS014:74C 03 22 F1 81 00 00 00 00
  $%  REQ015:744 03 22 F1 80 00 00 00 00       $%  ANS015:74C 03 22 F1 80 00 00 00 00

  $%  000:零件号:                                     $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU(电子控制器)软件版本号:                  $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:车辆规格号:                                 $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU(电子控制器)硬件版本号:                  $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:诊断仪序列号:                               $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  005:标定软件版本号:                             $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:ECU(电子控制器)安装日期:                    $%    $%  ANS006.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  007:系统配置:                                   $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3);
  $%  008:车辆在生产线上的生产日期:                   $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  009:供应商ECU(电子控制器)刷新软件版本号:        $%    $%  ANS009.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  010:ECU(电子控制器)序列号:                      $%    $%  ANS010.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  011:供应商ECU(电子控制器)硬件版本号:            $%    $%  ANS011.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  012:供应商ECU(电子控制器)软件版本号:            $%    $%  ANS012.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  013:供应商ECU(电子控制器)标定软件版本号:        $%    $%  ANS013.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  014:ECU(电子控制器)应用软件版本号:              $%    $%  ANS014.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  015:ECU(电子控制器)刷新软件版本号:              $%    $%  ANS015.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:744 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
