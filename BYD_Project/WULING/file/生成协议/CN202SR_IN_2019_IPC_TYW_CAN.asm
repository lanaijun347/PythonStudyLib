$~#6$~#14$~500$~768
;******************************************************************************************************************************************************

车型代号:CN202SR_IN
车型:HECTOR
排量:N15T
年份:2019
模块名缩写:IC
模块名:仪表控制模块
供应商:天有为
诊断代码:CN202SR_IN_2019_IPC_TYW_CAN

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

		$*$*DTC/HECTORDTCS


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
  $%  004:SGMW P/N                                   $%    $%  ANS004.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

   00.All Data

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
	$	REQ014:760 03 22 60 52 00 00 00 00          $
	$	REQ015:760 03 22 60 01 00 00 00 00          $
	$	REQ016:760 03 22 60 46 00 00 00 00          $
	$	REQ017:760 03 22 60 51 00 00 00 00          $

  $  000.KL30 voltage Analogue Input                                        $    $  V           $    $  ANS000.BYTE003  $  X*0.1+5
  $  001.Engine Temperature Gauge Output                                    $    $  ℃          $    $  ANS001.BYTE003  $  X*1-40
  $  002.Fuel Gauge Output                                                  $    $  %           $    $  ANS002.BYTE003  $  X*0.392156862745098
  $  003.Speedometer Output                                                 $    $  Km/h        $    $  ANS003.BYTE003  $  XY*0.015625
  $  004.Tachometer Output                                                  $    $  rpm         $    $  ANS004.BYTE003  $  XY*0.25
  $  005.Odometer Output                                                    $    $  Km          $    $  ANS005.BYTE003  $  X1X2X3X4*0.015625
  $  006.Trip1 Output                                                       $    $  Km          $    $  ANS006.BYTE003  $  X*0.015257
  $  007.TPMS LF tire pressure                                              $    $  Kpa         $    $  ANS007.BYTE003  $  X*1.38
  $  008.TPMS RF tire pressure                                              $    $  Kpa         $    $  ANS007.BYTE003  $  X*1.38
  $  009.TPMS LR tire pressure                                              $    $  Kpa         $    $  ANS007.BYTE003  $  X*1.38
  $  010.TPMS RR tire pressure                                              $    $  Kpa         $    $  ANS007.BYTE003  $  X*1.38
  $  011.Gear Position(DCT only)                                            $    $  gear        $    $  ANS008.BYTE004  $  00:Unused		01:1		02:2		03:3		04:4		05:5		06:P		07:N		08:R		09:D		0A:6		0B:7		0C:8		其他:-
  $  012.Gear mode(DCT only)                                                $    $  -           $    $  ANS008.BYTE008  $  00:Manual mode		01:Automatic mode		其他:-
  $  013.Automatic Mode Control(DCT only)                                   $    $  -           $    $  ANS008.BYTE009  $  00:Unused		01:Sport mode		02:Snow mode		03:Economic mode		其他:-
  $  014.Work status light of cruise control system                         $    $  -           $    $  ANS009.BYTE007  $  00:OFF		01:ON		02:twinkling		其他:-
  $  015.Instantaneous Fuel Consumption                                     $    $  L/100Km     $    $  ANS010.BYTE003  $  X*0.1
  $  016.Average Fuel Consumption                                           $    $  L/100Km     $    $  ANS011.BYTE003  $  X*0.1
  $  017.Endurance Mileage                                                  $    $  Km          $    $  ANS012.BYTE003  $  XY
  $  018.rise and fall gears Mode                                           $    $  -           $    $  ANS013.BYTE009  $  00:default		01:rise		02:fall		其他:-
  $  019.TPMS LF tire Temperature                                           $    $  ℃          $    $  ANS014.BYTE003  $  X*0.65-40
  $  020.TPMS RF tire Temperature                                           $    $  ℃          $    $  ANS014.BYTE003  $  X*0.65-40
  $  021.TPMS LR tire Temperature                                           $    $  ℃          $    $  ANS014.BYTE003  $  X*0.65-40
  $  022.TPMS RR tire Temperature                                           $    $  ℃          $    $  ANS014.BYTE003  $  X*0.65-40
  $  023.Door open voice remind                                             $    $  -           $    $  ANS015.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  024.PEPS voice remind                                                  $    $  -           $    $  ANS015.BYTE003  $  if(X1&0x40)y=@0009;else y=@0008;
  $  025.Engine hood open voice warning                                     $    $  -           $    $  ANS015.BYTE003  $  if(X1&0x20)y=@0009;else y=@0008;
  $  026.Gearbox failure voice warning                                      $    $  -           $    $  ANS015.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;
  $  027.Position light not shut off voice warning                          $    $  -           $    $  ANS015.BYTE003  $  if(X1&0x8)y=@0009;else y=@0008;
  $  028.Driver seat belt not tie voice warning                             $    $  -           $    $  ANS015.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  029.co-driver seat belt not tie voice warning                          $    $  -           $    $  ANS015.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  030.Voice remind when driver side door open but key not pull out       $    $  -           $    $  ANS015.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  031.Gear mode                                                          $    $  -           $    $  ANS008.BYTE003  $  if(X1&0x20)y=@0272;else y=@0271;
  $  032.Driver seat belt not tie Indicator Light                           $    $  -           $    $  ANS009.BYTE003  $  if(X1&0x80)y=@0274;else y=@0273;
  $  033.co-driver seat belt not tie Indicator Light                        $    $  -           $    $  ANS009.BYTE003  $  if(X1&0x40)y=@0274;else y=@0273;
  $  034.High Beam indicator                                                $    $  -           $    $  ANS009.BYTE003  $  if(X1&0x20)y=@0274;else y=@0273;
  $  035.Left turn indicator                                                $    $  -           $    $  ANS009.BYTE003  $  if(X1&0x10)y=@0274;else y=@0273;
  $  036.Right turn indicator                                               $    $  -           $    $  ANS009.BYTE003  $  if(X1&0x8)y=@0274;else y=@0273;
  $  037.Front fog indicator                                                $    $  -           $    $  ANS009.BYTE003  $  if(X1&0x4)y=@0274;else y=@0273;
  $  038.Rear fog indicator                                                 $    $  -           $    $  ANS009.BYTE003  $  if(X1&0x2)y=@0274;else y=@0273;
  $  039.Position light                                                     $    $  -           $    $  ANS009.BYTE003  $  if(X1&0x1)y=@0274;else y=@0273;
  $  040.Fuel too low indication Light                                      $    $  -           $    $  ANS009.BYTE004  $  if(X1&0x80)y=@0274;else y=@0273;
  $  041.EP indicator                                                       $    $  -           $    $  ANS009.BYTE004  $  if(X1&0x40)y=@0274;else y=@0273;
  $  042.Water temperature too high indication light                        $    $  -           $    $  ANS009.BYTE004  $  if(X1&0x20)y=@0274;else y=@0273;
  $  043.IMMO Light                                                         $    $  -           $    $  ANS009.BYTE004  $  if(X1&0x2)y=@0274;else y=@0273;
  $  044.ABS/ESP fault indicator light                                      $    $  -           $    $  ANS009.BYTE004  $  if(X1&0x1)y=@0274;else y=@0273;
  $  045.SRS fault Indicator Light                                          $    $  -           $    $  ANS009.BYTE005  $  if(X1&0x80)y=@0274;else y=@0273;
  $  046.ESC warning lamps                                                  $    $  -           $    $  ANS009.BYTE005  $  if(X1&0x40)y=@0274;else y=@0273;
  $  047.ESC Switch Indicator                                               $    $  -           $    $  ANS009.BYTE005  $  if(X1&0x20)y=@0274;else y=@0273;
  $  048.EPS indicator                                                      $    $  -           $    $  ANS009.BYTE005  $  if(X1&0x10)y=@0274;else y=@0273;
  $  049.EBD indicator                                                      $    $  -           $    $  ANS009.BYTE005  $  if(X1&0x8)y=@0274;else y=@0273;
  $  050.Gearbox warning indicator                                          $    $  -           $    $  ANS009.BYTE005  $  if(X1&0x4)y=@0274;else y=@0273;
  $  051.TPMS indicator                                                     $    $  -           $    $  ANS009.BYTE005  $  if(X1&0x2)y=@0274;else y=@0273;
  $  052.front left door                                                    $    $  -           $    $  ANS009.BYTE006  $  if(X1&0x80)y=@0274;else y=@0273;
  $  053.front right door                                                   $    $  -           $    $  ANS009.BYTE006  $  if(X1&0x40)y=@0274;else y=@0273;
  $  054.rear left door                                                     $    $  -           $    $  ANS009.BYTE006  $  if(X1&0x20)y=@0274;else y=@0273;
  $  055.rear right door                                                    $    $  -           $    $  ANS009.BYTE006  $  if(X1&0x10)y=@0274;else y=@0273;
  $  056.Tail-gate                                                          $    $  -           $    $  ANS009.BYTE006  $  if(X1&0x8)y=@0274;else y=@0273;
  $  057.EPB work indication                                                $    $  -           $    $  ANS016.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  058.EPB fault indication                                               $    $  -           $    $  ANS016.BYTE003  $  if(X1&0x40)y=@0009;else y=@0008;
  $  059.AVH work indication                                                $    $  -           $    $  ANS016.BYTE003  $  if(X1&0x20)y=@0009;else y=@0008;
  $  060.AVH fault indication                                               $    $  -           $    $  ANS016.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;
  $  061.48V system faultindicator(48V system only)                         $    $  -           $    $  ANS009.BYTE005  $  if(X1&0x1)y=@0274;else y=@0273;
  $  062.Engine hood                                                        $    $  -           $    $  ANS009.BYTE006  $  if(X1&0x4)y=@0274;else y=@0273;
  $  063.Start-stop system work indicator                                   $    $  -           $    $  ANS009.BYTE006  $  if(X1&0x2)y=@0274;else y=@0273;
  $  064.Start-stop system inhibit switch indicator                         $    $  -           $    $  ANS009.BYTE006  $  if(X1&0x1)y=@0274;else y=@0273;
  $  065.Engine preheat indicator (diesel engine only)                      $    $  -           $    $  ANS017.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  066.Discharge particle alarm indicator(diesel engine only)             $    $  -           $    $  ANS017.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  067.Fuel oil and water alarm indicator(diesel engine only)             $    $  -           $    $  ANS017.BYTE004  $  if(X1&0x80)y=@0009;else y=@0008;


