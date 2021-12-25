
    车型ID：0a85

    模拟：协议模拟-->0a85

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~73C

进入命令:

  $~  REQ000:734 02 10 01 00 00 00 00 00       $~  ANS000:73C 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:734 02 3E 00 00 00 00 00 00       $!  ANS000:73C 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:734 03 19 02 09 00 00 00 00       $#  ANS000:73C 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/56000000


  $#  01.读故障码库
  $#  REQ000:734 02 19 0A 00 00 00 00 00       $#  ANS000:73C 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/56000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:734 04 14 FF FF FF 00 00 00       $$  ANS000:73C 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:734 03 22 F1 12 00 00 00 00       $%  ANS000:73C 03 22 F1 12 00 00 00 00
  $%  REQ001:734 03 22 F1 87 00 00 00 00       $%  ANS001:73C 03 22 F1 87 00 00 00 00
  $%  REQ002:734 03 22 F1 89 00 00 00 00       $%  ANS002:73C 03 22 F1 89 00 00 00 00
  $%  REQ003:734 03 22 F1 8A 00 00 00 00       $%  ANS003:73C 03 22 F1 8A 00 00 00 00
  $%  REQ004:734 03 22 F1 8B 00 00 00 00       $%  ANS004:73C 03 22 F1 8B 00 00 00 00
  $%  REQ005:734 03 22 F1 8C 00 00 00 00       $%  ANS005:73C 03 22 F1 8C 00 00 00 00
  $%  REQ006:734 03 22 F1 90 00 00 00 00       $%  ANS006:73C 03 22 F1 90 00 00 00 00
  $%  REQ007:734 03 22 F1 93 00 00 00 00       $%  ANS007:73C 03 22 F1 93 00 00 00 00
  $%  REQ008:734 03 22 F1 95 00 00 00 00       $%  ANS008:73C 03 22 F1 95 00 00 00 00
  $%  REQ009:734 03 22 F1 97 00 00 00 00       $%  ANS009:73C 03 22 F1 97 00 00 00 00
  $%  REQ010:734 03 22 F1 98 00 00 00 00       $%  ANS010:73C 03 22 F1 98 00 00 00 00
  $%  REQ011:734 03 22 F1 99 00 00 00 00       $%  ANS011:73C 03 22 F1 99 00 00 00 00
  $%  REQ012:734 03 22 F1 9D 00 00 00 00       $%  ANS012:73C 03 22 F1 9D 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                                      $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:Geely软件版本号:                             $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:                     $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)系统名称或发动机类型:         $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  010:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  011:ECU(电子控制器)刷写日期:                     $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:ECU(电子控制器)安装日期:                     $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:734 03 22 DF 00 00 00 00 00       $  ANS000:73C 03 22 DF 00 00 00 00 00
  $  REQ001:734 03 22 DF 01 00 00 00 00       $  ANS001:73C 03 22 DF 01 00 00 00 00
  $  REQ002:734 03 22 4F 53 00 00 00 00       $  ANS002:73C 03 22 4F 53 00 00 00 00
  $  REQ003:734 03 22 4F 58 00 00 00 00       $  ANS003:73C 03 22 4F 58 00 00 00 00
  $  REQ004:734 03 22 4F 59 00 00 00 00       $  ANS004:73C 03 22 4F 59 00 00 00 00
  $  REQ005:734 03 22 4F 5A 00 00 00 00       $  ANS005:73C 03 22 4F 5A 00 00 00 00
  $  REQ006:734 03 22 4F 5B 00 00 00 00       $  ANS006:73C 03 22 4F 5B 00 00 00 00
  $  REQ007:734 03 22 4F 5E 00 00 00 00       $  ANS007:73C 03 22 4F 5E 00 00 00 00
  $  REQ008:734 03 22 4F 80 00 00 00 00       $  ANS008:73C 03 22 4F 80 00 00 00 00
  $  REQ009:734 03 22 4F 61 00 00 00 00       $  ANS009:73C 03 22 4F 61 00 00 00 00
  $  REQ010:734 03 22 4F 63 00 00 00 00       $  ANS010:73C 03 22 4F 63 00 00 00 00
  $  REQ011:734 03 22 4F 64 00 00 00 00       $  ANS011:73C 03 22 4F 64 00 00 00 00
  $  REQ012:734 03 22 4F 67 00 00 00 00       $  ANS012:73C 03 22 4F 67 00 00 00 00
  $  REQ013:734 03 22 4F 6B 00 00 00 00       $  ANS013:73C 03 22 4F 6B 00 00 00 00
  $  REQ014:734 03 22 4F 6C 00 00 00 00       $  ANS014:73C 03 22 4F 6C 00 00 00 00
  $  REQ015:734 03 22 4F 6D 00 00 00 00       $  ANS015:73C 03 22 4F 6D 00 00 00 00
  $  REQ016:734 03 22 4F 6E 00 00 00 00       $  ANS016:73C 03 22 4F 6E 00 00 00 00
  $  REQ017:734 03 22 4F 6F 00 00 00 00       $  ANS017:73C 03 22 4F 6F 00 00 00 00
  $  REQ018:734 03 22 4F 70 00 00 00 00       $  ANS018:73C 03 22 4F 70 00 00 00 00
  $  REQ019:734 03 22 4F 72 00 00 00 00       $  ANS019:73C 03 22 4F 72 00 00 00 00
  $  REQ020:734 03 22 4F 77 00 00 00 00       $  ANS020:73C 03 22 4F 77 00 00 00 00
  $  REQ021:734 03 22 4F 78 00 00 00 00       $  ANS021:73C 03 22 4F 78 00 00 00 00
  $  REQ022:734 03 22 4F 81 00 00 00 00       $  ANS022:73C 03 22 4F 81 00 00 00 00
  $  REQ023:734 03 22 4F 82 00 00 00 00       $  ANS023:73C 03 22 4F 82 00 00 00 00

  $  000.蓄电池电压                                $    $  V        $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.车速信号                                  $    $  km/h     $    $  ANS001.BYTE004  $  y=INT((x1*256+x2)*0.05625);
  $  002.ESK写入状态                               $    $  /        $    $  ANS002.BYTE004  $  switxh(x)01:y=@0db9;02:y=@06eb;default:y=@0132;
  $  003.DCDC(DC-DC转换控制器)温度                 $    $  degC     $    $  ANS003.BYTE004  $  y=x-40;
  $  004.A相瞬时电流                               $    $  A        $    $  ANS004.BYTE004  $  y=(x1*256+x2)-753;
  $  005.B相瞬时电流                               $    $  A        $    $  ANS005.BYTE004  $  y=(x1*256+x2)-753;
  $  006.C相瞬时电流                               $    $  A        $    $  ANS006.BYTE004  $  y=(x1*256+x2)-753;
  $  007.DCDC(DC-DC转换控制器)高压端电流           $    $  A        $    $  ANS007.BYTE004  $  y=(x1*256+x2)-410;
  $  008.电机初始角度                              $    $  deg      $    $  ANS008.BYTE004  $  y=(x1*0x100+x2)*0.0878907;
  $  009.高压电池电压                              $    $  V        $    $  ANS009.BYTE004  $  y=x1*256+x2;
  $  010.电机本体温度                              $    $  degC     $    $  ANS010.BYTE004  $  y=x-50;
  $  011.电机转速                                  $    $  rpm      $    $  ANS011.BYTE004  $  if(x1>0x80) y=x1*0x100+x2-65535;else y=x1*0x100+x2;
  $  012.实际扭矩                                  $    $  Nm       $    $  ANS012.BYTE004  $  y=(x1*256+x2)-1024;
  $  013.电机控制器工作模式                        $    $  /        $    $  ANS013.BYTE004  $  if(x1==0x0)y=@0318;else if(x1==0x1)y=@0dc6;else if(x1==0x2)y=@0949;else if(x1==0x3)y=@094a;else if(x1==0x4)y=@094b;else if(x1==0x5)y=@0dc7;else if(x1==0x6)y=@0dc8;else if(x1==0x7)y=@01b0;else y=@0209;
  $  014.VCU(整车控制器)请求电机模式               $    $  /        $    $  ANS014.BYTE004  $  if(x1==0x0)y=@0318;else if(x1==0x1)y=@0dc6;else if(x1==0x2)y=@0949;else if(x1==0x3)y=@094a;else if(x1==0x4)y=@094b;else if(x1==0x5)y=@0dc7;else if(x1==0x6)y=@0dc8;else if(x1==0x7)y=@01b0;else y=@0209;
  $  015.IPU(集成动力控制器)控制器温度             $    $  degC     $    $  ANS015.BYTE004  $  y=x-50;
  $  016.三相电流有效值                            $    $  A        $    $  ANS016.BYTE004  $  y=(x1*256+x2)*0.625;
  $  017.请求扭矩                                  $    $  Nm       $    $  ANS017.BYTE004  $  y=(x1*256+x2)-1024;
  $  018.直流母线电流值                            $    $  A        $    $  ANS018.BYTE004  $  y=(x1*256+x2)*0.1-410;
  $  019.电机转矩                                  $    $  Nm       $    $  ANS019.BYTE004  $  y=(x1*256+x2)-1024;
  $  020.电机功率最大限值                          $    $  W        $    $  ANS020.BYTE004  $  y=x1*256+x2;
  $  021.电机功率最小限值                          $    $  W        $    $  ANS021.BYTE004  $  y=(x1*256+x2)-511;
  $  022.BMS(电池管理系统)发出的高压母线电压       $    $  V        $    $  ANS022.BYTE004  $  y=x1*0x100+x2;
  $  023.PEU检测的高压母线电压                     $    $  V        $    $  ANS023.BYTE004  $  y=x1*0x100+x2;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:734 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
