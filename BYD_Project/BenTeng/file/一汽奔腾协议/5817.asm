
    车型ID：5817

    模拟：协议模拟-->5817

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:610 02 10 01 00 00 00 00 00       $~  ANS000:611 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:610 02 3E 00 00 00 00 00 00       $!  ANS000:611 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:610 03 19 02 08 00 00 00 00       $#  ANS000:611 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/e6000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:610 04 14 FF FF FF 00 00 00       $$  ANS000:611 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:610 03 22 F1 87 00 00 00 00       $%  ANS000:611 03 22 F1 87 00 00 00 00
  $%  REQ001:610 03 22 F1 98 00 00 00 00       $%  ANS001:611 03 22 F1 98 00 00 00 00
  $%  REQ002:610 03 22 F1 99 00 00 00 00       $%  ANS002:611 03 22 F1 99 00 00 00 00
  $%  REQ003:610 03 22 F1 90 00 00 00 00       $%  ANS003:611 03 22 F1 90 00 00 00 00
  $%  REQ004:610 03 22 F1 89 00 00 00 00       $%  ANS004:611 03 22 F1 89 00 00 00 00
  $%  REQ005:610 03 22 F1 80 00 00 00 00       $%  ANS005:611 03 22 F1 80 00 00 00 00
  $%  REQ006:610 03 22 F1 83 00 00 00 00       $%  ANS006:611 03 22 F1 83 00 00 00 00
  $%  REQ007:610 03 22 F1 8A 00 00 00 00       $%  ANS007:611 03 22 F1 8A 00 00 00 00
  $%  REQ008:610 03 22 F1 8B 00 00 00 00       $%  ANS008:611 03 22 F1 8B 00 00 00 00
  $%  REQ009:610 03 22 F1 91 00 00 00 00       $%  ANS009:611 03 22 F1 91 00 00 00 00
  $%  REQ010:610 03 22 F1 92 00 00 00 00       $%  ANS010:611 03 22 F1 92 00 00 00 00
  $%  REQ011:610 03 22 F1 94 00 00 00 00       $%  ANS011:611 03 22 F1 94 00 00 00 00
  $%  REQ012:610 03 22 F1 81 00 00 00 00       $%  ANS012:611 03 22 F1 81 00 00 00 00
  $%  REQ013:610 03 22 F1 A2 00 00 00 00       $%  ANS013:611 03 22 F1 A2 00 00 00 00
  $%  REQ014:610 03 22 F1 A4 00 00 00 00       $%  ANS014:611 03 22 F1 A4 00 00 00 00
  $%  REQ015:610 03 22 F1 9C 00 00 00 00       $%  ANS015:611 03 22 F1 9C 00 00 00 00
  $%  REQ016:610 03 22 F1 00 00 00 00 00       $%  ANS016:611 03 22 F1 00 00 00 00 00
  $%  REQ017:610 03 22 F1 A1 00 00 00 00       $%  ANS017:611 03 22 F1 A1 00 00 00 00

  $%  000:FCC（汽车制造商）零件号:                    $%    $%  ANS000.BYTE004  $%  0 ASCII
  $%  001:诊断仪序列号:                               $%    $%  ANS001.BYTE004  $%  0 ASCII
  $%  002:编程日期:                                   $%    $%  ANS002.BYTE004  $%  y=SPRINTF([20%02X-%02X-%02X],X1,X2,X3);
  $%  003:VIN（车辆识别码）:                          $%    $%  ANS003.BYTE004  $%  0 ASCII
  $%  004:FCC（汽车制造商） ECU软件版本号:            $%    $%  ANS004.BYTE004  $%  0 ASCII
  $%  005:FCC（汽车制造商） ECU刷新软件版本号:        $%    $%  ANS005.BYTE004  $%  0 ASCII
  $%  006:供应商ECU刷新软件版本号:                    $%    $%  ANS006.BYTE004  $%  0 ASCII
  $%  007:供应商代码:                                 $%    $%  ANS007.BYTE004  $%  0 ASCII
  $%  008:ECU生产日期:                                $%    $%  ANS008.BYTE004  $%  y=SPRINTF([20%02X-%02X-%02X],X1,X2,X3);
  $%  009:FCC（汽车制造商） ECU硬件版本号:            $%    $%  ANS009.BYTE004  $%  0 ASCII
  $%  010:供应商ECU硬件版本号:                        $%    $%  ANS010.BYTE004  $%  0 ASCII
  $%  011:供应商ECU软件版本号:                        $%    $%  ANS011.BYTE004  $%  0 ASCII
  $%  012:FCC（汽车制造商） ECU应用软件版本号:        $%    $%  ANS012.BYTE004  $%  0 ASCII
  $%  013:车辆生产日期:                               $%    $%  ANS013.BYTE004  $%  y=SPRINTF([20%02X-%02X-%02X],X1,X2,X3);
  $%  014:供应商ECU标定软件版本号:                    $%    $%  ANS014.BYTE004  $%  0 ASCII
  $%  015:FCC（汽车制造商）标定软件版本号:            $%    $%  ANS015.BYTE004  $%  0 ASCII
  $%  016:车辆模式配置:                               $%    $%  ANS016.BYTE004  $%  if(X1==1) y=@0011;else if(X1==2) y=@03c5;else if(X1==3) y=@006a;else if(X1==0) y=@000d;else y=@0004;
  $%  017:变速器:                                     $%    $%  ANS017.BYTE004  $%  if(((X1>>0)&1)) Y=@0e88;else Y=@0e89;
  $%  018:驱动车门解锁:                               $%    $%  ANS017.BYTE004  $%  if(((X1>>1)&1)) Y=@0eeb;else Y=@0eec;
  $%  019:被动安全进入:                               $%    $%  ANS017.BYTE004  $%  if(((X1>>2)&1)) Y=@0ee9;else Y=@0eea;
  $%  020:自学习:                                     $%    $%  ANS017.BYTE004  $%  if(((X1>>3)&1)) Y=@0ee7;else Y=@0ee8;
  $%  021:自动落锁功能:                               $%    $%  ANS017.BYTE004  $%  if(((X1>>4)&1)) Y=@0ee5;else Y=@0ee6;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:610 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
