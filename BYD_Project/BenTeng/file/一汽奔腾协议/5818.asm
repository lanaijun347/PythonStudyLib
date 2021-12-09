
    车型ID：5818

    模拟：协议模拟-->5818

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:602 02 10 01 00 00 00 00 00       $~  ANS000:603 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:602 02 3E 00 00 00 00 00 00       $!  ANS000:603 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:602 03 19 02 08 00 00 00 00       $#  ANS000:603 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/e7000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:602 04 14 FF FF FF 00 00 00       $$  ANS000:603 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:602 03 22 F1 87 00 00 00 00       $%  ANS000:603 03 22 F1 87 00 00 00 00
  $%  REQ001:602 03 22 F1 98 00 00 00 00       $%  ANS001:603 03 22 F1 98 00 00 00 00
  $%  REQ002:602 03 22 F1 99 00 00 00 00       $%  ANS002:603 03 22 F1 99 00 00 00 00
  $%  REQ003:602 03 22 F1 90 00 00 00 00       $%  ANS003:603 03 22 F1 90 00 00 00 00
  $%  REQ004:602 03 22 F1 89 00 00 00 00       $%  ANS004:603 03 22 F1 89 00 00 00 00
  $%  REQ005:602 03 22 F1 80 00 00 00 00       $%  ANS005:603 03 22 F1 80 00 00 00 00
  $%  REQ006:602 03 22 F1 83 00 00 00 00       $%  ANS006:603 03 22 F1 83 00 00 00 00
  $%  REQ007:602 03 22 F1 8A 00 00 00 00       $%  ANS007:603 03 22 F1 8A 00 00 00 00
  $%  REQ008:602 03 22 F1 8B 00 00 00 00       $%  ANS008:603 03 22 F1 8B 00 00 00 00
  $%  REQ009:602 03 22 F1 91 00 00 00 00       $%  ANS009:603 03 22 F1 91 00 00 00 00
  $%  REQ010:602 03 22 F1 92 00 00 00 00       $%  ANS010:603 03 22 F1 92 00 00 00 00
  $%  REQ011:602 03 22 F1 94 00 00 00 00       $%  ANS011:603 03 22 F1 94 00 00 00 00
  $%  REQ012:602 03 22 F1 81 00 00 00 00       $%  ANS012:603 03 22 F1 81 00 00 00 00
  $%  REQ013:602 03 22 F1 A2 00 00 00 00       $%  ANS013:603 03 22 F1 A2 00 00 00 00
  $%  REQ014:602 03 22 F1 8C 00 00 00 00       $%  ANS014:603 03 22 F1 8C 00 00 00 00
  $%  REQ015:602 03 22 F1 A1 00 00 00 00       $%  ANS015:603 03 22 F1 A1 00 00 00 00

  $%  000:FCC（汽车制造商）零件号:                    $%    $%  ANS000.BYTE004  $%  0 ASCII
  $%  001:诊断仪序列号:                               $%    $%  ANS001.BYTE004  $%  0 ASCII
  $%  002:编程日期:                                   $%    $%  ANS002.BYTE004  $%  y=SPRINTF([20%02X-%02X-%02X],X1,X2,X3);
  $%  003:VIN（车辆识别码）:                          $%    $%  ANS003.BYTE004  $%  0 ASCII
  $%  004:FCC（汽车制造商） ECU软件版本号:            $%    $%  ANS004.BYTE004  $%  0 ASCII
  $%  005:FCC（汽车制造商） ECU刷新软件版本号:        $%    $%  ANS005.BYTE004  $%  0 ASCII
  $%  006:供应商ECU刷新软件版本号:                    $%    $%  ANS006.BYTE004  $%  0 ASCII
  $%  007:供应商代码:                                 $%    $%  ANS007.BYTE004  $%  0 ASCII
  $%  008:ECU在供应商生产线上的生产日期:              $%    $%  ANS008.BYTE004  $%  y=SPRINTF([20%02X-%02X-%02X],X1,X2,X3);
  $%  009:FCC（汽车制造商） ECU硬件版本号:            $%    $%  ANS009.BYTE004  $%  0 ASCII
  $%  010:供应商ECU硬件版本号:                        $%    $%  ANS010.BYTE004  $%  0 ASCII
  $%  011:供应商ECU软件版本号:                        $%    $%  ANS011.BYTE004  $%  0 ASCII
  $%  012:FCC（汽车制造商） ECU应用软件版本号:        $%    $%  ANS012.BYTE004  $%  0 ASCII
  $%  013:ECU在生产线的安装日期:                      $%    $%  ANS013.BYTE004  $%  y=SPRINTF([20%02X-%02X-%02X],X1,X2,X3);
  $%  014:ECU序列号:                                  $%    $%  ANS014.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  015:EMS(发动机控制单元):                        $%    $%  ANS015.BYTE004  $%  if(((X1>>0)&1)) Y=@0e95;else Y=@0e96;
  $%  016:TCU(变速箱控制单元):                        $%    $%  ANS015.BYTE004  $%  if(((X1>>1)&1)) Y=@0e95;else Y=@0e96;
  $%  017:ESP(电子稳定程序):                          $%    $%  ANS015.BYTE004  $%  if(((X1>>2)&1)) Y=@0e95;else Y=@0e96;
  $%  018:SAS(转角传感器):                            $%    $%  ANS015.BYTE004  $%  if(((X1>>4)&1)) Y=@0e95;else Y=@0e96;
  $%  019:EPB(电子驻车制动):                          $%    $%  ANS015.BYTE004  $%  if(((X1>>5)&1)) Y=@0e95;else Y=@0e96;
  $%  020:ACU(安全气囊控制单元):                      $%    $%  ANS015.BYTE004  $%  if(((X1>>6)&1)) Y=@0e95;else Y=@0e96;
  $%  021:ABS(防抱死制动系统):                        $%    $%  ANS015.BYTE004  $%  if(((X1>>7)&1)) Y=@0e95;else Y=@0e96;
  $%  022:EPS(电动助力转向):                          $%    $%  ANS015.BYTE005  $%  if(((X1>>1)&1)) Y=@0e95;else Y=@0e96;
  $%  023:PKE(被动无匙进入):                          $%    $%  ANS015.BYTE006  $%  if(((X1>>0)&1)) Y=@0e95;else Y=@0e96;
  $%  024:TPMS(轮胎气压报警监测系统):                 $%    $%  ANS015.BYTE006  $%  if(((X1>>2)&1)) Y=@0e95;else Y=@0e96;
  $%  025:DATC(空调控制器):                           $%    $%  ANS015.BYTE006  $%  if(((X1>>3)&1)) Y=@0e95;else Y=@0e96;
  $%  026:BCM(车身控制单元):                          $%    $%  ANS015.BYTE006  $%  if(((X1>>4)&1)) Y=@0e95;else Y=@0e96;
  $%  027:PAC(停车辅助控制器):                        $%    $%  ANS015.BYTE006  $%  if(((X1>>6)&1)) Y=@0e95;else Y=@0e96;
  $%  028:IC(组合仪表):                               $%    $%  ANS015.BYTE007  $%  if(((X1>>0)&1)) Y=@0e95;else Y=@0e96;
  $%  029:MMI(音响系统):                              $%    $%  ANS015.BYTE007  $%  if(((X1>>1)&1)) Y=@0e95;else Y=@0e96;
  $%  030:AVS(全景影像):                              $%    $%  ANS015.BYTE007  $%  if(((X1>>2)&1)) Y=@0e95;else Y=@0e96;
  $%  031:AFS(随动转向大灯):                          $%    $%  ANS015.BYTE004  $%  if(((X1>>3)&1)) Y=@0e95;else Y=@0e96;
  $%  032:DSCU(座椅记忆控制单元):                     $%    $%  ANS015.BYTE006  $%  if(((X1>>5)&1)) Y=@0e95;else Y=@0e96;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:602 03 22 09 00 00 00 00 00       $  ANS000:603 03 22 09 00 00 00 00 00

  $  000.里程       $    $  km     $    $  ANS000.BYTE004  $  Y=(X1+X2*256+X3*65536+X4*16777216)*0.1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:602 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
