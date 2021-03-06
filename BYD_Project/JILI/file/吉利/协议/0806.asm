
    车型ID：0806

    模拟：协议模拟-->0806

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7D9

进入命令:

  $~  REQ000:7D1 02 10 01 00 00 00 00 00       $~  ANS000:7D9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7D1 02 3E 00 00 00 00 00 00       $!  ANS000:7D9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7D1 03 19 02 09 00 00 00 00       $#  ANS000:7D9 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/91000000


  $#  01.读故障码库
  $#  REQ000:7D1 02 19 0A 00 00 00 00 00       $#  ANS000:7D9 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/91000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="0"/>
   </FUNCTION>
  <FUNCTION type="0" num="1">
     <param type="string" value="0"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7D1 04 14 FF FF FF 00 00 00       $$  ANS000:7D9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7D1 03 22 F1 12 00 00 00 00       $%  ANS000:7D9 03 22 F1 12 00 00 00 00
  $%  REQ001:7D1 03 22 F1 87 00 00 00 00       $%  ANS001:7D9 03 22 F1 87 00 00 00 00
  $%  REQ002:7D1 03 22 F1 8A 00 00 00 00       $%  ANS002:7D9 03 22 F1 8A 00 00 00 00
  $%  REQ003:7D1 03 22 F1 8B 00 00 00 00       $%  ANS003:7D9 03 22 F1 8B 00 00 00 00
  $%  REQ004:7D1 03 22 F1 8C 00 00 00 00       $%  ANS004:7D9 03 22 F1 8C 00 00 00 00
  $%  REQ005:7D1 03 22 F1 90 00 00 00 00       $%  ANS005:7D9 03 22 F1 90 00 00 00 00
  $%  REQ006:7D1 03 22 F1 93 00 00 00 00       $%  ANS006:7D9 03 22 F1 93 00 00 00 00
  $%  REQ007:7D1 03 22 F1 95 00 00 00 00       $%  ANS007:7D9 03 22 F1 95 00 00 00 00
  $%  REQ008:7D1 03 22 F1 9D 00 00 00 00       $%  ANS008:7D9 03 22 F1 9D 00 00 00 00

  $%  000:车辆名称:                        $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  001:零件号:                          $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  002:供应商代码:                      $%    $%  ANS002.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6);
  $%  003:ECU(电子控制器)生产日期:         $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  004:ECU(电子控制器)序列号:           $%    $%  ANS004.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24);
  $%  005:车辆识别号（VIN码）:             $%    $%  ANS005.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  006:ECU(电子控制器)硬件版本号:       $%    $%  ANS006.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  007:ECU(电子控制器)软件版本号:       $%    $%  ANS007.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  008:ECU(电子控制器)安装日期:         $%    $%  ANS008.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7D1 03 22 DF 00 00 00 00 00       $  ANS000:7D9 03 22 DF 00 00 00 00 00
  $  REQ001:7D1 03 22 71 01 00 00 00 00       $  ANS001:7D9 03 22 71 01 00 00 00 00
  $  REQ002:7D1 03 22 71 02 00 00 00 00       $  ANS002:7D9 03 22 71 02 00 00 00 00
  $  REQ003:7D1 03 22 71 03 00 00 00 00       $  ANS003:7D9 03 22 71 03 00 00 00 00
  $  REQ004:7D1 03 22 71 04 00 00 00 00       $  ANS004:7D9 03 22 71 04 00 00 00 00
  $  REQ005:7D1 03 22 71 05 00 00 00 00       $  ANS005:7D9 03 22 71 05 00 00 00 00
  $  REQ006:7D1 03 22 71 06 00 00 00 00       $  ANS006:7D9 03 22 71 06 00 00 00 00
  $  REQ007:7D1 03 22 71 07 00 00 00 00       $  ANS007:7D9 03 22 71 07 00 00 00 00
  $  REQ008:7D1 03 22 71 08 00 00 00 00       $  ANS008:7D9 03 22 71 08 00 00 00 00
  $  REQ009:7D1 03 22 71 09 00 00 00 00       $  ANS009:7D9 03 22 71 09 00 00 00 00
  $  REQ010:7D1 03 22 71 10 00 00 00 00       $  ANS010:7D9 03 22 71 10 00 00 00 00
  $  REQ011:7D1 03 22 71 11 00 00 00 00       $  ANS011:7D9 03 22 71 11 00 00 00 00
  $  REQ012:7D1 03 22 71 12 00 00 00 00       $  ANS012:7D9 03 22 71 12 00 00 00 00
  $  REQ013:7D1 03 22 71 13 00 00 00 00       $  ANS013:7D9 03 22 71 13 00 00 00 00

  $  000.系统电压                                            $    $  V        $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.H桥电源MOSFET（金属氧化物半导体场效应晶体管）       $    $  /        $    $  ANS001.BYTE004  $  if(x)y=@001c;else y=@001d;
  $  002.上电计数                                            $    $  /        $    $  ANS002.BYTE004  $  y=x1*0x100+x2;
  $  003.左前轮速                                            $    $  km/h     $    $  ANS003.BYTE004  $  y=(x1*0x100+x2)*0.05625;
  $  004.右前轮速                                            $    $  km/h     $    $  ANS004.BYTE004  $  y=(x1*0x100+x2)*0.05625;
  $  005.左后轮速                                            $    $  km/h     $    $  ANS005.BYTE004  $  y=(x1*0x100+x2)*0.05625;
  $  006.右后轮速                                            $    $  km/h     $    $  ANS006.BYTE004  $  y=(x1*0x100+x2)*0.05625;
  $  007.ESCL(电子转向柱锁控制单元)转向锁状态                $    $  /        $    $  ANS007.BYTE004  $  switxh(x)0x0:y=@01d0;0x1:y=@010a;0x2:y=@0027;0xFF:y=@0132;default:y=@0162;
  $  008.ESCL(电子转向柱锁控制单元)认证是否成功              $    $  /        $    $  ANS008.BYTE004  $  if(x)y=@01b3;else y=@0d4b;
  $  009.ESCL(电子转向柱锁控制单元)系统学习状态              $    $  /        $    $  ANS009.BYTE004  $  if(x==0x1)y=@0318;else if(x==0x2)y=@0131;else if(x=0x3)y=@0d4a;else y=@0162;
  $  010.电源模式                                            $    $  /        $    $  ANS010.BYTE004  $  if(x==0x0)y=@01cf;else if(x==0x1)y=@015c;else if(x==0x2)y=@04d6;else if(x=0x3)y=@015f;else y=@0162;
  $  011.左前(驾驶员)车门开启／关闭状态                      $    $  /        $    $  ANS011.BYTE004  $  if(x==0x0)y=@0d4c;else if(x=0x1)y=@0d4d;else y=@0162;
  $  012.引擎转速                                            $    $  rpm      $    $  ANS012.BYTE004  $  y=INT((x1*0x100+x2)*0.25);
  $  013.发动机状态信息                                      $    $  /        $    $  ANS013.BYTE004  $  if(x==0x0)y=@0390;else if(x==0x1)y=@0391;else if(x==0xff)y=@01b0;else y=@0162;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7D1 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
