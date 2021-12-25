
    车型ID：57ae

    模拟：协议模拟-->57ae

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~7B7

进入命令:

  $~  REQ000:737 02 10 01 00 00 00 00 00       $~  ANS000:7B7 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:737 02 3E 00 00 00 00 00 00       $!  ANS000:7B7 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读取当前故障码
  $#  REQ000:737 03 19 02 01 00 00 00 00       $#  ANS000:7B7 03 19 02 01 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/58000000


  $#  01.读取历史故障码
  $#  REQ000:737 03 19 02 2E 00 00 00 00       $#  ANS000:7B7 03 19 02 2E 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/58000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:737 04 14 FF FF FF 00 00 00       $$  ANS000:7B7 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:737 03 22 F1 90 00 00 00 00       $%  ANS000:7B7 03 22 F1 90 00 00 00 00
  $%  REQ001:737 03 22 F1 87 00 00 00 00       $%  ANS001:7B7 03 22 F1 87 00 00 00 00
  $%  REQ002:737 03 22 F1 97 00 00 00 00       $%  ANS002:7B7 03 22 F1 97 00 00 00 00
  $%  REQ003:737 03 22 F1 8A 00 00 00 00       $%  ANS003:7B7 03 22 F1 8A 00 00 00 00
  $%  REQ004:737 03 22 F1 93 00 00 00 00       $%  ANS004:7B7 03 22 F1 93 00 00 00 00
  $%  REQ005:737 03 22 F1 95 00 00 00 00       $%  ANS005:7B7 03 22 F1 95 00 00 00 00
  $%  REQ006:737 03 22 F1 8C 00 00 00 00       $%  ANS006:7B7 03 22 F1 8C 00 00 00 00
  $%  REQ007:737 03 22 F1 99 00 00 00 00       $%  ANS007:7B7 03 22 F1 99 00 00 00 00
  $%  REQ008:737 03 22 F1 84 00 00 00 00       $%  ANS008:7B7 03 22 F1 84 00 00 00 00
  $%  REQ009:737 03 22 F1 50 00 00 00 00       $%  ANS009:7B7 03 22 F1 50 00 00 00 00
  $%  REQ010:737 03 22 F1 8B 00 00 00 00       $%  ANS010:7B7 03 22 F1 8B 00 00 00 00
  $%  REQ011:737 03 22 F1 00 00 00 00 00       $%  ANS011:7B7 03 22 F1 00 00 00 00 00
  $%  REQ012:737 03 22 F1 A8 00 00 00 00       $%  ANS012:7B7 03 22 F1 A8 00 00 00 00

  $%  000:VIN:                           $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:零件号:                        $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  002:系统名称:                      $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:系统供应商标识:                $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:ECU硬件版本号:                 $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  005:ECU软件版本号:                 $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  006:ECU序列号:                     $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:编程日期:                      $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  008:应用软件指纹数据标识符:        $%    $%  ANS008.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  009:指纹:                          $%    $%  ANS009.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  010:ECU制造日期:                   $%    $%  ANS010.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  011:诊断版本:                      $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  012:整车配置编码:                  $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:737 03 22 51 01 00 00 00 00       $  ANS000:7B7 03 22 51 01 00 00 00 00
  $  REQ001:737 03 22 51 02 00 00 00 00       $  ANS001:7B7 03 22 51 02 00 00 00 00
  $  REQ002:737 03 22 51 20 00 00 00 00       $  ANS002:7B7 03 22 51 20 00 00 00 00

  $  000.蓄电池电压              $    $  V     $    $  ANS000.BYTE004  $  y=x1/10;
  $  001.KL.50状态               $    $        $    $  ANS001.BYTE004  $  switxh((x1>>3)&0x01)0:y=@0002;1:y=@0003;
  $  002.发动机运行状态          $    $        $    $  ANS001.BYTE004  $  switxh((x1>>2)&0x01)0:y=@0329;1:y=@0261;
  $  003.KL.15状态               $    $        $    $  ANS001.BYTE004  $  switxh((x1>>1)&0x01)0:y=@0002;1:y=@0003;
  $  004.KL.R状态                $    $        $    $  ANS001.BYTE004  $  switxh(x1&0x01)0:y=@0002;1:y=@0003;
  $  005.EPB LED指示灯输出       $    $        $    $  ANS002.BYTE004  $  switxh(x1&0x01)0:y=@0002;1:y=@0003;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:737 30 00 10 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
