
    车型ID：6c28

    模拟：协议模拟-->6c28

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:757 02 10 01 00 00 00 00 00       $~  ANS000:75F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:757 02 3E 00 00 00 00 00 00       $!  ANS000:75F 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:757 03 19 02 08 00 00 00 00       $#  ANS000:75F 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:757 04 14 FF FF FF 00 00 00       $$  ANS000:75F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:757 03 22 F1 87 00 00 00 00       $%  ANS000:75F 03 22 F1 87 00 00 00 00
  $%  REQ001:757 03 22 F1 89 00 00 00 00       $%  ANS001:75F 03 22 F1 89 00 00 00 00
  $%  REQ002:757 03 22 F1 90 00 00 00 00       $%  ANS002:75F 03 22 F1 90 00 00 00 00
  $%  REQ003:757 03 22 F1 91 00 00 00 00       $%  ANS003:75F 03 22 F1 91 00 00 00 00
  $%  REQ004:757 03 22 F1 93 00 00 00 00       $%  ANS004:75F 03 22 F1 93 00 00 00 00
  $%  REQ005:757 03 22 F1 95 00 00 00 00       $%  ANS005:75F 03 22 F1 95 00 00 00 00
  $%  REQ006:757 03 22 F1 98 00 00 00 00       $%  ANS006:75F 03 22 F1 98 00 00 00 00
  $%  REQ007:757 03 22 F1 9D 00 00 00 00       $%  ANS007:75F 03 22 F1 9D 00 00 00 00
  $%  REQ008:757 03 22 F1 A1 00 00 00 00       $%  ANS008:75F 03 22 F1 A1 00 00 00 00

  $%  000:零件号:                     $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU软件号:                  $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:车辆VIN:                    $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU硬件版本号:              $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:供应商ECU硬件版本号:        $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU软件版本号:        $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:诊断仪序列号:               $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:ECU安装日期:                $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  008:系统配置:                   $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:757 03 22 3C E1 00 00 00 00       $  ANS000:75F 03 22 3C E1 00 00 00 00

  $  000.控制器防夹状态       $    $       $    $  ANS000.BYTE004  $  if(X1==0) y=@0118;else if(X1==1) y=@0119;else if(X1==2) y=@011a;else y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:757 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
