
    车型ID：6c12

    模拟：协议模拟-->6c12

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:730 02 10 01 00 00 00 00 00       $~  ANS000:738 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:730 02 3E 00 00 00 00 00 00       $!  ANS000:738 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:730 03 19 02 08 00 00 00 00       $#  ANS000:738 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:730 04 14 FF FF FF 00 00 00       $$  ANS000:738 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:730 03 22 F1 87 00 00 00 00       $%  ANS000:738 03 22 F1 87 00 00 00 00
  $%  REQ001:730 03 22 F1 89 00 00 00 00       $%  ANS001:738 03 22 F1 89 00 00 00 00
  $%  REQ002:730 03 22 F1 90 00 00 00 00       $%  ANS002:738 03 22 F1 90 00 00 00 00
  $%  REQ003:730 03 22 F1 91 00 00 00 00       $%  ANS003:738 03 22 F1 91 00 00 00 00
  $%  REQ004:730 03 22 F1 93 00 00 00 00       $%  ANS004:738 03 22 F1 93 00 00 00 00
  $%  REQ005:730 03 22 F1 95 00 00 00 00       $%  ANS005:738 03 22 F1 95 00 00 00 00
  $%  REQ006:730 03 22 F1 98 00 00 00 00       $%  ANS006:738 03 22 F1 98 00 00 00 00
  $%  REQ007:730 03 22 F1 9D 00 00 00 00       $%  ANS007:738 03 22 F1 9D 00 00 00 00
  $%  REQ008:730 03 22 F1 8C 00 00 00 00       $%  ANS008:738 03 22 F1 8C 00 00 00 00
  $%  REQ009:730 03 22 F1 00 00 00 00 00       $%  ANS009:738 03 22 F1 00 00 00 00 00
  $%  REQ010:730 03 22 F1 80 00 00 00 00       $%  ANS010:738 03 22 F1 80 00 00 00 00
  $%  REQ011:730 03 22 F1 99 00 00 00 00       $%  ANS011:738 03 22 F1 99 00 00 00 00
  $%  REQ012:730 03 22 F1 9C 00 00 00 00       $%  ANS012:738 03 22 F1 9C 00 00 00 00
  $%  REQ013:730 03 22 F1 8A 00 00 00 00       $%  ANS013:738 03 22 F1 8A 00 00 00 00
  $%  REQ014:730 03 22 F1 A0 00 00 00 00       $%  ANS014:738 03 22 F1 A0 00 00 00 00

  $%  000:零件号:                      $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU软件版本号:               $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:车辆VIN:                     $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU硬件版本号:               $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:供应商ECU硬件版本号:         $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU软件版本号:         $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:诊断仪序列号:                $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:ECU安装日期:                 $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  008:ECU序列号:                   $%    $%  ANS008.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9);
  $%  009:模式配置:                    $%    $%  ANS009.BYTE004  $%  Y=HEX(X1);
  $%  010:ECU刷新软件版本号:           $%    $%  ANS010.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  011:编程日期:                    $%    $%  ANS011.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  012:标定软件版本号:              $%    $%  ANS012.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  013:供应商代码:                  $%    $%  ANS013.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5);
  $%  014:供应商刷新软件版本号:        $%    $%  ANS014.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:730 03 22 2B 80 00 00 00 00       $  ANS000:738 03 22 2B 80 00 00 00 00
  $  REQ001:730 03 22 2B 94 00 00 00 00       $  ANS001:738 03 22 2B 94 00 00 00 00

  $  000.工作电压                            $    $  V     $    $  ANS000.BYTE004  $  Y=X1*0.1;
  $  001.近光灯开关状态                      $    $        $    $  ANS001.BYTE004  $  if(((X1>>0)&1)) Y=@0210;else Y=@020f;
  $  002.远光灯开关状态                      $    $        $    $  ANS001.BYTE004  $  if(((X1>>1)&1)) Y=@0210;else Y=@020f;
  $  003.超车灯开关状态                      $    $        $    $  ANS001.BYTE004  $  if(((X1>>2)&1)) Y=@0210;else Y=@020f;
  $  004.ADB(前照灯控制器总成)开关状态       $    $        $    $  ANS001.BYTE004  $  if(((X1>>3)&1)) Y=@0210;else Y=@020f;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:730 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
