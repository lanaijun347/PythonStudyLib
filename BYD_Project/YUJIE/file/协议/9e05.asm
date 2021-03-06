
    车型ID：9e05

    模拟：协议模拟-->9e05

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~790

进入命令:

  $~  REQ000:710 02 10 01 00 00 00 00 00       $~  ANS000:790 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:710 02 3E 00 00 00 00 00 00       $!  ANS000:790 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:710 03 19 02 09 00 00 00 00       $#  ANS000:790 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/23000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:710 04 14 FF FF FF 00 00 00       $$  ANS000:790 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:710 03 22 F1 87 00 00 00 00       $%  ANS000:790 03 22 F1 87 00 00 00 00
  $%  REQ001:710 03 22 F1 8A 00 00 00 00       $%  ANS001:790 03 22 F1 8A 00 00 00 00
  $%  REQ002:710 03 22 F1 93 00 00 00 00       $%  ANS002:790 03 22 F1 93 00 00 00 00
  $%  REQ003:710 03 22 F1 95 00 00 00 00       $%  ANS003:790 03 22 F1 95 00 00 00 00
  $%  REQ004:710 03 22 F1 98 00 00 00 00       $%  ANS004:790 03 22 F1 98 00 00 00 00
  $%  REQ005:710 03 22 F1 99 00 00 00 00       $%  ANS005:790 03 22 F1 99 00 00 00 00

  $%  000:零件号:              $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  001:供应商名称:          $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:硬件版本号:          $%    $%  ANS002.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6);
  $%  003:硬件版本号:          $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%s%02X%s%02X%s%02X%02X%02X%02X],@008e,X1,@008f,X2,@0090,X6,X5,X4,X3);
  $%  004:软件版本号:          $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%s%02X%s%02X%s%02X%02X%02X%02X],@008e,X1,@009a,X2,@0090,X6,X5,X4,X3);
  $%  005:测试仪序列号:        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  006:ECU编程日期:         $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%02X%s%02X%s%02X%s],X3,@0031,X2,@0032,X1,@0033);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:710 03 22 F2 21 00 00 00 00       $  ANS000:790 03 22 F2 21 00 00 00 00
  $  REQ001:710 03 22 F2 22 00 00 00 00       $  ANS001:790 03 22 F2 22 00 00 00 00
  $  REQ002:710 03 22 F2 23 00 00 00 00       $  ANS002:790 03 22 F2 23 00 00 00 00
  $  REQ003:710 03 22 F2 24 00 00 00 00       $  ANS003:790 03 22 F2 24 00 00 00 00
  $  REQ004:710 03 22 F2 25 00 00 00 00       $  ANS004:790 03 22 F2 25 00 00 00 00
  $  REQ005:710 03 22 F2 26 00 00 00 00       $  ANS005:790 03 22 F2 26 00 00 00 00
  $  REQ006:710 03 22 F2 27 00 00 00 00       $  ANS006:790 03 22 F2 27 00 00 00 00
  $  REQ007:710 03 22 F2 28 00 00 00 00       $  ANS007:790 03 22 F2 28 00 00 00 00
  $  REQ008:710 03 22 F2 29 00 00 00 00       $  ANS008:790 03 22 F2 29 00 00 00 00
  $  REQ009:710 03 22 F2 2A 00 00 00 00       $  ANS009:790 03 22 F2 2A 00 00 00 00
  $  REQ010:710 03 22 F2 2B 00 00 00 00       $  ANS010:790 03 22 F2 2B 00 00 00 00
  $  REQ011:710 03 22 F2 2C 00 00 00 00       $  ANS011:790 03 22 F2 2C 00 00 00 00
  $  REQ012:710 03 22 F2 2D 00 00 00 00       $  ANS012:790 03 22 F2 2D 00 00 00 00
  $  REQ013:710 03 22 F2 2E 00 00 00 00       $  ANS013:790 03 22 F2 2E 00 00 00 00
  $  REQ014:710 03 22 F2 2F 00 00 00 00       $  ANS014:790 03 22 F2 2F 00 00 00 00
  $  REQ015:710 03 22 F2 30 00 00 00 00       $  ANS015:790 03 22 F2 30 00 00 00 00
  $  REQ016:710 03 22 F2 31 00 00 00 00       $  ANS016:790 03 22 F2 31 00 00 00 00
  $  REQ017:710 03 22 F2 32 00 00 00 00       $  ANS017:790 03 22 F2 32 00 00 00 00
  $  REQ018:710 03 22 F2 33 00 00 00 00       $  ANS018:790 03 22 F2 33 00 00 00 00
  $  REQ019:710 03 22 F2 34 00 00 00 00       $  ANS019:790 03 22 F2 34 00 00 00 00

  $  000.电池充放电                                $    $                $    $  ANS000.BYTE004  $  switxh(x1&0x03) 0x00: y=@0058;0x01: y=@0059;0x02: y=@005a;0x03: y=@004a;default: y=@0008;
  $  001.BMS快充接触器状态                         $    $                $    $  ANS000.BYTE004  $  if(x1&0x04) y=@0042;else y=@0022;
  $  002.电池加热继电器状态                        $    $                $    $  ANS000.BYTE004  $  if(x1&0x08) y=@0042;else y=@0022;
  $  003.BMS反馈主正接触器状态                     $    $                $    $  ANS000.BYTE004  $  if(x1&0x10) y=@0042;else y=@0022;
  $  004.BMS反馈预充接触器状态                     $    $                $    $  ANS000.BYTE004  $  if(x1&0x20) y=@0042;else y=@0022;
  $  005.BMS反馈主负继电器状态                     $    $                $    $  ANS000.BYTE004  $  if(x1&0x40) y=@0042;else y=@0022;
  $  006.充电模式                                  $    $                $    $  ANS001.BYTE004  $  switxh(x1&0x07) 0x00: y=@0053;0x01: y=@0054;0x02: y=@0055;0x03: y=@0056;0x04: y=@0057;default: y=@0008;
  $  007.BMS状态模式(BMS Relate statue Mode)       $    $                $    $  ANS001.BYTE004  $  switxh(x1&0x38) 0x08: y=@000b;0x10: y=@003e;0x18: y=@0052;0x20: y=@0040;default: y=@004a;
  $  008.绝缘电阻值                                $    $  KΩ           $    $  ANS002.BYTE004  $  y=x1*256+x2;
  $  009.母线电流                                  $    $  A             $    $  ANS003.BYTE004  $  y=x1*256*0.1+x2*0.1-1000;
  $  010.电池电压                                  $    $  V             $    $  ANS004.BYTE004  $  y=x1*256*0.1+x2*0.1;
  $  011.电池当前电量                              $    $  %             $    $  ANS005.BYTE004  $  y=x1;
  $  012.单体电压最大值编号                        $    $                $    $  ANS006.BYTE004  $  y=x1;
  $  013.最大单体电压值                            $    $  V             $    $  ANS007.BYTE004  $  y=x1*256*0.001+x2*0.001;
  $  014.单体电压最低值编号                        $    $                $    $  ANS008.BYTE004  $  y=x1;
  $  015.最小单体电压值                            $    $  V             $    $  ANS009.BYTE004  $  y=x1*256*0.001+x2*0.001;
  $  016.探针温度最大值编号                        $    $                $    $  ANS010.BYTE004  $  y=x1;
  $  017.最高探针温度值                            $    $  degree C      $    $  ANS011.BYTE004  $  y=x1-40;
  $  018.探针温度最小值编号                        $    $                $    $  ANS012.BYTE004  $  y=x1;
  $  019.最低探针温度值                            $    $  degree C      $    $  ANS013.BYTE004  $  y=x1-40;
  $  020.BMS最大持续充电功率                       $    $  A             $    $  ANS014.BYTE004  $  y=x1;
  $  021.BMS最大持续放电功率                       $    $  A             $    $  ANS015.BYTE004  $  y=x1*10;
  $  022.CP连接状态                                $    $                $    $  ANS016.BYTE004  $  switxh(x1&0x07) 0x00: y=@0034;0x01: y=@0035;0x02: y=@004f;0x03: y=@0050;0x07: y=@0051;default: y=@0008;
  $  023.S2状态                                    $    $                $    $  ANS016.BYTE004  $  switxh(x1&0x18) 0x00: y=@0034;0x08: y=@004b;0x10: y=@004c;default: y=@0008;
  $  024.CC连接状态                                $    $                $    $  ANS016.BYTE004  $  switxh(x1&0x60) 0x00: y=@0034;0x20: y=@004d;0x40: y=@004e;default: y=@0008;
  $  025.CC2连接状态                               $    $                $    $  ANS016.BYTE004  $  if(x1&0x80) y=@0042;else y=@0022;
  $  026.BMS最大10S放电功率                        $    $  KW            $    $  ANS017.BYTE004  $  y=x1*10;
  $  027.主正继电器带载切断                        $    $                $    $  ANS018.BYTE004  $  y=x1;
  $  028.快充继电器带载切断                        $    $                $    $  ANS019.BYTE004  $  y=x1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:710 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
