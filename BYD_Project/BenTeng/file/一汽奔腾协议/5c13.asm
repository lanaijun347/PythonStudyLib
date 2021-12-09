
    车型ID：5c13

    模拟：协议模拟-->5c13

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7AE 02 10 01 00 00 00 00 00       $~  ANS000:7CE 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7AE 02 3E 00 00 00 00 00 00       $!  ANS000:7CE 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7AE 03 19 02 08 00 00 00 00       $#  ANS000:7CE 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7AE 04 14 FF FF FF 00 00 00       $$  ANS000:7CE 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7AE 03 22 01 00 00 00 00 00       $%  ANS000:7CE 03 22 01 00 00 00 00 00
  $%  REQ001:7AE 03 22 F1 82 00 00 00 00       $%  ANS001:7CE 03 22 F1 82 00 00 00 00
  $%  REQ002:7AE 03 22 F1 87 00 00 00 00       $%  ANS002:7CE 03 22 F1 87 00 00 00 00
  $%  REQ003:7AE 03 22 F1 90 00 00 00 00       $%  ANS003:7CE 03 22 F1 90 00 00 00 00
  $%  REQ004:7AE 03 22 F1 92 00 00 00 00       $%  ANS004:7CE 03 22 F1 92 00 00 00 00
  $%  REQ005:7AE 03 22 F1 93 00 00 00 00       $%  ANS005:7CE 03 22 F1 93 00 00 00 00
  $%  REQ006:7AE 03 22 F1 94 00 00 00 00       $%  ANS006:7CE 03 22 F1 94 00 00 00 00
  $%  REQ007:7AE 03 22 F1 95 00 00 00 00       $%  ANS007:7CE 03 22 F1 95 00 00 00 00
  $%  REQ008:7AE 03 22 F1 98 00 00 00 00       $%  ANS008:7CE 03 22 F1 98 00 00 00 00
  $%  REQ009:7AE 03 22 F1 9D 00 00 00 00       $%  ANS009:7CE 03 22 F1 9D 00 00 00 00

  $%  000:配置信息:              $%    $%  ANS000.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6);
  $%  001:数据信息标识:          $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  002:整车厂零件号:          $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  003:整车标识:              $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  004:硬件号:                $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5);
  $%  005:硬件版本号:            $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5);
  $%  006:软件号:                $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:软件版本号:            $%    $%  ANS007.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  008:诊断仪序列号:          $%    $%  ANS008.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  009:控制器安装日期:        $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2,X3,X4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7AE 03 22 01 20 00 00 00 00       $  ANS000:7CE 03 22 01 20 00 00 00 00
  $  REQ001:7AE 03 22 01 21 00 00 00 00       $  ANS001:7CE 03 22 01 21 00 00 00 00
  $  REQ002:7AE 03 22 01 22 00 00 00 00       $  ANS002:7CE 03 22 01 22 00 00 00 00
  $  REQ003:7AE 03 22 01 23 00 00 00 00       $  ANS003:7CE 03 22 01 23 00 00 00 00
  $  REQ004:7AE 03 22 01 24 00 00 00 00       $  ANS004:7CE 03 22 01 24 00 00 00 00
  $  REQ005:7AE 03 22 01 25 00 00 00 00       $  ANS005:7CE 03 22 01 25 00 00 00 00

  $  000.请求DCDC(直流转换器)输出电压值       $    $  V        $    $  ANS000.BYTE004  $  Y=X1*0.1;
  $  001.D2D输出电电流                        $    $  A        $    $  ANS001.BYTE004  $  Y=(X1*256+X2);
  $  002.D2D输出电压                          $    $  V        $    $  ANS002.BYTE004  $  Y=X1*0.1;
  $  003.D2D状态                              $    $           $    $  ANS003.BYTE004  $  if(X1==0) y=@02f7;else if(X1==1) y=@02f8;else if(X1==2) y=@0c14;else if(X1==3) y=@0216;else y=@0004;
  $  004.D2D输入电压                          $    $  V        $    $  ANS004.BYTE004  $  Y=(X1*256+X2);
  $  005.D2D温度(冷却水温）                   $    $  degC     $    $  ANS005.BYTE004  $  Y=X1-40;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7AE 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
