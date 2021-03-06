
    车型ID：6a1e

    模拟：协议模拟-->6a1e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7A2 02 10 01 00 00 00 00 00       $~  ANS000:7AA 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A2 02 3E 00 00 00 00 00 00       $!  ANS000:7AA 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7A2 03 19 02 09 00 00 00 00       $#  ANS000:7AA 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A2 04 14 FF FF FF 00 00 00       $$  ANS000:7AA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A2 03 22 F1 83 00 00 00 00       $%  ANS000:7AA 03 22 F1 83 00 00 00 00
  $%  REQ001:7A2 03 22 F1 87 00 00 00 00       $%  ANS001:7AA 03 22 F1 87 00 00 00 00
  $%  REQ002:7A2 03 22 F1 8C 00 00 00 00       $%  ANS002:7AA 03 22 F1 8C 00 00 00 00
  $%  REQ003:7A2 03 22 F1 90 00 00 00 00       $%  ANS003:7AA 03 22 F1 90 00 00 00 00
  $%  REQ004:7A2 03 22 F1 93 00 00 00 00       $%  ANS004:7AA 03 22 F1 93 00 00 00 00
  $%  REQ005:7A2 03 22 F1 95 00 00 00 00       $%  ANS005:7AA 03 22 F1 95 00 00 00 00
  $%  REQ006:7A2 03 22 F1 98 00 00 00 00       $%  ANS006:7AA 03 22 F1 98 00 00 00 00
  $%  REQ007:7A2 03 22 F1 99 00 00 00 00       $%  ANS007:7AA 03 22 F1 99 00 00 00 00
  $%  REQ008:7A2 03 22 F1 9D 00 00 00 00       $%  ANS008:7AA 03 22 F1 9D 00 00 00 00
  $%  REQ009:7A2 03 22 F1 A1 00 00 00 00       $%  ANS009:7AA 03 22 F1 A1 00 00 00 00

  $%  000:供应商ECU引导软件版本号:            $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  001:OEM（原厂设备）部件编号:            $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  002:ECU序列号:                          $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  003:VIN（车辆识别码）:                  $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  004:供应商ECU硬件版本号:                $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU软件版本号:                $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:维修车间码和/或诊断仪序列号:        $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:编程日期:                           $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  008:ECU安装日期:                        $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  009:系统配置1:                          $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2,X3,X4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7A2 03 22 01 00 00 00 00 00       $  ANS000:7AA 03 22 01 00 00 00 00 00
  $  REQ001:7A2 03 22 01 01 00 00 00 00       $  ANS001:7AA 03 22 01 01 00 00 00 00
  $  REQ002:7A2 03 22 18 81 00 00 00 00       $  ANS002:7AA 03 22 18 81 00 00 00 00
  $  REQ003:7A2 03 22 18 83 00 00 00 00       $  ANS003:7AA 03 22 18 83 00 00 00 00
  $  REQ004:7A2 03 22 18 84 00 00 00 00       $  ANS004:7AA 03 22 18 84 00 00 00 00
  $  REQ005:7A2 03 22 18 85 00 00 00 00       $  ANS005:7AA 03 22 18 85 00 00 00 00
  $  REQ006:7A2 03 22 18 86 00 00 00 00       $  ANS006:7AA 03 22 18 86 00 00 00 00
  $  REQ007:7A2 03 22 18 90 00 00 00 00       $  ANS007:7AA 03 22 18 90 00 00 00 00

  $  000.车速                                $    $  km/h      $    $  ANS000.BYTE004  $  if((X1*256+X2)<=32765) Y=(X1*256+X2)*0.01;else Y=@0004;
  $  001.里程表                              $    $  km        $    $  ANS001.BYTE004  $  if((X1*16777216+X2*65536+X3*256+X4)<=33554431) Y=(X1*16777216+X2*65536+X3*256+X4)*0.1;else Y=@0004;
  $  002.ECU(电子控制器)电压                 $    $  V         $    $  ANS002.BYTE004  $  if(X1<=254) Y=X1*0.11096;else Y=@0004;
  $  003.发动机转速                          $    $  rpm       $    $  ANS003.BYTE004  $  if((X1*256+X2)<=65535) Y=((X1*256+X2)*1)/4;else Y=@0004;
  $  004.方向盘角度                          $    $  deg       $    $  ANS004.BYTE004  $  if((X1*256+X2==0x7fff)||(X1*256+X2==0xffff)) y=@0004; else if((X1*256+X2)<0x7fff) y=(X1*256+X2)*0.04375; else y=(0x8000-(X1*256+X2))*0.04375;
  $  005.EPS(电动助力转向系统)工作模式       $    $            $    $  ANS005.BYTE004  $  if(X1==0) y=@00ad;else if(X1==1) y=@00bd;else if(X1==2) y=@00be;else if(X1==3) y=@0004;else y=@0004;
  $  006.SAS(转角传感器)角速率               $    $  deg/s     $    $  ANS006.BYTE004  $  if((X1*256+X2==0x7fff)||(X1*256+X2==0xffff)) y=@0004; else if((X1*256+X2)<0x7fff) y=(X1*256+X2)*0.04375; else y=(0x8000-(X1*256+X2))*0.04375;
  $  007.SAS(转角传感器)校准状态             $    $            $    $  ANS007.BYTE004  $  if(X1==0) y=@00bf;else if(X1==1) y=@00c0;else y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A2 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
