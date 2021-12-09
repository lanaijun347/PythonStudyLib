$~#6$~#14$~500$~768
;******************************************************************************************************************************************************

车型代号:CN210MR
车型:CN210MR
排量:1.5
年份:2017
模块名缩写:IPC
模块名:仪表控制模块
供应商:博世
诊断代码:CN210MR_1.5T_2016_IPC_CAN_BS

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

		$*$*DTC/CORTEZDTCS


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
	$%	REQ004:760 03 22 F1 92 00 00 00 00          $%
	$%	REQ005:760 03 22 F1 94 00 00 00 00          $%

  $%  000:ECUManufacturingDate                       $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VehicleIdentificationNumber                $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:Supplier ECU Hardware Version Number       $%    $%  ANS002.BYTE003  $%  01个字节的HEX显示
  $%  003:Supplier ECU Software Version Number       $%    $%  ANS003.BYTE003  $%  02个字节的HEX显示
  $%  004:SupplierECUHardwareNumber                  $%    $%  ANS004.BYTE003  $%  04个字节的HEX显示
  $%  005:SupplierECUSoftwareNumber                  $%    $%  ANS005.BYTE003  $%  04个字节的HEX显示

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

  $  000.Gear Position                                                      $    $  -     $    $  ANS000.BYTE006  $  00:Neutral		01:1stgear		02:2ndgear		03:3rdgear		04:4thgear		05:5gear		06:Pgear		07:Ngear		08:Rgear		09:Dgear		其他:-
  $  001.Indicator Outputs                                                  $    $  -     $    $  ANS001.BYTE007  $  00:off		01:on		02:Twinkle		其他:-
  $  002.Position light not shut off voice warning                          $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x8)y=@0009;else y=@0008;
  $  003.Driver seat belt not tie voice warning                             $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  004.co-driver seat belt not tie voice warning                          $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  005.Voice remind when driver side door open but key not pull out       $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  006.Driver seat belt not tie Indicator Light                           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  007.co-driver seat belt not tie Indicator Light                        $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x40)y=@0009;else y=@0008;
  $  008.High Beam indicator                                                $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x20)y=@0009;else y=@0008;
  $  009.Left turn indicator                                                $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;
  $  010.Right turn indicator                                               $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x8)y=@0009;else y=@0008;
  $  011.Front fog indicator                                                $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  012.Rear fog indicator                                                 $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  013.Position light                                                     $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  014.Fuel too low indication Light                                      $    $  -     $    $  ANS001.BYTE004  $  if(X1&0x80)y=@0009;else y=@0008;
  $  015.Door ajar indicator light                                          $    $  -     $    $  ANS001.BYTE004  $  if(X1&0x40)y=@0009;else y=@0008;
  $  016.Water temperature too high indication light                        $    $  -     $    $  ANS001.BYTE004  $  if(X1&0x20)y=@0009;else y=@0008;
  $  017.Maintain remind Indicator Light                                    $    $  -     $    $  ANS001.BYTE004  $  if(X1&0x4)y=@0009;else y=@0008;
  $  018.IMMO  Light                                                        $    $  -     $    $  ANS001.BYTE004  $  if(X1&0x2)y=@0009;else y=@0008;
  $  019.ABS/ESPfault indicator light                                       $    $  -     $    $  ANS001.BYTE004  $  if(X1&0x1)y=@0009;else y=@0008;
  $  020.SRS  fault Indicator Light                                         $    $  -     $    $  ANS001.BYTE005  $  if(X1&0x80)y=@0009;else y=@0008;
  $  021.ESC warning lamps                                                  $    $  -     $    $  ANS001.BYTE005  $  if(X1&0x40)y=@0009;else y=@0008;
  $  022.ESC Switch Indicator                                               $    $  -     $    $  ANS001.BYTE005  $  if(X1&0x20)y=@0009;else y=@0008;
  $  023.EPS indicator                                                      $    $  -     $    $  ANS001.BYTE005  $  if(X1&0x10)y=@0009;else y=@0008;
  $  024.Gear mode                                                          $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0013;else y=@0012;
  $  025.EBD indicator                                                      $    $  -     $    $  ANS001.BYTE005  $  if(X1&0x8)y=@0009;else y=@0008;
  $  026.Gearbox warning indicator                                          $    $  -     $    $  ANS001.BYTE005  $  if(X1&0x4)y=@0009;else y=@0008;
  $  027.TPMS indicator                                                     $    $  -     $    $  ANS001.BYTE005  $  if(X1&0x2)y=@0009;else y=@0008;
  $  028.front right door                                                   $    $  -     $    $  ANS001.BYTE006  $  if(X1&0x80)y=@0009;else y=@0008;
  $  029.front left door                                                    $    $  -     $    $  ANS001.BYTE006  $  if(X1&0x40)y=@0009;else y=@0008;
  $  030.rear left door                                                     $    $  -     $    $  ANS001.BYTE006  $  if(X1&0x20)y=@0009;else y=@0008;
  $  031.rear right door                                                    $    $  -     $    $  ANS001.BYTE006  $  if(X1&0x10)y=@0009;else y=@0008;
  $  032.Tail-gate                                                          $    $  -     $    $  ANS001.BYTE006  $  if(X1&0x8)y=@0009;else y=@0008;


