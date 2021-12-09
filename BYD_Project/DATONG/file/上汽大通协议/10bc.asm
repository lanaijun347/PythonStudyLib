
    车型ID：10bc

    模拟：协议模拟-->10bc

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:722 02 10 01 00 00 00 00 00       $~  ANS000:7A2 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:722 02 3E 80 00 00 00 00 00       $!  ANS000:7A2 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:722 03 19 02 09 00 00 00 00       $#  ANS000:7A2 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/b9000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:722 04 14 FF FF FF 00 00 00       $$  ANS000:7A2 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:722 03 22 F1 A0 00 00 00 00       $%  ANS000:7A2 03 22 F1 A0 00 00 00 00
  $%  REQ001:722 03 22 F1 83 00 00 00 00       $%  ANS001:7A2 03 22 F1 83 00 00 00 00
  $%  REQ002:722 03 22 F1 A1 00 00 00 00       $%  ANS002:7A2 03 22 F1 A1 00 00 00 00
  $%  REQ003:722 03 22 F1 91 00 00 00 00       $%  ANS003:7A2 03 22 F1 91 00 00 00 00
  $%  REQ004:722 03 22 F1 8B 00 00 00 00       $%  ANS004:7A2 03 22 F1 8B 00 00 00 00
  $%  REQ005:722 03 22 F1 A2 00 00 00 00       $%  ANS005:7A2 03 22 F1 A2 00 00 00 00
  $%  REQ006:722 03 22 F1 87 00 00 00 00       $%  ANS006:7A2 03 22 F1 87 00 00 00 00
  $%  REQ007:722 03 22 F1 10 00 00 00 00       $%  ANS007:7A2 03 22 F1 10 00 00 00 00
  $%  REQ008:722 03 22 F1 92 00 00 00 00       $%  ANS008:7A2 03 22 F1 92 00 00 00 00
  $%  REQ009:722 03 22 F1 8C 00 00 00 00       $%  ANS009:7A2 03 22 F1 8C 00 00 00 00
  $%  REQ010:722 03 22 F1 94 00 00 00 00       $%  ANS010:7A2 03 22 F1 94 00 00 00 00
  $%  REQ011:722 03 22 F1 8A 00 00 00 00       $%  ANS011:7A2 03 22 F1 8A 00 00 00 00
  $%  REQ012:722 03 22 F1 90 00 00 00 00       $%  ANS012:7A2 03 22 F1 90 00 00 00 00
  $%  REQ013:722 03 22 F1 A8 00 00 00 00       $%  ANS013:7A2 03 22 F1 A8 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE011  $%  ASCII(X1,X2,X3);
  $%  002:电控单元标定软件号:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元硬件号:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:电控单元制造日期:                $%    $%  ANS004.BYTE004  $%  ASCII(X1,X2,X3);
  $%  005:电控单元网络文件参考号:          $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号:                  $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  007:电控单元零件号（上次）:          $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  008:测试工具参考号（上次）:          $%    $%  ANS007.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  009:里程读数（上次）KM:              $%    $%  ANS007.BYTE015  $%  y=x1*256*256+x2*256+x3;
  $%  010:供应商电控单元硬件参考号:        $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:供应商电控单元序列号:            $%    $%  ANS009.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  012:供应商电控单元软件参考号:        $%    $%  ANS010.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  013:系统供应商识别号:                $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  014:VIN:                             $%    $%  ANS012.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  015:车辆特征信息:                    $%    $%  ANS013.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:722 03 22 E0 05 00 00 00 00       $  ANS000:7A2 03 22 E0 05 00 00 00 00
  $  REQ001:722 03 22 E0 03 00 00 00 00       $  ANS001:7A2 03 22 E0 03 00 00 00 00
  $  REQ002:722 03 22 E0 01 00 00 00 00       $  ANS002:7A2 03 22 E0 01 00 00 00 00
  $  REQ003:722 03 22 E0 00 00 00 00 00       $  ANS003:7A2 03 22 E0 00 00 00 00 00
  $  REQ004:722 03 22 E0 02 00 00 00 00       $  ANS004:7A2 03 22 E0 02 00 00 00 00
  $  REQ005:722 03 22 E0 04 00 00 00 00       $  ANS005:7A2 03 22 E0 04 00 00 00 00

  $  000.硬件状态       $    $        $    $  ANS000.BYTE004  $  if(x==0) y=@00e5;else if(x==1) y=@0135;else y=@0004;
  $  001.输入电压       $    $  V     $    $  ANS001.BYTE004  $  y=(x1*256+x2);
  $  002.输出电流       $    $  A     $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.05;
  $  003.输出电压       $    $  V     $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.125;
  $  004.水槽温度       $    $        $    $  ANS004.BYTE004  $  y=((x&0x7F)-(x&0x80))-40;
  $  005.系统状态       $    $        $    $  ANS005.BYTE004  $  if(x==0) y=@0029;else if(x==1) y=@002a;else if(x==2) y=@0b97;else y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:722 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
