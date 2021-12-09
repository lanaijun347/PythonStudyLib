$~#6$~#14$~500$~7E8
;******************************************************************************************************************************************************

车型代号:CN202SR
车型:ALMAZ
排量:N15T
年份:2019
模块名缩写:ECM
模块名:发动机控制模块
供应商:大陆
诊断代码:CN202SR_2019_ECM_CAN

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

		$*$*DTC/CAPTIVADTCS


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
	$	REQ003:7E0 03 22 02 51 00 00 00 00          $
	$	REQ004:7E0 03 22 02 16 00 00 00 00          $
	$	REQ005:7E0 03 22 02 03 00 00 00 00          $
	$	REQ006:7E0 03 22 02 FC 00 00 00 00          $
	$	REQ007:7E0 03 22 02 45 00 00 00 00          $
	$	REQ008:7E0 03 22 02 04 00 00 00 00          $
	$	REQ009:7E0 03 22 02 52 00 00 00 00          $
	$	REQ010:7E0 03 22 02 08 00 00 00 00          $
	$	REQ011:7E0 03 22 02 22 00 00 00 00          $
	$	REQ012:7E0 03 22 02 47 00 00 00 00          $
	$	REQ013:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ014:7E0 03 22 02 3D 00 00 00 00          $
	$	REQ015:7E0 03 22 02 3E 00 00 00 00          $
	$	REQ016:7E0 03 22 02 3F 00 00 00 00          $
	$	REQ017:7E0 03 22 03 14 00 00 00 00          $
	$	REQ018:7E0 03 22 03 15 00 00 00 00          $
	$	REQ019:7E0 03 22 03 16 00 00 00 00          $
	$	REQ020:7E0 03 22 03 17 00 00 00 00          $
	$	REQ021:7E0 03 22 02 40 00 00 00 00          $
	$	REQ022:7E0 03 22 02 41 00 00 00 00          $
	$	REQ023:7E0 03 22 02 42 00 00 00 00          $
	$	REQ024:7E0 03 22 02 43 00 00 00 00          $
	$	REQ025:7E0 03 22 02 48 00 00 00 00          $
	$	REQ026:7E0 03 22 02 49 00 00 00 00          $
	$	REQ027:7E0 03 22 02 4A 00 00 00 00          $
	$	REQ028:7E0 03 22 02 4B 00 00 00 00          $
	$	REQ029:7E0 03 22 02 4C 00 00 00 00          $
	$	REQ030:7E0 03 22 02 4D 00 00 00 00          $
	$	REQ031:7E0 03 22 02 4E 00 00 00 00          $
	$	REQ032:7E0 03 22 02 4F 00 00 00 00          $
	$	REQ033:7E0 03 22 03 0E 00 00 00 00          $
	$	REQ034:7E0 03 22 03 0F 00 00 00 00          $
	$	REQ035:7E0 03 22 03 10 00 00 00 00          $
	$	REQ036:7E0 03 22 03 11 00 00 00 00          $
	$	REQ037:7E0 03 22 03 1D 00 00 00 00          $
	$	REQ038:7E0 03 22 03 1E 00 00 00 00          $
	$	REQ039:7E0 03 22 03 1F 00 00 00 00          $
	$	REQ040:7E0 03 22 03 20 00 00 00 00          $
	$	REQ041:7E0 03 22 05 02 00 00 00 00          $
	$	REQ042:7E0 03 22 05 03 00 00 00 00          $
	$	REQ043:7E0 03 22 05 04 00 00 00 00          $
	$	REQ044:7E0 03 22 05 10 00 00 00 00          $
	$	REQ045:7E0 03 22 05 11 00 00 00 00          $
	$	REQ046:7E0 03 22 05 12 00 00 00 00          $
	$	REQ047:7E0 03 22 05 13 00 00 00 00          $
	$	REQ048:7E0 03 22 02 54 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                                                $    $  Nm        $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                                                    $    $  Nm        $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                                                       $    $  Nm        $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Desired Torque Change From the Idle Speed Control                                  $    $  Nm        $    $  ANS003.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  004.Relative Air Mass(Calc. Load Value)                                                $    $  %         $    $  ANS004.BYTE003  $  X*0.392156862745098
  $  005.Engine Temperature                                                                 $    $  ℃        $    $  ANS005.BYTE003  $  X*0.75-48
  $  006.Engine temperature sensor voltage（V_TCO)                                          $    $  V         $    $  ANS006.BYTE003  $  XY*0.000152588
  $  007.Engine Temperature at Start                                                        $    $  ℃        $    $  ANS007.BYTE003  $  X*0.75-48
  $  008.Engine Speed                                                                       $    $  rpm       $    $  ANS008.BYTE003  $  XY
  $  009.Idle Speed Control                                                                 $    $  rpm       $    $  ANS009.BYTE003  $  XY
  $  010.Vehicle Speed                                                                      $    $  km/h      $    $  ANS010.BYTE003  $  X*1+1
  $  011.Real Ignition Angle                                                                $    $  °CRK     $    $  ANS011.BYTE003  $  X*0.375-35.625
  $  012.Basic Ignition Angle                                                               $    $  °CRK     $    $  ANS012.BYTE003  $  X*0.375-35.625
  $  013.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #1             $    $  °CRK     $    $  ANS013.BYTE003  $  X*0.375-35.625
  $  014.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #2             $    $  °CRK     $    $  ANS014.BYTE003  $  X*0.375-35.625
  $  015.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #3             $    $  °CRK     $    $  ANS015.BYTE003  $  X*0.375-35.625
  $  016.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #4             $    $  °CRK     $    $  ANS016.BYTE003  $  X*0.375-35.625
  $  017.Cylinder#1 ignition advance Angle（IGA_CYL_KNK[0]）                                $    $  °CRK     $    $  ANS017.BYTE003  $  X*0.375-48
  $  018.Cylinder#2 ignition advance Angle（IGA_CYL_KNK[1]）                                $    $  °CRK     $    $  ANS018.BYTE003  $  X*0.375-48
  $  019.Cylinder#3 ignition advance Angle（IGA_CYL_KNK[2]）                                $    $  °CRK     $    $  ANS019.BYTE003  $  X*0.375-48
  $  020.Cylinder#4 ignition advance Angle（IGA_CYL_KNK[3]）                                $    $  °CRK     $    $  ANS020.BYTE003  $  X*0.375-48
  $  021.Reference Level Knock Control, 16bit, Cylinder #1                                  $    $  V         $    $  ANS021.BYTE003  $  XY*0.0000762939453727016
  $  022.Reference Level Knock Control, 16bit, Cylinder #2                                  $    $  V         $    $  ANS022.BYTE003  $  XY*0.0000762939453727016
  $  023.Reference Level Knock Control, 16bit, Cylinder #3                                  $    $  V         $    $  ANS023.BYTE003  $  XY*0.0000762939453727016
  $  024.Reference Level Knock Control, 16bit, Cylinder #4                                  $    $  V         $    $  ANS024.BYTE003  $  XY*0.0000762939453727016
  $  025.Fault Counter, Summary, Counts Emission Relevant misfirings of All Cylinders       $    $  -         $    $  ANS025.BYTE003  $  XY
  $  026.Number Of Misfire:Cylinder#1                                                       $    $  -         $    $  ANS026.BYTE003  $  XY
  $  027.Number Of Misfire:Cylinder#2                                                       $    $  -         $    $  ANS027.BYTE003  $  XY
  $  028.Number Of Misfire:Cylinder#3                                                       $    $  -         $    $  ANS028.BYTE003  $  XY
  $  029.Number Of Misfire:Cylinder#4                                                       $    $  -         $    $  ANS029.BYTE003  $  XY
  $  030.Area Of Misfire, Minimum Engine Speed                                              $    $  Rpm       $    $  ANS030.BYTE003  $  XY
  $  031.Area Of Misfire, Minimum Engine Speed                                              $    $  Rpm       $    $  ANS031.BYTE003  $  XY
  $  032.Area Of Misfirings, Minimum Load                                                   $    $  %         $    $  ANS032.BYTE003  $  X
  $  033.Cylinde#1 injection time(TI_1)                                                     $    $  Ms        $    $  ANS033.BYTE003  $  XY*0.004
  $  034.Cylinde#2 injection time(TI_2)                                                     $    $  Ms        $    $  ANS034.BYTE003  $  XY*0.004
  $  035.Cylinde#3 injection time(TI_3)                                                     $    $  Ms        $    $  ANS035.BYTE003  $  XY*0.004
  $  036.Cylinde#4 injection time(TI_4)                                                     $    $  Ms        $    $  ANS036.BYTE003  $  XY*0.004
  $  037.Start time of Cylinde#1 injection(SOI_0)                                           $    $  °CRK     $    $  ANS037.BYTE003  $  XY*0.375
  $  038.Start time of Cylinde#2 injection(SOI_1)                                           $    $  °CRK     $    $  ANS038.BYTE003  $  XY*0.375
  $  039.Start time of Cylinde#3 injection(SOI_2)                                           $    $  °CRK     $    $  ANS039.BYTE003  $  XY*0.375
  $  040.Start time of Cylinde#4 injection(SOI_3)                                           $    $  °CRK     $    $  ANS040.BYTE003  $  XY*0.375
  $  041.exhaust VVT control PWM                                                            $    $  %         $    $  ANS041.BYTE003  $  XY*0.0061035
  $  042.Actual exhaust VVT angle                                                           $    $  °        $    $  ANS042.BYTE003  $  [0000-7FFF]:XY*0.0078125+0		[8000-FFFF]:(XY-65535)*0.0078125+0
  $  043.Desired exhaust VVT angle                                                          $    $  °        $    $  ANS043.BYTE003  $  XY*0.5
  $  044.Output Duty Cycle for SWP                                                          $    $  %         $    $  ANS044.BYTE003  $  X*0.390625
  $  045.AC Middle Pressure Switch                                                          $    $  -         $    $  ANS045.BYTE003  $  00:OFF		01:ON		其他:-
  $  046.λ closed loop control status                                                      $    $  -         $    $  ANS046.BYTE003  $  00:OFF		01:ON		其他:-
  $  047.Interface for Mode #01+#02 short Term Fuel Trim Bank 1 for PID #06                 $    $  %         $    $  ANS047.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  048.Fuel Pump Relay                                                                    $    $  -         $    $  ANS048.BYTE003  $  X

 $ 01.Air conditioning system data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 02 02 00 00 00 00          $
	$	REQ003:7E0 03 22 02 51 00 00 00 00          $
	$	REQ004:7E0 03 22 02 16 00 00 00 00          $
	$	REQ005:7E0 03 22 02 04 00 00 00 00          $
	$	REQ006:7E0 03 22 02 52 00 00 00 00          $
	$	REQ007:7E0 03 22 02 08 00 00 00 00          $
	$	REQ008:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ009:7E0 03 22 02 23 00 00 00 00          $
	$	REQ010:7E0 03 22 02 24 00 00 00 00          $
	$	REQ011:7E0 03 22 02 25 00 00 00 00          $
	$	REQ012:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ013:7E0 03 22 02 27 00 00 00 00          $
	$	REQ014:7E0 03 22 02 FA 00 00 00 00          $
	$	REQ015:7E0 03 22 02 FB 00 00 00 00          $
	$	REQ016:7E0 03 22 02 10 00 00 00 00          $
	$	REQ017:7E0 03 22 03 19 00 00 00 00          $
	$	REQ018:7E0 03 22 03 18 00 00 00 00          $
	$	REQ019:7E0 03 22 03 0D 00 00 00 00          $
	$	REQ020:7E0 03 22 02 55 00 00 00 00          $
	$	REQ021:7E0 03 22 03 05 00 00 00 00          $
	$	REQ022:7E0 03 22 03 06 00 00 00 00          $
	$	REQ023:7E0 03 22 03 08 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                                                 $    $  Nm        $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                                                     $    $  Nm        $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                                                        $    $  Nm        $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Desired Torque Change From the Idle Speed Control                                   $    $  Nm        $    $  ANS003.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  004.Relative Air Mass(Calc. Load Value)                                                 $    $  %         $    $  ANS004.BYTE003  $  X*0.392156862745098
  $  005.Engine Speed                                                                        $    $  rpm       $    $  ANS005.BYTE003  $  XY
  $  006.Idle Speed Control                                                                  $    $  rpm       $    $  ANS006.BYTE003  $  XY
  $  007.Vehicle Speed                                                                       $    $  km/h      $    $  ANS007.BYTE003  $  X*1+1
  $  008.Desired Throttle Position                                                           $    $  °TPS     $    $  ANS008.BYTE003  $  XY*0.007294146
  $  009.Throttle Blade Position Dependent on Poti 1                                         $    $  °TPS     $    $  ANS009.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  010.Throttle Blade Position Dependent on Poti 2                                         $    $  °TPS     $    $  ANS010.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  011.Throttle Actuator Control Pwm                                                       $    $  %         $    $  ANS011.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  012.Throttle Angle with Respect to Lower Mechanical Stop                                $    $  °TPS     $    $  ANS012.BYTE003  $  X*0.466825368
  $  013.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop               $    $  V         $    $  ANS013.BYTE003  $  [0000-7FFF]:XY*0.000152587890625-10		[8000-FFFF]:(XY-65535)*0.000152587890625-10
  $  014.Acceleration pedal position sensor 1 voltage（V_PVS_1）                             $    $  V         $    $  ANS014.BYTE003  $  XY*0.0048828125
  $  015.Acceleration pedal position sensor 2 voltage（V_PVS_2）                             $    $  V         $    $  ANS015.BYTE003  $  XY*0.0048828125
  $  016.Normalized Angle Acceleration Pedal                                                 $    $  %         $    $  ANS016.BYTE003  $  X*0.390625
  $  017.Temperature of Air conditioner evaporator(TACE)                                     $    $  ℃        $    $  ANS017.BYTE003  $  X*0.75-48
  $  018.Temperature of Air conditioner evaporator voltage(VP_TACE_SENSsensor voltage)       $    $  V         $    $  ANS018.BYTE003  $  XY*0.000152588
  $  019.Electric Fan PWM(ECFPWM)                                                            $    $  %         $    $  ANS019.BYTE003  $  X*0.392
  $  020.Cooling Fan Relay                                                                   $    $  -         $    $  ANS020.BYTE003  $  00:lowspeedfanoff highspeedfanoff		01:lowspeedfanon highspeedfanoff		02:lowspeedfanoff highspeedfanon 		03:lowspeedfanoff highspeedfanon  highspeedfanon		其他:-
  $  021.Air condition request switch(LV_ACIN)                                               $    $  -         $    $  ANS021.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  022.Brake test switch(LV_BTS)                                                           $    $  -         $    $  ANS021.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  023.Brake lamp switch(LV_BLS)                                                           $    $  -         $    $  ANS021.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  024.Clutch switch(LV_CS)                                                                $    $  -         $    $  ANS021.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  025.Starter relay(LV_RLY_ST)                                                            $    $  -         $    $  ANS022.BYTE003  $  if(X1&0x20)y=@0240;else y=@0239;
  $  026.Air condition compressor relay(LV_ACCRLY_OUT)                                       $    $  -         $    $  ANS022.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  027.Main relay(LV_RLY_MAIN）                                                            $    $  -         $    $  ANS022.BYTE003  $  if(X1&0x8)y=@0240;else y=@0239;
  $  028.Electronic fuel pump relay(LV_RLY_EFP)                                              $    $  -         $    $  ANS022.BYTE003  $  if(X1&0x10)y=@0240;else y=@0239;
  $  029.Variable intake manifold relay(LV_VIM)                                              $    $  -         $    $  ANS022.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  030.Air conditioning pressure switch(LV_PRS_SWT)                                        $    $  -         $    $  ANS023.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;

 $ 02.Exhaust gas recirculation data

	$	REQ000:7E0 03 22 02 1F 00 00 00 00          $

  $  000.Exhaust Temperature Downstream Catalyst (Model)       $    $  ℃     $    $  ANS000.BYTE003  $  XY*0.0625

 $ 03.Evaporative emission data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 02 02 00 00 00 00          $
	$	REQ003:7E0 03 22 02 51 00 00 00 00          $
	$	REQ004:7E0 03 22 02 16 00 00 00 00          $
	$	REQ005:7E0 03 22 02 04 00 00 00 00          $
	$	REQ006:7E0 03 22 02 52 00 00 00 00          $
	$	REQ007:7E0 03 22 02 08 00 00 00 00          $
	$	REQ008:7E0 03 22 02 09 00 00 00 00          $
	$	REQ009:7E0 03 22 02 28 00 00 00 00          $
	$	REQ010:7E0 03 22 02 62 00 00 00 00          $
	$	REQ011:7E0 03 22 02 FE 00 00 00 00          $
	$	REQ012:7E0 03 22 02 17 00 00 00 00          $
	$	REQ013:7E0 03 22 03 1B 00 00 00 00          $
	$	REQ014:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ015:7E0 03 22 02 FD 00 00 00 00          $
	$	REQ016:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ017:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ018:7E0 03 22 02 23 00 00 00 00          $
	$	REQ019:7E0 03 22 02 24 00 00 00 00          $
	$	REQ020:7E0 03 22 02 25 00 00 00 00          $
	$	REQ021:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ022:7E0 03 22 02 27 00 00 00 00          $
	$	REQ023:7E0 03 22 02 FA 00 00 00 00          $
	$	REQ024:7E0 03 22 02 FB 00 00 00 00          $
	$	REQ025:7E0 03 22 02 10 00 00 00 00          $
	$	REQ026:7E0 03 22 02 53 00 00 00 00          $
	$	REQ027:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ028:7E0 03 22 03 24 00 00 00 00          $
	$	REQ029:7E0 03 22 02 46 00 00 00 00          $
	$	REQ030:7E0 03 22 03 04 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                                         $    $  Nm         $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                                             $    $  Nm         $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                                                $    $  Nm         $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Desired Torque Change From the Idle Speed Control                           $    $  Nm         $    $  ANS003.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  004.Relative Air Mass(Calc. Load Value)                                         $    $  %          $    $  ANS004.BYTE003  $  X*0.392156862745098
  $  005.Engine Speed                                                                $    $  rpm        $    $  ANS005.BYTE003  $  XY
  $  006.Idle Speed Control                                                          $    $  rpm        $    $  ANS006.BYTE003  $  XY
  $  007.Vehicle Speed                                                               $    $  km/h       $    $  ANS007.BYTE003  $  X*1+1
  $  008.Ambient Pressure                                                            $    $  hPa        $    $  ANS008.BYTE003  $  XY*0.0829175249866483
  $  009.Intake Manifold Pressure (Absolute)                                         $    $  hPa        $    $  ANS009.BYTE003  $  XY*0.0829175249866483
  $  010.Actual Intake Manifold Pressure Sensor Voltage                              $    $  V          $    $  ANS010.BYTE003  $  XY*0.000152588
  $  011.Inlet pressure sensor voltage（V_MAP）                                      $    $  V          $    $  ANS011.BYTE003  $  XY*0.000152588
  $  012.Air Mass Flow                                                               $    $  kg/h       $    $  ANS012.BYTE003  $  XY*0.03125
  $  013.Air Flow（MAF_KGH）                                                         $    $  kg/h       $    $  ANS013.BYTE003  $  XY*0.03125
  $  014.Intake Air Temperature                                                      $    $  ℃         $    $  ANS014.BYTE003  $  X*1-48
  $  015.Inlet temperature sensor voltage(V_TIA)                                     $    $  V          $    $  ANS015.BYTE003  $  XY*0.000152588
  $  016.Ambient Air Temperature                                                     $    $  ℃         $    $  ANS016.BYTE003  $  X*0.75+0.75
  $  017.Desired Throttle Position                                                   $    $  °TPS      $    $  ANS017.BYTE003  $  XY*0.007294146
  $  018.Throttle Blade Position Dependent on Poti 1                                 $    $  °TPS      $    $  ANS018.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  019.Throttle Blade Position Dependent on Poti 2                                 $    $  °TPS      $    $  ANS019.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  020.Throttle Actuator Control Pwm                                               $    $  %          $    $  ANS020.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  021.Throttle Angle with Respect to Lower Mechanical Stop                        $    $  °TPS      $    $  ANS021.BYTE003  $  X*0.466825368
  $  022.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop       $    $  V          $    $  ANS022.BYTE003  $  [0000-7FFF]:XY*0.000152587890625-10		[8000-FFFF]:(XY-65535)*0.000152587890625-10
  $  023.Acceleration pedal position sensor 1 voltage（V_PVS_1）                     $    $  V          $    $  ANS023.BYTE003  $  XY*0.0048828125
  $  024.Acceleration pedal position sensor 2 voltage（V_PVS_2）                     $    $  V          $    $  ANS024.BYTE003  $  XY*0.0048828125
  $  025.Normalized Angle Acceleration Pedal                                         $    $  %          $    $  ANS025.BYTE003  $  X*0.390625
  $  026.Canister Purge Solenoid                                                     $    $  %          $    $  ANS026.BYTE003  $  X*0.390625
  $  027.Output Duty Cycle for Canister Purge Valve                                  $    $  %          $    $  ANS027.BYTE003  $  X*0.390625
  $  028.Canister Load(CL_MMV)                                                       $    $  -          $    $  ANS028.BYTE003  $  XY*0.000030517578125
  $  029.Standardized Mass Flow from Canister Purge Control                          $    $  mg/stk     $    $  ANS029.BYTE003  $  XY*0.0211947814145113
  $  030.Alternator PWM(ALTPWM)                                                      $    $  %          $    $  ANS030.BYTE003  $  X*0.390625

 $ 04.The fuel system data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 02 02 00 00 00 00          $
	$	REQ003:7E0 03 22 02 51 00 00 00 00          $
	$	REQ004:7E0 03 22 02 16 00 00 00 00          $
	$	REQ005:7E0 03 22 02 04 00 00 00 00          $
	$	REQ006:7E0 03 22 02 52 00 00 00 00          $
	$	REQ007:7E0 03 22 02 08 00 00 00 00          $
	$	REQ008:7E0 03 22 02 09 00 00 00 00          $
	$	REQ009:7E0 03 22 02 28 00 00 00 00          $
	$	REQ010:7E0 03 22 02 62 00 00 00 00          $
	$	REQ011:7E0 03 22 02 FE 00 00 00 00          $
	$	REQ012:7E0 03 22 02 17 00 00 00 00          $
	$	REQ013:7E0 03 22 03 1B 00 00 00 00          $
	$	REQ014:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ015:7E0 03 22 02 FD 00 00 00 00          $
	$	REQ016:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ017:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ018:7E0 03 22 02 23 00 00 00 00          $
	$	REQ019:7E0 03 22 02 24 00 00 00 00          $
	$	REQ020:7E0 03 22 02 25 00 00 00 00          $
	$	REQ021:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ022:7E0 03 22 02 27 00 00 00 00          $
	$	REQ023:7E0 03 22 02 FA 00 00 00 00          $
	$	REQ024:7E0 03 22 02 FB 00 00 00 00          $
	$	REQ025:7E0 03 22 02 10 00 00 00 00          $
	$	REQ026:7E0 03 22 02 3A 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                                         $    $  Nm        $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                                             $    $  Nm        $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                                                $    $  Nm        $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Desired Torque Change From the Idle Speed Control                           $    $  Nm        $    $  ANS003.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  004.Relative Air Mass(Calc. Load Value)                                         $    $  %         $    $  ANS004.BYTE003  $  X*0.392156862745098
  $  005.Engine Speed                                                                $    $  rpm       $    $  ANS005.BYTE003  $  XY
  $  006.Idle Speed Control                                                          $    $  rpm       $    $  ANS006.BYTE003  $  XY
  $  007.Vehicle Speed                                                               $    $  km/h      $    $  ANS007.BYTE003  $  X*1+1
  $  008.Ambient Pressure                                                            $    $  hPa       $    $  ANS008.BYTE003  $  XY*0.0829175249866483
  $  009.Intake Manifold Pressure (Absolute)                                         $    $  hPa       $    $  ANS009.BYTE003  $  XY*0.0829175249866483
  $  010.Actual Intake Manifold Pressure Sensor Voltage                              $    $  V         $    $  ANS010.BYTE003  $  XY*0.000152588
  $  011.Inlet pressure sensor voltage（V_MAP）                                      $    $  V         $    $  ANS011.BYTE003  $  XY*0.000152588
  $  012.Air Mass Flow                                                               $    $  kg/h      $    $  ANS012.BYTE003  $  XY*0.03125
  $  013.Air Flow（MAF_KGH）                                                         $    $  kg/h      $    $  ANS013.BYTE003  $  XY*0.03125
  $  014.Intake Air Temperature                                                      $    $  ℃        $    $  ANS014.BYTE003  $  X*1-48
  $  015.Inlet temperature sensor voltage(V_TIA)                                     $    $  V         $    $  ANS015.BYTE003  $  XY*0.000152588
  $  016.Ambient Air Temperature                                                     $    $  ℃        $    $  ANS016.BYTE003  $  X*0.75+0.75
  $  017.Desired Throttle Position                                                   $    $  °TPS     $    $  ANS017.BYTE003  $  XY*0.007294146
  $  018.Throttle Blade Position Dependent on Poti 1                                 $    $  °TPS     $    $  ANS018.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  019.Throttle Blade Position Dependent on Poti 2                                 $    $  °TPS     $    $  ANS019.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  020.Throttle Actuator Control Pwm                                               $    $  %         $    $  ANS020.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  021.Throttle Angle with Respect to Lower Mechanical Stop                        $    $  °TPS     $    $  ANS021.BYTE003  $  X*0.466825368
  $  022.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop       $    $  V         $    $  ANS022.BYTE003  $  [0000-7FFF]:XY*0.000152587890625-10		[8000-FFFF]:(XY-65535)*0.000152587890625-10
  $  023.Acceleration pedal position sensor 1 voltage（V_PVS_1）                     $    $  V         $    $  ANS023.BYTE003  $  XY*0.0048828125
  $  024.Acceleration pedal position sensor 2 voltage（V_PVS_2）                     $    $  V         $    $  ANS024.BYTE003  $  XY*0.0048828125
  $  025.Normalized Angle Acceleration Pedal                                         $    $  %         $    $  ANS025.BYTE003  $  X*0.390625
  $  026.Injection Time                                                              $    $  Ms        $    $  ANS026.BYTE003  $  08个字节的HEX显示

 $ 05.Fuel adjustment data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 02 02 00 00 00 00          $
	$	REQ003:7E0 03 22 02 51 00 00 00 00          $
	$	REQ004:7E0 03 22 02 16 00 00 00 00          $
	$	REQ005:7E0 03 22 02 04 00 00 00 00          $
	$	REQ006:7E0 03 22 02 52 00 00 00 00          $
	$	REQ007:7E0 03 22 02 08 00 00 00 00          $
	$	REQ008:7E0 03 22 02 09 00 00 00 00          $
	$	REQ009:7E0 03 22 02 28 00 00 00 00          $
	$	REQ010:7E0 03 22 02 62 00 00 00 00          $
	$	REQ011:7E0 03 22 02 FE 00 00 00 00          $
	$	REQ012:7E0 03 22 02 17 00 00 00 00          $
	$	REQ013:7E0 03 22 03 1B 00 00 00 00          $
	$	REQ014:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ015:7E0 03 22 02 FD 00 00 00 00          $
	$	REQ016:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ017:7E0 03 22 02 22 00 00 00 00          $
	$	REQ018:7E0 03 22 02 47 00 00 00 00          $
	$	REQ019:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ020:7E0 03 22 02 3D 00 00 00 00          $
	$	REQ021:7E0 03 22 02 3E 00 00 00 00          $
	$	REQ022:7E0 03 22 02 3F 00 00 00 00          $
	$	REQ023:7E0 03 22 03 14 00 00 00 00          $
	$	REQ024:7E0 03 22 03 15 00 00 00 00          $
	$	REQ025:7E0 03 22 03 16 00 00 00 00          $
	$	REQ026:7E0 03 22 03 17 00 00 00 00          $
	$	REQ027:7E0 03 22 02 40 00 00 00 00          $
	$	REQ028:7E0 03 22 02 41 00 00 00 00          $
	$	REQ029:7E0 03 22 02 42 00 00 00 00          $
	$	REQ030:7E0 03 22 02 43 00 00 00 00          $
	$	REQ031:7E0 03 22 02 60 00 00 00 00          $
	$	REQ032:7E0 03 22 02 61 00 00 00 00          $
	$	REQ033:7E0 03 22 03 0A 00 00 00 00          $
	$	REQ034:7E0 03 22 03 0B 00 00 00 00          $
	$	REQ035:7E0 03 22 02 50 00 00 00 00          $
	$	REQ036:7E0 03 22 02 2F 00 00 00 00          $
	$	REQ037:7E0 03 22 03 12 00 00 00 00          $
	$	REQ038:7E0 03 22 03 13 00 00 00 00          $
	$	REQ039:7E0 03 22 02 1F 00 00 00 00          $
	$	REQ040:7E0 03 22 03 0E 00 00 00 00          $
	$	REQ041:7E0 03 22 03 0F 00 00 00 00          $
	$	REQ042:7E0 03 22 03 10 00 00 00 00          $
	$	REQ043:7E0 03 22 03 11 00 00 00 00          $
	$	REQ044:7E0 03 22 03 1D 00 00 00 00          $
	$	REQ045:7E0 03 22 03 1E 00 00 00 00          $
	$	REQ046:7E0 03 22 03 1F 00 00 00 00          $
	$	REQ047:7E0 03 22 03 20 00 00 00 00          $
	$	REQ048:7E0 03 22 03 0C 00 00 00 00          $
	$	REQ049:7E0 03 22 02 53 00 00 00 00          $
	$	REQ050:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ051:7E0 03 22 03 24 00 00 00 00          $
	$	REQ052:7E0 03 22 02 46 00 00 00 00          $
	$	REQ053:7E0 03 22 03 04 00 00 00 00          $
	$	REQ054:7E0 03 22 02 57 00 00 00 00          $
	$	REQ055:7E0 03 22 03 29 00 00 00 00          $
	$	REQ056:7E0 03 22 03 2A 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                                          $    $  Nm         $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                                              $    $  Nm         $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                                                 $    $  Nm         $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Desired Torque Change From the Idle Speed Control                            $    $  Nm         $    $  ANS003.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  004.Relative Air Mass(Calc. Load Value)                                          $    $  %          $    $  ANS004.BYTE003  $  X*0.392156862745098
  $  005.Engine Speed                                                                 $    $  rpm        $    $  ANS005.BYTE003  $  XY
  $  006.Idle Speed Control                                                           $    $  rpm        $    $  ANS006.BYTE003  $  XY
  $  007.Vehicle Speed                                                                $    $  km/h       $    $  ANS007.BYTE003  $  X*1+1
  $  008.Ambient Pressure                                                             $    $  hPa        $    $  ANS008.BYTE003  $  XY*0.0829175249866483
  $  009.Intake Manifold Pressure (Absolute)                                          $    $  hPa        $    $  ANS009.BYTE003  $  XY*0.0829175249866483
  $  010.Actual Intake Manifold Pressure Sensor Voltage                               $    $  V          $    $  ANS010.BYTE003  $  XY*0.000152588
  $  011.Inlet pressure sensor voltage（V_MAP）                                       $    $  V          $    $  ANS011.BYTE003  $  XY*0.000152588
  $  012.Air Mass Flow                                                                $    $  kg/h       $    $  ANS012.BYTE003  $  XY*0.03125
  $  013.Air Flow（MAF_KGH）                                                          $    $  kg/h       $    $  ANS013.BYTE003  $  XY*0.03125
  $  014.Intake Air Temperature                                                       $    $  ℃         $    $  ANS014.BYTE003  $  X*1-48
  $  015.Inlet temperature sensor voltage(V_TIA)                                      $    $  V          $    $  ANS015.BYTE003  $  XY*0.000152588
  $  016.Ambient Air Temperature                                                      $    $  ℃         $    $  ANS016.BYTE003  $  X*0.75+0.75
  $  017.Real Ignition Angle                                                          $    $  °CRK      $    $  ANS017.BYTE003  $  X*0.375-35.625
  $  018.Basic Ignition Angle                                                         $    $  °CRK      $    $  ANS018.BYTE003  $  X*0.375-35.625
  $  019.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #1       $    $  °CRK      $    $  ANS019.BYTE003  $  X*0.375-35.625
  $  020.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #2       $    $  °CRK      $    $  ANS020.BYTE003  $  X*0.375-35.625
  $  021.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #3       $    $  °CRK      $    $  ANS021.BYTE003  $  X*0.375-35.625
  $  022.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #4       $    $  °CRK      $    $  ANS022.BYTE003  $  X*0.375-35.625
  $  023.Cylinder#1 ignition advance Angle（IGA_CYL_KNK[0]）                          $    $  °CRK      $    $  ANS023.BYTE003  $  X*0.375-48
  $  024.Cylinder#2 ignition advance Angle（IGA_CYL_KNK[1]）                          $    $  °CRK      $    $  ANS024.BYTE003  $  X*0.375-48
  $  025.Cylinder#3 ignition advance Angle（IGA_CYL_KNK[2]）                          $    $  °CRK      $    $  ANS025.BYTE003  $  X*0.375-48
  $  026.Cylinder#4 ignition advance Angle（IGA_CYL_KNK[3]）                          $    $  °CRK      $    $  ANS026.BYTE003  $  X*0.375-48
  $  027.Reference Level Knock Control, 16bit, Cylinder #1                            $    $  V          $    $  ANS027.BYTE003  $  XY*0.0000762939453727016
  $  028.Reference Level Knock Control, 16bit, Cylinder #2                            $    $  V          $    $  ANS028.BYTE003  $  XY*0.0000762939453727016
  $  029.Reference Level Knock Control, 16bit, Cylinder #3                            $    $  V          $    $  ANS029.BYTE003  $  XY*0.0000762939453727016
  $  030.Reference Level Knock Control, 16bit, Cylinder #4                            $    $  V          $    $  ANS030.BYTE003  $  XY*0.0000762939453727016
  $  031.O2 Sensor Voltage Bank1, Sensor 1                                            $    $  V          $    $  ANS031.BYTE003  $  XY*0.0048828125
  $  032.O2 Sensor Voltage Bank1, Sensor 2                                            $    $  V          $    $  ANS032.BYTE003  $  XY*0.0048828125
  $  033.Lambda sensor heat PWM_UP(LSHPWM_UP_1)                                       $    $  %          $    $  ANS033.BYTE003  $  X*0.390625
  $  034.Lambda sensor heat PWM_DOWN(LSHPWM_DOWN_1)                                   $    $  %          $    $  ANS034.BYTE003  $  X*0.390625
  $  035.Cycle Time Forced Lambda Modulation                                          $    $  -          $    $  ANS035.BYTE003  $  XY*0.01953125
  $  036.Lambda Controller Output                                                     $    $  %          $    $  ANS036.BYTE003  $  [0000-7FFF]:XY*0.00152587890625-100		[8000-FFFF]:(XY-65535)*0.00152587890625-100
  $  037.Fuel Trim factor(FAC_LAM_COR)                                                $    $  %          $    $  ANS037.BYTE003  $  [0000-7FFF]:XY*0.00152587890625-2048		[8000-FFFF]:(XY-65535)*0.00152587890625-2048
  $  038.Fuel AutoLearn factor(FAC_LAM_AD_OUT)                                        $    $  %          $    $  ANS038.BYTE003  $  [0000-7FFF]:XY*0.00152587890625-100		[8000-FFFF]:(XY-65535)*0.00152587890625-100
  $  039.Exhaust Temperature Downstream Catalyst (Model)                              $    $  °C        $    $  ANS039.BYTE003  $  XY*0.0625
  $  040.Cylinde#1 injection time(TI_1)                                               $    $  Ms         $    $  ANS040.BYTE003  $  XY*0.004
  $  041.Cylinde#2 injection time(TI_2)                                               $    $  Ms         $    $  ANS041.BYTE003  $  XY*0.004
  $  042.Cylinde#3 injection time(TI_3)                                               $    $  Ms         $    $  ANS042.BYTE003  $  XY*0.004
  $  043.Cylinde#4 injection time(TI_4)                                               $    $  Ms         $    $  ANS043.BYTE003  $  XY*0.004
  $  044.Start time of Cylinde#1 injection(SOI_0)                                     $    $  °CRK      $    $  ANS044.BYTE003  $  XY*0.375
  $  045.Start time of Cylinde#2 injection(SOI_1)                                     $    $  °CRK      $    $  ANS045.BYTE003  $  XY*0.375
  $  046.Start time of Cylinde#3 injection(SOI_2)                                     $    $  °CRK      $    $  ANS046.BYTE003  $  XY*0.375
  $  047.Start time of Cylinde#4 injection(SOI_3)                                     $    $  °CRK      $    $  ANS047.BYTE003  $  XY*0.375
  $  048.Intake VVT PWM(VVTPWM_IN)                                                    $    $  %          $    $  ANS048.BYTE003  $  XY*0.0061035156
  $  049.Canister Purge Solenoid                                                      $    $  %          $    $  ANS049.BYTE003  $  X*0.390625
  $  050.Output Duty Cycle for Canister Purge Valve                                   $    $  %          $    $  ANS050.BYTE003  $  X*0.390625
  $  051.Canister Load(CL_MMV)                                                        $    $  -          $    $  ANS051.BYTE003  $  XY*0.000030517578125
  $  052.Standardized Mass Flow from Canister Purge Control                           $    $  mg/stk     $    $  ANS052.BYTE003  $  XY*0.0211947814145113
  $  053.Alternator PWM(ALTPWM)                                                       $    $  %          $    $  ANS053.BYTE003  $  X*0.390625
  $  054.Inlet Camshaft Control                                                       $    $  -          $    $  ANS054.BYTE003  $  00: initial state		01: enter HOLD state		02: hold state		03: adjust state		其他:-
  $  055.State of intake VVT(STATE_IVVT)                                              $    $  -          $    $  ANS055.BYTE003  $  00:passive		01:ready		02:adaptive		03:enabled		其他:-
  $  056.State of intake VVT PMW(STATE_IVVT_PWM_IN)                                   $    $  -          $    $  ANS056.BYTE003  $  00: control		01: active		02: passive		其他:-

 $ 06.Oxygen sensor data

	$	REQ000:7E0 03 22 02 01 00 00 00 00          $
	$	REQ001:7E0 03 22 02 02 00 00 00 00          $
	$	REQ002:7E0 03 22 02 51 00 00 00 00          $
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
	$	REQ019:7E0 03 22 02 25 00 00 00 00          $
	$	REQ020:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ021:7E0 03 22 02 27 00 00 00 00          $
	$	REQ022:7E0 03 22 02 FA 00 00 00 00          $
	$	REQ023:7E0 03 22 02 FB 00 00 00 00          $
	$	REQ024:7E0 03 22 02 10 00 00 00 00          $
	$	REQ025:7E0 03 22 02 22 00 00 00 00          $
	$	REQ026:7E0 03 22 02 47 00 00 00 00          $
	$	REQ027:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ028:7E0 03 22 02 3D 00 00 00 00          $
	$	REQ029:7E0 03 22 02 3E 00 00 00 00          $
	$	REQ030:7E0 03 22 02 3F 00 00 00 00          $
	$	REQ031:7E0 03 22 03 14 00 00 00 00          $
	$	REQ032:7E0 03 22 03 15 00 00 00 00          $
	$	REQ033:7E0 03 22 03 16 00 00 00 00          $
	$	REQ034:7E0 03 22 03 17 00 00 00 00          $
	$	REQ035:7E0 03 22 02 48 00 00 00 00          $
	$	REQ036:7E0 03 22 02 49 00 00 00 00          $
	$	REQ037:7E0 03 22 02 4A 00 00 00 00          $
	$	REQ038:7E0 03 22 02 4B 00 00 00 00          $
	$	REQ039:7E0 03 22 02 4C 00 00 00 00          $
	$	REQ040:7E0 03 22 02 4D 00 00 00 00          $
	$	REQ041:7E0 03 22 02 4E 00 00 00 00          $
	$	REQ042:7E0 03 22 02 4F 00 00 00 00          $
	$	REQ043:7E0 03 22 02 60 00 00 00 00          $
	$	REQ044:7E0 03 22 02 61 00 00 00 00          $
	$	REQ045:7E0 03 22 03 0A 00 00 00 00          $
	$	REQ046:7E0 03 22 03 0B 00 00 00 00          $
	$	REQ047:7E0 03 22 02 50 00 00 00 00          $
	$	REQ048:7E0 03 22 02 2F 00 00 00 00          $
	$	REQ049:7E0 03 22 03 12 00 00 00 00          $
	$	REQ050:7E0 03 22 03 13 00 00 00 00          $
	$	REQ051:7E0 03 22 02 1F 00 00 00 00          $
	$	REQ052:7E0 03 22 03 0E 00 00 00 00          $
	$	REQ053:7E0 03 22 03 0F 00 00 00 00          $
	$	REQ054:7E0 03 22 03 10 00 00 00 00          $
	$	REQ055:7E0 03 22 03 11 00 00 00 00          $
	$	REQ056:7E0 03 22 03 1D 00 00 00 00          $
	$	REQ057:7E0 03 22 03 1E 00 00 00 00          $
	$	REQ058:7E0 03 22 03 1F 00 00 00 00          $
	$	REQ059:7E0 03 22 03 20 00 00 00 00          $
	$	REQ060:7E0 03 22 03 0C 00 00 00 00          $
	$	REQ061:7E0 03 22 02 53 00 00 00 00          $
	$	REQ062:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ063:7E0 03 22 03 24 00 00 00 00          $
	$	REQ064:7E0 03 22 02 46 00 00 00 00          $
	$	REQ065:7E0 03 22 03 04 00 00 00 00          $
	$	REQ066:7E0 03 22 02 57 00 00 00 00          $
	$	REQ067:7E0 03 22 03 29 00 00 00 00          $
	$	REQ068:7E0 03 22 03 2A 00 00 00 00          $

  $  000.Desired Indicated Engine Torque                                                    $    $  Nm         $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Indicated Real Engine Torque                                                       $    $  Nm         $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Desired Torque Change From the Idle Speed Control                                  $    $  Nm         $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Relative Air Mass(Calc. Load Value)                                                $    $  %          $    $  ANS003.BYTE003  $  X*0.392156862745098
  $  004.Engine Speed                                                                       $    $  rpm        $    $  ANS004.BYTE003  $  XY
  $  005.Idle Speed Control                                                                 $    $  rpm        $    $  ANS005.BYTE003  $  XY
  $  006.Vehicle Speed                                                                      $    $  km/h       $    $  ANS006.BYTE003  $  X*1+1
  $  007.Ambient Pressure                                                                   $    $  hPa        $    $  ANS007.BYTE003  $  XY*0.0829175249866483
  $  008.Intake Manifold Pressure (Absolute)                                                $    $  hPa        $    $  ANS008.BYTE003  $  XY*0.0829175249866483
  $  009.Actual Intake Manifold Pressure Sensor Voltage                                     $    $  V          $    $  ANS009.BYTE003  $  XY*0.000152588
  $  010.Inlet pressure sensor voltage（V_MAP）                                             $    $  V          $    $  ANS010.BYTE003  $  XY*0.000152588
  $  011.Air Mass Flow                                                                      $    $  kg/h       $    $  ANS011.BYTE003  $  XY*0.03125
  $  012.Air Flow（MAF_KGH）                                                                $    $  kg/h       $    $  ANS012.BYTE003  $  XY*0.03125
  $  013.Intake Air Temperature                                                             $    $  ℃         $    $  ANS013.BYTE003  $  X*1-48
  $  014.Inlet temperature sensor voltage(V_TIA)                                            $    $  V          $    $  ANS014.BYTE003  $  XY*0.000152588
  $  015.Ambient Air Temperature                                                            $    $  ℃         $    $  ANS015.BYTE003  $  X*0.75+0.75
  $  016.Desired Throttle Position                                                          $    $  °TPS      $    $  ANS016.BYTE003  $  XY*0.007294146
  $  017.Throttle Blade Position Dependent on Poti 1                                        $    $  °TPS      $    $  ANS017.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  018.Throttle Blade Position Dependent on Poti 2                                        $    $  °TPS      $    $  ANS018.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  019.Throttle Actuator Control Pwm                                                      $    $  %          $    $  ANS019.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  020.Throttle Angle with Respect to Lower Mechanical Stop                               $    $  °TPS      $    $  ANS020.BYTE003  $  X*0.466825368
  $  021.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop              $    $  V          $    $  ANS021.BYTE003  $  [0000-7FFF]:XY*0.000152587890625-10		[8000-FFFF]:(XY-65535)*0.000152587890625-10
  $  022.Acceleration pedal position sensor 1 voltage（V_PVS_1）                            $    $  V          $    $  ANS022.BYTE003  $  XY*0.0048828125
  $  023.Acceleration pedal position sensor 2 voltage（V_PVS_2）                            $    $  V          $    $  ANS023.BYTE003  $  XY*0.0048828125
  $  024.Normalized Angle Acceleration Pedal                                                $    $  %          $    $  ANS024.BYTE003  $  X*0.390625
  $  025.Real Ignition Angle                                                                $    $  °CRK      $    $  ANS025.BYTE003  $  X*0.375-35.625
  $  026.Basic Ignition Angle                                                               $    $  °CRK      $    $  ANS026.BYTE003  $  X*0.375-35.625
  $  027.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #1             $    $  °CRK      $    $  ANS027.BYTE003  $  X*0.375-35.625
  $  028.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #2             $    $  °CRK      $    $  ANS028.BYTE003  $  X*0.375-35.625
  $  029.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #3             $    $  °CRK      $    $  ANS029.BYTE003  $  X*0.375-35.625
  $  030.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #4             $    $  °CRK      $    $  ANS030.BYTE003  $  X*0.375-35.625
  $  031.Cylinder#1 ignition advance Angle（IGA_CYL_KNK[0]）                                $    $  °CRK      $    $  ANS031.BYTE003  $  X*0.375-48
  $  032.Cylinder#2 ignition advance Angle（IGA_CYL_KNK[1]）                                $    $  °CRK      $    $  ANS032.BYTE003  $  X*0.375-48
  $  033.Cylinder#3 ignition advance Angle（IGA_CYL_KNK[2]）                                $    $  °CRK      $    $  ANS033.BYTE003  $  X*0.375-48
  $  034.Cylinder#4 ignition advance Angle（IGA_CYL_KNK[3]）                                $    $  °CRK      $    $  ANS034.BYTE003  $  X*0.375-48
  $  035.Fault Counter, Summary, Counts Emission Relevant misfirings of All Cylinders       $    $  -          $    $  ANS035.BYTE003  $  XY
  $  036.Number Of Misfire:Cylinder#1                                                       $    $  -          $    $  ANS036.BYTE003  $  XY
  $  037.Number Of Misfire:Cylinder#2                                                       $    $  -          $    $  ANS037.BYTE003  $  XY
  $  038.Number Of Misfire:Cylinder#3                                                       $    $  -          $    $  ANS038.BYTE003  $  XY
  $  039.Number Of Misfire:Cylinder#4                                                       $    $  -          $    $  ANS039.BYTE003  $  XY
  $  040.Area Of Misfire, Minimum Engine Speed                                              $    $  Rpm        $    $  ANS040.BYTE003  $  XY
  $  041.Area Of Misfire, Minimum Engine Speed                                              $    $  Rpm        $    $  ANS041.BYTE003  $  XY
  $  042.Area Of Misfirings, Minimum Load                                                   $    $  %          $    $  ANS042.BYTE003  $  X
  $  043.O2 Sensor Voltage Bank1, Sensor 1                                                  $    $  V          $    $  ANS043.BYTE003  $  XY*0.0048828125
  $  044.O2 Sensor Voltage Bank1, Sensor 2                                                  $    $  V          $    $  ANS044.BYTE003  $  XY*0.0048828125
  $  045.Lambda sensor heat PWM_UP(LSHPWM_UP_1)                                             $    $  %          $    $  ANS045.BYTE003  $  X*0.390625
  $  046.Lambda sensor heat PWM_DOWN(LSHPWM_DOWN_1)                                         $    $  %          $    $  ANS046.BYTE003  $  X*0.390625
  $  047.Cycle Time Forced Lambda Modulation                                                $    $  -          $    $  ANS047.BYTE003  $  XY*0.01953125
  $  048.Lambda Controller Output                                                           $    $  %          $    $  ANS048.BYTE003  $  [0000-7FFF]:XY*0.00152587890625-100		[8000-FFFF]:(XY-65535)*0.00152587890625-100
  $  049.Fuel Trim factor(FAC_LAM_COR)                                                      $    $  %          $    $  ANS049.BYTE003  $  [0000-7FFF]:XY*0.00152587890625-2048		[8000-FFFF]:(XY-65535)*0.00152587890625-2048
  $  050.Fuel AutoLearn factor(FAC_LAM_AD_OUT)                                              $    $  %          $    $  ANS050.BYTE003  $  [0000-7FFF]:XY*0.00152587890625-100		[8000-FFFF]:(XY-65535)*0.00152587890625-100
  $  051.Exhaust Temperature Downstream Catalyst (Model)                                    $    $  °C        $    $  ANS051.BYTE003  $  XY*0.0625
  $  052.Cylinde#1 injection time(TI_1)                                                     $    $  Ms         $    $  ANS052.BYTE003  $  XY*0.004
  $  053.Cylinde#2 injection time(TI_2)                                                     $    $  Ms         $    $  ANS053.BYTE003  $  XY*0.004
  $  054.Cylinde#3 injection time(TI_3)                                                     $    $  Ms         $    $  ANS054.BYTE003  $  XY*0.004
  $  055.Cylinde#4 injection time(TI_4)                                                     $    $  Ms         $    $  ANS055.BYTE003  $  XY*0.004
  $  056.Start time of Cylinde#1 injection(SOI_0)                                           $    $  °CRK      $    $  ANS056.BYTE003  $  XY*0.375
  $  057.Start time of Cylinde#2 injection(SOI_1)                                           $    $  °CRK      $    $  ANS057.BYTE003  $  XY*0.375
  $  058.Start time of Cylinde#3 injection(SOI_2)                                           $    $  °CRK      $    $  ANS058.BYTE003  $  XY*0.375
  $  059.Start time of Cylinde#4 injection(SOI_3)                                           $    $  °CRK      $    $  ANS059.BYTE003  $  XY*0.375
  $  060.Intake VVT PWM(VVTPWM_IN)                                                          $    $  %          $    $  ANS060.BYTE003  $  XY*0.0061035156
  $  061.Canister Purge Solenoid                                                            $    $  %          $    $  ANS061.BYTE003  $  X*0.390625
  $  062.Output Duty Cycle for Canister Purge Valve                                         $    $  %          $    $  ANS062.BYTE003  $  X*0.390625
  $  063.Canister Load(CL_MMV)                                                              $    $  -          $    $  ANS063.BYTE003  $  XY*0.000030517578125
  $  064.Standardized Mass Flow from Canister Purge Control                                 $    $  mg/stk     $    $  ANS064.BYTE003  $  XY*0.0211947814145113
  $  065.Alternator PWM(ALTPWM)                                                             $    $  %          $    $  ANS065.BYTE003  $  X*0.390625
  $  066.Inlet Camshaft Control                                                             $    $  -          $    $  ANS066.BYTE003  $  00: initial state		01: enter HOLD state		02: hold state		03: adjust state		其他:-
  $  067.State of intake VVT(STATE_IVVT)                                                    $    $  -          $    $  ANS067.BYTE003  $  00:passive		01:ready		02:adaptive		03:enabled		其他:-
  $  068.State of intake VVT PMW(STATE_IVVT_PWM_IN)                                         $    $  -          $    $  ANS068.BYTE003  $  00: control		01: active		02: passive		其他:-

 $ 07.Ignition data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 02 02 00 00 00 00          $
	$	REQ003:7E0 03 22 02 51 00 00 00 00          $
	$	REQ004:7E0 03 22 02 16 00 00 00 00          $
	$	REQ005:7E0 03 22 02 04 00 00 00 00          $
	$	REQ006:7E0 03 22 02 52 00 00 00 00          $
	$	REQ007:7E0 03 22 02 08 00 00 00 00          $
	$	REQ008:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ009:7E0 03 22 02 23 00 00 00 00          $
	$	REQ010:7E0 03 22 02 24 00 00 00 00          $
	$	REQ011:7E0 03 22 02 25 00 00 00 00          $
	$	REQ012:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ013:7E0 03 22 02 27 00 00 00 00          $
	$	REQ014:7E0 03 22 02 FA 00 00 00 00          $
	$	REQ015:7E0 03 22 02 FB 00 00 00 00          $
	$	REQ016:7E0 03 22 02 10 00 00 00 00          $
	$	REQ017:7E0 03 22 02 22 00 00 00 00          $
	$	REQ018:7E0 03 22 02 47 00 00 00 00          $
	$	REQ019:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ020:7E0 03 22 02 3D 00 00 00 00          $
	$	REQ021:7E0 03 22 02 3E 00 00 00 00          $
	$	REQ022:7E0 03 22 02 3F 00 00 00 00          $
	$	REQ023:7E0 03 22 03 14 00 00 00 00          $
	$	REQ024:7E0 03 22 03 15 00 00 00 00          $
	$	REQ025:7E0 03 22 03 16 00 00 00 00          $
	$	REQ026:7E0 03 22 03 17 00 00 00 00          $
	$	REQ027:7E0 03 22 02 40 00 00 00 00          $
	$	REQ028:7E0 03 22 02 41 00 00 00 00          $
	$	REQ029:7E0 03 22 02 42 00 00 00 00          $
	$	REQ030:7E0 03 22 02 43 00 00 00 00          $
	$	REQ031:7E0 03 22 02 48 00 00 00 00          $
	$	REQ032:7E0 03 22 02 49 00 00 00 00          $
	$	REQ033:7E0 03 22 02 4A 00 00 00 00          $
	$	REQ034:7E0 03 22 02 4B 00 00 00 00          $
	$	REQ035:7E0 03 22 02 4C 00 00 00 00          $
	$	REQ036:7E0 03 22 02 4D 00 00 00 00          $
	$	REQ037:7E0 03 22 02 4E 00 00 00 00          $
	$	REQ038:7E0 03 22 02 4F 00 00 00 00          $
	$	REQ039:7E0 03 22 03 0E 00 00 00 00          $
	$	REQ040:7E0 03 22 03 0F 00 00 00 00          $
	$	REQ041:7E0 03 22 03 10 00 00 00 00          $
	$	REQ042:7E0 03 22 03 11 00 00 00 00          $
	$	REQ043:7E0 03 22 03 1D 00 00 00 00          $
	$	REQ044:7E0 03 22 03 1E 00 00 00 00          $
	$	REQ045:7E0 03 22 03 1F 00 00 00 00          $
	$	REQ046:7E0 03 22 03 20 00 00 00 00          $
	$	REQ047:7E0 03 22 03 0C 00 00 00 00          $
	$	REQ048:7E0 03 22 02 53 00 00 00 00          $
	$	REQ049:7E0 03 22 02 57 00 00 00 00          $
	$	REQ050:7E0 03 22 03 29 00 00 00 00          $
	$	REQ051:7E0 03 22 03 2A 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                                                $    $  Nm        $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                                                    $    $  Nm        $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                                                       $    $  Nm        $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Desired Torque Change From the Idle Speed Control                                  $    $  Nm        $    $  ANS003.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  004.Relative Air Mass(Calc. Load Value)                                                $    $  %         $    $  ANS004.BYTE003  $  X*0.392156862745098
  $  005.Engine Speed                                                                       $    $  rpm       $    $  ANS005.BYTE003  $  XY
  $  006.Idle Speed Control                                                                 $    $  rpm       $    $  ANS006.BYTE003  $  XY
  $  007.Vehicle Speed                                                                      $    $  km/h      $    $  ANS007.BYTE003  $  X*1+1
  $  008.Desired Throttle Position                                                          $    $  °TPS     $    $  ANS008.BYTE003  $  XY*0.007294146
  $  009.Throttle Blade Position Dependent on Poti 1                                        $    $  °TPS     $    $  ANS009.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  010.Throttle Blade Position Dependent on Poti 2                                        $    $  °TPS     $    $  ANS010.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  011.Throttle Actuator Control Pwm                                                      $    $  %         $    $  ANS011.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  012.Throttle Angle with Respect to Lower Mechanical Stop                               $    $  °TPS     $    $  ANS012.BYTE003  $  X*0.466825368
  $  013.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop              $    $  V         $    $  ANS013.BYTE003  $  [0000-7FFF]:XY*0.000152587890625-10		[8000-FFFF]:(XY-65535)*0.000152587890625-10
  $  014.Acceleration pedal position sensor 1 voltage（V_PVS_1）                            $    $  V         $    $  ANS014.BYTE003  $  XY*0.0048828125
  $  015.Acceleration pedal position sensor 2 voltage（V_PVS_2）                            $    $  V         $    $  ANS015.BYTE003  $  XY*0.0048828125
  $  016.Normalized Angle Acceleration Pedal                                                $    $  %         $    $  ANS016.BYTE003  $  X*0.390625
  $  017.Real Ignition Angle                                                                $    $  °CRK     $    $  ANS017.BYTE003  $  X*0.375-35.625
  $  018.Basic Ignition Angle                                                               $    $  °CRK     $    $  ANS018.BYTE003  $  X*0.375-35.625
  $  019.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #1             $    $  °CRK     $    $  ANS019.BYTE003  $  X*0.375-35.625
  $  020.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #2             $    $  °CRK     $    $  ANS020.BYTE003  $  X*0.375-35.625
  $  021.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #3             $    $  °CRK     $    $  ANS021.BYTE003  $  X*0.375-35.625
  $  022.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #4             $    $  °CRK     $    $  ANS022.BYTE003  $  X*0.375-35.625
  $  023.Cylinder#1 ignition advance Angle（IGA_CYL_KNK[0]）                                $    $  °CRK     $    $  ANS023.BYTE003  $  X*0.375-48
  $  024.Cylinder#2 ignition advance Angle（IGA_CYL_KNK[1]）                                $    $  °CRK     $    $  ANS024.BYTE003  $  X*0.375-48
  $  025.Cylinder#3 ignition advance Angle（IGA_CYL_KNK[2]）                                $    $  °CRK     $    $  ANS025.BYTE003  $  X*0.375-48
  $  026.Cylinder#4 ignition advance Angle（IGA_CYL_KNK[3]）                                $    $  °CRK     $    $  ANS026.BYTE003  $  X*0.375-48
  $  027.Reference Level Knock Control, 16bit, Cylinder #1                                  $    $  V         $    $  ANS027.BYTE003  $  XY*0.0000762939453727016
  $  028.Reference Level Knock Control, 16bit, Cylinder #2                                  $    $  V         $    $  ANS028.BYTE003  $  XY*0.0000762939453727016
  $  029.Reference Level Knock Control, 16bit, Cylinder #3                                  $    $  V         $    $  ANS029.BYTE003  $  XY*0.0000762939453727016
  $  030.Reference Level Knock Control, 16bit, Cylinder #4                                  $    $  V         $    $  ANS030.BYTE003  $  XY*0.0000762939453727016
  $  031.Fault Counter, Summary, Counts Emission Relevant misfirings of All Cylinders       $    $  -         $    $  ANS031.BYTE003  $  XY
  $  032.Number Of Misfire:Cylinder#1                                                       $    $  -         $    $  ANS032.BYTE003  $  XY
  $  033.Number Of Misfire:Cylinder#2                                                       $    $  -         $    $  ANS033.BYTE003  $  XY
  $  034.Number Of Misfire:Cylinder#3                                                       $    $  -         $    $  ANS034.BYTE003  $  XY
  $  035.Number Of Misfire:Cylinder#4                                                       $    $  -         $    $  ANS035.BYTE003  $  XY
  $  036.Area Of Misfire, Minimum Engine Speed                                              $    $  Rpm       $    $  ANS036.BYTE003  $  XY
  $  037.Area Of Misfire, Minimum Engine Speed                                              $    $  Rpm       $    $  ANS037.BYTE003  $  XY
  $  038.Area Of Misfirings, Minimum Load                                                   $    $  %         $    $  ANS038.BYTE003  $  X
  $  039.Cylinde#1 injection time(TI_1)                                                     $    $  Ms        $    $  ANS039.BYTE003  $  XY*0.004
  $  040.Cylinde#2 injection time(TI_2)                                                     $    $  Ms        $    $  ANS040.BYTE003  $  XY*0.004
  $  041.Cylinde#3 injection time(TI_3)                                                     $    $  Ms        $    $  ANS041.BYTE003  $  XY*0.004
  $  042.Cylinde#4 injection time(TI_4)                                                     $    $  Ms        $    $  ANS042.BYTE003  $  XY*0.004
  $  043.Start time of Cylinde#1 injection(SOI_0)                                           $    $  °CRK     $    $  ANS043.BYTE003  $  XY*0.375
  $  044.Start time of Cylinde#2 injection(SOI_1)                                           $    $  °CRK     $    $  ANS044.BYTE003  $  XY*0.375
  $  045.Start time of Cylinde#3 injection(SOI_2)                                           $    $  °CRK     $    $  ANS045.BYTE003  $  XY*0.375
  $  046.Start time of Cylinde#4 injection(SOI_3)                                           $    $  °CRK     $    $  ANS046.BYTE003  $  XY*0.375
  $  047.Intake VVT PWM(VVTPWM_IN)                                                          $    $  %         $    $  ANS047.BYTE003  $  XY*0.0061035156
  $  048.Canister Purge Solenoid                                                            $    $  %         $    $  ANS048.BYTE003  $  X*0.390625
  $  049.Inlet Camshaft Control                                                             $    $  -         $    $  ANS049.BYTE003  $  00: initial state		01: enter HOLD state		02: hold state		03: adjust state		其他:-
  $  050.State of intake VVT(STATE_IVVT)                                                    $    $  -         $    $  ANS050.BYTE003  $  00:passive		01:ready		02:adaptive		03:enabled		其他:-
  $  051.State of intake VVT PMW(STATE_IVVT_PWM_IN)                                         $    $  -         $    $  ANS051.BYTE003  $  00: control		01: active		02: passive		其他:-

 $ 08.Air intake data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 02 02 00 00 00 00          $
	$	REQ003:7E0 03 22 02 51 00 00 00 00          $
	$	REQ004:7E0 03 22 02 16 00 00 00 00          $
	$	REQ005:7E0 03 22 02 04 00 00 00 00          $
	$	REQ006:7E0 03 22 02 52 00 00 00 00          $
	$	REQ007:7E0 03 22 02 08 00 00 00 00          $
	$	REQ008:7E0 03 22 02 09 00 00 00 00          $
	$	REQ009:7E0 03 22 02 28 00 00 00 00          $
	$	REQ010:7E0 03 22 02 62 00 00 00 00          $
	$	REQ011:7E0 03 22 02 FE 00 00 00 00          $
	$	REQ012:7E0 03 22 02 17 00 00 00 00          $
	$	REQ013:7E0 03 22 03 1B 00 00 00 00          $
	$	REQ014:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ015:7E0 03 22 02 FD 00 00 00 00          $
	$	REQ016:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ017:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ018:7E0 03 22 02 23 00 00 00 00          $
	$	REQ019:7E0 03 22 02 24 00 00 00 00          $
	$	REQ020:7E0 03 22 02 25 00 00 00 00          $
	$	REQ021:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ022:7E0 03 22 02 27 00 00 00 00          $
	$	REQ023:7E0 03 22 02 FA 00 00 00 00          $
	$	REQ024:7E0 03 22 02 FB 00 00 00 00          $
	$	REQ025:7E0 03 22 02 10 00 00 00 00          $
	$	REQ026:7E0 03 22 02 60 00 00 00 00          $
	$	REQ027:7E0 03 22 02 61 00 00 00 00          $
	$	REQ028:7E0 03 22 03 0A 00 00 00 00          $
	$	REQ029:7E0 03 22 03 0B 00 00 00 00          $
	$	REQ030:7E0 03 22 02 50 00 00 00 00          $
	$	REQ031:7E0 03 22 02 2F 00 00 00 00          $
	$	REQ032:7E0 03 22 03 12 00 00 00 00          $
	$	REQ033:7E0 03 22 03 13 00 00 00 00          $
	$	REQ034:7E0 03 22 02 1F 00 00 00 00          $
	$	REQ035:7E0 03 22 03 0C 00 00 00 00          $
	$	REQ036:7E0 03 22 02 53 00 00 00 00          $
	$	REQ037:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ038:7E0 03 22 03 24 00 00 00 00          $
	$	REQ039:7E0 03 22 02 46 00 00 00 00          $
	$	REQ040:7E0 03 22 03 04 00 00 00 00          $
	$	REQ041:7E0 03 22 02 57 00 00 00 00          $
	$	REQ042:7E0 03 22 03 29 00 00 00 00          $
	$	REQ043:7E0 03 22 03 2A 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                                         $    $  Nm         $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                                             $    $  Nm         $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                                                $    $  Nm         $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Desired Torque Change From the Idle Speed Control                           $    $  Nm         $    $  ANS003.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  004.Relative Air Mass(Calc. Load Value)                                         $    $  %          $    $  ANS004.BYTE003  $  X*0.392156862745098
  $  005.Engine Speed                                                                $    $  rpm        $    $  ANS005.BYTE003  $  XY
  $  006.Idle Speed Control                                                          $    $  rpm        $    $  ANS006.BYTE003  $  XY
  $  007.Vehicle Speed                                                               $    $  km/h       $    $  ANS007.BYTE003  $  X*1+1
  $  008.Ambient Pressure                                                            $    $  hPa        $    $  ANS008.BYTE003  $  XY*0.0829175249866483
  $  009.Intake Manifold Pressure (Absolute)                                         $    $  hPa        $    $  ANS009.BYTE003  $  XY*0.0829175249866483
  $  010.Actual Intake Manifold Pressure Sensor Voltage                              $    $  V          $    $  ANS010.BYTE003  $  XY*0.000152588
  $  011.Inlet pressure sensor voltage（V_MAP）                                      $    $  V          $    $  ANS011.BYTE003  $  XY*0.000152588
  $  012.Air Mass Flow                                                               $    $  kg/h       $    $  ANS012.BYTE003  $  XY*0.03125
  $  013.Air Flow（MAF_KGH）                                                         $    $  kg/h       $    $  ANS013.BYTE003  $  XY*0.03125
  $  014.Intake Air Temperature                                                      $    $  ℃         $    $  ANS014.BYTE003  $  X*1-48
  $  015.Inlet temperature sensor voltage(V_TIA)                                     $    $  V          $    $  ANS015.BYTE003  $  XY*0.000152588
  $  016.Ambient Air Temperature                                                     $    $  ℃         $    $  ANS016.BYTE003  $  X*0.75+0.75
  $  017.Desired Throttle Position                                                   $    $  °TPS      $    $  ANS017.BYTE003  $  XY*0.007294146
  $  018.Throttle Blade Position Dependent on Poti 1                                 $    $  °TPS      $    $  ANS018.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  019.Throttle Blade Position Dependent on Poti 2                                 $    $  °TPS      $    $  ANS019.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  020.Throttle Actuator Control Pwm                                               $    $  %          $    $  ANS020.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  021.Throttle Angle with Respect to Lower Mechanical Stop                        $    $  °TPS      $    $  ANS021.BYTE003  $  X*0.466825368
  $  022.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop       $    $  V          $    $  ANS022.BYTE003  $  [0000-7FFF]:XY*0.000152587890625-10		[8000-FFFF]:(XY-65535)*0.000152587890625-10
  $  023.Acceleration pedal position sensor 1 voltage（V_PVS_1）                     $    $  V          $    $  ANS023.BYTE003  $  XY*0.0048828125
  $  024.Acceleration pedal position sensor 2 voltage（V_PVS_2）                     $    $  V          $    $  ANS024.BYTE003  $  XY*0.0048828125
  $  025.Normalized Angle Acceleration Pedal                                         $    $  %          $    $  ANS025.BYTE003  $  X*0.390625
  $  026.O2 Sensor Voltage Bank1, Sensor 1                                           $    $  V          $    $  ANS026.BYTE003  $  XY*0.0048828125
  $  027.O2 Sensor Voltage Bank1, Sensor 2                                           $    $  V          $    $  ANS027.BYTE003  $  XY*0.0048828125
  $  028.Lambda sensor heat PWM_UP(LSHPWM_UP_1)                                      $    $  %          $    $  ANS028.BYTE003  $  X*0.390625
  $  029.Lambda sensor heat PWM_DOWN(LSHPWM_DOWN_1)                                  $    $  %          $    $  ANS029.BYTE003  $  X*0.390625
  $  030.Cycle Time Forced Lambda Modulation                                         $    $  -          $    $  ANS030.BYTE003  $  XY*0.01953125
  $  031.Lambda Controller Output                                                    $    $  %          $    $  ANS031.BYTE003  $  [0000-7FFF]:XY*0.00152587890625-100		[8000-FFFF]:(XY-65535)*0.00152587890625-100
  $  032.Fuel Trim factor(FAC_LAM_COR)                                               $    $  %          $    $  ANS032.BYTE003  $  [0000-7FFF]:XY*0.00152587890625-2048		[8000-FFFF]:(XY-65535)*0.00152587890625-2048
  $  033.Fuel AutoLearn factor(FAC_LAM_AD_OUT)                                       $    $  %          $    $  ANS033.BYTE003  $  [0000-7FFF]:XY*0.00152587890625-100		[8000-FFFF]:(XY-65535)*0.00152587890625-100
  $  034.Exhaust Temperature Downstream Catalyst (Model)                             $    $  °C        $    $  ANS034.BYTE003  $  XY*0.0625
  $  035.Intake VVT PWM(VVTPWM_IN)                                                   $    $  %          $    $  ANS035.BYTE003  $  XY*0.0061035156
  $  036.Canister Purge Solenoid                                                     $    $  %          $    $  ANS036.BYTE003  $  X*0.390625
  $  037.Output Duty Cycle for Canister Purge Valve                                  $    $  %          $    $  ANS037.BYTE003  $  X*0.390625
  $  038.Canister Load(CL_MMV)                                                       $    $  -          $    $  ANS038.BYTE003  $  XY*0.000030517578125
  $  039.Standardized Mass Flow from Canister Purge Control                          $    $  mg/stk     $    $  ANS039.BYTE003  $  XY*0.0211947814145113
  $  040.Alternator PWM(ALTPWM)                                                      $    $  %          $    $  ANS040.BYTE003  $  X*0.390625
  $  041.Inlet Camshaft Control                                                      $    $  -          $    $  ANS041.BYTE003  $  00: initial state		01: enter HOLD state		02: hold state		03: adjust state		其他:-
  $  042.State of intake VVT(STATE_IVVT)                                             $    $  -          $    $  ANS042.BYTE003  $  00:passive		01:ready		02:adaptive		03:enabled		其他:-
  $  043.State of intake VVT PMW(STATE_IVVT_PWM_IN)                                  $    $  -          $    $  ANS043.BYTE003  $  00: control		01: active		02: passive		其他:-

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
	$	REQ016:7E0 03 22 02 59 00 00 00 00          $
	$	REQ017:7E0 03 22 02 5A 00 00 00 00          $

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
  $  016.MIL                                                         $    $  -          $    $  ANS016.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  017.SVS                                                         $    $  -          $    $  ANS017.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;

 $ 10.The fire data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 02 02 00 00 00 00          $
	$	REQ003:7E0 03 22 02 51 00 00 00 00          $
	$	REQ004:7E0 03 22 02 16 00 00 00 00          $
	$	REQ005:7E0 03 22 02 04 00 00 00 00          $
	$	REQ006:7E0 03 22 02 52 00 00 00 00          $
	$	REQ007:7E0 03 22 02 08 00 00 00 00          $
	$	REQ008:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ009:7E0 03 22 02 23 00 00 00 00          $
	$	REQ010:7E0 03 22 02 24 00 00 00 00          $
	$	REQ011:7E0 03 22 02 25 00 00 00 00          $
	$	REQ012:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ013:7E0 03 22 02 27 00 00 00 00          $
	$	REQ014:7E0 03 22 02 FA 00 00 00 00          $
	$	REQ015:7E0 03 22 02 FB 00 00 00 00          $
	$	REQ016:7E0 03 22 02 10 00 00 00 00          $
	$	REQ017:7E0 03 22 02 22 00 00 00 00          $
	$	REQ018:7E0 03 22 02 47 00 00 00 00          $
	$	REQ019:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ020:7E0 03 22 02 3D 00 00 00 00          $
	$	REQ021:7E0 03 22 02 3E 00 00 00 00          $
	$	REQ022:7E0 03 22 02 3F 00 00 00 00          $
	$	REQ023:7E0 03 22 03 14 00 00 00 00          $
	$	REQ024:7E0 03 22 03 15 00 00 00 00          $
	$	REQ025:7E0 03 22 03 16 00 00 00 00          $
	$	REQ026:7E0 03 22 03 17 00 00 00 00          $
	$	REQ027:7E0 03 22 02 48 00 00 00 00          $
	$	REQ028:7E0 03 22 02 49 00 00 00 00          $
	$	REQ029:7E0 03 22 02 4A 00 00 00 00          $
	$	REQ030:7E0 03 22 02 4B 00 00 00 00          $
	$	REQ031:7E0 03 22 02 4C 00 00 00 00          $
	$	REQ032:7E0 03 22 02 4D 00 00 00 00          $
	$	REQ033:7E0 03 22 02 4E 00 00 00 00          $
	$	REQ034:7E0 03 22 02 4F 00 00 00 00          $
	$	REQ035:7E0 03 22 03 0E 00 00 00 00          $
	$	REQ036:7E0 03 22 03 0F 00 00 00 00          $
	$	REQ037:7E0 03 22 03 10 00 00 00 00          $
	$	REQ038:7E0 03 22 03 11 00 00 00 00          $
	$	REQ039:7E0 03 22 03 1D 00 00 00 00          $
	$	REQ040:7E0 03 22 03 1E 00 00 00 00          $
	$	REQ041:7E0 03 22 03 1F 00 00 00 00          $
	$	REQ042:7E0 03 22 03 20 00 00 00 00          $
	$	REQ043:7E0 03 22 02 53 00 00 00 00          $
	$	REQ044:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ045:7E0 03 22 03 24 00 00 00 00          $
	$	REQ046:7E0 03 22 02 46 00 00 00 00          $
	$	REQ047:7E0 03 22 03 04 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                                                $    $  Nm         $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                                                    $    $  Nm         $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                                                       $    $  Nm         $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Desired Torque Change From the Idle Speed Control                                  $    $  Nm         $    $  ANS003.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  004.Relative Air Mass(Calc. Load Value)                                                $    $  %          $    $  ANS004.BYTE003  $  X*0.392156862745098
  $  005.Engine Speed                                                                       $    $  rpm        $    $  ANS005.BYTE003  $  XY
  $  006.Idle Speed Control                                                                 $    $  rpm        $    $  ANS006.BYTE003  $  XY
  $  007.Vehicle Speed                                                                      $    $  km/h       $    $  ANS007.BYTE003  $  X*1+1
  $  008.Desired Throttle Position                                                          $    $  °TPS      $    $  ANS008.BYTE003  $  XY*0.007294146
  $  009.Throttle Blade Position Dependent on Poti 1                                        $    $  °TPS      $    $  ANS009.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  010.Throttle Blade Position Dependent on Poti 2                                        $    $  °TPS      $    $  ANS010.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  011.Throttle Actuator Control Pwm                                                      $    $  %          $    $  ANS011.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  012.Throttle Angle with Respect to Lower Mechanical Stop                               $    $  °TPS      $    $  ANS012.BYTE003  $  X*0.466825368
  $  013.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop              $    $  V          $    $  ANS013.BYTE003  $  [0000-7FFF]:XY*0.000152587890625-10		[8000-FFFF]:(XY-65535)*0.000152587890625-10
  $  014.Acceleration pedal position sensor 1 voltage（V_PVS_1）                            $    $  V          $    $  ANS014.BYTE003  $  XY*0.0048828125
  $  015.Acceleration pedal position sensor 2 voltage（V_PVS_2）                            $    $  V          $    $  ANS015.BYTE003  $  XY*0.0048828125
  $  016.Normalized Angle Acceleration Pedal                                                $    $  %          $    $  ANS016.BYTE003  $  X*0.390625
  $  017.Real Ignition Angle                                                                $    $  °CRK      $    $  ANS017.BYTE003  $  X*0.375-35.625
  $  018.Basic Ignition Angle                                                               $    $  °CRK      $    $  ANS018.BYTE003  $  X*0.375-35.625
  $  019.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #1             $    $  °CRK      $    $  ANS019.BYTE003  $  X*0.375-35.625
  $  020.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #2             $    $  °CRK      $    $  ANS020.BYTE003  $  X*0.375-35.625
  $  021.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #3             $    $  °CRK      $    $  ANS021.BYTE003  $  X*0.375-35.625
  $  022.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #4             $    $  °CRK      $    $  ANS022.BYTE003  $  X*0.375-35.625
  $  023.Cylinder#1 ignition advance Angle（IGA_CYL_KNK[0]）                                $    $  °CRK      $    $  ANS023.BYTE003  $  X*0.375-48
  $  024.Cylinder#2 ignition advance Angle（IGA_CYL_KNK[1]）                                $    $  °CRK      $    $  ANS024.BYTE003  $  X*0.375-48
  $  025.Cylinder#3 ignition advance Angle（IGA_CYL_KNK[2]）                                $    $  °CRK      $    $  ANS025.BYTE003  $  X*0.375-48
  $  026.Cylinder#4 ignition advance Angle（IGA_CYL_KNK[3]）                                $    $  °CRK      $    $  ANS026.BYTE003  $  X*0.375-48
  $  027.Fault Counter, Summary, Counts Emission Relevant misfirings of All Cylinders       $    $  -          $    $  ANS027.BYTE003  $  XY
  $  028.Number Of Misfire:Cylinder#1                                                       $    $  -          $    $  ANS028.BYTE003  $  XY
  $  029.Number Of Misfire:Cylinder#2                                                       $    $  -          $    $  ANS029.BYTE003  $  XY
  $  030.Number Of Misfire:Cylinder#3                                                       $    $  -          $    $  ANS030.BYTE003  $  XY
  $  031.Number Of Misfire:Cylinder#4                                                       $    $  -          $    $  ANS031.BYTE003  $  XY
  $  032.Area Of Misfire, Minimum Engine Speed                                              $    $  Rpm        $    $  ANS032.BYTE003  $  XY
  $  033.Area Of Misfire, Minimum Engine Speed                                              $    $  Rpm        $    $  ANS033.BYTE003  $  XY
  $  034.Area Of Misfirings, Minimum Load                                                   $    $  %          $    $  ANS034.BYTE003  $  X
  $  035.Cylinde#1 injection time(TI_1)                                                     $    $  Ms         $    $  ANS035.BYTE003  $  XY*0.004
  $  036.Cylinde#2 injection time(TI_2)                                                     $    $  Ms         $    $  ANS036.BYTE003  $  XY*0.004
  $  037.Cylinde#3 injection time(TI_3)                                                     $    $  Ms         $    $  ANS037.BYTE003  $  XY*0.004
  $  038.Cylinde#4 injection time(TI_4)                                                     $    $  Ms         $    $  ANS038.BYTE003  $  XY*0.004
  $  039.Start time of Cylinde#1 injection(SOI_0)                                           $    $  °CRK      $    $  ANS039.BYTE003  $  XY*0.375
  $  040.Start time of Cylinde#2 injection(SOI_1)                                           $    $  °CRK      $    $  ANS040.BYTE003  $  XY*0.375
  $  041.Start time of Cylinde#3 injection(SOI_2)                                           $    $  °CRK      $    $  ANS041.BYTE003  $  XY*0.375
  $  042.Start time of Cylinde#4 injection(SOI_3)                                           $    $  °CRK      $    $  ANS042.BYTE003  $  XY*0.375
  $  043.Canister Purge Solenoid                                                            $    $  %          $    $  ANS043.BYTE003  $  X*0.390625
  $  044.Output Duty Cycle for Canister Purge Valve                                         $    $  %          $    $  ANS044.BYTE003  $  X*0.390625
  $  045.Canister Load(CL_MMV)                                                              $    $  -          $    $  ANS045.BYTE003  $  XY*0.000030517578125
  $  046.Standardized Mass Flow from Canister Purge Control                                 $    $  mg/stk     $    $  ANS046.BYTE003  $  XY*0.0211947814145113
  $  047.Alternator PWM(ALTPWM)                                                             $    $  %          $    $  ANS047.BYTE003  $  X*0.390625

 $ 11.Throttle data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 02 02 00 00 00 00          $
	$	REQ003:7E0 03 22 02 51 00 00 00 00          $
	$	REQ004:7E0 03 22 02 16 00 00 00 00          $
	$	REQ005:7E0 03 22 02 04 00 00 00 00          $
	$	REQ006:7E0 03 22 02 52 00 00 00 00          $
	$	REQ007:7E0 03 22 02 08 00 00 00 00          $
	$	REQ008:7E0 03 22 02 09 00 00 00 00          $
	$	REQ009:7E0 03 22 02 28 00 00 00 00          $
	$	REQ010:7E0 03 22 02 62 00 00 00 00          $
	$	REQ011:7E0 03 22 02 FE 00 00 00 00          $
	$	REQ012:7E0 03 22 02 17 00 00 00 00          $
	$	REQ013:7E0 03 22 03 1B 00 00 00 00          $
	$	REQ014:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ015:7E0 03 22 02 FD 00 00 00 00          $
	$	REQ016:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ017:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ018:7E0 03 22 02 23 00 00 00 00          $
	$	REQ019:7E0 03 22 02 24 00 00 00 00          $
	$	REQ020:7E0 03 22 02 25 00 00 00 00          $
	$	REQ021:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ022:7E0 03 22 02 27 00 00 00 00          $
	$	REQ023:7E0 03 22 02 FA 00 00 00 00          $
	$	REQ024:7E0 03 22 02 FB 00 00 00 00          $
	$	REQ025:7E0 03 22 02 10 00 00 00 00          $
	$	REQ026:7E0 03 22 03 0C 00 00 00 00          $
	$	REQ027:7E0 03 22 02 53 00 00 00 00          $
	$	REQ028:7E0 03 22 03 04 00 00 00 00          $
	$	REQ029:7E0 03 22 02 57 00 00 00 00          $
	$	REQ030:7E0 03 22 03 29 00 00 00 00          $
	$	REQ031:7E0 03 22 03 2A 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                                         $    $  Nm        $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                                             $    $  Nm        $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                                                $    $  Nm        $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Desired Torque Change From the Idle Speed Control                           $    $  Nm        $    $  ANS003.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  004.Relative Air Mass(Calc. Load Value)                                         $    $  %         $    $  ANS004.BYTE003  $  X*0.392156862745098
  $  005.Engine Speed                                                                $    $  rpm       $    $  ANS005.BYTE003  $  XY
  $  006.Idle Speed Control                                                          $    $  rpm       $    $  ANS006.BYTE003  $  XY
  $  007.Vehicle Speed                                                               $    $  km/h      $    $  ANS007.BYTE003  $  X*1+1
  $  008.Ambient Pressure                                                            $    $  hPa       $    $  ANS008.BYTE003  $  XY*0.0829175249866483
  $  009.Intake Manifold Pressure (Absolute)                                         $    $  hPa       $    $  ANS009.BYTE003  $  XY*0.0829175249866483
  $  010.Actual Intake Manifold Pressure Sensor Voltage                              $    $  V         $    $  ANS010.BYTE003  $  XY*0.000152588
  $  011.Inlet pressure sensor voltage（V_MAP）                                      $    $  V         $    $  ANS011.BYTE003  $  XY*0.000152588
  $  012.Air Mass Flow                                                               $    $  kg/h      $    $  ANS012.BYTE003  $  XY*0.03125
  $  013.Air Flow（MAF_KGH）                                                         $    $  kg/h      $    $  ANS013.BYTE003  $  XY*0.03125
  $  014.Intake Air Temperature                                                      $    $  ℃        $    $  ANS014.BYTE003  $  X*1-48
  $  015.Inlet temperature sensor voltage(V_TIA)                                     $    $  V         $    $  ANS015.BYTE003  $  XY*0.000152588
  $  016.Ambient Air Temperature                                                     $    $  ℃        $    $  ANS016.BYTE003  $  X*0.75+0.75
  $  017.Desired Throttle Position                                                   $    $  °TPS     $    $  ANS017.BYTE003  $  XY*0.007294146
  $  018.Throttle Blade Position Dependent on Poti 1                                 $    $  °TPS     $    $  ANS018.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  019.Throttle Blade Position Dependent on Poti 2                                 $    $  °TPS     $    $  ANS019.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  020.Throttle Actuator Control Pwm                                               $    $  %         $    $  ANS020.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  021.Throttle Angle with Respect to Lower Mechanical Stop                        $    $  °TPS     $    $  ANS021.BYTE003  $  X*0.466825368
  $  022.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop       $    $  V         $    $  ANS022.BYTE003  $  [0000-7FFF]:XY*0.000152587890625-10		[8000-FFFF]:(XY-65535)*0.000152587890625-10
  $  023.Acceleration pedal position sensor 1 voltage（V_PVS_1）                     $    $  V         $    $  ANS023.BYTE003  $  XY*0.0048828125
  $  024.Acceleration pedal position sensor 2 voltage（V_PVS_2）                     $    $  V         $    $  ANS024.BYTE003  $  XY*0.0048828125
  $  025.Normalized Angle Acceleration Pedal                                         $    $  %         $    $  ANS025.BYTE003  $  X*0.390625
  $  026.Intake VVT PWM(VVTPWM_IN)                                                   $    $  %         $    $  ANS026.BYTE003  $  XY*0.0061035156
  $  027.Canister Purge Solenoid                                                     $    $  %         $    $  ANS027.BYTE003  $  X*0.390625
  $  028.Alternator PWM(ALTPWM)                                                      $    $  %         $    $  ANS028.BYTE003  $  X*0.390625
  $  029.Inlet Camshaft Control                                                      $    $  -         $    $  ANS029.BYTE003  $  00: initial state		01: enter HOLD state		02: hold state		03: adjust state		其他:-
  $  030.State of intake VVT(STATE_IVVT)                                             $    $  -         $    $  ANS030.BYTE003  $  00:passive		01:ready		02:adaptive		03:enabled		其他:-
  $  031.State of intake VVT PMW(STATE_IVVT_PWM_IN)                                  $    $  -         $    $  ANS031.BYTE003  $  00: control		01: active		02: passive		其他:-


