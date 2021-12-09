
    车型ID：1015

    模拟：协议模拟-->1015

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~728

进入命令:

  $~  REQ000:720 02 10 01 00 00 00 00 00       $~  ANS000:728 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:720 02 3E 00 00 00 00 00 00       $!  ANS000:728 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:720 03 19 02 08 00 00 00 00       $#  ANS000:728 03 19 02 08 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:  $*$*1015


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:720 04 14 FF FF FF 00 00 00       $$  ANS000:728 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:720 03 22 F1 8B 00 00 00 00       $%  ANS000:728 03 22 F1 8B 00 00 00 00
  $%  REQ001:720 03 22 F1 90 00 00 00 00       $%  ANS001:728 03 22 F1 90 00 00 00 00
  $%  REQ002:720 03 22 F1 92 00 00 00 00       $%  ANS002:728 03 22 F1 92 00 00 00 00
  $%  REQ003:720 03 22 F1 94 00 00 00 00       $%  ANS003:728 03 22 F1 94 00 00 00 00
  $%  REQ004:720 03 22 F1 CB 00 00 00 00       $%  ANS004:728 03 22 F1 CB 00 00 00 00
  $%  REQ005:720 03 22 F1 8A 00 00 00 00       $%  ANS005:728 03 22 F1 8A 00 00 00 00

  $%  000:ECU生产日期:            $%    $%  ANS000.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  001:VIN:                    $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  002:供应商ECU硬件号:        $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  003:供应商ECU软件号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  004:零件号:                 $%    $%  ANS004.BYTE004  $%  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $%  005:供应商信息:             $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.实时数据
  $  00.实时数据
  $  REQ000:720 03 22 2D 00 00 00 00 00       $  ANS000:728 03 22 2D 00 00 00 00 00
  $  REQ001:720 03 22 2D 01 00 00 00 00       $  ANS001:728 03 22 2D 01 00 00 00 00
  $  REQ002:720 03 22 2D 06 00 00 00 00       $  ANS002:728 03 22 2D 06 00 00 00 00
  $  REQ003:720 03 22 2D 07 00 00 00 00       $  ANS003:728 03 22 2D 07 00 00 00 00
  $  REQ004:720 03 22 2D 08 00 00 00 00       $  ANS004:728 03 22 2D 08 00 00 00 00
  $  REQ005:720 03 22 2D 09 00 00 00 00       $  ANS005:728 03 22 2D 09 00 00 00 00
  $  REQ006:720 03 22 2D 0A 00 00 00 00       $  ANS006:728 03 22 2D 0A 00 00 00 00
  $  REQ007:720 03 22 2D 0B 00 00 00 00       $  ANS007:728 03 22 2D 0B 00 00 00 00
  $  REQ008:720 03 22 F0 12 00 00 00 00       $  ANS008:728 03 22 F0 12 00 00 00 00
  $  REQ009:720 03 22 F0 14 00 00 00 00       $  ANS009:728 03 22 F0 14 00 00 00 00
  $  REQ010:720 03 22 2D 04 00 00 00 00       $  ANS010:728 03 22 2D 04 00 00 00 00

  $  000.车速信息                   $    $  km/h         $    $  ANS000.BYTE004  $  y=x;
  $  001.左前轮速                   $    $  km/h         $    $  ANS000.BYTE005  $  y=x;
  $  002.右前轮速                   $    $  km/h         $    $  ANS000.BYTE006  $  y=x;
  $  003.左后轮速                   $    $  km/h         $    $  ANS000.BYTE007  $  y=x;
  $  004.右后轮速                   $    $  km/h         $    $  ANS000.BYTE008  $  y=x;
  $  005.电池电压                   $    $  V            $    $  ANS001.BYTE004  $  y=x*(0.1);
  $  006.侧向加速度                 $    $  Gravity      $    $  ANS002.BYTE004  $  y=((x1*0x100+x2)&0x7FFF)*(0.001)-((x1*0x100+x2)&0x8000)*(0.001);
  $  007.纵向加速度                 $    $  Gravity      $    $  ANS002.BYTE006  $  y=((x1*0x100+x2)&0x7FFF)*(0.01)-((x1*0x100+x2)&0x8000)*(0.01);
  $  008.偏航率（横摆角速度）       $    $  deg/s        $    $  ANS002.BYTE008  $  y=((x1*0x100+x2)&0x7FFF)*(0.00286)-((x1*0x100+x2)&0x8000)*(0.00286);
  $  009.油压                       $    $  bar          $    $  ANS003.BYTE004  $  y=((x1*0x100+x2)&0x7FFF)*(0.01)-((x1*0x100+x2)&0x8000)*(0.01);
  $  010.左后卡钳状态               $    $               $    $  ANS004.BYTE004  $  if(x==27)y=@0210;else if(x==40)y=@0211;else if(x==54)y=@00ed;else if(x==113)y=@0212;else if(x==142)y=@0213;else if(x==144)y=@0214;else if(x==163)y=@009f;else if(x==0x00)y=@0204;else y=@0006;
  $  011.右后卡钳状态               $    $               $    $  ANS004.BYTE005  $  if(x==27)y=@0210;else if(x==40)y=@0211;else if(x==54)y=@00ed;else if(x==113)y=@0212;else if(x==142)y=@0213;else if(x==144)y=@0214;else if(x==163)y=@009f;else if(x==0x00)y=@0204;else y=@0006;
  $  012.左后制动卡钳温度           $    $  degree C     $    $  ANS005.BYTE004  $  y=((x1*0x100+x2)&0x7FFF)*(1)-((x1*0x100+x2)&0x8000)*(1)-40;
  $  013.右后制动卡钳温度           $    $  degree C     $    $  ANS005.BYTE006  $  y=((x1*0x100+x2)&0x7FFF)*(1)-((x1*0x100+x2)&0x8000)*(1)-40;
  $  014.左驻车制动器计数器         $    $  times        $    $  ANS006.BYTE004  $  y=(x1*0x1000000+x2*0x10000+x3*0x100+x4)*(1);
  $  015.右驻车制动器计数器         $    $  times        $    $  ANS006.BYTE008  $  y=(x1*0x1000000+x2*0x10000+x3*0x100+x4)*(1);
  $  016.左驻车制动钳力             $    $  N            $    $  ANS007.BYTE004  $  y=(x1*0x100+x2)*(1);
  $  017.右驻车制动钳力             $    $  N            $    $  ANS007.BYTE006  $  y=(x1*0x100+x2)*(1);
  $  018.发动机转速                 $    $  rpm          $    $  ANS008.BYTE004  $  y=(x1*0x100+x2)*(0.25);
  $  019.里程                       $    $  km           $    $  ANS009.BYTE004  $  y=(x1*0x1000000+x2*0x10000+x3*0x100+x4)*(0.015625);
  $  020.泵状态                     $    $               $    $  ANS010.BYTE004  $  if((x1&0x01)==0x01)y=@00e9;else y=@0046;

  $)  01.状态数据
  $  01.状态数据
  $  REQ000:720 03 22 2D 04 00 00 00 00       $  ANS000:728 03 22 2D 04 00 00 00 00
  $  REQ001:720 03 22 2D 03 00 00 00 00       $  ANS001:728 03 22 2D 03 00 00 00 00
  $  REQ002:720 03 22 2D 02 00 00 00 00       $  ANS002:728 03 22 2D 02 00 00 00 00
  $  REQ003:720 03 22 2D 05 00 00 00 00       $  ANS003:728 03 22 2D 05 00 00 00 00

  $  000.泵电机状态                         $    $       $    $  ANS000.BYTE004  $  if((x1&0x01)==0x01)y=@00e9;else y=@0046;
  $  001.右后出油阀激活状态                 $    $       $    $  ANS001.BYTE004  $  if((x1&0x80)==0x80)y=@0023;else y=@020f;
  $  002.右后进油阀激活状态                 $    $       $    $  ANS001.BYTE004  $  if((x1&0x40)==0x40)y=@0023;else y=@020f;
  $  003.左后出油阀激活状态                 $    $       $    $  ANS001.BYTE004  $  if((x1&0x20)==0x20)y=@0023;else y=@020f;
  $  004.左后进油阀激活状态                 $    $       $    $  ANS001.BYTE004  $  if((x1&0x10)==0x10)y=@0023;else y=@020f;
  $  005.右前出油阀激活状态                 $    $       $    $  ANS001.BYTE004  $  if((x1&0x08)==0x08)y=@0023;else y=@020f;
  $  006.右前进油阀激活状态                 $    $       $    $  ANS001.BYTE004  $  if((x1&0x04)==0x04)y=@0023;else y=@020f;
  $  007.左前出油阀激活状态                 $    $       $    $  ANS001.BYTE004  $  if((x1&0x2)==0x02)y=@0023;else y=@020f;
  $  008.左前进油阀激活状态                 $    $       $    $  ANS001.BYTE004  $  if((x1&0x01)==0x01)y=@0023;else y=@020f;
  $  009.制动灯开关                         $    $       $    $  ANS002.BYTE004  $  if((x1&0x01)==0x01)y=@0055;else y=@0056;
  $  010.EBD警告灯状态                      $    $       $    $  ANS002.BYTE004  $  if((x1&0x2)==0x02)y=@0115;else y=@0106;
  $  011.ABS警告灯状态                      $    $       $    $  ANS002.BYTE004  $  if((x1&0x04)==0x04)y=@0115;else y=@0106;
  $  012.ESC报警灯(仅 ESC和ESC+IPB)         $    $       $    $  ANS002.BYTE004  $  if((x&0x18)==0x00)y=@0106;else if((x&0x18)==0x08)y=@0115;else if((x&0x18)==0x10)y=@00e6;else y=@0006;
  $  013.ESC关报警灯(仅 ESC和ESC+IPB)       $    $       $    $  ANS002.BYTE004  $  if((x1&0x20)==0x20)y=@0115;else y=@0106;
  $  014.AVH打开灯(仅 ESC+IPB)              $    $       $    $  ANS002.BYTE004  $  if((x1&0x40)==0x40)y=@0115;else y=@0106;
  $  015.EPB功能指示灯(仅ESC+IPB)           $    $       $    $  ANS002.BYTE005  $  if((x&0x03)==0x00)y=@0106;else if((x&0x03)==0x01)y=@0115;else if((x&0x03)==0x02)y=@00e6;else y=@0006;
  $  016.EPB报警指示灯(仅ESC+IPB)           $    $       $    $  ANS002.BYTE005  $  if((x&0x0C)==0x00)y=@0106;else if((x&0x0C)==0x04)y=@0115;else if((x&0x0C)==0x08)y=@00e6;else y=@0006;
  $  017.ESC开关状态(仅ESC和ESC+IPB)        $    $       $    $  ANS003.BYTE004  $  if((x&0x02)==0x02)y=@0121;else y=@0022;
  $  018.AVH开关状态(仅ESC+IPB)             $    $       $    $  ANS003.BYTE004  $  if((x&0x08)==0x08)y=@0121;else y=@0022;
  $  019.EPB开关状态(仅ESC+IPB)             $    $       $    $  ANS003.BYTE004  $  if((x&0x60)>>5==0) y=@0122;if((x&0x60)>>5==0x01) y=@0123;if((x&0x60)>>5==0x02) y=@00ed;if((x&0x60)>>5==0x03) y=@0124;else: y=@009f;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:720 30 00 0A 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
