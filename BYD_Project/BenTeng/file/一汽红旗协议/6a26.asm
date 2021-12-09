
    车型ID：6a26

    模拟：协议模拟-->6a26

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:725 02 10 01 00 00 00 00 00       $~  ANS000:72D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:725 02 3E 00 00 00 00 00 00       $!  ANS000:72D 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:725 03 19 02 09 00 00 00 00       $#  ANS000:72D 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:725 04 14 FF FF FF 00 00 00       $$  ANS000:72D 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:725 03 22 F1 87 00 00 00 00       $%  ANS000:72D 03 22 F1 87 00 00 00 00
  $%  REQ001:725 03 22 F1 89 00 00 00 00       $%  ANS001:72D 03 22 F1 89 00 00 00 00
  $%  REQ002:725 03 22 F1 8A 00 00 00 00       $%  ANS002:72D 03 22 F1 8A 00 00 00 00
  $%  REQ003:725 03 22 F1 8C 00 00 00 00       $%  ANS003:72D 03 22 F1 8C 00 00 00 00
  $%  REQ004:725 03 22 F1 90 00 00 00 00       $%  ANS004:72D 03 22 F1 90 00 00 00 00
  $%  REQ005:725 03 22 F1 91 00 00 00 00       $%  ANS005:72D 03 22 F1 91 00 00 00 00
  $%  REQ006:725 03 22 F1 93 00 00 00 00       $%  ANS006:72D 03 22 F1 93 00 00 00 00
  $%  REQ007:725 03 22 F1 95 00 00 00 00       $%  ANS007:72D 03 22 F1 95 00 00 00 00
  $%  REQ008:725 03 22 F1 98 00 00 00 00       $%  ANS008:72D 03 22 F1 98 00 00 00 00
  $%  REQ009:725 03 22 F1 99 00 00 00 00       $%  ANS009:72D 03 22 F1 99 00 00 00 00
  $%  REQ010:725 03 22 F1 9D 00 00 00 00       $%  ANS010:72D 03 22 F1 9D 00 00 00 00
  $%  REQ011:725 03 22 F1 A1 00 00 00 00       $%  ANS011:72D 03 22 F1 A1 00 00 00 00

  $%  000:OEM（原厂设备）部件编号:            $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU软件版本编号:                    $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:系统供应商数据标识符:               $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5);
  $%  003:ECU序列号:                          $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  004:VIN（车辆识别码）:                  $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  005:ECU硬件版本编号:                    $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  006:供应商ECU硬件版本号:                $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  007:供应商ECU软件版本号:                $%    $%  ANS007.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  008:维修车间码和/或诊断仪序列号:        $%    $%  ANS008.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  009:编程日期:                           $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  010:ECU安装日期:                        $%    $%  ANS010.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  011:系统配置1:                          $%    $%  ANS011.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:725 03 22 2A C1 00 00 00 00       $  ANS000:72D 03 22 2A C1 00 00 00 00
  $  REQ001:725 03 22 2A C2 00 00 00 00       $  ANS001:72D 03 22 2A C2 00 00 00 00
  $  REQ002:725 03 22 2A C4 00 00 00 00       $  ANS002:72D 03 22 2A C4 00 00 00 00
  $  REQ003:725 03 22 2A C3 00 00 00 00       $  ANS003:72D 03 22 2A C3 00 00 00 00
  $  REQ004:725 03 22 2A C5 00 00 00 00       $  ANS004:72D 03 22 2A C5 00 00 00 00
  $  REQ005:725 03 22 2A C6 00 00 00 00       $  ANS005:72D 03 22 2A C6 00 00 00 00
  $  REQ006:725 03 22 2A C7 00 00 00 00       $  ANS006:72D 03 22 2A C7 00 00 00 00
  $  REQ007:725 03 22 2A C8 00 00 00 00       $  ANS007:72D 03 22 2A C8 00 00 00 00

  $  000.前左雷达距离         $    $  cm     $    $  ANS000.BYTE004  $  if(X1<=253) Y=X1*1;else Y=@0004;
  $  001.前左中雷达距离       $    $  cm     $    $  ANS001.BYTE004  $  if(X1<=253) Y=X1*1;else Y=@0004;
  $  002.前右雷达距离         $    $  cm     $    $  ANS002.BYTE004  $  if(X1<=253) Y=X1*1;else Y=@0004;
  $  003.前右中雷达距离       $    $  cm     $    $  ANS003.BYTE004  $  if(X1<=253) Y=X1*1;else Y=@0004;
  $  004.后左雷达距离         $    $  cm     $    $  ANS004.BYTE004  $  if(X1<=253) Y=X1*1;else Y=@0004;
  $  005.后左中雷达距离       $    $  cm     $    $  ANS005.BYTE004  $  if(X1<=253) Y=X1*1;else Y=@0004;
  $  006.后右中雷达距离       $    $  cm     $    $  ANS006.BYTE004  $  if(X1<=253) Y=X1*1;else Y=@0004;
  $  007.后右雷达距离         $    $  cm     $    $  ANS007.BYTE004  $  if(X1<=253) Y=X1*1;else Y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:725 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
