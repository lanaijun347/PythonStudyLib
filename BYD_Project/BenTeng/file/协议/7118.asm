
    车型ID：7118

    模拟：协议模拟-->7118

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:712 02 10 01 00 00 00 00 00       $~  ANS000:71A 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:712 02 3E 00 00 00 00 00 00       $!  ANS000:71A 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:712 03 19 02 08 00 00 00 00       $#  ANS000:71A 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:712 04 14 FF FF FF 00 00 00       $$  ANS000:71A 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:712 03 22 F1 00 00 00 00 00       $%  ANS000:71A 03 22 F1 00 00 00 00 00
  $%  REQ001:712 03 22 F1 87 00 00 00 00       $%  ANS001:71A 03 22 F1 87 00 00 00 00
  $%  REQ002:712 03 22 F1 89 00 00 00 00       $%  ANS002:71A 03 22 F1 89 00 00 00 00
  $%  REQ003:712 03 22 F1 90 00 00 00 00       $%  ANS003:71A 03 22 F1 90 00 00 00 00
  $%  REQ004:712 03 22 F1 91 00 00 00 00       $%  ANS004:71A 03 22 F1 91 00 00 00 00
  $%  REQ005:712 03 22 F1 98 00 00 00 00       $%  ANS005:71A 03 22 F1 98 00 00 00 00
  $%  REQ006:712 03 22 F1 99 00 00 00 00       $%  ANS006:71A 03 22 F1 99 00 00 00 00
  $%  REQ007:712 03 22 F1 9D 00 00 00 00       $%  ANS007:71A 03 22 F1 9D 00 00 00 00
  $%  REQ008:712 03 22 F1 A1 00 00 00 00       $%  ANS008:71A 03 22 F1 A1 00 00 00 00
  $%  REQ009:712 03 22 F1 93 00 00 00 00       $%  ANS009:71A 03 22 F1 93 00 00 00 00
  $%  REQ010:712 03 22 F1 95 00 00 00 00       $%  ANS010:71A 03 22 F1 95 00 00 00 00
  $%  REQ011:712 03 22 F1 01 00 00 00 00       $%  ANS011:71A 03 22 F1 01 00 00 00 00
  $%  REQ012:712 03 22 F1 02 00 00 00 00       $%  ANS012:71A 03 22 F1 02 00 00 00 00

  $%  000:模式配置:                               $%    $%  ANS000.BYTE004  $%  if(X1==0) y=@0953;else if(X1==1) y=@0954;else Y=@0006;
  $%  001:零件号:                                 $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  002:ECU(电子控制器)软件号:                  $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  003:车辆VIN:                                $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  004:ECU(电子控制器)硬件版本号:              $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  005:诊断仪序列号:                           $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  006:编程日期:                               $%    $%  ANS006.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  007:ECU(电子控制器)安装日期:                $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  008:系统配置:                               $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3);
  $%  009:供应商ECU(电子控制器)硬件版本号:        $%    $%  ANS009.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  010:供应商ECU(电子控制器)软件版本号:        $%    $%  ANS010.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  011:生命周期读取:                           $%    $%  ANS011.BYTE004  $%  if(X1==1) y=@0955;else if(X1==2) y=@0956;else if(X1==3) y=@0957;else if(X1==10) y=@0958;else if(X1==11) y=@0959;else if(X1==12) y=@095a;else Y=@0006;
  $%  012:生命周期设置:                           $%    $%  ANS012.BYTE004  $%  if(X1==0) y=@095b;else if(X1==1) y=@095c;else Y=@0006;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:712 03 22 1A 80 00 00 00 00       $  ANS000:71A 03 22 1A 80 00 00 00 00
  $  REQ001:712 03 22 1A 82 00 00 00 00       $  ANS001:71A 03 22 1A 82 00 00 00 00
  $  REQ002:712 03 22 1A 83 00 00 00 00       $  ANS002:71A 03 22 1A 83 00 00 00 00

  $  000.诊断会话状态           $    $       $    $  ANS000.BYTE004  $  if(X1==1) y=@005f;else if(X1==3) y=@0061;else Y=@0006;
  $  001.安全访问无效计数       $    $       $    $  ANS001.BYTE004  $  Y=X1;
  $  002.车辆钥匙信息           $    $       $    $  ANS002.BYTE004  $  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34,X35,X36,X37,X38,X39,X40,X41);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:712 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
