
    车型ID：0a82

    模拟：协议模拟-->0a82

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7BC

进入命令:

  $~  REQ000:7B4 02 10 01 00 00 00 00 00       $~  ANS000:7BC 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7B4 02 3E 00 00 00 00 00 00       $!  ANS000:7BC 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7B4 03 19 02 09 00 00 00 00       $#  ANS000:7BC 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/93000000


  $#  01.读故障码库
  $#  REQ000:7B4 02 19 0A 00 00 00 00 00       $#  ANS000:7BC 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/93000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7B4 04 14 FF FF FF 00 00 00       $$  ANS000:7BC 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7B4 03 22 F1 12 00 00 00 00       $%  ANS000:7BC 03 22 F1 12 00 00 00 00
  $%  REQ001:7B4 03 22 F1 87 00 00 00 00       $%  ANS001:7BC 03 22 F1 87 00 00 00 00
  $%  REQ002:7B4 03 22 F1 8A 00 00 00 00       $%  ANS002:7BC 03 22 F1 8A 00 00 00 00
  $%  REQ003:7B4 03 22 F1 90 00 00 00 00       $%  ANS003:7BC 03 22 F1 90 00 00 00 00
  $%  REQ004:7B4 03 22 F1 93 00 00 00 00       $%  ANS004:7BC 03 22 F1 93 00 00 00 00
  $%  REQ005:7B4 03 22 F1 95 00 00 00 00       $%  ANS005:7BC 03 22 F1 95 00 00 00 00
  $%  REQ006:7B4 03 22 F1 98 00 00 00 00       $%  ANS006:7BC 03 22 F1 98 00 00 00 00
  $%  REQ007:7B4 03 22 F1 99 00 00 00 00       $%  ANS007:7BC 03 22 F1 99 00 00 00 00
  $%  REQ008:7B4 03 22 F1 82 00 00 00 00       $%  ANS008:7BC 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                                      $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:供应商代码:                                  $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:车辆识别号（VIN码）:                         $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  004:ECU(电子控制器)硬件版本号:                   $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  005:ECU(电子控制器)软件版本号:                   $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  006:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:ECU(电子控制器)刷写日期:                     $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  008:标定软件版本号:                              $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7B4 03 22 DF 00 00 00 00 00       $  ANS000:7BC 03 22 DF 00 00 00 00 00
  $  REQ001:7B4 03 22 DF 01 00 00 00 00       $  ANS001:7BC 03 22 DF 01 00 00 00 00
  $  REQ002:7B4 03 22 4E 04 00 00 00 00       $  ANS002:7BC 03 22 4E 04 00 00 00 00
  $  REQ003:7B4 03 22 4E 05 00 00 00 00       $  ANS003:7BC 03 22 4E 05 00 00 00 00
  $  REQ004:7B4 03 22 4E 06 00 00 00 00       $  ANS004:7BC 03 22 4E 06 00 00 00 00
  $  REQ005:7B4 03 22 4E 07 00 00 00 00       $  ANS005:7BC 03 22 4E 07 00 00 00 00
  $  REQ006:7B4 03 22 4E 08 00 00 00 00       $  ANS006:7BC 03 22 4E 08 00 00 00 00
  $  REQ007:7B4 03 22 4E 09 00 00 00 00       $  ANS007:7BC 03 22 4E 09 00 00 00 00
  $  REQ008:7B4 03 22 4E 10 00 00 00 00       $  ANS008:7BC 03 22 4E 10 00 00 00 00
  $  REQ009:7B4 03 22 4E 11 00 00 00 00       $  ANS009:7BC 03 22 4E 11 00 00 00 00
  $  REQ010:7B4 03 22 4E 12 00 00 00 00       $  ANS010:7BC 03 22 4E 12 00 00 00 00
  $  REQ011:7B4 03 22 4E 13 00 00 00 00       $  ANS011:7BC 03 22 4E 13 00 00 00 00
  $  REQ012:7B4 03 22 4E 14 00 00 00 00       $  ANS012:7BC 03 22 4E 14 00 00 00 00
  $  REQ013:7B4 03 22 4E 15 00 00 00 00       $  ANS013:7BC 03 22 4E 15 00 00 00 00
  $  REQ014:7B4 03 22 4E 16 00 00 00 00       $  ANS014:7BC 03 22 4E 16 00 00 00 00
  $  REQ015:7B4 03 22 4E 17 00 00 00 00       $  ANS015:7BC 03 22 4E 17 00 00 00 00

  $  000.蓄电池电压                                                   $    $  V        $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.车速信号                                                     $    $  km/h     $    $  ANS001.BYTE004  $  y=INT((x1*0x100+x2)*0.05625);
  $  002.DCDC(DC-DC转换控制器)实际输出电压                            $    $  V        $    $  ANS002.BYTE004  $  y=(x1*0x100+x2)*0.001953125;
  $  003.DCDC(DC-DC转换控制器)实际输出电流                            $    $  A        $    $  ANS003.BYTE004  $  y=(x1*0x100+x2)*0.0078125;
  $  004.DCDC(DC-DC转换控制器)实际工作模式                            $    $  /        $    $  ANS004.BYTE004  $  if(x==0x00)y=@058a;else if(x==0x01) y=@0197;else if(x==0x02) y=@0c0e;else if(x==0x05) y=@01b4;else if(x==0x08) y=@05e4;else if(x==0x09) y=@0000;else if(x==0x010) y=@0c0f;else y=@0220;
  $  005.HCU(整车控制器)请求DCDC(DC-DC转换控制器)模式                 $    $  /        $    $  ANS005.BYTE004  $  if(x==0x01) y=@0197;else if(x==0x02) y=@0c0e;else if(x==0x03) y=@05e4;else if(x==0x06) y=@0000;else y=@0220;
  $  006.HCU(整车控制器)发送DCDC(DC-DC转换控制器)目标输出电压         $    $  V        $    $  ANS006.BYTE004  $  y=(x1*0x100+x2)*0.001953125;
  $  007.DCDC(DC-DC转换控制器)控制模式(电压环，电流环)                $    $  /        $    $  ANS007.BYTE004  $  y=HEX(x);
  $  008.DCDC(DC-DC转换控制器)实际移相值                              $    $  /        $    $  ANS008.BYTE004  $  y=(x1*0x100+x2)*0.000244140625;
  $  009.DCDC(DC-DC转换控制器)输出被限制的原因                        $    $  /        $    $  ANS009.BYTE004  $  y=HEX(x);
  $  010.DCDC(DC-DC转换控制器)输入电压                                $    $  V        $    $  ANS010.BYTE004  $  y=(x1*0x100+x2)*0.03125;
  $  011.DCDC(DC-DC转换控制器)输入电流                                $    $  A        $    $  ANS011.BYTE004  $  y=(x1*0x100+x2)*0.0078125;
  $  012.DCDC(DC-DC转换控制器)LVMOSFET温度                            $    $  degC     $    $  ANS012.BYTE004  $  y=(x1*0x100+x2)*0.0078125;
  $  013.DCDC(DC-DC转换控制器)S9MOSFET温度                            $    $  degC     $    $  ANS013.BYTE004  $  y=(x1*0x100+x2)*0.0078125;
  $  014.HCU(整车控制器)发送DCDC(DC-DC转换控制器)输出电流限制值       $    $  A        $    $  ANS014.BYTE004  $  y=(x1*0x100+x2)*0.0078125;
  $  015.DCDC(DC-DC转换控制器) 13.5V驱动电压                          $    $  V        $    $  ANS015.BYTE004  $  y=(x1*0x100+x2)*0.001953125;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7B4 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:7B4 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
