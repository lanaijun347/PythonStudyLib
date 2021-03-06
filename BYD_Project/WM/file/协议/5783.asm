
    车型ID：5783

    模拟：协议模拟-->5783

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~790

进入命令:

  $~  REQ000:710 02 10 03 00 00 00 00 00       $~  ANS000:790 02 10 03 00 00 00 00 00
  $~~ REQ001:710 02 27 01 00 00 00 00 00       $~~ ANS001:790 02 27 01 00 00 00 00 00
  $~~ REQ002:710 06 27 02 6B 7C 21 EA 00       $~~ ANS002:790 06 27 02 6B 7C 21 EA 00

空闲命令:

  $!  REQ000:710 02 3E 00 00 00 00 00 00       $!  ANS000:790 02 3E 00 00 00 00 00 00

退出命令:

  $@  REQ000:710 02 10 01 00 00 00 00 00       $@  ANS000:790 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:710 03 19 02 09 00 00 00 00       $#  ANS000:790 03 19 02 09 00 00 00 00

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

  $$  REQ000:710 04 14 FF FF FF 00 00 00       $$  ANS000:790 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:710 03 22 F1 87 00 00 00 00       $%  ANS000:790 03 22 F1 87 00 00 00 00
  $%  REQ001:710 03 22 F1 88 00 00 00 00       $%  ANS001:790 03 22 F1 88 00 00 00 00
  $%  REQ002:710 03 22 F1 8A 00 00 00 00       $%  ANS002:790 03 22 F1 8A 00 00 00 00
  $%  REQ003:710 03 22 F1 97 00 00 00 00       $%  ANS003:790 03 22 F1 97 00 00 00 00
  $%  REQ004:710 03 22 F1 91 00 00 00 00       $%  ANS004:790 03 22 F1 91 00 00 00 00
  $%  REQ005:710 03 22 F1 8C 00 00 00 00       $%  ANS005:790 03 22 F1 8C 00 00 00 00
  $%  REQ006:710 03 22 F1 90 00 00 00 00       $%  ANS006:790 03 22 F1 90 00 00 00 00
  $%  REQ007:710 03 22 F1 5E 00 00 00 00       $%  ANS007:790 03 22 F1 5E 00 00 00 00
  $%  REQ008:710 03 22 F1 60 00 00 00 00       $%  ANS008:790 03 22 F1 60 00 00 00 00
  $%  REQ009:710 03 22 F1 63 00 00 00 00       $%  ANS009:790 03 22 F1 63 00 00 00 00
  $%  REQ010:710 03 22 F1 9E 00 00 00 00       $%  ANS010:790 03 22 F1 9E 00 00 00 00
  $%  REQ011:710 03 22 F1 5B 00 00 00 00       $%  ANS011:790 03 22 F1 5B 00 00 00 00

  $%  000:控制器总零件号:           $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:主芯片(MCU)软件号:        $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:供应商识别号:             $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7);
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

  $  REQ000:710 03 22 CF 00 00 00 00 00       $  ANS000:790 03 22 CF 00 00 00 00 00
  $  REQ001:710 03 22 CF 01 00 00 00 00       $  ANS001:790 03 22 CF 01 00 00 00 00
  $  REQ002:710 03 22 CF 02 00 00 00 00       $  ANS002:790 03 22 CF 02 00 00 00 00
  $  REQ003:710 03 22 CF 03 00 00 00 00       $  ANS003:790 03 22 CF 03 00 00 00 00
  $  REQ004:710 03 22 CF 04 00 00 00 00       $  ANS004:790 03 22 CF 04 00 00 00 00
  $  REQ005:710 03 22 CF 12 00 00 00 00       $  ANS005:790 03 22 CF 12 00 00 00 00
  $  REQ006:710 03 22 CF 13 00 00 00 00       $  ANS006:790 03 22 CF 13 00 00 00 00
  $  REQ007:710 03 22 CF 14 00 00 00 00       $  ANS007:790 03 22 CF 14 00 00 00 00
  $  REQ008:710 03 22 CF 15 00 00 00 00       $  ANS008:790 03 22 CF 15 00 00 00 00
  $  REQ009:710 03 22 CF 16 00 00 00 00       $  ANS009:790 03 22 CF 16 00 00 00 00
  $  REQ010:710 03 22 CF 17 00 00 00 00       $  ANS010:790 03 22 CF 17 00 00 00 00
  $  REQ011:710 03 22 CF 20 00 00 00 00       $  ANS011:790 03 22 CF 20 00 00 00 00
  $  REQ012:710 03 22 CF 21 00 00 00 00       $  ANS012:790 03 22 CF 21 00 00 00 00
  $  REQ013:710 03 22 0A 10 00 00 00 00       $  ANS013:790 03 22 0A 10 00 00 00 00
  $  REQ014:710 03 22 0A 11 00 00 00 00       $  ANS014:790 03 22 0A 11 00 00 00 00
  $  REQ015:710 03 22 0A 12 00 00 00 00       $  ANS015:790 03 22 0A 12 00 00 00 00
  $  REQ016:710 03 22 0A 14 00 00 00 00       $  ANS016:790 03 22 0A 14 00 00 00 00
  $  REQ017:710 03 22 0A 15 00 00 00 00       $  ANS017:790 03 22 0A 15 00 00 00 00
  $  REQ018:710 03 22 0A 16 00 00 00 00       $  ANS018:790 03 22 0A 16 00 00 00 00
  $  REQ019:710 03 22 0A 17 00 00 00 00       $  ANS019:790 03 22 0A 17 00 00 00 00
  $  REQ020:710 03 22 0A 18 00 00 00 00       $  ANS020:790 03 22 0A 18 00 00 00 00
  $  REQ021:710 03 22 0A 19 00 00 00 00       $  ANS021:790 03 22 0A 19 00 00 00 00

  $  000.控制器电源模式                  $    $           $    $  ANS000.BYTE004  $  switxh(x&0x03) 0x00:y=@00000033;0x01:y=@00000035;0x02:y=@00000034;0x03:y=@00000036;default: y=@00000037;
  $  001.车速                            $    $  Km/h     $    $  ANS001.BYTE004  $  y=((x1*256+x2)&0x1FFF)*0.05625;
  $  002.控制器电源电压                  $    $  V        $    $  ANS002.BYTE004  $  y=x*0.1;
  $  003.第一次故障的里程值              $    $  km       $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0x100+x3;
  $  004.最后一次故障的里程值            $    $  km       $    $  ANS004.BYTE004  $  y=(x1*256+x2)*0x100+x3;
  $  005.第一次触发时蓄电池电压          $    $  V        $    $  ANS005.BYTE004  $  y=x1*256+x2;
  $  006.上一次触发时蓄电池电压          $    $  V        $    $  ANS006.BYTE004  $  y=x1*256+x2;
  $  007.电机温度-第一次                 $    $  ℃       $    $  ANS007.BYTE004  $  y=x-40;
  $  008.电机温度-上一次                 $    $  ℃       $    $  ANS008.BYTE004  $  y=x-40;
  $  009.电机驱动控制器温度-第一次       $    $  ℃       $    $  ANS009.BYTE004  $  y=x-40;
  $  010.电机驱动控制器温度-上一次       $    $  ℃       $    $  ANS010.BYTE004  $  y=x-40;
  $  011.错误计数                        $    $           $    $  ANS011.BYTE004  $  y=x;
  $  012.历史计数                        $    $           $    $  ANS012.BYTE004  $  y=x;
  $  013.控制器错误计数                  $    $           $    $  ANS013.BYTE004  $  y=x;
  $  014.控制器错误等级                  $    $           $    $  ANS014.BYTE004  $  y=x;
  $  015.电机当前转速                    $    $  rpm      $    $  ANS015.BYTE004  $  y=x1*256+x2-12000;
  $  016.高电压                          $    $  V        $    $  ANS016.BYTE004  $  y=x1*256+x2;
  $  017.电机温度                        $    $  ℃       $    $  ANS017.BYTE004  $  y=x-40;
  $  018.逆变器温度                      $    $  ℃       $    $  ANS018.BYTE004  $  y=x-40;
  $  019.电机驱动控制器序列号            $    $           $    $  ANS019.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  020.电机驱动控制卡序列号            $    $           $    $  ANS020.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $  021.电机旋变偏置角度                $    $  °       $    $  ANS021.BYTE004  $  y=(x1*256+x2)*0.1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:710 30 00 01 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
