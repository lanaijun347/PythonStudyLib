
    车型ID：1008

    模拟：协议模拟-->1008

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:74D 02 10 01 00 00 00 00 00       $~  ANS000:7CD 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:74D 02 3E 80 00 00 00 00 00       $!  ANS000:7CD 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:74D 03 19 02 09 00 00 00 00       $#  ANS000:7CD 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/08000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:74D 04 14 FF FF FF 00 00 00       $$  ANS000:7CD 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:74D 03 22 F1 86 00 00 00 00       $%  ANS000:7CD 03 22 F1 86 00 00 00 00
  $%  REQ001:74D 03 22 F1 A0 00 00 00 00       $%  ANS001:7CD 03 22 F1 A0 00 00 00 00
  $%  REQ002:74D 03 22 F1 92 00 00 00 00       $%  ANS002:7CD 03 22 F1 92 00 00 00 00
  $%  REQ003:74D 03 22 F1 A1 00 00 00 00       $%  ANS003:7CD 03 22 F1 A1 00 00 00 00
  $%  REQ004:74D 03 22 F1 91 00 00 00 00       $%  ANS004:7CD 03 22 F1 91 00 00 00 00
  $%  REQ005:74D 03 22 F1 A2 00 00 00 00       $%  ANS005:7CD 03 22 F1 A2 00 00 00 00
  $%  REQ006:74D 03 22 F1 87 00 00 00 00       $%  ANS006:7CD 03 22 F1 87 00 00 00 00
  $%  REQ007:74D 03 22 F1 95 00 00 00 00       $%  ANS007:7CD 03 22 F1 95 00 00 00 00
  $%  REQ008:74D 03 22 FD 1E 00 00 00 00       $%  ANS008:7CD 03 22 FD 1E 00 00 00 00
  $%  REQ009:74D 03 22 F1 93 00 00 00 00       $%  ANS009:7CD 03 22 F1 93 00 00 00 00
  $%  REQ010:74D 03 22 F1 8C 00 00 00 00       $%  ANS010:7CD 03 22 F1 8C 00 00 00 00
  $%  REQ011:74D 03 22 F1 94 00 00 00 00       $%  ANS011:7CD 03 22 F1 94 00 00 00 00
  $%  REQ012:74D 03 22 F1 8A 00 00 00 00       $%  ANS012:7CD 03 22 F1 8A 00 00 00 00
  $%  REQ013:74D 03 22 F1 90 00 00 00 00       $%  ANS013:7CD 03 22 F1 90 00 00 00 00
  $%  REQ014:74D 03 22 F1 A8 00 00 00 00       $%  ANS014:7CD 03 22 F1 A8 00 00 00 00
  $%  REQ015:74D 03 22 F1 8B 00 00 00 00       $%  ANS015:7CD 03 22 F1 8B 00 00 00 00

  $%  000:当前诊断模式:                    $%    $%  ANS000.BYTE004  $%  HEX(X);
  $%  001:电控单元应用软件号:              $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  002:电控单元组装零件号:              $%    $%  ANS002.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  003:电控单元标定软件号:              $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:电控单元硬件号:                  $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  005:电控单元网络文件参考号:          $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号:                  $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  007:供应商应用软件版本号:            $%    $%  ANS007.BYTE004  $%  HEX(X1,X2,X3);
  $%  008:供应商标定零件号:                $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  009:供应商电控单元硬件零件号:        $%    $%  ANS009.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  010:供应商电控单元序列号:            $%    $%  ANS010.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  011:供应商电控单元软件参考号:        $%    $%  ANS011.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  012:系统供应商识别号:                $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  013:VIN码:                           $%    $%  ANS013.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  014:车辆特征信息:                    $%    $%  ANS014.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  015:电控单元制造日期:                $%    $%  ANS015.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:74D 03 22 ED 03 00 00 00 00       $  ANS000:7CD 03 22 ED 03 00 00 00 00
  $  REQ001:74D 03 22 DD 0D 00 00 00 00       $  ANS001:7CD 03 22 DD 0D 00 00 00 00
  $  REQ002:74D 03 22 ED 23 00 00 00 00       $  ANS002:7CD 03 22 ED 23 00 00 00 00
  $  REQ003:74D 03 22 ED 24 00 00 00 00       $  ANS003:7CD 03 22 ED 24 00 00 00 00
  $  REQ004:74D 03 22 ED 22 00 00 00 00       $  ANS004:7CD 03 22 ED 22 00 00 00 00
  $  REQ005:74D 03 22 ED 20 00 00 00 00       $  ANS005:7CD 03 22 ED 20 00 00 00 00
  $  REQ006:74D 03 22 ED 07 00 00 00 00       $  ANS006:7CD 03 22 ED 07 00 00 00 00
  $  REQ007:74D 03 22 DD 15 00 00 00 00       $  ANS007:7CD 03 22 DD 15 00 00 00 00
  $  REQ008:74D 03 22 ED 14 00 00 00 00       $  ANS008:7CD 03 22 ED 14 00 00 00 00
  $  REQ009:74D 03 22 ED 00 00 00 00 00       $  ANS009:7CD 03 22 ED 00 00 00 00 00
  $  REQ010:74D 03 22 DD 18 00 00 00 00       $  ANS010:7CD 03 22 DD 18 00 00 00 00
  $  REQ011:74D 03 22 DD 17 00 00 00 00       $  ANS011:7CD 03 22 DD 17 00 00 00 00
  $  REQ012:74D 03 22 C0 10 00 00 00 00       $  ANS012:7CD 03 22 C0 10 00 00 00 00
  $  REQ013:74D 03 22 ED 21 00 00 00 00       $  ANS013:7CD 03 22 ED 21 00 00 00 00

  $  000.离合器线圈请求占空比         $    $  %        $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.0019525;
  $  001.前桥离合器                   $    $           $    $  ANS001.BYTE004  $  if((x&0x01)==0x01)y=@0339;else y=@033a;
  $  002.模式切换请求                 $    $           $    $  ANS002.BYTE004  $  if(x==0x00)y=@05dc;else if(x==0x01)y=@0a3c;else if(x==0x02)y=@0a46;else if(x==0x03)y=@0a47;else if(x==0x04)y=@0515;else if(x==0x05)y=@042f;else if(x==0x06)y=@0a48;else if(x==0x07)y=@0295;else y=@01a9;
  $  003.读里程表                     $    $           $    $  ANS003.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  004.换挡电机方向                 $    $           $    $  ANS004.BYTE004  $  if(x==0x00)y=@0a49;else if(x==0x01)y=@0a4a;else if(x==0x02)y=@0a4b;else if(x==0x03)y=@0a4c;else y=@01a9;
  $  005.换挡电机位置                 $    $           $    $  ANS005.BYTE004  $  if(x==0x00)y=@0a4d;else if(x==0x01)y=@0136;else if(x==0x02)y=@01e5;else if(x==0x03)y=@0a4e;else if(x==0x04)y=@0a4f;else if(x==0x05)y=@0a46;else if(x==0x06)y=@0a50;else if(x==0x07)y=@0515;else if(x==0x08)y=@0a51;else if(x==0x09)y=@0a52;else if(x==0x0A)y=@01e5;else y=@01a9;
  $  006.换挡电机位置编码             $    $           $    $  ANS006.BYTE004  $  y=x;
  $  007.换挡电机卡滞在低速档位       $    $           $    $  ANS007.BYTE004  $  if((x&0x01)==0x01)y=@0a55;else y=@0a56;
  $  008.操作系统模式                 $    $           $    $  ANS008.BYTE004  $  if(x==0x00)y=@00b1;else if(x==0x01)y=@05dc;else if(x==0x02)y=@0a3c;else if(x==0x03)y=@0a3d;else if(x==0x04)y=@0515;else if(x==0x05)y=@0a3e;else if(x==0x06)y=@0a3f;else if(x==0x07)y=@0a40;else if(x==0x08)y=@0295;else y=@01a9;
  $  009.系统电压                     $    $  V        $    $  ANS009.BYTE004  $  y=(x1*256+x2)*0.000488;
  $  010.离合器状态                   $    $           $    $  ANS010.BYTE004  $  if((x&0x01)==0x01)y=@0a41;else y=@0a42;
  $  011.变速箱空挡状态               $    $           $    $  ANS011.BYTE004  $  if((x&0x01)==0x01)y=@00ca;else y=@00c9;
  $  012.变速器控制单元类型           $    $           $    $  ANS012.BYTE004  $  if((x&0x40)==0x40)y=@003a;else y=@0a43;
  $  013.前桥离合器类型               $    $           $    $  ANS012.BYTE004  $  if((x&0x02)==0x02)y=@0a44;else y=@0a45;
  $  014.车速                         $    $  km/h     $    $  ANS013.BYTE004  $  y=(x1*256+x2)*0.0078125;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:74D 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
