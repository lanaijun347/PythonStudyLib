$~#6$~#14$~500$~7E8
;******************************************************************************************************************************************************

车型代号:CN202SR_IN
车型:HECTOR
排量:N15T
年份:2019
模块名缩写:ECM
模块名:发动机控制模块
供应商:大陆
诊断代码:CN202SR_IN_N15T_2019_ECM_CAN

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
	$%	REQ005:7E0 03 22 F1 94 00 00 00 00          $%
	$%	REQ006:7E0 03 22 F1 C6 00 00 00 00          $%

  $%  000:VehicleIdentificationNumber                $%    $%  ANS000.BYTE003  $%  17个字节的ASCII显示
  $%  001:Supplier Identifier Information            $%    $%  ANS001.BYTE003  $%  07个字节的ASCII显示
  $%  002:ECUManufacturingDate                       $%    $%  ANS002.BYTE003  $%  04个字节的HEX显示
  $%  003:EndModelPartNumber (SGMW P/N)              $%    $%  ANS003.BYTE003  $%  X1X2X3X4
  $%  004:Supplier ECU Hardware Number               $%    $%  ANS004.BYTE003  $%  16个字节的ASCII显示
  $%  005:Supplier ECU Software Number               $%    $%  ANS005.BYTE003  $%  16个字节的ASCII显示
  $%  006:Supplier ECU Calibration Data Number       $%    $%  ANS006.BYTE003  $%  16个字节的ASCII显示

;******************************************************************************************************************************************************
数据流

 $ 00.Engine data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 02 02 00 00 00 00          $
	$	REQ003:7E0 03 22 02 16 00 00 00 00          $
	$	REQ004:7E0 03 22 02 03 00 00 00 00          $
	$	REQ005:7E0 03 22 02 FC 00 00 00 00          $
	$	REQ006:7E0 03 22 02 45 00 00 00 00          $
	$	REQ007:7E0 03 22 02 04 00 00 00 00          $
	$	REQ008:7E0 03 22 02 52 00 00 00 00          $
	$	REQ009:7E0 03 22 02 08 00 00 00 00          $
	$	REQ010:7E0 03 22 02 22 00 00 00 00          $
	$	REQ011:7E0 03 22 02 47 00 00 00 00          $
	$	REQ012:7E0 03 22 03 14 00 00 00 00          $
	$	REQ013:7E0 03 22 03 15 00 00 00 00          $
	$	REQ014:7E0 03 22 03 16 00 00 00 00          $
	$	REQ015:7E0 03 22 03 17 00 00 00 00          $
	$	REQ016:7E0 03 22 02 40 00 00 00 00          $
	$	REQ017:7E0 03 22 02 41 00 00 00 00          $
	$	REQ018:7E0 03 22 02 42 00 00 00 00          $
	$	REQ019:7E0 03 22 02 43 00 00 00 00          $
	$	REQ020:7E0 03 22 02 49 00 00 00 00          $
	$	REQ021:7E0 03 22 02 4A 00 00 00 00          $
	$	REQ022:7E0 03 22 02 4B 00 00 00 00          $
	$	REQ023:7E0 03 22 02 4C 00 00 00 00          $
	$	REQ024:7E0 03 22 03 0E 00 00 00 00          $
	$	REQ025:7E0 03 22 03 0F 00 00 00 00          $
	$	REQ026:7E0 03 22 03 10 00 00 00 00          $
	$	REQ027:7E0 03 22 03 11 00 00 00 00          $
	$	REQ028:7E0 03 22 03 1D 00 00 00 00          $
	$	REQ029:7E0 03 22 03 1E 00 00 00 00          $
	$	REQ030:7E0 03 22 03 1F 00 00 00 00          $
	$	REQ031:7E0 03 22 03 20 00 00 00 00          $
	$	REQ032:7E0 03 22 03 0C 00 00 00 00          $
	$	REQ033:7E0 03 22 05 02 00 00 00 00          $
	$	REQ034:7E0 03 22 05 03 00 00 00 00          $
	$	REQ035:7E0 03 22 05 04 00 00 00 00          $
	$	REQ036:7E0 03 22 05 10 00 00 00 00          $
	$	REQ037:7E0 03 22 05 11 00 00 00 00          $
	$	REQ038:7E0 03 22 05 12 00 00 00 00          $
	$	REQ039:7E0 03 22 05 13 00 00 00 00          $
	$	REQ040:7E0 03 22 02 54 00 00 00 00          $
	$	REQ041:7E0 03 22 05 14 00 00 00 00          $
	$	REQ042:7E0 03 22 05 15 00 00 00 00          $
	$	REQ043:7E0 03 22 05 16 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                                      $    $  Nm        $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                                          $    $  Nm        $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                                             $    $  Nm        $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Relative Air Mass(Calc. Load Value)                                      $    $  %         $    $  ANS003.BYTE003  $  X*0.392156862745098
  $  004.Engine Temperature                                                       $    $  ℃        $    $  ANS004.BYTE003  $  X*0.75-48
  $  005.Engine temperature sensor voltage（V_TCO)                                $    $  V         $    $  ANS005.BYTE003  $  XY*0.000152588
  $  006.Engine Temperature at Start                                              $    $  ℃        $    $  ANS006.BYTE003  $  X*0.75-48
  $  007.Engine Speed                                                             $    $  rpm       $    $  ANS007.BYTE003  $  XY
  $  008.Idle Speed Control                                                       $    $  rpm       $    $  ANS008.BYTE003  $  XY
  $  009.Vehicle Speed                                                            $    $  km/h      $    $  ANS009.BYTE003  $  X*1+1
  $  010.Real Ignition Angle                                                      $    $  °CRK     $    $  ANS010.BYTE003  $  X*0.375-35.625
  $  011.Basic Ignition Angle                                                     $    $  °CRK     $    $  ANS011.BYTE003  $  X*0.375-35.625
  $  012.Cylinder#1 ignition advance Angle（IGA_CYL_KNK[0]）                      $    $  °CRK     $    $  ANS012.BYTE003  $  X*0.375-48
  $  013.Cylinder#2 ignition advance Angle（IGA_CYL_KNK[1]）                      $    $  °CRK     $    $  ANS013.BYTE003  $  X*0.375-48
  $  014.Cylinder#3 ignition advance Angle（IGA_CYL_KNK[2]）                      $    $  °CRK     $    $  ANS014.BYTE003  $  X*0.375-48
  $  015.Cylinder#4 ignition advance Angle（IGA_CYL_KNK[3]）                      $    $  °CRK     $    $  ANS015.BYTE003  $  X*0.375-48
  $  016.Reference Level Knock Control, 16bit, Cylinder #1                        $    $  V         $    $  ANS016.BYTE003  $  XY*0.0000762939453727016
  $  017.Reference Level Knock Control, 16bit, Cylinder #2                        $    $  V         $    $  ANS017.BYTE003  $  XY*0.0000762939453727016
  $  018.Reference Level Knock Control, 16bit, Cylinder #3                        $    $  V         $    $  ANS018.BYTE003  $  XY*0.0000762939453727016
  $  019.Reference Level Knock Control, 16bit, Cylinder #4                        $    $  V         $    $  ANS019.BYTE003  $  XY*0.0000762939453727016
  $  020.Number Of Misfire:Cylinder#1                                             $    $  -         $    $  ANS020.BYTE003  $  XY
  $  021.Number Of Misfire:Cylinder#2                                             $    $  -         $    $  ANS021.BYTE003  $  XY
  $  022.Number Of Misfire:Cylinder#3                                             $    $  -         $    $  ANS022.BYTE003  $  XY
  $  023.Number Of Misfire:Cylinder#4                                             $    $  -         $    $  ANS023.BYTE003  $  XY
  $  024.Cylinde#1 injection time(TI_1)                                           $    $  Ms        $    $  ANS024.BYTE003  $  XY*0.004
  $  025.Cylinde#2 injection time(TI_2)                                           $    $  Ms        $    $  ANS025.BYTE003  $  XY*0.004
  $  026.Cylinde#3 injection time(TI_3)                                           $    $  Ms        $    $  ANS026.BYTE003  $  XY*0.004
  $  027.Cylinde#4 injection time(TI_4)                                           $    $  Ms        $    $  ANS027.BYTE003  $  XY*0.004
  $  028.Start time of Cylinde#1 injection(SOI_0)                                 $    $  °CRK     $    $  ANS028.BYTE003  $  XY*0.375
  $  029.Start time of Cylinde#2 injection(SOI_1)                                 $    $  °CRK     $    $  ANS029.BYTE003  $  XY*0.375
  $  030.Start time of Cylinde#3 injection(SOI_2)                                 $    $  °CRK     $    $  ANS030.BYTE003  $  XY*0.375
  $  031.Start time of Cylinde#4 injection(SOI_3)                                 $    $  °CRK     $    $  ANS031.BYTE003  $  XY*0.375
  $  032.Intake VVT PWM(VVTPWM_IN)                                                $    $  %         $    $  ANS032.BYTE003  $  XY*0.0061035156
  $  033.Exhaust VVT control PWM                                                  $    $  %         $    $  ANS033.BYTE003  $  XY*0.0061035
  $  034.Actual exhaust VVT angle                                                 $    $  °        $    $  ANS034.BYTE003  $  [0000-7FFF]:XY*0.0078125+0		[8000-FFFF]:(XY-65535)*0.0078125+0
  $  035.Desired exhaust VVT angle                                                $    $  °        $    $  ANS035.BYTE003  $  XY*0.5
  $  036.Output Duty Cycle for SWP                                                $    $  %         $    $  ANS036.BYTE003  $  X*0.390625
  $  037.AC Middle Pressure Switch                                                $    $  -         $    $  ANS037.BYTE003  $  00:OFF		01:ON		其他:-
  $  038.λ closed loop control status                                            $    $  -         $    $  ANS038.BYTE003  $  00:OFF		01:ON		其他:-
  $  039.Interface for Mode #01+#02 short Term Fuel Trim Bank 1 for PID #06       $    $  %         $    $  ANS039.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  040.Fuel Pump Relay                                                          $    $  -         $    $  ANS040.BYTE003  $  X
  $  041.neutral gear switch                                                      $    $  -         $    $  ANS041.BYTE003  $  00:inactive		01:active		其他:-
  $  042.Clutch Position Signal                                                   $    $  %         $    $  ANS042.BYTE003  $  [0000-7FFF]:XY*0.00610352-		[8000-FFFF]:(XY-65535)*0.00610352-
  $  043.Cooling fan PWM（ECFPWM）                                                $    $  %         $    $  ANS043.BYTE003  $  [0000-7FFF]:XY*0.00610352-		[8000-FFFF]:(XY-65535)*0.00610352-

 $ 01.Air conditioning system data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 02 02 00 00 00 00          $
	$	REQ003:7E0 03 22 02 16 00 00 00 00          $
	$	REQ004:7E0 03 22 02 04 00 00 00 00          $
	$	REQ005:7E0 03 22 02 52 00 00 00 00          $
	$	REQ006:7E0 03 22 02 08 00 00 00 00          $
	$	REQ007:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ008:7E0 03 22 02 23 00 00 00 00          $
	$	REQ009:7E0 03 22 02 24 00 00 00 00          $
	$	REQ010:7E0 03 22 02 32 00 00 00 00          $
	$	REQ011:7E0 03 22 02 33 00 00 00 00          $
	$	REQ012:7E0 03 22 02 25 00 00 00 00          $
	$	REQ013:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ014:7E0 03 22 02 27 00 00 00 00          $
	$	REQ015:7E0 03 22 02 FA 00 00 00 00          $
	$	REQ016:7E0 03 22 02 FB 00 00 00 00          $
	$	REQ017:7E0 03 22 02 10 00 00 00 00          $
	$	REQ018:7E0 03 22 03 19 00 00 00 00          $
	$	REQ019:7E0 03 22 03 18 00 00 00 00          $
	$	REQ020:7E0 03 22 03 0D 00 00 00 00          $
	$	REQ021:7E0 03 22 02 55 00 00 00 00          $
	$	REQ022:7E0 03 22 03 05 00 00 00 00          $
	$	REQ023:7E0 03 22 03 06 00 00 00 00          $
	$	REQ024:7E0 03 22 03 08 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                                                 $    $  Nm        $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                                                     $    $  Nm        $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                                                        $    $  Nm        $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Relative Air Mass(Calc. Load Value)                                                 $    $  %         $    $  ANS003.BYTE003  $  X*0.392156862745098
  $  004.Engine Speed                                                                        $    $  rpm       $    $  ANS004.BYTE003  $  XY
  $  005.Idle Speed Control                                                                  $    $  rpm       $    $  ANS005.BYTE003  $  XY
  $  006.Vehicle Speed                                                                       $    $  km/h      $    $  ANS006.BYTE003  $  X*1+1
  $  007.Desired Throttle Position                                                           $    $  °TPS     $    $  ANS007.BYTE003  $  XY*0.007294146
  $  008.Throttle Blade Position Dependent on Poti 1                                         $    $  °TPS     $    $  ANS008.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  009.Throttle Blade Position Dependent on Poti 2                                         $    $  °TPS     $    $  ANS009.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  010.Sensor Voltage from Throttle Potentiometer 1                                        $    $  V         $    $  ANS010.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  011.Sensor Voltage from Throttle Potentiometer 2                                        $    $  V         $    $  ANS011.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  012.Throttle Actuator Control Pwm                                                       $    $  %         $    $  ANS012.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  013.Throttle Angle with Respect to Lower Mechanical Stop                                $    $  °TPS     $    $  ANS013.BYTE003  $  X*0.466825368
  $  014.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop               $    $  V         $    $  ANS014.BYTE003  $  XY*0.000152587890625
  $  015.Acceleration pedal position sensor 1 voltage（V_PVS_1）                             $    $  V         $    $  ANS015.BYTE003  $  XY*0.0048828125
  $  016.Acceleration pedal position sensor 2 voltage（V_PVS_2）                             $    $  V         $    $  ANS016.BYTE003  $  XY*0.0048828125
  $  017.Normalized Angle Acceleration Pedal                                                 $    $  %         $    $  ANS017.BYTE003  $  X*0.390625
  $  018.Temperature of Air conditioner evaporator(TACE)                                     $    $  ℃        $    $  ANS018.BYTE003  $  X*0.75-48
  $  019.Temperature of Air conditioner evaporator voltage(VP_TACE_SENSsensor voltage)       $    $  V         $    $  ANS019.BYTE003  $  XY*0.000152588
  $  020.Electric Fan PWM(ECFPWM)                                                            $    $  %         $    $  ANS020.BYTE003  $  X*0.392
  $  021.Cooling Fan Relay                                                                   $    $  -         $    $  ANS021.BYTE003  $  00:lowspeedfanoff highspeedfanoff		01:lowspeedfanon highspeedfanoff		02:lowspeedfanoff highspeedfanon 		03:lowspeedfanoff highspeedfanon  highspeedfanon		其他:-
  $  022.Air condition request switch(LV_ACIN)                                               $    $  -         $    $  ANS022.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  023.Brake test switch(LV_BTS)                                                           $    $  -         $    $  ANS022.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  024.Brake lamp switch(LV_BLS)                                                           $    $  -         $    $  ANS022.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  025.Clutch switch(LV_CS)                                                                $    $  -         $    $  ANS022.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  026.Starter relay(LV_RLY_ST)                                                            $    $  -         $    $  ANS023.BYTE003  $  if(X1&0x20)y=@0240;else y=@0239;
  $  027.Air condition compressor relay(LV_ACCRLY_OUT)                                       $    $  -         $    $  ANS023.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  028.Main relay(LV_RLY_MAIN）                                                            $    $  -         $    $  ANS023.BYTE003  $  if(X1&0x8)y=@0240;else y=@0239;
  $  029.Electronic fuel pump relay(LV_RLY_EFP)                                              $    $  -         $    $  ANS023.BYTE003  $  if(X1&0x10)y=@0240;else y=@0239;
  $  030.Variable intake manifold relay(LV_VIM)                                              $    $  -         $    $  ANS023.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  031.Air conditioning pressure switch(LV_PRS_SWT)                                        $    $  -         $    $  ANS024.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;

 $ 02.Exhaust gas recirculation data



 $ 03.Evaporative emission data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 02 02 00 00 00 00          $
	$	REQ003:7E0 03 22 02 16 00 00 00 00          $
	$	REQ004:7E0 03 22 02 04 00 00 00 00          $
	$	REQ005:7E0 03 22 02 52 00 00 00 00          $
	$	REQ006:7E0 03 22 02 08 00 00 00 00          $
	$	REQ007:7E0 03 22 02 09 00 00 00 00          $
	$	REQ008:7E0 03 22 02 28 00 00 00 00          $
	$	REQ009:7E0 03 22 02 62 00 00 00 00          $
	$	REQ010:7E0 03 22 02 FE 00 00 00 00          $
	$	REQ011:7E0 03 22 02 17 00 00 00 00          $
	$	REQ012:7E0 03 22 03 1B 00 00 00 00          $
	$	REQ013:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ014:7E0 03 22 02 FD 00 00 00 00          $
	$	REQ015:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ016:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ017:7E0 03 22 02 23 00 00 00 00          $
	$	REQ018:7E0 03 22 02 24 00 00 00 00          $
	$	REQ019:7E0 03 22 02 32 00 00 00 00          $
	$	REQ020:7E0 03 22 02 33 00 00 00 00          $
	$	REQ021:7E0 03 22 02 25 00 00 00 00          $
	$	REQ022:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ023:7E0 03 22 02 27 00 00 00 00          $
	$	REQ024:7E0 03 22 02 FA 00 00 00 00          $
	$	REQ025:7E0 03 22 02 FB 00 00 00 00          $
	$	REQ026:7E0 03 22 02 10 00 00 00 00          $
	$	REQ027:7E0 03 22 02 53 00 00 00 00          $
	$	REQ028:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ029:7E0 03 22 03 24 00 00 00 00          $
	$	REQ030:7E0 03 22 02 46 00 00 00 00          $
	$	REQ031:7E0 03 22 03 04 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                                         $    $  Nm         $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                                             $    $  Nm         $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                                                $    $  Nm         $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Relative Air Mass(Calc. Load Value)                                         $    $  %          $    $  ANS003.BYTE003  $  X*0.392156862745098
  $  004.Engine Speed                                                                $    $  rpm        $    $  ANS004.BYTE003  $  XY
  $  005.Idle Speed Control                                                          $    $  rpm        $    $  ANS005.BYTE003  $  XY
  $  006.Vehicle Speed                                                               $    $  km/h       $    $  ANS006.BYTE003  $  X*1+1
  $  007.Ambient Pressure                                                            $    $  hPa        $    $  ANS007.BYTE003  $  XY*0.0829175249866483
  $  008.Intake Manifold Pressure (Absolute)                                         $    $  hPa        $    $  ANS008.BYTE003  $  XY*0.0829175249866483
  $  009.Actual Intake Manifold Pressure Sensor Voltage                              $    $  V          $    $  ANS009.BYTE003  $  XY*0.000152588
  $  010.Inlet pressure sensor voltage（V_MAP）                                      $    $  V          $    $  ANS010.BYTE003  $  XY*0.000152588
  $  011.Air Mass Flow                                                               $    $  kg/h       $    $  ANS011.BYTE003  $  XY*0.03125
  $  012.Air Flow（MAF_KGH）                                                         $    $  kg/h       $    $  ANS012.BYTE003  $  XY*0.03125
  $  013.Intake Air Temperature                                                      $    $  ℃         $    $  ANS013.BYTE003  $  X*1-48
  $  014.Inlet temperature sensor voltage(V_TIA)                                     $    $  V          $    $  ANS014.BYTE003  $  XY*0.000152588
  $  015.Ambient Air Temperature                                                     $    $  ℃         $    $  ANS015.BYTE003  $  X*0.75+0.75
  $  016.Desired Throttle Position                                                   $    $  °TPS      $    $  ANS016.BYTE003  $  XY*0.007294146
  $  017.Throttle Blade Position Dependent on Poti 1                                 $    $  °TPS      $    $  ANS017.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  018.Throttle Blade Position Dependent on Poti 2                                 $    $  °TPS      $    $  ANS018.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  019.Sensor Voltage from Throttle Potentiometer 1                                $    $  V          $    $  ANS019.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  020.Sensor Voltage from Throttle Potentiometer 2                                $    $  V          $    $  ANS020.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  021.Throttle Actuator Control Pwm                                               $    $  %          $    $  ANS021.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  022.Throttle Angle with Respect to Lower Mechanical Stop                        $    $  °TPS      $    $  ANS022.BYTE003  $  X*0.466825368
  $  023.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop       $    $  V          $    $  ANS023.BYTE003  $  XY*0.000152587890625
  $  024.Acceleration pedal position sensor 1 voltage（V_PVS_1）                     $    $  V          $    $  ANS024.BYTE003  $  XY*0.0048828125
  $  025.Acceleration pedal position sensor 2 voltage（V_PVS_2）                     $    $  V          $    $  ANS025.BYTE003  $  XY*0.0048828125
  $  026.Normalized Angle Acceleration Pedal                                         $    $  %          $    $  ANS026.BYTE003  $  X*0.390625
  $  027.Canister Purge Solenoid                                                     $    $  %          $    $  ANS027.BYTE003  $  X*0.390625
  $  028.Output Duty Cycle for Canister Purge Valve                                  $    $  %          $    $  ANS028.BYTE003  $  X*0.390625
  $  029.Canister Load(CL_MMV)                                                       $    $  -          $    $  ANS029.BYTE003  $  XY*0.000030517578125
  $  030.Standardized Mass Flow from Canister Purge Control                          $    $  mg/stk     $    $  ANS030.BYTE003  $  XY*0.0211947814145113
  $  031.Alternator PWM(ALTPWM)                                                      $    $  %          $    $  ANS031.BYTE003  $  X*0.390625

 $ 04.The fuel system data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 02 02 00 00 00 00          $
	$	REQ003:7E0 03 22 02 16 00 00 00 00          $
	$	REQ004:7E0 03 22 02 04 00 00 00 00          $
	$	REQ005:7E0 03 22 02 52 00 00 00 00          $
	$	REQ006:7E0 03 22 02 08 00 00 00 00          $
	$	REQ007:7E0 03 22 02 09 00 00 00 00          $
	$	REQ008:7E0 03 22 02 28 00 00 00 00          $
	$	REQ009:7E0 03 22 02 62 00 00 00 00          $
	$	REQ010:7E0 03 22 02 FE 00 00 00 00          $
	$	REQ011:7E0 03 22 02 17 00 00 00 00          $
	$	REQ012:7E0 03 22 03 1B 00 00 00 00          $
	$	REQ013:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ014:7E0 03 22 02 FD 00 00 00 00          $
	$	REQ015:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ016:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ017:7E0 03 22 02 23 00 00 00 00          $
	$	REQ018:7E0 03 22 02 24 00 00 00 00          $
	$	REQ019:7E0 03 22 02 32 00 00 00 00          $
	$	REQ020:7E0 03 22 02 33 00 00 00 00          $
	$	REQ021:7E0 03 22 02 25 00 00 00 00          $
	$	REQ022:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ023:7E0 03 22 02 27 00 00 00 00          $
	$	REQ024:7E0 03 22 02 FA 00 00 00 00          $
	$	REQ025:7E0 03 22 02 FB 00 00 00 00          $
	$	REQ026:7E0 03 22 02 10 00 00 00 00          $
	$	REQ027:7E0 03 22 02 3A 00 00 00 00          $
	$	REQ028:7E0 03 22 02 06 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                                         $    $  Nm        $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                                             $    $  Nm        $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                                                $    $  Nm        $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Relative Air Mass(Calc. Load Value)                                         $    $  %         $    $  ANS003.BYTE003  $  X*0.392156862745098
  $  004.Engine Speed                                                                $    $  rpm       $    $  ANS004.BYTE003  $  XY
  $  005.Idle Speed Control                                                          $    $  rpm       $    $  ANS005.BYTE003  $  XY
  $  006.Vehicle Speed                                                               $    $  km/h      $    $  ANS006.BYTE003  $  X*1+1
  $  007.Ambient Pressure                                                            $    $  hPa       $    $  ANS007.BYTE003  $  XY*0.0829175249866483
  $  008.Intake Manifold Pressure (Absolute)                                         $    $  hPa       $    $  ANS008.BYTE003  $  XY*0.0829175249866483
  $  009.Actual Intake Manifold Pressure Sensor Voltage                              $    $  V         $    $  ANS009.BYTE003  $  XY*0.000152588
  $  010.Inlet pressure sensor voltage（V_MAP）                                      $    $  V         $    $  ANS010.BYTE003  $  XY*0.000152588
  $  011.Air Mass Flow                                                               $    $  kg/h      $    $  ANS011.BYTE003  $  XY*0.03125
  $  012.Air Flow（MAF_KGH）                                                         $    $  kg/h      $    $  ANS012.BYTE003  $  XY*0.03125
  $  013.Intake Air Temperature                                                      $    $  ℃        $    $  ANS013.BYTE003  $  X*1-48
  $  014.Inlet temperature sensor voltage(V_TIA)                                     $    $  V         $    $  ANS014.BYTE003  $  XY*0.000152588
  $  015.Ambient Air Temperature                                                     $    $  ℃        $    $  ANS015.BYTE003  $  X*0.75+0.75
  $  016.Desired Throttle Position                                                   $    $  °TPS     $    $  ANS016.BYTE003  $  XY*0.007294146
  $  017.Throttle Blade Position Dependent on Poti 1                                 $    $  °TPS     $    $  ANS017.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  018.Throttle Blade Position Dependent on Poti 2                                 $    $  °TPS     $    $  ANS018.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  019.Sensor Voltage from Throttle Potentiometer 1                                $    $  V         $    $  ANS019.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  020.Sensor Voltage from Throttle Potentiometer 2                                $    $  V         $    $  ANS020.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  021.Throttle Actuator Control Pwm                                               $    $  %         $    $  ANS021.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  022.Throttle Angle with Respect to Lower Mechanical Stop                        $    $  °TPS     $    $  ANS022.BYTE003  $  X*0.466825368
  $  023.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop       $    $  V         $    $  ANS023.BYTE003  $  XY*0.000152587890625
  $  024.Acceleration pedal position sensor 1 voltage（V_PVS_1）                     $    $  V         $    $  ANS024.BYTE003  $  XY*0.0048828125
  $  025.Acceleration pedal position sensor 2 voltage（V_PVS_2）                     $    $  V         $    $  ANS025.BYTE003  $  XY*0.0048828125
  $  026.Normalized Angle Acceleration Pedal                                         $    $  %         $    $  ANS026.BYTE003  $  X*0.390625
  $  027.Injection Time                                                              $    $  Ms        $    $  ANS027.BYTE003  $  08个字节的HEX显示
  $  028.Fuel Level                                                                  $    $  %         $    $  ANS028.BYTE003  $  X*0.390625

 $ 05.Fuel adjustment data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 02 02 00 00 00 00          $
	$	REQ003:7E0 03 22 02 16 00 00 00 00          $
	$	REQ004:7E0 03 22 02 04 00 00 00 00          $
	$	REQ005:7E0 03 22 02 52 00 00 00 00          $
	$	REQ006:7E0 03 22 02 08 00 00 00 00          $
	$	REQ007:7E0 03 22 02 09 00 00 00 00          $
	$	REQ008:7E0 03 22 02 28 00 00 00 00          $
	$	REQ009:7E0 03 22 02 62 00 00 00 00          $
	$	REQ010:7E0 03 22 02 FE 00 00 00 00          $
	$	REQ011:7E0 03 22 02 17 00 00 00 00          $
	$	REQ012:7E0 03 22 03 1B 00 00 00 00          $
	$	REQ013:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ014:7E0 03 22 02 FD 00 00 00 00          $
	$	REQ015:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ016:7E0 03 22 02 22 00 00 00 00          $
	$	REQ017:7E0 03 22 02 47 00 00 00 00          $
	$	REQ018:7E0 03 22 03 14 00 00 00 00          $
	$	REQ019:7E0 03 22 03 15 00 00 00 00          $
	$	REQ020:7E0 03 22 03 16 00 00 00 00          $
	$	REQ021:7E0 03 22 03 17 00 00 00 00          $
	$	REQ022:7E0 03 22 02 40 00 00 00 00          $
	$	REQ023:7E0 03 22 02 41 00 00 00 00          $
	$	REQ024:7E0 03 22 02 42 00 00 00 00          $
	$	REQ025:7E0 03 22 02 43 00 00 00 00          $
	$	REQ026:7E0 03 22 02 60 00 00 00 00          $
	$	REQ027:7E0 03 22 02 61 00 00 00 00          $
	$	REQ028:7E0 03 22 03 0A 00 00 00 00          $
	$	REQ029:7E0 03 22 03 0B 00 00 00 00          $
	$	REQ030:7E0 03 22 02 2F 00 00 00 00          $
	$	REQ031:7E0 03 22 03 22 00 00 00 00          $
	$	REQ032:7E0 03 22 03 12 00 00 00 00          $
	$	REQ033:7E0 03 22 03 13 00 00 00 00          $
	$	REQ034:7E0 03 22 03 0E 00 00 00 00          $
	$	REQ035:7E0 03 22 03 0F 00 00 00 00          $
	$	REQ036:7E0 03 22 03 10 00 00 00 00          $
	$	REQ037:7E0 03 22 03 11 00 00 00 00          $
	$	REQ038:7E0 03 22 03 1D 00 00 00 00          $
	$	REQ039:7E0 03 22 03 1E 00 00 00 00          $
	$	REQ040:7E0 03 22 03 1F 00 00 00 00          $
	$	REQ041:7E0 03 22 03 20 00 00 00 00          $
	$	REQ042:7E0 03 22 03 0C 00 00 00 00          $
	$	REQ043:7E0 03 22 02 53 00 00 00 00          $
	$	REQ044:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ045:7E0 03 22 03 24 00 00 00 00          $
	$	REQ046:7E0 03 22 02 46 00 00 00 00          $
	$	REQ047:7E0 03 22 03 04 00 00 00 00          $
	$	REQ048:7E0 03 22 02 57 00 00 00 00          $
	$	REQ049:7E0 03 22 03 29 00 00 00 00          $
	$	REQ050:7E0 03 22 03 2A 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                       $    $  Nm         $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                           $    $  Nm         $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                              $    $  Nm         $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Relative Air Mass(Calc. Load Value)                       $    $  %          $    $  ANS003.BYTE003  $  X*0.392156862745098
  $  004.Engine Speed                                              $    $  rpm        $    $  ANS004.BYTE003  $  XY
  $  005.Idle Speed Control                                        $    $  rpm        $    $  ANS005.BYTE003  $  XY
  $  006.Vehicle Speed                                             $    $  km/h       $    $  ANS006.BYTE003  $  X*1+1
  $  007.Ambient Pressure                                          $    $  hPa        $    $  ANS007.BYTE003  $  XY*0.0829175249866483
  $  008.Intake Manifold Pressure (Absolute)                       $    $  hPa        $    $  ANS008.BYTE003  $  XY*0.0829175249866483
  $  009.Actual Intake Manifold Pressure Sensor Voltage            $    $  V          $    $  ANS009.BYTE003  $  XY*0.000152588
  $  010.Inlet pressure sensor voltage（V_MAP）                    $    $  V          $    $  ANS010.BYTE003  $  XY*0.000152588
  $  011.Air Mass Flow                                             $    $  kg/h       $    $  ANS011.BYTE003  $  XY*0.03125
  $  012.Air Flow（MAF_KGH）                                       $    $  kg/h       $    $  ANS012.BYTE003  $  XY*0.03125
  $  013.Intake Air Temperature                                    $    $  ℃         $    $  ANS013.BYTE003  $  X*1-48
  $  014.Inlet temperature sensor voltage(V_TIA)                   $    $  V          $    $  ANS014.BYTE003  $  XY*0.000152588
  $  015.Ambient Air Temperature                                   $    $  ℃         $    $  ANS015.BYTE003  $  X*0.75+0.75
  $  016.Real Ignition Angle                                       $    $  °CRK      $    $  ANS016.BYTE003  $  X*0.375-35.625
  $  017.Basic Ignition Angle                                      $    $  °CRK      $    $  ANS017.BYTE003  $  X*0.375-35.625
  $  018.Cylinder#1 ignition advance Angle（IGA_CYL_KNK[0]）       $    $  °CRK      $    $  ANS018.BYTE003  $  X*0.375-48
  $  019.Cylinder#2 ignition advance Angle（IGA_CYL_KNK[1]）       $    $  °CRK      $    $  ANS019.BYTE003  $  X*0.375-48
  $  020.Cylinder#3 ignition advance Angle（IGA_CYL_KNK[2]）       $    $  °CRK      $    $  ANS020.BYTE003  $  X*0.375-48
  $  021.Cylinder#4 ignition advance Angle（IGA_CYL_KNK[3]）       $    $  °CRK      $    $  ANS021.BYTE003  $  X*0.375-48
  $  022.Reference Level Knock Control, 16bit, Cylinder #1         $    $  V          $    $  ANS022.BYTE003  $  XY*0.0000762939453727016
  $  023.Reference Level Knock Control, 16bit, Cylinder #2         $    $  V          $    $  ANS023.BYTE003  $  XY*0.0000762939453727016
  $  024.Reference Level Knock Control, 16bit, Cylinder #3         $    $  V          $    $  ANS024.BYTE003  $  XY*0.0000762939453727016
  $  025.Reference Level Knock Control, 16bit, Cylinder #4         $    $  V          $    $  ANS025.BYTE003  $  XY*0.0000762939453727016
  $  026.O2 Sensor Voltage Bank1, Sensor 1                         $    $  V          $    $  ANS026.BYTE003  $  XY*0.0048828125
  $  027.O2 Sensor Voltage Bank1, Sensor 2                         $    $  V          $    $  ANS027.BYTE003  $  XY*0.0048828125
  $  028.Lambda sensor heat PWM_UP(LSHPWM_UP_1)                    $    $  %          $    $  ANS028.BYTE003  $  X*0.390625
  $  029.Lambda sensor heat PWM_DOWN(LSHPWM_DOWN_1)                $    $  %          $    $  ANS029.BYTE003  $  X*0.390625
  $  030.Lambda Controller Output                                  $    $  %          $    $  ANS030.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  031.Cylinder#1 Fuel Trim(TI_LAM_1)                            $    $  %          $    $  ANS031.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  032.Fuel Trim factor(FAC_LAM_COR)                             $    $  %          $    $  ANS032.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  033.Fuel AutoLearn factor(FAC_LAM_AD_OUT)                     $    $  %          $    $  ANS033.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  034.Cylinde#1 injection time(TI_1)                            $    $  Ms         $    $  ANS034.BYTE003  $  XY*0.004
  $  035.Cylinde#2 injection time(TI_2)                            $    $  Ms         $    $  ANS035.BYTE003  $  XY*0.004
  $  036.Cylinde#3 injection time(TI_3)                            $    $  Ms         $    $  ANS036.BYTE003  $  XY*0.004
  $  037.Cylinde#4 injection time(TI_4)                            $    $  Ms         $    $  ANS037.BYTE003  $  XY*0.004
  $  038.Start time of Cylinde#1 injection(SOI_0)                  $    $  °CRK      $    $  ANS038.BYTE003  $  XY*0.375
  $  039.Start time of Cylinde#2 injection(SOI_1)                  $    $  °CRK      $    $  ANS039.BYTE003  $  XY*0.375
  $  040.Start time of Cylinde#3 injection(SOI_2)                  $    $  °CRK      $    $  ANS040.BYTE003  $  XY*0.375
  $  041.Start time of Cylinde#4 injection(SOI_3)                  $    $  °CRK      $    $  ANS041.BYTE003  $  XY*0.375
  $  042.Intake VVT PWM(VVTPWM_IN)                                 $    $  %          $    $  ANS042.BYTE003  $  XY*0.0061035156
  $  043.Canister Purge Solenoid                                   $    $  %          $    $  ANS043.BYTE003  $  X*0.390625
  $  044.Output Duty Cycle for Canister Purge Valve                $    $  %          $    $  ANS044.BYTE003  $  X*0.390625
  $  045.Canister Load(CL_MMV)                                     $    $  -          $    $  ANS045.BYTE003  $  XY*0.000030517578125
  $  046.Standardized Mass Flow from Canister Purge Control        $    $  mg/stk     $    $  ANS046.BYTE003  $  XY*0.0211947814145113
  $  047.Alternator PWM(ALTPWM)                                    $    $  %          $    $  ANS047.BYTE003  $  X*0.390625
  $  048.Inlet Camshaft Control                                    $    $  -          $    $  ANS048.BYTE003  $  00: initial state		01: enter HOLD state		02: hold state		03: adjust state		其他:-
  $  049.State of intake VVT(STATE_IVVT)                           $    $  -          $    $  ANS049.BYTE003  $  00:passive		01:ready		02:adaptive		03:enabled		其他:-
  $  050.State of intake VVT PMW(STATE_IVVT_PWM_IN)                $    $  -          $    $  ANS050.BYTE003  $  00: control		01: active		02: passive		其他:-

 $ 06.Oxygen sensor data

	$	REQ000:7E0 03 22 02 01 00 00 00 00          $
	$	REQ001:7E0 03 22 02 02 00 00 00 00          $
	$	REQ002:7E0 03 22 02 16 00 00 00 00          $
	$	REQ003:7E0 03 22 02 04 00 00 00 00          $
	$	REQ004:7E0 03 22 02 52 00 00 00 00          $
	$	REQ005:7E0 03 22 02 08 00 00 00 00          $
	$	REQ006:7E0 03 22 02 09 00 00 00 00          $
	$	REQ007:7E0 03 22 02 28 00 00 00 00          $
	$	REQ008:7E0 03 22 02 62 00 00 00 00          $
	$	REQ009:7E0 03 22 02 FE 00 00 00 00          $
	$	REQ010:7E0 03 22 02 17 00 00 00 00          $
	$	REQ011:7E0 03 22 03 1B 00 00 00 00          $
	$	REQ012:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ013:7E0 03 22 02 FD 00 00 00 00          $
	$	REQ014:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ015:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ016:7E0 03 22 02 23 00 00 00 00          $
	$	REQ017:7E0 03 22 02 24 00 00 00 00          $
	$	REQ018:7E0 03 22 02 32 00 00 00 00          $
	$	REQ019:7E0 03 22 02 33 00 00 00 00          $
	$	REQ020:7E0 03 22 02 25 00 00 00 00          $
	$	REQ021:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ022:7E0 03 22 02 27 00 00 00 00          $
	$	REQ023:7E0 03 22 02 FA 00 00 00 00          $
	$	REQ024:7E0 03 22 02 FB 00 00 00 00          $
	$	REQ025:7E0 03 22 02 10 00 00 00 00          $
	$	REQ026:7E0 03 22 02 22 00 00 00 00          $
	$	REQ027:7E0 03 22 02 47 00 00 00 00          $
	$	REQ028:7E0 03 22 03 14 00 00 00 00          $
	$	REQ029:7E0 03 22 03 15 00 00 00 00          $
	$	REQ030:7E0 03 22 03 16 00 00 00 00          $
	$	REQ031:7E0 03 22 03 17 00 00 00 00          $
	$	REQ032:7E0 03 22 02 49 00 00 00 00          $
	$	REQ033:7E0 03 22 02 4A 00 00 00 00          $
	$	REQ034:7E0 03 22 02 4B 00 00 00 00          $
	$	REQ035:7E0 03 22 02 4C 00 00 00 00          $
	$	REQ036:7E0 03 22 02 60 00 00 00 00          $
	$	REQ037:7E0 03 22 02 61 00 00 00 00          $
	$	REQ038:7E0 03 22 03 0A 00 00 00 00          $
	$	REQ039:7E0 03 22 03 0B 00 00 00 00          $
	$	REQ040:7E0 03 22 02 2F 00 00 00 00          $
	$	REQ041:7E0 03 22 03 22 00 00 00 00          $
	$	REQ042:7E0 03 22 03 12 00 00 00 00          $
	$	REQ043:7E0 03 22 03 13 00 00 00 00          $
	$	REQ044:7E0 03 22 03 0E 00 00 00 00          $
	$	REQ045:7E0 03 22 03 0F 00 00 00 00          $
	$	REQ046:7E0 03 22 03 10 00 00 00 00          $
	$	REQ047:7E0 03 22 03 11 00 00 00 00          $
	$	REQ048:7E0 03 22 03 1D 00 00 00 00          $
	$	REQ049:7E0 03 22 03 1E 00 00 00 00          $
	$	REQ050:7E0 03 22 03 1F 00 00 00 00          $
	$	REQ051:7E0 03 22 03 20 00 00 00 00          $
	$	REQ052:7E0 03 22 03 0C 00 00 00 00          $
	$	REQ053:7E0 03 22 02 53 00 00 00 00          $
	$	REQ054:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ055:7E0 03 22 03 24 00 00 00 00          $
	$	REQ056:7E0 03 22 02 46 00 00 00 00          $
	$	REQ057:7E0 03 22 03 04 00 00 00 00          $
	$	REQ058:7E0 03 22 02 57 00 00 00 00          $
	$	REQ059:7E0 03 22 03 29 00 00 00 00          $
	$	REQ060:7E0 03 22 03 2A 00 00 00 00          $

  $  000.Desired Indicated Engine Torque                                             $    $  Nm         $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Indicated Real Engine Torque                                                $    $  Nm         $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Relative Air Mass(Calc. Load Value)                                         $    $  %          $    $  ANS002.BYTE003  $  X*0.392156862745098
  $  003.Engine Speed                                                                $    $  rpm        $    $  ANS003.BYTE003  $  XY
  $  004.Idle Speed Control                                                          $    $  rpm        $    $  ANS004.BYTE003  $  XY
  $  005.Vehicle Speed                                                               $    $  km/h       $    $  ANS005.BYTE003  $  X*1+1
  $  006.Ambient Pressure                                                            $    $  hPa        $    $  ANS006.BYTE003  $  XY*0.0829175249866483
  $  007.Intake Manifold Pressure (Absolute)                                         $    $  hPa        $    $  ANS007.BYTE003  $  XY*0.0829175249866483
  $  008.Actual Intake Manifold Pressure Sensor Voltage                              $    $  V          $    $  ANS008.BYTE003  $  XY*0.000152588
  $  009.Inlet pressure sensor voltage（V_MAP）                                      $    $  V          $    $  ANS009.BYTE003  $  XY*0.000152588
  $  010.Air Mass Flow                                                               $    $  kg/h       $    $  ANS010.BYTE003  $  XY*0.03125
  $  011.Air Flow（MAF_KGH）                                                         $    $  kg/h       $    $  ANS011.BYTE003  $  XY*0.03125
  $  012.Intake Air Temperature                                                      $    $  ℃         $    $  ANS012.BYTE003  $  X*1-48
  $  013.Inlet temperature sensor voltage(V_TIA)                                     $    $  V          $    $  ANS013.BYTE003  $  XY*0.000152588
  $  014.Ambient Air Temperature                                                     $    $  ℃         $    $  ANS014.BYTE003  $  X*0.75+0.75
  $  015.Desired Throttle Position                                                   $    $  °TPS      $    $  ANS015.BYTE003  $  XY*0.007294146
  $  016.Throttle Blade Position Dependent on Poti 1                                 $    $  °TPS      $    $  ANS016.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  017.Throttle Blade Position Dependent on Poti 2                                 $    $  °TPS      $    $  ANS017.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  018.Sensor Voltage from Throttle Potentiometer 1                                $    $  V          $    $  ANS018.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  019.Sensor Voltage from Throttle Potentiometer 2                                $    $  V          $    $  ANS019.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  020.Throttle Actuator Control Pwm                                               $    $  %          $    $  ANS020.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  021.Throttle Angle with Respect to Lower Mechanical Stop                        $    $  °TPS      $    $  ANS021.BYTE003  $  X*0.466825368
  $  022.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop       $    $  V          $    $  ANS022.BYTE003  $  XY*0.000152587890625
  $  023.Acceleration pedal position sensor 1 voltage（V_PVS_1）                     $    $  V          $    $  ANS023.BYTE003  $  XY*0.0048828125
  $  024.Acceleration pedal position sensor 2 voltage（V_PVS_2）                     $    $  V          $    $  ANS024.BYTE003  $  XY*0.0048828125
  $  025.Normalized Angle Acceleration Pedal                                         $    $  %          $    $  ANS025.BYTE003  $  X*0.390625
  $  026.Real Ignition Angle                                                         $    $  °CRK      $    $  ANS026.BYTE003  $  X*0.375-35.625
  $  027.Basic Ignition Angle                                                        $    $  °CRK      $    $  ANS027.BYTE003  $  X*0.375-35.625
  $  028.Cylinder#1 ignition advance Angle（IGA_CYL_KNK[0]）                         $    $  °CRK      $    $  ANS028.BYTE003  $  X*0.375-48
  $  029.Cylinder#2 ignition advance Angle（IGA_CYL_KNK[1]）                         $    $  °CRK      $    $  ANS029.BYTE003  $  X*0.375-48
  $  030.Cylinder#3 ignition advance Angle（IGA_CYL_KNK[2]）                         $    $  °CRK      $    $  ANS030.BYTE003  $  X*0.375-48
  $  031.Cylinder#4 ignition advance Angle（IGA_CYL_KNK[3]）                         $    $  °CRK      $    $  ANS031.BYTE003  $  X*0.375-48
  $  032.Number Of Misfire:Cylinder#1                                                $    $  -          $    $  ANS032.BYTE003  $  XY
  $  033.Number Of Misfire:Cylinder#2                                                $    $  -          $    $  ANS033.BYTE003  $  XY
  $  034.Number Of Misfire:Cylinder#3                                                $    $  -          $    $  ANS034.BYTE003  $  XY
  $  035.Number Of Misfire:Cylinder#4                                                $    $  -          $    $  ANS035.BYTE003  $  XY
  $  036.O2 Sensor Voltage Bank1, Sensor 1                                           $    $  V          $    $  ANS036.BYTE003  $  XY*0.0048828125
  $  037.O2 Sensor Voltage Bank1, Sensor 2                                           $    $  V          $    $  ANS037.BYTE003  $  XY*0.0048828125
  $  038.Lambda sensor heat PWM_UP(LSHPWM_UP_1)                                      $    $  %          $    $  ANS038.BYTE003  $  X*0.390625
  $  039.Lambda sensor heat PWM_DOWN(LSHPWM_DOWN_1)                                  $    $  %          $    $  ANS039.BYTE003  $  X*0.390625
  $  040.Lambda Controller Output                                                    $    $  %          $    $  ANS040.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  041.Cylinder#1 Fuel Trim(TI_LAM_1)                                              $    $  %          $    $  ANS041.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  042.Fuel Trim factor(FAC_LAM_COR)                                               $    $  %          $    $  ANS042.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  043.Fuel AutoLearn factor(FAC_LAM_AD_OUT)                                       $    $  %          $    $  ANS043.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  044.Cylinde#1 injection time(TI_1)                                              $    $  Ms         $    $  ANS044.BYTE003  $  XY*0.004
  $  045.Cylinde#2 injection time(TI_2)                                              $    $  Ms         $    $  ANS045.BYTE003  $  XY*0.004
  $  046.Cylinde#3 injection time(TI_3)                                              $    $  Ms         $    $  ANS046.BYTE003  $  XY*0.004
  $  047.Cylinde#4 injection time(TI_4)                                              $    $  Ms         $    $  ANS047.BYTE003  $  XY*0.004
  $  048.Start time of Cylinde#1 injection(SOI_0)                                    $    $  °CRK      $    $  ANS048.BYTE003  $  XY*0.375
  $  049.Start time of Cylinde#2 injection(SOI_1)                                    $    $  °CRK      $    $  ANS049.BYTE003  $  XY*0.375
  $  050.Start time of Cylinde#3 injection(SOI_2)                                    $    $  °CRK      $    $  ANS050.BYTE003  $  XY*0.375
  $  051.Start time of Cylinde#4 injection(SOI_3)                                    $    $  °CRK      $    $  ANS051.BYTE003  $  XY*0.375
  $  052.Intake VVT PWM(VVTPWM_IN)                                                   $    $  %          $    $  ANS052.BYTE003  $  XY*0.0061035156
  $  053.Canister Purge Solenoid                                                     $    $  %          $    $  ANS053.BYTE003  $  X*0.390625
  $  054.Output Duty Cycle for Canister Purge Valve                                  $    $  %          $    $  ANS054.BYTE003  $  X*0.390625
  $  055.Canister Load(CL_MMV)                                                       $    $  -          $    $  ANS055.BYTE003  $  XY*0.000030517578125
  $  056.Standardized Mass Flow from Canister Purge Control                          $    $  mg/stk     $    $  ANS056.BYTE003  $  XY*0.0211947814145113
  $  057.Alternator PWM(ALTPWM)                                                      $    $  %          $    $  ANS057.BYTE003  $  X*0.390625
  $  058.Inlet Camshaft Control                                                      $    $  -          $    $  ANS058.BYTE003  $  00: initial state		01: enter HOLD state		02: hold state		03: adjust state		其他:-
  $  059.State of intake VVT(STATE_IVVT)                                             $    $  -          $    $  ANS059.BYTE003  $  00:passive		01:ready		02:adaptive		03:enabled		其他:-
  $  060.State of intake VVT PMW(STATE_IVVT_PWM_IN)                                  $    $  -          $    $  ANS060.BYTE003  $  00: control		01: active		02: passive		其他:-

 $ 07.Ignition data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 02 02 00 00 00 00          $
	$	REQ003:7E0 03 22 02 16 00 00 00 00          $
	$	REQ004:7E0 03 22 02 04 00 00 00 00          $
	$	REQ005:7E0 03 22 02 52 00 00 00 00          $
	$	REQ006:7E0 03 22 02 08 00 00 00 00          $
	$	REQ007:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ008:7E0 03 22 02 23 00 00 00 00          $
	$	REQ009:7E0 03 22 02 24 00 00 00 00          $
	$	REQ010:7E0 03 22 02 32 00 00 00 00          $
	$	REQ011:7E0 03 22 02 33 00 00 00 00          $
	$	REQ012:7E0 03 22 02 25 00 00 00 00          $
	$	REQ013:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ014:7E0 03 22 02 27 00 00 00 00          $
	$	REQ015:7E0 03 22 02 FA 00 00 00 00          $
	$	REQ016:7E0 03 22 02 FB 00 00 00 00          $
	$	REQ017:7E0 03 22 02 10 00 00 00 00          $
	$	REQ018:7E0 03 22 02 22 00 00 00 00          $
	$	REQ019:7E0 03 22 02 47 00 00 00 00          $
	$	REQ020:7E0 03 22 03 14 00 00 00 00          $
	$	REQ021:7E0 03 22 03 15 00 00 00 00          $
	$	REQ022:7E0 03 22 03 16 00 00 00 00          $
	$	REQ023:7E0 03 22 03 17 00 00 00 00          $
	$	REQ024:7E0 03 22 02 40 00 00 00 00          $
	$	REQ025:7E0 03 22 02 41 00 00 00 00          $
	$	REQ026:7E0 03 22 02 42 00 00 00 00          $
	$	REQ027:7E0 03 22 02 43 00 00 00 00          $
	$	REQ028:7E0 03 22 02 49 00 00 00 00          $
	$	REQ029:7E0 03 22 02 4A 00 00 00 00          $
	$	REQ030:7E0 03 22 02 4B 00 00 00 00          $
	$	REQ031:7E0 03 22 02 4C 00 00 00 00          $
	$	REQ032:7E0 03 22 03 0E 00 00 00 00          $
	$	REQ033:7E0 03 22 03 0F 00 00 00 00          $
	$	REQ034:7E0 03 22 03 10 00 00 00 00          $
	$	REQ035:7E0 03 22 03 11 00 00 00 00          $
	$	REQ036:7E0 03 22 03 1D 00 00 00 00          $
	$	REQ037:7E0 03 22 03 1E 00 00 00 00          $
	$	REQ038:7E0 03 22 03 1F 00 00 00 00          $
	$	REQ039:7E0 03 22 03 20 00 00 00 00          $
	$	REQ040:7E0 03 22 03 0C 00 00 00 00          $
	$	REQ041:7E0 03 22 02 53 00 00 00 00          $
	$	REQ042:7E0 03 22 02 57 00 00 00 00          $
	$	REQ043:7E0 03 22 03 29 00 00 00 00          $
	$	REQ044:7E0 03 22 03 2A 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                                         $    $  Nm        $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                                             $    $  Nm        $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                                                $    $  Nm        $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Relative Air Mass(Calc. Load Value)                                         $    $  %         $    $  ANS003.BYTE003  $  X*0.392156862745098
  $  004.Engine Speed                                                                $    $  rpm       $    $  ANS004.BYTE003  $  XY
  $  005.Idle Speed Control                                                          $    $  rpm       $    $  ANS005.BYTE003  $  XY
  $  006.Vehicle Speed                                                               $    $  km/h      $    $  ANS006.BYTE003  $  X*1+1
  $  007.Desired Throttle Position                                                   $    $  °TPS     $    $  ANS007.BYTE003  $  XY*0.007294146
  $  008.Throttle Blade Position Dependent on Poti 1                                 $    $  °TPS     $    $  ANS008.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  009.Throttle Blade Position Dependent on Poti 2                                 $    $  °TPS     $    $  ANS009.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  010.Sensor Voltage from Throttle Potentiometer 1                                $    $  V         $    $  ANS010.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  011.Sensor Voltage from Throttle Potentiometer 2                                $    $  V         $    $  ANS011.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  012.Throttle Actuator Control Pwm                                               $    $  %         $    $  ANS012.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  013.Throttle Angle with Respect to Lower Mechanical Stop                        $    $  °TPS     $    $  ANS013.BYTE003  $  X*0.466825368
  $  014.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop       $    $  V         $    $  ANS014.BYTE003  $  XY*0.000152587890625
  $  015.Acceleration pedal position sensor 1 voltage（V_PVS_1）                     $    $  V         $    $  ANS015.BYTE003  $  XY*0.0048828125
  $  016.Acceleration pedal position sensor 2 voltage（V_PVS_2）                     $    $  V         $    $  ANS016.BYTE003  $  XY*0.0048828125
  $  017.Normalized Angle Acceleration Pedal                                         $    $  %         $    $  ANS017.BYTE003  $  X*0.390625
  $  018.Real Ignition Angle                                                         $    $  °CRK     $    $  ANS018.BYTE003  $  X*0.375-35.625
  $  019.Basic Ignition Angle                                                        $    $  °CRK     $    $  ANS019.BYTE003  $  X*0.375-35.625
  $  020.Cylinder#1 ignition advance Angle（IGA_CYL_KNK[0]）                         $    $  °CRK     $    $  ANS020.BYTE003  $  X*0.375-48
  $  021.Cylinder#2 ignition advance Angle（IGA_CYL_KNK[1]）                         $    $  °CRK     $    $  ANS021.BYTE003  $  X*0.375-48
  $  022.Cylinder#3 ignition advance Angle（IGA_CYL_KNK[2]）                         $    $  °CRK     $    $  ANS022.BYTE003  $  X*0.375-48
  $  023.Cylinder#4 ignition advance Angle（IGA_CYL_KNK[3]）                         $    $  °CRK     $    $  ANS023.BYTE003  $  X*0.375-48
  $  024.Reference Level Knock Control, 16bit, Cylinder #1                           $    $  V         $    $  ANS024.BYTE003  $  XY*0.0000762939453727016
  $  025.Reference Level Knock Control, 16bit, Cylinder #2                           $    $  V         $    $  ANS025.BYTE003  $  XY*0.0000762939453727016
  $  026.Reference Level Knock Control, 16bit, Cylinder #3                           $    $  V         $    $  ANS026.BYTE003  $  XY*0.0000762939453727016
  $  027.Reference Level Knock Control, 16bit, Cylinder #4                           $    $  V         $    $  ANS027.BYTE003  $  XY*0.0000762939453727016
  $  028.Number Of Misfire:Cylinder#1                                                $    $  -         $    $  ANS028.BYTE003  $  XY
  $  029.Number Of Misfire:Cylinder#2                                                $    $  -         $    $  ANS029.BYTE003  $  XY
  $  030.Number Of Misfire:Cylinder#3                                                $    $  -         $    $  ANS030.BYTE003  $  XY
  $  031.Number Of Misfire:Cylinder#4                                                $    $  -         $    $  ANS031.BYTE003  $  XY
  $  032.Cylinde#1 injection time(TI_1)                                              $    $  Ms        $    $  ANS032.BYTE003  $  XY*0.004
  $  033.Cylinde#2 injection time(TI_2)                                              $    $  Ms        $    $  ANS033.BYTE003  $  XY*0.004
  $  034.Cylinde#3 injection time(TI_3)                                              $    $  Ms        $    $  ANS034.BYTE003  $  XY*0.004
  $  035.Cylinde#4 injection time(TI_4)                                              $    $  Ms        $    $  ANS035.BYTE003  $  XY*0.004
  $  036.Start time of Cylinde#1 injection(SOI_0)                                    $    $  °CRK     $    $  ANS036.BYTE003  $  XY*0.375
  $  037.Start time of Cylinde#2 injection(SOI_1)                                    $    $  °CRK     $    $  ANS037.BYTE003  $  XY*0.375
  $  038.Start time of Cylinde#3 injection(SOI_2)                                    $    $  °CRK     $    $  ANS038.BYTE003  $  XY*0.375
  $  039.Start time of Cylinde#4 injection(SOI_3)                                    $    $  °CRK     $    $  ANS039.BYTE003  $  XY*0.375
  $  040.Intake VVT PWM(VVTPWM_IN)                                                   $    $  %         $    $  ANS040.BYTE003  $  XY*0.0061035156
  $  041.Canister Purge Solenoid                                                     $    $  %         $    $  ANS041.BYTE003  $  X*0.390625
  $  042.Inlet Camshaft Control                                                      $    $  -         $    $  ANS042.BYTE003  $  00: initial state		01: enter HOLD state		02: hold state		03: adjust state		其他:-
  $  043.State of intake VVT(STATE_IVVT)                                             $    $  -         $    $  ANS043.BYTE003  $  00:passive		01:ready		02:adaptive		03:enabled		其他:-
  $  044.State of intake VVT PMW(STATE_IVVT_PWM_IN)                                  $    $  -         $    $  ANS044.BYTE003  $  00: control		01: active		02: passive		其他:-

 $ 08.Air intake data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 02 02 00 00 00 00          $
	$	REQ003:7E0 03 22 02 16 00 00 00 00          $
	$	REQ004:7E0 03 22 02 04 00 00 00 00          $
	$	REQ005:7E0 03 22 02 52 00 00 00 00          $
	$	REQ006:7E0 03 22 02 08 00 00 00 00          $
	$	REQ007:7E0 03 22 02 09 00 00 00 00          $
	$	REQ008:7E0 03 22 02 28 00 00 00 00          $
	$	REQ009:7E0 03 22 02 62 00 00 00 00          $
	$	REQ010:7E0 03 22 02 FE 00 00 00 00          $
	$	REQ011:7E0 03 22 02 17 00 00 00 00          $
	$	REQ012:7E0 03 22 03 1B 00 00 00 00          $
	$	REQ013:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ014:7E0 03 22 02 FD 00 00 00 00          $
	$	REQ015:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ016:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ017:7E0 03 22 02 23 00 00 00 00          $
	$	REQ018:7E0 03 22 02 24 00 00 00 00          $
	$	REQ019:7E0 03 22 02 32 00 00 00 00          $
	$	REQ020:7E0 03 22 02 33 00 00 00 00          $
	$	REQ021:7E0 03 22 02 25 00 00 00 00          $
	$	REQ022:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ023:7E0 03 22 02 27 00 00 00 00          $
	$	REQ024:7E0 03 22 02 FA 00 00 00 00          $
	$	REQ025:7E0 03 22 02 FB 00 00 00 00          $
	$	REQ026:7E0 03 22 02 10 00 00 00 00          $
	$	REQ027:7E0 03 22 02 60 00 00 00 00          $
	$	REQ028:7E0 03 22 02 61 00 00 00 00          $
	$	REQ029:7E0 03 22 03 0A 00 00 00 00          $
	$	REQ030:7E0 03 22 03 0B 00 00 00 00          $
	$	REQ031:7E0 03 22 02 2F 00 00 00 00          $
	$	REQ032:7E0 03 22 03 22 00 00 00 00          $
	$	REQ033:7E0 03 22 03 12 00 00 00 00          $
	$	REQ034:7E0 03 22 03 13 00 00 00 00          $
	$	REQ035:7E0 03 22 02 53 00 00 00 00          $
	$	REQ036:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ037:7E0 03 22 03 24 00 00 00 00          $
	$	REQ038:7E0 03 22 02 46 00 00 00 00          $
	$	REQ039:7E0 03 22 03 04 00 00 00 00          $
	$	REQ040:7E0 03 22 02 57 00 00 00 00          $
	$	REQ041:7E0 03 22 03 29 00 00 00 00          $
	$	REQ042:7E0 03 22 03 2A 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                                         $    $  Nm         $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                                             $    $  Nm         $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                                                $    $  Nm         $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Relative Air Mass(Calc. Load Value)                                         $    $  %          $    $  ANS003.BYTE003  $  X*0.392156862745098
  $  004.Engine Speed                                                                $    $  rpm        $    $  ANS004.BYTE003  $  XY
  $  005.Idle Speed Control                                                          $    $  rpm        $    $  ANS005.BYTE003  $  XY
  $  006.Vehicle Speed                                                               $    $  km/h       $    $  ANS006.BYTE003  $  X*1+1
  $  007.Ambient Pressure                                                            $    $  hPa        $    $  ANS007.BYTE003  $  XY*0.0829175249866483
  $  008.Intake Manifold Pressure (Absolute)                                         $    $  hPa        $    $  ANS008.BYTE003  $  XY*0.0829175249866483
  $  009.Actual Intake Manifold Pressure Sensor Voltage                              $    $  V          $    $  ANS009.BYTE003  $  XY*0.000152588
  $  010.Inlet pressure sensor voltage（V_MAP）                                      $    $  V          $    $  ANS010.BYTE003  $  XY*0.000152588
  $  011.Air Mass Flow                                                               $    $  kg/h       $    $  ANS011.BYTE003  $  XY*0.03125
  $  012.Air Flow（MAF_KGH）                                                         $    $  kg/h       $    $  ANS012.BYTE003  $  XY*0.03125
  $  013.Intake Air Temperature                                                      $    $  ℃         $    $  ANS013.BYTE003  $  X*1-48
  $  014.Inlet temperature sensor voltage(V_TIA)                                     $    $  V          $    $  ANS014.BYTE003  $  XY*0.000152588
  $  015.Ambient Air Temperature                                                     $    $  ℃         $    $  ANS015.BYTE003  $  X*0.75+0.75
  $  016.Desired Throttle Position                                                   $    $  °TPS      $    $  ANS016.BYTE003  $  XY*0.007294146
  $  017.Throttle Blade Position Dependent on Poti 1                                 $    $  °TPS      $    $  ANS017.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  018.Throttle Blade Position Dependent on Poti 2                                 $    $  °TPS      $    $  ANS018.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  019.Sensor Voltage from Throttle Potentiometer 1                                $    $  V          $    $  ANS019.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  020.Sensor Voltage from Throttle Potentiometer 2                                $    $  V          $    $  ANS020.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  021.Throttle Actuator Control Pwm                                               $    $  %          $    $  ANS021.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  022.Throttle Angle with Respect to Lower Mechanical Stop                        $    $  °TPS      $    $  ANS022.BYTE003  $  X*0.466825368
  $  023.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop       $    $  V          $    $  ANS023.BYTE003  $  XY*0.000152587890625
  $  024.Acceleration pedal position sensor 1 voltage（V_PVS_1）                     $    $  V          $    $  ANS024.BYTE003  $  XY*0.0048828125
  $  025.Acceleration pedal position sensor 2 voltage（V_PVS_2）                     $    $  V          $    $  ANS025.BYTE003  $  XY*0.0048828125
  $  026.Normalized Angle Acceleration Pedal                                         $    $  %          $    $  ANS026.BYTE003  $  X*0.390625
  $  027.O2 Sensor Voltage Bank1, Sensor 1                                           $    $  V          $    $  ANS027.BYTE003  $  XY*0.0048828125
  $  028.O2 Sensor Voltage Bank1, Sensor 2                                           $    $  V          $    $  ANS028.BYTE003  $  XY*0.0048828125
  $  029.Lambda sensor heat PWM_UP(LSHPWM_UP_1)                                      $    $  %          $    $  ANS029.BYTE003  $  X*0.390625
  $  030.Lambda sensor heat PWM_DOWN(LSHPWM_DOWN_1)                                  $    $  %          $    $  ANS030.BYTE003  $  X*0.390625
  $  031.Lambda Controller Output                                                    $    $  %          $    $  ANS031.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  032.Cylinder#1 Fuel Trim(TI_LAM_1)                                              $    $  %          $    $  ANS032.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  033.Fuel Trim factor(FAC_LAM_COR)                                               $    $  %          $    $  ANS033.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  034.Fuel AutoLearn factor(FAC_LAM_AD_OUT)                                       $    $  %          $    $  ANS034.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  035.Canister Purge Solenoid                                                     $    $  %          $    $  ANS035.BYTE003  $  X*0.390625
  $  036.Output Duty Cycle for Canister Purge Valve                                  $    $  %          $    $  ANS036.BYTE003  $  X*0.390625
  $  037.Canister Load(CL_MMV)                                                       $    $  -          $    $  ANS037.BYTE003  $  XY*0.000030517578125
  $  038.Standardized Mass Flow from Canister Purge Control                          $    $  mg/stk     $    $  ANS038.BYTE003  $  XY*0.0211947814145113
  $  039.Alternator PWM(ALTPWM)                                                      $    $  %          $    $  ANS039.BYTE003  $  X*0.390625
  $  040.Inlet Camshaft Control                                                      $    $  -          $    $  ANS040.BYTE003  $  00: initial state		01: enter HOLD state		02: hold state		03: adjust state		其他:-
  $  041.State of intake VVT(STATE_IVVT)                                             $    $  -          $    $  ANS041.BYTE003  $  00:passive		01:ready		02:adaptive		03:enabled		其他:-
  $  042.State of intake VVT PMW(STATE_IVVT_PWM_IN)                                  $    $  -          $    $  ANS042.BYTE003  $  00: control		01: active		02: passive		其他:-

 $ 09.The instrument shows data

	$	REQ000:7E0 03 22 02 03 00 00 00 00          $
	$	REQ001:7E0 03 22 02 FC 00 00 00 00          $
	$	REQ002:7E0 03 22 02 45 00 00 00 00          $
	$	REQ003:7E0 03 22 02 04 00 00 00 00          $
	$	REQ004:7E0 03 22 02 52 00 00 00 00          $
	$	REQ005:7E0 03 22 02 08 00 00 00 00          $
	$	REQ006:7E0 03 22 02 53 00 00 00 00          $
	$	REQ007:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ008:7E0 03 22 03 24 00 00 00 00          $
	$	REQ009:7E0 03 22 02 46 00 00 00 00          $
	$	REQ010:7E0 03 22 02 21 00 00 00 00          $
	$	REQ011:7E0 03 22 03 26 00 00 00 00          $
	$	REQ012:7E0 03 22 02 44 00 00 00 00          $
	$	REQ013:7E0 03 22 02 0A 00 00 00 00          $
	$	REQ014:7E0 03 22 02 FF 00 00 00 00          $
	$	REQ015:7E0 03 22 02 05 00 00 00 00          $
	$	REQ016:7E0 03 22 02 06 00 00 00 00          $
	$	REQ017:7E0 03 22 02 59 00 00 00 00          $

  $  000.Engine Temperature                                          $    $  ℃         $    $  ANS000.BYTE003  $  X*0.75-48
  $  001.Engine temperature sensor voltage（V_TCO)                   $    $  V          $    $  ANS001.BYTE003  $  XY*0.000152588
  $  002.Engine Temperature at Start                                 $    $  ℃         $    $  ANS002.BYTE003  $  X*0.75-48
  $  003.Engine Speed                                                $    $  rpm        $    $  ANS003.BYTE003  $  XY
  $  004.Idle Speed Control                                          $    $  rpm        $    $  ANS004.BYTE003  $  XY
  $  005.Vehicle Speed                                               $    $  km/h       $    $  ANS005.BYTE003  $  X*1+1
  $  006.Canister Purge Solenoid                                     $    $  %          $    $  ANS006.BYTE003  $  X*0.390625
  $  007.Output Duty Cycle for Canister Purge Valve                  $    $  %          $    $  ANS007.BYTE003  $  X*0.390625
  $  008.Canister Load(CL_MMV)                                       $    $  -          $    $  ANS008.BYTE003  $  XY*0.000030517578125
  $  009.Standardized Mass Flow from Canister Purge Control          $    $  mg/stk     $    $  ANS009.BYTE003  $  XY*0.0211947814145113
  $  010.Engaged Gear                                                $    $  -          $    $  ANS010.BYTE003  $  X
  $  011.vehicle-miles of travel(DIST_LW / DIST_H)                   $    $  Km         $    $  ANS011.BYTE003  $  X1X2X3X4*0.1
  $  012.Counter for Distance Travelled While Mil Is Activated       $    $  Km         $    $  ANS012.BYTE003  $  XY
  $  013.Battery Voltage                                             $    $  V          $    $  ANS013.BYTE003  $  X*0.1015625
  $  014.Battery voltage(V_VB_BAS)                                   $    $  V          $    $  ANS014.BYTE003  $  XY*0.00062561
  $  015.Time Counter At End Of Start                                $    $  S          $    $  ANS015.BYTE003  $  XY*0.1
  $  016.Fuel Level                                                  $    $  %          $    $  ANS016.BYTE003  $  X*0.390625
  $  017.MIL                                                         $    $  -          $    $  ANS017.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;

 $ 10.The fire data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 02 02 00 00 00 00          $
	$	REQ003:7E0 03 22 02 16 00 00 00 00          $
	$	REQ004:7E0 03 22 02 04 00 00 00 00          $
	$	REQ005:7E0 03 22 02 52 00 00 00 00          $
	$	REQ006:7E0 03 22 02 08 00 00 00 00          $
	$	REQ007:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ008:7E0 03 22 02 23 00 00 00 00          $
	$	REQ009:7E0 03 22 02 24 00 00 00 00          $
	$	REQ010:7E0 03 22 02 32 00 00 00 00          $
	$	REQ011:7E0 03 22 02 33 00 00 00 00          $
	$	REQ012:7E0 03 22 02 25 00 00 00 00          $
	$	REQ013:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ014:7E0 03 22 02 27 00 00 00 00          $
	$	REQ015:7E0 03 22 02 FA 00 00 00 00          $
	$	REQ016:7E0 03 22 02 FB 00 00 00 00          $
	$	REQ017:7E0 03 22 02 10 00 00 00 00          $
	$	REQ018:7E0 03 22 02 22 00 00 00 00          $
	$	REQ019:7E0 03 22 02 47 00 00 00 00          $
	$	REQ020:7E0 03 22 03 14 00 00 00 00          $
	$	REQ021:7E0 03 22 03 15 00 00 00 00          $
	$	REQ022:7E0 03 22 03 16 00 00 00 00          $
	$	REQ023:7E0 03 22 03 17 00 00 00 00          $
	$	REQ024:7E0 03 22 02 49 00 00 00 00          $
	$	REQ025:7E0 03 22 02 4A 00 00 00 00          $
	$	REQ026:7E0 03 22 02 4B 00 00 00 00          $
	$	REQ027:7E0 03 22 02 4C 00 00 00 00          $
	$	REQ028:7E0 03 22 03 0E 00 00 00 00          $
	$	REQ029:7E0 03 22 03 0F 00 00 00 00          $
	$	REQ030:7E0 03 22 03 10 00 00 00 00          $
	$	REQ031:7E0 03 22 03 11 00 00 00 00          $
	$	REQ032:7E0 03 22 03 1D 00 00 00 00          $
	$	REQ033:7E0 03 22 03 1E 00 00 00 00          $
	$	REQ034:7E0 03 22 03 1F 00 00 00 00          $
	$	REQ035:7E0 03 22 03 20 00 00 00 00          $
	$	REQ036:7E0 03 22 03 0C 00 00 00 00          $
	$	REQ037:7E0 03 22 02 53 00 00 00 00          $
	$	REQ038:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ039:7E0 03 22 03 24 00 00 00 00          $
	$	REQ040:7E0 03 22 02 46 00 00 00 00          $
	$	REQ041:7E0 03 22 03 04 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                                         $    $  Nm         $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                                             $    $  Nm         $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                                                $    $  Nm         $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Relative Air Mass(Calc. Load Value)                                         $    $  %          $    $  ANS003.BYTE003  $  X*0.392156862745098
  $  004.Engine Speed                                                                $    $  rpm        $    $  ANS004.BYTE003  $  XY
  $  005.Idle Speed Control                                                          $    $  rpm        $    $  ANS005.BYTE003  $  XY
  $  006.Vehicle Speed                                                               $    $  km/h       $    $  ANS006.BYTE003  $  X*1+1
  $  007.Desired Throttle Position                                                   $    $  °TPS      $    $  ANS007.BYTE003  $  XY*0.007294146
  $  008.Throttle Blade Position Dependent on Poti 1                                 $    $  °TPS      $    $  ANS008.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  009.Throttle Blade Position Dependent on Poti 2                                 $    $  °TPS      $    $  ANS009.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  010.Sensor Voltage from Throttle Potentiometer 1                                $    $  V          $    $  ANS010.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  011.Sensor Voltage from Throttle Potentiometer 2                                $    $  V          $    $  ANS011.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  012.Throttle Actuator Control Pwm                                               $    $  %          $    $  ANS012.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  013.Throttle Angle with Respect to Lower Mechanical Stop                        $    $  °TPS      $    $  ANS013.BYTE003  $  X*0.466825368
  $  014.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop       $    $  V          $    $  ANS014.BYTE003  $  XY*0.000152587890625
  $  015.Acceleration pedal position sensor 1 voltage（V_PVS_1）                     $    $  V          $    $  ANS015.BYTE003  $  XY*0.0048828125
  $  016.Acceleration pedal position sensor 2 voltage（V_PVS_2）                     $    $  V          $    $  ANS016.BYTE003  $  XY*0.0048828125
  $  017.Normalized Angle Acceleration Pedal                                         $    $  %          $    $  ANS017.BYTE003  $  X*0.390625
  $  018.Real Ignition Angle                                                         $    $  °CRK      $    $  ANS018.BYTE003  $  X*0.375-35.625
  $  019.Basic Ignition Angle                                                        $    $  °CRK      $    $  ANS019.BYTE003  $  X*0.375-35.625
  $  020.Cylinder#1 ignition advance Angle（IGA_CYL_KNK[0]）                         $    $  °CRK      $    $  ANS020.BYTE003  $  X*0.375-48
  $  021.Cylinder#2 ignition advance Angle（IGA_CYL_KNK[1]）                         $    $  °CRK      $    $  ANS021.BYTE003  $  X*0.375-48
  $  022.Cylinder#3 ignition advance Angle（IGA_CYL_KNK[2]）                         $    $  °CRK      $    $  ANS022.BYTE003  $  X*0.375-48
  $  023.Cylinder#4 ignition advance Angle（IGA_CYL_KNK[3]）                         $    $  °CRK      $    $  ANS023.BYTE003  $  X*0.375-48
  $  024.Number Of Misfire:Cylinder#1                                                $    $  -          $    $  ANS024.BYTE003  $  XY
  $  025.Number Of Misfire:Cylinder#2                                                $    $  -          $    $  ANS025.BYTE003  $  XY
  $  026.Number Of Misfire:Cylinder#3                                                $    $  -          $    $  ANS026.BYTE003  $  XY
  $  027.Number Of Misfire:Cylinder#4                                                $    $  -          $    $  ANS027.BYTE003  $  XY
  $  028.Cylinde#1 injection time(TI_1)                                              $    $  Ms         $    $  ANS028.BYTE003  $  XY*0.004
  $  029.Cylinde#2 injection time(TI_2)                                              $    $  Ms         $    $  ANS029.BYTE003  $  XY*0.004
  $  030.Cylinde#3 injection time(TI_3)                                              $    $  Ms         $    $  ANS030.BYTE003  $  XY*0.004
  $  031.Cylinde#4 injection time(TI_4)                                              $    $  Ms         $    $  ANS031.BYTE003  $  XY*0.004
  $  032.Start time of Cylinde#1 injection(SOI_0)                                    $    $  °CRK      $    $  ANS032.BYTE003  $  XY*0.375
  $  033.Start time of Cylinde#2 injection(SOI_1)                                    $    $  °CRK      $    $  ANS033.BYTE003  $  XY*0.375
  $  034.Start time of Cylinde#3 injection(SOI_2)                                    $    $  °CRK      $    $  ANS034.BYTE003  $  XY*0.375
  $  035.Start time of Cylinde#4 injection(SOI_3)                                    $    $  °CRK      $    $  ANS035.BYTE003  $  XY*0.375
  $  036.Intake VVT PWM(VVTPWM_IN)                                                   $    $  %          $    $  ANS036.BYTE003  $  XY*0.0061035156
  $  037.Canister Purge Solenoid                                                     $    $  %          $    $  ANS037.BYTE003  $  X*0.390625
  $  038.Output Duty Cycle for Canister Purge Valve                                  $    $  %          $    $  ANS038.BYTE003  $  X*0.390625
  $  039.Canister Load(CL_MMV)                                                       $    $  -          $    $  ANS039.BYTE003  $  XY*0.000030517578125
  $  040.Standardized Mass Flow from Canister Purge Control                          $    $  mg/stk     $    $  ANS040.BYTE003  $  XY*0.0211947814145113
  $  041.Alternator PWM(ALTPWM)                                                      $    $  %          $    $  ANS041.BYTE003  $  X*0.390625

 $ 11.Throttle data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 02 02 00 00 00 00          $
	$	REQ003:7E0 03 22 02 16 00 00 00 00          $
	$	REQ004:7E0 03 22 02 04 00 00 00 00          $
	$	REQ005:7E0 03 22 02 52 00 00 00 00          $
	$	REQ006:7E0 03 22 02 08 00 00 00 00          $
	$	REQ007:7E0 03 22 02 09 00 00 00 00          $
	$	REQ008:7E0 03 22 02 28 00 00 00 00          $
	$	REQ009:7E0 03 22 02 62 00 00 00 00          $
	$	REQ010:7E0 03 22 02 FE 00 00 00 00          $
	$	REQ011:7E0 03 22 02 17 00 00 00 00          $
	$	REQ012:7E0 03 22 03 1B 00 00 00 00          $
	$	REQ013:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ014:7E0 03 22 02 FD 00 00 00 00          $
	$	REQ015:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ016:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ017:7E0 03 22 02 23 00 00 00 00          $
	$	REQ018:7E0 03 22 02 24 00 00 00 00          $
	$	REQ019:7E0 03 22 02 32 00 00 00 00          $
	$	REQ020:7E0 03 22 02 33 00 00 00 00          $
	$	REQ021:7E0 03 22 02 25 00 00 00 00          $
	$	REQ022:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ023:7E0 03 22 02 27 00 00 00 00          $
	$	REQ024:7E0 03 22 02 FA 00 00 00 00          $
	$	REQ025:7E0 03 22 02 FB 00 00 00 00          $
	$	REQ026:7E0 03 22 02 10 00 00 00 00          $
	$	REQ027:7E0 03 22 02 53 00 00 00 00          $
	$	REQ028:7E0 03 22 03 04 00 00 00 00          $
	$	REQ029:7E0 03 22 02 57 00 00 00 00          $
	$	REQ030:7E0 03 22 03 29 00 00 00 00          $
	$	REQ031:7E0 03 22 03 2A 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                                         $    $  Nm        $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                                             $    $  Nm        $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                                                $    $  Nm        $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Relative Air Mass(Calc. Load Value)                                         $    $  %         $    $  ANS003.BYTE003  $  X*0.392156862745098
  $  004.Engine Speed                                                                $    $  rpm       $    $  ANS004.BYTE003  $  XY
  $  005.Idle Speed Control                                                          $    $  rpm       $    $  ANS005.BYTE003  $  XY
  $  006.Vehicle Speed                                                               $    $  km/h      $    $  ANS006.BYTE003  $  X*1+1
  $  007.Ambient Pressure                                                            $    $  hPa       $    $  ANS007.BYTE003  $  XY*0.0829175249866483
  $  008.Intake Manifold Pressure (Absolute)                                         $    $  hPa       $    $  ANS008.BYTE003  $  XY*0.0829175249866483
  $  009.Actual Intake Manifold Pressure Sensor Voltage                              $    $  V         $    $  ANS009.BYTE003  $  XY*0.000152588
  $  010.Inlet pressure sensor voltage（V_MAP）                                      $    $  V         $    $  ANS010.BYTE003  $  XY*0.000152588
  $  011.Air Mass Flow                                                               $    $  kg/h      $    $  ANS011.BYTE003  $  XY*0.03125
  $  012.Air Flow（MAF_KGH）                                                         $    $  kg/h      $    $  ANS012.BYTE003  $  XY*0.03125
  $  013.Intake Air Temperature                                                      $    $  ℃        $    $  ANS013.BYTE003  $  X*1-48
  $  014.Inlet temperature sensor voltage(V_TIA)                                     $    $  V         $    $  ANS014.BYTE003  $  XY*0.000152588
  $  015.Ambient Air Temperature                                                     $    $  ℃        $    $  ANS015.BYTE003  $  X*0.75+0.75
  $  016.Desired Throttle Position                                                   $    $  °TPS     $    $  ANS016.BYTE003  $  XY*0.007294146
  $  017.Throttle Blade Position Dependent on Poti 1                                 $    $  °TPS     $    $  ANS017.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  018.Throttle Blade Position Dependent on Poti 2                                 $    $  °TPS     $    $  ANS018.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  019.Sensor Voltage from Throttle Potentiometer 1                                $    $  V         $    $  ANS019.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  020.Sensor Voltage from Throttle Potentiometer 2                                $    $  V         $    $  ANS020.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  021.Throttle Actuator Control Pwm                                               $    $  %         $    $  ANS021.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  022.Throttle Angle with Respect to Lower Mechanical Stop                        $    $  °TPS     $    $  ANS022.BYTE003  $  X*0.466825368
  $  023.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop       $    $  V         $    $  ANS023.BYTE003  $  XY*0.000152587890625
  $  024.Acceleration pedal position sensor 1 voltage（V_PVS_1）                     $    $  V         $    $  ANS024.BYTE003  $  XY*0.0048828125
  $  025.Acceleration pedal position sensor 2 voltage（V_PVS_2）                     $    $  V         $    $  ANS025.BYTE003  $  XY*0.0048828125
  $  026.Normalized Angle Acceleration Pedal                                         $    $  %         $    $  ANS026.BYTE003  $  X*0.390625
  $  027.Canister Purge Solenoid                                                     $    $  %         $    $  ANS027.BYTE003  $  X*0.390625
  $  028.Alternator PWM(ALTPWM)                                                      $    $  %         $    $  ANS028.BYTE003  $  X*0.390625
  $  029.Inlet Camshaft Control                                                      $    $  -         $    $  ANS029.BYTE003  $  00: initial state		01: enter HOLD state		02: hold state		03: adjust state		其他:-
  $  030.State of intake VVT(STATE_IVVT)                                             $    $  -         $    $  ANS030.BYTE003  $  00:passive		01:ready		02:adaptive		03:enabled		其他:-
  $  031.State of intake VVT PMW(STATE_IVVT_PWM_IN)                                  $    $  -         $    $  ANS031.BYTE003  $  00: control		01: active		02: passive		其他:-

 $ 12.All data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 02 02 00 00 00 00          $
	$	REQ003:7E0 03 22 02 16 00 00 00 00          $
	$	REQ004:7E0 03 22 02 03 00 00 00 00          $
	$	REQ005:7E0 03 22 02 FC 00 00 00 00          $
	$	REQ006:7E0 03 22 02 45 00 00 00 00          $
	$	REQ007:7E0 03 22 02 04 00 00 00 00          $
	$	REQ008:7E0 03 22 02 52 00 00 00 00          $
	$	REQ009:7E0 03 22 02 08 00 00 00 00          $
	$	REQ010:7E0 03 22 02 09 00 00 00 00          $
	$	REQ011:7E0 03 22 02 28 00 00 00 00          $
	$	REQ012:7E0 03 22 02 62 00 00 00 00          $
	$	REQ013:7E0 03 22 02 FE 00 00 00 00          $
	$	REQ014:7E0 03 22 02 17 00 00 00 00          $
	$	REQ015:7E0 03 22 03 1B 00 00 00 00          $
	$	REQ016:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ017:7E0 03 22 02 FD 00 00 00 00          $
	$	REQ018:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ019:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ020:7E0 03 22 02 23 00 00 00 00          $
	$	REQ021:7E0 03 22 02 24 00 00 00 00          $
	$	REQ022:7E0 03 22 02 32 00 00 00 00          $
	$	REQ023:7E0 03 22 02 33 00 00 00 00          $
	$	REQ024:7E0 03 22 02 25 00 00 00 00          $
	$	REQ025:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ026:7E0 03 22 02 27 00 00 00 00          $
	$	REQ027:7E0 03 22 02 FA 00 00 00 00          $
	$	REQ028:7E0 03 22 02 FB 00 00 00 00          $
	$	REQ029:7E0 03 22 02 10 00 00 00 00          $
	$	REQ030:7E0 03 22 02 22 00 00 00 00          $
	$	REQ031:7E0 03 22 02 47 00 00 00 00          $
	$	REQ032:7E0 03 22 03 14 00 00 00 00          $
	$	REQ033:7E0 03 22 03 15 00 00 00 00          $
	$	REQ034:7E0 03 22 03 16 00 00 00 00          $
	$	REQ035:7E0 03 22 03 17 00 00 00 00          $
	$	REQ036:7E0 03 22 02 40 00 00 00 00          $
	$	REQ037:7E0 03 22 02 41 00 00 00 00          $
	$	REQ038:7E0 03 22 02 42 00 00 00 00          $
	$	REQ039:7E0 03 22 02 43 00 00 00 00          $
	$	REQ040:7E0 03 22 02 49 00 00 00 00          $
	$	REQ041:7E0 03 22 02 4A 00 00 00 00          $
	$	REQ042:7E0 03 22 02 4B 00 00 00 00          $
	$	REQ043:7E0 03 22 02 4C 00 00 00 00          $
	$	REQ044:7E0 03 22 02 60 00 00 00 00          $
	$	REQ045:7E0 03 22 02 61 00 00 00 00          $
	$	REQ046:7E0 03 22 03 0A 00 00 00 00          $
	$	REQ047:7E0 03 22 03 0B 00 00 00 00          $
	$	REQ048:7E0 03 22 02 2F 00 00 00 00          $
	$	REQ049:7E0 03 22 03 22 00 00 00 00          $
	$	REQ050:7E0 03 22 03 12 00 00 00 00          $
	$	REQ051:7E0 03 22 03 13 00 00 00 00          $
	$	REQ052:7E0 03 22 02 3A 00 00 00 00          $
	$	REQ053:7E0 03 22 03 0E 00 00 00 00          $
	$	REQ054:7E0 03 22 03 0F 00 00 00 00          $
	$	REQ055:7E0 03 22 03 10 00 00 00 00          $
	$	REQ056:7E0 03 22 03 11 00 00 00 00          $
	$	REQ057:7E0 03 22 03 1D 00 00 00 00          $
	$	REQ058:7E0 03 22 03 1E 00 00 00 00          $
	$	REQ059:7E0 03 22 03 1F 00 00 00 00          $
	$	REQ060:7E0 03 22 03 20 00 00 00 00          $
	$	REQ061:7E0 03 22 03 0C 00 00 00 00          $
	$	REQ062:7E0 03 22 02 53 00 00 00 00          $
	$	REQ063:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ064:7E0 03 22 03 24 00 00 00 00          $
	$	REQ065:7E0 03 22 02 46 00 00 00 00          $
	$	REQ066:7E0 03 22 03 19 00 00 00 00          $
	$	REQ067:7E0 03 22 03 18 00 00 00 00          $
	$	REQ068:7E0 03 22 02 21 00 00 00 00          $
	$	REQ069:7E0 03 22 03 26 00 00 00 00          $
	$	REQ070:7E0 03 22 02 44 00 00 00 00          $
	$	REQ071:7E0 03 22 03 04 00 00 00 00          $
	$	REQ072:7E0 03 22 02 0A 00 00 00 00          $
	$	REQ073:7E0 03 22 02 FF 00 00 00 00          $
	$	REQ074:7E0 03 22 02 05 00 00 00 00          $
	$	REQ075:7E0 03 22 03 0D 00 00 00 00          $
	$	REQ076:7E0 03 22 02 57 00 00 00 00          $
	$	REQ077:7E0 03 22 03 29 00 00 00 00          $
	$	REQ078:7E0 03 22 03 2A 00 00 00 00          $
	$	REQ079:7E0 03 22 02 55 00 00 00 00          $
	$	REQ080:7E0 03 22 05 02 00 00 00 00          $
	$	REQ081:7E0 03 22 05 03 00 00 00 00          $
	$	REQ082:7E0 03 22 05 04 00 00 00 00          $
	$	REQ083:7E0 03 22 05 10 00 00 00 00          $
	$	REQ084:7E0 03 22 05 11 00 00 00 00          $
	$	REQ085:7E0 03 22 05 12 00 00 00 00          $
	$	REQ086:7E0 03 22 05 13 00 00 00 00          $
	$	REQ087:7E0 03 22 02 54 00 00 00 00          $
	$	REQ088:7E0 03 22 05 14 00 00 00 00          $
	$	REQ089:7E0 03 22 05 15 00 00 00 00          $
	$	REQ090:7E0 03 22 05 16 00 00 00 00          $
	$	REQ091:7E0 03 22 02 59 00 00 00 00          $
	$	REQ092:7E0 03 22 03 05 00 00 00 00          $
	$	REQ093:7E0 03 22 03 06 00 00 00 00          $
	$	REQ094:7E0 03 22 03 08 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                                                 $    $  Nm         $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                                                     $    $  Nm         $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                                                        $    $  Nm         $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Relative Air Mass(Calc. Load Value)                                                 $    $  %          $    $  ANS003.BYTE003  $  X*0.392156862745098
  $  004.Engine Temperature                                                                  $    $  ℃         $    $  ANS004.BYTE003  $  X*0.75-48
  $  005.Engine temperature sensor voltage（V_TCO)                                           $    $  V          $    $  ANS005.BYTE003  $  XY*0.000152588
  $  006.Engine Temperature at Start                                                         $    $  ℃         $    $  ANS006.BYTE003  $  X*0.75-48
  $  007.Engine Speed                                                                        $    $  rpm        $    $  ANS007.BYTE003  $  XY
  $  008.Idle Speed Control                                                                  $    $  rpm        $    $  ANS008.BYTE003  $  XY
  $  009.Vehicle Speed                                                                       $    $  km/h       $    $  ANS009.BYTE003  $  X*1+1
  $  010.Ambient Pressure                                                                    $    $  hPa        $    $  ANS010.BYTE003  $  XY*0.0829175249866483
  $  011.Intake Manifold Pressure (Absolute)                                                 $    $  hPa        $    $  ANS011.BYTE003  $  XY*0.0829175249866483
  $  012.Actual Intake Manifold Pressure Sensor Voltage                                      $    $  V          $    $  ANS012.BYTE003  $  XY*0.000152588
  $  013.Inlet pressure sensor voltage（V_MAP）                                              $    $  V          $    $  ANS013.BYTE003  $  XY*0.000152588
  $  014.Air Mass Flow                                                                       $    $  kg/h       $    $  ANS014.BYTE003  $  XY*0.03125
  $  015.Air Flow（MAF_KGH）                                                                 $    $  kg/h       $    $  ANS015.BYTE003  $  XY*0.03125
  $  016.Intake Air Temperature                                                              $    $  ℃         $    $  ANS016.BYTE003  $  X*1-48
  $  017.Inlet temperature sensor voltage(V_TIA)                                             $    $  V          $    $  ANS017.BYTE003  $  XY*0.000152588
  $  018.Ambient Air Temperature                                                             $    $  ℃         $    $  ANS018.BYTE003  $  X*0.75+0.75
  $  019.Desired Throttle Position                                                           $    $  °TPS      $    $  ANS019.BYTE003  $  XY*0.007294146
  $  020.Throttle Blade Position Dependent on Poti 1                                         $    $  °TPS      $    $  ANS020.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  021.Throttle Blade Position Dependent on Poti 2                                         $    $  °TPS      $    $  ANS021.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  022.Sensor Voltage from Throttle Potentiometer 1                                        $    $  V          $    $  ANS022.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  023.Sensor Voltage from Throttle Potentiometer 2                                        $    $  V          $    $  ANS023.BYTE003  $  [0000-7FFF]:XY*0.0001526+0		[8000-FFFF]:(XY-65535)*0.0001526+0
  $  024.Throttle Actuator Control Pwm                                                       $    $  %          $    $  ANS024.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  025.Throttle Angle with Respect to Lower Mechanical Stop                                $    $  °TPS      $    $  ANS025.BYTE003  $  X*0.466825368
  $  026.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop               $    $  V          $    $  ANS026.BYTE003  $  XY*0.000152587890625
  $  027.Acceleration pedal position sensor 1 voltage（V_PVS_1）                             $    $  V          $    $  ANS027.BYTE003  $  XY*0.0048828125
  $  028.Acceleration pedal position sensor 2 voltage（V_PVS_2）                             $    $  V          $    $  ANS028.BYTE003  $  XY*0.0048828125
  $  029.Normalized Angle Acceleration Pedal                                                 $    $  %          $    $  ANS029.BYTE003  $  X*0.390625
  $  030.Real Ignition Angle                                                                 $    $  °CRK      $    $  ANS030.BYTE003  $  X*0.375-35.625
  $  031.Basic Ignition Angle                                                                $    $  °CRK      $    $  ANS031.BYTE003  $  X*0.375-35.625
  $  032.Cylinder#1 ignition advance Angle（IGA_CYL_KNK[0]）                                 $    $  °CRK      $    $  ANS032.BYTE003  $  X*0.375-48
  $  033.Cylinder#2 ignition advance Angle（IGA_CYL_KNK[1]）                                 $    $  °CRK      $    $  ANS033.BYTE003  $  X*0.375-48
  $  034.Cylinder#3 ignition advance Angle（IGA_CYL_KNK[2]）                                 $    $  °CRK      $    $  ANS034.BYTE003  $  X*0.375-48
  $  035.Cylinder#4 ignition advance Angle（IGA_CYL_KNK[3]）                                 $    $  °CRK      $    $  ANS035.BYTE003  $  X*0.375-48
  $  036.Reference Level Knock Control, 16bit, Cylinder #1                                   $    $  V          $    $  ANS036.BYTE003  $  XY*0.0000762939453727016
  $  037.Reference Level Knock Control, 16bit, Cylinder #2                                   $    $  V          $    $  ANS037.BYTE003  $  XY*0.0000762939453727016
  $  038.Reference Level Knock Control, 16bit, Cylinder #3                                   $    $  V          $    $  ANS038.BYTE003  $  XY*0.0000762939453727016
  $  039.Reference Level Knock Control, 16bit, Cylinder #4                                   $    $  V          $    $  ANS039.BYTE003  $  XY*0.0000762939453727016
  $  040.Number Of Misfire:Cylinder#1                                                        $    $  -          $    $  ANS040.BYTE003  $  XY
  $  041.Number Of Misfire:Cylinder#2                                                        $    $  -          $    $  ANS041.BYTE003  $  XY
  $  042.Number Of Misfire:Cylinder#3                                                        $    $  -          $    $  ANS042.BYTE003  $  XY
  $  043.Number Of Misfire:Cylinder#4                                                        $    $  -          $    $  ANS043.BYTE003  $  XY
  $  044.O2 Sensor Voltage Bank1, Sensor 1                                                   $    $  V          $    $  ANS044.BYTE003  $  XY*0.0048828125
  $  045.O2 Sensor Voltage Bank1, Sensor 2                                                   $    $  V          $    $  ANS045.BYTE003  $  XY*0.0048828125
  $  046.Lambda sensor heat PWM_UP(LSHPWM_UP_1)                                              $    $  %          $    $  ANS046.BYTE003  $  X*0.390625
  $  047.Lambda sensor heat PWM_DOWN(LSHPWM_DOWN_1)                                          $    $  %          $    $  ANS047.BYTE003  $  X*0.390625
  $  048.Lambda Controller Output                                                            $    $  %          $    $  ANS048.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  049.Cylinder#1 Fuel Trim(TI_LAM_1)                                                      $    $  %          $    $  ANS049.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  050.Fuel Trim factor(FAC_LAM_COR)                                                       $    $  %          $    $  ANS050.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  051.Fuel AutoLearn factor(FAC_LAM_AD_OUT)                                               $    $  %          $    $  ANS051.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  052.Injection Time                                                                      $    $  Ms         $    $  ANS052.BYTE003  $  08个字节的HEX显示
  $  053.Cylinde#1 injection time(TI_1)                                                      $    $  Ms         $    $  ANS053.BYTE003  $  XY*0.004
  $  054.Cylinde#2 injection time(TI_2)                                                      $    $  Ms         $    $  ANS054.BYTE003  $  XY*0.004
  $  055.Cylinde#3 injection time(TI_3)                                                      $    $  Ms         $    $  ANS055.BYTE003  $  XY*0.004
  $  056.Cylinde#4 injection time(TI_4)                                                      $    $  Ms         $    $  ANS056.BYTE003  $  XY*0.004
  $  057.Start time of Cylinde#1 injection(SOI_0)                                            $    $  °CRK      $    $  ANS057.BYTE003  $  XY*0.375
  $  058.Start time of Cylinde#2 injection(SOI_1)                                            $    $  °CRK      $    $  ANS058.BYTE003  $  XY*0.375
  $  059.Start time of Cylinde#3 injection(SOI_2)                                            $    $  °CRK      $    $  ANS059.BYTE003  $  XY*0.375
  $  060.Start time of Cylinde#4 injection(SOI_3)                                            $    $  °CRK      $    $  ANS060.BYTE003  $  XY*0.375
  $  061.Intake VVT PWM(VVTPWM_IN)                                                           $    $  %          $    $  ANS061.BYTE003  $  XY*0.0061035156
  $  062.Canister Purge Solenoid                                                             $    $  %          $    $  ANS062.BYTE003  $  X*0.390625
  $  063.Output Duty Cycle for Canister Purge Valve                                          $    $  %          $    $  ANS063.BYTE003  $  X*0.390625
  $  064.Canister Load(CL_MMV)                                                               $    $  -          $    $  ANS064.BYTE003  $  XY*0.000030517578125
  $  065.Standardized Mass Flow from Canister Purge Control                                  $    $  mg/stk     $    $  ANS065.BYTE003  $  XY*0.0211947814145113
  $  066.Temperature of Air conditioner evaporator(TACE)                                     $    $  ℃         $    $  ANS066.BYTE003  $  X*0.75-48
  $  067.Temperature of Air conditioner evaporator voltage(VP_TACE_SENSsensor voltage)       $    $  V          $    $  ANS067.BYTE003  $  XY*0.000152588
  $  068.Engaged Gear                                                                        $    $  -          $    $  ANS068.BYTE003  $  X
  $  069.vehicle-miles of travel(DIST_LW / DIST_H)                                           $    $  Km         $    $  ANS069.BYTE003  $  X1X2X3X4*0.1
  $  070.Counter for Distance Travelled While Mil Is Activated                               $    $  Km         $    $  ANS070.BYTE003  $  XY
  $  071.Alternator PWM(ALTPWM)                                                              $    $  %          $    $  ANS071.BYTE003  $  X*0.390625
  $  072.Battery Voltage                                                                     $    $  V          $    $  ANS072.BYTE003  $  X*0.1015625
  $  073.Battery voltage(V_VB_BAS)                                                           $    $  V          $    $  ANS073.BYTE003  $  XY*0.00062561
  $  074.Time Counter At End Of Start                                                        $    $  S          $    $  ANS074.BYTE003  $  XY*0.1
  $  075.Electric Fan PWM(ECFPWM)                                                            $    $  %          $    $  ANS075.BYTE003  $  X*0.392
  $  076.Inlet Camshaft Control                                                              $    $  -          $    $  ANS076.BYTE003  $  00: initial state		01: enter HOLD state		02: hold state		03: adjust state		其他:-
  $  077.State of intake VVT(STATE_IVVT)                                                     $    $  -          $    $  ANS077.BYTE003  $  00:passive		01:ready		02:adaptive		03:enabled		其他:-
  $  078.State of intake VVT PMW(STATE_IVVT_PWM_IN)                                          $    $  -          $    $  ANS078.BYTE003  $  00: control		01: active		02: passive		其他:-
  $  079.Cooling Fan Relay                                                                   $    $  -          $    $  ANS079.BYTE003  $  00:lowspeedfanoff highspeedfanoff		01:lowspeedfanon highspeedfanoff		02:lowspeedfanoff highspeedfanon 		03:lowspeedfanoff highspeedfanon  highspeedfanon		其他:-
  $  080.Exhaust VVT control PWM                                                             $    $  %          $    $  ANS080.BYTE003  $  XY*0.0061035
  $  081.Actual exhaust VVT angle                                                            $    $  °         $    $  ANS081.BYTE003  $  [0000-7FFF]:XY*0.0078125+0		[8000-FFFF]:(XY-65535)*0.0078125+0
  $  082.Desired exhaust VVT angle                                                           $    $  °         $    $  ANS082.BYTE003  $  XY*0.5
  $  083.Output Duty Cycle for SWP                                                           $    $  %          $    $  ANS083.BYTE003  $  X*0.390625
  $  084.AC Middle Pressure Switch                                                           $    $  -          $    $  ANS084.BYTE003  $  00:OFF		01:ON		其他:-
  $  085.λ closed loop control status                                                       $    $  -          $    $  ANS085.BYTE003  $  00:OFF		01:ON		其他:-
  $  086.Interface for Mode #01+#02 short Term Fuel Trim Bank 1 for PID #06                  $    $  %          $    $  ANS086.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  087.Fuel Pump Relay                                                                     $    $  -          $    $  ANS087.BYTE003  $  X
  $  088.neutral gear switch                                                                 $    $  -          $    $  ANS088.BYTE003  $  00:inactive		01:active		其他:-
  $  089.Clutch Position Signal                                                              $    $  %          $    $  ANS089.BYTE003  $  [0000-7FFF]:XY*0.00610352-		[8000-FFFF]:(XY-65535)*0.00610352-
  $  090.Cooling fan PWM（ECFPWM）                                                           $    $  %          $    $  ANS090.BYTE003  $  [0000-7FFF]:XY*0.00610352-		[8000-FFFF]:(XY-65535)*0.00610352-
  $  091.MIL                                                                                 $    $  -          $    $  ANS091.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  092.Air condition request switch(LV_ACIN)                                               $    $  -          $    $  ANS092.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  093.Brake test switch(LV_BTS)                                                           $    $  -          $    $  ANS092.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  094.Brake lamp switch(LV_BLS)                                                           $    $  -          $    $  ANS092.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  095.Clutch switch(LV_CS)                                                                $    $  -          $    $  ANS092.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  096.Starter relay(LV_RLY_ST)                                                            $    $  -          $    $  ANS093.BYTE003  $  if(X1&0x20)y=@0240;else y=@0239;
  $  097.Air condition compressor relay(LV_ACCRLY_OUT)                                       $    $  -          $    $  ANS093.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  098.Main relay(LV_RLY_MAIN）                                                            $    $  -          $    $  ANS093.BYTE003  $  if(X1&0x8)y=@0240;else y=@0239;
  $  099.Electronic fuel pump relay(LV_RLY_EFP)                                              $    $  -          $    $  ANS093.BYTE003  $  if(X1&0x10)y=@0240;else y=@0239;
  $  100.Variable intake manifold relay(LV_VIM)                                              $    $  -          $    $  ANS093.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  101.Air conditioning pressure switch(LV_PRS_SWT)                                        $    $  -          $    $  ANS094.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;


