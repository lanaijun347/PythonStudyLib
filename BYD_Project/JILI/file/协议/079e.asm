
    车型ID：079e

    模拟：协议模拟-->079e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7DA

进入命令:

  $~  REQ000:7D2 02 10 01 00 00 00 00 00       $~  ANS000:7DA 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7D2 02 3E 00 00 00 00 00 00       $!  ANS000:7DA 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7D2 03 19 02 09 00 00 00 00       $#  ANS000:7DA 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/f4000000


  $#  01.读故障码库
  $#  REQ000:7D2 02 19 0A 00 00 00 00 00       $#  ANS000:7DA 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/f4000000


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

  $$  REQ000:7D2 04 14 FF FF FF 00 00 00       $$  ANS000:7DA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7D2 03 22 F1 12 00 00 00 00       $%  ANS000:7DA 03 22 F1 12 00 00 00 00
  $%  REQ001:7D2 03 22 F1 86 00 00 00 00       $%  ANS001:7DA 03 22 F1 86 00 00 00 00
  $%  REQ002:7D2 03 22 F1 87 00 00 00 00       $%  ANS002:7DA 03 22 F1 87 00 00 00 00
  $%  REQ003:7D2 03 22 F1 8A 00 00 00 00       $%  ANS003:7DA 03 22 F1 8A 00 00 00 00
  $%  REQ004:7D2 03 22 F1 8B 00 00 00 00       $%  ANS004:7DA 03 22 F1 8B 00 00 00 00
  $%  REQ005:7D2 03 22 F1 8C 00 00 00 00       $%  ANS005:7DA 03 22 F1 8C 00 00 00 00
  $%  REQ006:7D2 03 22 F1 90 00 00 00 00       $%  ANS006:7DA 03 22 F1 90 00 00 00 00
  $%  REQ007:7D2 03 22 F1 92 00 00 00 00       $%  ANS007:7DA 03 22 F1 92 00 00 00 00
  $%  REQ008:7D2 03 22 F1 93 00 00 00 00       $%  ANS008:7DA 03 22 F1 93 00 00 00 00
  $%  REQ009:7D2 03 22 F1 95 00 00 00 00       $%  ANS009:7DA 03 22 F1 95 00 00 00 00
  $%  REQ010:7D2 03 22 F1 98 00 00 00 00       $%  ANS010:7DA 03 22 F1 98 00 00 00 00
  $%  REQ011:7D2 03 22 F1 99 00 00 00 00       $%  ANS011:7DA 03 22 F1 99 00 00 00 00
  $%  REQ012:7D2 03 22 F1 9D 00 00 00 00       $%  ANS012:7DA 03 22 F1 9D 00 00 00 00
  $%  REQ013:7D2 03 22 F1 80 00 00 00 00       $%  ANS013:7DA 03 22 F1 80 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:当前诊断会话模式:                            $%    $%  ANS001.BYTE004  $%  if(x==0x01) y=@000f;else if(x==0x03) y=@0010;else y=@0009;
  $%  002:零件号:                                      $%    $%  ANS002.BYTE004  $%  0 ASCII
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:ECU(电子控制器)生产日期:                     $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  006:车辆识别号(VIN码):                           $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件号:                       $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)硬件版本号:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)软件版本号:                   $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  011:ECU(电子控制器)刷写日期:                     $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:ECU(电子控制器)安装日期:                     $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  013:驱动层软件版本:                              $%    $%  ANS013.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7D2 03 22 02 00 00 00 00 00       $  ANS000:7DA 03 22 02 00 00 00 00 00
  $  REQ001:7D2 03 22 02 01 00 00 00 00       $  ANS001:7DA 03 22 02 01 00 00 00 00
  $  REQ002:7D2 03 22 32 00 00 00 00 00       $  ANS002:7DA 03 22 32 00 00 00 00 00
  $  REQ003:7D2 03 22 32 01 00 00 00 00       $  ANS003:7DA 03 22 32 01 00 00 00 00
  $  REQ004:7D2 03 22 32 02 00 00 00 00       $  ANS004:7DA 03 22 32 02 00 00 00 00
  $  REQ005:7D2 03 22 32 03 00 00 00 00       $  ANS005:7DA 03 22 32 03 00 00 00 00
  $  REQ006:7D2 03 22 32 04 00 00 00 00       $  ANS006:7DA 03 22 32 04 00 00 00 00
  $  REQ007:7D2 03 22 DF 01 00 00 00 00       $  ANS007:7DA 03 22 DF 01 00 00 00 00
  $  REQ008:7D2 03 22 32 05 00 00 00 00       $  ANS008:7DA 03 22 32 05 00 00 00 00
  $  REQ009:7D2 03 22 32 06 00 00 00 00       $  ANS009:7DA 03 22 32 06 00 00 00 00

  $  000.ECU(电子控制器)成功刷写次数         $    $  /        $    $  ANS000.BYTE004  $  HEX(x);
  $  001.ECU(电子控制器)尝试刷写次数         $    $  /        $    $  ANS001.BYTE004  $  HEX(x);
  $  002.扭矩                                $    $  Nm       $    $  ANS002.BYTE004  $  if(x1>0x80) y=((x1*0x100+x2)-65536)*0.001; else y=((x1*0x100+x2)*0.001);
  $  003.电机电流                            $    $  A        $    $  ANS003.BYTE004  $  y=((x1*0x100+x2)*0.005714);
  $  004.方向盘转角                          $    $  deg      $    $  ANS004.BYTE004  $  if(x1>=0x80) y=((x1*0x100+x2)-65536)*0.1; else y=((x1*0x100+x2)*0.1);
  $  005.扭矩传感器供电电压                  $    $  V        $    $  ANS005.BYTE004  $  y=x*0.03906;
  $  006.点火电压                            $    $  V        $    $  ANS006.BYTE004  $  y=x*0.11096;
  $  007.车速                                $    $  km/h     $    $  ANS007.BYTE004  $  y=INT((x1*0x100+x2)*0.05625);
  $  008.电机电压                            $    $  V        $    $  ANS008.BYTE004  $  y=(x1*0x100+x2)*0.0004334;
  $  009.EPS(电子助力转向系统)内部温度       $    $  degC     $    $  ANS009.BYTE004  $  y=(x1*0x100+x2)*0.1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7D2 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
