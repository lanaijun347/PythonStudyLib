
    车型ID：576f

    模拟：协议模拟-->576f

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A5

进入命令:

  $~  REQ000:725 02 10 03 00 00 00 00 00       $~  ANS000:7A5 02 10 03 00 00 00 00 00
  $~~ REQ001:725 02 27 01 00 00 00 00 00       $~~ ANS001:7A5 02 27 01 00 00 00 00 00
  $~~ REQ002:725 06 27 02 83 AC 1B 26 00       $~~ ANS002:7A5 06 27 02 83 AC 1B 26 00

空闲命令:

  $!  REQ000:725 02 3E 00 00 00 00 00 00       $!  ANS000:7A5 02 3E 00 00 00 00 00 00

退出命令:

  $@  REQ000:725 02 10 01 00 00 00 00 00       $@  ANS000:7A5 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:725 03 19 02 09 00 00 00 00       $#  ANS000:7A5 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/5b000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:725 04 14 FF FF FF 00 00 00       $$  ANS000:7A5 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:725 03 22 F1 87 00 00 00 00       $%  ANS000:7A5 03 22 F1 87 00 00 00 00
  $%  REQ001:725 03 22 F1 88 00 00 00 00       $%  ANS001:7A5 03 22 F1 88 00 00 00 00
  $%  REQ002:725 03 22 F1 8A 00 00 00 00       $%  ANS002:7A5 03 22 F1 8A 00 00 00 00
  $%  REQ003:725 03 22 F1 97 00 00 00 00       $%  ANS003:7A5 03 22 F1 97 00 00 00 00
  $%  REQ004:725 03 22 F1 91 00 00 00 00       $%  ANS004:7A5 03 22 F1 91 00 00 00 00
  $%  REQ005:725 03 22 F1 8C 00 00 00 00       $%  ANS005:7A5 03 22 F1 8C 00 00 00 00
  $%  REQ006:725 03 22 F1 90 00 00 00 00       $%  ANS006:7A5 03 22 F1 90 00 00 00 00
  $%  REQ007:725 03 22 F1 5E 00 00 00 00       $%  ANS007:7A5 03 22 F1 5E 00 00 00 00
  $%  REQ008:725 03 22 F1 60 00 00 00 00       $%  ANS008:7A5 03 22 F1 60 00 00 00 00
  $%  REQ009:725 03 22 F1 63 00 00 00 00       $%  ANS009:7A5 03 22 F1 63 00 00 00 00
  $%  REQ010:725 03 22 F1 9E 00 00 00 00       $%  ANS010:7A5 03 22 F1 9E 00 00 00 00
  $%  REQ011:725 03 22 F1 5B 00 00 00 00       $%  ANS011:7A5 03 22 F1 5B 00 00 00 00

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

  $  REQ000:725 03 22 F1 86 00 00 00 00       $  ANS000:7A5 03 22 F1 86 00 00 00 00
  $  REQ001:725 03 22 1E 00 00 00 00 00       $  ANS001:7A5 03 22 1E 00 00 00 00 00

  $  000.诊断活动会话       $    $       $    $  ANS000.BYTE004  $  switxh(x&0x03) 0x01:y=默认模式;0x02:y=编程模式;0x03:y=扩展诊断模式;default: y=无效;
  $  001.档位               $    $       $    $  ANS001.BYTE004  $  switxh(x) 0x00:y=N;0x0C:y=D;0x0A:y=P;0x0B:y=R;0x0F:y=无效;default: y=保留;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:725 30 00 01 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
