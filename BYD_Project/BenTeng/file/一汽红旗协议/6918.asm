
    车型ID：6918

    模拟：协议模拟-->6918

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:734 02 10 01 00 00 00 00 00       $~  ANS000:73C 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:734 02 3E 00 00 00 00 00 00       $!  ANS000:73C 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:734 03 19 02 09 00 00 00 00       $#  ANS000:73C 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:734 04 14 FF FF FF 00 00 00       $$  ANS000:73C 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:734 03 22 F1 00 00 00 00 00       $%  ANS000:73C 03 22 F1 00 00 00 00 00
  $%  REQ001:734 03 22 F1 80 00 00 00 00       $%  ANS001:73C 03 22 F1 80 00 00 00 00
  $%  REQ002:734 03 22 F1 81 00 00 00 00       $%  ANS002:73C 03 22 F1 81 00 00 00 00
  $%  REQ003:734 03 22 F1 83 00 00 00 00       $%  ANS003:73C 03 22 F1 83 00 00 00 00
  $%  REQ004:734 03 22 F1 86 00 00 00 00       $%  ANS004:73C 03 22 F1 86 00 00 00 00
  $%  REQ005:734 03 22 F1 87 00 00 00 00       $%  ANS005:73C 03 22 F1 87 00 00 00 00
  $%  REQ006:734 03 22 F1 89 00 00 00 00       $%  ANS006:73C 03 22 F1 89 00 00 00 00
  $%  REQ007:734 03 22 F1 8B 00 00 00 00       $%  ANS007:73C 03 22 F1 8B 00 00 00 00
  $%  REQ008:734 03 22 F1 8C 00 00 00 00       $%  ANS008:73C 03 22 F1 8C 00 00 00 00
  $%  REQ009:734 03 22 F1 90 00 00 00 00       $%  ANS009:73C 03 22 F1 90 00 00 00 00
  $%  REQ010:734 03 22 F1 91 00 00 00 00       $%  ANS010:73C 03 22 F1 91 00 00 00 00
  $%  REQ011:734 03 22 F1 92 00 00 00 00       $%  ANS011:73C 03 22 F1 92 00 00 00 00
  $%  REQ012:734 03 22 F1 93 00 00 00 00       $%  ANS012:73C 03 22 F1 93 00 00 00 00
  $%  REQ013:734 03 22 F1 94 00 00 00 00       $%  ANS013:73C 03 22 F1 94 00 00 00 00
  $%  REQ014:734 03 22 F1 95 00 00 00 00       $%  ANS014:73C 03 22 F1 95 00 00 00 00
  $%  REQ015:734 03 22 F1 98 00 00 00 00       $%  ANS015:73C 03 22 F1 98 00 00 00 00
  $%  REQ016:734 03 22 F1 99 00 00 00 00       $%  ANS016:73C 03 22 F1 99 00 00 00 00
  $%  REQ017:734 03 22 F1 9D 00 00 00 00       $%  ANS017:73C 03 22 F1 9D 00 00 00 00
  $%  REQ018:734 03 22 F1 A8 00 00 00 00       $%  ANS018:73C 03 22 F1 A8 00 00 00 00
  $%  REQ019:734 03 22 F1 A9 00 00 00 00       $%  ANS019:73C 03 22 F1 A9 00 00 00 00
  $%  REQ020:734 03 22 F1 A1 00 00 00 00       $%  ANS020:73C 03 22 F1 A1 00 00 00 00

  $%  000:模式配置:                       $%    $%  ANS000.BYTE004  $%  Y=HEX(X1);
  $%  001:ECU启动软件版本号:              $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:ECU应用程序软件版本号:          $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  003:供应商ECU启动软件版本号:        $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  004:主动诊断会话:                   $%    $%  ANS004.BYTE004  $%  if(X1==0) y=@00c1;else if(X1==3) y=@0069;else y=@0004;
  $%  005:OEM零件号:                      $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:ECU软件版本号:                  $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  007:ECU制造日期:                    $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  008:ECU序列号:                      $%    $%  ANS008.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  009:VIN:                            $%    $%  ANS009.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  010:ECU硬件版本号:                  $%    $%  ANS010.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  011:供应商ECU硬件编号:              $%    $%  ANS011.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  012:供应商ECU硬件版本号:            $%    $%  ANS012.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  013:供应商ECU软件编号:              $%    $%  ANS013.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  014:供应商ECu软件版本号:            $%    $%  ANS014.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  015:测试仪序列号:                   $%    $%  ANS015.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  016:编程日期:                       $%    $%  ANS016.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  017:ECU安装日期:                    $%    $%  ANS017.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  018:零件号2:                        $%    $%  ANS018.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  019:供应商ECU软件版本编号2:         $%    $%  ANS019.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  020:系统配置:                       $%    $%  ANS020.BYTE004  $%  Y=HEX(X1,X2,X3,X4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:734 03 22 01 00 00 00 00 00       $  ANS000:73C 03 22 01 00 00 00 00 00
  $  REQ001:734 03 22 01 01 00 00 00 00       $  ANS001:73C 03 22 01 01 00 00 00 00
  $  REQ002:734 03 22 2A 80 00 00 00 00       $  ANS002:73C 03 22 2A 80 00 00 00 00
  $  REQ003:734 03 22 2A 90 00 00 00 00       $  ANS003:73C 03 22 2A 90 00 00 00 00
  $  REQ004:734 03 22 2A A0 00 00 00 00       $  ANS004:73C 03 22 2A A0 00 00 00 00
  $  REQ005:734 03 22 2A 91 00 00 00 00       $  ANS005:73C 03 22 2A 91 00 00 00 00

  $  000.车速                     $    $  km/h     $    $  ANS000.BYTE004  $  if((X1*256+X2)<=32766) Y=(X1*256+X2)*0.01;else Y=@008c;
  $  001.里程表                   $    $  km       $    $  ANS001.BYTE004  $  if((X1*16777216+X2*65536+X3*256+X4)<=33554430)Y=(X1*16777216+X2*65536+X3*256+X4)*0.1;else Y=@0004;
  $  002.电池电压                 $    $  V        $    $  ANS002.BYTE004  $  Y=X1*0.1;
  $  003.EOL验证结果              $    $           $    $  ANS003.BYTE004  $  if(X1==0) y=@030c;else if(X1==1) y=@030d;else if(X1==2) y=@030e;else if(X1==3) y=@030f;else y=@0004;
  $  004.读取编程尝试计数器       $    $           $    $  ANS004.BYTE004  $  Y=HEX(X1);
  $  005.主雷达水平偏移角         $    $  Deg      $    $  ANS005.BYTE004  $  Y=(X1*256+X2)*0.01-327.68;
  $  006.主雷达竖直偏移角         $    $  Deg      $    $  ANS005.BYTE004  $  Y=(X3*256+X4)*0.01-327.68;
  $  007.副雷达方位偏移角         $    $  Deg      $    $  ANS005.BYTE004  $  Y=(X5*256+X6)*0.01-327.68;
  $  008.副雷达方位偏移角         $    $  Deg      $    $  ANS005.BYTE004  $  Y=(X7*256+X8)*0.01-327.68;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:734 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
