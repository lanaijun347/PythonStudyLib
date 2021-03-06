
    车型ID：591c

    模拟：协议模拟-->591c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7A3 02 10 01 00 00 00 00 00       $~  ANS000:7C3 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A3 02 3E 00 00 00 00 00 00       $!  ANS000:7C3 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7A3 03 19 02 08 00 00 00 00       $#  ANS000:7C3 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fc000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A3 04 14 FF FF FF 00 00 00       $$  ANS000:7C3 04 14 FF FF FF 00 00 00
  $$  REQ001:7A3 04 54 FF FF FF 00 00 00       $$  ANS001:7C3 04 54 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A3 03 22 F1 95 00 00 00 00       $%  ANS000:7C3 03 22 F1 95 00 00 00 00
  $%  REQ001:7A3 03 22 F1 94 00 00 00 00       $%  ANS001:7C3 03 22 F1 94 00 00 00 00
  $%  REQ002:7A3 03 22 F1 93 00 00 00 00       $%  ANS002:7C3 03 22 F1 93 00 00 00 00
  $%  REQ003:7A3 03 22 F1 92 00 00 00 00       $%  ANS003:7C3 03 22 F1 92 00 00 00 00
  $%  REQ004:7A3 03 22 F1 90 00 00 00 00       $%  ANS004:7C3 03 22 F1 90 00 00 00 00
  $%  REQ005:7A3 03 22 F1 98 00 00 00 00       $%  ANS005:7C3 03 22 F1 98 00 00 00 00
  $%  REQ006:7A3 03 22 F1 99 00 00 00 00       $%  ANS006:7C3 03 22 F1 99 00 00 00 00
  $%  REQ007:7A3 03 22 F1 87 00 00 00 00       $%  ANS007:7C3 03 22 F1 87 00 00 00 00
  $%  REQ008:7A3 03 22 F1 9D 00 00 00 00       $%  ANS008:7C3 03 22 F1 9D 00 00 00 00
  $%  REQ009:7A3 03 22 01 00 00 00 00 00       $%  ANS009:7C3 03 22 01 00 00 00 00 00

  $%  000:软件版本号:          $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:软件号:              $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  002:硬件版本号:          $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  003:硬件号:              $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  004:VIN:                 $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  005:诊断仪序列号:        $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  006:编程日期:            $%    $%  ANS006.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  007:零件号:              $%    $%  ANS007.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  008:ECU安装日期:         $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  009:配置信息:            $%    $%  ANS009.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7A3 03 22 01 01 00 00 00 00       $  ANS000:7C3 03 22 01 01 00 00 00 00
  $  REQ001:7A3 03 22 01 02 00 00 00 00       $  ANS001:7C3 03 22 01 02 00 00 00 00
  $  REQ002:7A3 03 22 01 03 00 00 00 00       $  ANS002:7C3 03 22 01 03 00 00 00 00
  $  REQ003:7A3 03 22 01 05 00 00 00 00       $  ANS003:7C3 03 22 01 05 00 00 00 00
  $  REQ004:7A3 03 22 01 06 00 00 00 00       $  ANS004:7C3 03 22 01 06 00 00 00 00
  $  REQ005:7A3 03 22 01 07 00 00 00 00       $  ANS005:7C3 03 22 01 07 00 00 00 00
  $  REQ006:7A3 03 22 01 08 00 00 00 00       $  ANS006:7C3 03 22 01 08 00 00 00 00
  $  REQ007:7A3 03 22 01 09 00 00 00 00       $  ANS007:7C3 03 22 01 09 00 00 00 00
  $  REQ008:7A3 03 22 01 0A 00 00 00 00       $  ANS008:7C3 03 22 01 0A 00 00 00 00

  $  000.驻车制动开关状态            $    $           $    $  ANS000.BYTE004  $  if(X1==0) y=@05ed;else if(X1==1) y=@05ea;else if(X1==2) y=@05e9;else if(X1==3) y=@05e8;else y=@0004;
  $  001.EPB(电子驻车)功能请求       $    $           $    $  ANS001.BYTE004  $  if(X1==0) y=@009c;else if(X1==1) y=@05e1;else if(X1==2) y=@05e9;else if(X1==3) y=@05ea;else if(X1==4) y=@05eb;else if(X1==5) y=@05ec;else y=@0004;
  $  002.刹车硬线信号状态            $    $           $    $  ANS002.BYTE004  $  if(X1==0) y=@0005;else if(X1==1) y=@0016;else y=@0004;
  $  003.KL30电压                    $    $  V        $    $  ANS003.BYTE004  $  Y=X1*1/10;
  $  004.坡度传感器输入              $    $           $    $  ANS004.BYTE004  $  Y=X1*1-45;
  $  005.开关指示灯驱动输出          $    $           $    $  ANS005.BYTE004  $  if(X1==0) y=@02b1;else if(X1==1) y=@02bb;else y=@0004;
  $  006.左驻车电机状态              $    $           $    $  ANS006.BYTE004  $  if(X1==0) y=@05e1;else if(X1==1) y=@05e2;else if(X1==2) y=@05e3;else if(X1==3) y=@05e4;else if(X1==4) y=@05e5;else if(X1==5) y=@05e6;else if(X1==6) y=@0395;else if(X1==7) y=@05e7;else if(X1==8) y=@05e8;else y=@0004;
  $  007.右驻车电机状态              $    $           $    $  ANS007.BYTE004  $  if(X1==0) y=@05e1;else if(X1==1) y=@05e2;else if(X1==2) y=@05e3;else if(X1==3) y=@05e4;else if(X1==4) y=@05e5;else if(X1==5) y=@05e6;else if(X1==6) y=@0395;else if(X1==7) y=@05e7;else if(X1==8) y=@05e8;else y=@0004;
  $  008.车速                        $    $  km/h     $    $  ANS008.BYTE004  $  Y=(X1*256+X2)*0.01;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A3 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
