
    车型ID：6b22

    模拟：协议模拟-->6b22

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7D0 02 10 01 00 00 00 00 00       $~  ANS000:7D8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7D0 02 3E 00 00 00 00 00 00       $!  ANS000:7D8 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7D0 03 19 02 09 00 00 00 00       $#  ANS000:7D8 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7D0 04 14 FF FF FF 00 00 00       $$  ANS000:7D8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7D0 03 22 F1 87 00 00 00 00       $%  ANS000:7D8 03 22 F1 87 00 00 00 00
  $%  REQ001:7D0 03 22 F1 89 00 00 00 00       $%  ANS001:7D8 03 22 F1 89 00 00 00 00
  $%  REQ002:7D0 03 22 F1 90 00 00 00 00       $%  ANS002:7D8 03 22 F1 90 00 00 00 00
  $%  REQ003:7D0 03 22 F1 91 00 00 00 00       $%  ANS003:7D8 03 22 F1 91 00 00 00 00
  $%  REQ004:7D0 03 22 F1 93 00 00 00 00       $%  ANS004:7D8 03 22 F1 93 00 00 00 00
  $%  REQ005:7D0 03 22 F1 95 00 00 00 00       $%  ANS005:7D8 03 22 F1 95 00 00 00 00
  $%  REQ006:7D0 03 22 F1 98 00 00 00 00       $%  ANS006:7D8 03 22 F1 98 00 00 00 00
  $%  REQ007:7D0 03 22 F1 99 00 00 00 00       $%  ANS007:7D8 03 22 F1 99 00 00 00 00
  $%  REQ008:7D0 03 22 F1 9D 00 00 00 00       $%  ANS008:7D8 03 22 F1 9D 00 00 00 00
  $%  REQ009:7D0 03 22 F1 A1 00 00 00 00       $%  ANS009:7D8 03 22 F1 A1 00 00 00 00

  $%  000:OEM（原厂设备）零件号:        $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU软件版本编号:              $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:VIN（车辆识别码）:            $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU硬件版本编号:              $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:硬件版本编号:                 $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:软件版本编号:                 $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:诊断仪序列号:                 $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:编程日期:                     $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  008:ECU安装日期:                  $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  009:系统配置1:                    $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7D0 03 22 04 80 00 00 00 00       $  ANS000:7D8 03 22 04 80 00 00 00 00
  $  REQ001:7D0 03 22 04 81 00 00 00 00       $  ANS001:7D8 03 22 04 81 00 00 00 00
  $  REQ002:7D0 03 22 04 82 00 00 00 00       $  ANS002:7D8 03 22 04 82 00 00 00 00
  $  REQ003:7D0 03 22 04 83 00 00 00 00       $  ANS003:7D8 03 22 04 83 00 00 00 00
  $  REQ004:7D0 03 22 04 84 00 00 00 00       $  ANS004:7D8 03 22 04 84 00 00 00 00
  $  REQ005:7D0 03 22 04 89 00 00 00 00       $  ANS005:7D8 03 22 04 89 00 00 00 00
  $  REQ006:7D0 03 22 01 00 00 00 00 00       $  ANS006:7D8 03 22 01 00 00 00 00 00
  $  REQ007:7D0 03 22 01 01 00 00 00 00       $  ANS007:7D8 03 22 01 01 00 00 00 00
  $  REQ008:7D0 03 22 04 8D 00 00 00 00       $  ANS008:7D8 03 22 04 8D 00 00 00 00
  $  REQ009:7D0 03 22 04 8E 00 00 00 00       $  ANS009:7D8 03 22 04 8E 00 00 00 00

  $  000.电子换挡器挡位位置           $    $           $    $  ANS000.BYTE004  $  if(X1==0) y=@00af;else if(X1==1) y=@04f6;else if(X1==2) y=@04f7;else if(X1==3) y=@00b2;else if(X1==4) y=@00b3;else y=@0004;
  $  001.电子换挡器手自动位置         $    $           $    $  ANS001.BYTE004  $  if(X1==0) y=@00ad;else if(X1==1) y=@00ae;else y=@0004;
  $  002.电子换挡器驻车按键状态       $    $           $    $  ANS002.BYTE004  $  if(X1==0) y=@00ab;else if(X1==1) y=@00ac;else y=@0004;
  $  003.电子换挡器解锁按键状态       $    $           $    $  ANS003.BYTE004  $  if(X1==0) y=@00ab;else if(X1==1) y=@00ac;else y=@0004;
  $  004.电子换挡器KL30电压           $    $  V        $    $  ANS004.BYTE004  $  Y=X1*0.1;
  $  005.变速箱控制器实际挡位         $    $           $    $  ANS005.BYTE004  $  if(X1==0) y=@03f9;else if(X1==1) y=@03fa;else if(X1==2) y=@03fb;else if(X1==3) y=@04ee;else if(X1==4) y=@04ef;else if(X1==5) y=@04f0;else if(X1==6) y=@04f1;else if(X1==7) y=@04f2;else if(X1==8) y=@04f3;else if(X1==9) y=@04f4;else if(X1==10) y=@04f5;else if(X1==14) y=@0089;else y=@0004;
  $  006.车速                         $    $  km/h     $    $  ANS006.BYTE004  $  if((X1*256+X2)<=32765) Y=(X1*256+X2)*0.01;else y=@0004;
  $  007.总里程                       $    $  km       $    $  ANS007.BYTE004  $  if((X1*16777216+X2*65536+X3*256+X4)<=33554430) Y=(X1*16777216+X2*65536+X3*256+X4)*0.1;else y=@0004;
  $  008.换挡拨片Tip up状态           $    $           $    $  ANS008.BYTE004  $  if(X1==0) Y=@0014;else if(X1==1) Y=@0015;else y=@0004;
  $  009.换挡拨片Tip down状态         $    $           $    $  ANS009.BYTE004  $  if(X1==0) Y=@0014;else if(X1==1) Y=@0015;else y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7D0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
