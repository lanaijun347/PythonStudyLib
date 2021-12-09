$~#6$~#14$~500$~7E9
;******************************************************************************************************************************************************

车型代号:CN200S
车型:宝骏560
排量:1.8L
年份:2015
模块名缩写:TCM
模块名:变速器控制系统
供应商:爱信
诊断代码:CN200S_1.8L_2015_TCM_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:7E1 02 10 01 00 00 00 00 00          $~          7E9 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:7E1 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:7E1 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:7E1 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/BJ530DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:7E1 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:7E1 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:7E1 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:7E1 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:7E1 03 22 F1 CB 00 00 00 00          $%

  $%  000:ECUManufacturingDate                $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN                                 $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:EndModelPartNumber (SGMW P/N)       $%    $%  ANS002.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

 $ 00.Voltage signal

	$	REQ000:7E1 03 22 12 03 00 00 00 00          $
	$	REQ001:7E1 03 22 12 08 00 00 00 00          $
	$	REQ002:7E1 03 22 12 09 00 00 00 00          $
	$	REQ003:7E1 03 22 12 0A 00 00 00 00          $
	$	REQ004:7E1 03 22 12 0B 00 00 00 00          $
	$	REQ005:7E1 03 22 12 0C 00 00 00 00          $
	$	REQ006:7E1 03 22 12 0D 00 00 00 00          $
	$	REQ007:7E1 03 22 12 0E 00 00 00 00          $
	$	REQ008:7E1 03 22 12 0F 00 00 00 00          $
	$	REQ009:7E1 03 22 12 10 00 00 00 00          $
	$	REQ010:7E1 03 22 12 11 00 00 00 00          $
	$	REQ011:7E1 03 22 12 12 00 00 00 00          $
	$	REQ012:7E1 03 22 12 13 00 00 00 00          $
	$	REQ013:7E1 03 22 12 14 00 00 00 00          $
	$	REQ014:7E1 03 22 12 16 00 00 00 00          $
	$	REQ015:7E1 03 22 12 17 00 00 00 00          $
	$	REQ016:7E1 03 22 12 18 00 00 00 00          $

  $  000.Control module voltage                    $    $  V     $    $  ANS000.BYTE003  $  XY*0.001
  $  001.Clutch stroke sensor1 voltage             $    $  V     $    $  ANS001.BYTE003  $  XY*0.0048875855327468
  $  002.Clutch stroke sensor2 voltage             $    $  V     $    $  ANS002.BYTE003  $  XY*0.0048875855327468
  $  003.Select stroke sensor1 voltage             $    $  V     $    $  ANS003.BYTE003  $  XY*0.0048875855327468
  $  004.Select stroke sensor2 voltage             $    $  V     $    $  ANS004.BYTE003  $  XY*0.0048875855327468
  $  005.Shift stroke sensor1 voltage              $    $  V     $    $  ANS005.BYTE003  $  XY*0.0048875855327468
  $  006.Shift stroke sensor2 voltages             $    $  V     $    $  ANS006.BYTE003  $  XY*0.0048875855327468
  $  007.Clutch motor plus terminal voltage        $    $  V     $    $  ANS007.BYTE003  $  XY*0.0048875855327468
  $  008.Clutch motor minus terminal voltage       $    $  V     $    $  ANS008.BYTE003  $  XY*0.0048875855327468
  $  009.Select motor plus terminal voltage        $    $  V     $    $  ANS009.BYTE003  $  XY*0.0048875855327468
  $  010.Select motor minus terminal voltage       $    $  V     $    $  ANS010.BYTE003  $  XY*0.0048875855327468
  $  011.Shift motor plus terminal voltage         $    $  V     $    $  ANS011.BYTE003  $  XY*0.0048875855327468
  $  012.Shift motor minus terminal voltage        $    $  V     $    $  ANS012.BYTE003  $  XY*0.0048875855327468
  $  013.Motor circuit voltage                     $    $  V     $    $  ANS013.BYTE003  $  XY*0.021017
  $  014.Clutch motor monitor current              $    $  A     $    $  ANS014.BYTE003  $  X*0.5-64
  $  015.Select motor monitor current              $    $  A     $    $  ANS015.BYTE003  $  X*0.5-64
  $  016.Shift motor monitor current               $    $  A     $    $  ANS016.BYTE003  $  X*0.5-64

 $ 01.Itinerary information

	$	REQ000:7E1 03 22 12 1F 00 00 00 00          $
	$	REQ001:7E1 03 22 12 20 00 00 00 00          $
	$	REQ002:7E1 03 22 12 21 00 00 00 00          $

  $  000.Clutch stroke       $    $  mm     $    $  ANS000.BYTE003  $  XY*0.00390625
  $  001.Select stroke       $    $  mm     $    $  ANS001.BYTE003  $  XY*0.00390625
  $  002.Shift stroke        $    $  mm     $    $  ANS002.BYTE003  $  XY*0.00390625

 $ 02.Oil temperature information

	$	REQ000:7E1 03 22 12 01 00 00 00 00          $
	$	REQ001:7E1 03 22 12 15 00 00 00 00          $
	$	REQ002:7E1 03 22 12 23 00 00 00 00          $

  $  000.Distance traveled while MIL is activated       $    $  km      $    $  ANS000.BYTE003  $  XY
  $  001.Engine speed                                   $    $  rpm     $    $  ANS001.BYTE003  $  X*32
  $  002.Transmission oil estimated value               $    $  ℃      $    $  ANS002.BYTE003  $  X*1-128

 $ 03.Switch information

	$	REQ000:7E1 03 22 12 22 00 00 00 00          $
	$	REQ001:7E1 03 22 12 24 00 00 00 00          $
	$	REQ002:7E1 03 22 12 04 00 00 00 00          $
	$	REQ003:7E1 03 22 12 05 00 00 00 00          $

  $  000.Shift lever position                   $    $  -     $    $  ANS000.BYTE003  $  00:R		01:N		02:D		03:M(+)		04:M(-)		其他:-
  $  001.Current gear position                  $    $  -     $    $  ANS001.BYTE003  $  00:unknown		01:1st		02:2nd		03:3rd		04:4th		05:5th		FE:N		FF:R		其他:-
  $  002.Shift lever switch LSW+                $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  003.Shift lever switch LSWR                $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x40)y=@0009;else y=@0008;
  $  004.Shift lever switch LSWS                $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x20)y=@0009;else y=@0008;
  $  005.Shift lever switch LSWN                $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;
  $  006.Shift lever switch LSW-                $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x8)y=@0009;else y=@0008;
  $  007.Shift lever switch LSRC                $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  008.Shift lever switch LSSC                $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  009.Shift lever switch LSNC                $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  010.Ignition switch                        $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  011.Starter switch                         $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x40)y=@0009;else y=@0008;
  $  012.brake switch STP                       $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x20)y=@0009;else y=@0008;
  $  013.brake switch ST1-                      $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;
  $  014.parking brake switch                   $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x8)y=@0009;else y=@0008;
  $  015.Driver Door Ajar Switch                $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  016.Eco/Sports mode selection switch       $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;

 $ 04.Self-learning value

	$	REQ000:7E1 03 22 12 26 00 00 00 00          $

  $  000.AMT initial learning finished              $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0011;else y=@0010;
  $  001.There may be stuck gear                    $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x40)y=@0011;else y=@0010;
  $  002.Clutch dynamic learning finished           $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0011;else y=@0010;
  $  003.Clutch dynamic learning failed             $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x10)y=@0011;else y=@0010;
  $  004.Transmission static learning success       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x8)y=@0011;else y=@0010;
  $  005.Transmission static learning failed        $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x4)y=@0011;else y=@0010;
  $  006.Clutch static learning finished            $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x2)y=@0011;else y=@0010;
  $  007.Clutch static learning failed              $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x1)y=@0011;else y=@0010;


