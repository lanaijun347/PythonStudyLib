
    车型ID：5780

    模拟：协议模拟-->5780

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7B5

进入命令:

  $~  REQ000:735 02 10 03 00 00 00 00 00       $~  ANS000:7B5 02 10 03 00 00 00 00 00
  $~~ REQ001:735 02 27 01 00 00 00 00 00       $~~ ANS001:7B5 02 27 01 00 00 00 00 00
  $~~ REQ002:735 06 27 02 86 30 D4 C1 00       $~~ ANS002:7B5 06 27 02 86 30 D4 C1 00

空闲命令:

  $!  REQ000:735 02 3E 00 00 00 00 00 00       $!  ANS000:7B5 02 3E 00 00 00 00 00 00

退出命令:

  $@  REQ000:735 02 10 01 00 00 00 00 00       $@  ANS000:7B5 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:735 03 19 02 09 00 00 00 00       $#  ANS000:7B5 03 19 02 09 00 00 00 00

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

  $$  REQ000:735 04 14 FF FF FF 00 00 00       $$  ANS000:7B5 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:735 03 22 F1 87 00 00 00 00       $%  ANS000:7B5 03 22 F1 87 00 00 00 00
  $%  REQ001:735 03 22 F1 88 00 00 00 00       $%  ANS001:7B5 03 22 F1 88 00 00 00 00
  $%  REQ002:735 03 22 F1 8A 00 00 00 00       $%  ANS002:7B5 03 22 F1 8A 00 00 00 00
  $%  REQ003:735 03 22 F1 97 00 00 00 00       $%  ANS003:7B5 03 22 F1 97 00 00 00 00
  $%  REQ004:735 03 22 F1 91 00 00 00 00       $%  ANS004:7B5 03 22 F1 91 00 00 00 00
  $%  REQ005:735 03 22 F1 8C 00 00 00 00       $%  ANS005:7B5 03 22 F1 8C 00 00 00 00
  $%  REQ006:735 03 22 F1 90 00 00 00 00       $%  ANS006:7B5 03 22 F1 90 00 00 00 00
  $%  REQ007:735 03 22 F1 5E 00 00 00 00       $%  ANS007:7B5 03 22 F1 5E 00 00 00 00
  $%  REQ008:735 03 22 F1 60 00 00 00 00       $%  ANS008:7B5 03 22 F1 60 00 00 00 00
  $%  REQ009:735 03 22 F1 63 00 00 00 00       $%  ANS009:7B5 03 22 F1 63 00 00 00 00
  $%  REQ010:735 03 22 F1 9E 00 00 00 00       $%  ANS010:7B5 03 22 F1 9E 00 00 00 00
  $%  REQ011:735 03 22 F1 5B 00 00 00 00       $%  ANS011:7B5 03 22 F1 5B 00 00 00 00

  $%  000:控制器总零件号:        $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:控制器软件号:          $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:供应商标识信息:        $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  003:系统名称:              $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:控制器硬件号:          $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:控制器序列号:          $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $%  006:车架号（VIN）:         $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:网络配置号:            $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  008:配置文件号:            $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:驱动文件号:            $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  010:ODX文件号:             $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:读取软件指纹:          $%    $%  ANS011.BYTE004  $%  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:735 03 22 CF 00 00 00 00 00       $  ANS000:7B5 03 22 CF 00 00 00 00 00
  $  REQ001:735 03 22 CF 01 00 00 00 00       $  ANS001:7B5 03 22 CF 01 00 00 00 00
  $  REQ002:735 03 22 CF 02 00 00 00 00       $  ANS002:7B5 03 22 CF 02 00 00 00 00
  $  REQ003:735 03 22 CF 05 00 00 00 00       $  ANS003:7B5 03 22 CF 05 00 00 00 00
  $  REQ004:735 03 22 0E 00 00 00 00 00       $  ANS004:7B5 03 22 0E 00 00 00 00 00
  $  REQ005:735 03 22 0E 01 00 00 00 00       $  ANS005:7B5 03 22 0E 01 00 00 00 00
  $  REQ006:735 03 22 0E 02 00 00 00 00       $  ANS006:7B5 03 22 0E 02 00 00 00 00
  $  REQ007:735 03 22 0E 03 00 00 00 00       $  ANS007:7B5 03 22 0E 03 00 00 00 00
  $  REQ008:735 03 22 0E 04 00 00 00 00       $  ANS008:7B5 03 22 0E 04 00 00 00 00
  $  REQ009:735 03 22 0E 05 00 00 00 00       $  ANS009:7B5 03 22 0E 05 00 00 00 00
  $  REQ010:735 03 22 0E 06 00 00 00 00       $  ANS010:7B5 03 22 0E 06 00 00 00 00
  $  REQ011:735 03 22 0E 08 00 00 00 00       $  ANS011:7B5 03 22 0E 08 00 00 00 00
  $  REQ012:735 03 22 0E 09 00 00 00 00       $  ANS012:7B5 03 22 0E 09 00 00 00 00
  $  REQ013:735 03 22 0E 0A 00 00 00 00       $  ANS013:7B5 03 22 0E 0A 00 00 00 00
  $  REQ014:735 03 22 F1 86 00 00 00 00       $  ANS014:7B5 03 22 F1 86 00 00 00 00
  $  REQ015:735 03 22 0E 0B 00 00 00 00       $  ANS015:7B5 03 22 0E 0B 00 00 00 00
  $  REQ016:735 03 22 0E 16 00 00 00 00       $  ANS016:7B5 03 22 0E 16 00 00 00 00

  $  000.控制器电源模式               $    $           $    $  ANS000.BYTE004  $  switxh(x) 0x00:y=@00000058;0x01:y=@00000059;0x02:y=@00000060;0x03:y=@00000061;default: y=@00000037;
  $  001.车速                         $    $  Km/h     $    $  ANS001.BYTE004  $  y=(x2*256+x1)*0.05625;
  $  002.控制器电源电压               $    $  V        $    $  ANS002.BYTE004  $  y=x*0.1;
  $  003.动力系统当前运行模式         $    $           $    $  ANS003.BYTE004  $  switxh(x) 0x00:y=@00000033;0x01:y=@00000135;0x02:y=@00000136;0x03:y=@00000137;0x04:y=@00000009;0x05:y=@00000138;0x06:y=@00000139;0x07:y=@00000140;default: y=@00000041;
  $  004.产线模式                     $    $           $    $  ANS004.BYTE004  $  switxh(x) 0x00:y=@00000033;0x01:y=@00000034;default: y=@00000037;
  $  005.当前反射面板位置             $    $           $    $  ANS005.BYTE004  $  switxh(x) 0x00:y=@00000009;0x0:y=@00000131;0x02:y=@00000132;0x03:y=@00000133;0x04:y=@00000134;default: y=@00000037;
  $  006.下一个反射面板放置位置       $    $           $    $  ANS006.BYTE004  $  switxh(x) 0x00:y=@00000004;0x01:y=@00000126;0x02:y=@00000127;0x03:y=@00000128;0x04:y=@00000129;0x05:y=@00000130;default: y=@00000037;
  $  007.垂直旋转方向                 $    $           $    $  ANS007.BYTE004  $  switxh(x) 0x00:y=@00000123;0x01:y=@00000124;0x02:y=@00000125;default: y=@00000037;
  $  008.水平旋转方向                 $    $           $    $  ANS008.BYTE004  $  switxh(x) 0x00:y=@00000123;0x01:y=@00000124;0x02:y=@00000125;default: y=@00000037;
  $  009.水平偏差角度                 $    $           $    $  ANS009.BYTE004  $  y=x*57.2958 / 16384;
  $  010.垂直偏差角度                 $    $           $    $  ANS010.BYTE004  $  y=x*57.2958 / 16384;
  $  011.慢速偏差角度                 $    $  Deg      $    $  ANS009.BYTE004  $  y=x* 57.2958 / 33554432;
  $  012.快速偏差角度                 $    $  Deg      $    $  ANS011.BYTE004  $  y=x* 57.2958 / 33554432;
  $  013.加热                         $    $           $    $  ANS012.BYTE004  $  switxh(x) 0x00:y=@00000033;0x01:y=@00000034;default: y=@00000037;
  $  014.无效密钥计数                 $    $           $    $  ANS013.BYTE004  $  y=x;
  $  015.激活的诊断会话模式           $    $           $    $  ANS014.BYTE004  $  switxh(x) 0x01:y=@00000038;0x02:y=@00000039;0x03:y=@00000040;default: y=@00000041;
  $  016.功能配置PEBS:Prefill         $    $           $    $  ANS015.BYTE004  $  switxh(x&0x01) 0x00:y=@00000084;0x01:y=@00000085;default: y=@00000037;
  $  017.车辆数据信息                 $    $           $    $  ANS016.BYTE004  $  SPRINTF([%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d],x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x16);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:735 30 00 01 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
