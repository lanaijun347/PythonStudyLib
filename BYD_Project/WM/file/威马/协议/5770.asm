
    车型ID：5770

    模拟：协议模拟-->5770

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A4

进入命令:

  $~  REQ000:724 02 10 03 00 00 00 00 00       $~  ANS000:7A4 02 10 03 00 00 00 00 00
  $~~ REQ001:724 02 27 01 00 00 00 00 00       $~~ ANS001:7A4 02 27 01 00 00 00 00 00
  $~~ REQ002:724 06 27 02 32 5A B9 1E 00       $~~ ANS002:7A4 06 27 02 32 5A B9 1E 00

空闲命令:

  $!  REQ000:724 02 3E 00 00 00 00 00 00       $!  ANS000:7A4 02 3E 00 00 00 00 00 00

退出命令:

  $@  REQ000:724 02 10 01 00 00 00 00 00       $@  ANS000:7A4 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:724 03 19 02 09 00 00 00 00       $#  ANS000:7A4 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/57000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:724 04 14 FF FF FF 00 00 00       $$  ANS000:7A4 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:724 03 22 F1 87 00 00 00 00       $%  ANS000:7A4 03 22 F1 87 00 00 00 00
  $%  REQ001:724 03 22 F1 88 00 00 00 00       $%  ANS001:7A4 03 22 F1 88 00 00 00 00
  $%  REQ002:724 03 22 F1 8A 00 00 00 00       $%  ANS002:7A4 03 22 F1 8A 00 00 00 00
  $%  REQ003:724 03 22 F1 97 00 00 00 00       $%  ANS003:7A4 03 22 F1 97 00 00 00 00
  $%  REQ004:724 03 22 F1 91 00 00 00 00       $%  ANS004:7A4 03 22 F1 91 00 00 00 00
  $%  REQ005:724 03 22 F1 8C 00 00 00 00       $%  ANS005:7A4 03 22 F1 8C 00 00 00 00
  $%  REQ006:724 03 22 F1 90 00 00 00 00       $%  ANS006:7A4 03 22 F1 90 00 00 00 00
  $%  REQ007:724 03 22 F1 5E 00 00 00 00       $%  ANS007:7A4 03 22 F1 5E 00 00 00 00
  $%  REQ008:724 03 22 F1 60 00 00 00 00       $%  ANS008:7A4 03 22 F1 60 00 00 00 00
  $%  REQ009:724 03 22 F1 63 00 00 00 00       $%  ANS009:7A4 03 22 F1 63 00 00 00 00

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

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:724 03 22 F1 93 00 00 00 00       $  ANS000:7A4 03 22 F1 93 00 00 00 00
  $  REQ001:724 03 22 F1 95 00 00 00 00       $  ANS001:7A4 03 22 F1 95 00 00 00 00
  $  REQ002:724 03 22 F1 86 00 00 00 00       $  ANS002:7A4 03 22 F1 86 00 00 00 00
  $  REQ003:724 03 22 F1 89 00 00 00 00       $  ANS003:7A4 03 22 F1 89 00 00 00 00
  $  REQ004:724 03 22 F1 98 00 00 00 00       $  ANS004:7A4 03 22 F1 98 00 00 00 00
  $  REQ005:724 03 22 F1 9D 00 00 00 00       $  ANS005:7A4 03 22 F1 9D 00 00 00 00
  $  REQ006:724 03 22 F1 8B 00 00 00 00       $  ANS006:7A4 03 22 F1 8B 00 00 00 00
  $  REQ007:724 03 22 16 00 00 00 00 00       $  ANS007:7A4 03 22 16 00 00 00 00 00
  $  REQ008:724 03 22 F1 15 00 00 00 00       $  ANS008:7A4 03 22 F1 15 00 00 00 00

  $  000.控制器硬件号                  $    $       $    $  ANS000.BYTE004  $  y=HEX(x1,x2);
  $  001.控制器软件号                  $    $       $    $  ANS001.BYTE004  $  y=HEX(x1,x2);
  $  002.当前诊断会话层数据标识        $    $       $    $  ANS002.BYTE004  $  switxh(x) 0x01:y=默认模式;0x02:y=编程模式;0x03:y=扩展模式;default: y=无效;
  $  003.控制器软件号                  $    $       $    $  ANS003.BYTE004  $  y=HEX(x1,x2,x3);
  $  004.维修站代码/诊断仪序列号       $    $       $    $  ANS004.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6);
  $  005.控制器装配日期                $    $       $    $  ANS005.BYTE004  $  y=ASCII(x1,x2,x3,x4);
  $  006.控制器制造日期                $    $       $    $  ANS006.BYTE004  $  y=HEX(x1,x2,x3,x4);
  $  007.车辆名称                      $    $       $    $  ANS007.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $  008.车辆颜色                      $    $       $    $  ANS008.BYTE004  $  switxh(x) 0x01:y=红色;0x02:y=白色;0x03:y=蓝色;0x04:y=黑色;0x05:y=金色;default: y=预留;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:724 30 00 01 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
