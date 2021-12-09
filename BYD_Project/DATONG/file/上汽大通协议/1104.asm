
    车型ID：1104

    模拟：协议模拟-->1104

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:733 02 10 01 00 00 00 00 00       $~  ANS000:7B3 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:733 02 3E 80 00 00 00 00 00       $!  ANS000:7B3 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:733 03 19 02 09 00 00 00 00       $#  ANS000:7B3 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/02000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:733 04 14 FF FF FF 00 00 00       $$  ANS000:7B3 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:733 03 22 F1 A0 00 00 00 00       $%  ANS000:7B3 03 22 F1 A0 00 00 00 00
  $%  REQ001:733 03 22 F1 83 00 00 00 00       $%  ANS001:7B3 03 22 F1 83 00 00 00 00
  $%  REQ002:733 03 22 F1 A1 00 00 00 00       $%  ANS002:7B3 03 22 F1 A1 00 00 00 00
  $%  REQ003:733 03 22 F1 91 00 00 00 00       $%  ANS003:7B3 03 22 F1 91 00 00 00 00
  $%  REQ004:733 03 22 F1 8B 00 00 00 00       $%  ANS004:7B3 03 22 F1 8B 00 00 00 00
  $%  REQ005:733 03 22 F1 A2 00 00 00 00       $%  ANS005:7B3 03 22 F1 A2 00 00 00 00
  $%  REQ006:733 03 22 F1 87 00 00 00 00       $%  ANS006:7B3 03 22 F1 87 00 00 00 00
  $%  REQ007:733 03 22 F1 10 00 00 00 00       $%  ANS007:7B3 03 22 F1 10 00 00 00 00
  $%  REQ008:733 03 22 F1 92 00 00 00 00       $%  ANS008:7B3 03 22 F1 92 00 00 00 00
  $%  REQ009:733 03 22 F1 8C 00 00 00 00       $%  ANS009:7B3 03 22 F1 8C 00 00 00 00
  $%  REQ010:733 03 22 F1 94 00 00 00 00       $%  ANS010:7B3 03 22 F1 94 00 00 00 00
  $%  REQ011:733 03 22 F1 8A 00 00 00 00       $%  ANS011:7B3 03 22 F1 8A 00 00 00 00
  $%  REQ012:733 03 22 F1 90 00 00 00 00       $%  ANS012:7B3 03 22 F1 90 00 00 00 00
  $%  REQ013:733 03 22 F1 A8 00 00 00 00       $%  ANS013:7B3 03 22 F1 A8 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE011  $%  ASCII(X1,X2,X3);
  $%  002:电控单元标定软件号:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元硬件号:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:电控单元制造日期:                $%    $%  ANS004.BYTE004  $%  HEX(X1,X2,X3);
  $%  005:电控单元网络文件参考号:          $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号:                  $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  007:电控单元零件号(上次):            $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  008:测试工具参考号(上次):            $%    $%  ANS007.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  009:里程读数(上次):                  $%    $%  ANS007.BYTE015  $%  y=x1*256*256+x2*256+x3;
  $%  010:供应商电控单元硬件参考号:        $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:产品序列号:                      $%    $%  ANS009.BYTE004  $%  y=UINT40(x1,x2,x3,x4,x5);
  $%  012:生产线号码:                      $%    $%  ANS009.BYTE009  $%  ASCII(X1,X2);
  $%  013:年:                              $%    $%  ANS009.BYTE011  $%  HEX(X1);
  $%  014:月 日:                           $%    $%  ANS009.BYTE012  $%  HEX(X1,X2);
  $%  015:供应商电控单元软件参考号:        $%    $%  ANS010.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  016:系统供应商标识号:                $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  017:车辆识别代码:                    $%    $%  ANS012.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  018:车辆特征信息:                    $%    $%  ANS013.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:733 03 22 C0 02 00 00 00 00       $  ANS000:7B3 03 22 C0 02 00 00 00 00
  $  REQ001:733 03 22 C0 01 00 00 00 00       $  ANS001:7B3 03 22 C0 01 00 00 00 00
  $  REQ002:733 03 22 D0 01 00 00 00 00       $  ANS002:7B3 03 22 D0 01 00 00 00 00
  $  REQ003:733 03 22 E0 01 00 00 00 00       $  ANS003:7B3 03 22 E0 01 00 00 00 00
  $  REQ004:733 03 22 01 12 00 00 00 00       $  ANS004:7B3 03 22 01 12 00 00 00 00

  $  000.配置速度                          $    $         $    $  ANS000.BYTE004  $  if(((x&0x10)>>4)==0) y=@01b3;else if(((x&0x10)>>4)==1) y=@01b4;else y=@0035;
  $  001.配置手刹                          $    $         $    $  ANS000.BYTE004  $  if(((x&0x08)>>3)==0) y=@01b5;else if(((x&0x08)>>3)==1) y=@01b6;else y=@0035;
  $  002.配置变速箱状态                    $    $         $    $  ANS000.BYTE004  $  if(((x&0x04)>>2)==0) y=@01dd;else if(((x&0x04)>>2)==1) y=@01de;else y=@0035;
  $  003.配置PDC开关状态                   $    $         $    $  ANS000.BYTE004  $  if(((x&0x02)>>1)==0) y=@01b8;else if(((x&0x02)>>1)==1) y=@01b9;else y=@0035;
  $  004.配置车辆模式                      $    $         $    $  ANS000.BYTE004  $  if((x&0x01)==0) y=@01ba;else if((x&0x01)==1) y=@01bb;else y=@0035;
  $  005.配置传感器数量                    $    $         $    $  ANS001.BYTE004  $  if((x&0x0F)==0) y=@01bc;else if((x&0x0F)==1) y=@01bd;else if((x&0x0F)==2) y=@01be;else if((x&0x0F)==3) y=@01bf;else if((x&0x0F)==4) y=@01c0;else if((x&0x0F)==5) y=@01c1;else if((x&0x0F)==6) y=@01c2;else if((x&0x0F)==7) y=@01c3;else if((x&0x0F)==8) y=@01c4;else if((x&0x0F)==9) y=@01c5;else y=@0198;
  $  006.PDC(倒车雷达)开关状态有效性       $    $         $    $  ANS002.BYTE004  $  if((x&0x01)==0) y=@00bb;else if((x&0x01)==1) y=@01df;else y=@0035;
  $  007.左前传感器余震时间                $    $  ms     $    $  ANS003.BYTE004  $  y=x*0.1;
  $  008.左前中心传感器响铃时间            $    $  ms     $    $  ANS003.BYTE005  $  y=x*0.1;
  $  009.右前中心传感器响铃时间            $    $  ms     $    $  ANS003.BYTE006  $  y=x*0.1;
  $  010.右前传感器余震时间                $    $  ms     $    $  ANS003.BYTE007  $  y=x*0.1;
  $  011.右后传感器余震时间                $    $  ms     $    $  ANS003.BYTE008  $  y=x*0.1;
  $  012.右后中心传感器响铃时间            $    $  ms     $    $  ANS003.BYTE009  $  y=x*0.1;
  $  013.左后传感器余震时间                $    $  ms     $    $  ANS003.BYTE010  $  y=x*0.1;
  $  014.左后中心传感器响铃时间            $    $  ms     $    $  ANS003.BYTE011  $  y=x*0.1;
  $  015.系统输入电压                      $    $  V      $    $  ANS004.BYTE004  $  y=x*0.1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:733 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
