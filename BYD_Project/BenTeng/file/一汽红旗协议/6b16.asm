
    车型ID：6b16

    模拟：协议模拟-->6b16

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7A5 02 10 01 00 00 00 00 00       $~  ANS000:7AD 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A5 02 3E 00 00 00 00 00 00       $!  ANS000:7AD 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7A5 03 19 02 09 00 00 00 00       $#  ANS000:7AD 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A5 04 14 FF FF FF 00 00 00       $$  ANS000:7AD 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A5 03 22 F1 87 00 00 00 00       $%  ANS000:7AD 03 22 F1 87 00 00 00 00
  $%  REQ001:7A5 03 22 F1 89 00 00 00 00       $%  ANS001:7AD 03 22 F1 89 00 00 00 00
  $%  REQ002:7A5 03 22 F1 90 00 00 00 00       $%  ANS002:7AD 03 22 F1 90 00 00 00 00
  $%  REQ003:7A5 03 22 F1 91 00 00 00 00       $%  ANS003:7AD 03 22 F1 91 00 00 00 00
  $%  REQ004:7A5 03 22 F1 93 00 00 00 00       $%  ANS004:7AD 03 22 F1 93 00 00 00 00
  $%  REQ005:7A5 03 22 F1 95 00 00 00 00       $%  ANS005:7AD 03 22 F1 95 00 00 00 00
  $%  REQ006:7A5 03 22 F1 98 00 00 00 00       $%  ANS006:7AD 03 22 F1 98 00 00 00 00
  $%  REQ007:7A5 03 22 F1 99 00 00 00 00       $%  ANS007:7AD 03 22 F1 99 00 00 00 00
  $%  REQ008:7A5 03 22 F1 9D 00 00 00 00       $%  ANS008:7AD 03 22 F1 9D 00 00 00 00
  $%  REQ009:7A5 03 22 F1 A1 00 00 00 00       $%  ANS009:7AD 03 22 F1 A1 00 00 00 00

  $%  000:零件号:                             $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU软件版本编号:                    $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:VIN（车辆识别码）:                  $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU硬件版本编号:                    $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:供应商ECU硬件版本号:                $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU软件版本号:                $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:维修车间码和/或测试仪序列号:        $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:编程日期:                           $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  008:ECU安装日期:                        $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  009:配置信息:                           $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A5 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
