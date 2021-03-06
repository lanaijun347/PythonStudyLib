
    车型ID：6b19

    模拟：协议模拟-->6b19

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7E1 02 10 01 00 00 00 00 00       $~  ANS000:7E9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E1 02 3E 00 00 00 00 00 00       $!  ANS000:7E9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E1 03 19 02 09 00 00 00 00       $#  ANS000:7E9 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E1 04 14 FF FF FF 00 00 00       $$  ANS000:7E9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E1 03 22 F1 83 00 00 00 00       $%  ANS000:7E9 03 22 F1 83 00 00 00 00
  $%  REQ001:7E1 03 22 F1 87 00 00 00 00       $%  ANS001:7E9 03 22 F1 87 00 00 00 00
  $%  REQ002:7E1 03 22 F1 89 00 00 00 00       $%  ANS002:7E9 03 22 F1 89 00 00 00 00
  $%  REQ003:7E1 03 22 F1 90 00 00 00 00       $%  ANS003:7E9 03 22 F1 90 00 00 00 00
  $%  REQ004:7E1 03 22 F1 91 00 00 00 00       $%  ANS004:7E9 03 22 F1 91 00 00 00 00
  $%  REQ005:7E1 03 22 F1 93 00 00 00 00       $%  ANS005:7E9 03 22 F1 93 00 00 00 00
  $%  REQ006:7E1 03 22 F1 95 00 00 00 00       $%  ANS006:7E9 03 22 F1 95 00 00 00 00
  $%  REQ007:7E1 03 22 F1 98 00 00 00 00       $%  ANS007:7E9 03 22 F1 98 00 00 00 00
  $%  REQ008:7E1 03 22 F1 99 00 00 00 00       $%  ANS008:7E9 03 22 F1 99 00 00 00 00
  $%  REQ009:7E1 03 22 F1 9D 00 00 00 00       $%  ANS009:7E9 03 22 F1 9D 00 00 00 00
  $%  REQ010:7E1 03 22 F1 A1 00 00 00 00       $%  ANS010:7E9 03 22 F1 A1 00 00 00 00

  $%  000:供应商ECU启动软件版本号:        $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  001:OEM（原厂设备）零件号:          $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  002:ECU软件版本编号:                $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  003:VIN（车辆识别码）:              $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  004:ECU硬件版本编号:                $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  005:硬件版本编号:                   $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:软件版本编号:                   $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  007:诊断仪序列号:                   $%    $%  ANS007.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  008:编程日期:                       $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  009:ECU安装日期:                    $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  010:系统配置1:                      $%    $%  ANS010.BYTE004  $%  Y=HEX(X1,X2);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E1 03 22 04 01 00 00 00 00       $  ANS000:7E9 03 22 04 01 00 00 00 00
  $  REQ001:7E1 03 22 04 02 00 00 00 00       $  ANS001:7E9 03 22 04 02 00 00 00 00
  $  REQ002:7E1 03 22 04 03 00 00 00 00       $  ANS002:7E9 03 22 04 03 00 00 00 00
  $  REQ003:7E1 03 22 04 04 00 00 00 00       $  ANS003:7E9 03 22 04 04 00 00 00 00
  $  REQ004:7E1 03 22 04 05 00 00 00 00       $  ANS004:7E9 03 22 04 05 00 00 00 00
  $  REQ005:7E1 03 22 04 06 00 00 00 00       $  ANS005:7E9 03 22 04 06 00 00 00 00
  $  REQ006:7E1 03 22 04 07 00 00 00 00       $  ANS006:7E9 03 22 04 07 00 00 00 00
  $  REQ007:7E1 03 22 04 08 00 00 00 00       $  ANS007:7E9 03 22 04 08 00 00 00 00
  $  REQ008:7E1 03 22 04 10 00 00 00 00       $  ANS008:7E9 03 22 04 10 00 00 00 00
  $  REQ009:7E1 03 22 04 11 00 00 00 00       $  ANS009:7E9 03 22 04 11 00 00 00 00
  $  REQ010:7E1 03 22 04 12 00 00 00 00       $  ANS010:7E9 03 22 04 12 00 00 00 00
  $  REQ011:7E1 03 22 04 13 00 00 00 00       $  ANS011:7E9 03 22 04 13 00 00 00 00
  $  REQ012:7E1 03 22 04 14 00 00 00 00       $  ANS012:7E9 03 22 04 14 00 00 00 00
  $  REQ013:7E1 03 22 04 15 00 00 00 00       $  ANS013:7E9 03 22 04 15 00 00 00 00
  $  REQ014:7E1 03 22 04 16 00 00 00 00       $  ANS014:7E9 03 22 04 16 00 00 00 00
  $  REQ015:7E1 03 22 04 17 00 00 00 00       $  ANS015:7E9 03 22 04 17 00 00 00 00
  $  REQ016:7E1 03 22 04 18 00 00 00 00       $  ANS016:7E9 03 22 04 18 00 00 00 00
  $  REQ017:7E1 03 22 04 19 00 00 00 00       $  ANS017:7E9 03 22 04 19 00 00 00 00
  $  REQ018:7E1 03 22 04 20 00 00 00 00       $  ANS018:7E9 03 22 04 20 00 00 00 00
  $  REQ019:7E1 03 22 04 22 00 00 00 00       $  ANS019:7E9 03 22 04 22 00 00 00 00
  $  REQ020:7E1 03 22 04 25 00 00 00 00       $  ANS020:7E9 03 22 04 25 00 00 00 00
  $  REQ021:7E1 03 22 04 26 00 00 00 00       $  ANS021:7E9 03 22 04 26 00 00 00 00
  $  REQ022:7E1 03 22 04 27 00 00 00 00       $  ANS022:7E9 03 22 04 27 00 00 00 00
  $  REQ023:7E1 03 22 04 29 00 00 00 00       $  ANS023:7E9 03 22 04 29 00 00 00 00
  $  REQ024:7E1 03 22 04 30 00 00 00 00       $  ANS024:7E9 03 22 04 30 00 00 00 00
  $  REQ025:7E1 03 22 04 31 00 00 00 00       $  ANS025:7E9 03 22 04 31 00 00 00 00
  $  REQ026:7E1 03 22 04 32 00 00 00 00       $  ANS026:7E9 03 22 04 32 00 00 00 00

  $  000.换档电磁阀监控器A           $    $           $    $  ANS000.BYTE004  $  if(((X1>>0)&1)) Y=@0015; else Y=@0014;
  $  001.换档电磁阀监控器B           $    $           $    $  ANS000.BYTE004  $  if(((X1>>1)&1)) Y=@0015; else Y=@0014;
  $  002.线性电磁阀A反馈(SLC1)       $    $  mA       $    $  ANS001.BYTE004  $  Y=X1/4;
  $  003.线性电磁阀B反馈(SLC2)       $    $  mA       $    $  ANS002.BYTE004  $  Y=X1/4;
  $  004.线性电磁阀E反馈(SLT)        $    $  mA       $    $  ANS003.BYTE004  $  Y=X1/4;
  $  005.线性电磁阀F反馈(SLU)        $    $  mA       $    $  ANS004.BYTE004  $  Y=X1/4;
  $  006.变速器输出转速              $    $  rpm      $    $  ANS005.BYTE004  $  Y=((X1*256+X2)*1)/4;
  $  007.变速器输入转速              $    $  rpm      $    $  ANS006.BYTE004  $  Y=((X1*256+X2)*1)/4;
  $  008.机油温度                    $    $  degC     $    $  ANS007.BYTE004  $  Y=X1-48;
  $  009.电瓶电压                    $    $  V        $    $  ANS008.BYTE004  $  Y=(X1*256+X2)*0.001;
  $  010.发动机转速                  $    $  rpm      $    $  ANS009.BYTE004  $  Y=((X1*256+X2)*1)/4;
  $  011.发动机扭矩                  $    $  Nm       $    $  ANS010.BYTE004  $  Y=((X1*256+X2)*1)/10;
  $  012.驾驶员请求扭矩              $    $  Nm       $    $  ANS011.BYTE004  $  Y=(X1*256+X2)/10;
  $  013.油门踏板位置                $    $  %        $    $  ANS012.BYTE004  $  Y=X1*100/255;
  $  014.扭矩控制请求                $    $  Nm       $    $  ANS013.BYTE004  $  if((X1*256+X2)<=10235) Y=(X1*256+X2)/10;else y=@0004;
  $  015.扭矩限制请求                $    $  Nm       $    $  ANS014.BYTE004  $  if((X1*256+X2)<=10235) Y=(X1*256+X2)/10;else y=@0004;
  $  016.扭矩增加请求                $    $  Nm       $    $  ANS015.BYTE004  $  if((X1*256+X2)<=10235) Y=(X1*256+X2)/10;else y=@0004;
  $  017.车速                        $    $  km/h     $    $  ANS016.BYTE004  $  Y=X1;
  $  018.换档杆位置                  $    $           $    $  ANS017.BYTE004  $  if(X1==0) y=@03f9;else if(X1==1) y=@03fa;else if(X1==2) y=@03fb;else if(X1==3) y=@03fc;else if(X1==4) y=@01e1;else if(X1==5) y=@049d;else if(X1==7) y=@0089;else if(X1==8) y=@049e;else if(X1==15) y=@0004;else y=@0004;
  $  019.驾驶周期信号                $    $           $    $  ANS018.BYTE004  $  if(((X1>>0)&1)) Y=@0016; else Y=@0005;
  $  020.暖机周期信号                $    $           $    $  ANS018.BYTE004  $  if(((X1>>1)&1)) Y=@0016; else Y=@0005;
  $  021.当前锁住                    $    $           $    $  ANS019.BYTE004  $  if(X1==0) Y=@0030; else if(X1==1) Y=@04b2; else if(X1==2) Y=@004b; else if(X1==3) Y=@0004;else y=@0004;
  $  022.驱动模式状态                $    $           $    $  ANS020.BYTE004  $  if(X1==0) y=@00de;else if(X1==1) y=@0087;else if(X1==2) y=@04b0;else if(X1==15) y=@04b1;else y=@0004;
  $  023.换档中                      $    $           $    $  ANS021.BYTE004  $  if(X1==0) y=@0005;else if(X1==1) y=@0016;else y=@0004;
  $  024.新档位                      $    $           $    $  ANS022.BYTE004  $  if(X1==0) y=@01a9;else if(X1==1) y=@01aa;else if(X1==2) y=@01ab;else if(X1==3) y=@01ac;else if(X1==4) y=@01ad;else if(X1==5) y=@01ae;else if(X1==6) y=@01df;else if(X1==7) y=@01e0;else if(X1==15) y=@04b3;else y=@0004;
  $  025.紧急事件类型                $    $           $    $  ANS023.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  026.线性电磁阀C反馈(SLC3)       $    $  mA       $    $  ANS024.BYTE004  $  Y=X1/4;
  $  027.线性电磁阀G反馈(SLC4)       $    $  mA       $    $  ANS025.BYTE004  $  Y=X1/4;
  $  028.线性电磁阀D反馈(SLB1)       $    $  mA       $    $  ANS026.BYTE004  $  Y=X1/4;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E1 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
