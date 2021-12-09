$~#6$~#14$~500$~768
;******************************************************************************************************************************************************

车型代号:CN201S
车型:宝骏560
排量:1.5T
年份:2016
模块名缩写:IPC
模块名:仪表控制模块
供应商:天有为
诊断代码:CN201S_1.5T_2016_IPC_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:760 02 10 01 00 00 00 00 00          $~          768 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:760 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:760 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:760 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/ALLDTCCODE


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:760 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:760 02 11 03 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:760 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:760 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:760 03 22 F1 93 00 00 00 00          $%
	$%	REQ003:760 03 22 F1 95 00 00 00 00          $%
	$%	REQ004:760 03 22 F1 CB 00 00 00 00          $%

  $%  000:ECUManufacturingDate                       $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN                                        $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:Supplier ECU Hardware Version Number       $%    $%  ANS002.BYTE003  $%  02个字节的HEX显示
  $%  003:Supplier ECU Software Version Number       $%    $%  ANS003.BYTE003  $%  02个字节的HEX显示
  $%  004:EndModelPartNumber (SGMW P/N)              $%    $%  ANS004.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

 $ 00.Analog display instrument

	$	REQ000:760 03 22 60 12 00 00 00 00          $
	$	REQ001:760 03 22 60 20 00 00 00 00          $
	$	REQ002:760 03 22 60 21 00 00 00 00          $
	$	REQ003:760 03 22 60 22 00 00 00 00          $
	$	REQ004:760 03 22 60 23 00 00 00 00          $
	$	REQ005:760 03 22 60 24 00 00 00 00          $

  $  000.battery voltage                       $    $  V        $    $  ANS000.BYTE003  $  X*0.1+5
  $  001.Engine Temperature Gauge Output       $    $  ℃       $    $  ANS001.BYTE003  $  X*1-40
  $  002.Fuel Gauge Output                     $    $  %        $    $  ANS002.BYTE003  $  X*0.392156862745098
  $  003.Speedometer Output                    $    $  Km/h     $    $  ANS003.BYTE003  $  XY*0.015625
  $  004.Tachometer Output                     $    $  rpm      $    $  ANS004.BYTE003  $  XY*0.25
  $  005.Odometer Output                       $    $  Km       $    $  ANS005.BYTE003  $  X1X2X3X4*0.015625

 $ 01.Instrument state display

	$	REQ000:760 03 22 60 41 00 00 00 00          $
	$	REQ001:760 03 22 60 40 00 00 00 00          $
	$	REQ002:760 03 22 60 01 00 00 00 00          $

  $  000.Power system output indicates                                      $    $  gear     $    $  ANS000.BYTE006  $  00:Neutral		01:1stgear		02:2ndgear		03:3rdgear		04:4thgear		05:5gear		06:Pgear		07:Ngear		08:Rgear		09:Dgear		其他:-
  $  001.Indicator Outputs                                                  $    $  -        $    $  ANS001.BYTE007  $  00:off		01:on		02:Twinkle		其他:-
  $  002.Position light not shut off voice warning                          $    $  -        $    $  ANS002.BYTE003  $  if(X1&0x8)y=@0009;else y=@0008;
  $  003.Driver seat belt not tie voice warning                             $    $  -        $    $  ANS002.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  004.co-driver seat belt not tie voice warning                          $    $  -        $    $  ANS002.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  005.Voice remind when driver side door open but key not pull out       $    $  -        $    $  ANS002.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  006.Driver seat belt not tie Indicator Light                           $    $  -        $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  007.co-driver seat belt not tie Indicator Light                        $    $  -        $    $  ANS001.BYTE003  $  if(X1&0x40)y=@0009;else y=@0008;
  $  008.High Beam indicator                                                $    $  -        $    $  ANS001.BYTE003  $  if(X1&0x20)y=@0009;else y=@0008;
  $  009.Left turn indicator                                                $    $  -        $    $  ANS001.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;
  $  010.Right turn indicator                                               $    $  -        $    $  ANS001.BYTE003  $  if(X1&0x8)y=@0009;else y=@0008;
  $  011.Front fog indicator                                                $    $  -        $    $  ANS001.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  012.Rear fog indicator                                                 $    $  -        $    $  ANS001.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  013.Position light                                                     $    $  -        $    $  ANS001.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  014.Fuel too low indication Light                                      $    $  -        $    $  ANS001.BYTE004  $  if(X1&0x80)y=@0009;else y=@0008;
  $  015.Door ajar indicator light                                          $    $  -        $    $  ANS001.BYTE004  $  if(X1&0x40)y=@0009;else y=@0008;
  $  016.Water temperature too high indication light                        $    $  -        $    $  ANS001.BYTE004  $  if(X1&0x20)y=@0009;else y=@0008;
  $  017.IMMO  Light                                                        $    $  -        $    $  ANS001.BYTE004  $  if(X1&0x2)y=@0009;else y=@0008;
  $  018.ABS/ESPfault indicator light                                       $    $  -        $    $  ANS001.BYTE004  $  if(X1&0x1)y=@0009;else y=@0008;
  $  019.SRS  fault Indicator Light                                         $    $  -        $    $  ANS001.BYTE005  $  if(X1&0x80)y=@0009;else y=@0008;
  $  020.ESC warning lamps                                                  $    $  -        $    $  ANS001.BYTE005  $  if(X1&0x40)y=@0009;else y=@0008;
  $  021.ESC Switch Indicator                                               $    $  -        $    $  ANS001.BYTE005  $  if(X1&0x20)y=@0009;else y=@0008;
  $  022.EPS indicator                                                      $    $  -        $    $  ANS001.BYTE005  $  if(X1&0x10)y=@0009;else y=@0008;
  $  023.Gear mode                                                          $    $  -        $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0013;else y=@0012;
  $  024.EBD indicator                                                      $    $  -        $    $  ANS001.BYTE005  $  if(X1&0x8)y=@0009;else y=@0008;
  $  025.Gearbox warning indicator                                          $    $  -        $    $  ANS001.BYTE005  $  if(X1&0x4)y=@0009;else y=@0008;
  $  026.TPMS indicator                                                     $    $  -        $    $  ANS001.BYTE005  $  if(X1&0x2)y=@0009;else y=@0008;
  $  027.front right door                                                   $    $  -        $    $  ANS001.BYTE006  $  if(X1&0x80)y=@0009;else y=@0008;
  $  028.front left door                                                    $    $  -        $    $  ANS001.BYTE006  $  if(X1&0x40)y=@0009;else y=@0008;
  $  029.rear left door                                                     $    $  -        $    $  ANS001.BYTE006  $  if(X1&0x20)y=@0009;else y=@0008;
  $  030.rear right door                                                    $    $  -        $    $  ANS001.BYTE006  $  if(X1&0x10)y=@0009;else y=@0008;
  $  031.Tail-gate                                                          $    $  -        $    $  ANS001.BYTE006  $  if(X1&0x8)y=@0009;else y=@0008;


