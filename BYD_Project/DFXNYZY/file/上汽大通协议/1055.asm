
    车型ID：1055

    模拟：协议模拟-->1055

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k

进入命令:

  $~  REQ000:745 02 10 01 00 00 00 00 00       $~  ANS000:7C5 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:745 02 3E 80 00 00 00 00 00       $!  ANS000:7C5 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:745 03 19 02 09 00 00 00 00       $#  ANS000:7C5 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/55000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:745 04 14 FF FF FF 00 00 00       $$  ANS000:7C5 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:745 03 22 F1 A0 00 00 00 00       $%  ANS000:7C5 03 22 F1 A0 00 00 00 00
  $%  REQ001:745 03 22 F1 83 00 00 00 00       $%  ANS001:7C5 03 22 F1 83 00 00 00 00
  $%  REQ002:745 03 22 F1 A1 00 00 00 00       $%  ANS002:7C5 03 22 F1 A1 00 00 00 00
  $%  REQ003:745 03 22 F1 91 00 00 00 00       $%  ANS003:7C5 03 22 F1 91 00 00 00 00
  $%  REQ004:745 03 22 F1 A2 00 00 00 00       $%  ANS004:7C5 03 22 F1 A2 00 00 00 00
  $%  REQ005:745 03 22 F1 87 00 00 00 00       $%  ANS005:7C5 03 22 F1 87 00 00 00 00
  $%  REQ006:745 03 22 F1 10 00 00 00 00       $%  ANS006:7C5 03 22 F1 10 00 00 00 00
  $%  REQ007:745 03 22 F1 92 00 00 00 00       $%  ANS007:7C5 03 22 F1 92 00 00 00 00
  $%  REQ008:745 03 22 F1 8C 00 00 00 00       $%  ANS008:7C5 03 22 F1 8C 00 00 00 00
  $%  REQ009:745 03 22 F1 94 00 00 00 00       $%  ANS009:7C5 03 22 F1 94 00 00 00 00
  $%  REQ010:745 03 22 F1 8A 00 00 00 00       $%  ANS010:7C5 03 22 F1 8A 00 00 00 00
  $%  REQ011:745 03 22 F1 90 00 00 00 00       $%  ANS011:7C5 03 22 F1 90 00 00 00 00
  $%  REQ012:745 03 22 F1 A8 00 00 00 00       $%  ANS012:7C5 03 22 F1 A8 00 00 00 00
  $%  REQ013:745 03 22 F1 8B 00 00 00 00       $%  ANS013:7C5 03 22 F1 8B 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  002:电控单元标定软件号:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元硬件号:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:电控单元网络文件参考号:          $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  005:电控单元零件号:                  $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号(上次):            $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  007:测试参考号(上次):                $%    $%  ANS006.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  008:里程读数(上次)KM:                $%    $%  ANS006.BYTE015  $%  y=(x1*256*256+x2*256+x3);
  $%  009:供应商电控单元硬件参考号:        $%    $%  ANS007.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  010:供应商电控单元序列号:            $%    $%  ANS008.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:供应商电控单元软件参考号:        $%    $%  ANS009.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  012:系统供应商识别码:                $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  013:VIN码:                           $%    $%  ANS011.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  014:车辆特征信息:                    $%    $%  ANS012.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  015:电控单元制造日期:                $%    $%  ANS013.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:745 03 22 A0 01 00 00 00 00       $  ANS000:7C5 03 22 A0 01 00 00 00 00
  $  REQ001:745 03 22 01 01 00 00 00 00       $  ANS001:7C5 03 22 01 01 00 00 00 00
  $  REQ002:745 03 22 01 00 00 00 00 00       $  ANS002:7C5 03 22 01 00 00 00 00 00

  $  000.车速(来自CAN)                        $    $  km/h         $    $  ANS000.BYTE007  $  y=(x1*256+x2)*0.0078;
  $  001.方向盘转角传感器(来自CAN)            $    $  rad          $    $  ANS000.BYTE009  $  y=(x1*256+x2)*0.5-900.0;
  $  002.Delta方向盘转角传感器(来自CAN)       $    $  rad/s        $    $  ANS000.BYTE011  $  y=(x1*256+x2)*0.5-2048.0;
  $  003.发动机/电机状态(来自CAN)             $    $               $    $  ANS000.BYTE013  $  if((x&0xF0)==0x00) y=@000f;else if((x&0xF0)==0x10) y=@009d;else y=@01a9;
  $  004.点火开关状态                         $    $               $    $  ANS000.BYTE013  $  if((x&0x07)==0x00) y=@000f;else if((x&0x07)==0x01) y=@0a27;else if((x&0x07)==0x02) y=@0010;else if((x&0x07)==0x04) y=@009d;else if((x&0x07)==0x07) y=@009e;else y=@01a9;
  $  005.电瓶电压                             $    $  V            $    $  ANS000.BYTE014  $  y=x*0.1;
  $  006.EPS电机电流测量值                    $    $  A            $    $  ANS000.BYTE017  $  y=x;
  $  007.EPS电机转速测量值                    $    $  rpm          $    $  ANS000.BYTE018  $  y=x*30;
  $  008.EPS控制电机转速                      $    $  rpm          $    $  ANS000.BYTE019  $  y=x*30;
  $  009.EPS模块温度测量值                    $    $  degree C     $    $  ANS000.BYTE020  $  y=x-50;
  $  010.EPS模块电压测量值                    $    $  V            $    $  ANS000.BYTE021  $  y=x*0.1;
  $  011.历史讯问记录                         $    $               $    $  ANS001.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  012.刷写调节计数器                       $    $               $    $  ANS002.BYTE004  $  y=x1*256*256*256+x2*256*256+x3*256+x4;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:745 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
