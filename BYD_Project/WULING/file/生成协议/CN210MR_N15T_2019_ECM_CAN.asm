$~#6$~#14$~500$~7E8
;******************************************************************************************************************************************************

车型代号:CN210MR
车型:Cortez
排量:B15D
年份:2019
模块名缩写:ECM
模块名:发动机控制模块
供应商:大陆
诊断代码:CN210MR_N15T_2019_ECM_CAN

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

		$*$*DTC/CORTEZDTCS


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

  $%  000:VehicleIdentificationNumber           $%    $%  ANS000.BYTE003  $%  17个字节的ASCII显示
  $%  001:Supplier Identifier Information       $%    $%  ANS001.BYTE003  $%  07个字节的ASCII显示
  $%  002:ECUManufacturingDate                  $%    $%  ANS002.BYTE003  $%  04个字节的HEX显示
  $%  003:EndModelPartNumber (SGMW P/N)         $%    $%  ANS003.BYTE003  $%  X1X2X3X4
  $%  004:Supplier ECU Hardware Number          $%    $%  ANS004.BYTE003  $%  16个字节的ASCII显示
  $%  005:Supplier ECU Software Number          $%    $%  ANS005.BYTE003  $%  16个字节的ASCII显示

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
	$	REQ007:7E0 03 22 04 0F 00 00 00 00          $
	$	REQ008:7E0 03 22 02 45 00 00 00 00          $
	$	REQ009:7E0 03 22 02 04 00 00 00 00          $
	$	REQ010:7E0 03 22 02 52 00 00 00 00          $
	$	REQ011:7E0 03 22 02 08 00 00 00 00          $
	$	REQ012:7E0 03 22 02 22 00 00 00 00          $
	$	REQ013:7E0 03 22 02 47 00 00 00 00          $
	$	REQ014:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ015:7E0 03 22 02 3D 00 00 00 00          $
	$	REQ016:7E0 03 22 02 3E 00 00 00 00          $
	$	REQ017:7E0 03 22 02 3F 00 00 00 00          $
	$	REQ018:7E0 03 22 03 14 00 00 00 00          $
	$	REQ019:7E0 03 22 03 15 00 00 00 00          $
	$	REQ020:7E0 03 22 03 16 00 00 00 00          $
	$	REQ021:7E0 03 22 03 17 00 00 00 00          $
	$	REQ022:7E0 03 22 02 40 00 00 00 00          $
	$	REQ023:7E0 03 22 02 41 00 00 00 00          $
	$	REQ024:7E0 03 22 02 42 00 00 00 00          $
	$	REQ025:7E0 03 22 02 43 00 00 00 00          $
	$	REQ026:7E0 03 22 04 18 00 00 00 00          $
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
	$	REQ043:7E0 03 22 05 02 00 00 00 00          $
	$	REQ044:7E0 03 22 05 03 00 00 00 00          $
	$	REQ045:7E0 03 22 05 04 00 00 00 00          $
	$	REQ046:7E0 03 22 05 10 00 00 00 00          $
	$	REQ047:7E0 03 22 05 11 00 00 00 00          $
	$	REQ048:7E0 03 22 05 12 00 00 00 00          $
	$	REQ049:7E0 03 22 05 13 00 00 00 00          $
	$	REQ050:7E0 03 22 02 54 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                                                $    $  Nm        $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                                                    $    $  Nm        $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                                                       $    $  Nm        $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Desired Torque Change From the Idle Speed Control                                  $    $  Nm        $    $  ANS003.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  004.Relative Air Mass(Calc. Load Value)                                                $    $  %         $    $  ANS004.BYTE003  $  X*0.392156862745098
  $  005.Engine Temperature                                                                 $    $  ℃        $    $  ANS005.BYTE003  $  X*0.75-48
  $  006.V_TCO                                                                              $    $  V         $    $  ANS006.BYTE003  $  XY*0.000152588
  $  007.TCO_STOP                                                                           $    $  ℃        $    $  ANS007.BYTE003  $  X*0.75-48
  $  008.Engine Temperature at Start                                                        $    $  ℃        $    $  ANS008.BYTE003  $  X*0.75-48
  $  009.Engine Speed                                                                       $    $  rpm       $    $  ANS009.BYTE003  $  XY
  $  010.Idle Speed Control                                                                 $    $  rpm       $    $  ANS010.BYTE003  $  XY
  $  011.Vehicle Speed                                                                      $    $  km/h      $    $  ANS011.BYTE003  $  X*1+1
  $  012.Real Ignition Angle                                                                $    $  °CRK     $    $  ANS012.BYTE003  $  X*0.375-35.625
  $  013.Basic Ignition Angle                                                               $    $  °CRK     $    $  ANS013.BYTE003  $  X*0.375-35.625
  $  014.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #1             $    $  °CRK     $    $  ANS014.BYTE003  $  X*0.375-35.625
  $  015.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #2             $    $  °CRK     $    $  ANS015.BYTE003  $  X*0.375-35.625
  $  016.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #3             $    $  °CRK     $    $  ANS016.BYTE003  $  X*0.375-35.625
  $  017.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #4             $    $  °CRK     $    $  ANS017.BYTE003  $  X*0.375-35.625
  $  018.IGA_CYL_KNK[0]                                                                     $    $  °CRK     $    $  ANS018.BYTE003  $  X*0.375-48
  $  019.IGA_CYL_KNK[1]                                                                     $    $  °CRK     $    $  ANS019.BYTE003  $  X*0.375-48
  $  020.IGA_CYL_KNK[2]                                                                     $    $  °CRK     $    $  ANS020.BYTE003  $  X*0.375-48
  $  021.IGA_CYL_KNK[3]                                                                     $    $  °CRK     $    $  ANS021.BYTE003  $  X*0.375-48
  $  022.Reference Level Knock Control, 16bit, Cylinder #1                                  $    $  V         $    $  ANS022.BYTE003  $  XY*0.0000762939453727016
  $  023.Reference Level Knock Control, 16bit, Cylinder #2                                  $    $  V         $    $  ANS023.BYTE003  $  XY*0.0000762939453727016
  $  024.Reference Level Knock Control, 16bit, Cylinder #3                                  $    $  V         $    $  ANS024.BYTE003  $  XY*0.0000762939453727016
  $  025.Reference Level Knock Control, 16bit, Cylinder #4                                  $    $  V         $    $  ANS025.BYTE003  $  XY*0.0000762939453727016
  $  026.FAC_AD_KNK                                                                         $    $  -         $    $  ANS026.BYTE003  $  X*0.00390625
  $  027.Fault Counter, Summary, Counts Emission Relevant misfirings of All Cylinders       $    $  -         $    $  ANS027.BYTE003  $  XY
  $  028.Number Of Misfire:Cylinder#1                                                       $    $  -         $    $  ANS028.BYTE003  $  XY
  $  029.Number Of Misfire:Cylinder#2                                                       $    $  -         $    $  ANS029.BYTE003  $  XY
  $  030.Number Of Misfire:Cylinder#3                                                       $    $  -         $    $  ANS030.BYTE003  $  XY
  $  031.Number Of Misfire:Cylinder#4                                                       $    $  -         $    $  ANS031.BYTE003  $  XY
  $  032.Area Of Misfire, Minimum Engine Speed                                              $    $  Rpm       $    $  ANS032.BYTE003  $  XY
  $  033.Area Of Misfire, Minimum Engine Speed                                              $    $  Rpm       $    $  ANS033.BYTE003  $  XY
  $  034.Area Of Misfirings, Minimum Load                                                   $    $  %         $    $  ANS034.BYTE003  $  X
  $  035.1 cylinder injection time                                                          $    $  Ms        $    $  ANS035.BYTE003  $  XY*0.004
  $  036.2 cylinder injection time                                                          $    $  Ms        $    $  ANS036.BYTE003  $  XY*0.004
  $  037.3 cylinder injection time                                                          $    $  Ms        $    $  ANS037.BYTE003  $  XY*0.004
  $  038.4 cylinder injection time                                                          $    $  Ms        $    $  ANS038.BYTE003  $  XY*0.004
  $  039.SOI_0                                                                              $    $  °CRK     $    $  ANS039.BYTE003  $  XY*0.375
  $  040.SOI_1                                                                              $    $  °CRK     $    $  ANS040.BYTE003  $  XY*0.375
  $  041.SOI_2                                                                              $    $  °CRK     $    $  ANS041.BYTE003  $  XY*0.375
  $  042.SOI_3                                                                              $    $  °CRK     $    $  ANS042.BYTE003  $  XY*0.375
  $  043.exhaust VVT control PWM                                                            $    $  %         $    $  ANS043.BYTE003  $  XY*0.0061035
  $  044.Actual exhaust VVT angle                                                           $    $  °        $    $  ANS044.BYTE003  $  [0000-7FFF]:XY*0.0078125+0		[8000-FFFF]:(XY-65535)*0.0078125+0
  $  045.Desired exhaust VVT angle                                                          $    $  °        $    $  ANS045.BYTE003  $  XY*0.5
  $  046.Output Duty Cycle for SWP                                                          $    $  %         $    $  ANS046.BYTE003  $  X*0.390625
  $  047.AC Middle Pressure Switch                                                          $    $  -         $    $  ANS047.BYTE003  $  00:OFF		01:ON		其他:-
  $  048.λ closed loop control status                                                      $    $  -         $    $  ANS048.BYTE003  $  00:OFF		01:ON		其他:-
  $  049.Interface for Mode #01+#02 short Term Fuel Trim Bank 1 for PID #06                 $    $  %         $    $  ANS049.BYTE003  $  [0000-7FFF]:XY*0.00152587890625+0		[8000-FFFF]:(XY-65535)*0.00152587890625+0
  $  050.Fuel Pump Relay                                                                    $    $  -         $    $  ANS050.BYTE003  $  X

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
	$	REQ023:7E0 03 22 03 07 00 00 00 00          $
	$	REQ024:7E0 03 22 03 08 00 00 00 00          $

  $  000.Maximum Attainable Indicated Torque                                         $    $  Nm        $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  001.Desired Indicated Engine Torque                                             $    $  Nm        $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  002.Indicated Real Engine Torque                                                $    $  Nm        $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  003.Desired Torque Change From the Idle Speed Control                           $    $  Nm        $    $  ANS003.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  004.Relative Air Mass(Calc. Load Value)                                         $    $  %         $    $  ANS004.BYTE003  $  X*0.392156862745098
  $  005.Engine Speed                                                                $    $  rpm       $    $  ANS005.BYTE003  $  XY
  $  006.Idle Speed Control                                                          $    $  rpm       $    $  ANS006.BYTE003  $  XY
  $  007.Vehicle Speed                                                               $    $  km/h      $    $  ANS007.BYTE003  $  X*1+1
  $  008.Desired Throttle Position                                                   $    $  °TPS     $    $  ANS008.BYTE003  $  XY*0.007294146
  $  009.Throttle Blade Position Dependent on Poti 1                                 $    $  °TPS     $    $  ANS009.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  010.Throttle Blade Position Dependent on Poti 2                                 $    $  °TPS     $    $  ANS010.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  011.Throttle Actuator Control Pwm                                               $    $  %         $    $  ANS011.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  012.Throttle Angle with Respect to Lower Mechanical Stop                        $    $  °TPS     $    $  ANS012.BYTE003  $  X*0.466825368
  $  013.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop       $    $  V         $    $  ANS013.BYTE003  $  [0000-7FFF]:XY*0.000152587890625-10		[8000-FFFF]:(XY-65535)*0.000152587890625-10
  $  014.V_PVS_1                                                                     $    $  V         $    $  ANS014.BYTE003  $  XY*0.0048828125
  $  015.V_PVS_2                                                                     $    $  V         $    $  ANS015.BYTE003  $  XY*0.0048828125
  $  016.Normalized Angle Acceleration Pedal                                         $    $  %         $    $  ANS016.BYTE003  $  X*0.390625
  $  017.TACE                                                                        $    $  ℃        $    $  ANS017.BYTE003  $  X*0.75-48
  $  018.VP_TACE_SENSsensor voltage                                                  $    $  V         $    $  ANS018.BYTE003  $  XY*0.000152588
  $  019.ECFPWM                                                                      $    $  %         $    $  ANS019.BYTE003  $  X*0.392
  $  020.Cooling Fan Relay                                                           $    $  -         $    $  ANS020.BYTE003  $  00:lowspeedfanoff highspeedfanoff		01:lowspeedfanon highspeedfanoff		02:lowspeedfanoff highspeedfanon 		03:lowspeedfanoff highspeedfanon  highspeedfanon		其他:-
  $  021.LV_ACIN                                                                     $    $  -         $    $  ANS021.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  022.LV_BTS                                                                      $    $  -         $    $  ANS021.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  023.LV_BLS                                                                      $    $  -         $    $  ANS021.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  024.LV_CS                                                                       $    $  -         $    $  ANS021.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  025.LV_RLY_ST                                                                   $    $  -         $    $  ANS022.BYTE003  $  if(X1&0x20)y=@0240;else y=@0239;
  $  026.LV_ACCRLY_OUT                                                               $    $  -         $    $  ANS022.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  027.LV_RLY_MAIN                                                                 $    $  -         $    $  ANS022.BYTE003  $  if(X1&0x8)y=@0240;else y=@0239;
  $  028.LV_RLY_EFP                                                                  $    $  -         $    $  ANS022.BYTE003  $  if(X1&0x10)y=@0240;else y=@0239;
  $  029.LV_VIM                                                                      $    $  -         $    $  ANS022.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  030.LV_LAM_LSCL                                                                 $    $  -         $    $  ANS023.BYTE003  $  if(X1&0x20)y=@0009;else y=@0008;
  $  031.LV_MIL                                                                      $    $  -         $    $  ANS023.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  032.LV_PRS_SWT                                                                  $    $  -         $    $  ANS024.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;
  $  033.LV_PRS_ACC                                                                  $    $  -         $    $  ANS024.BYTE003  $  if(X1&0x8)y=@0009;else y=@0008;
  $  034.LV_RLY_ACCOUT                                                               $    $  -         $    $  ANS024.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  035.LV_RLY_ACCOUT_CTRL                                                          $    $  -         $    $  ANS024.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  036.LV_ACIN                                                                     $    $  -         $    $  ANS024.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;

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
	$	REQ012:7E0 03 22 04 14 00 00 00 00          $
	$	REQ013:7E0 03 22 02 17 00 00 00 00          $
	$	REQ014:7E0 03 22 03 1B 00 00 00 00          $
	$	REQ015:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ016:7E0 03 22 02 FD 00 00 00 00          $
	$	REQ017:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ018:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ019:7E0 03 22 02 23 00 00 00 00          $
	$	REQ020:7E0 03 22 02 24 00 00 00 00          $
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
  $  003.Desired Torque Change From the Idle Speed Control                           $    $  Nm         $    $  ANS003.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  004.Relative Air Mass(Calc. Load Value)                                         $    $  %          $    $  ANS004.BYTE003  $  X*0.392156862745098
  $  005.Engine Speed                                                                $    $  rpm        $    $  ANS005.BYTE003  $  XY
  $  006.Idle Speed Control                                                          $    $  rpm        $    $  ANS006.BYTE003  $  XY
  $  007.Vehicle Speed                                                               $    $  km/h       $    $  ANS007.BYTE003  $  X*1+1
  $  008.Ambient Pressure                                                            $    $  hPa        $    $  ANS008.BYTE003  $  XY*0.0829175249866483
  $  009.Intake Manifold Pressure (Absolute)                                         $    $  hPa        $    $  ANS009.BYTE003  $  XY*0.0829175249866483
  $  010.Actual Intake Manifold Pressure Sensor Voltage                              $    $  V          $    $  ANS010.BYTE003  $  XY*0.000152588
  $  011.V_MAP                                                                       $    $  V          $    $  ANS011.BYTE003  $  XY*0.000152588
  $  012.AMP_ADvalue                                                                 $    $  hPa        $    $  ANS012.BYTE003  $  XY*0.0829175
  $  013.Air Mass Flow                                                               $    $  kg/h       $    $  ANS013.BYTE003  $  XY*0.03125
  $  014.MAF_KGH                                                                     $    $  kg/h       $    $  ANS014.BYTE003  $  XY*0.03125
  $  015.Intake Air Temperature                                                      $    $  ℃         $    $  ANS015.BYTE003  $  X*1-48
  $  016.V_TIA                                                                       $    $  V          $    $  ANS016.BYTE003  $  XY*0.000152588
  $  017.Ambient Air Temperature                                                     $    $  ℃         $    $  ANS017.BYTE003  $  X*0.75+0.75
  $  018.Desired Throttle Position                                                   $    $  °TPS      $    $  ANS018.BYTE003  $  XY*0.007294146
  $  019.Throttle Blade Position Dependent on Poti 1                                 $    $  °TPS      $    $  ANS019.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  020.Throttle Blade Position Dependent on Poti 2                                 $    $  °TPS      $    $  ANS020.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  021.Throttle Actuator Control Pwm                                               $    $  %          $    $  ANS021.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  022.Throttle Angle with Respect to Lower Mechanical Stop                        $    $  °TPS      $    $  ANS022.BYTE003  $  X*0.466825368
  $  023.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop       $    $  V          $    $  ANS023.BYTE003  $  [0000-7FFF]:XY*0.000152587890625-10		[8000-FFFF]:(XY-65535)*0.000152587890625-10
  $  024.V_PVS_1                                                                     $    $  V          $    $  ANS024.BYTE003  $  XY*0.0048828125
  $  025.V_PVS_2                                                                     $    $  V          $    $  ANS025.BYTE003  $  XY*0.0048828125
  $  026.Normalized Angle Acceleration Pedal                                         $    $  %          $    $  ANS026.BYTE003  $  X*0.390625
  $  027.Canister Purge Solenoid                                                     $    $  %          $    $  ANS027.BYTE003  $  X*0.390625
  $  028.Output Duty Cycle for Canister Purge Valve                                  $    $  %          $    $  ANS028.BYTE003  $  X*0.390625
  $  029.CL_MMV                                                                      $    $  -          $    $  ANS029.BYTE003  $  XY*0.000030517578125
  $  030.Standardized Mass Flow from Canister Purge Control                          $    $  mg/stk     $    $  ANS030.BYTE003  $  XY*0.0211947814145113
  $  031.ALTPWM                                                                      $    $  %          $    $  ANS031.BYTE003  $  X*0.390625

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
	$	REQ012:7E0 03 22 04 14 00 00 00 00          $
	$	REQ013:7E0 03 22 02 17 00 00 00 00          $
	$	REQ014:7E0 03 22 03 1B 00 00 00 00          $
	$	REQ015:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ016:7E0 03 22 02 FD 00 00 00 00          $
	$	REQ017:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ018:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ019:7E0 03 22 02 23 00 00 00 00          $
	$	REQ020:7E0 03 22 02 24 00 00 00 00          $
	$	REQ021:7E0 03 22 02 25 00 00 00 00          $
	$	REQ022:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ023:7E0 03 22 02 27 00 00 00 00          $
	$	REQ024:7E0 03 22 02 FA 00 00 00 00          $
	$	REQ025:7E0 03 22 02 FB 00 00 00 00          $
	$	REQ026:7E0 03 22 02 10 00 00 00 00          $

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
  $  011.V_MAP                                                                       $    $  V         $    $  ANS011.BYTE003  $  XY*0.000152588
  $  012.AMP_ADvalue                                                                 $    $  hPa       $    $  ANS012.BYTE003  $  XY*0.0829175
  $  013.Air Mass Flow                                                               $    $  kg/h      $    $  ANS013.BYTE003  $  XY*0.03125
  $  014.MAF_KGH                                                                     $    $  kg/h      $    $  ANS014.BYTE003  $  XY*0.03125
  $  015.Intake Air Temperature                                                      $    $  ℃        $    $  ANS015.BYTE003  $  X*1-48
  $  016.V_TIA                                                                       $    $  V         $    $  ANS016.BYTE003  $  XY*0.000152588
  $  017.Ambient Air Temperature                                                     $    $  ℃        $    $  ANS017.BYTE003  $  X*0.75+0.75
  $  018.Desired Throttle Position                                                   $    $  °TPS     $    $  ANS018.BYTE003  $  XY*0.007294146
  $  019.Throttle Blade Position Dependent on Poti 1                                 $    $  °TPS     $    $  ANS019.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  020.Throttle Blade Position Dependent on Poti 2                                 $    $  °TPS     $    $  ANS020.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  021.Throttle Actuator Control Pwm                                               $    $  %         $    $  ANS021.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  022.Throttle Angle with Respect to Lower Mechanical Stop                        $    $  °TPS     $    $  ANS022.BYTE003  $  X*0.466825368
  $  023.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop       $    $  V         $    $  ANS023.BYTE003  $  [0000-7FFF]:XY*0.000152587890625-10		[8000-FFFF]:(XY-65535)*0.000152587890625-10
  $  024.V_PVS_1                                                                     $    $  V         $    $  ANS024.BYTE003  $  XY*0.0048828125
  $  025.V_PVS_2                                                                     $    $  V         $    $  ANS025.BYTE003  $  XY*0.0048828125
  $  026.Normalized Angle Acceleration Pedal                                         $    $  %         $    $  ANS026.BYTE003  $  X*0.390625

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
	$	REQ012:7E0 03 22 04 14 00 00 00 00          $
	$	REQ013:7E0 03 22 02 17 00 00 00 00          $
	$	REQ014:7E0 03 22 03 1B 00 00 00 00          $
	$	REQ015:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ016:7E0 03 22 02 FD 00 00 00 00          $
	$	REQ017:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ018:7E0 03 22 02 22 00 00 00 00          $
	$	REQ019:7E0 03 22 02 47 00 00 00 00          $
	$	REQ020:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ021:7E0 03 22 02 3D 00 00 00 00          $
	$	REQ022:7E0 03 22 02 3E 00 00 00 00          $
	$	REQ023:7E0 03 22 02 3F 00 00 00 00          $
	$	REQ024:7E0 03 22 03 14 00 00 00 00          $
	$	REQ025:7E0 03 22 03 15 00 00 00 00          $
	$	REQ026:7E0 03 22 03 16 00 00 00 00          $
	$	REQ027:7E0 03 22 03 17 00 00 00 00          $
	$	REQ028:7E0 03 22 02 40 00 00 00 00          $
	$	REQ029:7E0 03 22 02 41 00 00 00 00          $
	$	REQ030:7E0 03 22 02 42 00 00 00 00          $
	$	REQ031:7E0 03 22 02 43 00 00 00 00          $
	$	REQ032:7E0 03 22 04 18 00 00 00 00          $
	$	REQ033:7E0 03 22 02 60 00 00 00 00          $
	$	REQ034:7E0 03 22 02 61 00 00 00 00          $
	$	REQ035:7E0 03 22 03 0A 00 00 00 00          $
	$	REQ036:7E0 03 22 03 0B 00 00 00 00          $
	$	REQ037:7E0 03 22 04 1A 00 00 00 00          $
	$	REQ038:7E0 03 22 04 1B 00 00 00 00          $
	$	REQ039:7E0 03 22 02 50 00 00 00 00          $
	$	REQ040:7E0 03 22 02 2F 00 00 00 00          $
	$	REQ041:7E0 03 22 03 12 00 00 00 00          $
	$	REQ042:7E0 03 22 03 13 00 00 00 00          $
	$	REQ043:7E0 03 22 03 0E 00 00 00 00          $
	$	REQ044:7E0 03 22 03 0F 00 00 00 00          $
	$	REQ045:7E0 03 22 03 10 00 00 00 00          $
	$	REQ046:7E0 03 22 03 11 00 00 00 00          $
	$	REQ047:7E0 03 22 03 1D 00 00 00 00          $
	$	REQ048:7E0 03 22 03 1E 00 00 00 00          $
	$	REQ049:7E0 03 22 03 1F 00 00 00 00          $
	$	REQ050:7E0 03 22 03 20 00 00 00 00          $
	$	REQ051:7E0 03 22 03 0C 00 00 00 00          $
	$	REQ052:7E0 03 22 02 53 00 00 00 00          $
	$	REQ053:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ054:7E0 03 22 03 24 00 00 00 00          $
	$	REQ055:7E0 03 22 02 46 00 00 00 00          $
	$	REQ056:7E0 03 22 03 04 00 00 00 00          $
	$	REQ057:7E0 03 22 02 57 00 00 00 00          $
	$	REQ058:7E0 03 22 03 29 00 00 00 00          $
	$	REQ059:7E0 03 22 03 2A 00 00 00 00          $

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
  $  011.V_MAP                                                                        $    $  V          $    $  ANS011.BYTE003  $  XY*0.000152588
  $  012.AMP_ADvalue                                                                  $    $  hPa        $    $  ANS012.BYTE003  $  XY*0.0829175
  $  013.Air Mass Flow                                                                $    $  kg/h       $    $  ANS013.BYTE003  $  XY*0.03125
  $  014.MAF_KGH                                                                      $    $  kg/h       $    $  ANS014.BYTE003  $  XY*0.03125
  $  015.Intake Air Temperature                                                       $    $  ℃         $    $  ANS015.BYTE003  $  X*1-48
  $  016.V_TIA                                                                        $    $  V          $    $  ANS016.BYTE003  $  XY*0.000152588
  $  017.Ambient Air Temperature                                                      $    $  ℃         $    $  ANS017.BYTE003  $  X*0.75+0.75
  $  018.Real Ignition Angle                                                          $    $  °CRK      $    $  ANS018.BYTE003  $  X*0.375-35.625
  $  019.Basic Ignition Angle                                                         $    $  °CRK      $    $  ANS019.BYTE003  $  X*0.375-35.625
  $  020.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #1       $    $  °CRK      $    $  ANS020.BYTE003  $  X*0.375-35.625
  $  021.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #2       $    $  °CRK      $    $  ANS021.BYTE003  $  X*0.375-35.625
  $  022.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #3       $    $  °CRK      $    $  ANS022.BYTE003  $  X*0.375-35.625
  $  023.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #4       $    $  °CRK      $    $  ANS023.BYTE003  $  X*0.375-35.625
  $  024.IGA_CYL_KNK[0]                                                               $    $  °CRK      $    $  ANS024.BYTE003  $  X*0.375-48
  $  025.IGA_CYL_KNK[1]                                                               $    $  °CRK      $    $  ANS025.BYTE003  $  X*0.375-48
  $  026.IGA_CYL_KNK[2]                                                               $    $  °CRK      $    $  ANS026.BYTE003  $  X*0.375-48
  $  027.IGA_CYL_KNK[3]                                                               $    $  °CRK      $    $  ANS027.BYTE003  $  X*0.375-48
  $  028.Reference Level Knock Control, 16bit, Cylinder #1                            $    $  V          $    $  ANS028.BYTE003  $  XY*0.0000762939453727016
  $  029.Reference Level Knock Control, 16bit, Cylinder #2                            $    $  V          $    $  ANS029.BYTE003  $  XY*0.0000762939453727016
  $  030.Reference Level Knock Control, 16bit, Cylinder #3                            $    $  V          $    $  ANS030.BYTE003  $  XY*0.0000762939453727016
  $  031.Reference Level Knock Control, 16bit, Cylinder #4                            $    $  V          $    $  ANS031.BYTE003  $  XY*0.0000762939453727016
  $  032.FAC_AD_KNK                                                                   $    $  -          $    $  ANS032.BYTE003  $  X*0.00390625
  $  033.O2 Sensor Voltage Bank1, Sensor 1                                            $    $  V          $    $  ANS033.BYTE003  $  XY*0.0048828125
  $  034.O2 Sensor Voltage Bank1, Sensor 2                                            $    $  V          $    $  ANS034.BYTE003  $  XY*0.0048828125
  $  035.LSHPWM_UP_1                                                                  $    $  %          $    $  ANS035.BYTE003  $  X*0.390625
  $  036.LSHPWM_DOWN_1                                                                $    $  %          $    $  ANS036.BYTE003  $  X*0.390625
  $  037.T_DLY_I_AD_LAM_ADJ                                                           $    $  Ms         $    $  ANS037.BYTE003  $  [0000-7FFF]:XY*0.0195313-1280		[8000-FFFF]:(XY-65535)*0.0195313-1280
  $  038.FAC_MFF_ADD_FAC_LAM_AD                                                       $    $  %          $    $  ANS038.BYTE003  $  [0000-7FFF]:XY*0.00305176-200		[8000-FFFF]:(XY-65535)*0.00305176-200
  $  039.Cycle Time Forced Lambda Modulation                                          $    $  -          $    $  ANS039.BYTE003  $  XY*0.01953125
  $  040.Lambda Controller Output                                                     $    $  %          $    $  ANS040.BYTE003  $  [0000-7FFF]:XY*0.00152587890625-100		[8000-FFFF]:(XY-65535)*0.00152587890625-100
  $  041.FAC_LAM_COR                                                                  $    $  %          $    $  ANS041.BYTE003  $  [0000-7FFF]:XY*0.00152587890625-2048		[8000-FFFF]:(XY-65535)*0.00152587890625-2048
  $  042.FAC_LAM_AD_OUT                                                               $    $  %          $    $  ANS042.BYTE003  $  [0000-7FFF]:XY*0.00152587890625-100		[8000-FFFF]:(XY-65535)*0.00152587890625-100
  $  043.1 cylinder injection time                                                    $    $  Ms         $    $  ANS043.BYTE003  $  XY*0.004
  $  044.2 cylinder injection time                                                    $    $  Ms         $    $  ANS044.BYTE003  $  XY*0.004
  $  045.3 cylinder injection time                                                    $    $  Ms         $    $  ANS045.BYTE003  $  XY*0.004
  $  046.4 cylinder injection time                                                    $    $  Ms         $    $  ANS046.BYTE003  $  XY*0.004
  $  047.SOI_0                                                                        $    $  °CRK      $    $  ANS047.BYTE003  $  XY*0.375
  $  048.SOI_1                                                                        $    $  °CRK      $    $  ANS048.BYTE003  $  XY*0.375
  $  049.SOI_2                                                                        $    $  °CRK      $    $  ANS049.BYTE003  $  XY*0.375
  $  050.SOI_3                                                                        $    $  °CRK      $    $  ANS050.BYTE003  $  XY*0.375
  $  051.VVTPWM_IN                                                                    $    $  %          $    $  ANS051.BYTE003  $  XY*0.0061035156
  $  052.Canister Purge Solenoid                                                      $    $  %          $    $  ANS052.BYTE003  $  X*0.390625
  $  053.Output Duty Cycle for Canister Purge Valve                                   $    $  %          $    $  ANS053.BYTE003  $  X*0.390625
  $  054.CL_MMV                                                                       $    $  -          $    $  ANS054.BYTE003  $  XY*0.000030517578125
  $  055.Standardized Mass Flow from Canister Purge Control                           $    $  mg/stk     $    $  ANS055.BYTE003  $  XY*0.0211947814145113
  $  056.ALTPWM                                                                       $    $  %          $    $  ANS056.BYTE003  $  X*0.390625
  $  057.Inlet Camshaft Control                                                       $    $  -          $    $  ANS057.BYTE003  $  00: initial state		01: enter HOLD state		02: hold state		03: adjust state		其他:-
  $  058.STATE_IVVT                                                                   $    $  -          $    $  ANS058.BYTE003  $  00:passive		01:ready		02:adaptive		03:enabled		其他:-
  $  059.STATE_IVVT_PWM_IN                                                            $    $  -          $    $  ANS059.BYTE003  $  00: control		01: active		02: passive		其他:-

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
	$	REQ011:7E0 03 22 04 14 00 00 00 00          $
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
	$	REQ026:7E0 03 22 02 22 00 00 00 00          $
	$	REQ027:7E0 03 22 02 47 00 00 00 00          $
	$	REQ028:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ029:7E0 03 22 02 3D 00 00 00 00          $
	$	REQ030:7E0 03 22 02 3E 00 00 00 00          $
	$	REQ031:7E0 03 22 02 3F 00 00 00 00          $
	$	REQ032:7E0 03 22 03 14 00 00 00 00          $
	$	REQ033:7E0 03 22 03 15 00 00 00 00          $
	$	REQ034:7E0 03 22 03 16 00 00 00 00          $
	$	REQ035:7E0 03 22 03 17 00 00 00 00          $
	$	REQ036:7E0 03 22 02 48 00 00 00 00          $
	$	REQ037:7E0 03 22 02 49 00 00 00 00          $
	$	REQ038:7E0 03 22 02 4A 00 00 00 00          $
	$	REQ039:7E0 03 22 02 4B 00 00 00 00          $
	$	REQ040:7E0 03 22 02 4C 00 00 00 00          $
	$	REQ041:7E0 03 22 02 4D 00 00 00 00          $
	$	REQ042:7E0 03 22 02 4E 00 00 00 00          $
	$	REQ043:7E0 03 22 02 4F 00 00 00 00          $
	$	REQ044:7E0 03 22 02 60 00 00 00 00          $
	$	REQ045:7E0 03 22 02 61 00 00 00 00          $
	$	REQ046:7E0 03 22 03 0A 00 00 00 00          $
	$	REQ047:7E0 03 22 03 0B 00 00 00 00          $
	$	REQ048:7E0 03 22 04 1A 00 00 00 00          $
	$	REQ049:7E0 03 22 04 1B 00 00 00 00          $
	$	REQ050:7E0 03 22 02 50 00 00 00 00          $
	$	REQ051:7E0 03 22 02 2F 00 00 00 00          $
	$	REQ052:7E0 03 22 03 12 00 00 00 00          $
	$	REQ053:7E0 03 22 03 13 00 00 00 00          $
	$	REQ054:7E0 03 22 03 0E 00 00 00 00          $
	$	REQ055:7E0 03 22 03 0F 00 00 00 00          $
	$	REQ056:7E0 03 22 03 10 00 00 00 00          $
	$	REQ057:7E0 03 22 03 11 00 00 00 00          $
	$	REQ058:7E0 03 22 03 1D 00 00 00 00          $
	$	REQ059:7E0 03 22 03 1E 00 00 00 00          $
	$	REQ060:7E0 03 22 03 1F 00 00 00 00          $
	$	REQ061:7E0 03 22 03 20 00 00 00 00          $
	$	REQ062:7E0 03 22 03 0C 00 00 00 00          $
	$	REQ063:7E0 03 22 02 53 00 00 00 00          $
	$	REQ064:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ065:7E0 03 22 03 24 00 00 00 00          $
	$	REQ066:7E0 03 22 02 46 00 00 00 00          $
	$	REQ067:7E0 03 22 03 04 00 00 00 00          $
	$	REQ068:7E0 03 22 02 57 00 00 00 00          $
	$	REQ069:7E0 03 22 03 29 00 00 00 00          $
	$	REQ070:7E0 03 22 03 2A 00 00 00 00          $

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
  $  010.V_MAP                                                                              $    $  V          $    $  ANS010.BYTE003  $  XY*0.000152588
  $  011.AMP_ADvalue                                                                        $    $  hPa        $    $  ANS011.BYTE003  $  XY*0.0829175
  $  012.Air Mass Flow                                                                      $    $  kg/h       $    $  ANS012.BYTE003  $  XY*0.03125
  $  013.MAF_KGH                                                                            $    $  kg/h       $    $  ANS013.BYTE003  $  XY*0.03125
  $  014.Intake Air Temperature                                                             $    $  ℃         $    $  ANS014.BYTE003  $  X*1-48
  $  015.V_TIA                                                                              $    $  V          $    $  ANS015.BYTE003  $  XY*0.000152588
  $  016.Ambient Air Temperature                                                            $    $  ℃         $    $  ANS016.BYTE003  $  X*0.75+0.75
  $  017.Desired Throttle Position                                                          $    $  °TPS      $    $  ANS017.BYTE003  $  XY*0.007294146
  $  018.Throttle Blade Position Dependent on Poti 1                                        $    $  °TPS      $    $  ANS018.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  019.Throttle Blade Position Dependent on Poti 2                                        $    $  °TPS      $    $  ANS019.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  020.Throttle Actuator Control Pwm                                                      $    $  %          $    $  ANS020.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  021.Throttle Angle with Respect to Lower Mechanical Stop                               $    $  °TPS      $    $  ANS021.BYTE003  $  X*0.466825368
  $  022.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop              $    $  V          $    $  ANS022.BYTE003  $  [0000-7FFF]:XY*0.000152587890625-10		[8000-FFFF]:(XY-65535)*0.000152587890625-10
  $  023.V_PVS_1                                                                            $    $  V          $    $  ANS023.BYTE003  $  XY*0.0048828125
  $  024.V_PVS_2                                                                            $    $  V          $    $  ANS024.BYTE003  $  XY*0.0048828125
  $  025.Normalized Angle Acceleration Pedal                                                $    $  %          $    $  ANS025.BYTE003  $  X*0.390625
  $  026.Real Ignition Angle                                                                $    $  °CRK      $    $  ANS026.BYTE003  $  X*0.375-35.625
  $  027.Basic Ignition Angle                                                               $    $  °CRK      $    $  ANS027.BYTE003  $  X*0.375-35.625
  $  028.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #1             $    $  °CRK      $    $  ANS028.BYTE003  $  X*0.375-35.625
  $  029.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #2             $    $  °CRK      $    $  ANS029.BYTE003  $  X*0.375-35.625
  $  030.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #3             $    $  °CRK      $    $  ANS030.BYTE003  $  X*0.375-35.625
  $  031.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #4             $    $  °CRK      $    $  ANS031.BYTE003  $  X*0.375-35.625
  $  032.IGA_CYL_KNK[0]                                                                     $    $  °CRK      $    $  ANS032.BYTE003  $  X*0.375-48
  $  033.IGA_CYL_KNK[1]                                                                     $    $  °CRK      $    $  ANS033.BYTE003  $  X*0.375-48
  $  034.IGA_CYL_KNK[2]                                                                     $    $  °CRK      $    $  ANS034.BYTE003  $  X*0.375-48
  $  035.IGA_CYL_KNK[3]                                                                     $    $  °CRK      $    $  ANS035.BYTE003  $  X*0.375-48
  $  036.Fault Counter, Summary, Counts Emission Relevant misfirings of All Cylinders       $    $  -          $    $  ANS036.BYTE003  $  XY
  $  037.Number Of Misfire:Cylinder#1                                                       $    $  -          $    $  ANS037.BYTE003  $  XY
  $  038.Number Of Misfire:Cylinder#2                                                       $    $  -          $    $  ANS038.BYTE003  $  XY
  $  039.Number Of Misfire:Cylinder#3                                                       $    $  -          $    $  ANS039.BYTE003  $  XY
  $  040.Number Of Misfire:Cylinder#4                                                       $    $  -          $    $  ANS040.BYTE003  $  XY
  $  041.Area Of Misfire, Minimum Engine Speed                                              $    $  Rpm        $    $  ANS041.BYTE003  $  XY
  $  042.Area Of Misfire, Minimum Engine Speed                                              $    $  Rpm        $    $  ANS042.BYTE003  $  XY
  $  043.Area Of Misfirings, Minimum Load                                                   $    $  %          $    $  ANS043.BYTE003  $  X
  $  044.O2 Sensor Voltage Bank1, Sensor 1                                                  $    $  V          $    $  ANS044.BYTE003  $  XY*0.0048828125
  $  045.O2 Sensor Voltage Bank1, Sensor 2                                                  $    $  V          $    $  ANS045.BYTE003  $  XY*0.0048828125
  $  046.LSHPWM_UP_1                                                                        $    $  %          $    $  ANS046.BYTE003  $  X*0.390625
  $  047.LSHPWM_DOWN_1                                                                      $    $  %          $    $  ANS047.BYTE003  $  X*0.390625
  $  048.T_DLY_I_AD_LAM_ADJ                                                                 $    $  Ms         $    $  ANS048.BYTE003  $  [0000-7FFF]:XY*0.0195313-1280		[8000-FFFF]:(XY-65535)*0.0195313-1280
  $  049.FAC_MFF_ADD_FAC_LAM_AD                                                             $    $  %          $    $  ANS049.BYTE003  $  [0000-7FFF]:XY*0.00305176-200		[8000-FFFF]:(XY-65535)*0.00305176-200
  $  050.Cycle Time Forced Lambda Modulation                                                $    $  -          $    $  ANS050.BYTE003  $  XY*0.01953125
  $  051.Lambda Controller Output                                                           $    $  %          $    $  ANS051.BYTE003  $  [0000-7FFF]:XY*0.00152587890625-100		[8000-FFFF]:(XY-65535)*0.00152587890625-100
  $  052.FAC_LAM_COR                                                                        $    $  %          $    $  ANS052.BYTE003  $  [0000-7FFF]:XY*0.00152587890625-2048		[8000-FFFF]:(XY-65535)*0.00152587890625-2048
  $  053.FAC_LAM_AD_OUT                                                                     $    $  %          $    $  ANS053.BYTE003  $  [0000-7FFF]:XY*0.00152587890625-100		[8000-FFFF]:(XY-65535)*0.00152587890625-100
  $  054.1 cylinder injection time                                                          $    $  Ms         $    $  ANS054.BYTE003  $  XY*0.004
  $  055.2 cylinder injection time                                                          $    $  Ms         $    $  ANS055.BYTE003  $  XY*0.004
  $  056.3 cylinder injection time                                                          $    $  Ms         $    $  ANS056.BYTE003  $  XY*0.004
  $  057.4 cylinder injection time                                                          $    $  Ms         $    $  ANS057.BYTE003  $  XY*0.004
  $  058.SOI_0                                                                              $    $  °CRK      $    $  ANS058.BYTE003  $  XY*0.375
  $  059.SOI_1                                                                              $    $  °CRK      $    $  ANS059.BYTE003  $  XY*0.375
  $  060.SOI_2                                                                              $    $  °CRK      $    $  ANS060.BYTE003  $  XY*0.375
  $  061.SOI_3                                                                              $    $  °CRK      $    $  ANS061.BYTE003  $  XY*0.375
  $  062.VVTPWM_IN                                                                          $    $  %          $    $  ANS062.BYTE003  $  XY*0.0061035156
  $  063.Canister Purge Solenoid                                                            $    $  %          $    $  ANS063.BYTE003  $  X*0.390625
  $  064.Output Duty Cycle for Canister Purge Valve                                         $    $  %          $    $  ANS064.BYTE003  $  X*0.390625
  $  065.CL_MMV                                                                             $    $  -          $    $  ANS065.BYTE003  $  XY*0.000030517578125
  $  066.Standardized Mass Flow from Canister Purge Control                                 $    $  mg/stk     $    $  ANS066.BYTE003  $  XY*0.0211947814145113
  $  067.ALTPWM                                                                             $    $  %          $    $  ANS067.BYTE003  $  X*0.390625
  $  068.Inlet Camshaft Control                                                             $    $  -          $    $  ANS068.BYTE003  $  00: initial state		01: enter HOLD state		02: hold state		03: adjust state		其他:-
  $  069.STATE_IVVT                                                                         $    $  -          $    $  ANS069.BYTE003  $  00:passive		01:ready		02:adaptive		03:enabled		其他:-
  $  070.STATE_IVVT_PWM_IN                                                                  $    $  -          $    $  ANS070.BYTE003  $  00: control		01: active		02: passive		其他:-

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
	$	REQ031:7E0 03 22 04 18 00 00 00 00          $
	$	REQ032:7E0 03 22 02 48 00 00 00 00          $
	$	REQ033:7E0 03 22 02 49 00 00 00 00          $
	$	REQ034:7E0 03 22 02 4A 00 00 00 00          $
	$	REQ035:7E0 03 22 02 4B 00 00 00 00          $
	$	REQ036:7E0 03 22 02 4C 00 00 00 00          $
	$	REQ037:7E0 03 22 02 4D 00 00 00 00          $
	$	REQ038:7E0 03 22 02 4E 00 00 00 00          $
	$	REQ039:7E0 03 22 02 4F 00 00 00 00          $
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
	$	REQ050:7E0 03 22 02 57 00 00 00 00          $
	$	REQ051:7E0 03 22 03 29 00 00 00 00          $
	$	REQ052:7E0 03 22 03 2A 00 00 00 00          $

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
  $  014.V_PVS_1                                                                            $    $  V         $    $  ANS014.BYTE003  $  XY*0.0048828125
  $  015.V_PVS_2                                                                            $    $  V         $    $  ANS015.BYTE003  $  XY*0.0048828125
  $  016.Normalized Angle Acceleration Pedal                                                $    $  %         $    $  ANS016.BYTE003  $  X*0.390625
  $  017.Real Ignition Angle                                                                $    $  °CRK     $    $  ANS017.BYTE003  $  X*0.375-35.625
  $  018.Basic Ignition Angle                                                               $    $  °CRK     $    $  ANS018.BYTE003  $  X*0.375-35.625
  $  019.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #1             $    $  °CRK     $    $  ANS019.BYTE003  $  X*0.375-35.625
  $  020.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #2             $    $  °CRK     $    $  ANS020.BYTE003  $  X*0.375-35.625
  $  021.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #3             $    $  °CRK     $    $  ANS021.BYTE003  $  X*0.375-35.625
  $  022.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #4             $    $  °CRK     $    $  ANS022.BYTE003  $  X*0.375-35.625
  $  023.IGA_CYL_KNK[0]                                                                     $    $  °CRK     $    $  ANS023.BYTE003  $  X*0.375-48
  $  024.IGA_CYL_KNK[1]                                                                     $    $  °CRK     $    $  ANS024.BYTE003  $  X*0.375-48
  $  025.IGA_CYL_KNK[2]                                                                     $    $  °CRK     $    $  ANS025.BYTE003  $  X*0.375-48
  $  026.IGA_CYL_KNK[3]                                                                     $    $  °CRK     $    $  ANS026.BYTE003  $  X*0.375-48
  $  027.Reference Level Knock Control, 16bit, Cylinder #1                                  $    $  V         $    $  ANS027.BYTE003  $  XY*0.0000762939453727016
  $  028.Reference Level Knock Control, 16bit, Cylinder #2                                  $    $  V         $    $  ANS028.BYTE003  $  XY*0.0000762939453727016
  $  029.Reference Level Knock Control, 16bit, Cylinder #3                                  $    $  V         $    $  ANS029.BYTE003  $  XY*0.0000762939453727016
  $  030.Reference Level Knock Control, 16bit, Cylinder #4                                  $    $  V         $    $  ANS030.BYTE003  $  XY*0.0000762939453727016
  $  031.FAC_AD_KNK                                                                         $    $  -         $    $  ANS031.BYTE003  $  X*0.00390625
  $  032.Fault Counter, Summary, Counts Emission Relevant misfirings of All Cylinders       $    $  -         $    $  ANS032.BYTE003  $  XY
  $  033.Number Of Misfire:Cylinder#1                                                       $    $  -         $    $  ANS033.BYTE003  $  XY
  $  034.Number Of Misfire:Cylinder#2                                                       $    $  -         $    $  ANS034.BYTE003  $  XY
  $  035.Number Of Misfire:Cylinder#3                                                       $    $  -         $    $  ANS035.BYTE003  $  XY
  $  036.Number Of Misfire:Cylinder#4                                                       $    $  -         $    $  ANS036.BYTE003  $  XY
  $  037.Area Of Misfire, Minimum Engine Speed                                              $    $  Rpm       $    $  ANS037.BYTE003  $  XY
  $  038.Area Of Misfire, Minimum Engine Speed                                              $    $  Rpm       $    $  ANS038.BYTE003  $  XY
  $  039.Area Of Misfirings, Minimum Load                                                   $    $  %         $    $  ANS039.BYTE003  $  X
  $  040.1 cylinder injection time                                                          $    $  Ms        $    $  ANS040.BYTE003  $  XY*0.004
  $  041.2 cylinder injection time                                                          $    $  Ms        $    $  ANS041.BYTE003  $  XY*0.004
  $  042.3 cylinder injection time                                                          $    $  Ms        $    $  ANS042.BYTE003  $  XY*0.004
  $  043.4 cylinder injection time                                                          $    $  Ms        $    $  ANS043.BYTE003  $  XY*0.004
  $  044.SOI_0                                                                              $    $  °CRK     $    $  ANS044.BYTE003  $  XY*0.375
  $  045.SOI_1                                                                              $    $  °CRK     $    $  ANS045.BYTE003  $  XY*0.375
  $  046.SOI_2                                                                              $    $  °CRK     $    $  ANS046.BYTE003  $  XY*0.375
  $  047.SOI_3                                                                              $    $  °CRK     $    $  ANS047.BYTE003  $  XY*0.375
  $  048.VVTPWM_IN                                                                          $    $  %         $    $  ANS048.BYTE003  $  XY*0.0061035156
  $  049.Canister Purge Solenoid                                                            $    $  %         $    $  ANS049.BYTE003  $  X*0.390625
  $  050.Inlet Camshaft Control                                                             $    $  -         $    $  ANS050.BYTE003  $  00: initial state		01: enter HOLD state		02: hold state		03: adjust state		其他:-
  $  051.STATE_IVVT                                                                         $    $  -         $    $  ANS051.BYTE003  $  00:passive		01:ready		02:adaptive		03:enabled		其他:-
  $  052.STATE_IVVT_PWM_IN                                                                  $    $  -         $    $  ANS052.BYTE003  $  00: control		01: active		02: passive		其他:-

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
	$	REQ012:7E0 03 22 04 14 00 00 00 00          $
	$	REQ013:7E0 03 22 02 17 00 00 00 00          $
	$	REQ014:7E0 03 22 03 1B 00 00 00 00          $
	$	REQ015:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ016:7E0 03 22 02 FD 00 00 00 00          $
	$	REQ017:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ018:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ019:7E0 03 22 02 23 00 00 00 00          $
	$	REQ020:7E0 03 22 02 24 00 00 00 00          $
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
	$	REQ031:7E0 03 22 04 1A 00 00 00 00          $
	$	REQ032:7E0 03 22 04 1B 00 00 00 00          $
	$	REQ033:7E0 03 22 02 50 00 00 00 00          $
	$	REQ034:7E0 03 22 02 2F 00 00 00 00          $
	$	REQ035:7E0 03 22 03 12 00 00 00 00          $
	$	REQ036:7E0 03 22 03 13 00 00 00 00          $
	$	REQ037:7E0 03 22 03 0C 00 00 00 00          $
	$	REQ038:7E0 03 22 02 53 00 00 00 00          $
	$	REQ039:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ040:7E0 03 22 03 24 00 00 00 00          $
	$	REQ041:7E0 03 22 02 46 00 00 00 00          $
	$	REQ042:7E0 03 22 03 04 00 00 00 00          $
	$	REQ043:7E0 03 22 02 57 00 00 00 00          $
	$	REQ044:7E0 03 22 03 29 00 00 00 00          $
	$	REQ045:7E0 03 22 03 2A 00 00 00 00          $

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
  $  011.V_MAP                                                                       $    $  V          $    $  ANS011.BYTE003  $  XY*0.000152588
  $  012.AMP_ADvalue                                                                 $    $  hPa        $    $  ANS012.BYTE003  $  XY*0.0829175
  $  013.Air Mass Flow                                                               $    $  kg/h       $    $  ANS013.BYTE003  $  XY*0.03125
  $  014.MAF_KGH                                                                     $    $  kg/h       $    $  ANS014.BYTE003  $  XY*0.03125
  $  015.Intake Air Temperature                                                      $    $  ℃         $    $  ANS015.BYTE003  $  X*1-48
  $  016.V_TIA                                                                       $    $  V          $    $  ANS016.BYTE003  $  XY*0.000152588
  $  017.Ambient Air Temperature                                                     $    $  ℃         $    $  ANS017.BYTE003  $  X*0.75+0.75
  $  018.Desired Throttle Position                                                   $    $  °TPS      $    $  ANS018.BYTE003  $  XY*0.007294146
  $  019.Throttle Blade Position Dependent on Poti 1                                 $    $  °TPS      $    $  ANS019.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  020.Throttle Blade Position Dependent on Poti 2                                 $    $  °TPS      $    $  ANS020.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  021.Throttle Actuator Control Pwm                                               $    $  %          $    $  ANS021.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  022.Throttle Angle with Respect to Lower Mechanical Stop                        $    $  °TPS      $    $  ANS022.BYTE003  $  X*0.466825368
  $  023.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop       $    $  V          $    $  ANS023.BYTE003  $  [0000-7FFF]:XY*0.000152587890625-10		[8000-FFFF]:(XY-65535)*0.000152587890625-10
  $  024.V_PVS_1                                                                     $    $  V          $    $  ANS024.BYTE003  $  XY*0.0048828125
  $  025.V_PVS_2                                                                     $    $  V          $    $  ANS025.BYTE003  $  XY*0.0048828125
  $  026.Normalized Angle Acceleration Pedal                                         $    $  %          $    $  ANS026.BYTE003  $  X*0.390625
  $  027.O2 Sensor Voltage Bank1, Sensor 1                                           $    $  V          $    $  ANS027.BYTE003  $  XY*0.0048828125
  $  028.O2 Sensor Voltage Bank1, Sensor 2                                           $    $  V          $    $  ANS028.BYTE003  $  XY*0.0048828125
  $  029.LSHPWM_UP_1                                                                 $    $  %          $    $  ANS029.BYTE003  $  X*0.390625
  $  030.LSHPWM_DOWN_1                                                               $    $  %          $    $  ANS030.BYTE003  $  X*0.390625
  $  031.T_DLY_I_AD_LAM_ADJ                                                          $    $  Ms         $    $  ANS031.BYTE003  $  [0000-7FFF]:XY*0.0195313-1280		[8000-FFFF]:(XY-65535)*0.0195313-1280
  $  032.FAC_MFF_ADD_FAC_LAM_AD                                                      $    $  %          $    $  ANS032.BYTE003  $  [0000-7FFF]:XY*0.00305176-200		[8000-FFFF]:(XY-65535)*0.00305176-200
  $  033.Cycle Time Forced Lambda Modulation                                         $    $  -          $    $  ANS033.BYTE003  $  XY*0.01953125
  $  034.Lambda Controller Output                                                    $    $  %          $    $  ANS034.BYTE003  $  [0000-7FFF]:XY*0.00152587890625-100		[8000-FFFF]:(XY-65535)*0.00152587890625-100
  $  035.FAC_LAM_COR                                                                 $    $  %          $    $  ANS035.BYTE003  $  [0000-7FFF]:XY*0.00152587890625-2048		[8000-FFFF]:(XY-65535)*0.00152587890625-2048
  $  036.FAC_LAM_AD_OUT                                                              $    $  %          $    $  ANS036.BYTE003  $  [0000-7FFF]:XY*0.00152587890625-100		[8000-FFFF]:(XY-65535)*0.00152587890625-100
  $  037.VVTPWM_IN                                                                   $    $  %          $    $  ANS037.BYTE003  $  XY*0.0061035156
  $  038.Canister Purge Solenoid                                                     $    $  %          $    $  ANS038.BYTE003  $  X*0.390625
  $  039.Output Duty Cycle for Canister Purge Valve                                  $    $  %          $    $  ANS039.BYTE003  $  X*0.390625
  $  040.CL_MMV                                                                      $    $  -          $    $  ANS040.BYTE003  $  XY*0.000030517578125
  $  041.Standardized Mass Flow from Canister Purge Control                          $    $  mg/stk     $    $  ANS041.BYTE003  $  XY*0.0211947814145113
  $  042.ALTPWM                                                                      $    $  %          $    $  ANS042.BYTE003  $  X*0.390625
  $  043.Inlet Camshaft Control                                                      $    $  -          $    $  ANS043.BYTE003  $  00: initial state		01: enter HOLD state		02: hold state		03: adjust state		其他:-
  $  044.STATE_IVVT                                                                  $    $  -          $    $  ANS044.BYTE003  $  00:passive		01:ready		02:adaptive		03:enabled		其他:-
  $  045.STATE_IVVT_PWM_IN                                                           $    $  -          $    $  ANS045.BYTE003  $  00: control		01: active		02: passive		其他:-

 $ 09.The instrument shows data

	$	REQ000:7E0 03 22 02 03 00 00 00 00          $
	$	REQ001:7E0 03 22 02 FC 00 00 00 00          $
	$	REQ002:7E0 03 22 04 0F 00 00 00 00          $
	$	REQ003:7E0 03 22 02 45 00 00 00 00          $
	$	REQ004:7E0 03 22 02 04 00 00 00 00          $
	$	REQ005:7E0 03 22 02 52 00 00 00 00          $
	$	REQ006:7E0 03 22 02 08 00 00 00 00          $
	$	REQ007:7E0 03 22 02 53 00 00 00 00          $
	$	REQ008:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ009:7E0 03 22 03 24 00 00 00 00          $
	$	REQ010:7E0 03 22 02 46 00 00 00 00          $
	$	REQ011:7E0 03 22 02 21 00 00 00 00          $
	$	REQ012:7E0 03 22 03 26 00 00 00 00          $
	$	REQ013:7E0 03 22 02 44 00 00 00 00          $
	$	REQ014:7E0 03 22 02 0A 00 00 00 00          $
	$	REQ015:7E0 03 22 02 FF 00 00 00 00          $
	$	REQ016:7E0 03 22 02 05 00 00 00 00          $
	$	REQ017:7E0 03 22 02 59 00 00 00 00          $
	$	REQ018:7E0 03 22 02 5A 00 00 00 00          $

  $  000.Engine Temperature                                          $    $  ℃         $    $  ANS000.BYTE003  $  X*0.75-48
  $  001.V_TCO                                                       $    $  V          $    $  ANS001.BYTE003  $  XY*0.000152588
  $  002.TCO_STOP                                                    $    $  ℃         $    $  ANS002.BYTE003  $  X*0.75-48
  $  003.Engine Temperature at Start                                 $    $  ℃         $    $  ANS003.BYTE003  $  X*0.75-48
  $  004.Engine Speed                                                $    $  rpm        $    $  ANS004.BYTE003  $  XY
  $  005.Idle Speed Control                                          $    $  rpm        $    $  ANS005.BYTE003  $  XY
  $  006.Vehicle Speed                                               $    $  km/h       $    $  ANS006.BYTE003  $  X*1+1
  $  007.Canister Purge Solenoid                                     $    $  %          $    $  ANS007.BYTE003  $  X*0.390625
  $  008.Output Duty Cycle for Canister Purge Valve                  $    $  %          $    $  ANS008.BYTE003  $  X*0.390625
  $  009.CL_MMV                                                      $    $  -          $    $  ANS009.BYTE003  $  XY*0.000030517578125
  $  010.Standardized Mass Flow from Canister Purge Control          $    $  mg/stk     $    $  ANS010.BYTE003  $  XY*0.0211947814145113
  $  011.Engaged Gear                                                $    $  -          $    $  ANS011.BYTE003  $  X
  $  012.DIST_LW / DIST_H                                            $    $  Km         $    $  ANS012.BYTE003  $  X1X2X3X4*0.1
  $  013.Counter for Distance Travelled While Mil Is Activated       $    $  Km         $    $  ANS013.BYTE003  $  XY
  $  014.Battery Voltage                                             $    $  V          $    $  ANS014.BYTE003  $  X*0.1015625
  $  015.V_VB_BAS                                                    $    $  V          $    $  ANS015.BYTE003  $  XY*0.00062561
  $  016.Time Counter At End Of Start                                $    $  S          $    $  ANS016.BYTE003  $  XY*0.1
  $  017.MIL                                                         $    $  -          $    $  ANS017.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  018.SVS                                                         $    $  -          $    $  ANS018.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;

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
  $  014.V_PVS_1                                                                            $    $  V          $    $  ANS014.BYTE003  $  XY*0.0048828125
  $  015.V_PVS_2                                                                            $    $  V          $    $  ANS015.BYTE003  $  XY*0.0048828125
  $  016.Normalized Angle Acceleration Pedal                                                $    $  %          $    $  ANS016.BYTE003  $  X*0.390625
  $  017.Real Ignition Angle                                                                $    $  °CRK      $    $  ANS017.BYTE003  $  X*0.375-35.625
  $  018.Basic Ignition Angle                                                               $    $  °CRK      $    $  ANS018.BYTE003  $  X*0.375-35.625
  $  019.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #1             $    $  °CRK      $    $  ANS019.BYTE003  $  X*0.375-35.625
  $  020.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #2             $    $  °CRK      $    $  ANS020.BYTE003  $  X*0.375-35.625
  $  021.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #3             $    $  °CRK      $    $  ANS021.BYTE003  $  X*0.375-35.625
  $  022.Ignition-Timing Retardation with Retardation for Dynamics, Cylinder #4             $    $  °CRK      $    $  ANS022.BYTE003  $  X*0.375-35.625
  $  023.IGA_CYL_KNK[0]                                                                     $    $  °CRK      $    $  ANS023.BYTE003  $  X*0.375-48
  $  024.IGA_CYL_KNK[1]                                                                     $    $  °CRK      $    $  ANS024.BYTE003  $  X*0.375-48
  $  025.IGA_CYL_KNK[2]                                                                     $    $  °CRK      $    $  ANS025.BYTE003  $  X*0.375-48
  $  026.IGA_CYL_KNK[3]                                                                     $    $  °CRK      $    $  ANS026.BYTE003  $  X*0.375-48
  $  027.Fault Counter, Summary, Counts Emission Relevant misfirings of All Cylinders       $    $  -          $    $  ANS027.BYTE003  $  XY
  $  028.Number Of Misfire:Cylinder#1                                                       $    $  -          $    $  ANS028.BYTE003  $  XY
  $  029.Number Of Misfire:Cylinder#2                                                       $    $  -          $    $  ANS029.BYTE003  $  XY
  $  030.Number Of Misfire:Cylinder#3                                                       $    $  -          $    $  ANS030.BYTE003  $  XY
  $  031.Number Of Misfire:Cylinder#4                                                       $    $  -          $    $  ANS031.BYTE003  $  XY
  $  032.Area Of Misfire, Minimum Engine Speed                                              $    $  Rpm        $    $  ANS032.BYTE003  $  XY
  $  033.Area Of Misfire, Minimum Engine Speed                                              $    $  Rpm        $    $  ANS033.BYTE003  $  XY
  $  034.Area Of Misfirings, Minimum Load                                                   $    $  %          $    $  ANS034.BYTE003  $  X
  $  035.1 cylinder injection time                                                          $    $  Ms         $    $  ANS035.BYTE003  $  XY*0.004
  $  036.2 cylinder injection time                                                          $    $  Ms         $    $  ANS036.BYTE003  $  XY*0.004
  $  037.3 cylinder injection time                                                          $    $  Ms         $    $  ANS037.BYTE003  $  XY*0.004
  $  038.4 cylinder injection time                                                          $    $  Ms         $    $  ANS038.BYTE003  $  XY*0.004
  $  039.SOI_0                                                                              $    $  °CRK      $    $  ANS039.BYTE003  $  XY*0.375
  $  040.SOI_1                                                                              $    $  °CRK      $    $  ANS040.BYTE003  $  XY*0.375
  $  041.SOI_2                                                                              $    $  °CRK      $    $  ANS041.BYTE003  $  XY*0.375
  $  042.SOI_3                                                                              $    $  °CRK      $    $  ANS042.BYTE003  $  XY*0.375
  $  043.Canister Purge Solenoid                                                            $    $  %          $    $  ANS043.BYTE003  $  X*0.390625
  $  044.Output Duty Cycle for Canister Purge Valve                                         $    $  %          $    $  ANS044.BYTE003  $  X*0.390625
  $  045.CL_MMV                                                                             $    $  -          $    $  ANS045.BYTE003  $  XY*0.000030517578125
  $  046.Standardized Mass Flow from Canister Purge Control                                 $    $  mg/stk     $    $  ANS046.BYTE003  $  XY*0.0211947814145113
  $  047.ALTPWM                                                                             $    $  %          $    $  ANS047.BYTE003  $  X*0.390625

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
	$	REQ012:7E0 03 22 04 14 00 00 00 00          $
	$	REQ013:7E0 03 22 02 17 00 00 00 00          $
	$	REQ014:7E0 03 22 03 1B 00 00 00 00          $
	$	REQ015:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ016:7E0 03 22 02 FD 00 00 00 00          $
	$	REQ017:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ018:7E0 03 22 02 5D 00 00 00 00          $
	$	REQ019:7E0 03 22 02 23 00 00 00 00          $
	$	REQ020:7E0 03 22 02 24 00 00 00 00          $
	$	REQ021:7E0 03 22 02 25 00 00 00 00          $
	$	REQ022:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ023:7E0 03 22 02 27 00 00 00 00          $
	$	REQ024:7E0 03 22 02 FA 00 00 00 00          $
	$	REQ025:7E0 03 22 02 FB 00 00 00 00          $
	$	REQ026:7E0 03 22 02 10 00 00 00 00          $
	$	REQ027:7E0 03 22 03 0C 00 00 00 00          $
	$	REQ028:7E0 03 22 02 53 00 00 00 00          $
	$	REQ029:7E0 03 22 03 04 00 00 00 00          $
	$	REQ030:7E0 03 22 02 57 00 00 00 00          $
	$	REQ031:7E0 03 22 03 29 00 00 00 00          $
	$	REQ032:7E0 03 22 03 2A 00 00 00 00          $

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
  $  011.V_MAP                                                                       $    $  V         $    $  ANS011.BYTE003  $  XY*0.000152588
  $  012.AMP_ADvalue                                                                 $    $  hPa       $    $  ANS012.BYTE003  $  XY*0.0829175
  $  013.Air Mass Flow                                                               $    $  kg/h      $    $  ANS013.BYTE003  $  XY*0.03125
  $  014.MAF_KGH                                                                     $    $  kg/h      $    $  ANS014.BYTE003  $  XY*0.03125
  $  015.Intake Air Temperature                                                      $    $  ℃        $    $  ANS015.BYTE003  $  X*1-48
  $  016.V_TIA                                                                       $    $  V         $    $  ANS016.BYTE003  $  XY*0.000152588
  $  017.Ambient Air Temperature                                                     $    $  ℃        $    $  ANS017.BYTE003  $  X*0.75+0.75
  $  018.Desired Throttle Position                                                   $    $  °TPS     $    $  ANS018.BYTE003  $  XY*0.007294146
  $  019.Throttle Blade Position Dependent on Poti 1                                 $    $  °TPS     $    $  ANS019.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  020.Throttle Blade Position Dependent on Poti 2                                 $    $  °TPS     $    $  ANS020.BYTE003  $  [0000-7FFF]:XY*0.007294146+0		[8000-FFFF]:(XY-65535)*0.007294146+0
  $  021.Throttle Actuator Control Pwm                                               $    $  %         $    $  ANS021.BYTE003  $  [0000-7FFF]:XY*0.003051758+0		[8000-FFFF]:(XY-65535)*0.003051758+0
  $  022.Throttle Angle with Respect to Lower Mechanical Stop                        $    $  °TPS     $    $  ANS022.BYTE003  $  X*0.466825368
  $  023.Sensor Voltage Poti 1 of Throttle Actuator at (Lower) Mechanical Stop       $    $  V         $    $  ANS023.BYTE003  $  [0000-7FFF]:XY*0.000152587890625-10		[8000-FFFF]:(XY-65535)*0.000152587890625-10
  $  024.V_PVS_1                                                                     $    $  V         $    $  ANS024.BYTE003  $  XY*0.0048828125
  $  025.V_PVS_2                                                                     $    $  V         $    $  ANS025.BYTE003  $  XY*0.0048828125
  $  026.Normalized Angle Acceleration Pedal                                         $    $  %         $    $  ANS026.BYTE003  $  X*0.390625
  $  027.VVTPWM_IN                                                                   $    $  %         $    $  ANS027.BYTE003  $  XY*0.0061035156
  $  028.Canister Purge Solenoid                                                     $    $  %         $    $  ANS028.BYTE003  $  X*0.390625
  $  029.ALTPWM                                                                      $    $  %         $    $  ANS029.BYTE003  $  X*0.390625
  $  030.Inlet Camshaft Control                                                      $    $  -         $    $  ANS030.BYTE003  $  00: initial state		01: enter HOLD state		02: hold state		03: adjust state		其他:-
  $  031.STATE_IVVT                                                                  $    $  -         $    $  ANS031.BYTE003  $  00:passive		01:ready		02:adaptive		03:enabled		其他:-
  $  032.STATE_IVVT_PWM_IN                                                           $    $  -         $    $  ANS032.BYTE003  $  00: control		01: active		02: passive		其他:-


