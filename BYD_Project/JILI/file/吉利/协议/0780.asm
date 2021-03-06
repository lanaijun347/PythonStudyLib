
    车型ID：0780

    模拟：协议模拟-->0780

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

  $$  REQ000:734 04 14 FF FF FF 00 00 00       $$  ANS000:73C 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:734 03 22 F1 12 00 00 00 00       $%  ANS000:73C 03 22 F1 12 00 00 00 00
  $%  REQ001:734 03 22 F1 80 00 00 00 00       $%  ANS001:73C 03 22 F1 80 00 00 00 00
  $%  REQ002:734 03 22 F1 87 00 00 00 00       $%  ANS002:73C 03 22 F1 87 00 00 00 00
  $%  REQ003:734 03 22 F1 89 00 00 00 00       $%  ANS003:73C 03 22 F1 89 00 00 00 00
  $%  REQ004:734 03 22 F1 8A 00 00 00 00       $%  ANS004:73C 03 22 F1 8A 00 00 00 00
  $%  REQ005:734 03 22 F1 8B 00 00 00 00       $%  ANS005:73C 03 22 F1 8B 00 00 00 00
  $%  REQ006:734 03 22 F1 8C 00 00 00 00       $%  ANS006:73C 03 22 F1 8C 00 00 00 00
  $%  REQ007:734 03 22 F1 90 00 00 00 00       $%  ANS007:73C 03 22 F1 90 00 00 00 00
  $%  REQ008:734 03 22 F1 92 00 00 00 00       $%  ANS008:73C 03 22 F1 92 00 00 00 00
  $%  REQ009:734 03 22 F1 93 00 00 00 00       $%  ANS009:73C 03 22 F1 93 00 00 00 00
  $%  REQ010:734 03 22 F1 94 00 00 00 00       $%  ANS010:73C 03 22 F1 94 00 00 00 00
  $%  REQ011:734 03 22 F1 95 00 00 00 00       $%  ANS011:73C 03 22 F1 95 00 00 00 00
  $%  REQ012:734 03 22 F1 98 00 00 00 00       $%  ANS012:73C 03 22 F1 98 00 00 00 00
  $%  REQ013:734 03 22 F1 99 00 00 00 00       $%  ANS013:73C 03 22 F1 99 00 00 00 00
  $%  REQ014:734 03 22 F1 9D 00 00 00 00       $%  ANS014:73C 03 22 F1 9D 00 00 00 00
  $%  REQ015:734 03 22 02 00 00 00 00 00       $%  ANS015:73C 03 22 02 00 00 00 00 00
  $%  REQ016:734 03 22 02 01 00 00 00 00       $%  ANS016:73C 03 22 02 01 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:驱动层软件版本:                              $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  002:零件号:                                      $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  003:Geely软件版本号:                             $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  004:供应商代码:                                  $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  005:ECU(电子控制器)生产日期:                     $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  006:ECU(电子控制器)序列号:                       $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:车辆识别号（VIN码）:                         $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  008:ECU(电子控制器)硬件号:                       $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)硬件版本号:                   $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:ECU(电子控制器)软件号:                       $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  011:ECU(电子控制器)软件版本号:                   $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  012:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  013:ECU(电子控制器)刷写日期:                     $%    $%  ANS013.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  014:ECU(电子控制器)安装日期:                     $%    $%  ANS014.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  015:ECU(电子控制器)成功刷写次数:                 $%    $%  ANS015.BYTE004  $%  HEX(x1);
  $%  016:ECU(电子控制器)尝试刷写次数:                 $%    $%  ANS016.BYTE004  $%  HEX(x1);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:734 03 22 D0 01 00 00 00 00       $  ANS000:73C 03 22 D0 01 00 00 00 00
  $  REQ001:734 03 22 D0 02 00 00 00 00       $  ANS001:73C 03 22 D0 02 00 00 00 00
  $  REQ002:734 03 22 D0 03 00 00 00 00       $  ANS002:73C 03 22 D0 03 00 00 00 00
  $  REQ003:734 03 22 D0 04 00 00 00 00       $  ANS003:73C 03 22 D0 04 00 00 00 00
  $  REQ004:734 03 22 D0 05 00 00 00 00       $  ANS004:73C 03 22 D0 05 00 00 00 00
  $  REQ005:734 03 22 D0 06 00 00 00 00       $  ANS005:73C 03 22 D0 06 00 00 00 00
  $  REQ006:734 03 22 D0 07 00 00 00 00       $  ANS006:73C 03 22 D0 07 00 00 00 00
  $  REQ007:734 03 22 D0 08 00 00 00 00       $  ANS007:73C 03 22 D0 08 00 00 00 00
  $  REQ008:734 03 22 D0 09 00 00 00 00       $  ANS008:73C 03 22 D0 09 00 00 00 00
  $  REQ009:734 03 22 D0 0A 00 00 00 00       $  ANS009:73C 03 22 D0 0A 00 00 00 00
  $  REQ010:734 03 22 D0 0B 00 00 00 00       $  ANS010:73C 03 22 D0 0B 00 00 00 00
  $  REQ011:734 03 22 D0 0C 00 00 00 00       $  ANS011:73C 03 22 D0 0C 00 00 00 00
  $  REQ012:734 03 22 D0 0D 00 00 00 00       $  ANS012:73C 03 22 D0 0D 00 00 00 00
  $  REQ013:734 03 22 D0 0E 00 00 00 00       $  ANS013:73C 03 22 D0 0E 00 00 00 00
  $  REQ014:734 03 22 D0 0F 00 00 00 00       $  ANS014:73C 03 22 D0 0F 00 00 00 00
  $  REQ015:734 03 22 D0 10 00 00 00 00       $  ANS015:73C 03 22 D0 10 00 00 00 00
  $  REQ016:734 03 22 D0 11 00 00 00 00       $  ANS016:73C 03 22 D0 11 00 00 00 00
  $  REQ017:734 03 22 D0 12 00 00 00 00       $  ANS017:73C 03 22 D0 12 00 00 00 00
  $  REQ018:734 03 22 D0 13 00 00 00 00       $  ANS018:73C 03 22 D0 13 00 00 00 00
  $  REQ019:734 03 22 D0 14 00 00 00 00       $  ANS019:73C 03 22 D0 14 00 00 00 00
  $  REQ020:734 03 22 D0 16 00 00 00 00       $  ANS020:73C 03 22 D0 16 00 00 00 00
  $  REQ021:734 03 22 D0 17 00 00 00 00       $  ANS021:73C 03 22 D0 17 00 00 00 00
  $  REQ022:734 03 22 D0 18 00 00 00 00       $  ANS022:73C 03 22 D0 18 00 00 00 00
  $  REQ023:734 03 22 D0 19 00 00 00 00       $  ANS023:73C 03 22 D0 19 00 00 00 00
  $  REQ024:734 03 22 D0 1A 00 00 00 00       $  ANS024:73C 03 22 D0 1A 00 00 00 00
  $  REQ025:734 03 22 D0 1B 00 00 00 00       $  ANS025:73C 03 22 D0 1B 00 00 00 00
  $  REQ026:734 03 22 D0 1C 00 00 00 00       $  ANS026:73C 03 22 D0 1C 00 00 00 00
  $  REQ027:734 03 22 D0 1D 00 00 00 00       $  ANS027:73C 03 22 D0 1D 00 00 00 00
  $  REQ028:734 03 22 D0 1E 00 00 00 00       $  ANS028:73C 03 22 D0 1E 00 00 00 00
  $  REQ029:734 03 22 D0 1F 00 00 00 00       $  ANS029:73C 03 22 D0 1F 00 00 00 00
  $  REQ030:734 03 22 D0 20 00 00 00 00       $  ANS030:73C 03 22 D0 20 00 00 00 00
  $  REQ031:734 03 22 D0 21 00 00 00 00       $  ANS031:73C 03 22 D0 21 00 00 00 00
  $  REQ032:734 03 22 D0 22 00 00 00 00       $  ANS032:73C 03 22 D0 22 00 00 00 00
  $  REQ033:734 03 22 D0 23 00 00 00 00       $  ANS033:73C 03 22 D0 23 00 00 00 00
  $  REQ034:734 03 22 D0 24 00 00 00 00       $  ANS034:73C 03 22 D0 24 00 00 00 00
  $  REQ035:734 03 22 D0 25 00 00 00 00       $  ANS035:73C 03 22 D0 25 00 00 00 00
  $  REQ036:734 03 22 D0 26 00 00 00 00       $  ANS036:73C 03 22 D0 26 00 00 00 00
  $  REQ037:734 03 22 A0 01 00 00 00 00       $  ANS037:73C 03 22 A0 01 00 00 00 00
  $  REQ038:734 03 22 A0 02 00 00 00 00       $  ANS038:73C 03 22 A0 02 00 00 00 00
  $  REQ039:734 03 22 D0 28 00 00 00 00       $  ANS039:73C 03 22 D0 28 00 00 00 00
  $  REQ040:734 03 22 D0 29 00 00 00 00       $  ANS040:73C 03 22 D0 29 00 00 00 00
  $  REQ041:734 03 22 D0 2A 00 00 00 00       $  ANS041:73C 03 22 D0 2A 00 00 00 00

  $  000.输出端电流和电压超限或其AD原始数值超限                $    $  /        $    $  ANS000.BYTE004  $  y=x;
  $  001.各种辅助电源的检测                                    $    $  /        $    $  ANS001.BYTE004  $  y=x;
  $  002.输入输出端电流电压或温度超限引起的DcDc shutdown       $    $  /        $    $  ANS002.BYTE004  $  y=x;
  $  003.低压端目标电压                                        $    $  V        $    $  ANS003.BYTE004  $  y=(x1*0x100+x2)/10;
  $  004.低压端实际电压                                        $    $  V        $    $  ANS004.BYTE004  $  y=(x1*0x100+x2)/10;
  $  005.低压端实际电流                                        $    $  A        $    $  ANS005.BYTE004  $  y=x1*0x100+x2-2047;
  $  006.低压端允许输出的最大电流                              $    $  A        $    $  ANS006.BYTE004  $  y=x1*0x100+x2;
  $  007.DCDC(直流转换器)的实际运行状态                        $    $  /        $    $  ANS007.BYTE004  $  switxh(x) 0x00:y=@0424;0x01:y=@053e;0x02:y=@053f;0x03:y=@0540;0x05:y=@01b0;default:y=@0009;
  $  008.输出电流受限原因                                      $    $  /        $    $  ANS008.BYTE004  $  y=x;
  $  009.输出电压受限原因                                      $    $  /        $    $  ANS009.BYTE004  $  y=x;
  $  010.Inverter目标工作状态1                                 $    $  /        $    $  ANS010.BYTE004  $  y=x;
  $  011.Inverter目标工作状态2                                 $    $  /        $    $  ANS011.BYTE004  $  y=x;
  $  012.Inverter实际工作状态                                  $    $  /        $    $  ANS012.BYTE004  $  y=x;
  $  013.需求扭矩                                              $    $  /        $    $  ANS013.BYTE004  $  y=x1*0x100+x2-2047;
  $  014.电机实际转速                                          $    $  rpm      $    $  ANS014.BYTE004  $  y=x1*0x100+x2-32767;
  $  015.电磁转矩                                              $    $  Nm       $    $  ANS015.BYTE004  $  y=x1*0x100+x2-2047;
  $  016.机械转矩                                              $    $  Nm       $    $  ANS016.BYTE004  $  y=x1*0x100+x2-1023;
  $  017.电机定子温度                                          $    $  degC     $    $  ANS017.BYTE004  $  y=x-40;
  $  018.水冷板温度                                            $    $  degC     $    $  ANS018.BYTE004  $  y=x-40;
  $  019.W相相电流                                             $    $  A        $    $  ANS019.BYTE004  $  y=x1*0x100+x2-2047;
  $  020.U相相电流                                             $    $  A        $    $  ANS020.BYTE004  $  y=x1*0x100+x2-2047;
  $  021.允许的最小扭矩                                        $    $  Nm       $    $  ANS021.BYTE004  $  y=x1*0x100+x2-1023;
  $  022.允许的最大扭矩                                        $    $  Nm       $    $  ANS022.BYTE004  $  y=x1*0x100+x2-1023;
  $  023.定子电流均方根                                        $    $  A        $    $  ANS023.BYTE004  $  y=x1*0x100+x2-2047;
  $  024.q轴滤波后的实际电流                                   $    $  A        $    $  ANS024.BYTE004  $  y=x1*0x100+x2-2047;
  $  025.d轴滤波后的实际电流                                   $    $  A        $    $  ANS025.BYTE004  $  y=x1*0x100+x2-2047;
  $  026.d轴的实际电流                                         $    $  A        $    $  ANS026.BYTE004  $  y=x1*0x100+x2-2047;
  $  027.q轴的实际电流                                         $    $  A        $    $  ANS027.BYTE004  $  y=x1*0x100+x2-2047;
  $  028.电机转子偏移角                                        $    $  deg      $    $  ANS028.BYTE004  $  Y=SPRINTF([%0.3lf],(x1*0x100+x2));
  $  029.12V电压                                               $    $  V        $    $  ANS029.BYTE004  $  y=(x1*0x100+x2)/10-64;
  $  030.钥匙信号状态                                          $    $  /        $    $  ANS030.BYTE004  $  if((x&0x07)==0x00) y=@01b0;else if((x&0x07)==0x01) y=@010f;else y=@0009;
  $  031.电机定子电流频率                                      $    $  Hz       $    $  ANS031.BYTE004  $  y=x1*0x100+x2-4095;
  $  032.主动放电状态                                          $    $  /        $    $  ANS032.BYTE004  $  if((x&0x07)==0x00) y=@01b0;else if((x&0x07)==0x01) y=@010f;else y=@0009;
  $  033.母线电压                                              $    $  V        $    $  ANS033.BYTE004  $  y=x1*0x100+x2-1023;
  $  034.滤波后的母线电压                                      $    $  V        $    $  ANS034.BYTE004  $  y=x1*0x100+x2;
  $  035.母线电流                                              $    $  A        $    $  ANS035.BYTE004  $  y=x1*0x100+x2-1023;
  $  036.滤波后的母线电流                                      $    $  A        $    $  ANS036.BYTE004  $  y=x1*0x100+x2-2047;
  $  037.定子温度                                              $    $  degC     $    $  ANS037.BYTE004  $  y=x-40;
  $  038.紧急关断标志位                                        $    $  /        $    $  ANS038.BYTE004  $  y=x;
  $  039.PEU反馈给HCU(整车控制器)的Inverter状态                $    $  /        $    $  ANS039.BYTE004  $  y=x;
  $  040.里程数                                                $    $  km       $    $  ANS040.BYTE004  $  y=(x1<<24)+(x2<<16)+(x3<<8)+x4;
  $  041.整车钥匙状态                                          $    $  /        $    $  ANS041.BYTE004  $  y=x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:734 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
