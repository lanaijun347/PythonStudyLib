
    车型ID：9d14

    模拟：协议模拟-->9d14

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~605

进入命令:

  $~  REQ000:685 02 10 03 00 00 00 00 00       $~  ANS000:605 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:685 02 3E 00 00 00 00 00 00       $!  ANS000:605 02 3E 00 00 00 00 00 00

退出命令:

  $@  REQ000:685 02 10 01 00 00 00 00 00       $@  ANS000:605 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:685 03 19 02 09 00 00 00 00       $#  ANS000:605 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/0e000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:685 04 14 FF FF FF 00 00 00       $$  ANS000:605 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:685 03 22 F1 01 00 00 00 00       $%  ANS000:605 03 22 F1 01 00 00 00 00
  $%  REQ001:685 03 22 F1 02 00 00 00 00       $%  ANS001:605 03 22 F1 02 00 00 00 00
  $%  REQ002:685 03 22 F1 03 00 00 00 00       $%  ANS002:605 03 22 F1 03 00 00 00 00
  $%  REQ003:685 03 22 F1 8A 00 00 00 00       $%  ANS003:605 03 22 F1 8A 00 00 00 00
  $%  REQ004:685 03 22 F1 8B 00 00 00 00       $%  ANS004:605 03 22 F1 8B 00 00 00 00
  $%  REQ005:685 03 22 F1 91 00 00 00 00       $%  ANS005:605 03 22 F1 91 00 00 00 00
  $%  REQ006:685 03 22 F1 92 00 00 00 00       $%  ANS006:605 03 22 F1 92 00 00 00 00
  $%  REQ007:685 03 22 F1 94 00 00 00 00       $%  ANS007:605 03 22 F1 94 00 00 00 00
  $%  REQ008:685 03 22 F1 90 00 00 00 00       $%  ANS008:605 03 22 F1 90 00 00 00 00

  $%  000:ECU硬件版本号由OEM定义:                $%    $%  ANS000.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6);
  $%  001:ECU名称由OEM定义:                      $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  002:ECU的零件号由OEM定义:                  $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  003:读取ECU的供应商标识符:                 $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:ECU的制造日期显示ECU的生产日期:        $%    $%  ANS004.BYTE004  $%  HEX(x1,x2,x3);
  $%  005:车辆制造商ECU硬件号:                   $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  006:ECU硬件号由供应商定义:                 $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  007:ECU软件号由供应商定义:                 $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  008:VIN码:                                 $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:685 03 22 01 00 00 00 00 00       $  ANS000:605 03 22 01 00 00 00 00 00
  $  REQ001:685 03 22 01 01 00 00 00 00       $  ANS001:605 03 22 01 01 00 00 00 00
  $  REQ002:685 03 22 01 02 00 00 00 00       $  ANS002:605 03 22 01 02 00 00 00 00
  $  REQ003:685 03 22 01 03 00 00 00 00       $  ANS003:605 03 22 01 03 00 00 00 00
  $  REQ004:685 03 22 01 04 00 00 00 00       $  ANS004:605 03 22 01 04 00 00 00 00
  $  REQ005:685 03 22 01 05 00 00 00 00       $  ANS005:605 03 22 01 05 00 00 00 00
  $  REQ006:685 03 22 FE 1E 00 00 00 00       $  ANS006:605 03 22 FE 1E 00 00 00 00

  $  000.制动踏板开关状态           $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@0052;else y=@0051;
  $  001.离合器踏板开关状态         $    $       $    $  ANS001.BYTE004  $  if(((x>>0)&1)) y=@0052;else y=@0051;
  $  002.P档位开关                  $    $       $    $  ANS002.BYTE004  $  if(((x>>0)&1)) y=@0052;else y=@0051;
  $  003.左前门开关状态             $    $       $    $  ANS003.BYTE004  $  if(((x>>0)&1)) y=@0052;else y=@0051;
  $  004.右前门开关状态             $    $       $    $  ANS003.BYTE004  $  if(((x>>1)&1)) y=@0052;else y=@0051;
  $  005.左后门开关状态             $    $       $    $  ANS003.BYTE004  $  if(((x>>2)&1)) y=@0052;else y=@0051;
  $  006.右后门开关状态             $    $       $    $  ANS003.BYTE004  $  if(((x>>3)&1)) y=@0052;else y=@0051;
  $  007.行李箱门开关状态           $    $       $    $  ANS003.BYTE004  $  if(((x>>4)&1)) y=@0052;else y=@0051;
  $  008.PS启动/停止按钮1状态       $    $       $    $  ANS004.BYTE004  $  if(((x>>0)&1)) y=@0052;else y=@0051;
  $  009.PS启动/停止按钮2状态       $    $       $    $  ANS004.BYTE004  $  if(((x>>1)&1)) y=@0052;else y=@0051;
  $  010.电源继电器反馈状态         $    $       $    $  ANS005.BYTE004  $  if(((x>>0)&1)) y=@0052;else y=@0051;
  $  011.点火1继电器反馈状态        $    $       $    $  ANS005.BYTE004  $  if(((x>>1)&1)) y=@0052;else y=@0051;
  $  012.点火2继电器反馈状态        $    $       $    $  ANS005.BYTE004  $  if(((x>>2)&1)) y=@0052;else y=@0051;
  $  013.启动继电器反馈状态         $    $       $    $  ANS005.BYTE004  $  if(((x>>3)&1)) y=@0052;else y=@0051;
  $  014.已学习钥匙数量             $    $       $    $  ANS006.BYTE004  $  y=x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:685 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
