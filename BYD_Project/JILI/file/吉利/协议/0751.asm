
    车型ID：0751

    模拟：协议模拟-->0751

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A8

进入命令:

  $~  REQ000:7A0 02 10 01 00 00 00 00 00       $~  ANS000:7A8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A0 02 3E 00 00 00 00 00 00       $!  ANS000:7A8 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7A0 03 19 02 09 00 00 00 00       $#  ANS000:7A8 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/e5000000


  $#  01.读故障码库
  $#  REQ000:7A0 02 19 0A 00 00 00 00 00       $#  ANS000:7A8 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/e5000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A0 04 14 FF FF FF 00 00 00       $$  ANS000:7A8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A0 03 22 F1 12 00 00 00 00       $%  ANS000:7A8 03 22 F1 12 00 00 00 00
  $%  REQ001:7A0 03 22 F1 87 00 00 00 00       $%  ANS001:7A8 03 22 F1 87 00 00 00 00
  $%  REQ002:7A0 03 22 F1 8A 00 00 00 00       $%  ANS002:7A8 03 22 F1 8A 00 00 00 00
  $%  REQ003:7A0 03 22 F1 8C 00 00 00 00       $%  ANS003:7A8 03 22 F1 8C 00 00 00 00
  $%  REQ004:7A0 03 22 F1 90 00 00 00 00       $%  ANS004:7A8 03 22 F1 90 00 00 00 00
  $%  REQ005:7A0 03 22 F1 93 00 00 00 00       $%  ANS005:7A8 03 22 F1 93 00 00 00 00
  $%  REQ006:7A0 03 22 F1 95 00 00 00 00       $%  ANS006:7A8 03 22 F1 95 00 00 00 00
  $%  REQ007:7A0 03 22 F1 92 00 00 00 00       $%  ANS007:7A8 03 22 F1 92 00 00 00 00
  $%  REQ008:7A0 03 22 F1 94 00 00 00 00       $%  ANS008:7A8 03 22 F1 94 00 00 00 00
  $%  REQ009:7A0 03 22 F1 9D 00 00 00 00       $%  ANS009:7A8 03 22 F1 9D 00 00 00 00
  $%  REQ010:7A0 03 22 F1 8B 00 00 00 00       $%  ANS010:7A8 03 22 F1 8B 00 00 00 00

  $%  000:车辆名称:                        $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:供应商零部件号:                  $%    $%  ANS001.BYTE004  $%  0 ASCII
  $%  002:系统供应商识别码:                $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:ECU(电子控制器)序列号:           $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28);
  $%  004:车辆识别码:                      $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  005:ECU(电子控制器)硬件版本号:       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  006:ECU(电子控制器)软件版本号:       $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:ECU(电子控制器)硬件号:           $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件号:           $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)安装日期:         $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  010:ECU(电子控制器)生产日期:         $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7A0 03 22 60 00 00 00 00 00       $  ANS000:7A8 03 22 60 00 00 00 00 00
  $  REQ001:7A0 03 22 60 01 00 00 00 00       $  ANS001:7A8 03 22 60 01 00 00 00 00
  $  REQ002:7A0 03 22 60 02 00 00 00 00       $  ANS002:7A8 03 22 60 02 00 00 00 00
  $  REQ003:7A0 03 22 60 03 00 00 00 00       $  ANS003:7A8 03 22 60 03 00 00 00 00
  $  REQ004:7A0 03 22 60 04 00 00 00 00       $  ANS004:7A8 03 22 60 04 00 00 00 00
  $  REQ005:7A0 03 22 60 05 00 00 00 00       $  ANS005:7A8 03 22 60 05 00 00 00 00
  $  REQ006:7A0 03 22 60 06 00 00 00 00       $  ANS006:7A8 03 22 60 06 00 00 00 00
  $  REQ007:7A0 03 22 60 07 00 00 00 00       $  ANS007:7A8 03 22 60 07 00 00 00 00
  $  REQ008:7A0 03 22 60 17 00 00 00 00       $  ANS008:7A8 03 22 60 17 00 00 00 00
  $  REQ009:7A0 03 22 60 08 00 00 00 00       $  ANS009:7A8 03 22 60 08 00 00 00 00
  $  REQ010:7A0 03 22 60 09 00 00 00 00       $  ANS010:7A8 03 22 60 09 00 00 00 00
  $  REQ011:7A0 03 22 60 10 00 00 00 00       $  ANS011:7A8 03 22 60 10 00 00 00 00
  $  REQ012:7A0 03 22 60 11 00 00 00 00       $  ANS012:7A8 03 22 60 11 00 00 00 00
  $  REQ013:7A0 03 22 60 12 00 00 00 00       $  ANS013:7A8 03 22 60 12 00 00 00 00
  $  REQ014:7A0 03 22 68 11 00 00 00 00       $  ANS014:7A8 03 22 68 11 00 00 00 00
  $  REQ015:7A0 03 22 60 14 00 00 00 00       $  ANS015:7A8 03 22 60 14 00 00 00 00
  $  REQ016:7A0 03 22 60 16 00 00 00 00       $  ANS016:7A8 03 22 60 16 00 00 00 00

  $  000.E-CALL(紧急呼叫系统) 拨打号码                  $    $  /      $    $  ANS000.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $  001.Bcall 拨打号码                                 $    $  /      $    $  ANS001.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $  002.Icall 拨打号码                                 $    $  /      $    $  ANS002.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $  003.工厂测试时，E-CALL(紧急呼叫系统)拨打号码       $    $  /      $    $  ANS003.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $  004.工厂测试时，Bcall拨打号码                      $    $  /      $    $  ANS004.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $  005.工厂测试时，Bcall拨打号码                      $    $  /      $    $  ANS005.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $  006.SIM卡状态                                      $    $  /      $    $  ANS006.BYTE004  $  if(x1==0x00) y=@071b;else if(x1==0x01) y=@071c;else y=@0009;
  $  007.SIM卡CCID号                                    $    $  /      $    $  ANS007.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $  008.SIM卡IMSI号                                    $    $  /      $    $  ANS008.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  009.工作模式                                       $    $  /      $    $  ANS009.BYTE004  $  if(x==0x00) y=@0719;else if(x==0x01) y=@00c9;else if(x==0x02) y=@071a;else y=@0009;
  $  010.T-BOX(远程信息处理控制器)内部电池电压值        $    $  V      $    $  ANS010.BYTE004  $  y=x*0.1;
  $  011.车辆电池电压                                   $    $  V      $    $  ANS011.BYTE004  $  y=x*0.1;
  $  012.总里程数                                       $    $  km     $    $  ANS012.BYTE004  $  y=x1*0x10000+x2*0x100+x3;
  $  013.点火状态                                       $    $  /      $    $  ANS013.BYTE004  $  if(x==0x00) y=@01cf;else if(x==0x01) y=@015c;else if(x==0x02) y=@015d;else if(x==0x04) y=@015f;else y=@00b8;
  $  014.TBOX(远程信息处理控制器)电话号码               $    $  /      $    $  ANS014.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  015.SC秘钥状态                                     $    $  /      $    $  ANS015.BYTE004  $  if(x1==0x00) y=@0717;else if(x1==0x01) y=@0718;else y=@0209;
  $  016.SK码学习状态                                   $    $  /      $    $  ANS016.BYTE004  $  if(x1==0x00) y=@0715;else if(x1==0x01) y=@0716;else y=@0209;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
