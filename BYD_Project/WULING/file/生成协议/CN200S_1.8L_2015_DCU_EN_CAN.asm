$~#6$~#14$~500$~739
;******************************************************************************************************************************************************

车型代号:CN200S
车型:宝骏560
排量:1.8L
年份:2015
模块名缩写:DCU
模块名:安全气囊模块
供应商:奥托立夫
诊断代码:CN200S_1.8L_2015_DCU_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:731 02 10 01 00 00 00 00 00          $~          739 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:731 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:731 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:731 03 19 02 28 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/BJ530DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:731 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:731 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:731 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:731 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:731 03 22 F1 CB 00 00 00 00          $%
	$%	REQ003:731 03 22 F1 93 00 00 00 00          $%
	$%	REQ004:731 03 22 F1 95 00 00 00 00          $%
	$%	REQ005:731 03 22 F1 92 00 00 00 00          $%
	$%	REQ006:731 03 22 F1 94 00 00 00 00          $%

  $%  000:ECUManufacturingDate                       $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN                                        $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:PartNumber                                 $%    $%  ANS002.BYTE003  $%  X1X2X3X4
  $%  003:Supplier ECU Hardware Version Number       $%    $%  ANS003.BYTE003  $%  03个字节的ASCII显示
  $%  004:Supplier ECU Software Version Number       $%    $%  ANS004.BYTE003  $%  03个字节的ASCII显示
  $%  005:Supplier ECU Hardware Number               $%    $%  ANS005.BYTE003  $%  09个字节的ASCII显示
  $%  006:Supplier ECU Software Number               $%    $%  ANS006.BYTE003  $%  09个字节的ASCII显示

;******************************************************************************************************************************************************
数据流

 $ 00.Speed information

	$	REQ000:731 03 22 2D 00 00 00 00 00          $
	$	REQ001:731 03 22 2D 01 00 00 00 00          $
	$	REQ002:731 03 22 2D 05 00 00 00 00          $

  $  000.SpeedInformation                $    $  km/h      $    $  ANS000.BYTE003  $  XY*0.05625
  $  001.Wheel speed FL                  $    $  km/h      $    $  ANS000.BYTE005  $  XY*0.05625
  $  002.Wheel speed FR                  $    $  km/h      $    $  ANS000.BYTE007  $  XY*0.05625
  $  003.Wheel speed RL                  $    $  km/h      $    $  ANS000.BYTE009  $  XY*0.05625
  $  004.Wheel speed RR                  $    $  km/h      $    $  ANS000.BYTE011  $  XY*0.05625
  $  005.Battery Voltage                 $    $  V         $    $  ANS001.BYTE003  $  X*0.08
  $  006.Master Cyclinder Pressure       $    $  bar       $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.0153+0		[8000-FFFF]:(XY-65535)*0.0153+0
  $  007.Steering Angle                  $    $  deg       $    $  ANS002.BYTE005  $  [0000-7FFF]:XY*0.1+0		[8000-FFFF]:(XY-65535)*0.1+0
  $  008.Yaw Rate                        $    $  rad/s     $    $  ANS002.BYTE007  $  [0000-7FFF]:XY*0.00213+0		[8000-FFFF]:(XY-65535)*0.00213+0
  $  009.Lateral Acceleration            $    $  m/s²       $    $  ANS002.BYTE009  $  [0000-7FFF]:XY*0.02712+0		[8000-FFFF]:(XY-65535)*0.02712+0
  $  010.Longitudinal Acceleration       $    $  m/s²       $    $  ANS002.BYTE011  $  [0000-7FFF]:XY*0.02712+0		[8000-FFFF]:(XY-65535)*0.02712+0

 $ 01.Valve information

	$	REQ000:731 03 22 2D 01 00 00 00 00          $
	$	REQ001:731 03 22 2D 02 00 00 00 00          $

  $  000.Brake Light Switch             $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x1)y=@0009;else y=@0008;
  $  001.ESP Switch                     $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x1)y=@0009;else y=@0008;
  $  002.Valve Relay Status             $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  003.Pump Motor Status              $    $  -     $    $  ANS001.BYTE004  $  if(X1&0x1)y=@0009;else y=@0008;
  $  004.Outlet Valve Rear Right        $    $  -     $    $  ANS001.BYTE005  $  if(X1&0x80)y=@0015;else y=@0014;
  $  005.Inlet Valve Rear Right         $    $  -     $    $  ANS001.BYTE005  $  if(X1&0x40)y=@0015;else y=@0014;
  $  006.Outlet Valve Rear Left         $    $  -     $    $  ANS001.BYTE005  $  if(X1&0x20)y=@0015;else y=@0014;
  $  007.Inlet Valve Rear Left          $    $  -     $    $  ANS001.BYTE005  $  if(X1&0x10)y=@0015;else y=@0014;
  $  008.Outlet Valve Front Right       $    $  -     $    $  ANS001.BYTE005  $  if(X1&0x8)y=@0015;else y=@0014;
  $  009.Inlet Valve Front Rear         $    $  -     $    $  ANS001.BYTE005  $  if(X1&0x4)y=@0015;else y=@0014;
  $  010.Outlet Valve Front Left        $    $  -     $    $  ANS001.BYTE005  $  if(X1&0x2)y=@0015;else y=@0014;
  $  011.Inlet Valve Front Left         $    $  -     $    $  ANS001.BYTE005  $  if(X1&0x1)y=@0015;else y=@0014;
  $  012.Valve HSV2 (ESP Only)          $    $  -     $    $  ANS001.BYTE006  $  if(X1&0x8)y=@0015;else y=@0014;
  $  013.Valve HSV1 (ESP Only)          $    $  -     $    $  ANS001.BYTE006  $  if(X1&0x4)y=@0015;else y=@0014;
  $  014.Valve USV2 (ESP Only)          $    $  -     $    $  ANS001.BYTE006  $  if(X1&0x2)y=@0015;else y=@0014;
  $  015.Valve USV1 (ESP Only)          $    $  -     $    $  ANS001.BYTE006  $  if(X1&0x1)y=@0015;else y=@0014;

 $ 02.Explosion resistance information

	$	REQ000:731 03 22 50 12 00 00 00 00          $
	$	REQ001:731 03 22 50 31 00 00 00 00          $
	$	REQ002:731 03 22 50 32 00 00 00 00          $
	$	REQ003:731 03 22 50 33 00 00 00 00          $
	$	REQ004:731 03 22 50 34 00 00 00 00          $
	$	REQ005:731 03 22 50 35 00 00 00 00          $
	$	REQ006:731 03 22 50 36 00 00 00 00          $
	$	REQ007:731 03 22 50 37 00 00 00 00          $

  $  000.Capacitor Voltage                                 $    $  V        $    $  ANS000.BYTE003  $  X*0.14
  $  001.Front Airbag Driver value                         $    $  OHMS     $    $  ANS001.BYTE003  $  X*0.1
  $  002.Front Airbag Passenger value                      $    $  OHMS     $    $  ANS002.BYTE003  $  X*0.1
  $  003.Belt Retractor Pretensioner Driver value          $    $  OHMS     $    $  ANS003.BYTE003  $  X*0.1
  $  004.Belt Retractor Pretensioner Passenger value       $    $  OHMS     $    $  ANS004.BYTE003  $  X*0.1
  $  005.Front Side Airbag Driver value                    $    $  OHMS     $    $  ANS005.BYTE003  $  X*0.1
  $  006.Front Side Airbag Passenger value                 $    $  OHMS     $    $  ANS006.BYTE003  $  X*0.1
  $  007.Rear Row Left seatbelt Pretensioner value         $    $  OHMS     $    $  ANS007.BYTE003  $  X*0.1

 $ 03.Seat belts information

	$	REQ000:731 03 22 50 51 00 00 00 00          $

  $  000.Passenger Presence Detection status       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x4)y=@0006;else y=@0016;
  $  001.The driver seat belts                     $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x2)y=@0003;else y=@0004;
  $  002.The passenger seat belts                  $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x1)y=@0003;else y=@0004;


