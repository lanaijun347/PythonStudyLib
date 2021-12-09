
    车型ID：10e3

    模拟：协议模拟-->10e3

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:729 02 10 01 00 00 00 00 00       $~  ANS000:7A9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:729 02 3E 80 00 00 00 00 00       $!  ANS000:7A9 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:729 03 19 02 09 00 00 00 00       $#  ANS000:7A9 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/e0000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:729 04 14 FF FF FF 00 00 00       $$  ANS000:7A9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:729 03 22 F1 A0 00 00 00 00       $%  ANS000:7A9 03 22 F1 A0 00 00 00 00
  $%  REQ001:729 03 22 F1 83 00 00 00 00       $%  ANS001:7A9 03 22 F1 83 00 00 00 00
  $%  REQ002:729 03 22 F1 A1 00 00 00 00       $%  ANS002:7A9 03 22 F1 A1 00 00 00 00
  $%  REQ003:729 03 22 F1 91 00 00 00 00       $%  ANS003:7A9 03 22 F1 91 00 00 00 00
  $%  REQ004:729 03 22 F1 8B 00 00 00 00       $%  ANS004:7A9 03 22 F1 8B 00 00 00 00
  $%  REQ005:729 03 22 F1 A2 00 00 00 00       $%  ANS005:7A9 03 22 F1 A2 00 00 00 00
  $%  REQ006:729 03 22 F1 87 00 00 00 00       $%  ANS006:7A9 03 22 F1 87 00 00 00 00
  $%  REQ007:729 03 22 F1 10 00 00 00 00       $%  ANS007:7A9 03 22 F1 10 00 00 00 00
  $%  REQ008:729 03 22 F1 92 00 00 00 00       $%  ANS008:7A9 03 22 F1 92 00 00 00 00
  $%  REQ009:729 03 22 F1 8C 00 00 00 00       $%  ANS009:7A9 03 22 F1 8C 00 00 00 00
  $%  REQ010:729 03 22 F1 94 00 00 00 00       $%  ANS010:7A9 03 22 F1 94 00 00 00 00
  $%  REQ011:729 03 22 F1 8A 00 00 00 00       $%  ANS011:7A9 03 22 F1 8A 00 00 00 00
  $%  REQ012:729 03 22 F1 90 00 00 00 00       $%  ANS012:7A9 03 22 F1 90 00 00 00 00
  $%  REQ013:729 03 22 F1 A8 00 00 00 00       $%  ANS013:7A9 03 22 F1 A8 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  002:电控单元标定软件号:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元硬件号:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:年:                              $%    $%  ANS004.BYTE004  $%  HEX(X1);
  $%  005:月:                              $%    $%  ANS004.BYTE005  $%  HEX(X1);
  $%  006:日:                              $%    $%  ANS004.BYTE006  $%  HEX(X1);
  $%  007:电控单元网络参考号:              $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  008:电控单元零件号:                  $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  009:电控单元零件号(上次):            $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  010:测试工具参考号(上次):            $%    $%  ANS007.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  011:里程读数(上次):                  $%    $%  ANS007.BYTE015  $%  HEX(X1,X2,X3);
  $%  012:供应商电控单元硬件参考号:        $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  013:供应商电控单元序列号:            $%    $%  ANS009.BYTE004  $%  y=UINT40(x1,x2,x3,x4,x5);
  $%  014:产品线序列号:                    $%    $%  ANS009.BYTE009  $%  ASCII(X1,X2);
  $%  015:年 月 日:                        $%    $%  ANS009.BYTE011  $%  HEX(X1,X2,X3);
  $%  016:供应商电控单元软件参考号:        $%    $%  ANS010.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  017:系统供应商标识号:                $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  018:车辆识别代码:                    $%    $%  ANS012.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  019:车辆特征信息:                    $%    $%  ANS013.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:729 03 22 BD 04 00 00 00 00       $  ANS000:7A9 03 22 BD 04 00 00 00 00
  $  REQ001:729 03 22 BD 03 00 00 00 00       $  ANS001:7A9 03 22 BD 03 00 00 00 00
  $  REQ002:729 03 22 FD 02 00 00 00 00       $  ANS002:7A9 03 22 FD 02 00 00 00 00
  $  REQ003:729 03 22 BD 02 00 00 00 00       $  ANS003:7A9 03 22 BD 02 00 00 00 00
  $  REQ004:729 03 22 01 12 00 00 00 00       $  ANS004:7A9 03 22 01 12 00 00 00 00

  $  000.回位电机开关霍尔2状态       $    $        $    $  ANS000.BYTE004  $  if(((x&0x20)>>5)==0) y=@0264;else if(((x&0x20)>>5)==1) y=@0265;else y=@0035;
  $  001.回位电机开关霍尔1状态       $    $        $    $  ANS000.BYTE004  $  if(((x&0x10)>>4)==0) y=@0264;else if(((x&0x10)>>4)==1) y=@0265;else y=@0035;
  $  002.M档开关霍尔2状态            $    $        $    $  ANS000.BYTE004  $  if(((x&0x08)>>3)==0) y=@0264;else if(((x&0x08)>>3)==1) y=@0265;else y=@0035;
  $  003.M档开关霍尔1状态            $    $        $    $  ANS000.BYTE004  $  if(((x&0x04)>>2)==0) y=@0264;else if(((x&0x04)>>2)==1) y=@0265;else y=@0035;
  $  004.P档按钮状态                 $    $        $    $  ANS000.BYTE004  $  if(((x&0x02)>>1)==0) y=@05b9;else if(((x&0x02)>>1)==1) y=@1048;else y=@0035;
  $  005.unlock 按钮状态             $    $        $    $  ANS000.BYTE004  $  if((x&0x01)==0) y=@05b9;else if((x&0x01)==1) y=@1048;else y=@0035;
  $  006.标定数据 1                  $    $        $    $  ANS001.BYTE004  $  y=(x1*256+x2);
  $  007.标定数据 2                  $    $        $    $  ANS001.BYTE006  $  y=(x1*256+x2);
  $  008.标定数据 3                  $    $        $    $  ANS001.BYTE008  $  y=(x1*256+x2);
  $  009.标定数据 4                  $    $        $    $  ANS001.BYTE010  $  y=(x1*256+x2);
  $  010.标定数据 5                  $    $        $    $  ANS001.BYTE012  $  y=(x1*256+x2);
  $  011.标定数据 6                  $    $        $    $  ANS001.BYTE014  $  y=(x1*256+x2);
  $  012.标定数据 7                  $    $        $    $  ANS001.BYTE016  $  y=(x1*256+x2);
  $  013.标定数据 8                  $    $        $    $  ANS001.BYTE018  $  y=(x1*256+x2);
  $  014.标定数据 9                  $    $        $    $  ANS001.BYTE020  $  y=(x1*256+x2);
  $  015.标定数据 10                 $    $        $    $  ANS001.BYTE022  $  y=(x1*256+x2);
  $  016.GSM随档灯控制               $    $        $    $  ANS002.BYTE005  $  if(x==0) y=@0187;else if(x==1) y=@0263;else if(x==10) y=@1049;else if(x==11) y=@104a;else if(x==2) y=@0262;else if(x==3) y=@0261;else if(x==4) y=@0508;else if(x==5) y=@0fcf;else if(x==6) y=@104b;else if(x==7) y=@104c;else if(x==8) y=@104d;else if(x==9) y=@0fd0;else y=@0035;
  $  017.GSM实时位置信息 1           $    $        $    $  ANS003.BYTE004  $  y=(x1*256+x2);
  $  018.GSM实时位置信息 2           $    $        $    $  ANS003.BYTE006  $  y=(x1*256+x2);
  $  019.供应电压                    $    $  V     $    $  ANS004.BYTE004  $  y=x*0.1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:729 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
