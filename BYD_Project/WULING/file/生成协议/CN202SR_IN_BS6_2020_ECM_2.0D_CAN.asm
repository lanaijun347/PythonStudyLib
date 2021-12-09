$~#6$~#14$~500$~7E8
;******************************************************************************************************************************************************

车型代号:CN202SR_IN
车型:HECTOR
排量:2.0D
年份:2019
模块名缩写:ECM
模块名:发动机控制模块
供应商:FCA
诊断代码:CN202SR_IN_2.0D_2019_ECM_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:7E0 02 10 01 00 00 00 00 00          $~          7E8 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:7E0 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:7E0 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:7E0 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/HECTORDTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:7E0 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:7E0 03 22 F1 90 00 00 00 00          $%
	$%	REQ001:7E0 03 22 F1 8A 00 00 00 00          $%
	$%	REQ002:7E0 03 22 F1 8B 00 00 00 00          $%
	$%	REQ003:7E0 03 22 F1 CB 00 00 00 00          $%
	$%	REQ004:7E0 03 22 F1 92 00 00 00 00          $%
	$%	REQ005:7E0 03 22 F1 93 00 00 00 00          $%
	$%	REQ006:7E0 03 22 F1 94 00 00 00 00          $%
	$%	REQ007:7E0 03 22 F1 95 00 00 00 00          $%

  $%  000:VehicleIdentificationNumber                $%    $%  ANS000.BYTE003  $%  17个字节的ASCII显示
  $%  001:Supplier Identifier Information            $%    $%  ANS001.BYTE003  $%  07个字节的ASCII显示
  $%  002:ECUManufacturingDate                       $%    $%  ANS002.BYTE003  $%  04个字节的HEX显示
  $%  003:EndModelPartNumber (SGMW P/N)              $%    $%  ANS003.BYTE003  $%  X1X2X3X4
  $%  004:Supplier ECU Hardware Number               $%    $%  ANS004.BYTE003  $%  11个字节的ASCII显示
  $%  005:Supplier ECU Hardware Version Number       $%    $%  ANS005.BYTE003  $%  X
  $%  006:Supplier ECU Software Number               $%    $%  ANS006.BYTE003  $%  11个字节的ASCII显示
  $%  007:Supplier ECU Software Version Number       $%    $%  ANS007.BYTE003  $%  XY

;******************************************************************************************************************************************************
数据流

 $ 00.Engine data

	$	REQ000:7E0 03 22 02 01 00 00 00 00          $
	$	REQ001:7E0 03 22 A0 09 00 00 00 00          $
	$	REQ002:7E0 03 22 F0 12 00 00 00 00          $
	$	REQ003:7E0 03 22 19 2D 00 00 00 00          $
	$	REQ004:7E0 03 22 02 7C 00 00 00 00          $
	$	REQ005:7E0 03 22 18 DC 00 00 00 00          $
	$	REQ006:7E0 03 22 38 36 00 00 00 00          $
	$	REQ007:7E0 03 22 39 17 00 00 00 00          $
	$	REQ008:7E0 03 22 18 A0 00 00 00 00          $
	$	REQ009:7E0 03 22 07 15 00 00 00 00          $
	$	REQ010:7E0 03 22 19 0D 00 00 00 00          $
	$	REQ011:7E0 03 22 12 5D 00 00 00 00          $
	$	REQ012:7E0 03 22 20 04 00 00 00 00          $
	$	REQ013:7E0 03 22 20 06 00 00 00 00          $
	$	REQ014:7E0 03 22 20 05 00 00 00 00          $
	$	REQ015:7E0 03 22 19 34 00 00 00 00          $
	$	REQ016:7E0 03 22 38 07 00 00 00 00          $
	$	REQ017:7E0 03 22 38 35 00 00 00 00          $
	$	REQ018:7E0 03 22 38 08 00 00 00 00          $
	$	REQ019:7E0 03 22 38 09 00 00 00 00          $
	$	REQ020:7E0 03 22 38 0A 00 00 00 00          $
	$	REQ021:7E0 03 22 38 0B 00 00 00 00          $
	$	REQ022:7E0 03 22 18 A5 00 00 00 00          $
	$	REQ023:7E0 03 22 18 A6 00 00 00 00          $
	$	REQ024:7E0 03 22 19 64 00 00 00 00          $
	$	REQ025:7E0 03 22 12 75 00 00 00 00          $
	$	REQ026:7E0 03 22 1B 0B 00 00 00 00          $
	$	REQ027:7E0 03 22 19 4D 00 00 00 00          $

  $  000.Desired indicated engine torque                                                             $    $  NM      $    $  ANS000.BYTE003  $  XY
  $  001.Engine coolant temperature                                                                  $    $  °C     $    $  ANS001.BYTE003  $  X*1-40
  $  002.Engine speed                                                                                $    $  rpm     $    $  ANS002.BYTE003  $  XY
  $  003.Current gear                                                                                $    $  -       $    $  ANS003.BYTE003  $  00:Gear 0 (Neutral)		01:Gear 1		02:Gear 2		03:Gear 3		04:Gear 4		05:Gear 5		06:Gear 6		07:Gear 7		08: Gear 8		09:Gear 9		0A:Reverse gear 1		0B:Reverse gear 2		其他:-
  $  004.Engine temperature at start                                                                 $    $  °C     $    $  ANS004.BYTE003  $  X*0.75
  $  005.Inlet Oxycat exhaust gas temperature sensor (T4)                                            $    $  °C     $    $  ANS005.BYTE003  $  XY*0.02-40
  $  006.Inlet turbine temperature sensor (T3)                                                       $    $  °C     $    $  ANS006.BYTE003  $  XY*0.01960784-40
  $  007.Temperature downstream high pressure EGR cooler Temperature                                 $    $  °C     $    $  ANS007.BYTE003  $  XY*0.02001221-40
  $  008.VGT actuator position                                                                       $    $  %       $    $  ANS008.BYTE003  $  XY*0.00305185-100
  $  009.Voltage from VGT position sensor                                                            $    $  V       $    $  ANS009.BYTE003  $  XY*0.001220703
  $  010.Swirl position sensor                                                                       $    $  %       $    $  ANS010.BYTE003  $  XY*0.0015259
  $  011.Engine Status                                                                               $    $  -       $    $  ANS011.BYTE003  $  00:Engine not running & Ignition ON		01:Engine cranking  in progress		02:Engine Idling		03:Engine running		04:Engine ready to crank		05:Engine stalled		其他:-
  $  012.Engine overspeed counter                                                                    $    $  -       $    $  ANS012.BYTE003  $  X
  $  013.Total engine overspeed duration                                                             $    $  ms      $    $  ANS013.BYTE003  $  XY*10
  $  014.Maximum engine overspeed                                                                    $    $  rpm     $    $  ANS014.BYTE003  $  X*40
  $  015.ADC Engine coolant temperature                                                              $    $  mV      $    $  ANS015.BYTE003  $  XY*0.1
  $  016.Covered distance since last regeneration                                                    $    $  Km      $    $  ANS016.BYTE003  $  XYZ*0.1
  $  017.Counter of DPF regeneration due to flow resistance                                          $    $  -       $    $  ANS017.BYTE003  $  X
  $  018.Mean temperature value of the last regenerations (forced + automatic)                       $    $  °C     $    $  ANS018.BYTE003  $  XY*0.02-40
  $  019.Mean driven distance of the last regenerations (forced + automatic)                         $    $  Km      $    $  ANS019.BYTE003  $  XY
  $  020.Mean duration of the last regenerations                                                     $    $  s       $    $  ANS020.BYTE003  $  XY
  $  021.Percentage time of regeneration                                                             $    $  %       $    $  ANS021.BYTE003  $  XY*0.0015259
  $  022.RGN interrupted counter OR Number of consecutive interrupted regenerations by key off       $    $  -       $    $  ANS022.BYTE003  $  X
  $  023.Driven distance since DPF lamp ON                                                           $    $  Km      $    $  ANS023.BYTE003  $  XY
  $  024.TVA DC motor required position                                                              $    $  %       $    $  ANS024.BYTE003  $  XY*0.0015259
  $  025.Starter engagement release result-Powerstage high side                                      $    $  -       $    $  ANS025.BYTE003  $  if(X1&0x1)y=@0015;else y=@0318;
  $  026.Starter engagement release result-Powerstage low side                                       $    $  -       $    $  ANS025.BYTE003  $  if(X1&0x2)y=@0015;else y=@0318;
  $  027.Voltage feedback signal status from starte-Starter motor signal feedback                    $    $  -       $    $  ANS026.BYTE003  $  if(X1&0x1)y=@0346;else y=@0345;
  $  028.Status message for oil pressure sensing-Oil pressure switch                                 $    $  -       $    $  ANS027.BYTE003  $  if(X1&0x1)y=@0348;else y=@0347;

 $ 01.Air conditioning system data

	$	REQ000:7E0 03 22 19 2F 00 00 00 00          $
	$	REQ001:7E0 03 22 12 7A 00 00 00 00          $

  $  000.A/C pressure sensor                      $    $  hPa     $    $  ANS000.BYTE003  $  XY*10
  $  001.A/C compressor clutch relay status       $    $  -       $    $  ANS001.BYTE003  $  00:AC Compressor not actived as requested absent		01:AC Compressor not actived due to fault on driver output		02:AC Compressor not activated due too low/high refrigerant pressure & inhibit conditions		03:AC Compressor Activated		其他:-

 $ 02.Exhaust gas recirculation data

	$	REQ000:7E0 03 22 19 3C 00 00 00 00          $
	$	REQ001:7E0 03 22 19 36 00 00 00 00          $

  $  000.Air flow rate from mass air flow sensor measured                   $    $  mg/str     $    $  ANS000.BYTE003  $  XY*0.5-200
  $  001.ADC Intake manifold air temperature  (Boost pressure sensor)       $    $  mV         $    $  ANS001.BYTE003  $  XY*0.1

 $ 03.Evaporative emission data

	$	REQ000:7E0 03 22 19 3A 00 00 00 00          $

  $  000.Turbocharger Pressure Actuator Command       $    $  %     $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.00305185+0		[8000-FFFF]:(XY-65535)*0.00305185+0

 $ 04.The fuel system data

	$	REQ000:7E0 03 22 19 24 00 00 00 00          $
	$	REQ001:7E0 03 22 19 25 00 00 00 00          $
	$	REQ002:7E0 03 22 19 26 00 00 00 00          $
	$	REQ003:7E0 03 22 38 00 00 00 00 00          $
	$	REQ004:7E0 03 22 38 01 00 00 00 00          $
	$	REQ005:7E0 03 22 38 02 00 00 00 00          $
	$	REQ006:7E0 03 22 38 03 00 00 00 00          $
	$	REQ007:7E0 03 22 19 03 00 00 00 00          $
	$	REQ008:7E0 03 22 39 69 00 00 00 00          $
	$	REQ009:7E0 03 22 18 A7 00 00 00 00          $

  $  000.Accelerator pedal position                                           $    $  %          $    $  ANS000.BYTE003  $  XY*0.0015259
  $  001.Accelerator pedal potentiometer 1                                    $    $  mV         $    $  ANS001.BYTE003  $  XY*0.1
  $  002.Accelerator pedal potentiometer 2                                    $    $  mV         $    $  ANS002.BYTE003  $  XY*0.1
  $  003.Total fuel correction in cylinder 1                                  $    $  mm³/str     $    $  ANS003.BYTE003  $  [0000-7FFF]:XY*0.01+0		[8000-FFFF]:(XY-65535)*0.01+0
  $  004.Total fuel correction in cylinder 2                                  $    $  mm³/str     $    $  ANS004.BYTE003  $  [0000-7FFF]:XY*0.01+0		[8000-FFFF]:(XY-65535)*0.01+0
  $  005.Total fuel correction in cylinder 3                                  $    $  mm³/str     $    $  ANS005.BYTE003  $  [0000-7FFF]:XY*0.01+0		[8000-FFFF]:(XY-65535)*0.01+0
  $  006.Total fuel correction in cylinder 4                                  $    $  mm³/str     $    $  ANS006.BYTE003  $  [0000-7FFF]:XY*0.01+0		[8000-FFFF]:(XY-65535)*0.01+0
  $  007.Fuel metering unit current                                           $    $  mA         $    $  ANS007.BYTE003  $  XY
  $  008.Elapsed time in engine running with low oil pressure condition       $    $  min        $    $  ANS008.BYTE003  $  XY*10
  $  009.HP-EGR Cooler Bypass status-EGR cooler closed                        $    $  -          $    $  ANS009.BYTE003  $  if(X1&0x1)y=@0319;else y=@0076;
  $  010.HP-EGR Cooler Bypass status-EGR cooler bypass in fault               $    $  -          $    $  ANS009.BYTE003  $  if(X1&0x2)y=@0319;else y=@0076;

 $ 05.Fuel adjustment data

	$	REQ000:7E0 03 22 19 42 00 00 00 00          $
	$	REQ001:7E0 03 22 19 01 00 00 00 00          $
	$	REQ002:7E0 03 22 19 43 00 00 00 00          $
	$	REQ003:7E0 03 22 18 FF 00 00 00 00          $

  $  000.Fuel consumption                    $    $  L/h     $    $  ANS000.BYTE003  $  XY*0.0004
  $  001.ADC fuel temperature sensor         $    $  mV      $    $  ANS001.BYTE003  $  XY*0.1
  $  002.Total fuel consumption              $    $  L       $    $  ANS002.BYTE003  $  XYZ
  $  003.Water present in fuel filter        $    $  -       $    $  ANS003.BYTE003  $  if(X1&0x1)y=@0321;else y=@0320;

 $ 06.Oxygen sensor data

	$	REQ000:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ001:7E0 03 22 18 E2 00 00 00 00          $
	$	REQ002:7E0 03 22 19 00 00 00 00 00          $
	$	REQ003:7E0 03 22 39 15 00 00 00 00          $
	$	REQ004:7E0 03 22 18 DE 00 00 00 00          $
	$	REQ005:7E0 03 22 19 47 00 00 00 00          $
	$	REQ006:7E0 03 22 18 AB 00 00 00 00          $
	$	REQ007:7E0 03 22 19 5A 00 00 00 00          $
	$	REQ008:7E0 03 22 19 35 00 00 00 00          $
	$	REQ009:7E0 03 22 18 ED 00 00 00 00          $

  $  000.Sensor voltage from TVA                                $    $  V        $    $  ANS000.BYTE003  $  XY*0.001220704
  $  001.Differential pressure sensor                           $    $  mBar     $    $  ANS001.BYTE003  $  XY*1-32767
  $  002.Fuel temperature sensor                                $    $  °C      $    $  ANS002.BYTE003  $  XY*0.02-40
  $  003.Outlet DPF temperature sensor (T6)                     $    $  °C      $    $  ANS003.BYTE003  $  XY*0.02-40
  $  004.Inlet PreCAT exhaust gas temperature sensor (T5)       $    $  °C      $    $  ANS004.BYTE003  $  XY*0.02-40
  $  005.Fuel rail pressure measured (sensor)                   $    $  bar      $    $  ANS005.BYTE003  $  XY*0.05
  $  006.Upstream O2 heater status                              $    $  %        $    $  ANS006.BYTE003  $  X*0.0015259
  $  007.Boost pressure from sensor                             $    $  hPa      $    $  ANS007.BYTE003  $  XY*1-32767
  $  008.Boost temperature from sensor                          $    $  °C      $    $  ANS008.BYTE003  $  XY*0.02-40
  $  009.Lambda sensor O2 concentration                         $    $  %        $    $  ANS009.BYTE003  $  XY*0.00152588

 $ 07.Light data

	$	REQ000:7E0 03 22 19 5D 00 00 00 00          $
	$	REQ001:7E0 03 22 19 1F 00 00 00 00          $
	$	REQ002:7E0 03 22 12 5F 00 00 00 00          $

  $  000.The glow control Lamp activation in OFF mode                            $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  001.The glow control Lamp activation in ON mode                             $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  002.Lamp activation in BLINKING mode                                        $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  003.Lamp activation in ON mode during lamp test                             $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;
  $  004.Priority command for lamp activation in blinking mode received          $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x40)y=@0009;else y=@0008;
  $  005.IOLI command for lamp activation in OFF mode received                   $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  006.IOLI command for lamp activation in ON mode received                    $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x1)y=@0009;else y=@0008;
  $  007.IOLI command for lamp activation in automatic cycle mode received       $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x2)y=@0009;else y=@0008;
  $  008.Lamp activation in OFF mode                                             $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  009.Lamp activation in ON mode                                              $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  010.Lamp activation in BLINKING mode                                        $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  011.Lamp activation in ON mode during lamp test                             $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;
  $  012.Priority command for lamp activation in blinking mode received          $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x40)y=@0009;else y=@0008;
  $  013.IOLI command for lamp activation in OFF mode received                   $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  014.IOLI command for lamp activation in ON mode received                    $    $  -     $    $  ANS001.BYTE004  $  if(X1&0x1)y=@0009;else y=@0008;
  $  015.IOLI command for lamp activation in automatic cycle mode received       $    $  -     $    $  ANS001.BYTE004  $  if(X1&0x2)y=@0009;else y=@0008;
  $  016.Clutch switch status (Normally open)                                    $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;

 $ 08.Air intake data

	$	REQ000:7E0 03 22 18 9B 00 00 00 00          $
	$	REQ001:7E0 03 22 19 3D 00 00 00 00          $

  $  000.EGR hp DC Motor required position       $    $  %          $    $  ANS000.BYTE003  $  XY*0.00305185-100
  $  001.Air flow rate mass target               $    $  mg/str     $    $  ANS001.BYTE003  $  XY*0.5-200

 $ 09.The instrument shows data

	$	REQ000:7E0 03 22 02 7B 00 00 00 00          $
	$	REQ001:7E0 03 22 F0 11 00 00 00 00          $
	$	REQ002:7E0 03 22 F0 13 00 00 00 00          $
	$	REQ003:7E0 03 22 F0 14 00 00 00 00          $
	$	REQ004:7E0 03 22 12 80 00 00 00 00          $
	$	REQ005:7E0 03 22 12 60 00 00 00 00          $
	$	REQ006:7E0 03 22 19 2B 00 00 00 00          $
	$	REQ007:7E0 03 22 20 07 00 00 00 00          $

  $  000.Counter for distance travelled while MIL is activated MIL       $    $  Km       $    $  ANS000.BYTE003  $  XY
  $  001.Battery voltage                                                 $    $  mV       $    $  ANS001.BYTE003  $  XY*0.5
  $  002.Vehicle speed                                                   $    $  Km/h     $    $  ANS002.BYTE003  $  XY*0.1
  $  003.Vehicle Odometer                                                $    $  Km       $    $  ANS003.BYTE003  $  X1X2X3X4*0.001
  $  004.Brake lamp switch (main)                                        $    $  -        $    $  ANS004.BYTE003  $  X
  $  005.Clutch switch status (Normally Closed)                          $    $  -        $    $  ANS005.BYTE003  $  00:OFF		01:ON		其他:-
  $  006.Cruise speed                                                    $    $  Km/h     $    $  ANS006.BYTE003  $  X
  $  007.Odometer value at last overspeed detection                      $    $  km       $    $  ANS007.BYTE003  $  XYZ*0.1

 $ 10.Injector Data

	$	REQ000:7E0 03 22 38 29 00 00 00 00          $
	$	REQ001:7E0 03 22 38 2A 00 00 00 00          $
	$	REQ002:7E0 03 22 38 2B 00 00 00 00          $
	$	REQ003:7E0 03 22 38 2C 00 00 00 00          $

  $  000.IMA code of injector cylinder 1       $    $  -     $    $  ANS000.BYTE003  $  00:A		01:B		02:C		03:D		04:E		05:F		06:G		07:H		08:I		09:K		0A:L		0B:M		0C:N		0D:O		0E:P		0F:R		10:S		11:T		12:U		13:V		14:W		15:X		16:Y		17:Z		18:1		19:2		1A:3		1B:4		1C:5		1D:6		1E:7		1F:8		其他:-
  $  001.IMA code of injector cylinder 2       $    $  -     $    $  ANS001.BYTE003  $  00:A		01:B		02:C		03:D		04:E		05:F		06:G		07:H		08:I		09:K		0A:L		0B:M		0C:N		0D:O		0E:P		0F:R		10:S		11:T		12:U		13:V		14:W		15:X		16:Y		17:Z		18:1		19:2		1A:3		1B:4		1C:5		1D:6		1E:7		1F:8		其他:-
  $  002.IMA code of injector cylinder 3       $    $  -     $    $  ANS002.BYTE003  $  00:A		01:B		02:C		03:D		04:E		05:F		06:G		07:H		08:I		09:K		0A:L		0B:M		0C:N		0D:O		0E:P		0F:R		10:S		11:T		12:U		13:V		14:W		15:X		16:Y		17:Z		18:1		19:2		1A:3		1B:4		1C:5		1D:6		1E:7		1F:8		其他:-
  $  003.IMA code of injector cylinder 4       $    $  -     $    $  ANS003.BYTE003  $  00:A		01:B		02:C		03:D		04:E		05:F		06:G		07:H		08:I		09:K		0A:L		0B:M		0C:N		0D:O		0E:P		0F:R		10:S		11:T		12:U		13:V		14:W		15:X		16:Y		17:Z		18:1		19:2		1A:3		1B:4		1C:5		1D:6		1E:7		1F:8		其他:-


