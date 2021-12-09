
    车型ID：5702

    模拟：协议模拟-->5702

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:712 02 10 03 00 00 00 00 00       $~  ANS000:792 02 10 03 00 00 00 00 00
  $~~ REQ001:712 02 27 01 00 00 00 00 00       $~~ ANS001:792 02 27 01 00 00 00 00 00
  $~~ REQ002:712 06 27 02 00 00 00 00 00       $~~ ANS002:792 06 27 02 00 00 00 00 00

空闲命令:

  $!  REQ000:712 02 3E 00 00 00 00 00 00       $!  ANS000:792 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:712 03 19 02 09 00 00 00 00       $#  ANS000:792 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/3b000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:712 04 14 FF FF FF 00 00 00       $$  ANS000:792 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:712 03 22 F1 87 00 00 00 00       $%  ANS000:792 03 22 F1 87 00 00 00 00
  $%  REQ001:712 03 22 F1 8A 00 00 00 00       $%  ANS001:792 03 22 F1 8A 00 00 00 00
  $%  REQ002:712 03 22 F1 8C 00 00 00 00       $%  ANS002:792 03 22 F1 8C 00 00 00 00
  $%  REQ003:712 03 22 F1 90 00 00 00 00       $%  ANS003:792 03 22 F1 90 00 00 00 00
  $%  REQ004:712 03 22 F1 93 00 00 00 00       $%  ANS004:792 03 22 F1 93 00 00 00 00
  $%  REQ005:712 03 22 F1 95 00 00 00 00       $%  ANS005:792 03 22 F1 95 00 00 00 00

  $%  000:零部件号:              $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:系统供应商标识:        $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:ECU 批次编号:          $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:VIN码:                 $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  004:ECU硬件版本号:         $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2);
  $%  005:ECU软件版本号:         $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:712 03 22 10 02 00 00 00 00       $  ANS000:792 03 22 10 02 00 00 00 00
  $  REQ001:712 03 22 10 04 00 00 00 00       $  ANS001:792 03 22 10 04 00 00 00 00
  $  REQ002:712 03 22 10 05 00 00 00 00       $  ANS002:792 03 22 10 05 00 00 00 00
  $  REQ003:712 03 22 10 06 00 00 00 00       $  ANS003:792 03 22 10 06 00 00 00 00
  $  REQ004:712 03 22 10 07 00 00 00 00       $  ANS004:792 03 22 10 07 00 00 00 00
  $  REQ005:712 03 22 10 08 00 00 00 00       $  ANS005:792 03 22 10 08 00 00 00 00
  $  REQ006:712 03 22 10 09 00 00 00 00       $  ANS006:792 03 22 10 09 00 00 00 00
  $  REQ007:712 03 22 10 1C 00 00 00 00       $  ANS007:792 03 22 10 1C 00 00 00 00
  $  REQ008:712 03 22 10 1D 00 00 00 00       $  ANS008:792 03 22 10 1D 00 00 00 00

  $  000.液压单元状态       $    $           $    $  ANS000.BYTE004  $  switxh(x1) 0x00: y=@0532;0xaa: y=@0533;0xee: y=@0534;default: y=@003f;
  $  001.下线检测状态       $    $           $    $  ANS000.BYTE004  $  switxh(x1) 0x00: y=@0532;0xaa: y=@0533;0xee: y=@0534;default: y=@003f;
  $  002.左前轮轮速         $    $  km/h     $    $  ANS001.BYTE004  $  y=x1*14.4+x2*0.0563;
  $  003.右前轮轮速         $    $  km/h     $    $  ANS002.BYTE004  $  y=x1*14.4+x2*0.0563;
  $  004.左后轮轮速         $    $  km/h     $    $  ANS003.BYTE004  $  y=x1*14.4+x2*0.0563;
  $  005.右后轮轮速         $    $  km/h     $    $  ANS004.BYTE004  $  y=x1*14.4+x2*0.0563;
  $  006.车速               $    $  km/h     $    $  ANS005.BYTE004  $  y=x1*14.4+x2*0.0563;
  $  007.左前进油阀         $    $           $    $  ANS006.BYTE007  $  if(x1&0x01) y=@0000;else y=@0012;
  $  008.左前出油阀         $    $           $    $  ANS006.BYTE007  $  if(x1&0x02) y=@0000;else y=@0012;
  $  009.右前进油阀         $    $           $    $  ANS006.BYTE007  $  if(x1&0x04) y=@0000;else y=@0012;
  $  010.右前出油阀         $    $           $    $  ANS006.BYTE007  $  if(x1&0x08) y=@0000;else y=@0012;
  $  011.左后进油阀         $    $           $    $  ANS006.BYTE007  $  if(x1&0x10) y=@0000;else y=@0012;
  $  012.左后出油阀         $    $           $    $  ANS006.BYTE007  $  if(x1&0x20) y=@0000;else y=@0012;
  $  013.右后进油阀         $    $           $    $  ANS006.BYTE007  $  if(x1&0x40) y=@0000;else y=@0012;
  $  014.右后出油阀         $    $           $    $  ANS006.BYTE007  $  if(x1&0x80) y=@0000;else y=@0012;
  $  015.电瓶电压           $    $  V        $    $  ANS007.BYTE004  $  y=x1*0.08;
  $  016.制动开关状态       $    $           $    $  ANS008.BYTE007  $  if(x1&0x01) y=@0000;else y=@0012;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:712 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
