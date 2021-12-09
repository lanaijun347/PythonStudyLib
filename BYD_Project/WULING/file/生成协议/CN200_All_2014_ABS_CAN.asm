$~#6$~#14$~500$~728
;******************************************************************************************************************************************************

车型代号:CN200
车型:宝骏730
排量:1.5L/1.8L
年份:2014
模块名缩写:ABS/ESP
模块名:防抱死系统
供应商:BOSCH
诊断代码:CN200_All_2014_ABS_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:720 02 10 01 00 00 00 00 00          $~          728 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:720 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:720 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:720 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/BJ560DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:720 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:720 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:720 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:720 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:720 03 22 F1 92 00 00 00 00          $%
	$%	REQ003:720 03 22 F1 94 00 00 00 00          $%
	$%	REQ004:720 03 22 F1 CB 00 00 00 00          $%

  $%  000:ECU生产日期           $%    $%  ANS000.BYTE003  $%  06个字节的ASCII显示
  $%  001:VIN                   $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:供应商ECU硬件号       $%    $%  ANS002.BYTE003  $%  05个字节的HEX显示
  $%  003:供应商ECU软件号       $%    $%  ANS003.BYTE003  $%  03个字节的HEX显示
  $%  004:零件号                $%    $%  ANS004.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

 $ 00.速度数据

	$	REQ000:720 03 22 2D 00 00 00 00 00          $
	$	REQ001:720 03 22 2D 05 00 00 00 00          $

  $  000.车速信息                   $    $  km/h      $    $  ANS000.BYTE003  $  XY*0.05625
  $  001.左前轮速                   $    $  km/h      $    $  ANS000.BYTE005  $  XY*0.05625
  $  002.右前轮速                   $    $  km/h      $    $  ANS000.BYTE007  $  XY*0.05625
  $  003.左后轮速                   $    $  km/h      $    $  ANS000.BYTE009  $  XY*0.05625
  $  004.右后轮速                   $    $  km/h      $    $  ANS000.BYTE011  $  XY*0.05625+1
  $  005.主缸压力                   $    $  bar       $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.0153+0		[8000-FFFF]:(XY-65535)*0.0153+0
  $  006.方向盘转角                 $    $  °        $    $  ANS001.BYTE005  $  [0000-7FFF]:XY*0.1+0		[8000-FFFF]:(XY-65535)*0.1+0
  $  007.偏航率（横摆角速度）       $    $  rad/s     $    $  ANS001.BYTE007  $  [0000-7FFF]:XY*0.00213+0		[8000-FFFF]:(XY-65535)*0.00213+0
  $  008.侧向加速度                 $    $  m/s2      $    $  ANS001.BYTE009  $  [0000-7FFF]:XY*0.02712+0		[8000-FFFF]:(XY-65535)*0.02712+0
  $  009.纵向加速度                 $    $  m/s2      $    $  ANS001.BYTE011  $  [0000-7FFF]:XY*0.02712+0		[8000-FFFF]:(XY-65535)*0.02712+0

 $ 01.电磁阀数据

	$	REQ000:720 03 22 2D 02 00 00 00 00          $

  $  000.阀继电器状态             $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x1)y=@0041;else y=@0040;
  $  001.泵电机状态               $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x1)y=@0041;else y=@0040;
  $  002.右后出油阀激活状态       $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x80)y=@0039;else y=@0151;
  $  003.右后进油阀激活状态       $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x40)y=@0039;else y=@0151;
  $  004.左后出油阀激活状态       $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x20)y=@0039;else y=@0151;
  $  005.左后进油阀激活状态       $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x10)y=@0039;else y=@0151;
  $  006.右前出油阀激活状态       $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x8)y=@0039;else y=@0151;
  $  007.右前进油阀激活状态       $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x4)y=@0039;else y=@0151;
  $  008.左前出油阀激活状态       $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x2)y=@0039;else y=@0151;
  $  009.左前进油阀激活状态       $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x1)y=@0039;else y=@0151;

 $ 02.防抱死系统数据

	$	REQ000:720 03 22 2D 01 00 00 00 00          $

  $  000.电池电压         $    $  V     $    $  ANS000.BYTE003  $  X*0.08
  $  001.制动灯开关       $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x1)y=@0120;else y=@0119;


