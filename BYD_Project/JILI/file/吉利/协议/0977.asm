
    车型ID：0977

    模拟：协议模拟-->0977

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7EF

进入命令:

  $~  REQ000:7E7 02 10 01 00 00 00 00 00       $~  ANS000:7EF 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E7 02 3E 00 00 00 00 00 00       $!  ANS000:7EF 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7E7 03 19 02 09 00 00 00 00       $#  ANS000:7EF 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/98000000


  $#  01.读故障码库
  $#  REQ000:7E7 02 19 0A 00 00 00 00 00       $#  ANS000:7EF 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/98000000


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

  $$  REQ000:7E7 04 14 FF FF FF 00 00 00       $$  ANS000:7EF 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E7 03 22 F1 12 00 00 00 00       $%  ANS000:7EF 03 22 F1 12 00 00 00 00
  $%  REQ001:7E7 03 22 F1 87 00 00 00 00       $%  ANS001:7EF 03 22 F1 87 00 00 00 00
  $%  REQ002:7E7 03 22 F1 89 00 00 00 00       $%  ANS002:7EF 03 22 F1 89 00 00 00 00
  $%  REQ003:7E7 03 22 F1 8A 00 00 00 00       $%  ANS003:7EF 03 22 F1 8A 00 00 00 00
  $%  REQ004:7E7 03 22 F1 8B 00 00 00 00       $%  ANS004:7EF 03 22 F1 8B 00 00 00 00
  $%  REQ005:7E7 03 22 F1 8C 00 00 00 00       $%  ANS005:7EF 03 22 F1 8C 00 00 00 00
  $%  REQ006:7E7 03 22 F1 90 00 00 00 00       $%  ANS006:7EF 03 22 F1 90 00 00 00 00
  $%  REQ007:7E7 03 22 F1 93 00 00 00 00       $%  ANS007:7EF 03 22 F1 93 00 00 00 00
  $%  REQ008:7E7 03 22 F1 95 00 00 00 00       $%  ANS008:7EF 03 22 F1 95 00 00 00 00
  $%  REQ009:7E7 03 22 F1 9D 00 00 00 00       $%  ANS009:7EF 03 22 F1 9D 00 00 00 00
  $%  REQ010:7E7 03 22 F1 98 00 00 00 00       $%  ANS010:7EF 03 22 F1 98 00 00 00 00
  $%  REQ011:7E7 03 22 F1 99 00 00 00 00       $%  ANS011:7EF 03 22 F1 99 00 00 00 00
  $%  REQ012:7E7 03 22 F1 82 00 00 00 00       $%  ANS012:7EF 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                                      $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:Geely软件版本号:                             $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:                     $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)安装日期:                     $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  010:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  011:ECU(电子控制器)刷写日期:                     $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:标定软件版本号:                              $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E7 03 22 DF 00 00 00 00 00       $  ANS000:7EF 03 22 DF 00 00 00 00 00
  $  REQ001:7E7 03 22 50 00 00 00 00 00       $  ANS001:7EF 03 22 50 00 00 00 00 00
  $  REQ002:7E7 03 22 50 01 00 00 00 00       $  ANS002:7EF 03 22 50 01 00 00 00 00
  $  REQ003:7E7 03 22 50 02 00 00 00 00       $  ANS003:7EF 03 22 50 02 00 00 00 00
  $  REQ004:7E7 03 22 50 03 00 00 00 00       $  ANS004:7EF 03 22 50 03 00 00 00 00
  $  REQ005:7E7 03 22 50 04 00 00 00 00       $  ANS005:7EF 03 22 50 04 00 00 00 00
  $  REQ006:7E7 03 22 50 05 00 00 00 00       $  ANS006:7EF 03 22 50 05 00 00 00 00
  $  REQ007:7E7 03 22 50 06 00 00 00 00       $  ANS007:7EF 03 22 50 06 00 00 00 00
  $  REQ008:7E7 03 22 50 07 00 00 00 00       $  ANS008:7EF 03 22 50 07 00 00 00 00
  $  REQ009:7E7 03 22 50 08 00 00 00 00       $  ANS009:7EF 03 22 50 08 00 00 00 00
  $  REQ010:7E7 03 22 50 09 00 00 00 00       $  ANS010:7EF 03 22 50 09 00 00 00 00
  $  REQ011:7E7 03 22 50 0A 00 00 00 00       $  ANS011:7EF 03 22 50 0A 00 00 00 00
  $  REQ012:7E7 03 22 50 0B 00 00 00 00       $  ANS012:7EF 03 22 50 0B 00 00 00 00
  $  REQ013:7E7 03 22 50 0C 00 00 00 00       $  ANS013:7EF 03 22 50 0C 00 00 00 00
  $  REQ014:7E7 03 22 50 0D 00 00 00 00       $  ANS014:7EF 03 22 50 0D 00 00 00 00

  $  000.ECU(电子控制器)供电电压         $    $  V        $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.充电枪连接检测                  $    $  /        $    $  ANS001.BYTE004  $  if(x1==0x00)y=@0231;else if(x1==0x01)y=@0232;else y=@0209;
  $  002.CP 充电功率检测                 $    $  /        $    $  ANS002.BYTE004  $  if(x1==0x00)y=@0233;else if(x1==0x01)y=@0234;else y=@0209;
  $  003.电子锁马达状态                  $    $  /        $    $  ANS003.BYTE004  $  switxh(x)0x00:y=@01d0;0x01:y=@0dcd;0x02:y=@0dce;0x03:y=@0dcf;0x04:y=@0dd0;0x05:y=@0dd1; else y=@0220;
  $  004.PFC(功率因数校正)电路温度       $    $  degC     $    $  ANS004.BYTE004  $  y=x-128;
  $  005.DC/DC电路温度                   $    $  degC     $    $  ANS005.BYTE004  $  y=x-128;
  $  006.变压器温度                      $    $  degC     $    $  ANS006.BYTE004  $  y=x-128;
  $  007.电网输入电流                    $    $  A        $    $  ANS007.BYTE004  $  y=(x1*256+x2)*0.1-410;
  $  008.电网输入电压                    $    $  V        $    $  ANS008.BYTE004  $  y=(x1*256+x2)*0.25;
  $  009.充电机输出电流                  $    $  A        $    $  ANS009.BYTE004  $  y=(x1*256+x2)*0.1-410;
  $  010.充电机输出电压                  $    $  V        $    $  ANS010.BYTE004  $  y=(x1*256+x2)*0.25;
  $  011.引导电路电压                    $    $  V        $    $  ANS011.BYTE004  $  y=x*0.125;
  $  012.引导电路占空比                  $    $  %        $    $  ANS012.BYTE004  $  y=x;
  $  013.引导电路周期                    $    $  Hz       $    $  ANS013.BYTE004  $  y=(x1*256+x2)*0.5;
  $  014.电网输入频率                    $    $  Hz       $    $  ANS014.BYTE004  $  y=x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E7 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
