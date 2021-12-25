
    车型ID：0908

    模拟：协议模拟-->0908

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

  $*$*DTC/25000000


  $#  01.读故障码库
  $#  REQ000:7D1 02 19 0A 00 00 00 00 00       $#  ANS000:7D9 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/25000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7D1 04 14 FF FF FF 00 00 00       $$  ANS000:7D9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7D1 03 22 F1 12 00 00 00 00       $%  ANS000:7D9 03 22 F1 12 00 00 00 00
  $%  REQ001:7D1 03 22 F1 80 00 00 00 00       $%  ANS001:7D9 03 22 F1 80 00 00 00 00
  $%  REQ002:7D1 03 22 F1 87 00 00 00 00       $%  ANS002:7D9 03 22 F1 87 00 00 00 00
  $%  REQ003:7D1 03 22 F1 8A 00 00 00 00       $%  ANS003:7D9 03 22 F1 8A 00 00 00 00
  $%  REQ004:7D1 03 22 F1 8B 00 00 00 00       $%  ANS004:7D9 03 22 F1 8B 00 00 00 00
  $%  REQ005:7D1 03 22 F1 90 00 00 00 00       $%  ANS005:7D9 03 22 F1 90 00 00 00 00
  $%  REQ006:7D1 03 22 F1 93 00 00 00 00       $%  ANS006:7D9 03 22 F1 93 00 00 00 00
  $%  REQ007:7D1 03 22 F1 95 00 00 00 00       $%  ANS007:7D9 03 22 F1 95 00 00 00 00
  $%  REQ008:7D1 03 22 F1 98 00 00 00 00       $%  ANS008:7D9 03 22 F1 98 00 00 00 00
  $%  REQ009:7D1 03 22 F1 99 00 00 00 00       $%  ANS009:7D9 03 22 F1 99 00 00 00 00
  $%  REQ010:7D1 03 22 F1 9D 00 00 00 00       $%  ANS010:7D9 03 22 F1 9D 00 00 00 00
  $%  REQ011:7D1 03 22 F1 97 00 00 00 00       $%  ANS011:7D9 03 22 F1 97 00 00 00 00
  $%  REQ012:7D1 03 22 F1 82 00 00 00 00       $%  ANS012:7D9 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:引导程序软件识别号:                          $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  002:零件号:                                      $%    $%  ANS002.BYTE004  $%  0 ASCII
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:                     $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:车辆识别号（VIN码）:                         $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  006:ECU(电子控制器)硬件版本号:                   $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:ECU(电子控制器)软件版本号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)刷写日期:                     $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  010:ECU(电子控制器)安装日期:                     $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  011:ECU(电子控制器)系统名称或发动机类型:         $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  012:标定软件版本号:                              $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7D1 03 22 DF 00 00 00 00 00       $  ANS000:7D9 03 22 DF 00 00 00 00 00
  $  REQ001:7D1 03 22 DF 01 00 00 00 00       $  ANS001:7D9 03 22 DF 01 00 00 00 00
  $  REQ002:7D1 03 22 71 01 00 00 00 00       $  ANS002:7D9 03 22 71 01 00 00 00 00
  $  REQ003:7D1 03 22 71 02 00 00 00 00       $  ANS003:7D9 03 22 71 02 00 00 00 00
  $  REQ004:7D1 03 22 71 03 00 00 00 00       $  ANS004:7D9 03 22 71 03 00 00 00 00
  $  REQ005:7D1 03 22 71 04 00 00 00 00       $  ANS005:7D9 03 22 71 04 00 00 00 00
  $  REQ006:7D1 03 22 71 05 00 00 00 00       $  ANS006:7D9 03 22 71 05 00 00 00 00
  $  REQ007:7D1 03 22 71 06 00 00 00 00       $  ANS007:7D9 03 22 71 06 00 00 00 00
  $  REQ008:7D1 03 22 71 09 00 00 00 00       $  ANS008:7D9 03 22 71 09 00 00 00 00
  $  REQ009:7D1 03 22 71 10 00 00 00 00       $  ANS009:7D9 03 22 71 10 00 00 00 00
  $  REQ010:7D1 03 22 71 11 00 00 00 00       $  ANS010:7D9 03 22 71 11 00 00 00 00
  $  REQ011:7D1 03 22 71 12 00 00 00 00       $  ANS011:7D9 03 22 71 12 00 00 00 00
  $  REQ012:7D1 03 22 71 13 00 00 00 00       $  ANS012:7D9 03 22 71 13 00 00 00 00

  $  000.系统电压                                     $    $  V        $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.车辆速度                                     $    $  km/h     $    $  ANS001.BYTE004  $  if((x1*0x100+x2)<0x1fff)y=(x1*0x100+x2)*0.05625;else y=@0132;
  $  002.H桥供应晶体管                                $    $  /        $    $  ANS002.BYTE004  $  if(00==x)y=@001d;else if(01==x)y=@001c;else y=@0162;
  $  003.上电次数                                     $    $  /        $    $  ANS003.BYTE004  $  y=x1*0x100+x2;
  $  004.左前轮速                                     $    $  km/h     $    $  ANS004.BYTE004  $  y=(x1*256+x2)*0.05625;
  $  005.右前轮速                                     $    $  km/h     $    $  ANS005.BYTE004  $  y=(x1*256+x2)*0.05625;
  $  006.左后轮速                                     $    $  km/h     $    $  ANS006.BYTE004  $  y=(x1*256+x2)*0.05625;
  $  007.右后轮速                                     $    $  km/h     $    $  ANS007.BYTE004  $  y=(x1*256+x2)*0.05625;
  $  008.ESCL(电子转向柱锁控制单元)系统学习状态       $    $  /        $    $  ANS008.BYTE004  $  switxh(x)0x01:y=@06eb;0x02:y=@0131;0x03:y=@06ec;default:y=@0209;
  $  009.电源模式                                     $    $  /        $    $  ANS009.BYTE004  $  switxh(x)0x00:y=@010e;0x01:y=@015c;0x02:y=@0170;0x03:y=@015f;default:y=@0209;
  $  010.左前(驾驶员)车门开启／关闭状态               $    $  /        $    $  ANS010.BYTE004  $  switxh(x)0x00:y=@06e9;0x01:y=@06ea;default:y=@0209;
  $  011.引擎转速                                     $    $  rpm      $    $  ANS011.BYTE004  $  y=INT((x1*256+x2)*0.25);
  $  012.发动机状态信息                               $    $  /        $    $  ANS012.BYTE004  $  switxh(x)0x00:y=@0390;0x01:y=@0391;0x02:y=@0027;0xFF:y=@00be;default:y=@0209;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7D1 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:7D1 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
