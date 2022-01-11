
    车型ID：090a

    模拟：协议模拟-->090a

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~74F

进入命令:

  $~  REQ000:747 02 10 01 00 00 00 00 00       $~  ANS000:74F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:747 02 3E 00 00 00 00 00 00       $!  ANS000:74F 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:747 03 19 02 09 00 00 00 00       $#  ANS000:74F 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/a9000000


  $#  01.读故障码库
  $#  REQ000:747 02 19 0A 00 00 00 00 00       $#  ANS000:74F 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/a9000000


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

  $$  REQ000:747 04 14 FF FF FF 00 00 00       $$  ANS000:74F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:747 03 22 F1 12 00 00 00 00       $%  ANS000:74F 03 22 F1 12 00 00 00 00
  $%  REQ001:747 03 22 F1 87 00 00 00 00       $%  ANS001:74F 03 22 F1 87 00 00 00 00
  $%  REQ002:747 03 22 F1 89 00 00 00 00       $%  ANS002:74F 03 22 F1 89 00 00 00 00
  $%  REQ003:747 03 22 F1 8A 00 00 00 00       $%  ANS003:74F 03 22 F1 8A 00 00 00 00
  $%  REQ004:747 03 22 F1 8B 00 00 00 00       $%  ANS004:74F 03 22 F1 8B 00 00 00 00
  $%  REQ005:747 03 22 F1 8C 00 00 00 00       $%  ANS005:74F 03 22 F1 8C 00 00 00 00
  $%  REQ006:747 03 22 F1 90 00 00 00 00       $%  ANS006:74F 03 22 F1 90 00 00 00 00
  $%  REQ007:747 03 22 F1 93 00 00 00 00       $%  ANS007:74F 03 22 F1 93 00 00 00 00
  $%  REQ008:747 03 22 F1 95 00 00 00 00       $%  ANS008:74F 03 22 F1 95 00 00 00 00
  $%  REQ009:747 03 22 F1 9D 00 00 00 00       $%  ANS009:74F 03 22 F1 9D 00 00 00 00
  $%  REQ010:747 03 22 F1 97 00 00 00 00       $%  ANS010:74F 03 22 F1 97 00 00 00 00
  $%  REQ011:747 03 22 F1 98 00 00 00 00       $%  ANS011:74F 03 22 F1 98 00 00 00 00
  $%  REQ012:747 03 22 F1 99 00 00 00 00       $%  ANS012:74F 03 22 F1 99 00 00 00 00
  $%  REQ013:747 03 22 F1 82 00 00 00 00       $%  ANS013:74F 03 22 F1 82 00 00 00 00

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
  $%  010:ECU(电子控制器)系统名称或发动机类型:         $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  011:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  012:ECU(电子控制器)刷写日期:                     $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  013:标定软件版本号:                              $%    $%  ANS013.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:747 03 22 48 0E 00 00 00 00       $  ANS000:74F 03 22 48 0E 00 00 00 00
  $  REQ001:747 03 22 48 0F 00 00 00 00       $  ANS001:74F 03 22 48 0F 00 00 00 00
  $  REQ002:747 03 22 48 10 00 00 00 00       $  ANS002:74F 03 22 48 10 00 00 00 00
  $  REQ003:747 03 22 48 1D 00 00 00 00       $  ANS003:74F 03 22 48 1D 00 00 00 00
  $  REQ004:747 03 22 48 1E 00 00 00 00       $  ANS004:74F 03 22 48 1E 00 00 00 00
  $  REQ005:747 03 22 48 24 00 00 00 00       $  ANS005:74F 03 22 48 24 00 00 00 00
  $  REQ006:747 03 22 48 29 00 00 00 00       $  ANS006:74F 03 22 48 29 00 00 00 00

  $  000.电机模式请求               $    $  /       $    $  ANS000.BYTE004  $  switxh(x)0x01:y=@06fd;0x03:y=@0f21;0x04:y=@0f22;0x05:y=@0949;0x06:y=@097d;0x07:y=@0f23;0x08:y=@0f24;default:y=@0162;
  $  001.电机模式状态               $    $  /       $    $  ANS001.BYTE004  $  switxh(x)0x01:y=@0f25;0x02:y=@0f26;0x10:y=@08b7;0x30:y=@0f27;0x31:y=@0f28;0x32:y=@0f29;0x33:y=@0f2a;0x34:y=@0f2b;0x35:y=@0f2c;0x40:y=@0f2d;0x41:y=@0f2e;0x42:y=@0f2f;0x43:y=@0f30;0x44:y=@0f31;0x50:y=@0f32;0x51:y=@0f33;0x52:y=@0f34;0x53:y=@0f35;0x54:y=@0f36;0x55:y=@0f37;0x56:y=@0f38;0x60:y=@0f39;0x61:y=@0f3a;0x62:y=@0f3b;0x63:y=@0f3c;0x64:y=@0f3d;0x65:y=@0f3e;0x70:y=@0f3f;0x71:y=@0f40;0x72:y=@0f41;0x73:y=@0f42;0x74:y=@0f43;0x80:y=@0f44;0x81:y=@0f45;0x82:y=@0f46;0x83:y=@0f47;0x90:y=@0f48;default:y=@0162;
  $  002.扭矩控制中扭矩请求值       $    $  Nm      $    $  ANS002.BYTE004  $  y=x*0.5-44;
  $  003.电机转速                   $    $  rpm     $    $  ANS003.BYTE004  $  y=x1*256+x2-2000;
  $  004.电机48V端电压值            $    $  V       $    $  ANS004.BYTE004  $  y=(x1*256+x2)*0.02;
  $  005.电机48V端电流值            $    $  A       $    $  ANS005.BYTE004  $  y=x1*256+x2-400;
  $  006.电机整体温度率             $    $  %       $    $  ANS006.BYTE004  $  y=x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:747 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
