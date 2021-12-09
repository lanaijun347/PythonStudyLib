$~#6$~#14$~500$~7E8
;******************************************************************************************************************************************************

车型代号:CN113R
车型:CONFERO 
排量:1.5L
年份:2017
模块名缩写:ECM
模块名:发动机控制模块
供应商:大陆
诊断代码:CN113R_1.5L_2017_ECM_CAN

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

		$*$*DTC/FORMODTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:7E0 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:7E0 03 22 F1 90 00 00 00 00          $%
	$%	REQ001:7E0 03 22 F1 C6 00 00 00 00          $%
	$%	REQ002:7E0 03 22 F1 8B 00 00 00 00          $%
	$%	REQ003:7E0 03 22 F1 92 00 00 00 00          $%
	$%	REQ004:7E0 03 22 F1 94 00 00 00 00          $%
	$%	REQ005:7E0 03 22 F1 CB 00 00 00 00          $%

  $%  000:VIN                                        $%    $%  ANS000.BYTE003  $%  17个字节的ASCII显示
  $%  001:Supplier ECU Calibration Data Number       $%    $%  ANS001.BYTE003  $%  16个字节的ASCII显示
  $%  002:ECU Manufacturing Date                     $%    $%  ANS002.BYTE003  $%  04个字节的HEX显示
  $%  003:Supplier ECU Hardware Number               $%    $%  ANS003.BYTE003  $%  16个字节的ASCII显示
  $%  004:Supplier ECU Software Number               $%    $%  ANS004.BYTE003  $%  16个字节的ASCII显示
  $%  005:End Model Part Number                      $%    $%  ANS005.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

 $ 00.Real-time Data

	$	REQ000:7E0 03 22 02 04 00 00 00 00          $
	$	REQ001:7E0 03 22 02 52 00 00 00 00          $
	$	REQ002:7E0 03 22 02 08 00 00 00 00          $
	$	REQ003:7E0 03 22 02 09 00 00 00 00          $
	$	REQ004:7E0 03 22 02 28 00 00 00 00          $
	$	REQ005:7E0 03 22 02 62 00 00 00 00          $
	$	REQ006:7E0 03 22 02 FE 00 00 00 00          $
	$	REQ007:7E0 03 22 02 17 00 00 00 00          $
	$	REQ008:7E0 03 22 03 1B 00 00 00 00          $
	$	REQ009:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ010:7E0 03 22 02 FD 00 00 00 00          $
	$	REQ011:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ012:7E0 03 22 02 23 00 00 00 00          $
	$	REQ013:7E0 03 22 02 24 00 00 00 00          $
	$	REQ014:7E0 03 22 02 F8 00 00 00 00          $
	$	REQ015:7E0 03 22 02 F9 00 00 00 00          $
	$	REQ016:7E0 03 22 02 32 00 00 00 00          $
	$	REQ017:7E0 03 22 02 33 00 00 00 00          $
	$	REQ018:7E0 03 22 02 22 00 00 00 00          $
	$	REQ019:7E0 03 22 02 47 00 00 00 00          $
	$	REQ020:7E0 03 22 02 00 00 00 00 00          $
	$	REQ021:7E0 03 22 02 01 00 00 00 00          $
	$	REQ022:7E0 03 22 02 02 00 00 00 00          $
	$	REQ023:7E0 03 22 02 16 00 00 00 00          $
	$	REQ024:7E0 03 22 02 03 00 00 00 00          $
	$	REQ025:7E0 03 22 02 FC 00 00 00 00          $
	$	REQ026:7E0 03 22 02 45 00 00 00 00          $
	$	REQ027:7E0 03 22 02 25 00 00 00 00          $
	$	REQ028:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ029:7E0 03 22 02 27 00 00 00 00          $
	$	REQ030:7E0 03 22 02 FA 00 00 00 00          $
	$	REQ031:7E0 03 22 02 FB 00 00 00 00          $
	$	REQ032:7E0 03 22 02 10 00 00 00 00          $
	$	REQ033:7E0 03 22 03 14 00 00 00 00          $
	$	REQ034:7E0 03 22 03 15 00 00 00 00          $
	$	REQ035:7E0 03 22 03 16 00 00 00 00          $
	$	REQ036:7E0 03 22 03 17 00 00 00 00          $
	$	REQ037:7E0 03 22 02 40 00 00 00 00          $
	$	REQ038:7E0 03 22 02 41 00 00 00 00          $
	$	REQ039:7E0 03 22 02 42 00 00 00 00          $
	$	REQ040:7E0 03 22 02 43 00 00 00 00          $
	$	REQ041:7E0 03 22 04 18 00 00 00 00          $
	$	REQ042:7E0 03 22 02 49 00 00 00 00          $
	$	REQ043:7E0 03 22 02 4A 00 00 00 00          $
	$	REQ044:7E0 03 22 02 4B 00 00 00 00          $
	$	REQ045:7E0 03 22 02 4C 00 00 00 00          $
	$	REQ046:7E0 03 22 02 61 00 00 00 00          $
	$	REQ047:7E0 03 22 03 0A 00 00 00 00          $
	$	REQ048:7E0 03 22 03 0B 00 00 00 00          $
	$	REQ049:7E0 03 22 02 2F 00 00 00 00          $
	$	REQ050:7E0 03 22 03 12 00 00 00 00          $
	$	REQ051:7E0 03 22 03 13 00 00 00 00          $
	$	REQ052:7E0 03 22 03 0E 00 00 00 00          $
	$	REQ053:7E0 03 22 03 0F 00 00 00 00          $
	$	REQ054:7E0 03 22 03 10 00 00 00 00          $
	$	REQ055:7E0 03 22 03 11 00 00 00 00          $
	$	REQ056:7E0 03 22 03 0C 00 00 00 00          $
	$	REQ057:7E0 03 22 02 53 00 00 00 00          $
	$	REQ058:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ059:7E0 03 22 03 24 00 00 00 00          $
	$	REQ060:7E0 03 22 02 46 00 00 00 00          $
	$	REQ061:7E0 03 22 03 19 00 00 00 00          $
	$	REQ062:7E0 03 22 03 18 00 00 00 00          $
	$	REQ063:7E0 03 22 03 26 00 00 00 00          $
	$	REQ064:7E0 03 22 02 44 00 00 00 00          $
	$	REQ065:7E0 03 22 03 04 00 00 00 00          $
	$	REQ066:7E0 03 22 02 0A 00 00 00 00          $
	$	REQ067:7E0 03 22 03 0D 00 00 00 00          $
	$	REQ068:7E0 03 22 02 57 00 00 00 00          $
	$	REQ069:7E0 03 22 03 29 00 00 00 00          $
	$	REQ070:7E0 03 22 03 2A 00 00 00 00          $
	$	REQ071:7E0 03 22 02 06 00 00 00 00          $

  $  000.Engine Speed                                                                $    $  rpm        $    $  ANS000.BYTE003  $  XY
  $  001.Idle Speed Control                                                          $    $  rpm        $    $  ANS001.BYTE003  $  XY
  $  002.Vehicle Speed                                                               $    $  km/h       $    $  ANS002.BYTE003  $  X*1+1
  $  003.Ambient Pressure                                                            $    $  hPa        $    $  ANS003.BYTE003  $  XY*0.0829175249866483
  $  004.Intake Manifold Pressure                                                    $    $  hPa        $    $  ANS004.BYTE003  $  XY*0.0829175249866483
  $  005.Actual Intake Manifold Pressure Sensor Voltage                              $    $  V          $    $  ANS005.BYTE003  $  XY*0.000152588
  $  006.Manifold pressure sensor signal (voltage)                                   $    $  V          $    $  ANS006.BYTE003  $  XY*0.000152588
  $  007.Air Mass Flow                                                               $    $  mg/stk     $    $  ANS007.BYTE003  $  XY*0.02119478141451133
  $  008.Inlet flow                                                                  $    $  kg/h       $    $  ANS008.BYTE003  $  XY*0.03125
  $  009.Intake Air Temperature                                                      $    $  ℃         $    $  ANS009.BYTE003  $  X*1-48
  $  010.Water temperature sensor signal (voltage)                                   $    $  V          $    $  ANS010.BYTE003  $  XY*0.000152588
  $  011.Desired Throttle Position                                                   $    $  °TPS      $    $  ANS011.BYTE003  $  XY*0.007294146
  $  012.Throttle Blade Position Dependent on Poti 1                                 $    $  °TPS      $    $  ANS012.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  013.Throttle Blade Position Dependent on Poti 2                                 $    $  °TPS      $    $  ANS013.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  014.Electronic throttle position signal 1 (voltage)                             $    $  V          $    $  ANS014.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  015.Electronic throttle position signal 2 (voltage)                             $    $  V          $    $  ANS015.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  016.Sensor Voltage from Throttle Potentiometer 1                                $    $  V          $    $  ANS016.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  017.Sensor Voltage from Throttle Potentiometer 2                                $    $  V          $    $  ANS017.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  018.Real Ignition Angle                                                         $    $  °CRK      $    $  ANS018.BYTE003  $  X*0.375-35.625
  $  019.Basic Ignition Angle                                                        $    $  °CRK      $    $  ANS019.BYTE003  $  X*0.375-35.625
  $  020.Maximum Attainable Indicated Torque                                         $    $  Nm         $    $  ANS020.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  021.Desired Indicated Engine Torque                                             $    $  Nm         $    $  ANS021.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  022.Indicated Real Engine Torque                                                $    $  Nm         $    $  ANS022.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  023.Relative Air Mass                                                           $    $  %          $    $  ANS023.BYTE003  $  X*0.392156862745098
  $  024.Engine Temperature                                                          $    $  ℃         $    $  ANS024.BYTE003  $  X*0.75-48
  $  025.Coolant temperature sensor voltage                                          $    $  V          $    $  ANS025.BYTE003  $  XY*0.000152588
  $  026.Engine Temperature at Start                                                 $    $  ℃         $    $  ANS026.BYTE003  $  X*0.75-48
  $  027.Throttle Actuator Control Pwm                                               $    $  %          $    $  ANS027.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  028.Throttle Angle with Respect to Lower Mechanical Stop                        $    $  °TPS      $    $  ANS028.BYTE003  $  X*0.466825368
  $  029.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop       $    $  V          $    $  ANS029.BYTE003  $  [0000-7FFF]:XY*0.000152587890625+0		[8000-FFFF]:(XY-65535)*0.000152587890625+0
  $  030.The electronic accelerator pedal position signal 1 (voltage)                $    $  V          $    $  ANS030.BYTE003  $  XY*0.0048828125
  $  031.The electronic accelerator pedal position signal (voltage) 2                $    $  V          $    $  ANS031.BYTE003  $  XY*0.0048828125
  $  032.Normalized Angle Acceleration Pedal                                         $    $  %          $    $  ANS032.BYTE003  $  X*0.390625
  $  033.Due to knock back the ignition Angle (1) cylinder                           $    $  °CRK      $    $  ANS033.BYTE003  $  X*0.375-48
  $  034.Due to knock back the ignition Angle (1) cylinder                           $    $  °CRK      $    $  ANS034.BYTE003  $  X*0.375-48
  $  035.Due to knock back the ignition Angle (2) cylinder                           $    $  °CRK      $    $  ANS035.BYTE003  $  X*0.375-48
  $  036.Due to knock back the ignition Angle (3) cylinder                           $    $  °CRK      $    $  ANS036.BYTE003  $  X*0.375-48
  $  037.Reference Level Knock Control, 16bit, Cylinder #1                           $    $  V          $    $  ANS037.BYTE003  $  XY*0.0000762939453727016
  $  038.Reference Level Knock Control, 16bit, Cylinder #2                           $    $  V          $    $  ANS038.BYTE003  $  XY*0.0000762939453727016
  $  039.Reference Level Knock Control, 16bit, Cylinder #3                           $    $  V          $    $  ANS039.BYTE003  $  XY*0.0000762939453727016
  $  040.Reference Level Knock Control, 16bit, Cylinder #4                           $    $  V          $    $  ANS040.BYTE003  $  XY*0.0000762939453727016
  $  041.Knock the global self learning value                                        $    $  -          $    $  ANS041.BYTE003  $  X*0.00390625
  $  042.Number Of Misfire:Cylinder#1                                                $    $  -          $    $  ANS042.BYTE003  $  XY
  $  043.Number Of Misfire:Cylinder#2                                                $    $  -          $    $  ANS043.BYTE003  $  XY
  $  044.Number Of Misfire:Cylinder#3                                                $    $  -          $    $  ANS044.BYTE003  $  XY
  $  045.Number Of Misfire:Cylinder#4                                                $    $  -          $    $  ANS045.BYTE003  $  XY
  $  046.O2 Sensor Voltage Bank1, Sensor 2                                           $    $  V          $    $  ANS046.BYTE003  $  XY*0.0048828125
  $  047.Oxygen sensor before heating duty ratio                                     $    $  %          $    $  ANS047.BYTE003  $  X*0.390625
  $  048.After oxygen heater duty ratio                                              $    $  %          $    $  ANS048.BYTE003  $  X*0.390625
  $  049.Oxygen sensor lambda controller output                                      $    $  %          $    $  ANS049.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  050.The Lambda control output                                                   $    $  %          $    $  ANS050.BYTE003  $  [0000-7FFF]:XY*0.00152588+0		[8000-FFFF]:(XY-65535)*0.00152588+0
  $  051.The Lambda control adaptive output                                          $    $  %          $    $  ANS051.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  052.The actual injection quantity (1 cylinder)                                  $    $  Ms         $    $  ANS052.BYTE003  $  XY*0.004
  $  053.The actual injection quantity (2 cylinder)                                  $    $  Ms         $    $  ANS053.BYTE003  $  XY*0.004
  $  054.The actual injection quantity (3 cylinder)                                  $    $  Ms         $    $  ANS054.BYTE003  $  XY*0.004
  $  055.The actual injection quantity (4cylinder)                                   $    $  Ms         $    $  ANS055.BYTE003  $  XY*0.004
  $  056.VVT duty ratio control signals                                              $    $  %          $    $  ANS056.BYTE003  $  XY*0.0061035156
  $  057.Canister Purge Solenoid                                                     $    $  %          $    $  ANS057.BYTE003  $  X
  $  058.Output Duty Cycle for Canister Purge Valve                                  $    $  %          $    $  ANS058.BYTE003  $  X*0.390625
  $  059.Carbon adsorption tank                                                      $    $  -          $    $  ANS059.BYTE003  $  XY*0.000030517578125
  $  060.The canister purge air flow                                                 $    $  mg/stk     $    $  ANS060.BYTE003  $  XY*0.0211947814145113
  $  061.Temperature of the evaporator                                               $    $  ℃         $    $  ANS061.BYTE003  $  X*0.75-48
  $  062.The evaporator temperature (voltage)                                        $    $  V          $    $  ANS062.BYTE003  $  XY*0.000152588
  $  063.Vehicle mileage                                                             $    $  Km         $    $  ANS063.BYTE003  $  X1X2X3X4*0.1
  $  064.Counter for Distance Travelled While Mil Is Activated                       $    $  Km         $    $  ANS064.BYTE003  $  XY
  $  065.Generator working load                                                      $    $  %          $    $  ANS065.BYTE003  $  X*0.390625
  $  066.The battery voltage (after the main relay)                                  $    $  V          $    $  ANS066.BYTE003  $  X*0.1015625
  $  067.Cooling fan control PWM signal values                                       $    $  %          $    $  ANS067.BYTE003  $  X*0.392
  $  068.Air intake camshaft control                                                 $    $  -          $    $  ANS068.BYTE003  $  00: initial state		01: enter HOLD state		02: hold state		03: adjust state		其他:-
  $  069.Air intake VVT state                                                        $    $  -          $    $  ANS069.BYTE003  $  00: passive		01: ready		02: adaptive		03: enabled		其他:-
  $  070.Air intake VVT control pulse condition                                      $    $  -          $    $  ANS070.BYTE003  $  00: control		01: active		02: passive		其他:-
  $  071.Fuel level                                                                  $    $  %          $    $  ANS071.BYTE003  $  X*0.390625

 $ 01.State Data

	$	REQ000:7E0 03 22 02 54 00 00 00 00          $
	$	REQ001:7E0 03 22 03 05 00 00 00 00          $
	$	REQ002:7E0 03 22 03 06 00 00 00 00          $
	$	REQ003:7E0 03 22 02 59 00 00 00 00          $
	$	REQ004:7E0 03 22 03 08 00 00 00 00          $

  $  000.Fuel Pump Relay                                       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x1)y=@0238;else y=@0237;
  $  001.Ignition switch state                                 $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x1)y=@0238;else y=@0237;
  $  002.Starter relay status                                  $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x20)y=@0240;else y=@0239;
  $  003.MIL                                                   $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  004.Air conditioning requests                             $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0238;else y=@0237;
  $  005.Braking test switch state                             $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x4)y=@0238;else y=@0237;
  $  006.Brake lamp switch state                               $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x2)y=@0238;else y=@0237;
  $  007.Air conditioning compressor clutch relay status       $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x1)y=@0011;else y=@0010;
  $  008.Cooling fan 1 switch state                            $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  009.Cooling fan 2 switch state                            $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  010.The main relay status                                 $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x8)y=@0240;else y=@0239;
  $  011.Fuel pump relay                                       $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x10)y=@0240;else y=@0239;
  $  012.Air pressure switch state                             $    $  -     $    $  ANS004.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;


