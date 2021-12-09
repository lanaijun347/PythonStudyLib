$~#6$~#14$~500$~728
;******************************************************************************************************************************************************

车型代号:CN180S-MCE
车型:宝骏560
排量:1.5L/1.8L
年份:2019
模块名缩写:ABS/ESP
模块名:防抱死系统
供应商:大陆
诊断代码:CN180S MCE_2019_ABS_CAN

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

		$*$*DTC/RS-3DTCS


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
	$%	REQ003:720 03 22 F1 95 00 00 00 00          $%
	$%	REQ004:720 03 22 F1 CB 00 00 00 00          $%

  $%  000:ECU生产日期           $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN                   $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:供应商ECU硬件号       $%    $%  ANS002.BYTE003  $%  14个字节的ASCII显示
  $%  003:供应商ECU软件号       $%    $%  ANS003.BYTE003  $%  11个字节的ASCII显示
  $%  004:零件号                $%    $%  ANS004.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

   00.数据流

	$	REQ000:720 03 22 2D 00 00 00 00 00          $
	$	REQ001:720 03 22 2D 01 00 00 00 00          $
	$	REQ002:720 03 22 2D 06 00 00 00 00          $
	$	REQ003:720 03 22 2D 07 00 00 00 00          $
	$	REQ004:720 03 22 2D 09 00 00 00 00          $
	$	REQ005:720 03 22 2D 0A 00 00 00 00          $
	$	REQ006:720 03 22 2D 0B 00 00 00 00          $
	$	REQ007:720 03 22 F0 12 00 00 00 00          $
	$	REQ008:720 03 22 F0 14 00 00 00 00          $
	$	REQ009:720 03 22 2D 04 00 00 00 00          $

  $  000.车速信息                   $    $  km/h      $    $  ANS000.BYTE003  $  X*0.1
  $  001.左前轮速                   $    $  km/h      $    $  ANS000.BYTE004  $  X*0.1
  $  002.右前轮速                   $    $  km/h      $    $  ANS000.BYTE006  $  X*0.1
  $  003.左后轮速                   $    $  km/h      $    $  ANS000.BYTE008  $  X*0.1
  $  004.右后轮速                   $    $  km/h      $    $  ANS000.BYTE010  $  X*0.1
  $  005.电池电压                   $    $  V         $    $  ANS001.BYTE003  $  X*0.1
  $  006.侧向加速度                 $    $  g         $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.001+0		[8000-FFFF]:(XY-65535)*0.001+0
  $  007.纵向加速度                 $    $  g         $    $  ANS002.BYTE005  $  [0000-7FFF]:XY*0.01+0		[8000-FFFF]:(XY-65535)*0.01+0
  $  008.偏航率（横摆角速度）       $    $  deg/s     $    $  ANS002.BYTE007  $  [0000-7FFF]:XY*0.00286+0		[8000-FFFF]:(XY-65535)*0.00286+0
  $  009.油压                       $    $  bar       $    $  ANS003.BYTE003  $  [0000-7FFF]:XY*0.01+0		[8000-FFFF]:(XY-65535)*0.01+0
  $  010.左后制动卡钳温度           $    $  ℃        $    $  ANS004.BYTE003  $  [00-7F]:X*1-40		[80-FF]:(X-255)*1-40
  $  011.右后制动卡钳温度           $    $  ℃        $    $  ANS004.BYTE005  $  [00-7F]:X*1-40		[80-FF]:(X-255)*1-40
  $  012.左驻车制动器计数器         $    $  time      $    $  ANS005.BYTE003  $  X1X2X3X4
  $  013.右驻车制动器计数器         $    $  time      $    $  ANS005.BYTE007  $  X1X2X3X4
  $  014.左驻车制动钳力             $    $  -         $    $  ANS006.BYTE003  $  XY
  $  015.右驻车制动钳力             $    $  -         $    $  ANS006.BYTE005  $  XY
  $  016.发动机转速                 $    $  rpm       $    $  ANS007.BYTE003  $  XY*0.25
  $  017.里程                       $    $  km        $    $  ANS008.BYTE003  $  X1X2X3X4*0.015625
  $  018.泵状态                     $    $  -         $    $  ANS009.BYTE003  $  00:关		01:开		其他:-


