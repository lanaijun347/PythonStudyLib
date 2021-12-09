
    车型ID：5763

    模拟：协议模拟-->5763

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~796

进入命令:

  $~  REQ000:716 02 10 03 00 00 00 00 00       $~  ANS000:796 02 10 03 00 00 00 00 00
  $~~ REQ001:716 02 27 01 00 00 00 00 00       $~~ ANS001:796 02 27 01 00 00 00 00 00
  $~~ REQ002:716 06 27 02 95 94 89 3C 00       $~~ ANS002:796 06 27 02 95 94 89 3C 00

空闲命令:

  $!  REQ000:716 02 3E 00 00 00 00 00 00       $!  ANS000:796 02 3E 00 00 00 00 00 00

退出命令:

  $@  REQ000:716 02 10 01 00 00 00 00 00       $@  ANS000:796 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:716 03 19 02 09 00 00 00 00       $#  ANS000:796 03 19 02 09 00 00 00 00

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

  $$  REQ000:716 04 14 FF FF FF 00 00 00       $$  ANS000:796 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:716 03 22 F1 87 00 00 00 00       $%  ANS000:796 03 22 F1 87 00 00 00 00
  $%  REQ001:716 03 22 F1 88 00 00 00 00       $%  ANS001:796 03 22 F1 88 00 00 00 00
  $%  REQ002:716 03 22 F1 8A 00 00 00 00       $%  ANS002:796 03 22 F1 8A 00 00 00 00
  $%  REQ003:716 03 22 F1 97 00 00 00 00       $%  ANS003:796 03 22 F1 97 00 00 00 00
  $%  REQ004:716 03 22 F1 91 00 00 00 00       $%  ANS004:796 03 22 F1 91 00 00 00 00
  $%  REQ005:716 03 22 F1 8C 00 00 00 00       $%  ANS005:796 03 22 F1 8C 00 00 00 00
  $%  REQ006:716 03 22 F1 90 00 00 00 00       $%  ANS006:796 03 22 F1 90 00 00 00 00
  $%  REQ007:716 03 22 F1 5E 00 00 00 00       $%  ANS007:796 03 22 F1 5E 00 00 00 00
  $%  REQ008:716 03 22 F1 60 00 00 00 00       $%  ANS008:796 03 22 F1 60 00 00 00 00
  $%  REQ009:716 03 22 F1 63 00 00 00 00       $%  ANS009:796 03 22 F1 63 00 00 00 00
  $%  REQ010:716 03 22 F1 9E 00 00 00 00       $%  ANS010:796 03 22 F1 9E 00 00 00 00
  $%  REQ011:716 03 22 F1 5B 00 00 00 00       $%  ANS011:796 03 22 F1 5B 00 00 00 00

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

30帧:

  $FC REQ000:716 30 00 01 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
