
    车型ID：3c44

    模拟：协议模拟-->3c44

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~719,709

进入命令:

  $~  REQ000:719 02 10 03 00 00 00 00 00       $~  ANS000:719 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:719 02 3E 00 00 00 00 00 00       $!  ANS000:719 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:719 03 19 02 09 00 00 00 00       $#  ANS000:719 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/08000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:719 04 14 FF FF FF 00 00 00       $$  ANS000:719 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:719 03 22 31 00 00 00 00 00       $%  ANS000:719 03 22 31 00 00 00 00 00
  $%  REQ001:719 03 22 31 01 00 00 00 00       $%  ANS001:719 03 22 31 01 00 00 00 00
  $%  REQ002:719 03 22 F1 83 00 00 00 00       $%  ANS002:719 03 22 F1 83 00 00 00 00
  $%  REQ003:719 03 22 F1 86 00 00 00 00       $%  ANS003:719 03 22 F1 86 00 00 00 00
  $%  REQ004:719 03 22 F1 87 00 00 00 00       $%  ANS004:719 03 22 F1 87 00 00 00 00
  $%  REQ005:719 03 22 F1 8A 00 00 00 00       $%  ANS005:719 03 22 F1 8A 00 00 00 00
  $%  REQ006:719 03 22 F1 8B 00 00 00 00       $%  ANS006:719 03 22 F1 8B 00 00 00 00
  $%  REQ007:719 03 22 F1 8C 00 00 00 00       $%  ANS007:719 03 22 F1 8C 00 00 00 00
  $%  REQ008:719 03 22 F1 90 00 00 00 00       $%  ANS008:719 03 22 F1 90 00 00 00 00
  $%  REQ009:719 03 22 F1 95 00 00 00 00       $%  ANS009:719 03 22 F1 95 00 00 00 00
  $%  REQ010:719 03 22 F1 97 00 00 00 00       $%  ANS010:719 03 22 F1 97 00 00 00 00
  $%  REQ011:719 03 22 F1 9D 00 00 00 00       $%  ANS011:719 03 22 F1 9D 00 00 00 00

  $%  000:供应商零件号ID:                                $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  001:大陆零件号:                                    $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:电控单元(ECU)引导程序软件参考号:               $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:激活诊断会话:                                  $%    $%  ANS003.BYTE004  $%  switxh(x)1: y=@0038;3: y=@00e0;default: y=@0003;
  $%  004:OEM(原始设备制造商)零件号:                     $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  005:电控单元(ECU)供应商标识符:                     $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  006:电控单元(ECU)制造日期:                         $%    $%  ANS006.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  007:单元序列号:                                    $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  008:车辆识别代号:                                  $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  009:电控单元(ECU)供应商软件版本号数据标识符:       $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  010:系统名称:                                      $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:电控单元(ECU)安装日期:                         $%    $%  ANS011.BYTE004  $%  HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.引爆电阻值
  $  00.引爆电阻值
  $  REQ000:719 03 22 10 01 00 00 00 00       $  ANS000:719 03 22 10 01 00 00 00 00

  $  000.驾驶员前气囊                 $    $  Ohm     $    $  ANS000.BYTE004  $  y=x*0.0390656;
  $  001.副驾驶前气囊                 $    $  Ohm     $    $  ANS000.BYTE006  $  y=x*0.0390656;
  $  002.驾驶员安全带预紧器           $    $  Ohm     $    $  ANS000.BYTE008  $  y=x*0.0390656;
  $  003.副驾驶安全带预紧器           $    $  Ohm     $    $  ANS000.BYTE010  $  y=x*0.0390656;
  $  004.驾驶员侧面(左边)气囊         $    $  Ohm     $    $  ANS000.BYTE012  $  y=x*0.0390656;
  $  005.副驾驶侧面(右边)气囊         $    $  Ohm     $    $  ANS000.BYTE014  $  y=x*0.0390656;
  $  006.驾驶员侧面(左边)气帘         $    $  Ohm     $    $  ANS000.BYTE016  $  y=x*0.0390656;
  $  007.副驾驶员侧面(右边)气帘       $    $  Ohm     $    $  ANS000.BYTE018  $  y=x*0.0390656;
  $  008.后排左安全带预紧器           $    $  Ohm     $    $  ANS000.BYTE020  $  y=x*0.0390656;
  $  009.后排右安全带预紧器           $    $  Ohm     $    $  ANS000.BYTE022  $  y=x*0.0390656;

  $)  01.实时信息
  $  01.实时信息
  $  REQ000:719 03 22 10 02 00 00 00 00       $  ANS000:719 03 22 10 02 00 00 00 00

  $  000.乘员卡扣开关实时状态 1         $    $        $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@00c9;else y=@00df;
  $  001.乘员卡扣开关实时状态 2         $    $        $    $  ANS000.BYTE004  $  switxh(x&0x06)0: y=@00c7;0x02: y=@00c8;0x04: y=@005e;default: y=@0003;
  $  002.驾驶员卡扣开关实时状态 1       $    $        $    $  ANS000.BYTE004  $  if(((x>>4)&1)) y=@00c9;else y=@00df;
  $  003.驾驶员卡扣开关实时状态 2       $    $        $    $  ANS000.BYTE004  $  switxh(x&0x60)0: y=@00c7;0x20: y=@00c8;0x40: y=@005e;default: y=@0003;
  $  004.电池电压                       $    $  V     $    $  ANS000.BYTE007  $  y=x*0.4128;
  $  005.能源储备电压                   $    $  V     $    $  ANS000.BYTE008  $  y=x*0.6704;
  $  006.点火开关周期计数器             $    $        $    $  ANS000.BYTE009  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:719 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
