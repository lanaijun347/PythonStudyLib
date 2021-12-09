
    车型ID：1017

    模拟：协议模拟-->1017

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~758

进入命令:

  $~  REQ000:750 02 10 01 00 00 00 00 00       $~  ANS000:758 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:750 02 3E 00 00 00 00 00 00       $!  ANS000:758 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:750 03 19 02 08 00 00 00 00       $#  ANS000:758 03 19 02 08 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:  $*$*1017


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:750 04 14 FF FF FF 00 00 00       $$  ANS000:758 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:750 03 22 F1 8B 00 00 00 00       $%  ANS000:758 03 22 F1 8B 00 00 00 00
  $%  REQ001:750 03 22 F1 90 00 00 00 00       $%  ANS001:758 03 22 F1 90 00 00 00 00
  $%  REQ002:750 03 22 F1 92 00 00 00 00       $%  ANS002:758 03 22 F1 92 00 00 00 00
  $%  REQ003:750 03 22 F1 94 00 00 00 00       $%  ANS003:758 03 22 F1 94 00 00 00 00
  $%  REQ004:750 03 22 F1 CB 00 00 00 00       $%  ANS004:758 03 22 F1 CB 00 00 00 00
  $%  REQ005:750 03 22 F1 8A 00 00 00 00       $%  ANS005:758 03 22 F1 8A 00 00 00 00

  $%  000:ECU生产日期:                      $%    $%  ANS000.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  001:VIN:                              $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  002:供应商ECU硬件号:                  $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:供应商ECU软件号（耐斯特）:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $%  004:供应商ECU软件号（东华）:          $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:供应商 P/N:                       $%    $%  ANS004.BYTE004  $%  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $%  006:供应商标识符:                     $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:750 03 22 30 01 00 00 00 00       $  ANS000:758 03 22 30 01 00 00 00 00
  $  REQ001:750 03 22 30 02 00 00 00 00       $  ANS001:758 03 22 30 02 00 00 00 00
  $  REQ002:750 03 22 30 03 00 00 00 00       $  ANS002:758 03 22 30 03 00 00 00 00
  $  REQ003:750 03 22 30 04 00 00 00 00       $  ANS003:758 03 22 30 04 00 00 00 00
  $  REQ004:750 03 22 30 06 00 00 00 00       $  ANS004:758 03 22 30 06 00 00 00 00
  $  REQ005:750 03 22 30 07 00 00 00 00       $  ANS005:758 03 22 30 07 00 00 00 00
  $  REQ006:750 03 22 30 0E 00 00 00 00       $  ANS006:758 03 22 30 0E 00 00 00 00
  $  REQ007:750 03 22 40 01 00 00 00 00       $  ANS007:758 03 22 40 01 00 00 00 00
  $  REQ008:750 03 22 40 03 00 00 00 00       $  ANS008:758 03 22 40 03 00 00 00 00
  $  REQ009:750 03 22 30 05 00 00 00 00       $  ANS009:758 03 22 30 05 00 00 00 00
  $  REQ010:750 03 22 40 02 00 00 00 00       $  ANS010:758 03 22 40 02 00 00 00 00

  $  000.EPS供电电压                $    $  V            $    $  ANS000.BYTE004  $  y=x*(0.1)+(5);
  $  001.方向盘转角                 $    $  rad          $    $  ANS001.BYTE004  $  y=(x1*0x100+x2)*(0.0625)-2048;
  $  002.ECU内部温度                $    $  degree C     $    $  ANS002.BYTE004  $  y=x*(1)-40;
  $  003.方向盘输入扭矩             $    $  Nm           $    $  ANS003.BYTE004  $  y=(x1*0x100+x2)*(0.0039062)-128;
  $  004.发动机采集的整车速度       $    $  km/h         $    $  ANS004.BYTE004  $  y=x;
  $  005.电池电压                   $    $  V            $    $  ANS005.BYTE004  $  y=x*0.1+5;
  $  006.发动机转速                 $    $  rpm          $    $  ANS006.BYTE004  $  y=(x1*0x100+x2)*(1);
  $  007.ABS采集的整车速度          $    $  km/h         $    $  ANS007.BYTE004  $  y=x;
  $  008.电机输出扭矩               $    $  Nm           $    $  ANS008.BYTE004  $  y=(x1*0x100+x2)*(0.0039062)-128;
  $  009.车速有效性                 $    $               $    $  ANS009.BYTE004  $  if((x1&0x80)==0x80)y=@00d8;else y=@00d7;
  $  010.EPS标定完成情况            $    $               $    $  ANS009.BYTE004  $  if((x1&0x40)==0x40)y=@00b7;else y=@00b6;
  $  011.EPS安装完成                $    $               $    $  ANS009.BYTE004  $  if((x1&0x20)==0x20)y=@00b7;else y=@00b6;
  $  012.EPS找到机械中位            $    $               $    $  ANS009.BYTE004  $  if((x1&0x10)==0x10)y=@00b7;else y=@00b6;
  $  013.EPS标定值存储              $    $               $    $  ANS009.BYTE004  $  if((x1&0x08)==0x08)y=@00b7;else y=@00b6;
  $  014.发动机转速有效性           $    $               $    $  ANS010.BYTE004  $  if((x1&0x40)==0x40)y=@00d8;else y=@00d7;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:750 30 00 0A 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
