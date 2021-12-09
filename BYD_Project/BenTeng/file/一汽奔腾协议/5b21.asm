
    车型ID：5b21

    模拟：协议模拟-->5b21

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:740 02 10 01 00 00 00 00 00       $~  ANS000:748 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:740 02 3E 00 00 00 00 00 00       $!  ANS000:748 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:740 03 19 02 09 00 00 00 00       $#  ANS000:748 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:740 04 14 FF FF FF 00 00 00       $$  ANS000:748 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:740 03 22 F1 80 00 00 00 00       $%  ANS000:748 03 22 F1 80 00 00 00 00
  $%  REQ001:740 03 22 F1 87 00 00 00 00       $%  ANS001:748 03 22 F1 87 00 00 00 00
  $%  REQ002:740 03 22 F1 89 00 00 00 00       $%  ANS002:748 03 22 F1 89 00 00 00 00
  $%  REQ003:740 03 22 F1 90 00 00 00 00       $%  ANS003:748 03 22 F1 90 00 00 00 00
  $%  REQ004:740 03 22 F1 91 00 00 00 00       $%  ANS004:748 03 22 F1 91 00 00 00 00
  $%  REQ005:740 03 22 F1 93 00 00 00 00       $%  ANS005:748 03 22 F1 93 00 00 00 00
  $%  REQ006:740 03 22 F1 95 00 00 00 00       $%  ANS006:748 03 22 F1 95 00 00 00 00
  $%  REQ007:740 03 22 F1 98 00 00 00 00       $%  ANS007:748 03 22 F1 98 00 00 00 00
  $%  REQ008:740 03 22 F1 9C 00 00 00 00       $%  ANS008:748 03 22 F1 9C 00 00 00 00
  $%  REQ009:740 03 22 F1 9D 00 00 00 00       $%  ANS009:748 03 22 F1 9D 00 00 00 00
  $%  REQ010:740 03 22 F1 A1 00 00 00 00       $%  ANS010:748 03 22 F1 A1 00 00 00 00
  $%  REQ011:740 03 22 F1 A4 00 00 00 00       $%  ANS011:748 03 22 F1 A4 00 00 00 00

  $%  000:ECU刷新软件版本号:              $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  001:零件号:                         $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  002:ECU软件版本号:                  $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  003:车辆VIN:                        $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  004:ECU硬件版本号:                  $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  005:供应商ECU硬件版本号:            $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:供应商ECU软件版本号:            $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  007:诊断仪序列号:                   $%    $%  ANS007.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  008:标定软件版本号:                 $%    $%  ANS008.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  009:ECU安装日期:                    $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  010:系统配置:                       $%    $%  ANS010.BYTE004  $%  Y=HEX(X1,X2,X3);
  $%  011:供应商ECU标定软件版本号:        $%    $%  ANS011.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:740 03 22 4F 00 00 00 00 00       $  ANS000:748 03 22 4F 00 00 00 00 00
  $  REQ001:740 03 22 4F 01 00 00 00 00       $  ANS001:748 03 22 4F 01 00 00 00 00
  $  REQ002:740 03 22 4F 02 00 00 00 00       $  ANS002:748 03 22 4F 02 00 00 00 00
  $  REQ003:740 03 22 4F 03 00 00 00 00       $  ANS003:748 03 22 4F 03 00 00 00 00
  $  REQ004:740 03 22 4F 04 00 00 00 00       $  ANS004:748 03 22 4F 04 00 00 00 00
  $  REQ005:740 03 22 4F 05 00 00 00 00       $  ANS005:748 03 22 4F 05 00 00 00 00
  $  REQ006:740 03 22 4F 06 00 00 00 00       $  ANS006:748 03 22 4F 06 00 00 00 00
  $  REQ007:740 03 22 4F 07 00 00 00 00       $  ANS007:748 03 22 4F 07 00 00 00 00
  $  REQ008:740 03 22 4F 08 00 00 00 00       $  ANS008:748 03 22 4F 08 00 00 00 00
  $  REQ009:740 03 22 4F 09 00 00 00 00       $  ANS009:748 03 22 4F 09 00 00 00 00

  $  000.阳光传感器光照强度                 $    $  w/m^2     $    $  ANS000.BYTE004  $  Y=X1*256+X2;
  $  001.蒸发器温度                         $    $  degC      $    $  ANS001.BYTE004  $  Y=(X1*1-80)/2;
  $  002.车内温度                           $    $  degC      $    $  ANS002.BYTE004  $  Y=(X1*1-80)/2;
  $  003.车外温度                           $    $  degC      $    $  ANS003.BYTE004  $  Y=(X1*1-80)/2;
  $  004.模式风门电机电机百分比位置         $    $  %         $    $  ANS004.BYTE004  $  Y=X1;
  $  005.温度风门电机百分比位置             $    $  %         $    $  ANS005.BYTE004  $  Y=X1;
  $  006.新风循环风风门电机百分比位置       $    $  %         $    $  ANS006.BYTE004  $  Y=X1;
  $  007.鼓风机电压                         $    $  V         $    $  ANS007.BYTE004  $  Y=X1*1/10;
  $  008.输入电源电压值                     $    $  V         $    $  ANS008.BYTE004  $  Y=X1*1/10;
  $  009.驾驶员侧座椅加热输出状态           $    $            $    $  ANS009.BYTE004  $  if(((X1>>0)&1)==0) y=@0005;else if(((X1>>0)&1)==1) y=@0016;else y=@0004;
  $  010.副驾驶员侧座椅加热输出状态         $    $            $    $  ANS009.BYTE004  $  if(((X1>>1)&1)==0) y=@0005;else if(((X1>>1)&1)==1) y=@0016;else y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:740 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
