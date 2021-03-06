
    车型ID：6b10

    模拟：协议模拟-->6b10

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7D4 02 10 01 00 00 00 00 00       $~  ANS000:7DC 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7D4 02 3E 00 00 00 00 00 00       $!  ANS000:7DC 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7D4 03 19 02 09 00 00 00 00       $#  ANS000:7DC 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7D4 04 14 FF FF FF 00 00 00       $$  ANS000:7DC 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7D4 03 22 FD 1E 00 00 00 00       $%  ANS000:7DC 03 22 FD 1E 00 00 00 00
  $%  REQ001:7D4 03 22 FD 1F 00 00 00 00       $%  ANS001:7DC 03 22 FD 1F 00 00 00 00
  $%  REQ002:7D4 03 22 F1 87 00 00 00 00       $%  ANS002:7DC 03 22 F1 87 00 00 00 00
  $%  REQ003:7D4 03 22 F1 89 00 00 00 00       $%  ANS003:7DC 03 22 F1 89 00 00 00 00
  $%  REQ004:7D4 03 22 F1 90 00 00 00 00       $%  ANS004:7DC 03 22 F1 90 00 00 00 00
  $%  REQ005:7D4 03 22 F1 91 00 00 00 00       $%  ANS005:7DC 03 22 F1 91 00 00 00 00
  $%  REQ006:7D4 03 22 F1 93 00 00 00 00       $%  ANS006:7DC 03 22 F1 93 00 00 00 00
  $%  REQ007:7D4 03 22 F1 95 00 00 00 00       $%  ANS007:7DC 03 22 F1 95 00 00 00 00
  $%  REQ008:7D4 03 22 F1 99 00 00 00 00       $%  ANS008:7DC 03 22 F1 99 00 00 00 00
  $%  REQ009:7D4 03 22 F1 9D 00 00 00 00       $%  ANS009:7DC 03 22 F1 9D 00 00 00 00
  $%  REQ010:7D4 03 22 F1 A1 00 00 00 00       $%  ANS010:7DC 03 22 F1 A1 00 00 00 00

  $%  000:标定零件号:                   $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:引导装载程序零件号:           $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  002:OEM（原厂设备）零件号:        $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  003:ECU软件版本编号:              $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:VIN（车辆识别码）:            $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  005:ECU硬件版本编号:              $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  006:硬件版本编号:                 $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  007:软件版本编号:                 $%    $%  ANS007.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  008:编程日期:                     $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  009:ECU安装日期:                  $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  010:系统配置1:                    $%    $%  ANS010.BYTE004  $%  Y=HEX(X1,X2,X3,X4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7D4 03 22 05 00 00 00 00 00       $  ANS000:7DC 03 22 05 00 00 00 00 00
  $  REQ001:7D4 03 22 05 01 00 00 00 00       $  ANS001:7DC 03 22 05 01 00 00 00 00
  $  REQ002:7D4 03 22 05 02 00 00 00 00       $  ANS002:7DC 03 22 05 02 00 00 00 00
  $  REQ003:7D4 03 22 05 03 00 00 00 00       $  ANS003:7DC 03 22 05 03 00 00 00 00
  $  REQ004:7D4 03 22 05 04 00 00 00 00       $  ANS004:7DC 03 22 05 04 00 00 00 00
  $  REQ005:7D4 03 22 05 05 00 00 00 00       $  ANS005:7DC 03 22 05 05 00 00 00 00
  $  REQ006:7D4 03 22 05 06 00 00 00 00       $  ANS006:7DC 03 22 05 06 00 00 00 00
  $  REQ007:7D4 03 22 05 07 00 00 00 00       $  ANS007:7DC 03 22 05 07 00 00 00 00
  $  REQ008:7D4 03 22 05 08 00 00 00 00       $  ANS008:7DC 03 22 05 08 00 00 00 00
  $  REQ009:7D4 03 22 05 09 00 00 00 00       $  ANS009:7DC 03 22 05 09 00 00 00 00
  $  REQ010:7D4 03 22 05 0A 00 00 00 00       $  ANS010:7DC 03 22 05 0A 00 00 00 00
  $  REQ011:7D4 03 22 05 0B 00 00 00 00       $  ANS011:7DC 03 22 05 0B 00 00 00 00
  $  REQ012:7D4 03 22 05 0C 00 00 00 00       $  ANS012:7DC 03 22 05 0C 00 00 00 00
  $  REQ013:7D4 03 22 05 0D 00 00 00 00       $  ANS013:7DC 03 22 05 0D 00 00 00 00
  $  REQ014:7D4 03 22 05 0E 00 00 00 00       $  ANS014:7DC 03 22 05 0E 00 00 00 00
  $  REQ015:7D4 03 22 05 0F 00 00 00 00       $  ANS015:7DC 03 22 05 0F 00 00 00 00
  $  REQ016:7D4 03 22 01 00 00 00 00 00       $  ANS016:7DC 03 22 01 00 00 00 00 00
  $  REQ017:7D4 03 22 01 01 00 00 00 00       $  ANS017:7DC 03 22 01 01 00 00 00 00
  $  REQ018:7D4 03 22 05 10 00 00 00 00       $  ANS018:7DC 03 22 05 10 00 00 00 00
  $  REQ019:7D4 03 22 05 11 00 00 00 00       $  ANS019:7DC 03 22 05 11 00 00 00 00

  $  000.当前诊断会话                                            $    $              $    $  ANS000.BYTE004  $  if(X1==1) y=@00c1;else if(X1==2) y=@0194;else if(X1==3) y=@00c2;else y=@0004;
  $  001.系统电压                                                $    $  V           $    $  ANS001.BYTE004  $  if((X1*256+X2)<=40960) Y=(X1*256+X2)*0.00048828125;else y=@0004;
  $  002.四驱电磁线圈请求电流                                    $    $  A           $    $  ANS002.BYTE004  $  if((X1*256+X2)<=40960) Y=(X1*256+X2)*0.00024414062;else y=@0004;
  $  003.四驱离合器扭矩请求                                      $    $  Nm          $    $  ANS003.BYTE004  $  if((X1*256+X2)<=48000) Y=(X1*256+X2)*0.0625;else y=@0004;
  $  004.四驱线圈请求占空比                                      $    $  %           $    $  ANS004.BYTE004  $  if((X1*256+X2)<=51200) Y=(X1*256+X2)*0.001953125;else y=@0004;
  $  005.四驱离合器输入转速                                      $    $  rpm         $    $  ANS005.BYTE004  $  if((X1*256+X2)<=40000) Y=((X1*256+X2)*1)/4;else y=@0004;
  $  006.发动机扭矩                                              $    $  Nm          $    $  ANS006.BYTE004  $  if((X1*256+X2)<=64000) Y=(X1*256+X2)*0.015625;else y=@0004;
  $  007.左前轮速度                                              $    $  rpm         $    $  ANS007.BYTE004  $  if((X1*256+X2)<=48000) Y=(X1*256+X2)*0.0625;else y=@0004;
  $  008.右前轮速度                                              $    $  rpm         $    $  ANS007.BYTE006  $  if((X1*256+X2)<=48000) Y=(X1*256+X2)*0.0625;else y=@0004;
  $  009.左后轮速度                                              $    $  rpm         $    $  ANS007.BYTE008  $  if((X1*256+X2)<=48000) Y=(X1*256+X2)*0.0625;else y=@0004;
  $  010.右后轮速度                                              $    $  rpm         $    $  ANS007.BYTE010  $  if((X1*256+X2)<=48000) Y=(X1*256+X2)*0.0625;else y=@0004;
  $  011.方向盘转角                                              $    $  Degrees     $    $  ANS008.BYTE004  $  if((X1*256+X2)<=0x5A00) Y=(X1*256+X2)*0.03125;else if((X1*256+X2)>=0xA600) Y=((X1*256+X2)-0x10000)*0.03125;else y=@0004;
  $  012.四驱离合器油温                                          $    $  degC        $    $  ANS009.BYTE004  $  if((X1*256+X2)<=0x3200) Y=(X1*256+X2)*0.015625;else if((X1*256+X2)>=0xF600) Y=((X1*256+X2)-0x10000)*0.015625;else y=@0004;
  $  013.四驱电磁线圈请求电压                                    $    $  V           $    $  ANS010.BYTE004  $  if((X1*256+X2)<=36864) Y=(X1*256+X2)*0.00048828125;else y=@0004;
  $  014.节气门位置                                              $    $  %           $    $  ANS011.BYTE004  $  if((X1*256+X2)<=51200) Y=(X1*256+X2)*0.001953125;else y=@0004;
  $  015.变速箱档位                                              $    $              $    $  ANS012.BYTE004  $  if((x1&0xf)==0) y=@03f9; else if((x1&0xf)==1) y=@03fa; else if((x1&0xf)==2) y=@03fb; else if((x1&0xf)==3) y=@01a9; else if((x1&0xf)==4) y=@01aa; else if((x1&0xf)==5) y=@01ab; else if((x1&0xf)==6) y=@01ac; else if((x1&0xf)==7) y=@01ad; else if((x1&0xf)==8) y=@01ae; else if((x1&0xf)==9) y=@01df; else if((x1&0xf)==10) y=@01e0; else if((x1&0xf)==11) y=@000d; else if((x1&0xf)==12) y=@000d; else if((x1&0xf)==13) y=@000d; else if((x1&0xf)==14) y=@0089; else if((x1&0xf)==15) y=@0004;
  $  016.变速箱是否处于倒挡                                      $    $              $    $  ANS013.BYTE004  $  if(X1==0) y=@0115;else if(X1==1) y=@044c;else y=@0004;
  $  017.变速箱是否处于空挡                                      $    $              $    $  ANS014.BYTE004  $  if(X1==0) y=@0115;else if(X1==1) y=@044c;else y=@0004;
  $  018.四驱系统工作模式                                        $    $              $    $  ANS015.BYTE004  $  if(X1==0) y=@0452;else if(X1==1) y=@0453;else if(X1==2) y=@0454;else if(X1==3) y=@0455;else y=@0004;
  $  019.车速                                                    $    $  km/h        $    $  ANS016.BYTE004  $  if((X1*256+X2)<=65535) Y=(X1*256+X2)*0.0078125;else y=@0004;
  $  020.行驶里程                                                $    $  km          $    $  ANS017.BYTE004  $  if((X1*16777216+X2*65536+X3*256+X4)<=4281545523) Y=(X1*16777216+X2*65536+X3*256+X4);else y=@0004;
  $  021.ESP(电控稳定系统)_TOD(智能四驱系统)限扭值               $    $  Nm          $    $  ANS018.BYTE004  $  if((X1*256+X2)<=4093) Y=(X1*256+X2)/4;else y=@0004;
  $  022.ESP(电控稳定系统)_TOD(智能四驱系统)离合器断开请求       $    $              $    $  ANS019.BYTE004  $  if(X1==0) y=@009c;else if(X1==1) y=@0450;else if(X1==2) y=@0451;else y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7D4 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
