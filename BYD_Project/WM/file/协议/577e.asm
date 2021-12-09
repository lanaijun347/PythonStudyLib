
    车型ID：577e

    模拟：协议模拟-->577e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7B1

进入命令:

  $~  REQ000:731 02 10 03 00 00 00 00 00       $~  ANS000:7B1 02 10 03 00 00 00 00 00
  $~~ REQ001:731 02 27 01 00 00 00 00 00       $~~ ANS001:7B1 02 27 01 00 00 00 00 00
  $~~ REQ002:731 06 27 02 71 98 7C FB 00       $~~ ANS002:7B1 06 27 02 71 98 7C FB 00

空闲命令:

  $!  REQ000:731 02 3E 00 00 00 00 00 00       $!  ANS000:7B1 02 3E 00 00 00 00 00 00

退出命令:

  $@  REQ000:731 02 10 01 00 00 00 00 00       $@  ANS000:7B1 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:731 03 19 02 AB 00 00 00 00       $#  ANS000:7B1 03 19 02 AB 00 00 00 00

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

  $$  REQ000:731 04 14 FF FF FF 00 00 00       $$  ANS000:7B1 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:731 03 22 F1 87 00 00 00 00       $%  ANS000:7B1 03 22 F1 87 00 00 00 00
  $%  REQ001:731 03 22 F1 88 00 00 00 00       $%  ANS001:7B1 03 22 F1 88 00 00 00 00
  $%  REQ002:731 03 22 F1 8A 00 00 00 00       $%  ANS002:7B1 03 22 F1 8A 00 00 00 00
  $%  REQ003:731 03 22 F1 97 00 00 00 00       $%  ANS003:7B1 03 22 F1 97 00 00 00 00
  $%  REQ004:731 03 22 F1 91 00 00 00 00       $%  ANS004:7B1 03 22 F1 91 00 00 00 00
  $%  REQ005:731 03 22 F1 8C 00 00 00 00       $%  ANS005:7B1 03 22 F1 8C 00 00 00 00
  $%  REQ006:731 03 22 F1 90 00 00 00 00       $%  ANS006:7B1 03 22 F1 90 00 00 00 00
  $%  REQ007:731 03 22 F1 5E 00 00 00 00       $%  ANS007:7B1 03 22 F1 5E 00 00 00 00
  $%  REQ008:731 03 22 F1 60 00 00 00 00       $%  ANS008:7B1 03 22 F1 60 00 00 00 00
  $%  REQ009:731 03 22 F1 63 00 00 00 00       $%  ANS009:7B1 03 22 F1 63 00 00 00 00
  $%  REQ010:731 03 22 F1 9E 00 00 00 00       $%  ANS010:7B1 03 22 F1 9E 00 00 00 00
  $%  REQ011:731 03 22 F1 5B 00 00 00 00       $%  ANS011:7B1 03 22 F1 5B 00 00 00 00

  $%  000:控制器总零件号:           $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:主芯片(MCU)软件号:        $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:供应商识别号:             $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  003:系统识别号:               $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:硬件号:                   $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:序列号:                   $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $%  006:车辆识别编码(VIN):        $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:网络数据库标识符:         $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  008:配置文件号:               $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:驱动软件号:               $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  010:ODX文件号:                $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:读软件指纹:               $%    $%  ANS011.BYTE004  $%  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:731 03 22 CF 00 00 00 00 00       $  ANS000:7B1 03 22 CF 00 00 00 00 00
  $  REQ001:731 03 22 CF 01 00 00 00 00       $  ANS001:7B1 03 22 CF 01 00 00 00 00
  $  REQ002:731 03 22 CF 02 00 00 00 00       $  ANS002:7B1 03 22 CF 02 00 00 00 00
  $  REQ003:731 03 22 CF 03 00 00 00 00       $  ANS003:7B1 03 22 CF 03 00 00 00 00
  $  REQ004:731 03 22 CF 05 00 00 00 00       $  ANS004:7B1 03 22 CF 05 00 00 00 00
  $  REQ005:731 03 22 F1 86 00 00 00 00       $  ANS005:7B1 03 22 F1 86 00 00 00 00
  $  REQ006:731 03 22 0B 01 00 00 00 00       $  ANS006:7B1 03 22 0B 01 00 00 00 00
  $  REQ007:731 03 22 0B 02 00 00 00 00       $  ANS007:7B1 03 22 0B 02 00 00 00 00
  $  REQ008:731 03 22 0B 03 00 00 00 00       $  ANS008:7B1 03 22 0B 03 00 00 00 00
  $  REQ009:731 03 22 0B 04 00 00 00 00       $  ANS009:7B1 03 22 0B 04 00 00 00 00
  $  REQ010:731 03 22 0B 05 00 00 00 00       $  ANS010:7B1 03 22 0B 05 00 00 00 00
  $  REQ011:731 03 22 0B 06 00 00 00 00       $  ANS011:7B1 03 22 0B 06 00 00 00 00
  $  REQ012:731 03 22 0B 07 00 00 00 00       $  ANS012:7B1 03 22 0B 07 00 00 00 00
  $  REQ013:731 03 22 0B 09 00 00 00 00       $  ANS013:7B1 03 22 0B 09 00 00 00 00
  $  REQ014:731 03 22 0B 0A 00 00 00 00       $  ANS014:7B1 03 22 0B 0A 00 00 00 00

  $  000.控制器电源模式                      $    $            $    $  ANS000.BYTE004  $  switxh(x) 0x00:y=@00000058;0x01:y=@00000059;0x02:y=@00000060;0x03:y=@00000061;default: y=@00000037;
  $  001.车速                                $    $  Km/h      $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.05625;
  $  002.控制器电源电压                      $    $  V         $    $  ANS002.BYTE004  $  y=x*0.1;
  $  003.第一次故障的里程值                  $    $  km        $    $  ANS003.BYTE004  $  y=(x1*256+x2)*256+x3;
  $  004.动力系统当前运行模式                $    $            $    $  ANS004.BYTE004  $  switxh(x) 0x00:y=@00000076;0x01:y=@00000120;0x02:y=@00000155;0x03:y=@00000122;default: y=@00000032;
  $  005.当前诊断会话层                      $    $            $    $  ANS005.BYTE004  $  switxh(x) 0x01:y=@00000038;0x03:y=@00000039;0x05:y=@00000040;default: y=@00000037;
  $  006.软件版本号                          $    $            $    $  ANS006.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30);
  $  007.车辆速度                            $    $  km/h      $    $  ANS007.BYTE004  $  y=(x1*256+x2)*0.05626;
  $  008.左前轮速                            $    $  km/h      $    $  ANS007.BYTE006  $  y=(x1*256+x2)*0.05626;
  $  009.右前轮速                            $    $  km/h      $    $  ANS007.BYTE008  $  y=(x1*256+x2)*0.05626;
  $  010.左后轮速                            $    $  km/h      $    $  ANS007.BYTE010  $  y=(x1*256+x2)*0.05626;
  $  011.右后轮速                            $    $  km/h      $    $  ANS007.BYTE012  $  y=(x1*256+x2)*0.05626;
  $  012.电池电压                            $    $  V         $    $  ANS008.BYTE004  $  y=x*0.08;
  $  013.制动灯开关                          $    $            $    $  ANS008.BYTE005  $  y=x;
  $  014.驱动状态                            $    $            $    $  ANS008.BYTE004  $  y=HEX(x1,x2,x3,x4);
  $  015.阀继电器状态                        $    $            $    $  ANS009.BYTE004  $  y=x;
  $  016.泵继电器状态                        $    $            $    $  ANS009.BYTE005  $  y=x;
  $  017.驱动状态-左前输入阀（EVFL）         $    $            $    $  ANS009.BYTE006  $  switxh(x&0x01) 0x00:y=@00000034;0x01:y=@00000033;default: y=@00000037;
  $  018.驱动状态-左前输出阀（AVFL）         $    $            $    $  ANS009.BYTE006  $  switxh(x&0x02) 0x00:y=@00000034;0x02:y=@00000033;default: y=@00000037;
  $  019.驱动状态-右前输入阀（EVFR）         $    $            $    $  ANS009.BYTE006  $  switxh(x&0x04) 0x00:y=@00000034;0x04:y=@00000033;default: y=@00000037;
  $  020.驱动状态-右前输出阀（AVFR）         $    $            $    $  ANS009.BYTE006  $  switxh(x&0x08) 0x00:y=@00000034;0x08:y=@00000033;default: y=@00000037;
  $  021.驱动状态-左后输入阀（EVRL）         $    $            $    $  ANS009.BYTE006  $  switxh(x&0x10) 0x00:y=@00000034;0x10:y=@00000033;default: y=@00000037;
  $  022.驱动状态-左后输出阀（AVRL）         $    $            $    $  ANS009.BYTE006  $  switxh(x&0x20) 0x00:y=@00000034;0x20:y=@00000033;default: y=@00000037;
  $  023.驱动状态-右后输入阀（EVRR）         $    $            $    $  ANS009.BYTE006  $  switxh(x&0x40) 0x00:y=@00000034;0x40:y=@00000033;default: y=@00000037;
  $  024.驱动状态-右后输出阀（AVRR）         $    $            $    $  ANS009.BYTE006  $  switxh(x&0x80) 0x00:y=@00000034;0x40:y=@00000033;default: y=@00000037;
  $  025.驱动状态-USV1阀（只ESP）            $    $            $    $  ANS009.BYTE007  $  switxh(x&0x01) 0x00:y=@00000034;0x01:y=@00000033;default: y=@00000037;
  $  026.驱动状态-USV2阀（只ESP）            $    $            $    $  ANS009.BYTE007  $  switxh(x&0x02) 0x00:y=@00000034;0x02:y=@00000033;default: y=@00000037;
  $  027.驱动状态-HSV1阀（只ESP）            $    $            $    $  ANS009.BYTE007  $  switxh(x&0x04) 0x00:y=@00000034;0x04:y=@00000033;default: y=@00000037;
  $  028.驱动状态-HSV2阀（只ESP）            $    $            $    $  ANS009.BYTE007  $  switxh(x&0x08) 0x00:y=@00000034;0x08:y=@00000033;default: y=@00000037;
  $  029.注入状态                            $    $            $    $  ANS010.BYTE004  $  switxh(x) 0x00:y=@00000152;0xAA:y=@00000153;0xEE:y=@00000154;default: y=@00000037;
  $  030.产线下线状态                        $    $            $    $  ANS011.BYTE004  $  switxh(x) 0x00:y=@00000152;0xAA:y=@00000153;0xEE:y=@00000154;default: y=@00000037;
  $  031.主缸体压力                          $    $  bar       $    $  ANS012.BYTE004  $  y=(x1*256+x2)*0.01;
  $  032.转向角度                            $    $  deg       $    $  ANS012.BYTE006  $  y=(x1*256+x2)*0.1;
  $  033.偏航角度                            $    $  rad/s     $    $  ANS012.BYTE008  $  y=(x1*256+x2)*0.00213;
  $  034.横向加速度                          $    $  m/s2      $    $  ANS012.BYTE010  $  y=(x1*256+x2)*0.02712;
  $  035.纵向加速度                          $    $  m/s2      $    $  ANS012.BYTE012  $  y=(x1*256+x2)*0.02712;
  $  036.VariantInfoFromASW（只ESP）         $    $            $    $  ANS013.BYTE004  $  y=x;
  $  037.驱动阀状态-左前输入阀（EVFL）       $    $            $    $  ANS014.BYTE004  $  switxh(x&0x01) 0x00:y=@00000034;0x01:y=@00000033;default: y=@00000037;
  $  038.驱动阀状态-左前输出阀（AVFL）       $    $            $    $  ANS014.BYTE004  $  switxh(x&0x02) 0x00:y=@00000034;0x02:y=@00000033;default: y=@00000037;
  $  039.驱动阀状态-右前输入阀（EVFR）       $    $            $    $  ANS014.BYTE004  $  switxh(x&0x04) 0x00:y=@00000034;0x04:y=@00000033;default: y=@00000037;
  $  040.驱动阀状态-右前输出阀（AVFR）       $    $            $    $  ANS014.BYTE004  $  switxh(x&0x08) 0x00:y=@00000034;0x08:y=@00000033;default: y=@00000037;
  $  041.驱动阀状态-左后输入阀（EVRL）       $    $            $    $  ANS014.BYTE004  $  switxh(x&0x10) 0x00:y=@00000034;0x10:y=@00000033;default: y=@00000037;
  $  042.驱动阀状态-左后输出阀（AVRL）       $    $            $    $  ANS014.BYTE004  $  switxh(x&0x20) 0x00:y=@00000034;0x20:y=@00000033;default: y=@00000037;
  $  043.驱动阀状态-右后输入阀（EVRR）       $    $            $    $  ANS014.BYTE004  $  switxh(x&0x40) 0x00:y=@00000034;0x40:y=@00000033;default: y=@00000037;
  $  044.驱动阀状态-右后输出阀（AVRR）       $    $            $    $  ANS014.BYTE004  $  switxh(x&0x80) 0x00:y=@00000034;0x80:y=@00000033;default: y=@00000037;
  $  045.驱动阀状态-USV1阀（只ESP）          $    $            $    $  ANS014.BYTE005  $  switxh(x&0x00) 0x00:y=@00000034;0x00:y=@00000033;default: y=@00000037;
  $  046.驱动阀状态-USV2阀（只ESP）          $    $            $    $  ANS014.BYTE005  $  switxh(x&0x01) 0x00:y=@00000034;0x01:y=@00000033;default: y=@00000037;
  $  047.驱动阀状态-HSV1阀（只ESP）          $    $            $    $  ANS014.BYTE005  $  switxh(x&0x02) 0x00:y=@00000034;0x02:y=@00000033;default: y=@00000037;
  $  048.驱动阀状态-HSV2阀（只ESP）          $    $            $    $  ANS014.BYTE006  $  switxh(x&0x04) 0x00:y=@00000034;0x04:y=@00000033;default: y=@00000037;
  $  049.泵电机                              $    $            $    $  ANS014.BYTE006  $  switxh(x&0x10) 0x00:y=@00000034;0x10:y=@00000033;default: y=@00000037;
  $  050.车速限制                            $    $            $    $  ANS014.BYTE006  $  switxh(x&0x20) 0x00:y=@00000034;0x20:y=@00000033;default: y=@00000037;
  $  051.阀继电器关闭                        $    $            $    $  ANS014.BYTE006  $  switxh(x&0x40) 0x00:y=@00000034;0x40:y=@00000033;default: y=@00000037;
  $  052.ABS指示灯                           $    $            $    $  ANS014.BYTE006  $  switxh(x&0x80) 0x00:y=@00000034;0x80:y=@00000033;default: y=@00000037;
  $  053.EBD指示灯                           $    $            $    $  ANS014.BYTE007  $  switxh(x&0x00) 0x00:y=@00000034;0x00:y=@00000033;default: y=@00000037;
  $  054.ESP指示灯                           $    $            $    $  ANS014.BYTE007  $  switxh(x&0x01) 0x00:y=@00000034;0x01:y=@00000033;default: y=@00000037;
  $  055.PALA指示灯                          $    $            $    $  ANS014.BYTE007  $  switxh(x&0x02) 0x00:y=@00000034;0x02:y=@00000033;default: y=@00000037;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:731 30 00 01 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
