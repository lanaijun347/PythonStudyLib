
    车型ID：6d16

    模拟：协议模拟-->6d16

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7A4 02 10 01 00 00 00 00 00       $~  ANS000:7C4 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A4 02 3E 00 00 00 00 00 00       $!  ANS000:7C4 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7A4 03 19 02 09 00 00 00 00       $#  ANS000:7C4 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A4 04 14 FF FF FF 00 00 00       $$  ANS000:7C4 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A4 03 22 F1 82 00 00 00 00       $%  ANS000:7C4 03 22 F1 82 00 00 00 00
  $%  REQ001:7A4 03 22 F1 87 00 00 00 00       $%  ANS001:7C4 03 22 F1 87 00 00 00 00
  $%  REQ002:7A4 03 22 F1 90 00 00 00 00       $%  ANS002:7C4 03 22 F1 90 00 00 00 00
  $%  REQ003:7A4 03 22 F1 94 00 00 00 00       $%  ANS003:7C4 03 22 F1 94 00 00 00 00
  $%  REQ004:7A4 03 22 F1 95 00 00 00 00       $%  ANS004:7C4 03 22 F1 95 00 00 00 00
  $%  REQ005:7A4 03 22 F1 9D 00 00 00 00       $%  ANS005:7C4 03 22 F1 9D 00 00 00 00
  $%  REQ006:7A4 03 22 FD 06 00 00 00 00       $%  ANS006:7C4 03 22 FD 06 00 00 00 00
  $%  REQ007:7A4 03 22 01 00 00 00 00 00       $%  ANS007:7C4 03 22 01 00 00 00 00 00
  $%  REQ008:7A4 03 22 F1 96 00 00 00 00       $%  ANS008:7C4 03 22 F1 96 00 00 00 00
  $%  REQ009:7A4 03 00 00 06 00 00 00 00       $%  ANS009:7C4 03 00 00 06 00 00 00 00

  $%  000:数据信息字段版本:        $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:OEM零件号:               $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  002:VIN码:                   $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:软件版本号:              $%    $%  ANS003.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  004:软件号:                  $%    $%  ANS004.BYTE004  $%  Y=HEX(X1,X2,X3);
  $%  005:ECU安装日期:             $%    $%  ANS005.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  006:激活诊断模式:            $%    $%  ANS006.BYTE004  $%  if(X1==1) y=@03cd;else if(X1==2) y=@05d9;else if(X1==3) y=@03ce;else if(X1==5) y=@05da;else if(X1==129) y=@05db;else if(X1==130) y=@05dc;else if(X1==131) y=@05dd;else y=@0004;
  $%  007:配置信息:                $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2);
  $%  008:刷新软件版本号:          $%    $%  ANS008.BYTE004  $%  Y=ASCII(X1,X2,X3);
  $%  009:刷新软件号:              $%    $%  ANS009.BYTE004  $%  Y=ASCII(X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7A4 03 22 FD 00 00 00 00 00       $  ANS000:7C4 03 22 FD 00 00 00 00 00
  $  REQ001:7A4 03 22 FD 01 00 00 00 00       $  ANS001:7C4 03 22 FD 01 00 00 00 00
  $  REQ002:7A4 03 22 FD 02 00 00 00 00       $  ANS002:7C4 03 22 FD 02 00 00 00 00

  $  000.车速               $    $  km/h     $    $  ANS000.BYTE004  $  Y=(X1*256+X2);
  $  001.左前轮车速         $    $  km/h     $    $  ANS000.BYTE006  $  Y=(X1*256+X2);
  $  002.右前轮车速         $    $  km/h     $    $  ANS000.BYTE008  $  Y=(X1*256+X2);
  $  003.左后轮车速         $    $  km/h     $    $  ANS000.BYTE010  $  Y=(X1*256+X2);
  $  004.右后轮车速         $    $  km/h     $    $  ANS000.BYTE012  $  Y=(X1*256+X2);
  $  005.电池电压           $    $  V        $    $  ANS001.BYTE004  $  Y=X1*0.08;
  $  006.制动灯开关         $    $           $    $  ANS001.BYTE005  $  if(X1==0) y=@020f;else if(X1==1) y=@0210;else y=@0004;
  $  007.阀继电器状态       $    $           $    $  ANS002.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  008.泵电机状态         $    $           $    $  ANS002.BYTE005  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A4 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
