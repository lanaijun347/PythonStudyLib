
    车型ID：571a

    模拟：协议模拟-->571a

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:61C 02 10 01 00 00 00 00 00       $~  ANS000:61D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:61C 02 3E 00 00 00 00 00 00       $!  ANS000:61D 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:61C 03 19 02 08 00 00 00 00       $#  ANS000:61D 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ba000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:61C 04 14 FF FF FF 00 00 00       $$  ANS000:61D 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:61C 03 22 F1 87 00 00 00 00       $%  ANS000:61D 03 22 F1 87 00 00 00 00
  $%  REQ001:61C 03 22 F1 98 00 00 00 00       $%  ANS001:61D 03 22 F1 98 00 00 00 00
  $%  REQ002:61C 03 22 F1 99 00 00 00 00       $%  ANS002:61D 03 22 F1 99 00 00 00 00
  $%  REQ003:61C 03 22 F1 90 00 00 00 00       $%  ANS003:61D 03 22 F1 90 00 00 00 00
  $%  REQ004:61C 03 22 F1 89 00 00 00 00       $%  ANS004:61D 03 22 F1 89 00 00 00 00
  $%  REQ005:61C 03 22 F1 80 00 00 00 00       $%  ANS005:61D 03 22 F1 80 00 00 00 00
  $%  REQ006:61C 03 22 F1 83 00 00 00 00       $%  ANS006:61D 03 22 F1 83 00 00 00 00
  $%  REQ007:61C 03 22 F1 8A 00 00 00 00       $%  ANS007:61D 03 22 F1 8A 00 00 00 00
  $%  REQ008:61C 03 22 F1 8B 00 00 00 00       $%  ANS008:61D 03 22 F1 8B 00 00 00 00
  $%  REQ009:61C 03 22 F1 91 00 00 00 00       $%  ANS009:61D 03 22 F1 91 00 00 00 00
  $%  REQ010:61C 03 22 F1 92 00 00 00 00       $%  ANS010:61D 03 22 F1 92 00 00 00 00
  $%  REQ011:61C 03 22 F1 94 00 00 00 00       $%  ANS011:61D 03 22 F1 94 00 00 00 00
  $%  REQ012:61C 03 22 F1 81 00 00 00 00       $%  ANS012:61D 03 22 F1 81 00 00 00 00
  $%  REQ013:61C 03 22 F1 A2 00 00 00 00       $%  ANS013:61D 03 22 F1 A2 00 00 00 00
  $%  REQ014:61C 03 22 F1 8C 00 00 00 00       $%  ANS014:61D 03 22 F1 8C 00 00 00 00
  $%  REQ015:61C 03 22 F1 93 00 00 00 00       $%  ANS015:61D 03 22 F1 93 00 00 00 00
  $%  REQ016:61C 03 22 F1 95 00 00 00 00       $%  ANS016:61D 03 22 F1 95 00 00 00 00
  $%  REQ017:61C 03 22 F1 A1 00 00 00 00       $%  ANS017:61D 03 22 F1 A1 00 00 00 00

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
  $%  015:供应商ECU硬件版本号:                        $%    $%  ANS015.BYTE004  $%  0 ASCII
  $%  016:供应商ECU软件零件号:                        $%    $%  ANS016.BYTE004  $%  0 ASCII
  $%  017:车辆类型:                                   $%    $%  ANS017.BYTE004  $%  if((X1&0x07)==0) y=@0d7a;else if((X1&0x07)==1) y=@0d7c;else if((X1&0x07)==2) y=@0d7d;else y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:61C 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
