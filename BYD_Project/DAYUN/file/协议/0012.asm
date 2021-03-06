
    车型ID：0012

    模拟：协议模拟-->0012

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~794

进入命令:

  $~  REQ000:714 02 10 01 00 00 00 00 00       $~  ANS000:794 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:714 02 3E 00 00 00 00 00 00       $!  ANS000:794 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:714 03 19 02 09 00 00 00 00       $#  ANS000:794 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/11000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:714 04 14 FF FF FF 00 00 00       $$  ANS000:794 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:714 03 22 F1 87 00 00 00 00       $%  ANS000:794 03 22 F1 87 00 00 00 00
  $%  REQ001:714 03 22 F1 8A 00 00 00 00       $%  ANS001:794 03 22 F1 8A 00 00 00 00
  $%  REQ002:714 03 22 F1 93 00 00 00 00       $%  ANS002:794 03 22 F1 93 00 00 00 00
  $%  REQ003:714 03 22 F1 95 00 00 00 00       $%  ANS003:794 03 22 F1 95 00 00 00 00
  $%  REQ004:714 03 22 F1 9D 00 00 00 00       $%  ANS004:794 03 22 F1 9D 00 00 00 00
  $%  REQ005:714 03 22 F1 8B 00 00 00 00       $%  ANS005:794 03 22 F1 8B 00 00 00 00
  $%  REQ006:714 03 22 F1 90 00 00 00 00       $%  ANS006:794 03 22 F1 90 00 00 00 00
  $%  REQ007:714 03 22 F1 8C 00 00 00 00       $%  ANS007:794 03 22 F1 8C 00 00 00 00
  $%  REQ008:714 03 22 13 43 00 00 00 00       $%  ANS008:794 03 22 13 43 00 00 00 00

  $%  000:零部件件号:                     $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  001:系统供应商代码:                 $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:系统供应商ECU硬件版本号:        $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  003:系统供应商ECU软件版本号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:ECU安装日期:                    $%    $%  ANS004.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  005:ECU制造日期:                    $%    $%  ANS005.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  006:VIN:                            $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU序列号:                      $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  008:ECU标识符:                      $%    $%  ANS008.BYTE004  $%  0 ASCII

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:714 03 22 13 40 00 00 00 00       $  ANS000:794 03 22 13 40 00 00 00 00
  $  REQ001:714 03 22 13 41 00 00 00 00       $  ANS001:794 03 22 13 41 00 00 00 00
  $  REQ002:714 03 22 13 42 00 00 00 00       $  ANS002:794 03 22 13 42 00 00 00 00
  $  REQ003:714 03 22 13 44 00 00 00 00       $  ANS003:794 03 22 13 44 00 00 00 00

  $  000.抽真空加注状态       $    $           $    $  ANS000.BYTE004  $  if(x1==0) y=@007c;else if(x1==170) y=@007d;else if(x1==238) y=@007e;else if(x1==255) y=@007f;else y=@0004;
  $  001.左前进阀状态         $    $           $    $  ANS001.BYTE004  $  if(((x1>>0)&1)) y=@007a;else y=@007b;
  $  002.左前出阀状态         $    $           $    $  ANS001.BYTE004  $  if(((x1>>1)&1)) y=@007a;else y=@007b;
  $  003.右前进阀状态         $    $           $    $  ANS001.BYTE004  $  if(((x1>>2)&1)) y=@007a;else y=@007b;
  $  004.右前出阀状态         $    $           $    $  ANS001.BYTE004  $  if(((x1>>3)&1)) y=@007a;else y=@007b;
  $  005.左后进阀状态         $    $           $    $  ANS001.BYTE004  $  if(((x1>>4)&1)) y=@007a;else y=@007b;
  $  006.左后出阀状态         $    $           $    $  ANS001.BYTE004  $  if(((x1>>5)&1)) y=@007a;else y=@007b;
  $  007.右后进阀状态         $    $           $    $  ANS001.BYTE004  $  if(((x1>>6)&1)) y=@007a;else y=@007b;
  $  008.右后出阀状态         $    $           $    $  ANS001.BYTE004  $  if(((x1>>7)&1)) y=@007a;else y=@007b;
  $  009.马达状态             $    $           $    $  ANS002.BYTE004  $  if(x1==0) y=@007b;else if(x1==255) y=@007a;else y=@0004;
  $  010.车速                 $    $  km/h     $    $  ANS003.BYTE004  $  y = SPRINTF([%d], x1);
  $  011.电源电压             $    $  V        $    $  ANS003.BYTE005  $  y = SPRINTF([%d], x1);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:714 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
