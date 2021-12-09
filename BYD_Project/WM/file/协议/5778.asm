
    车型ID：5778

    模拟：协议模拟-->5778

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~795

进入命令:

  $~  REQ000:715 02 10 03 00 00 00 00 00       $~  ANS000:795 02 10 03 00 00 00 00 00
  $~~ REQ001:715 02 27 01 00 00 00 00 00       $~~ ANS001:795 02 27 01 00 00 00 00 00
  $~~ REQ002:715 06 27 02 8F 14 97 F9 00       $~~ ANS002:795 06 27 02 8F 14 97 F9 00

空闲命令:

  $!  REQ000:715 02 3E 00 00 00 00 00 00       $!  ANS000:795 02 3E 00 00 00 00 00 00

退出命令:

  $@  REQ000:715 02 10 01 00 00 00 00 00       $@  ANS000:795 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:715 03 19 02 49 00 00 00 00       $#  ANS000:795 03 19 02 49 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/5c000000


;******************************************************************************************************************************************************

<RDTC>
	<FUNCTION type="0" num="0">
		<param type="string" value="0"/><!--方式0-->
	</FUNCTION>
</RDTC>

清除故障码:

  $$  REQ000:715 04 14 FF FF FF 00 00 00       $$  ANS000:795 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:715 03 22 F1 87 00 00 00 00       $%  ANS000:795 03 22 F1 87 00 00 00 00
  $%  REQ001:715 03 22 F1 88 00 00 00 00       $%  ANS001:795 03 22 F1 88 00 00 00 00
  $%  REQ002:715 03 22 F1 8A 00 00 00 00       $%  ANS002:795 03 22 F1 8A 00 00 00 00
  $%  REQ003:715 03 22 F1 97 00 00 00 00       $%  ANS003:795 03 22 F1 97 00 00 00 00
  $%  REQ004:715 03 22 F1 91 00 00 00 00       $%  ANS004:795 03 22 F1 91 00 00 00 00
  $%  REQ005:715 03 22 F1 8C 00 00 00 00       $%  ANS005:795 03 22 F1 8C 00 00 00 00
  $%  REQ006:715 03 22 F1 90 00 00 00 00       $%  ANS006:795 03 22 F1 90 00 00 00 00
  $%  REQ007:715 03 22 F1 5E 00 00 00 00       $%  ANS007:795 03 22 F1 5E 00 00 00 00
  $%  REQ008:715 03 22 F1 60 00 00 00 00       $%  ANS008:795 03 22 F1 60 00 00 00 00
  $%  REQ009:715 03 22 F1 5B 00 00 00 00       $%  ANS009:795 03 22 F1 5B 00 00 00 00

  $%  000:写入软件指纹:            $%    $%  ANS000.BYTE004  $%  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  001:读取软件指纹:            $%    $%  ANS001.BYTE004  $%  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:网络数据库标识符:        $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:配置文件号:              $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:硬件号:                  $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:控制器总零件号:          $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  006:控制器软件号:            $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  007:控制器序列号:            $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $%  008:车架号（VIN）:           $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  009:功能配置:                $%    $%  ANS009.BYTE004  $%  y=HEX(x1,x2,x3,x4,x5,x6,x7);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:715 03 22 18 03 00 00 00 00       $  ANS000:795 03 22 18 03 00 00 00 00
  $  REQ001:715 03 22 18 04 00 00 00 00       $  ANS001:795 03 22 18 04 00 00 00 00
  $  REQ002:715 03 22 18 0E 00 00 00 00       $  ANS002:795 03 22 18 0E 00 00 00 00

  $  000.1       $    $  V     $    $  ANS000.BYTE004  $  y=x*0.1+3;
  $  001.1       $    $  V     $    $  ANS001.BYTE004  $  y=(x1*256+x2)*5/1024;
  $  002.1       $    $  V     $    $  ANS002.BYTE004  $  y=(x1*256+x2)*5/1024;
  $  003.1       $    $  V     $    $  ANS002.BYTE004  $  y=(x1*256+x2)*5/1024;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:715 30 00 01 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
