
    车型ID：5785

    模拟：协议模拟-->5785

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A7

进入命令:

  $~  REQ000:727 02 10 01 00 00 00 00 00       $~  ANS000:7A7 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:727 02 3E 00 00 00 00 00 00       $!  ANS000:7A7 02 3E 00 00 00 00 00 00

退出命令:

  $@  REQ000:727 02 10 01 00 00 00 00 00       $@  ANS000:7A7 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:727 03 19 02 49 00 00 00 00       $#  ANS000:7A7 03 19 02 49 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/5e000000


;******************************************************************************************************************************************************

<RDTC>
	<FUNCTION type="0" num="0">
		<param type="string" value="0"/><!--方式0-->
	</FUNCTION>
</RDTC>

清除故障码:

  $$  REQ000:727 04 14 FF FF FF 00 00 00       $$  ANS000:7A7 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:727 03 22 F1 5A 00 00 00 00       $%  ANS000:7A7 03 22 F1 5A 00 00 00 00
  $%  REQ001:727 03 22 F1 5B 00 00 00 00       $%  ANS001:7A7 03 22 F1 5B 00 00 00 00
  $%  REQ002:727 03 22 F1 5E 00 00 00 00       $%  ANS002:7A7 03 22 F1 5E 00 00 00 00
  $%  REQ003:727 03 22 F1 63 00 00 00 00       $%  ANS003:7A7 03 22 F1 63 00 00 00 00
  $%  REQ004:727 03 22 F1 80 00 00 00 00       $%  ANS004:7A7 03 22 F1 80 00 00 00 00
  $%  REQ005:727 03 22 F1 87 00 00 00 00       $%  ANS005:7A7 03 22 F1 87 00 00 00 00
  $%  REQ006:727 03 22 F1 88 00 00 00 00       $%  ANS006:7A7 03 22 F1 88 00 00 00 00
  $%  REQ007:727 03 22 F1 8A 00 00 00 00       $%  ANS007:7A7 03 22 F1 8A 00 00 00 00
  $%  REQ008:727 03 22 F1 8C 00 00 00 00       $%  ANS008:7A7 03 22 F1 8C 00 00 00 00
  $%  REQ009:727 03 22 F1 90 00 00 00 00       $%  ANS009:7A7 03 22 F1 90 00 00 00 00
  $%  REQ010:727 03 22 F1 91 00 00 00 00       $%  ANS010:7A7 03 22 F1 91 00 00 00 00
  $%  REQ011:727 03 22 F1 92 00 00 00 00       $%  ANS011:7A7 03 22 F1 92 00 00 00 00
  $%  REQ012:727 03 22 F1 94 00 00 00 00       $%  ANS012:7A7 03 22 F1 94 00 00 00 00
  $%  REQ013:727 03 22 F1 97 00 00 00 00       $%  ANS013:7A7 03 22 F1 97 00 00 00 00
  $%  REQ014:727 03 22 F1 9E 00 00 00 00       $%  ANS014:7A7 03 22 F1 9E 00 00 00 00

  $%  000:写入软件指纹:            $%    $%  ANS000.BYTE004  $%  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  001:读取软件指纹:            $%    $%  ANS001.BYTE004  $%  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:网络数据库标识符:        $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:驱动软件号:              $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:Boot软件号:              $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:控制器总零件号:          $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  006:控制器软件号:            $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  007:供应商标识信息:          $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  008:控制器序列号:            $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $%  009:车架号（VIN）:           $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  010:控制器硬件号:            $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:供应商ECU硬件ID:         $%    $%  ANS011.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  012:供应商ECU软件ID:         $%    $%  ANS012.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  013:系统名称:                $%    $%  ANS013.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  014:ODX文件号:               $%    $%  ANS014.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:727 03 22 CF 00 00 00 00 00       $  ANS000:7A7 03 22 CF 00 00 00 00 00
  $  REQ001:727 03 22 CF 01 00 00 00 00       $  ANS001:7A7 03 22 CF 01 00 00 00 00
  $  REQ002:727 03 22 CF 02 00 00 00 00       $  ANS002:7A7 03 22 CF 02 00 00 00 00
  $  REQ003:727 03 22 CF 03 00 00 00 00       $  ANS003:7A7 03 22 CF 03 00 00 00 00
  $  REQ004:727 03 22 CF 04 00 00 00 00       $  ANS004:7A7 03 22 CF 04 00 00 00 00
  $  REQ005:727 03 22 CF 05 00 00 00 00       $  ANS005:7A7 03 22 CF 05 00 00 00 00
  $  REQ006:727 03 22 CE 00 00 00 00 00       $  ANS006:7A7 03 22 CE 00 00 00 00 00
  $  REQ007:727 03 22 22 00 00 00 00 00       $  ANS007:7A7 03 22 22 00 00 00 00 00

  $  000.ECU供电方式                $    $           $    $  ANS000.BYTE004  $  switxh(x&0x03) 0x00:y=@00000076;0x01:y=@00000035;0x02:y=@00000060;0x03:y=@00000077;default: y=@00000037;
  $  001.车速                       $    $  Km/h     $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.05625;
  $  002.ECU 电压                   $    $           $    $  ANS002.BYTE004  $  y=x*0.1;
  $  003.首次出现故障时的时间       $    $           $    $  ANS003.BYTE004  $  SPRINTF([20%02x年%02x月%02x日%02x时%02x分%02x秒],x1,x2,x3,x4,x5,x6);
  $  004.最后出现故障时的里程       $    $           $    $  ANS004.BYTE004  $  y=x*6553.6+(x2*256+x3)*0.1;
  $  005.传动方式                   $    $           $    $  ANS005.BYTE004  $  y=x;
  $  006.档位                       $    $           $    $  ANS006.BYTE004  $  y=x;
  $  007.1                          $    $           $    $  ANS007.BYTE004  $  y=x1*256+x2;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:727 30 00 01 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
