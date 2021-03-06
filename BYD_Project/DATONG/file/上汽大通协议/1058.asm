
    车型ID：1058

    模拟：协议模拟-->1058

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k

进入命令:

  $~  REQ000:721 02 10 01 00 00 00 00 00       $~  ANS000:7A1 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:721 02 3E 80 00 00 00 00 00       $!  ANS000:7A1 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:721 03 19 02 09 00 00 00 00       $#  ANS000:7A1 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/58000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:721 04 14 FF FF FF 00 00 00       $$  ANS000:7A1 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:721 03 22 F1 A0 00 00 00 00       $%  ANS000:7A1 03 22 F1 A0 00 00 00 00
  $%  REQ001:721 03 22 F1 83 00 00 00 00       $%  ANS001:7A1 03 22 F1 83 00 00 00 00
  $%  REQ002:721 03 22 F1 A1 00 00 00 00       $%  ANS002:7A1 03 22 F1 A1 00 00 00 00
  $%  REQ003:721 03 22 F1 91 00 00 00 00       $%  ANS003:7A1 03 22 F1 91 00 00 00 00
  $%  REQ004:721 03 22 F1 A2 00 00 00 00       $%  ANS004:7A1 03 22 F1 A2 00 00 00 00
  $%  REQ005:721 03 22 F1 87 00 00 00 00       $%  ANS005:7A1 03 22 F1 87 00 00 00 00
  $%  REQ006:721 03 22 F1 10 00 00 00 00       $%  ANS006:7A1 03 22 F1 10 00 00 00 00
  $%  REQ007:721 03 22 F1 94 00 00 00 00       $%  ANS007:7A1 03 22 F1 94 00 00 00 00
  $%  REQ008:721 03 22 F1 8A 00 00 00 00       $%  ANS008:7A1 03 22 F1 8A 00 00 00 00
  $%  REQ009:721 03 22 F1 90 00 00 00 00       $%  ANS009:7A1 03 22 F1 90 00 00 00 00
  $%  REQ010:721 03 22 F1 A8 00 00 00 00       $%  ANS010:7A1 03 22 F1 A8 00 00 00 00
  $%  REQ011:721 03 22 F1 8B 00 00 00 00       $%  ANS011:7A1 03 22 F1 8B 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  002:电控单元标定软件号:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元硬件号:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:电控单元网络文件参考号:          $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  005:电控单元零件号:                  $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号(上次):            $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  007:测试参考号(上次):                $%    $%  ANS006.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  008:里程读数(上次)KM:                $%    $%  ANS006.BYTE015  $%  y=(x1*256*256+x2*256+x3);
  $%  009:供应商电控单元软件参考号:        $%    $%  ANS007.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  010:系统供应商识别码:                $%    $%  ANS008.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  011:VIN码:                           $%    $%  ANS009.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  012:车辆特征信息:                    $%    $%  ANS010.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  013:电控单元制造日期:                $%    $%  ANS011.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:721 03 22 FD 83 00 00 00 00       $  ANS000:7A1 03 22 FD 83 00 00 00 00
  $  REQ001:721 03 22 FD 85 00 00 00 00       $  ANS001:7A1 03 22 FD 85 00 00 00 00
  $  REQ002:721 03 22 FD 82 00 00 00 00       $  ANS002:7A1 03 22 FD 82 00 00 00 00
  $  REQ003:721 03 22 FD 84 00 00 00 00       $  ANS003:7A1 03 22 FD 84 00 00 00 00
  $  REQ004:721 03 22 FD 86 00 00 00 00       $  ANS004:7A1 03 22 FD 86 00 00 00 00
  $  REQ005:721 03 22 FD 81 00 00 00 00       $  ANS005:7A1 03 22 FD 81 00 00 00 00

  $  000.后压缩机转速         $    $  rpm          $    $  ANS000.BYTE004  $  y=x*50;
  $  001.后蒸发器温度         $    $  degree C     $    $  ANS001.BYTE004  $  y=x*0.5-30.0;
  $  002.前压缩机转速         $    $  rpm          $    $  ANS002.BYTE004  $  y=x*50;
  $  003.前蒸发器温度         $    $  degree C     $    $  ANS003.BYTE004  $  y=x*0.5-30.0;
  $  004.后空调开关状态       $    $               $    $  ANS004.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  005.前空调开关状态       $    $               $    $  ANS004.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  006.后压缩机             $    $               $    $  ANS005.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  007.前压缩机             $    $               $    $  ANS005.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:721 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
