
    车型ID：10be

    模拟：协议模拟-->10be

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

  $*$*DTC/bb000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:722 04 14 FF FF FF 00 00 00       $$  ANS000:7A2 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:722 03 22 F1 A0 00 00 00 00       $%  ANS000:7A2 03 22 F1 A0 00 00 00 00
  $%  REQ001:722 03 22 F1 83 00 00 00 00       $%  ANS001:7A2 03 22 F1 83 00 00 00 00
  $%  REQ002:722 03 22 F1 A1 00 00 00 00       $%  ANS002:7A2 03 22 F1 A1 00 00 00 00
  $%  REQ003:722 03 22 F1 91 00 00 00 00       $%  ANS003:7A2 03 22 F1 91 00 00 00 00
  $%  REQ004:722 03 22 F1 A2 00 00 00 00       $%  ANS004:7A2 03 22 F1 A2 00 00 00 00
  $%  REQ005:722 03 22 F1 87 00 00 00 00       $%  ANS005:7A2 03 22 F1 87 00 00 00 00
  $%  REQ006:722 03 22 F1 10 00 00 00 00       $%  ANS006:7A2 03 22 F1 10 00 00 00 00
  $%  REQ007:722 03 22 F1 92 00 00 00 00       $%  ANS007:7A2 03 22 F1 92 00 00 00 00
  $%  REQ008:722 03 22 F1 8C 00 00 00 00       $%  ANS008:7A2 03 22 F1 8C 00 00 00 00
  $%  REQ009:722 03 22 F1 94 00 00 00 00       $%  ANS009:7A2 03 22 F1 94 00 00 00 00
  $%  REQ010:722 03 22 F1 8A 00 00 00 00       $%  ANS010:7A2 03 22 F1 8A 00 00 00 00
  $%  REQ011:722 03 22 F1 90 00 00 00 00       $%  ANS011:7A2 03 22 F1 90 00 00 00 00
  $%  REQ012:722 03 22 F1 A8 00 00 00 00       $%  ANS012:7A2 03 22 F1 A8 00 00 00 00
  $%  REQ013:722 03 22 F1 8B 00 00 00 00       $%  ANS013:7A2 03 22 F1 8B 00 00 00 00

  $%  000:电控单元应用软件号:                      $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号(项目名称):        $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3);
  $%  002:电控单元刷写软件参考号(产品名称):        $%    $%  ANS001.BYTE007  $%  ASCII(X1,X2);
  $%  003:刷写引导软件:                            $%    $%  ANS001.BYTE009  $%  ASCII(X1,X2);
  $%  004:电控单元刷写软件参考号(大版本):          $%    $%  ANS001.BYTE011  $%  ASCII(X1);
  $%  005:电控单元刷写软件参考号(小版本):          $%    $%  ANS001.BYTE012  $%  ASCII(X1,X2);
  $%  006:电控单元标定软件号:                      $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  007:电控单元硬件号:                          $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  008:电控单元网络文件参考号:                  $%    $%  ANS004.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  009:电控单元零件号:                          $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  010:电控单元零件号(上次):                    $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  011:测试工具参考号(上次):                    $%    $%  ANS006.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  012:里程读数(上次):                          $%    $%  ANS006.BYTE015  $%  y=x1*256*256+x2*256+x3;
  $%  013:项目名称:                                $%    $%  ANS007.BYTE004  $%  ASCII(X1,X2,X3);
  $%  014:产品名称:                                $%    $%  ANS007.BYTE007  $%  ASCII(X1,X2);
  $%  015:产品衍生:                                $%    $%  ANS007.BYTE009  $%  ASCII(X1);
  $%  016:版本号:                                  $%    $%  ANS007.BYTE011  $%  ASCII(X1,X2,X3);
  $%  017:供应商电控单元序列号(产品序列号):        $%    $%  ANS008.BYTE004  $%  y=UINT40(x1,x2,x3,x4,x5);
  $%  018:供应商电控单元序列号(生产号):            $%    $%  ANS008.BYTE009  $%  ASCII(X1,X2);
  $%  019:供应商电控单元序列号(年-月-日):          $%    $%  ANS008.BYTE011  $%  HEX(X1,X2,X3);
  $%  020:项目名称:                                $%    $%  ANS009.BYTE004  $%  ASCII(X1,X2,X3);
  $%  021:产品名称:                                $%    $%  ANS009.BYTE007  $%  ASCII(X1,X2);
  $%  022:产品衍生:                                $%    $%  ANS009.BYTE009  $%  ASCII(X1);
  $%  023:软件阶段:                                $%    $%  ANS009.BYTE010  $%  ASCII(X1);
  $%  024:软件大版本:                              $%    $%  ANS009.BYTE011  $%  ASCII(X1);
  $%  025:软件小版本:                              $%    $%  ANS009.BYTE012  $%  ASCII(X1,X2);
  $%  026:系统供应商标识号:                        $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  027:车辆识别代码:                            $%    $%  ANS011.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  028:车辆特征信息:                            $%    $%  ANS012.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  029:电控单元制造日期:                        $%    $%  ANS013.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:722 03 22 D0 00 00 00 00 00       $  ANS000:7A2 03 22 D0 00 00 00 00 00
  $  REQ001:722 03 22 B0 01 00 00 00 00       $  ANS001:7A2 03 22 B0 01 00 00 00 00
  $  REQ002:722 03 22 B0 02 00 00 00 00       $  ANS002:7A2 03 22 B0 02 00 00 00 00

  $  000.DCDC加速                     $    $        $    $  ANS000.BYTE004  $  if((x&0x01)==0) y=@000f;else if((x&0x01)==1) y=@016d;else y=@0035;
  $  001.输入电压                     $    $  V     $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.001+1;
  $  002.输出电压                     $    $  V     $    $  ANS001.BYTE006  $  y=(x1*256+x2)*0.001+1;
  $  003.DCDC加速状态                 $    $        $    $  ANS001.BYTE008  $  if(x==0) y=@0890;else if(x==1) y=@0891;else y=@0035;
  $  004.DCDC故障标志                 $    $        $    $  ANS001.BYTE009  $  if(x==0) y=@02ac;else if(x==1) y=@0601;else if(x==2) y=@0602;else if(x==3) y=@0603;else y=@0035;
  $  005.发动机状态                   $    $        $    $  ANS002.BYTE004  $  if(x==0) y=@0036;else if(x==1) y=@016e;else if(x==2) y=@0011;else y=@0035;
  $  006.发动机状态有效性             $    $        $    $  ANS002.BYTE005  $  if(x==0) y=@00bb;else if(x==1) y=@01df;else y=@0035;
  $  007.启动停止发动机状态           $    $        $    $  ANS002.BYTE006  $  if(x==0) y=@0019;else if(x==1) y=@088c;else if(x==2) y=@088d;else if(x==3) y=@0ac5;else if(x==4) y=@0e4e;else if(x==5) y=@007a;else if(x==6) y=@0035;else if(x==7) y=@042f;else y=@0035;
  $  008.启动停止引擎状态有效性       $    $        $    $  ANS002.BYTE007  $  if(x==0) y=@00bb;else if(x==1) y=@01df;else y=@0035;
  $  009.系统电源模式                 $    $        $    $  ANS002.BYTE008  $  if(x==0) y=@000f;else if(x==1) y=@0010;else if(x==2) y=@0011;else if(x==3) y=@0e4f;else y=@0035;
  $  010.系统电源模式有效性           $    $        $    $  ANS002.BYTE009  $  if(x==0) y=@01df;else if(x==1) y=@088e;else if(x==2) y=@088f;else y=@0035;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:722 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
