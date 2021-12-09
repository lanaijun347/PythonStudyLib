$~#6$~#14$~500$~728
;******************************************************************************************************************************************************

车型代号:CN201S
车型:宝骏560
排量:1.5L/1.8L
年份:2016
模块名缩写:ABS/ESP
模块名:防抱死系统
供应商:BOSCH
诊断代码:CN202SSA_1.5T_2016_ABS_CAN

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

		$*$*DTC/ALLDTCCODE


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
	$%	REQ005:720 03 22 F1 95 00 00 00 00          $%

  $%  000:ECUManufacturingDate                       $%    $%  ANS000.BYTE003  $%  06个字节的ASCII显示
  $%  001:VIN                                        $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:Supplier ECU Hardware Number               $%    $%  ANS002.BYTE003  $%  05个字节的HEX显示
  $%  003:Supplier ECU Software Number               $%    $%  ANS003.BYTE003  $%  03个字节的HEX显示
  $%  004:EndModelPartNumber (SGMW P/N)              $%    $%  ANS004.BYTE003  $%  X1X2X3X4
  $%  005:Supplier ECU Software Version Number       $%    $%  ANS005.BYTE003  $%  04个字节的HEX显示

;******************************************************************************************************************************************************
数据流

   00.DATA

	$	REQ000:720 03 22 2D 00 00 00 00 00          $
	$	REQ001:720 03 22 2D 05 00 00 00 00          $
	$	REQ002:720 03 22 2D 01 00 00 00 00          $

  $  000.Vehicle speed                   $    $  km/h      $    $  ANS000.BYTE003  $  XY*0.05625
  $  001.Wheel speed FL                  $    $  km/h      $    $  ANS000.BYTE005  $  XY*0.05625
  $  002.Wheel speed FR                  $    $  km/h      $    $  ANS000.BYTE007  $  XY*0.05625
  $  003.Wheel speed RL                  $    $  km/h      $    $  ANS000.BYTE009  $  XY*0.05625
  $  004.Wheel speed RR                  $    $  km/h      $    $  ANS000.BYTE011  $  XY*0.05625
  $  005.Master Cyclinder Pressure       $    $  bar       $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.0153+0		[8000-FFFF]:(XY-65535)*0.0153+0
  $  006.Steering Angle                  $    $  °        $    $  ANS001.BYTE005  $  [0000-7FFF]:XY*0.1+0		[8000-FFFF]:(XY-65535)*0.1+0
  $  007.Yaw Rate                        $    $  rad/s     $    $  ANS001.BYTE007  $  [0000-7FFF]:XY*0.00213+0		[8000-FFFF]:(XY-65535)*0.00213+0
  $  008.Lateral Acceleration            $    $  m/s2      $    $  ANS001.BYTE009  $  [0000-7FFF]:XY*0.02712+0		[8000-FFFF]:(XY-65535)*0.02712+0
  $  009.Longitudinal Acceleration       $    $  m/s2      $    $  ANS001.BYTE011  $  [0000-7FFF]:XY*0.02712+0		[8000-FFFF]:(XY-65535)*0.02712+0
  $  010.Battery Voltage                 $    $  V         $    $  ANS002.BYTE003  $  X*0.08


