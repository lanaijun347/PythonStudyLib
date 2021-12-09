
    车型ID：9d15

    模拟：协议模拟-->9d15

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~628

进入命令:

  $~  REQ000:6A8 02 10 03 00 00 00 00 00       $~  ANS000:628 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:6A8 02 3E 00 00 00 00 00 00       $!  ANS000:628 02 3E 00 00 00 00 00 00

退出命令:

  $@  REQ000:6A8 02 10 01 00 00 00 00 00       $@  ANS000:628 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:6A8 03 19 02 09 00 00 00 00       $#  ANS000:628 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<8)+x2; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/0b010000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:6A8 04 14 FF FF FF 00 00 00       $$  ANS000:628 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:6A8 03 21 00 00 00 00 00 00       $%  ANS000:628 03 21 00 00 00 00 00 00

  $%  000:车辆名称:              $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2);
  $%  001:系统名称:              $%    $%  ANS000.BYTE006  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  002:硬件版本:              $%    $%  ANS000.BYTE011  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  003:软件版本:              $%    $%  ANS000.BYTE011  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  004:供应商软件版本:        $%    $%  ANS000.BYTE016  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  005:软件发布日期:          $%    $%  ANS000.BYTE030  $%  y=HEX(x1,x2,x3,x4);
  $%  006:ECU生产日期:           $%    $%  ANS000.BYTE034  $%  y=HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:6A8 03 21 02 00 00 00 00 00       $  ANS000:628 03 21 02 00 00 00 00 00

  $  000.电池电压           $    $  伏           $    $  ANS000.BYTE003  $  y=x*0.118;
  $  001.扭矩传感器         $    $  Nm           $    $  ANS000.BYTE004  $  y=x*0.0628-7.97;
  $  002.目标电机电流       $    $  安培         $    $  ANS000.BYTE005  $  y=x*0.294;
  $  003.车辆速度           $    $  千米/时      $    $  ANS000.BYTE006  $  y=x;
  $  004.测量电机电流       $    $  安培         $    $  ANS000.BYTE008  $  y=x*0.294;
  $  005.转向角度           $    $  度           $    $  ANS000.BYTE009  $  y=(x1*256+x2)*0.1-3276.7;
  $  006.转向角速           $    $  度/5毫秒     $    $  ANS000.BYTE010  $  y=x1*256+x2-32767;
  $  007.点火状态           $    $               $    $  ANS000.BYTE012  $  if(((x>>0)&1)) y=@004f;else y=@0024;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:6A8 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
