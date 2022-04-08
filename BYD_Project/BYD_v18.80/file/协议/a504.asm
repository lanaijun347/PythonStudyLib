
    车型ID：a504

    模拟：协议模拟-->a504

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~78A

进入命令:

  $~  REQ000:782 02 10 01 00 00 00 00 00       $~  ANS000:78A 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:782 02 3E 01 00 00 00 00 00       $!  ANS000:78A 02 3E 01 00 00 00 00 00

退出命令:

  $@  REQ000:782 01 20 00 00 00 00 00 00       $@  ANS000:78A 01 20 00 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:782 03 19 02 80 00 00 00 00       $#  ANS000:78A 03 19 02 80 00 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a5040000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:782 04 14 FF FF FF 00 00 00       $$  ANS000:78A 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:782 03 22 F1 12 00 00 00 00       $%  ANS000:78A 03 22 F1 12 00 00 00 00
  $%  REQ001:782 03 22 F1 97 00 00 00 00       $%  ANS001:78A 03 22 F1 97 00 00 00 00
  $%  REQ002:782 03 22 F1 91 00 00 00 00       $%  ANS002:78A 03 22 F1 91 00 00 00 00
  $%  REQ003:782 03 22 F1 95 00 00 00 00       $%  ANS003:78A 03 22 F1 95 00 00 00 00
  $%  REQ004:782 03 22 F1 92 00 00 00 00       $%  ANS004:78A 03 22 F1 92 00 00 00 00
  $%  REQ005:782 03 22 20 04 00 00 00 00       $%  ANS005:78A 03 22 20 04 00 00 00 00
  $%  REQ006:782 03 22 20 05 00 00 00 00       $%  ANS006:78A 03 22 20 05 00 00 00 00
  $%  REQ007:782 03 22 20 43 00 00 00 00       $%  ANS007:78A 03 22 20 43 00 00 00 00
  $%  REQ008:782 03 22 F1 86 00 00 00 00       $%  ANS008:78A 03 22 F1 86 00 00 00 00

  $%  000:车型:                $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  001:系统:                $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3);
  $%  002:客户零件号:          $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22);
  $%  003:软件号:              $%    $%  ANS003.BYTE009  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:硬件号:              $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:加注状态:            $%    $%  ANS005.BYTE004  $%  if(x1==0) y=@0014;else y=@0063;
  $%  006:下线检测状态:        $%    $%  ANS006.BYTE004  $%  if(x1==0) y=@03a8;else y=@0063;
  $%  007:限速监视状态:        $%    $%  ANS007.BYTE004  $%  if(x1==0) y=@083e;else if(x1==1) y=@083f; else y=@083d;
  $%  008:诊断会话模式:        $%    $%  ANS008.BYTE004  $%  if(x1==1) y=@083c;else if(x1==3) y=@035a; else y=@083d;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:782 03 22 20 01 00 00 00 00       $  ANS000:78A 03 22 20 01 00 00 00 00
  $  REQ001:782 03 22 20 02 00 00 00 00       $  ANS001:78A 03 22 20 02 00 00 00 00
  $  REQ002:782 03 22 20 03 00 00 00 00       $  ANS002:78A 03 22 20 03 00 00 00 00

  $  000.左前轮速               $    $  km/h     $    $  ANS000.BYTE004  $  y=x1*2259/128+x2*17/255;
  $  001.右前轮速               $    $  km/h     $    $  ANS000.BYTE006  $  y=x1*2259/128+x2*17/255;
  $  002.左后轮速               $    $  km/h     $    $  ANS000.BYTE008  $  y=x1*2259/128+x2*17/255;
  $  003.右后轮速               $    $  km/h     $    $  ANS000.BYTE010  $  y=x1*2259/128+x2*17/255;
  $  004.阀体供电电压           $    $  V        $    $  ANS001.BYTE004  $  y=x1*10.2/128;
  $  005.ECU供电电压            $    $  V        $    $  ANS001.BYTE005  $  y=x1*10.2/128;
  $  006.点火次数               $    $           $    $  ANS001.BYTE006  $  y=x1*256+x2;
  $  007.刹车灯状态             $    $           $    $  ANS002.BYTE004  $  if(x1&0x01) y=@02c0;else y=@02bf;
  $  008.电磁阀继电器状态       $    $           $    $  ANS002.BYTE004  $  if(x1&0x20) y=@03a6;else y=@0047;
  $  009.泵继电器               $    $           $    $  ANS002.BYTE006  $  if(x1&0x40) y=@03a6;else y=@0047;
  $  010.左前进油阀             $    $           $    $  ANS002.BYTE005  $  if(x1&0x01) y=@000e;else y=@000f;
  $  011.左前出油阀             $    $           $    $  ANS002.BYTE005  $  if(x1&0x02) y=@000e;else y=@000f;
  $  012.右前进油阀             $    $           $    $  ANS002.BYTE005  $  if(x1&0x04) y=@000e;else y=@000f;
  $  013.右前出油阀             $    $           $    $  ANS002.BYTE005  $  if(x1&0x08) y=@000e;else y=@000f;
  $  014.左后进油阀             $    $           $    $  ANS002.BYTE005  $  if(x1&0x10) y=@000e;else y=@000f;
  $  015.左后出油阀             $    $           $    $  ANS002.BYTE005  $  if(x1&0x20) y=@000e;else y=@000f;
  $  016.右后进油阀             $    $           $    $  ANS002.BYTE005  $  if(x1&0x40) y=@000e;else y=@000f;
  $  017.右后出油阀             $    $           $    $  ANS002.BYTE005  $  if(x1&0x80) y=@000e;else y=@000f;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:782 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
