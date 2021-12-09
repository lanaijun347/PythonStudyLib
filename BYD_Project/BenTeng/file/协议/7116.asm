
    车型ID：7116

    模拟：协议模拟-->7116

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:767 02 10 01 00 00 00 00 00       $~  ANS000:76F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:767 02 3E 00 00 00 00 00 00       $!  ANS000:76F 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:767 03 19 02 08 00 00 00 00       $#  ANS000:76F 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:767 04 14 FF FF FF 00 00 00       $$  ANS000:76F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:767 03 22 F1 80 00 00 00 00       $%  ANS000:76F 03 22 F1 80 00 00 00 00
  $%  REQ001:767 03 22 F1 81 00 00 00 00       $%  ANS001:76F 03 22 F1 81 00 00 00 00
  $%  REQ002:767 03 22 F1 87 00 00 00 00       $%  ANS002:76F 03 22 F1 87 00 00 00 00
  $%  REQ003:767 03 22 F1 89 00 00 00 00       $%  ANS003:76F 03 22 F1 89 00 00 00 00
  $%  REQ004:767 03 22 F1 90 00 00 00 00       $%  ANS004:76F 03 22 F1 90 00 00 00 00
  $%  REQ005:767 03 22 F1 91 00 00 00 00       $%  ANS005:76F 03 22 F1 91 00 00 00 00
  $%  REQ006:767 03 22 F1 98 00 00 00 00       $%  ANS006:76F 03 22 F1 98 00 00 00 00
  $%  REQ007:767 03 22 F1 9C 00 00 00 00       $%  ANS007:76F 03 22 F1 9C 00 00 00 00
  $%  REQ008:767 03 22 F1 9D 00 00 00 00       $%  ANS008:76F 03 22 F1 9D 00 00 00 00
  $%  REQ009:767 03 22 F1 A1 00 00 00 00       $%  ANS009:76F 03 22 F1 A1 00 00 00 00
  $%  REQ010:767 03 22 F1 A6 00 00 00 00       $%  ANS010:76F 03 22 F1 A6 00 00 00 00
  $%  REQ011:767 03 22 F1 83 00 00 00 00       $%  ANS011:76F 03 22 F1 83 00 00 00 00
  $%  REQ012:767 03 22 F1 8C 00 00 00 00       $%  ANS012:76F 03 22 F1 8C 00 00 00 00
  $%  REQ013:767 03 22 F1 92 00 00 00 00       $%  ANS013:76F 03 22 F1 92 00 00 00 00
  $%  REQ014:767 03 22 F1 93 00 00 00 00       $%  ANS014:76F 03 22 F1 93 00 00 00 00
  $%  REQ015:767 03 22 F1 94 00 00 00 00       $%  ANS015:76F 03 22 F1 94 00 00 00 00
  $%  REQ016:767 03 22 F1 95 00 00 00 00       $%  ANS016:76F 03 22 F1 95 00 00 00 00
  $%  REQ017:767 03 22 F1 A4 00 00 00 00       $%  ANS017:76F 03 22 F1 A4 00 00 00 00

  $%  000:ECU(电子控制器)刷新软件版本号:              $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  001:ECU(电子控制器)应用软件版本号:              $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:零件号:                                     $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  003:ECU(电子控制器)软件号:                      $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:车辆VIN:                                    $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  005:ECU(电子控制器)硬件版本号:                  $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  006:诊断仪序列号:                               $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:标定软件版本号:                             $%    $%  ANS007.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  008:ECU(电子控制器)安装日期:                    $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  009:系统配置:                                   $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  010:车辆生产日期:                               $%    $%  ANS010.BYTE004  $%  Y=ASCII(X1,X2,X3,X4);
  $%  011:供应商ECU(电子控制器)刷新软件版本号:        $%    $%  ANS011.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  012:ECU(电子控制器)序列号:                      $%    $%  ANS012.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22);
  $%  013:供应商ECU(电子控制器)硬件号:                $%    $%  ANS013.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  014:供应商ECU(电子控制器)硬件版本号:            $%    $%  ANS014.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  015:供应商ECU(电子控制器)软件号:                $%    $%  ANS015.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  016:供应商ECU(电子控制器)软件版本号:            $%    $%  ANS016.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  017:供应商ECU(电子控制器)标定软件版本号:        $%    $%  ANS017.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:767 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
