
    车型ID：5754

    模拟：协议模拟-->5754

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7B8

进入命令:

  $~  REQ000:738 02 10 03 00 00 00 00 00       $~  ANS000:7B8 02 10 03 00 00 00 00 00
  $~~ REQ001:738 02 27 01 00 00 00 00 00       $~~ ANS001:7B8 02 27 01 00 00 00 00 00
  $~~ REQ002:738 06 27 02 2A C4 8A 77 00       $~~ ANS002:7B8 06 27 02 2A C4 8A 77 00

空闲命令:

  $!  REQ000:738 02 3E 00 00 00 00 00 00       $!  ANS000:7B8 02 3E 00 00 00 00 00 00

退出命令:

  $@  REQ000:738 02 10 01 00 00 00 00 00       $@  ANS000:7B8 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:738 03 19 02 09 00 00 00 00       $#  ANS000:7B8 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/57000000


;******************************************************************************************************************************************************

<RDTC>
	<FUNCTION type="0" num="0">
		<param type="string" value="0"/><!--方式0-->
	</FUNCTION>
</RDTC>

清除故障码:

  $$  REQ000:738 04 14 FF FF FF 00 00 00       $$  ANS000:7B8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:738 03 22 F1 87 00 00 00 00       $%  ANS000:7B8 03 22 F1 87 00 00 00 00
  $%  REQ001:738 03 22 F1 88 00 00 00 00       $%  ANS001:7B8 03 22 F1 88 00 00 00 00
  $%  REQ002:738 03 22 F1 8A 00 00 00 00       $%  ANS002:7B8 03 22 F1 8A 00 00 00 00
  $%  REQ003:738 03 22 F1 97 00 00 00 00       $%  ANS003:7B8 03 22 F1 97 00 00 00 00
  $%  REQ004:738 03 22 F1 91 00 00 00 00       $%  ANS004:7B8 03 22 F1 91 00 00 00 00
  $%  REQ005:738 03 22 F1 8C 00 00 00 00       $%  ANS005:7B8 03 22 F1 8C 00 00 00 00
  $%  REQ006:738 03 22 F1 90 00 00 00 00       $%  ANS006:7B8 03 22 F1 90 00 00 00 00
  $%  REQ007:738 03 22 F1 5E 00 00 00 00       $%  ANS007:7B8 03 22 F1 5E 00 00 00 00
  $%  REQ008:738 03 22 F1 60 00 00 00 00       $%  ANS008:7B8 03 22 F1 60 00 00 00 00
  $%  REQ009:738 03 22 F1 63 00 00 00 00       $%  ANS009:7B8 03 22 F1 63 00 00 00 00
  $%  REQ010:738 03 22 F1 9E 00 00 00 00       $%  ANS010:7B8 03 22 F1 9E 00 00 00 00
  $%  REQ011:738 03 22 F1 5B 00 00 00 00       $%  ANS011:7B8 03 22 F1 5B 00 00 00 00

  $%  000:控制器总零件号:           $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:主芯片(MCU)软件号:        $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:供应商识别号:             $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  003:系统识别号:               $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:硬件号:                   $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:序列号:                   $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别编码(VIN):        $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23);
  $%  007:网络数据库标识符:         $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  008:配置文件号:               $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:驱动软件号:               $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  010:ODX文件号:                $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:读软件指纹:               $%    $%  ANS011.BYTE004  $%  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:738 03 22 CF 00 00 00 00 00       $  ANS000:7B8 03 22 CF 00 00 00 00 00
  $  REQ001:738 03 22 CF 01 00 00 00 00       $  ANS001:7B8 03 22 CF 01 00 00 00 00
  $  REQ002:738 03 22 CF 02 00 00 00 00       $  ANS002:7B8 03 22 CF 02 00 00 00 00
  $  REQ003:738 03 22 CF 05 00 00 00 00       $  ANS003:7B8 03 22 CF 05 00 00 00 00
  $  REQ004:738 03 22 12 00 00 00 00 00       $  ANS004:7B8 03 22 12 00 00 00 00 00
  $  REQ005:738 03 22 12 01 00 00 00 00       $  ANS005:7B8 03 22 12 01 00 00 00 00
  $  REQ006:738 03 22 12 03 00 00 00 00       $  ANS006:7B8 03 22 12 03 00 00 00 00
  $  REQ007:738 03 22 12 04 00 00 00 00       $  ANS007:7B8 03 22 12 04 00 00 00 00
  $  REQ008:738 03 22 12 05 00 00 00 00       $  ANS008:7B8 03 22 12 05 00 00 00 00
  $  REQ009:738 03 22 12 06 00 00 00 00       $  ANS009:7B8 03 22 12 06 00 00 00 00
  $  REQ010:738 03 22 F1 86 00 00 00 00       $  ANS010:7B8 03 22 F1 86 00 00 00 00
  $  REQ011:738 03 22 CF 08 00 00 00 00       $  ANS011:7B8 03 22 CF 08 00 00 00 00
  $  REQ012:738 03 22 CF 07 00 00 00 00       $  ANS012:7B8 03 22 CF 07 00 00 00 00
  $  REQ013:738 03 22 CF 09 00 00 00 00       $  ANS013:7B8 03 22 CF 09 00 00 00 00

  $  000.控制器电源模式               $    $           $    $  ANS000.BYTE004  $  switxh(x) 0x00:y=@00000058;0x01:y=@00000059;0x02:y=@00000060;0x03:y=@00000061;default: y=@00000037;
  $  001.车速                         $    $  Km/h     $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.05625;
  $  002.控制器电源电压               $    $  V        $    $  ANS002.BYTE004  $  y=x*0.1;
  $  003.动力系统当前运行模式         $    $           $    $  ANS003.BYTE004  $  y=x;
  $  004.校准状态                     $    $           $    $  ANS004.BYTE004  $  switxh(x) 0x00:y=@00000052;0x01:y=@00000053;0x02:y=@00000054;0x03:y=@00000055;0x4:y=@00000056;0x05:y=@00000057;default: y=@00000037;
  $  005.雷达位置状态                 $    $           $    $  ANS005.BYTE004  $  switxh(x) 0x00:y=@00000049;0x01:y=@00000050;0x02:y=@00000051;default: y=@00000037;
  $  006.差角方向                     $    $           $    $  ANS006.BYTE004  $  switxh(x) 0x00:y=@00000044;0x01:y=@00000045;0x02:y=@00000046;0x03:y=@00000047;0x04:y=@00000048;default: y=@00000037;
  $  007.偏差角的值                   $    $           $    $  ANS007.BYTE005  $  y=(x1*256+x2)*0.01;
  $  008.雷达安装位置                 $    $           $    $  ANS008.BYTE004  $  switxh(x) 0x00:y=@00000026;0x01:y=@00000042;0x02:y=@00000043;default: y=@00000037;
  $  009.售后校准的雷达位置状态       $    $           $    $  ANS009.BYTE004  $  switxh(x) 0x00:y=@00000049;0x01:y=@00000050;0x02:y=@00000051;default: y=@00000037;
  $  010.激活当前诊断会话层           $    $           $    $  ANS010.BYTE004  $  switxh(x) 0x01:y=@00000038;0x02:y=@00000039;0x03:y=@00000040;default: y=@00000041;
  $  011.控制器温度                   $    $  °C      $    $  ANS011.BYTE004  $  y=x;
  $  012.系统运行时间（秒）           $    $           $    $  ANS012.BYTE004  $  SPRINTF([%d%d%d%d%d%d%d%d%d%d],x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $  013.时间                         $    $           $    $  ANS013.BYTE004  $  y=;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:738 30 00 01 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
