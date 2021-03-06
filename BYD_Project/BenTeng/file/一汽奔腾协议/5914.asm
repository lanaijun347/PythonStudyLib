
    车型ID：5914

    模拟：协议模拟-->5914

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:75E 02 10 01 00 00 00 00 00       $~  ANS000:77E 02 10 01 00 00 00 00 00
  $~  REQ001:75E 03 22 F1 87 00 00 00 00       $~  ANS001:77E 03 22 F1 87 00 00 00 00

空闲命令:

  $!  REQ000:75E 02 3E 00 00 00 00 00 00       $!  ANS000:77E 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:75E 03 19 02 09 00 00 00 00       $#  ANS000:77E 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/f4000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:75E 04 14 FF FF FF 00 00 00       $$  ANS000:77E 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:75E 03 22 F1 87 00 00 00 00       $%  ANS000:77E 03 22 F1 87 00 00 00 00
  $%  REQ001:75E 03 22 F1 90 00 00 00 00       $%  ANS001:77E 03 22 F1 90 00 00 00 00
  $%  REQ002:75E 03 22 F1 93 00 00 00 00       $%  ANS002:77E 03 22 F1 93 00 00 00 00
  $%  REQ003:75E 03 22 F1 95 00 00 00 00       $%  ANS003:77E 03 22 F1 95 00 00 00 00
  $%  REQ004:75E 03 22 F1 99 00 00 00 00       $%  ANS004:77E 03 22 F1 99 00 00 00 00
  $%  REQ005:75E 03 22 F1 9D 00 00 00 00       $%  ANS005:77E 03 22 F1 9D 00 00 00 00
  $%  REQ006:75E 03 22 F1 A1 00 00 00 00       $%  ANS006:77E 03 22 F1 A1 00 00 00 00
  $%  REQ007:75E 03 22 01 00 00 00 00 00       $%  ANS007:77E 03 22 01 00 00 00 00 00
  $%  REQ008:75E 03 22 F1 A2 00 00 00 00       $%  ANS008:77E 03 22 F1 A2 00 00 00 00

  $%  000:零件号:              $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:VIN码:               $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  002:硬件版本号:          $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  003:软件版本号:          $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  004:编程日期:            $%    $%  ANS004.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  005:ECU安装日期:         $%    $%  ANS005.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  006:碰撞信息:            $%    $%  ANS006.BYTE004  $%  Y=HEX(X1);
  $%  007:配置参数:            $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5);
  $%  008:售后配置参数:        $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:75E 03 22 01 01 00 00 00 00       $  ANS000:77E 03 22 01 01 00 00 00 00
  $  REQ001:75E 03 22 01 02 00 00 00 00       $  ANS001:77E 03 22 01 02 00 00 00 00
  $  REQ002:75E 03 22 01 03 00 00 00 00       $  ANS002:77E 03 22 01 03 00 00 00 00
  $  REQ003:75E 03 22 01 06 00 00 00 00       $  ANS003:77E 03 22 01 06 00 00 00 00
  $  REQ004:75E 03 22 01 07 00 00 00 00       $  ANS004:77E 03 22 01 07 00 00 00 00
  $  REQ005:75E 03 22 01 08 00 00 00 00       $  ANS005:77E 03 22 01 08 00 00 00 00
  $  REQ006:75E 03 22 01 09 00 00 00 00       $  ANS006:77E 03 22 01 09 00 00 00 00
  $  REQ007:75E 03 22 01 0A 00 00 00 00       $  ANS007:77E 03 22 01 0A 00 00 00 00
  $  REQ008:75E 03 22 01 0B 00 00 00 00       $  ANS008:77E 03 22 01 0B 00 00 00 00
  $  REQ009:75E 03 22 01 0C 00 00 00 00       $  ANS009:77E 03 22 01 0C 00 00 00 00
  $  REQ010:75E 03 22 01 0D 00 00 00 00       $  ANS010:77E 03 22 01 0D 00 00 00 00
  $  REQ011:75E 03 22 01 0E 00 00 00 00       $  ANS011:77E 03 22 01 0E 00 00 00 00
  $  REQ012:75E 03 22 01 0F 00 00 00 00       $  ANS012:77E 03 22 01 0F 00 00 00 00
  $  REQ013:75E 03 22 01 11 00 00 00 00       $  ANS013:77E 03 22 01 11 00 00 00 00
  $  REQ014:75E 03 22 01 12 00 00 00 00       $  ANS014:77E 03 22 01 12 00 00 00 00
  $  REQ015:75E 03 22 01 14 00 00 00 00       $  ANS015:77E 03 22 01 14 00 00 00 00
  $  REQ016:75E 03 22 01 17 00 00 00 00       $  ANS016:77E 03 22 01 17 00 00 00 00
  $  REQ017:75E 03 22 01 18 00 00 00 00       $  ANS017:77E 03 22 01 18 00 00 00 00
  $  REQ018:75E 03 22 01 19 00 00 00 00       $  ANS018:77E 03 22 01 19 00 00 00 00
  $  REQ019:75E 03 22 01 1B 00 00 00 00       $  ANS019:77E 03 22 01 1B 00 00 00 00
  $  REQ020:75E 03 22 01 1C 00 00 00 00       $  ANS020:77E 03 22 01 1C 00 00 00 00
  $  REQ021:75E 03 22 01 1D 00 00 00 00       $  ANS021:77E 03 22 01 1D 00 00 00 00

  $  000.位置灯状态               $    $        $    $  ANS000.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  001.近光灯状态               $    $        $    $  ANS001.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  002.远光灯状态               $    $        $    $  ANS002.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  003.日间行车灯状态           $    $        $    $  ANS003.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  004.左转向灯状态             $    $        $    $  ANS004.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  005.右转向灯状态             $    $        $    $  ANS005.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  006.节电输出状态             $    $        $    $  ANS006.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  007.室内灯状态               $    $        $    $  ANS007.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  008.制动灯状态               $    $        $    $  ANS008.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  009.倒车灯状态               $    $        $    $  ANS009.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  010.危险警报灯状态           $    $        $    $  ANS010.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  011.后雾灯状态               $    $        $    $  ANS011.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  012.前雨刮器状态             $    $        $    $  ANS012.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  013.后除霜状态               $    $        $    $  ANS013.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  014.车门解锁状态             $    $        $    $  ANS014.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  015.点火开关状态             $    $        $    $  ANS015.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  016.危险警报开关状态         $    $        $    $  ANS016.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  017.前雨刮回位开关状态       $    $        $    $  ANS017.BYTE004  $  if(X1==0) y=@05f2;else if(X1==1) y=@03f9;else y=@0004;
  $  018.后雾灯开关状态           $    $        $    $  ANS018.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  019.喇叭状态                 $    $        $    $  ANS019.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  020.超车开关状态             $    $        $    $  ANS020.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  021.电瓶电压                 $    $  V     $    $  ANS021.BYTE004  $  Y=X1*0.1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:75E 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
