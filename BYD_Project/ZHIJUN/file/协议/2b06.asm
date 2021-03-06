
    车型ID：2b06

    模拟：协议模拟-->2b06

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~759

进入命令:

  $~  REQ000:751 02 10 03 00 00 00 00 00       $~  ANS000:759 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:751 02 3E 00 00 00 00 00 00       $!  ANS000:759 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:751 03 19 02 01 00 00 00 00       $#  ANS000:759 03 19 02 01 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/c7000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:751 04 14 FF FF FF 00 00 00       $$  ANS000:759 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:751 03 22 F0 89 00 00 00 00       $%  ANS000:759 03 22 F0 89 00 00 00 00
  $%  REQ001:751 03 22 F1 84 00 00 00 00       $%  ANS001:759 03 22 F1 84 00 00 00 00
  $%  REQ002:751 03 22 F1 89 00 00 00 00       $%  ANS002:759 03 22 F1 89 00 00 00 00
  $%  REQ003:751 03 22 F1 87 00 00 00 00       $%  ANS003:759 03 22 F1 87 00 00 00 00
  $%  REQ004:751 03 22 F1 8A 00 00 00 00       $%  ANS004:759 03 22 F1 8A 00 00 00 00
  $%  REQ005:751 03 22 F1 8C 00 00 00 00       $%  ANS005:759 03 22 F1 8C 00 00 00 00
  $%  REQ006:751 03 22 F1 90 00 00 00 00       $%  ANS006:759 03 22 F1 90 00 00 00 00
  $%  REQ007:751 03 22 F1 A2 00 00 00 00       $%  ANS007:759 03 22 F1 A2 00 00 00 00
  $%  REQ008:751 03 22 F0 85 00 00 00 00       $%  ANS008:759 03 22 F0 85 00 00 00 00
  $%  REQ009:751 03 22 F1 93 00 00 00 00       $%  ANS009:759 03 22 F1 93 00 00 00 00
  $%  REQ010:751 03 22 F1 95 00 00 00 00       $%  ANS010:759 03 22 F1 95 00 00 00 00

  $%  000:国机智骏ECU(电子控制器)硬件版本编号:          $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  001:应用数据指纹数据标识:                         $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02d%02d%02d-%s],x1+2000,x2,x3,ASCII(x4,x5,x6,x7));
  $%  002:国机智骏ECU(电子控制器)软件版本编号:          $%    $%  ANS002.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  003:ECU(电子控制器)零件号:                        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);
  $%  004:ECU(电子控制器)供应商ID:                      $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:ECU(电子控制器)串码:                          $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%u %s %02d-%02d-%02d],(x1*0x1000000+x2*0x10000+x3*0x100+x4),ASCII(x5,x6,x7,x8,x9,x10),0x7D0+x11,x12,x13);
  $%  006:车辆标识码(VIN):                              $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:整车在厂家生产线生产日期:                     $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);
  $%  008:供应商ECU(电子控制器)标定软件版本编号：       $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  009:供应商ECU(电子控制器)硬件版本编号：           $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  010:供应商ECU(电子控制器)软件版本编号：           $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:751 03 22 04 02 00 00 00 00       $  ANS000:759 03 22 04 02 00 00 00 00
  $  REQ001:751 03 22 04 03 00 00 00 00       $  ANS001:759 03 22 04 03 00 00 00 00
  $  REQ002:751 03 22 04 04 00 00 00 00       $  ANS002:759 03 22 04 04 00 00 00 00
  $  REQ003:751 03 22 04 05 00 00 00 00       $  ANS003:759 03 22 04 05 00 00 00 00
  $  REQ004:751 03 22 04 06 00 00 00 00       $  ANS004:759 03 22 04 06 00 00 00 00
  $  REQ005:751 03 22 04 07 00 00 00 00       $  ANS005:759 03 22 04 07 00 00 00 00
  $  REQ006:751 03 22 04 08 00 00 00 00       $  ANS006:759 03 22 04 08 00 00 00 00
  $  REQ007:751 03 22 04 09 00 00 00 00       $  ANS007:759 03 22 04 09 00 00 00 00
  $  REQ008:751 03 22 04 1D 00 00 00 00       $  ANS008:759 03 22 04 1D 00 00 00 00

  $  000.液压单元状态         $    $           $    $  ANS000.BYTE004  $  if(x==0x00)y=@00a1;else if(x==0xAA)y=@00a2;else if(x==0xEE)y=@00a3;else y=@0005;
  $  001.下线检测状态         $    $           $    $  ANS001.BYTE004  $  if(x==0x00)y=@00a1;else if(x==0xAA)y=@00a2;else if(x==0xEE)y=@00a3;else y=@0005;
  $  002.左前轮速             $    $  km/h     $    $  ANS002.BYTE004  $  y=SPRINTF([%.0f],((x1*256+x2)*0.006));
  $  003.右前轮速             $    $  km/h     $    $  ANS003.BYTE004  $  y=SPRINTF([%.0f],((x1*256+x2)*0.006));
  $  004.左后轮速             $    $  km/h     $    $  ANS004.BYTE004  $  y=SPRINTF([%.0f],((x1*256+x2)*0.006));
  $  005.右后轮速             $    $  km/h     $    $  ANS005.BYTE004  $  y=SPRINTF([%.0f],((x1*256+x2)*0.006));
  $  006.车速                 $    $  km/h     $    $  ANS006.BYTE004  $  y=SPRINTF([%.0f],((x1*256+x2)*0.006));
  $  007.右后出油阀状态       $    $           $    $  ANS007.BYTE004  $  if(((x>>7)&1))y=@004f;else y=@0016;
  $  008.右后进油阀状态       $    $           $    $  ANS007.BYTE004  $  if(((x>>6)&1))y=@004f;else y=@0016;
  $  009.左后出油阀状态       $    $           $    $  ANS007.BYTE004  $  if(((x>>5)&1))y=@004f;else y=@0016;
  $  010.左后进油阀状态       $    $           $    $  ANS007.BYTE004  $  if(((x>>4)&1))y=@004f;else y=@0016;
  $  011.右前出油阀状态       $    $           $    $  ANS007.BYTE004  $  if(((x>>3)&1))y=@004f;else y=@0016;
  $  012.右前进油阀状态       $    $           $    $  ANS007.BYTE004  $  if(((x>>2)&1))y=@004f;else y=@0016;
  $  013.左前出油阀状态       $    $           $    $  ANS007.BYTE004  $  if(((x>>1)&1))y=@004f;else y=@0016;
  $  014.左前进油阀状态       $    $           $    $  ANS007.BYTE004  $  if(((x>>0)&1))y=@004f;else y=@0016;
  $  015.制动开关状态         $    $           $    $  ANS008.BYTE004  $  if(x)y=@004f;else y=@0026;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:751 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
