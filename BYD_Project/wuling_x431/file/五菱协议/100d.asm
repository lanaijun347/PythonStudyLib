
    车型ID：100d

    模拟：协议模拟-->100d

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

  码库:  $*$*100D


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

  $%  000:ECU生产日期:            $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  001:VIN:                    $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  002:供应商ECU硬件号:        $%    $%  ANS002.BYTE004  $%  HEX(x1,x2,x3,x4,x5);
  $%  003:供应商ECU软件号:        $%    $%  ANS003.BYTE004  $%  HEX(x1,x2,x3);
  $%  004:零件号:                 $%    $%  ANS004.BYTE004  $%  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;

;******************************************************************************************************************************************************

读数据流: 

  $)  00.速度数据
  $  00.速度数据
  $  REQ000:720 03 22 2D 00 00 00 00 00       $  ANS000:728 03 22 2D 00 00 00 00 00
  $  REQ001:720 03 22 2D 05 00 00 00 00       $  ANS001:728 03 22 2D 05 00 00 00 00

  $  000.车速信息                   $    $  km/h      $    $  ANS000.BYTE004  $  y=(x1*0x100+x2)*(0.05625);
  $  001.左前轮速                   $    $  km/h      $    $  ANS000.BYTE006  $  y=(x1*0x100+x2)*(0.05625);
  $  002.右前轮速                   $    $  km/h      $    $  ANS000.BYTE008  $  y=(x1*0x100+x2)*(0.05625);
  $  003.左后轮速                   $    $  km/h      $    $  ANS000.BYTE010  $  y=(x1*0x100+x2)*(0.05625);
  $  004.右后轮速                   $    $  km/h      $    $  ANS000.BYTE012  $  y=(x1*0x100+x2)*(0.05625);
  $  005.主缸压力                   $    $  bar       $    $  ANS001.BYTE004  $  y=(x1*0x100+x2)*(0.0153);
  $  006.方向盘转角                 $    $  rad       $    $  ANS001.BYTE006  $  y=(x1*0x100+x2)*(0.1);
  $  007.偏航率（横摆角速度）       $    $  rad/s     $    $  ANS001.BYTE008  $  y=(x1*0x100+x2)*(0.00213);
  $  008.侧向加速度                 $    $  m/s^2     $    $  ANS001.BYTE010  $  y=(x1*0x100+x2)*(0.02712);
  $  009.纵向加速度                 $    $  m/s^2     $    $  ANS001.BYTE012  $  y=(x1*0x100+x2)*(0.02712);

  $)  01.电磁阀数据
  $  01.电磁阀数据
  $  REQ000:720 03 22 2D 02 00 00 00 00       $  ANS000:728 03 22 2D 02 00 00 00 00

  $  000.阀继电器状态             $    $       $    $  ANS000.BYTE004  $  if((x1&0x01)==0x01)y=@00e9;else y=@0046;
  $  001.泵电机状态               $    $       $    $  ANS000.BYTE005  $  if((x1&0x01)==0x01)y=@00e9;else y=@0046;
  $  002.右后出油阀激活状态       $    $       $    $  ANS000.BYTE006  $  if((x1&0x80)==0x80)y=@0023;else y=@020f;
  $  003.右后进油阀激活状态       $    $       $    $  ANS000.BYTE006  $  if((x1&0x40)==0x40)y=@0023;else y=@020f;
  $  004.左后出油阀激活状态       $    $       $    $  ANS000.BYTE006  $  if((x1&0x20)==0x20)y=@0023;else y=@020f;
  $  005.左后进油阀激活状态       $    $       $    $  ANS000.BYTE006  $  if((x1&0x10)==0x10)y=@0023;else y=@020f;
  $  006.右前出油阀激活状态       $    $       $    $  ANS000.BYTE006  $  if((x1&0x08)==0x08)y=@0023;else y=@020f;
  $  007.右前进油阀激活状态       $    $       $    $  ANS000.BYTE006  $  if((x1&0x04)==0x04)y=@0023;else y=@020f;
  $  008.左前出油阀激活状态       $    $       $    $  ANS000.BYTE006  $  if((x1&0x2)==0x02)y=@0023;else y=@020f;
  $  009.左前进油阀激活状态       $    $       $    $  ANS000.BYTE006  $  if((x1&0x01)==0x01)y=@0023;else y=@020f;

  $)  02.防抱死系统数据
  $  02.防抱死系统数据
  $  REQ000:720 03 22 2D 01 00 00 00 00       $  ANS000:728 03 22 2D 01 00 00 00 00

  $  000.电池电压         $    $  V     $    $  ANS000.BYTE004  $  y=x*(0.08);
  $  001.制动灯开关       $    $        $    $  ANS000.BYTE005  $  if((x1&0x01)==0x01)y=@0115;else y=@0106;

  $)  03.其他
  $  03.其他
  $  REQ000:720 03 22 2D 01 00 00 00 00       $  ANS000:728 03 22 2D 01 00 00 00 00
  $  REQ001:720 03 22 2D 02 00 00 00 00       $  ANS001:728 03 22 2D 02 00 00 00 00

  $  000.ESP开关                  $    $       $    $  ANS000.BYTE006  $  if((x1&0x01)==0x01)y=@00e9;else y=@0046;
  $  001.高压阀2                  $    $       $    $  ANS001.BYTE007  $  if((x1&0x08)==0x08)y=@0023;else y=@020f;
  $  002.高压阀1 (ESP Only)       $    $       $    $  ANS001.BYTE007  $  if((x1&0x04)==0x04)y=@0023;else y=@020f;
  $  003.回路控制阀2              $    $       $    $  ANS001.BYTE007  $  if((x1&0x2)==0x02)y=@0023;else y=@020f;
  $  004.回路控制阀1              $    $       $    $  ANS001.BYTE007  $  if((x1&0x01)==0x01)y=@0023;else y=@020f;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:720 30 00 0A 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
