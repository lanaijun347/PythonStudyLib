$~#6$~#14$~500$~768
;******************************************************************************************************************************************************

车型代号:CN202SR
车型:ALMAZ
排量:N15T
年份:2019
模块名缩写:IC
模块名:仪表控制模块
供应商:博世
诊断代码:CN202SR_2019_IPC_BS_CAN

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

		$*$*DTC/CAPTIVADTCS


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
	$%	REQ002:760 03 22 F1 92 00 00 00 00          $%
	$%	REQ003:760 03 22 F1 93 00 00 00 00          $%
	$%	REQ004:760 03 22 F1 94 00 00 00 00          $%
	$%	REQ005:760 03 22 F1 95 00 00 00 00          $%
	$%	REQ006:760 03 22 F1 CB 00 00 00 00          $%

  $%  000:ECUManufacturingDate                       $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN                                        $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:SupplierECUHardwareNumber                  $%    $%  ANS002.BYTE003  $%  04个字节的HEX显示
  $%  003:Supplier ECU Hardware Version Number       $%    $%  ANS003.BYTE003  $%  01个字节的HEX显示
  $%  004:Supplier ECU Software Number               $%    $%  ANS004.BYTE003  $%  04个字节的HEX显示
  $%  005:Supplier ECU Software Version Number       $%    $%  ANS005.BYTE003  $%  02个字节的HEX显示
  $%  006:SGMW P/N                                   $%    $%  ANS006.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

   00.Data flow

	$	REQ000:760 03 22 60 12 00 00 00 00          $
	$	REQ001:760 03 22 60 20 00 00 00 00          $
	$	REQ002:760 03 22 60 21 00 00 00 00          $
	$	REQ003:760 03 22 60 22 00 00 00 00          $
	$	REQ004:760 03 22 60 23 00 00 00 00          $
	$	REQ005:760 03 22 60 24 00 00 00 00          $
	$	REQ006:760 03 22 60 25 00 00 00 00          $
	$	REQ007:760 03 22 60 27 00 00 00 00          $
	$	REQ008:760 03 22 60 41 00 00 00 00          $
	$	REQ009:760 03 22 60 40 00 00 00 00          $
	$	REQ010:760 03 22 60 42 00 00 00 00          $
	$	REQ011:760 03 22 60 43 00 00 00 00          $
	$	REQ012:760 03 22 60 44 00 00 00 00          $
	$	REQ013:760 03 22 60 45 00 00 00 00          $
	$	REQ014:760 03 22 60 01 00 00 00 00          $

  $  000.KL30 voltage Analogue Input                                        $    $  V           $    $  ANS000.BYTE003  $  X*0.1+5
  $  001.Engine Temperature Gauge Output                                    $    $  ℃          $    $  ANS001.BYTE003  $  X*1-40
  $  002.Fuel Gauge Output                                                  $    $  %           $    $  ANS002.BYTE003  $  X*0.392156862745098
  $  003.Speedometer Output                                                 $    $  Km/h        $    $  ANS003.BYTE003  $  XY*0.015625
  $  004.Tachometer Output                                                  $    $  rpm         $    $  ANS004.BYTE003  $  XY*0.25
  $  005.Odometer Output                                                    $    $  Km          $    $  ANS005.BYTE003  $  X1X2X3X4*0.015625
  $  006.Trip1 Output                                                       $    $  Km          $    $  ANS006.BYTE003  $  X*0.015257
  $  007.LF tire pressure                                                   $    $  Kpa         $    $  ANS007.BYTE003  $  X*1.38
  $  008.RF tire pressure                                                   $    $  Kpa         $    $  ANS007.BYTE003  $  X*1.38
  $  009.LR tire pressure                                                   $    $  Kpa         $    $  ANS007.BYTE003  $  X*1.38
  $  010.RR tire pressure                                                   $    $  Kpa         $    $  ANS007.BYTE003  $  X*1.38
  $  011.Gear Position                                                      $    $  gear        $    $  ANS008.BYTE004  $  00:Unused		01:1		02:2		03:3		04:4		05:5		06:P		07:N		08:R		09:D		其他:-
  $  012.Gear mode                                                          $    $  -           $    $  ANS008.BYTE008  $  00: Manual mode		01: Automatic mode		其他:-
  $  013.Automatic Mode Control                                             $    $  -           $    $  ANS008.BYTE009  $  00: Unused		01: Sport mode		02: Snow mode		03: Economic mode		其他:-
  $  014.Work status light of cruise control system                         $    $  -           $    $  ANS009.BYTE007  $  00:OFF		01:ON		02: twinkling		03: Reserved		其他:-
  $  015.Instantaneous Fuel Consumption                                     $    $  L/100Km     $    $  ANS010.BYTE003  $  X*0.1
  $  016.Average Fuel Consumption                                           $    $  L/100Km     $    $  ANS011.BYTE003  $  X*0.1
  $  017.Endurance Mileage                                                  $    $  Km          $    $  ANS012.BYTE003  $  XY
  $  018.rise and fall gears Mode                                           $    $  -           $    $  ANS013.BYTE009  $  00: default		01: rise		02: fall		03: Unused		其他:-
  $  019.Door open voice remind                                             $    $  -           $    $  ANS014.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  020.PEPS voice remind                                                  $    $  -           $    $  ANS014.BYTE003  $  if(X1&0x40)y=@0009;else y=@0008;
  $  021.TPMS voice warning                                                 $    $  -           $    $  ANS014.BYTE003  $  if(X1&0x20)y=@0009;else y=@0008;
  $  022.Gearbox failure voice warning                                      $    $  -           $    $  ANS014.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;
  $  023.Position light not shut off voice warning                          $    $  -           $    $  ANS014.BYTE003  $  if(X1&0x8)y=@0009;else y=@0008;
  $  024.Driver seat belt not tie voice warning                             $    $  -           $    $  ANS014.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  025.co-driver seat belt not tie voice warning                          $    $  -           $    $  ANS014.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  026.Voice remind when driver side door open but key not pull out       $    $  -           $    $  ANS014.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  027.Gear mode                                                          $    $  -           $    $  ANS008.BYTE003  $  if(X1&0x20)y=@0272;else y=@0271;
  $  028.Driver seat belt not tie Indicator Light                           $    $  -           $    $  ANS009.BYTE003  $  if(X1&0x80)y=@0274;else y=@0273;
  $  029.co-driver seat belt not tie Indicator Light                        $    $  -           $    $  ANS009.BYTE003  $  if(X1&0x40)y=@0274;else y=@0273;
  $  030.High Beam indicator                                                $    $  -           $    $  ANS009.BYTE003  $  if(X1&0x20)y=@0274;else y=@0273;
  $  031.Left turn indicator                                                $    $  -           $    $  ANS009.BYTE003  $  if(X1&0x10)y=@0274;else y=@0273;
  $  032.Right turn indicator                                               $    $  -           $    $  ANS009.BYTE003  $  if(X1&0x8)y=@0274;else y=@0273;
  $  033.Front fog indicator                                                $    $  -           $    $  ANS009.BYTE003  $  if(X1&0x4)y=@0274;else y=@0273;
  $  034.Rear fog indicator                                                 $    $  -           $    $  ANS009.BYTE003  $  if(X1&0x2)y=@0274;else y=@0273;
  $  035.Position light                                                     $    $  -           $    $  ANS009.BYTE003  $  if(X1&0x1)y=@0274;else y=@0273;
  $  036.Fuel too low indication Light                                      $    $  -           $    $  ANS009.BYTE004  $  if(X1&0x80)y=@0274;else y=@0273;
  $  037.Water temperature too high indication light                        $    $  -           $    $  ANS009.BYTE004  $  if(X1&0x20)y=@0274;else y=@0273;
  $  038.Maintain remind Indicator Light                                    $    $  -           $    $  ANS009.BYTE004  $  if(X1&0x4)y=@0274;else y=@0273;
  $  039.IMMO Light                                                         $    $  -           $    $  ANS009.BYTE004  $  if(X1&0x2)y=@0274;else y=@0273;
  $  040.ABS/ESP fault indicator light                                      $    $  -           $    $  ANS009.BYTE004  $  if(X1&0x1)y=@0274;else y=@0273;
  $  041.SRS fault Indicator Light                                          $    $  -           $    $  ANS009.BYTE005  $  if(X1&0x80)y=@0274;else y=@0273;
  $  042.ESC warning lamps                                                  $    $  -           $    $  ANS009.BYTE005  $  if(X1&0x40)y=@0274;else y=@0273;
  $  043.ESC Switch Indicator                                               $    $  -           $    $  ANS009.BYTE005  $  if(X1&0x20)y=@0274;else y=@0273;
  $  044.EPS indicator                                                      $    $  -           $    $  ANS009.BYTE005  $  if(X1&0x10)y=@0274;else y=@0273;
  $  045.EBD indicator                                                      $    $  -           $    $  ANS009.BYTE005  $  if(X1&0x8)y=@0274;else y=@0273;
  $  046.Gearbox warning indicator                                          $    $  -           $    $  ANS009.BYTE005  $  if(X1&0x4)y=@0274;else y=@0273;
  $  047.TPMS indicator                                                     $    $  -           $    $  ANS009.BYTE005  $  if(X1&0x2)y=@0274;else y=@0273;
  $  048.front left door                                                    $    $  -           $    $  ANS009.BYTE006  $  if(X1&0x80)y=@0274;else y=@0273;
  $  049.front right door                                                   $    $  -           $    $  ANS009.BYTE006  $  if(X1&0x40)y=@0274;else y=@0273;
  $  050.rear left door                                                     $    $  -           $    $  ANS009.BYTE006  $  if(X1&0x20)y=@0274;else y=@0273;
  $  051.rear right door                                                    $    $  -           $    $  ANS009.BYTE006  $  if(X1&0x10)y=@0274;else y=@0273;
  $  052.Tail-gate                                                          $    $  -           $    $  ANS009.BYTE006  $  if(X1&0x8)y=@0274;else y=@0273;


