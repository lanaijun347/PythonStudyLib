
    车型ID：5a16

    模拟：协议模拟-->5a16

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:680 02 10 01 00 00 00 00 00       $~  ANS000:681 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:680 02 3E 00 00 00 00 00 00       $!  ANS000:681 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:680 03 19 02 08 00 00 00 00       $#  ANS000:681 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:680 04 14 FF FF FF 00 00 00       $$  ANS000:681 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:680 03 22 F1 87 00 00 00 00       $%  ANS000:681 03 22 F1 87 00 00 00 00
  $%  REQ001:680 03 22 F1 98 00 00 00 00       $%  ANS001:681 03 22 F1 98 00 00 00 00
  $%  REQ002:680 03 22 F1 99 00 00 00 00       $%  ANS002:681 03 22 F1 99 00 00 00 00
  $%  REQ003:680 03 22 F1 90 00 00 00 00       $%  ANS003:681 03 22 F1 90 00 00 00 00
  $%  REQ004:680 03 22 F1 89 00 00 00 00       $%  ANS004:681 03 22 F1 89 00 00 00 00
  $%  REQ005:680 03 22 F1 83 00 00 00 00       $%  ANS005:681 03 22 F1 83 00 00 00 00
  $%  REQ006:680 03 22 F1 8A 00 00 00 00       $%  ANS006:681 03 22 F1 8A 00 00 00 00
  $%  REQ007:680 03 22 F1 8B 00 00 00 00       $%  ANS007:681 03 22 F1 8B 00 00 00 00
  $%  REQ008:680 03 22 F1 91 00 00 00 00       $%  ANS008:681 03 22 F1 91 00 00 00 00
  $%  REQ009:680 03 22 F1 92 00 00 00 00       $%  ANS009:681 03 22 F1 92 00 00 00 00
  $%  REQ010:680 03 22 F1 94 00 00 00 00       $%  ANS010:681 03 22 F1 94 00 00 00 00
  $%  REQ011:680 03 22 F1 A2 00 00 00 00       $%  ANS011:681 03 22 F1 A2 00 00 00 00
  $%  REQ012:680 03 22 F1 A1 00 00 00 00       $%  ANS012:681 03 22 F1 A1 00 00 00 00
  $%  REQ013:680 03 22 F1 00 00 00 00 00       $%  ANS013:681 03 22 F1 00 00 00 00 00
  $%  REQ014:680 03 22 F1 8C 00 00 00 00       $%  ANS014:681 03 22 F1 8C 00 00 00 00

  $%  000:FCC（汽车制造商）零件号:                                            $%    $%  ANS000.BYTE004  $%  0 ASCII
  $%  001:诊断仪序列号:                                                       $%    $%  ANS001.BYTE004  $%  0 ASCII
  $%  002:编程日期:                                                           $%    $%  ANS002.BYTE004  $%  Y=HEX(X1,X2,X3);
  $%  003:VIN（车辆识别码）:                                                  $%    $%  ANS003.BYTE004  $%  0 ASCII
  $%  004:FCC（汽车制造商） ECU软件版本号:                                    $%    $%  ANS004.BYTE004  $%  0 ASCII
  $%  005:供应商ECU刷新软件版本号:                                            $%    $%  ANS005.BYTE004  $%  0 ASCII
  $%  006:供应商代码:                                                         $%    $%  ANS006.BYTE004  $%  0 ASCII
  $%  007:ECU在供应商生产线上的生产日期:                                      $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3);
  $%  008:FCC（汽车制造商） ECU硬件版本号:                                    $%    $%  ANS008.BYTE004  $%  0 ASCII
  $%  009:供应商ECU硬件版本号:                                                $%    $%  ANS009.BYTE004  $%  0 ASCII
  $%  010:供应商ECU软件版本号:                                                $%    $%  ANS010.BYTE004  $%  0 ASCII
  $%  011:ECU在生产线的安装日期:                                              $%    $%  ANS011.BYTE004  $%  Y=HEX(X1,X2,X3);
  $%  012:超速报警:                                                           $%    $%  ANS012.BYTE004  $%  if(((X1>>0)&1)) Y=@0edc;else Y=@0edd;
  $%  013:车辆类型:                                                           $%    $%  ANS012.BYTE004  $%  if(((X1/0x02)&0x03)==0) y=@0ed9;else if(((X1/0x02)&0x03)==1) y=@0eda;else if(((X1/0x02)&0x03)==2) y=@0edb;else y=@0004;
  $%  014:PKE(被动无匙进入)或IMMO(防盗器):                                    $%    $%  ANS012.BYTE004  $%  if(((X1>>3)&1)) Y=@0e86;else Y=@0f38;
  $%  015:巡航控制:                                                           $%    $%  ANS012.BYTE004  $%  if(((X1>>5)&1)) Y=@0ede;else Y=@0edf;
  $%  016:ABS(防抱死制动系统)或TCS(牵引力控制系统)或ESP(电子稳定程序):        $%    $%  ANS012.BYTE005  $%  if((X1&0x03)==0) y=@0ed4;else if((X1&0x03)==1) y=@0f33;else if((X1&0x03)==2) y=@0ed5;else y=@0004;
  $%  017:刹车制动:                                                           $%    $%  ANS012.BYTE005  $%  if(((X1>>2)&1)) Y=@0f36;else Y=@0f37;
  $%  018:环境温度:                                                           $%    $%  ANS012.BYTE005  $%  if(((X1>>3)&1)) Y=@0f34;else Y=@0f35;
  $%  019:乘客侧坐椅安全带报警功能:                                           $%    $%  ANS012.BYTE005  $%  if(((X1>>4)&1)) Y=@0ed2;else Y=@0ed3;
  $%  020:导航:                                                               $%    $%  ANS012.BYTE005  $%  if(((X1>>5)&1)) Y=@0ed7;else Y=@0ed8;
  $%  021:TPMS(轮胎气压报警监测系统):                                         $%    $%  ANS012.BYTE005  $%  if(((X1/0x40)&0x03)==0) y=@0f30;else if(((X1/0x40)&0x03)==1) y=@0f31;else if(((X1/0x40)&0x03)==2) y=@0f32;else y=@0004;
  $%  022:座椅安全带输出信号:                                                 $%    $%  ANS012.BYTE006  $%  if(((X1>>0)&1)) Y=@0ece;else Y=@0ecf;
  $%  023:RLS(雨量传感器):                                                    $%    $%  ANS012.BYTE006  $%  if(((X1>>1)&1)) Y=@0ecc;else Y=@0ecd;
  $%  024:变速器:                                                             $%    $%  ANS012.BYTE006  $%  if(((X1>>2)&1)) Y=@0e88;else Y=@0e89;
  $%  025:iStop:                                                              $%    $%  ANS012.BYTE006  $%  if(((X1>>3)&1)) Y=@0f2e;else Y=@0f2f;
  $%  026:PDC(倒车雷达控制系统)报警:                                          $%    $%  ANS012.BYTE006  $%  if(((X1>>4)&1)) Y=@0f2c;else Y=@0f2d;
  $%  027:语言:                                                               $%    $%  ANS012.BYTE007  $%  if(((X1>>4)&1)) Y=@0e2a;else Y=@098e;
  $%  028:车辆模式配置:                                                       $%    $%  ANS013.BYTE004  $%  if(X1==1) y=@0011;else if(X1==2) y=@03c5;else if(X1==3) y=@006a;else if(X1==0) y=@000d;else y=@0004;
  $%  029:ECU序列号:                                                          $%    $%  ANS014.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:680 03 22 50 00 00 00 00 00       $  ANS000:681 03 22 50 00 00 00 00 00
  $  REQ001:680 03 22 50 01 00 00 00 00       $  ANS001:681 03 22 50 01 00 00 00 00
  $  REQ002:680 03 22 50 02 00 00 00 00       $  ANS002:681 03 22 50 02 00 00 00 00
  $  REQ003:680 03 22 50 03 00 00 00 00       $  ANS003:681 03 22 50 03 00 00 00 00
  $  REQ004:680 03 22 50 04 00 00 00 00       $  ANS004:681 03 22 50 04 00 00 00 00
  $  REQ005:680 03 22 50 05 00 00 00 00       $  ANS005:681 03 22 50 05 00 00 00 00
  $  REQ006:680 03 22 50 06 00 00 00 00       $  ANS006:681 03 22 50 06 00 00 00 00
  $  REQ007:680 03 22 50 07 00 00 00 00       $  ANS007:681 03 22 50 07 00 00 00 00
  $  REQ008:680 03 22 50 08 00 00 00 00       $  ANS008:681 03 22 50 08 00 00 00 00
  $  REQ009:680 03 22 50 09 00 00 00 00       $  ANS009:681 03 22 50 09 00 00 00 00

  $  000.发动机转速                     $    $  rpm      $    $  ANS000.BYTE004  $  Y=(X1*256+X2)*0.25;
  $  001.当前转速表指示值               $    $  rpm      $    $  ANS000.BYTE006  $  Y=(X1*256+X2)*0.25;
  $  002.当前车速指示值                 $    $  km/h     $    $  ANS001.BYTE004  $  Y=(X1*16777216+X2*65536+X3*256+X4)*0.01;
  $  003.CAN车速信号值                  $    $  km/h     $    $  ANS001.BYTE006  $  Y=(X1*16777216+X2*65536+X3*256+X4)*0.01;
  $  004.电瓶电压                       $    $  V        $    $  ANS002.BYTE004  $  Y=X1*0.1;
  $  005.水温表显示值                   $    $  degC     $    $  ANS003.BYTE004  $  Y=X1-40;
  $  006.水温实际值                     $    $  degC     $    $  ANS003.BYTE005  $  Y=X1-40;
  $  007.燃油量显示值                   $    $  %        $    $  ANS004.BYTE004  $  Y=X1*0.392157;
  $  008.燃油量实际值                   $    $  %        $    $  ANS004.BYTE005  $  Y=X1*0.392157;
  $  009.胎压信号输入                   $    $           $    $  ANS005.BYTE004  $  if(((X1>>0)&1)) Y=@0016;else Y=@0005;
  $  010.机油压力信号输入               $    $           $    $  ANS005.BYTE004  $  if(((X1>>1)&1)) Y=@0016;else Y=@0005;
  $  011.调光旋钮信号选择               $    $           $    $  ANS005.BYTE004  $  if(((X1>>2)&1)) Y=@0016;else Y=@0005;
  $  012.驻车制动输入                   $    $           $    $  ANS005.BYTE004  $  if(((X1>>3)&1)) Y=@0016;else Y=@0005;
  $  013.充电输入                       $    $           $    $  ANS005.BYTE004  $  if(((X1>>4)&1)) Y=@0016;else Y=@0005;
  $  014.左侧信息多功能按键输入         $    $           $    $  ANS005.BYTE004  $  if(((X1>>5)&1)) Y=@0016;else Y=@0005;
  $  015.点火                           $    $           $    $  ANS005.BYTE004  $  if(((X1>>6)&1)) Y=@0016;else Y=@0005;
  $  016.制动液传感器输入               $    $           $    $  ANS005.BYTE005  $  if(((X1>>0)&1)) Y=@0016;else Y=@0005;
  $  017.照明调节信号输入               $    $  %        $    $  ANS006.BYTE004  $  Y=X1*0.392157;
  $  018.IPC模拟输入_速度信号输入       $    $  km/h     $    $  ANS007.BYTE004  $  Y=(X1*256+X2)*0.01;
  $  019.总里程                         $    $  km       $    $  ANS008.BYTE004  $  Y=(X1*16777216+X2*65536+X3*256+X4)*0.1;
  $  020.保养里程                       $    $  km       $    $  ANS009.BYTE004  $  Y=(X1*256+X2)*1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:680 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
