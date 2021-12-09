$~#6$~#14$~500$~7E8
;******************************************************************************************************************************************************

车型代号:CN200
车型:CN210MR
排量:1.8L
年份:2017
模块名缩写:ECM
模块名:发动机控制模块
供应商:联电
诊断代码:CN210MR_1.8L_2014_ECM_CAN

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
ECU复位

		REQ000:7E0 02 11 03 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:7E0 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:7E0 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:7E0 03 22 F1 92 00 00 00 00          $%
	$%	REQ003:7E0 03 22 F1 94 00 00 00 00          $%
	$%	REQ004:7E0 03 22 F1 CB 00 00 00 00          $%

  $%  000:ECUManufacturingDate               $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VehicleIdentificationNumber        $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:Supplier ECU Hardware Number       $%    $%  ANS002.BYTE003  $%  10个字节的ASCII显示
  $%  003:Supplier ECU Software Number       $%    $%  ANS003.BYTE003  $%  10个字节的ASCII显示
  $%  004:EndModelPartNumber(SGMW P/N)       $%    $%  ANS004.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

 $ 00.Engine data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 0D 05 00 00 00 00          $
	$	REQ003:7E0 03 22 02 89 00 00 00 00          $
	$	REQ004:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ005:7E0 03 22 02 03 00 00 00 00          $
	$	REQ006:7E0 03 22 02 2F 00 00 00 00          $
	$	REQ007:7E0 03 22 02 7C 00 00 00 00          $
	$	REQ008:7E0 03 22 02 04 00 00 00 00          $
	$	REQ009:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ010:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ011:7E0 03 22 02 36 00 00 00 00          $
	$	REQ012:7E0 03 22 02 7E 00 00 00 00          $
	$	REQ013:7E0 03 22 03 11 00 00 00 00          $
	$	REQ014:7E0 03 22 03 12 00 00 00 00          $
	$	REQ015:7E0 03 22 03 13 00 00 00 00          $
	$	REQ016:7E0 03 22 03 14 00 00 00 00          $
	$	REQ017:7E0 03 22 03 21 00 00 00 00          $
	$	REQ018:7E0 03 22 03 22 00 00 00 00          $
	$	REQ019:7E0 03 22 03 23 00 00 00 00          $
	$	REQ020:7E0 03 22 03 24 00 00 00 00          $
	$	REQ021:7E0 03 22 02 7F 00 00 00 00          $
	$	REQ022:7E0 03 22 03 31 00 00 00 00          $
	$	REQ023:7E0 03 22 03 32 00 00 00 00          $
	$	REQ024:7E0 03 22 03 33 00 00 00 00          $
	$	REQ025:7E0 03 22 03 34 00 00 00 00          $
	$	REQ026:7E0 03 22 02 84 00 00 00 00          $
	$	REQ027:7E0 03 22 02 85 00 00 00 00          $
	$	REQ028:7E0 03 22 02 86 00 00 00 00          $
	$	REQ029:7E0 03 22 02 87 00 00 00 00          $
	$	REQ030:7E0 03 22 02 6D 00 00 00 00          $
	$	REQ031:7E0 03 22 02 32 00 00 00 00          $
	$	REQ032:7E0 03 22 0F 17 00 00 00 00          $
	$	REQ033:7E0 03 22 0F 15 00 00 00 00          $
	$	REQ034:7E0 03 22 0F 14 00 00 00 00          $
	$	REQ035:7E0 03 22 0F 13 00 00 00 00          $
	$	REQ036:7E0 03 22 0F 12 00 00 00 00          $
	$	REQ037:7E0 03 22 0F 0B 00 00 00 00          $
	$	REQ038:7E0 03 22 0F 16 00 00 00 00          $

  $  000.maximum attainable indicated torque                                                $    $  N.m         $    $  ANS000.BYTE003  $  XY*0.001525879
  $  001.desired indicated engine torque                                                    $    $  N.m         $    $  ANS001.BYTE003  $  XY*0.001525879
  $  002.indicated real engine torque                                                       $    $  N.m         $    $  ANS002.BYTE003  $  XY*0.001525879
  $  003.desired torque change from the idle speed control                                  $    $  N.m         $    $  ANS003.BYTE003  $  XY*0.003051758-100
  $  004.relative air mass                                                                  $    $  %           $    $  ANS004.BYTE003  $  X*0.390625
  $  005.engine temperature                                                                 $    $  °C         $    $  ANS005.BYTE003  $  X*0.75-48
  $  006.Engine coolant temperature, linearised and calculated                              $    $  °C         $    $  ANS006.BYTE003  $  X*0.75-48
  $  007.engine temperature at start                                                        $    $  °C         $    $  ANS007.BYTE003  $  X*0.75-48
  $  008.engine speed                                                                       $    $  rpm         $    $  ANS008.BYTE003  $  XY*0.25
  $  009.vehicle speed                                                                      $    $  Km/h        $    $  ANS009.BYTE003  $  XY*0.0078125
  $  010.effective steady-state idle speed                                                  $    $  rpm         $    $  ANS010.BYTE003  $  X*10
  $  011.real ignition angle                                                                $    $  Grad Kw     $    $  ANS011.BYTE003  $  X*0.75
  $  012.basic ignition angle                                                               $    $  Grad Kw     $    $  ANS012.BYTE003  $  X*0.75
  $  013.ignition-timing retardation with retardation for dynamics, Cylinder #1             $    $  Grad Kw     $    $  ANS013.BYTE003  $  X*0.75
  $  014.ignition-timing retardation with retardation for dynamics, Cylinder #2             $    $  Grad Kw     $    $  ANS014.BYTE003  $  X*0.75
  $  015.ignition-timing retardation with retardation for dynamics, Cylinder #3             $    $  Grad Kw     $    $  ANS015.BYTE003  $  X*0.75
  $  016.ignition-timing retardation with retardation for dynamics, Cylinder #4             $    $  Grad Kw     $    $  ANS016.BYTE003  $  X*0.75
  $  017.reference level knock control, 16bit, Cylinder #1                                  $    $  V           $    $  ANS017.BYTE003  $  XY*0.00007694
  $  018.reference level knock control, 16bit, Cylinder #2                                  $    $  V           $    $  ANS018.BYTE003  $  XY*0.00007694
  $  019.reference level knock control, 16bit, Cylinder #3                                  $    $  V           $    $  ANS019.BYTE003  $  XY*0.00007694
  $  020.reference level knock control, 16bit, Cylinder #4                                  $    $  V           $    $  ANS020.BYTE003  $  XY*0.00007694
  $  021.fault counter, summary, counts emission relevant misfirings of all cylinders       $    $  time        $    $  ANS021.BYTE003  $  XY
  $  022.number of misfire: cylinder#1                                                      $    $  time        $    $  ANS022.BYTE003  $  XY
  $  023.number of misfire: cylinder#2                                                      $    $  time        $    $  ANS023.BYTE003  $  XY
  $  024.number of misfire: cylinder#3                                                      $    $  time        $    $  ANS024.BYTE003  $  XY
  $  025.number of misfire: cylinder#4                                                      $    $  time        $    $  ANS025.BYTE003  $  XY
  $  026.area of misfire, minimum engine speed                                              $    $  rpm         $    $  ANS026.BYTE003  $  XY*0.25
  $  027.area of misfire, maximum engine speed                                              $    $  rpm         $    $  ANS027.BYTE003  $  XY*0.25
  $  028.area of misfirings, minimum load                                                   $    $  %           $    $  ANS028.BYTE003  $  X*0.390625
  $  029.area of misfirings, maximum load                                                   $    $  %           $    $  ANS029.BYTE003  $  X*0.390625
  $  030.injection time                                                                     $    $  ms          $    $  ANS030.BYTE003  $  XY*0.001
  $  031.Engaged gear                                                                       $    $  -           $    $  ANS031.BYTE003  $  X
  $  032.Cruise speed                                                                       $    $  Km/h        $    $  ANS032.BYTE003  $  XY*1+1
  $  033.MIL indicator                                                                      $    $  -           $    $  ANS033.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  034.Clutch switch status                                                               $    $  -           $    $  ANS034.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  035.Brake lamp switch status                                                           $    $  -           $    $  ANS035.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  036.Brake test switch status                                                           $    $  -           $    $  ANS036.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  037.Main relay status                                                                  $    $  -           $    $  ANS037.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  038.Cruise status                                                                      $    $  -           $    $  ANS038.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;

 $ 01.Air conditioning system data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 0D 05 00 00 00 00          $
	$	REQ003:7E0 03 22 02 89 00 00 00 00          $
	$	REQ004:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ005:7E0 03 22 02 04 00 00 00 00          $
	$	REQ006:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ007:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ008:7E0 03 22 02 3A 00 00 00 00          $
	$	REQ009:7E0 03 22 02 3B 00 00 00 00          $
	$	REQ010:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ011:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ012:7E0 03 22 02 5C 00 00 00 00          $
	$	REQ013:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ014:7E0 03 22 0F 11 00 00 00 00          $
	$	REQ015:7E0 03 22 0F 10 00 00 00 00          $
	$	REQ016:7E0 03 22 0F 0F 00 00 00 00          $
	$	REQ017:7E0 03 22 0F 0E 00 00 00 00          $

  $  000.maximum attainable indicated torque                             $    $  N.m      $    $  ANS000.BYTE003  $  XY*0.001525879
  $  001.desired indicated engine torque                                 $    $  N.m      $    $  ANS001.BYTE003  $  XY*0.001525879
  $  002.indicated real engine torque                                    $    $  N.m      $    $  ANS002.BYTE003  $  XY*0.001525879
  $  003.desired torque change from the idle speed control               $    $  N.m      $    $  ANS003.BYTE003  $  XY*0.003051758-100
  $  004.relative air mass                                               $    $  %        $    $  ANS004.BYTE003  $  X*0.390625
  $  005.engine speed                                                    $    $  rpm      $    $  ANS005.BYTE003  $  XY*0.25
  $  006.vehicle speed                                                   $    $  Km/h     $    $  ANS006.BYTE003  $  XY*0.0078125
  $  007.effective steady-state idle speed                               $    $  rpm      $    $  ANS007.BYTE003  $  X*10
  $  008.throttle blade position dependent on poti 1                     $    $  %DK      $    $  ANS008.BYTE003  $  XY*0.024414063
  $  009.throttle blade position dependent on poti 2                     $    $  %DK      $    $  ANS009.BYTE003  $  XY*0.024414063
  $  010.throttle angle with respect to lower mechanical stop            $    $  %DK      $    $  ANS010.BYTE003  $  XY*0.024414063
  $  011.sensor voltage from throttle potentiometer 1                    $    $  V        $    $  ANS011.BYTE003  $  XY*0.001220703
  $  012.sensor voltage from throttle potentiometer 2                    $    $  V        $    $  ANS012.BYTE003  $  XY*0.001220703
  $  013.Sum of the PID-components (Throttle actuator Control PWM)       $    $  %        $    $  ANS013.BYTE003  $  XY*0.001525879
  $  014.A/C evaporator temperature                                      $    $  ℃       $    $  ANS014.BYTE003  $  X*0.75-48
  $  015.A/C evaporator pressure                                         $    $  hpa      $    $  ANS015.BYTE003  $  X*156.86
  $  016.A/C request switch status                                       $    $  -        $    $  ANS016.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  017.A/C compressor clutch relay status                              $    $  -        $    $  ANS017.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;

 $ 02.Exhaust gas recirculation data

	$	REQ000:7E0 03 22 02 23 00 00 00 00          $
	$	REQ001:7E0 03 22 02 AA 00 00 00 00          $
	$	REQ002:7E0 03 22 02 AB 00 00 00 00          $
	$	REQ003:7E0 03 22 02 57 00 00 00 00          $
	$	REQ004:7E0 03 22 02 88 00 00 00 00          $
	$	REQ005:7E0 03 22 02 2D 00 00 00 00          $
	$	REQ006:7E0 03 22 02 58 00 00 00 00          $
	$	REQ007:7E0 03 22 02 60 00 00 00 00          $

  $  000.output voltage oxygen sensor downstream catalyst          $    $  V       $    $  ANS000.BYTE003  $  X*0.005228758-0.2
  $  001.O2 sensor voltage bank1, sensor 1                         $    $  V       $    $  ANS001.BYTE003  $  XY*0.004882813
  $  002.O2 sensor voltage bank1, sensor 2                         $    $  V       $    $  ANS002.BYTE003  $  XY*0.004882813
  $  003.lambda controller output                                  $    $  -       $    $  ANS003.BYTE003  $  XY*0.000030518
  $  004.Cycle time forced lambda modulation                       $    $  -       $    $  ANS004.BYTE003  $  XY*0.000030518
  $  005.exhaust temperature downstream catalyst (model)           $    $  °C     $    $  ANS005.BYTE003  $  X*5-50
  $  006.multiplicative correction of the mixture adaptation       $    $  -       $    $  ANS006.BYTE003  $  XY*0.000030518
  $  007.additive correction of the mixture adaptation             $    $  -       $    $  ANS007.BYTE003  $  XY*0.046875-1536

 $ 03.Evaporative emission data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 0D 05 00 00 00 00          $
	$	REQ003:7E0 03 22 02 89 00 00 00 00          $
	$	REQ004:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ005:7E0 03 22 02 04 00 00 00 00          $
	$	REQ006:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ007:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ008:7E0 03 22 02 09 00 00 00 00          $
	$	REQ009:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ010:7E0 03 22 02 A2 00 00 00 00          $
	$	REQ011:7E0 03 22 02 45 00 00 00 00          $
	$	REQ012:7E0 03 22 02 0F 00 00 00 00          $
	$	REQ013:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ014:7E0 03 22 02 20 00 00 00 00          $
	$	REQ015:7E0 03 22 02 3A 00 00 00 00          $
	$	REQ016:7E0 03 22 02 3B 00 00 00 00          $
	$	REQ017:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ018:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ019:7E0 03 22 02 5C 00 00 00 00          $
	$	REQ020:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ021:7E0 03 22 02 62 00 00 00 00          $
	$	REQ022:7E0 03 22 02 63 00 00 00 00          $
	$	REQ023:7E0 03 22 02 10 00 00 00 00          $
	$	REQ024:7E0 03 22 02 7D 00 00 00 00          $
	$	REQ025:7E0 03 22 0F 0D 00 00 00 00          $
	$	REQ026:7E0 03 22 0F 0C 00 00 00 00          $

  $  000.maximum attainable indicated torque                             $    $  N.m      $    $  ANS000.BYTE003  $  XY*0.001525879
  $  001.desired indicated engine torque                                 $    $  N.m      $    $  ANS001.BYTE003  $  XY*0.001525879
  $  002.indicated real engine torque                                    $    $  N.m      $    $  ANS002.BYTE003  $  XY*0.001525879
  $  003.desired torque change from the idle speed control               $    $  N.m      $    $  ANS003.BYTE003  $  XY*0.003051758-100
  $  004.relative air mass                                               $    $  %        $    $  ANS004.BYTE003  $  X*0.390625
  $  005.engine speed                                                    $    $  rpm      $    $  ANS005.BYTE003  $  XY*0.25
  $  006.vehicle speed                                                   $    $  Km/h     $    $  ANS006.BYTE003  $  XY*0.0078125
  $  007.effective steady-state idle speed                               $    $  rpm      $    $  ANS007.BYTE003  $  X*10
  $  008.ambient pressure                                                $    $  hPa      $    $  ANS008.BYTE003  $  XY*0.0390625
  $  009.ambient air temperature                                         $    $  °C      $    $  ANS009.BYTE003  $  X*0.75-48
  $  010.Actual intake manifold pressure sensor voltage                  $    $  V        $    $  ANS010.BYTE003  $  XY*0.004882813
  $  011.intake manifold pressure (absolute)                             $    $  hPa      $    $  ANS011.BYTE003  $  XY*0.0390625
  $  012.pressure upstream throttle valve                                $    $  hPa      $    $  ANS012.BYTE003  $  XY*0.078125
  $  013.intake air temperature                                          $    $  °C      $    $  ANS013.BYTE003  $  X*0.75-48
  $  014.Air mass flow                                                   $    $  Kg/h     $    $  ANS014.BYTE003  $  X*4
  $  015.throttle blade position dependent on poti 1                     $    $  %DK      $    $  ANS015.BYTE003  $  XY*0.024414063
  $  016.throttle blade position dependent on poti 2                     $    $  %DK      $    $  ANS016.BYTE003  $  XY*0.024414063
  $  017.throttle angle with respect to lower mechanical stop            $    $  %DK      $    $  ANS017.BYTE003  $  XY*0.024414063
  $  018.sensor voltage from throttle potentiometer 1                    $    $  V        $    $  ANS018.BYTE003  $  XY*0.001220703
  $  019.sensor voltage from throttle potentiometer 2                    $    $  V        $    $  ANS019.BYTE003  $  XY*0.001220703
  $  020.Sum of the PID-components (Throttle actuator Control PWM)       $    $  %        $    $  ANS020.BYTE003  $  XY*0.001525879
  $  021.Voltage PWG potentiometer 1                                     $    $  V        $    $  ANS021.BYTE003  $  XY*0.004882813
  $  022.Voltage PWG potentiometer 2                                     $    $  V        $    $  ANS022.BYTE003  $  XY*0.004882813
  $  023.normalized angle acceleration pedal                             $    $  %        $    $  ANS023.BYTE003  $  XY*0.001525879
  $  024.standardized mass flow from canister purge control              $    $  kg/h     $    $  ANS024.BYTE003  $  XY*0.000390625
  $  025.Cooling fan 1 switch status                                     $    $  -        $    $  ANS025.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  026.Cooling fan 2 switch status                                     $    $  -        $    $  ANS026.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;

 $ 04.The fuel system data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 0D 05 00 00 00 00          $
	$	REQ003:7E0 03 22 02 89 00 00 00 00          $
	$	REQ004:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ005:7E0 03 22 02 04 00 00 00 00          $
	$	REQ006:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ007:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ008:7E0 03 22 02 A2 00 00 00 00          $
	$	REQ009:7E0 03 22 02 45 00 00 00 00          $
	$	REQ010:7E0 03 22 02 0F 00 00 00 00          $
	$	REQ011:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ012:7E0 03 22 02 20 00 00 00 00          $
	$	REQ013:7E0 03 22 02 3A 00 00 00 00          $
	$	REQ014:7E0 03 22 02 3B 00 00 00 00          $
	$	REQ015:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ016:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ017:7E0 03 22 02 5C 00 00 00 00          $
	$	REQ018:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ019:7E0 03 22 02 62 00 00 00 00          $
	$	REQ020:7E0 03 22 02 63 00 00 00 00          $
	$	REQ021:7E0 03 22 02 10 00 00 00 00          $
	$	REQ022:7E0 03 22 0F 05 00 00 00 00          $
	$	REQ023:7E0 03 22 0F 06 00 00 00 00          $
	$	REQ024:7E0 03 22 0F 07 00 00 00 00          $
	$	REQ025:7E0 03 22 0F 08 00 00 00 00          $
	$	REQ026:7E0 03 22 0F 0A 00 00 00 00          $

  $  000.maximum attainable indicated torque                             $    $  N.m      $    $  ANS000.BYTE003  $  XY*0.001525879
  $  001.desired indicated engine torque                                 $    $  N.m      $    $  ANS001.BYTE003  $  XY*0.001525879
  $  002.indicated real engine torque                                    $    $  N.m      $    $  ANS002.BYTE003  $  XY*0.001525879
  $  003.desired torque change from the idle speed control               $    $  N.m      $    $  ANS003.BYTE003  $  XY*0.003051758-100
  $  004.relative air mass                                               $    $  %        $    $  ANS004.BYTE003  $  X*0.390625
  $  005.engine speed                                                    $    $  rpm      $    $  ANS005.BYTE003  $  XY*0.25
  $  006.vehicle speed                                                   $    $  Km/h     $    $  ANS006.BYTE003  $  XY*0.0078125
  $  007.effective steady-state idle speed                               $    $  rpm      $    $  ANS007.BYTE003  $  X*10
  $  008.Actual intake manifold pressure sensor voltage                  $    $  V        $    $  ANS008.BYTE003  $  XY*0.004882813
  $  009.intake manifold pressure (absolute)                             $    $  hPa      $    $  ANS009.BYTE003  $  XY*0.0390625
  $  010.pressure upstream throttle valve                                $    $  hPa      $    $  ANS010.BYTE003  $  XY*0.078125
  $  011.intake air temperature                                          $    $  °C      $    $  ANS011.BYTE003  $  X*0.75-48
  $  012.Air mass flow                                                   $    $  Kg/h     $    $  ANS012.BYTE003  $  X*4
  $  013.throttle blade position dependent on poti 1                     $    $  %DK      $    $  ANS013.BYTE003  $  XY*0.024414063
  $  014.throttle blade position dependent on poti 2                     $    $  %DK      $    $  ANS014.BYTE003  $  XY*0.024414063
  $  015.throttle angle with respect to lower mechanical stop            $    $  %DK      $    $  ANS015.BYTE003  $  XY*0.024414063
  $  016.sensor voltage from throttle potentiometer 1                    $    $  V        $    $  ANS016.BYTE003  $  XY*0.001220703
  $  017.sensor voltage from throttle potentiometer 2                    $    $  V        $    $  ANS017.BYTE003  $  XY*0.001220703
  $  018.Sum of the PID-components (Throttle actuator Control PWM)       $    $  %        $    $  ANS018.BYTE003  $  XY*0.001525879
  $  019.Voltage PWG potentiometer 1                                     $    $  V        $    $  ANS019.BYTE003  $  XY*0.004882813
  $  020.Voltage PWG potentiometer 2                                     $    $  V        $    $  ANS020.BYTE003  $  XY*0.004882813
  $  021.normalized angle acceleration pedal                             $    $  %        $    $  ANS021.BYTE003  $  XY*0.001525879
  $  022.Injection time, cylinder#1                                      $    $  ms       $    $  ANS022.BYTE003  $  XY*0.002667
  $  023.Injection time, cylinder#2                                      $    $  ms       $    $  ANS023.BYTE003  $  XY*0.002667
  $  024.Injection time, cylinder#3                                      $    $  ms       $    $  ANS024.BYTE003  $  XY*0.002667
  $  025.Injection time, cylinder#4                                      $    $  ms       $    $  ANS025.BYTE003  $  XY*0.002667
  $  026.Fuel pump relay status                                          $    $  -        $    $  ANS026.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;

 $ 05.Fuel adjustment data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 0D 05 00 00 00 00          $
	$	REQ003:7E0 03 22 02 89 00 00 00 00          $
	$	REQ004:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ005:7E0 03 22 02 04 00 00 00 00          $
	$	REQ006:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ007:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ008:7E0 03 22 02 09 00 00 00 00          $
	$	REQ009:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ010:7E0 03 22 02 A2 00 00 00 00          $
	$	REQ011:7E0 03 22 02 45 00 00 00 00          $
	$	REQ012:7E0 03 22 02 0F 00 00 00 00          $
	$	REQ013:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ014:7E0 03 22 02 20 00 00 00 00          $
	$	REQ015:7E0 03 22 02 62 00 00 00 00          $
	$	REQ016:7E0 03 22 02 63 00 00 00 00          $
	$	REQ017:7E0 03 22 02 10 00 00 00 00          $
	$	REQ018:7E0 03 22 02 36 00 00 00 00          $
	$	REQ019:7E0 03 22 02 7E 00 00 00 00          $
	$	REQ020:7E0 03 22 03 11 00 00 00 00          $
	$	REQ021:7E0 03 22 03 12 00 00 00 00          $
	$	REQ022:7E0 03 22 03 13 00 00 00 00          $
	$	REQ023:7E0 03 22 03 14 00 00 00 00          $
	$	REQ024:7E0 03 22 03 21 00 00 00 00          $
	$	REQ025:7E0 03 22 03 22 00 00 00 00          $
	$	REQ026:7E0 03 22 03 23 00 00 00 00          $
	$	REQ027:7E0 03 22 03 24 00 00 00 00          $
	$	REQ028:7E0 03 22 02 23 00 00 00 00          $
	$	REQ029:7E0 03 22 02 AA 00 00 00 00          $
	$	REQ030:7E0 03 22 02 AB 00 00 00 00          $
	$	REQ031:7E0 03 22 02 57 00 00 00 00          $
	$	REQ032:7E0 03 22 02 88 00 00 00 00          $
	$	REQ033:7E0 03 22 02 2D 00 00 00 00          $
	$	REQ034:7E0 03 22 02 58 00 00 00 00          $
	$	REQ035:7E0 03 22 02 60 00 00 00 00          $
	$	REQ036:7E0 03 22 02 6D 00 00 00 00          $
	$	REQ037:7E0 03 22 02 7D 00 00 00 00          $
	$	REQ038:7E0 03 22 0F 0A 00 00 00 00          $

  $  000.maximum attainable indicated torque                                          $    $  N.m         $    $  ANS000.BYTE003  $  XY*0.001525879
  $  001.desired indicated engine torque                                              $    $  N.m         $    $  ANS001.BYTE003  $  XY*0.001525879
  $  002.indicated real engine torque                                                 $    $  N.m         $    $  ANS002.BYTE003  $  XY*0.001525879
  $  003.desired torque change from the idle speed control                            $    $  N.m         $    $  ANS003.BYTE003  $  XY*0.003051758-100
  $  004.relative air mass                                                            $    $  %           $    $  ANS004.BYTE003  $  X*0.390625
  $  005.engine speed                                                                 $    $  rpm         $    $  ANS005.BYTE003  $  XY*0.25
  $  006.vehicle speed                                                                $    $  Km/h        $    $  ANS006.BYTE003  $  XY*0.0078125
  $  007.effective steady-state idle speed                                            $    $  rpm         $    $  ANS007.BYTE003  $  X*10
  $  008.ambient pressure                                                             $    $  hPa         $    $  ANS008.BYTE003  $  XY*0.0390625
  $  009.ambient air temperature                                                      $    $  °C         $    $  ANS009.BYTE003  $  X*0.75-48
  $  010.Actual intake manifold pressure sensor voltage                               $    $  V           $    $  ANS010.BYTE003  $  XY*0.004882813
  $  011.intake manifold pressure (absolute)                                          $    $  hPa         $    $  ANS011.BYTE003  $  XY*0.0390625
  $  012.pressure upstream throttle valve                                             $    $  hPa         $    $  ANS012.BYTE003  $  XY*0.078125
  $  013.intake air temperature                                                       $    $  °C         $    $  ANS013.BYTE003  $  X*0.75-48
  $  014.Air mass flow                                                                $    $  Kg/h        $    $  ANS014.BYTE003  $  X*4
  $  015.Voltage PWG potentiometer 1                                                  $    $  V           $    $  ANS015.BYTE003  $  XY*0.004882813
  $  016.Voltage PWG potentiometer 2                                                  $    $  V           $    $  ANS016.BYTE003  $  XY*0.004882813
  $  017.normalized angle acceleration pedal                                          $    $  %           $    $  ANS017.BYTE003  $  XY*0.001525879
  $  018.real ignition angle                                                          $    $  Grad Kw     $    $  ANS018.BYTE003  $  X*0.75
  $  019.basic ignition angle                                                         $    $  Grad Kw     $    $  ANS019.BYTE003  $  X*0.75
  $  020.ignition-timing retardation with retardation for dynamics, Cylinder #1       $    $  Grad Kw     $    $  ANS020.BYTE003  $  X*0.75
  $  021.ignition-timing retardation with retardation for dynamics, Cylinder #2       $    $  Grad Kw     $    $  ANS021.BYTE003  $  X*0.75
  $  022.ignition-timing retardation with retardation for dynamics, Cylinder #3       $    $  Grad Kw     $    $  ANS022.BYTE003  $  X*0.75
  $  023.ignition-timing retardation with retardation for dynamics, Cylinder #4       $    $  Grad Kw     $    $  ANS023.BYTE003  $  X*0.75
  $  024.reference level knock control, 16bit, Cylinder #1                            $    $  V           $    $  ANS024.BYTE003  $  XY*0.00007694
  $  025.reference level knock control, 16bit, Cylinder #2                            $    $  V           $    $  ANS025.BYTE003  $  XY*0.00007694
  $  026.reference level knock control, 16bit, Cylinder #3                            $    $  V           $    $  ANS026.BYTE003  $  XY*0.00007694
  $  027.reference level knock control, 16bit, Cylinder #4                            $    $  V           $    $  ANS027.BYTE003  $  XY*0.00007694
  $  028.output voltage oxygen sensor downstream catalyst                             $    $  V           $    $  ANS028.BYTE003  $  X*0.005228758-0.2
  $  029.O2 sensor voltage bank1, sensor 1                                            $    $  V           $    $  ANS029.BYTE003  $  XY*0.004882813
  $  030.O2 sensor voltage bank1, sensor 2                                            $    $  V           $    $  ANS030.BYTE003  $  XY*0.004882813
  $  031.lambda controller output                                                     $    $  -           $    $  ANS031.BYTE003  $  XY*0.000030518
  $  032.Cycle time forced lambda modulation                                          $    $  -           $    $  ANS032.BYTE003  $  XY*0.000030518
  $  033.exhaust temperature downstream catalyst (model)                              $    $  °C         $    $  ANS033.BYTE003  $  X*5-50
  $  034.multiplicative correction of the mixture adaptation                          $    $  -           $    $  ANS034.BYTE003  $  XY*0.000030518
  $  035.additive correction of the mixture adaptation                                $    $  -           $    $  ANS035.BYTE003  $  XY*0.046875-1536
  $  036.injection time                                                               $    $  ms          $    $  ANS036.BYTE003  $  XY*0.001
  $  037.standardized mass flow from canister purge control                           $    $  kg/h        $    $  ANS037.BYTE003  $  XY*0.000390625
  $  038.Fuel pump relay status                                                       $    $  -           $    $  ANS038.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;

 $ 06.Oxygen sensor data

	$	REQ000:7E0 03 22 02 01 00 00 00 00          $
	$	REQ001:7E0 03 22 0D 05 00 00 00 00          $
	$	REQ002:7E0 03 22 02 89 00 00 00 00          $
	$	REQ003:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ004:7E0 03 22 02 04 00 00 00 00          $
	$	REQ005:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ006:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ007:7E0 03 22 02 A2 00 00 00 00          $
	$	REQ008:7E0 03 22 02 45 00 00 00 00          $
	$	REQ009:7E0 03 22 02 0F 00 00 00 00          $
	$	REQ010:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ011:7E0 03 22 02 20 00 00 00 00          $
	$	REQ012:7E0 03 22 02 3A 00 00 00 00          $
	$	REQ013:7E0 03 22 02 3B 00 00 00 00          $
	$	REQ014:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ015:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ016:7E0 03 22 02 5C 00 00 00 00          $
	$	REQ017:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ018:7E0 03 22 02 62 00 00 00 00          $
	$	REQ019:7E0 03 22 02 63 00 00 00 00          $
	$	REQ020:7E0 03 22 02 10 00 00 00 00          $
	$	REQ021:7E0 03 22 02 36 00 00 00 00          $
	$	REQ022:7E0 03 22 02 7E 00 00 00 00          $
	$	REQ023:7E0 03 22 03 11 00 00 00 00          $
	$	REQ024:7E0 03 22 03 12 00 00 00 00          $
	$	REQ025:7E0 03 22 03 13 00 00 00 00          $
	$	REQ026:7E0 03 22 03 14 00 00 00 00          $
	$	REQ027:7E0 03 22 02 7F 00 00 00 00          $
	$	REQ028:7E0 03 22 03 31 00 00 00 00          $
	$	REQ029:7E0 03 22 03 32 00 00 00 00          $
	$	REQ030:7E0 03 22 03 33 00 00 00 00          $
	$	REQ031:7E0 03 22 03 34 00 00 00 00          $
	$	REQ032:7E0 03 22 02 84 00 00 00 00          $
	$	REQ033:7E0 03 22 02 85 00 00 00 00          $
	$	REQ034:7E0 03 22 02 86 00 00 00 00          $
	$	REQ035:7E0 03 22 02 87 00 00 00 00          $
	$	REQ036:7E0 03 22 02 23 00 00 00 00          $
	$	REQ037:7E0 03 22 02 AA 00 00 00 00          $
	$	REQ038:7E0 03 22 02 AB 00 00 00 00          $
	$	REQ039:7E0 03 22 02 57 00 00 00 00          $
	$	REQ040:7E0 03 22 02 88 00 00 00 00          $
	$	REQ041:7E0 03 22 02 2D 00 00 00 00          $
	$	REQ042:7E0 03 22 02 58 00 00 00 00          $
	$	REQ043:7E0 03 22 02 60 00 00 00 00          $
	$	REQ044:7E0 03 22 02 6D 00 00 00 00          $
	$	REQ045:7E0 03 22 02 7D 00 00 00 00          $
	$	REQ046:7E0 03 22 0F 04 00 00 00 00          $
	$	REQ047:7E0 03 22 0F 03 00 00 00 00          $

  $  000.desired indicated engine torque                                                    $    $  N.m         $    $  ANS000.BYTE003  $  XY*0.001525879
  $  001.indicated real engine torque                                                       $    $  N.m         $    $  ANS001.BYTE003  $  XY*0.001525879
  $  002.desired torque change from the idle speed control                                  $    $  N.m         $    $  ANS002.BYTE003  $  XY*0.003051758-100
  $  003.relative air mass                                                                  $    $  %           $    $  ANS003.BYTE003  $  X*0.390625
  $  004.engine speed                                                                       $    $  rpm         $    $  ANS004.BYTE003  $  XY*0.25
  $  005.vehicle speed                                                                      $    $  Km/h        $    $  ANS005.BYTE003  $  XY*0.0078125
  $  006.effective steady-state idle speed                                                  $    $  rpm         $    $  ANS006.BYTE003  $  X*10
  $  007.Actual intake manifold pressure sensor voltage                                     $    $  V           $    $  ANS007.BYTE003  $  XY*0.004882813
  $  008.intake manifold pressure (absolute)                                                $    $  hPa         $    $  ANS008.BYTE003  $  XY*0.0390625
  $  009.pressure upstream throttle valve                                                   $    $  hPa         $    $  ANS009.BYTE003  $  XY*0.078125
  $  010.intake air temperature                                                             $    $  °C         $    $  ANS010.BYTE003  $  X*0.75-48
  $  011.Air mass flow                                                                      $    $  Kg/h        $    $  ANS011.BYTE003  $  X*4
  $  012.throttle blade position dependent on poti 1                                        $    $  %DK         $    $  ANS012.BYTE003  $  XY*0.024414063
  $  013.throttle blade position dependent on poti 2                                        $    $  %DK         $    $  ANS013.BYTE003  $  XY*0.024414063
  $  014.throttle angle with respect to lower mechanical stop                               $    $  %DK         $    $  ANS014.BYTE003  $  XY*0.024414063
  $  015.sensor voltage from throttle potentiometer 1                                       $    $  V           $    $  ANS015.BYTE003  $  XY*0.001220703
  $  016.sensor voltage from throttle potentiometer 2                                       $    $  V           $    $  ANS016.BYTE003  $  XY*0.001220703
  $  017.Sum of the PID-components (Throttle actuator Control PWM)                          $    $  %           $    $  ANS017.BYTE003  $  XY*0.001525879
  $  018.Voltage PWG potentiometer 1                                                        $    $  V           $    $  ANS018.BYTE003  $  XY*0.004882813
  $  019.Voltage PWG potentiometer 2                                                        $    $  V           $    $  ANS019.BYTE003  $  XY*0.004882813
  $  020.normalized angle acceleration pedal                                                $    $  %           $    $  ANS020.BYTE003  $  XY*0.001525879
  $  021.real ignition angle                                                                $    $  Grad Kw     $    $  ANS021.BYTE003  $  X*0.75
  $  022.basic ignition angle                                                               $    $  Grad Kw     $    $  ANS022.BYTE003  $  X*0.75
  $  023.ignition-timing retardation with retardation for dynamics, Cylinder #1             $    $  Grad Kw     $    $  ANS023.BYTE003  $  X*0.75
  $  024.ignition-timing retardation with retardation for dynamics, Cylinder #2             $    $  Grad Kw     $    $  ANS024.BYTE003  $  X*0.75
  $  025.ignition-timing retardation with retardation for dynamics, Cylinder #3             $    $  Grad Kw     $    $  ANS025.BYTE003  $  X*0.75
  $  026.ignition-timing retardation with retardation for dynamics, Cylinder #4             $    $  Grad Kw     $    $  ANS026.BYTE003  $  X*0.75
  $  027.fault counter, summary, counts emission relevant misfirings of all cylinders       $    $  time        $    $  ANS027.BYTE003  $  XY
  $  028.number of misfire: cylinder#1                                                      $    $  time        $    $  ANS028.BYTE003  $  XY
  $  029.number of misfire: cylinder#2                                                      $    $  time        $    $  ANS029.BYTE003  $  XY
  $  030.number of misfire: cylinder#3                                                      $    $  time        $    $  ANS030.BYTE003  $  XY
  $  031.number of misfire: cylinder#4                                                      $    $  time        $    $  ANS031.BYTE003  $  XY
  $  032.area of misfire, minimum engine speed                                              $    $  rpm         $    $  ANS032.BYTE003  $  XY*0.25
  $  033.area of misfire, maximum engine speed                                              $    $  rpm         $    $  ANS033.BYTE003  $  XY*0.25
  $  034.area of misfirings, minimum load                                                   $    $  %           $    $  ANS034.BYTE003  $  X*0.390625
  $  035.area of misfirings, maximum load                                                   $    $  %           $    $  ANS035.BYTE003  $  X*0.390625
  $  036.output voltage oxygen sensor downstream catalyst                                   $    $  V           $    $  ANS036.BYTE003  $  X*0.005228758-0.2
  $  037.O2 sensor voltage bank1, sensor 1                                                  $    $  V           $    $  ANS037.BYTE003  $  XY*0.004882813
  $  038.O2 sensor voltage bank1, sensor 2                                                  $    $  V           $    $  ANS038.BYTE003  $  XY*0.004882813
  $  039.lambda controller output                                                           $    $  -           $    $  ANS039.BYTE003  $  XY*0.000030518
  $  040.Cycle time forced lambda modulation                                                $    $  -           $    $  ANS040.BYTE003  $  XY*0.000030518
  $  041.exhaust temperature downstream catalyst (model)                                    $    $  °C         $    $  ANS041.BYTE003  $  X*5-50
  $  042.multiplicative correction of the mixture adaptation                                $    $  -           $    $  ANS042.BYTE003  $  XY*0.000030518
  $  043.additive correction of the mixture adaptation                                      $    $  -           $    $  ANS043.BYTE003  $  XY*0.046875-1536
  $  044.injection time                                                                     $    $  ms          $    $  ANS044.BYTE003  $  XY*0.001
  $  045.standardized mass flow from canister purge control                                 $    $  kg/h        $    $  ANS045.BYTE003  $  XY*0.000390625
  $  046.Downstream O2 heater status                                                        $    $  -           $    $  ANS046.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  047.Upstream O2 heater status                                                          $    $  -           $    $  ANS047.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;

 $ 07.Ignition data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 0D 05 00 00 00 00          $
	$	REQ003:7E0 03 22 02 89 00 00 00 00          $
	$	REQ004:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ005:7E0 03 22 02 04 00 00 00 00          $
	$	REQ006:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ007:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ008:7E0 03 22 02 3A 00 00 00 00          $
	$	REQ009:7E0 03 22 02 3B 00 00 00 00          $
	$	REQ010:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ011:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ012:7E0 03 22 02 5C 00 00 00 00          $
	$	REQ013:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ014:7E0 03 22 02 62 00 00 00 00          $
	$	REQ015:7E0 03 22 02 63 00 00 00 00          $
	$	REQ016:7E0 03 22 02 10 00 00 00 00          $
	$	REQ017:7E0 03 22 02 36 00 00 00 00          $
	$	REQ018:7E0 03 22 02 7E 00 00 00 00          $
	$	REQ019:7E0 03 22 03 11 00 00 00 00          $
	$	REQ020:7E0 03 22 03 12 00 00 00 00          $
	$	REQ021:7E0 03 22 03 13 00 00 00 00          $
	$	REQ022:7E0 03 22 03 14 00 00 00 00          $
	$	REQ023:7E0 03 22 03 21 00 00 00 00          $
	$	REQ024:7E0 03 22 03 22 00 00 00 00          $
	$	REQ025:7E0 03 22 03 23 00 00 00 00          $
	$	REQ026:7E0 03 22 03 24 00 00 00 00          $
	$	REQ027:7E0 03 22 02 7F 00 00 00 00          $
	$	REQ028:7E0 03 22 03 31 00 00 00 00          $
	$	REQ029:7E0 03 22 03 32 00 00 00 00          $
	$	REQ030:7E0 03 22 03 33 00 00 00 00          $
	$	REQ031:7E0 03 22 03 34 00 00 00 00          $
	$	REQ032:7E0 03 22 02 84 00 00 00 00          $
	$	REQ033:7E0 03 22 02 85 00 00 00 00          $
	$	REQ034:7E0 03 22 02 86 00 00 00 00          $
	$	REQ035:7E0 03 22 02 87 00 00 00 00          $
	$	REQ036:7E0 03 22 02 6D 00 00 00 00          $

  $  000.maximum attainable indicated torque                                                $    $  N.m         $    $  ANS000.BYTE003  $  XY*0.001525879
  $  001.desired indicated engine torque                                                    $    $  N.m         $    $  ANS001.BYTE003  $  XY*0.001525879
  $  002.indicated real engine torque                                                       $    $  N.m         $    $  ANS002.BYTE003  $  XY*0.001525879
  $  003.desired torque change from the idle speed control                                  $    $  N.m         $    $  ANS003.BYTE003  $  XY*0.003051758-100
  $  004.relative air mass                                                                  $    $  %           $    $  ANS004.BYTE003  $  X*0.390625
  $  005.engine speed                                                                       $    $  rpm         $    $  ANS005.BYTE003  $  XY*0.25
  $  006.vehicle speed                                                                      $    $  Km/h        $    $  ANS006.BYTE003  $  XY*0.0078125
  $  007.effective steady-state idle speed                                                  $    $  rpm         $    $  ANS007.BYTE003  $  X*10
  $  008.throttle blade position dependent on poti 1                                        $    $  %DK         $    $  ANS008.BYTE003  $  XY*0.024414063
  $  009.throttle blade position dependent on poti 2                                        $    $  %DK         $    $  ANS009.BYTE003  $  XY*0.024414063
  $  010.throttle angle with respect to lower mechanical stop                               $    $  %DK         $    $  ANS010.BYTE003  $  XY*0.024414063
  $  011.sensor voltage from throttle potentiometer 1                                       $    $  V           $    $  ANS011.BYTE003  $  XY*0.001220703
  $  012.sensor voltage from throttle potentiometer 2                                       $    $  V           $    $  ANS012.BYTE003  $  XY*0.001220703
  $  013.Sum of the PID-components (Throttle actuator Control PWM)                          $    $  %           $    $  ANS013.BYTE003  $  XY*0.001525879
  $  014.Voltage PWG potentiometer 1                                                        $    $  V           $    $  ANS014.BYTE003  $  XY*0.004882813
  $  015.Voltage PWG potentiometer 2                                                        $    $  V           $    $  ANS015.BYTE003  $  XY*0.004882813
  $  016.normalized angle acceleration pedal                                                $    $  %           $    $  ANS016.BYTE003  $  XY*0.001525879
  $  017.real ignition angle                                                                $    $  Grad Kw     $    $  ANS017.BYTE003  $  X*0.75
  $  018.basic ignition angle                                                               $    $  Grad Kw     $    $  ANS018.BYTE003  $  X*0.75
  $  019.ignition-timing retardation with retardation for dynamics, Cylinder #1             $    $  Grad Kw     $    $  ANS019.BYTE003  $  X*0.75
  $  020.ignition-timing retardation with retardation for dynamics, Cylinder #2             $    $  Grad Kw     $    $  ANS020.BYTE003  $  X*0.75
  $  021.ignition-timing retardation with retardation for dynamics, Cylinder #3             $    $  Grad Kw     $    $  ANS021.BYTE003  $  X*0.75
  $  022.ignition-timing retardation with retardation for dynamics, Cylinder #4             $    $  Grad Kw     $    $  ANS022.BYTE003  $  X*0.75
  $  023.reference level knock control, 16bit, Cylinder #1                                  $    $  V           $    $  ANS023.BYTE003  $  XY*0.00007694
  $  024.reference level knock control, 16bit, Cylinder #2                                  $    $  V           $    $  ANS024.BYTE003  $  XY*0.00007694
  $  025.reference level knock control, 16bit, Cylinder #3                                  $    $  V           $    $  ANS025.BYTE003  $  XY*0.00007694
  $  026.reference level knock control, 16bit, Cylinder #4                                  $    $  V           $    $  ANS026.BYTE003  $  XY*0.00007694
  $  027.fault counter, summary, counts emission relevant misfirings of all cylinders       $    $  time        $    $  ANS027.BYTE003  $  XY
  $  028.number of misfire: cylinder#1                                                      $    $  time        $    $  ANS028.BYTE003  $  XY
  $  029.number of misfire: cylinder#2                                                      $    $  time        $    $  ANS029.BYTE003  $  XY
  $  030.number of misfire: cylinder#3                                                      $    $  time        $    $  ANS030.BYTE003  $  XY
  $  031.number of misfire: cylinder#4                                                      $    $  time        $    $  ANS031.BYTE003  $  XY
  $  032.area of misfire, minimum engine speed                                              $    $  rpm         $    $  ANS032.BYTE003  $  XY*0.25
  $  033.area of misfire, maximum engine speed                                              $    $  rpm         $    $  ANS033.BYTE003  $  XY*0.25
  $  034.area of misfirings, minimum load                                                   $    $  %           $    $  ANS034.BYTE003  $  X*0.390625
  $  035.area of misfirings, maximum load                                                   $    $  %           $    $  ANS035.BYTE003  $  X*0.390625
  $  036.injection time                                                                     $    $  ms          $    $  ANS036.BYTE003  $  XY*0.001

 $ 08.Air intake data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 0D 05 00 00 00 00          $
	$	REQ003:7E0 03 22 02 89 00 00 00 00          $
	$	REQ004:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ005:7E0 03 22 02 04 00 00 00 00          $
	$	REQ006:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ007:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ008:7E0 03 22 02 09 00 00 00 00          $
	$	REQ009:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ010:7E0 03 22 02 A2 00 00 00 00          $
	$	REQ011:7E0 03 22 02 45 00 00 00 00          $
	$	REQ012:7E0 03 22 02 0F 00 00 00 00          $
	$	REQ013:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ014:7E0 03 22 02 20 00 00 00 00          $
	$	REQ015:7E0 03 22 02 3A 00 00 00 00          $
	$	REQ016:7E0 03 22 02 3B 00 00 00 00          $
	$	REQ017:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ018:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ019:7E0 03 22 02 5C 00 00 00 00          $
	$	REQ020:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ021:7E0 03 22 02 62 00 00 00 00          $
	$	REQ022:7E0 03 22 02 63 00 00 00 00          $
	$	REQ023:7E0 03 22 02 10 00 00 00 00          $
	$	REQ024:7E0 03 22 02 23 00 00 00 00          $
	$	REQ025:7E0 03 22 02 AA 00 00 00 00          $
	$	REQ026:7E0 03 22 02 AB 00 00 00 00          $
	$	REQ027:7E0 03 22 02 57 00 00 00 00          $
	$	REQ028:7E0 03 22 02 88 00 00 00 00          $
	$	REQ029:7E0 03 22 02 2D 00 00 00 00          $
	$	REQ030:7E0 03 22 02 58 00 00 00 00          $
	$	REQ031:7E0 03 22 02 60 00 00 00 00          $
	$	REQ032:7E0 03 22 02 7D 00 00 00 00          $

  $  000.maximum attainable indicated torque                             $    $  N.m      $    $  ANS000.BYTE003  $  XY*0.001525879
  $  001.desired indicated engine torque                                 $    $  N.m      $    $  ANS001.BYTE003  $  XY*0.001525879
  $  002.indicated real engine torque                                    $    $  N.m      $    $  ANS002.BYTE003  $  XY*0.001525879
  $  003.desired torque change from the idle speed control               $    $  N.m      $    $  ANS003.BYTE003  $  XY*0.003051758-100
  $  004.relative air mass                                               $    $  %        $    $  ANS004.BYTE003  $  X*0.390625
  $  005.engine speed                                                    $    $  rpm      $    $  ANS005.BYTE003  $  XY*0.25
  $  006.vehicle speed                                                   $    $  Km/h     $    $  ANS006.BYTE003  $  XY*0.0078125
  $  007.effective steady-state idle speed                               $    $  rpm      $    $  ANS007.BYTE003  $  X*10
  $  008.ambient pressure                                                $    $  hPa      $    $  ANS008.BYTE003  $  XY*0.0390625
  $  009.ambient air temperature                                         $    $  °C      $    $  ANS009.BYTE003  $  X*0.75-48
  $  010.Actual intake manifold pressure sensor voltage                  $    $  V        $    $  ANS010.BYTE003  $  XY*0.004882813
  $  011.intake manifold pressure (absolute)                             $    $  hPa      $    $  ANS011.BYTE003  $  XY*0.0390625
  $  012.pressure upstream throttle valve                                $    $  hPa      $    $  ANS012.BYTE003  $  XY*0.078125
  $  013.intake air temperature                                          $    $  °C      $    $  ANS013.BYTE003  $  X*0.75-48
  $  014.Air mass flow                                                   $    $  Kg/h     $    $  ANS014.BYTE003  $  X*4
  $  015.throttle blade position dependent on poti 1                     $    $  %DK      $    $  ANS015.BYTE003  $  XY*0.024414063
  $  016.throttle blade position dependent on poti 2                     $    $  %DK      $    $  ANS016.BYTE003  $  XY*0.024414063
  $  017.throttle angle with respect to lower mechanical stop            $    $  %DK      $    $  ANS017.BYTE003  $  XY*0.024414063
  $  018.sensor voltage from throttle potentiometer 1                    $    $  V        $    $  ANS018.BYTE003  $  XY*0.001220703
  $  019.sensor voltage from throttle potentiometer 2                    $    $  V        $    $  ANS019.BYTE003  $  XY*0.001220703
  $  020.Sum of the PID-components (Throttle actuator Control PWM)       $    $  %        $    $  ANS020.BYTE003  $  XY*0.001525879
  $  021.Voltage PWG potentiometer 1                                     $    $  V        $    $  ANS021.BYTE003  $  XY*0.004882813
  $  022.Voltage PWG potentiometer 2                                     $    $  V        $    $  ANS022.BYTE003  $  XY*0.004882813
  $  023.normalized angle acceleration pedal                             $    $  %        $    $  ANS023.BYTE003  $  XY*0.001525879
  $  024.output voltage oxygen sensor downstream catalyst                $    $  V        $    $  ANS024.BYTE003  $  X*0.005228758-0.2
  $  025.O2 sensor voltage bank1, sensor 1                               $    $  V        $    $  ANS025.BYTE003  $  XY*0.004882813
  $  026.O2 sensor voltage bank1, sensor 2                               $    $  V        $    $  ANS026.BYTE003  $  XY*0.004882813
  $  027.lambda controller output                                        $    $  -        $    $  ANS027.BYTE003  $  XY*0.000030518
  $  028.Cycle time forced lambda modulation                             $    $  -        $    $  ANS028.BYTE003  $  XY*0.000030518
  $  029.exhaust temperature downstream catalyst (model)                 $    $  °C      $    $  ANS029.BYTE003  $  X*5-50
  $  030.multiplicative correction of the mixture adaptation             $    $  -        $    $  ANS030.BYTE003  $  XY*0.000030518
  $  031.additive correction of the mixture adaptation                   $    $  -        $    $  ANS031.BYTE003  $  XY*0.046875-1536
  $  032.standardized mass flow from canister purge control              $    $  kg/h     $    $  ANS032.BYTE003  $  XY*0.000390625

 $ 09.The instrument shows data

	$	REQ000:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ001:7E0 03 22 02 03 00 00 00 00          $
	$	REQ002:7E0 03 22 02 2F 00 00 00 00          $
	$	REQ003:7E0 03 22 02 7C 00 00 00 00          $
	$	REQ004:7E0 03 22 02 04 00 00 00 00          $
	$	REQ005:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ006:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ007:7E0 03 22 0D 06 00 00 00 00          $
	$	REQ008:7E0 03 22 02 7B 00 00 00 00          $
	$	REQ009:7E0 03 22 0D 00 00 00 00 00          $
	$	REQ010:7E0 03 22 02 05 00 00 00 00          $
	$	REQ011:7E0 03 22 02 06 00 00 00 00          $

  $  000.relative air mass                                           $    $  %        $    $  ANS000.BYTE003  $  X*0.390625
  $  001.engine temperature                                          $    $  °C      $    $  ANS001.BYTE003  $  X*0.75-48
  $  002.Engine coolant temperature, linearised and calculated       $    $  °C      $    $  ANS002.BYTE003  $  X*0.75-48
  $  003.engine temperature at start                                 $    $  °C      $    $  ANS003.BYTE003  $  X*0.75-48
  $  004.engine speed                                                $    $  rpm      $    $  ANS004.BYTE003  $  XY*0.25
  $  005.vehicle speed                                               $    $  Km/h     $    $  ANS005.BYTE003  $  XY*0.0078125
  $  006.effective steady-state idle speed                           $    $  rpm      $    $  ANS006.BYTE003  $  X*10
  $  007.Drivingdistance since prime start                           $    $  Km       $    $  ANS007.BYTE003  $  X1X2X3X4
  $  008.counter for distance travelled while MIL is activated       $    $  Km       $    $  ANS008.BYTE003  $  XY
  $  009.battery voltage                                             $    $  V        $    $  ANS009.BYTE003  $  XY*0.000390625
  $  010.time counter at end of start                                $    $  s        $    $  ANS010.BYTE003  $  XY*0.1
  $  011.fuel level                                                  $    $  L        $    $  ANS011.BYTE003  $  XY*0.1

 $ 10.The fire data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 0D 05 00 00 00 00          $
	$	REQ003:7E0 03 22 02 89 00 00 00 00          $
	$	REQ004:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ005:7E0 03 22 02 04 00 00 00 00          $
	$	REQ006:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ007:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ008:7E0 03 22 02 3A 00 00 00 00          $
	$	REQ009:7E0 03 22 02 3B 00 00 00 00          $
	$	REQ010:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ011:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ012:7E0 03 22 02 5C 00 00 00 00          $
	$	REQ013:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ014:7E0 03 22 02 62 00 00 00 00          $
	$	REQ015:7E0 03 22 02 63 00 00 00 00          $
	$	REQ016:7E0 03 22 02 10 00 00 00 00          $
	$	REQ017:7E0 03 22 02 36 00 00 00 00          $
	$	REQ018:7E0 03 22 02 7E 00 00 00 00          $
	$	REQ019:7E0 03 22 03 11 00 00 00 00          $
	$	REQ020:7E0 03 22 03 12 00 00 00 00          $
	$	REQ021:7E0 03 22 03 13 00 00 00 00          $
	$	REQ022:7E0 03 22 03 14 00 00 00 00          $
	$	REQ023:7E0 03 22 02 7F 00 00 00 00          $
	$	REQ024:7E0 03 22 03 31 00 00 00 00          $
	$	REQ025:7E0 03 22 03 32 00 00 00 00          $
	$	REQ026:7E0 03 22 03 33 00 00 00 00          $
	$	REQ027:7E0 03 22 03 34 00 00 00 00          $
	$	REQ028:7E0 03 22 02 84 00 00 00 00          $
	$	REQ029:7E0 03 22 02 85 00 00 00 00          $
	$	REQ030:7E0 03 22 02 86 00 00 00 00          $
	$	REQ031:7E0 03 22 02 87 00 00 00 00          $
	$	REQ032:7E0 03 22 02 6D 00 00 00 00          $
	$	REQ033:7E0 03 22 02 7D 00 00 00 00          $

  $  000.maximum attainable indicated torque                                                $    $  N.m         $    $  ANS000.BYTE003  $  XY*0.001525879
  $  001.desired indicated engine torque                                                    $    $  N.m         $    $  ANS001.BYTE003  $  XY*0.001525879
  $  002.indicated real engine torque                                                       $    $  N.m         $    $  ANS002.BYTE003  $  XY*0.001525879
  $  003.desired torque change from the idle speed control                                  $    $  N.m         $    $  ANS003.BYTE003  $  XY*0.003051758-100
  $  004.relative air mass                                                                  $    $  %           $    $  ANS004.BYTE003  $  X*0.390625
  $  005.engine speed                                                                       $    $  rpm         $    $  ANS005.BYTE003  $  XY*0.25
  $  006.vehicle speed                                                                      $    $  Km/h        $    $  ANS006.BYTE003  $  XY*0.0078125
  $  007.effective steady-state idle speed                                                  $    $  rpm         $    $  ANS007.BYTE003  $  X*10
  $  008.throttle blade position dependent on poti 1                                        $    $  %DK         $    $  ANS008.BYTE003  $  XY*0.024414063
  $  009.throttle blade position dependent on poti 2                                        $    $  %DK         $    $  ANS009.BYTE003  $  XY*0.024414063
  $  010.throttle angle with respect to lower mechanical stop                               $    $  %DK         $    $  ANS010.BYTE003  $  XY*0.024414063
  $  011.sensor voltage from throttle potentiometer 1                                       $    $  V           $    $  ANS011.BYTE003  $  XY*0.001220703
  $  012.sensor voltage from throttle potentiometer 2                                       $    $  V           $    $  ANS012.BYTE003  $  XY*0.001220703
  $  013.Sum of the PID-components (Throttle actuator Control PWM)                          $    $  %           $    $  ANS013.BYTE003  $  XY*0.001525879
  $  014.Voltage PWG potentiometer 1                                                        $    $  V           $    $  ANS014.BYTE003  $  XY*0.004882813
  $  015.Voltage PWG potentiometer 2                                                        $    $  V           $    $  ANS015.BYTE003  $  XY*0.004882813
  $  016.normalized angle acceleration pedal                                                $    $  %           $    $  ANS016.BYTE003  $  XY*0.001525879
  $  017.real ignition angle                                                                $    $  Grad Kw     $    $  ANS017.BYTE003  $  X*0.75
  $  018.basic ignition angle                                                               $    $  Grad Kw     $    $  ANS018.BYTE003  $  X*0.75
  $  019.ignition-timing retardation with retardation for dynamics, Cylinder #1             $    $  Grad Kw     $    $  ANS019.BYTE003  $  X*0.75
  $  020.ignition-timing retardation with retardation for dynamics, Cylinder #2             $    $  Grad Kw     $    $  ANS020.BYTE003  $  X*0.75
  $  021.ignition-timing retardation with retardation for dynamics, Cylinder #3             $    $  Grad Kw     $    $  ANS021.BYTE003  $  X*0.75
  $  022.ignition-timing retardation with retardation for dynamics, Cylinder #4             $    $  Grad Kw     $    $  ANS022.BYTE003  $  X*0.75
  $  023.fault counter, summary, counts emission relevant misfirings of all cylinders       $    $  time        $    $  ANS023.BYTE003  $  XY
  $  024.number of misfire: cylinder#1                                                      $    $  time        $    $  ANS024.BYTE003  $  XY
  $  025.number of misfire: cylinder#2                                                      $    $  time        $    $  ANS025.BYTE003  $  XY
  $  026.number of misfire: cylinder#3                                                      $    $  time        $    $  ANS026.BYTE003  $  XY
  $  027.number of misfire: cylinder#4                                                      $    $  time        $    $  ANS027.BYTE003  $  XY
  $  028.area of misfire, minimum engine speed                                              $    $  rpm         $    $  ANS028.BYTE003  $  XY*0.25
  $  029.area of misfire, maximum engine speed                                              $    $  rpm         $    $  ANS029.BYTE003  $  XY*0.25
  $  030.area of misfirings, minimum load                                                   $    $  %           $    $  ANS030.BYTE003  $  X*0.390625
  $  031.area of misfirings, maximum load                                                   $    $  %           $    $  ANS031.BYTE003  $  X*0.390625
  $  032.injection time                                                                     $    $  ms          $    $  ANS032.BYTE003  $  XY*0.001
  $  033.standardized mass flow from canister purge control                                 $    $  kg/h        $    $  ANS033.BYTE003  $  XY*0.000390625

 $ 11.Throttle data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 0D 05 00 00 00 00          $
	$	REQ003:7E0 03 22 02 89 00 00 00 00          $
	$	REQ004:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ005:7E0 03 22 02 04 00 00 00 00          $
	$	REQ006:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ007:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ008:7E0 03 22 02 09 00 00 00 00          $
	$	REQ009:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ010:7E0 03 22 02 A2 00 00 00 00          $
	$	REQ011:7E0 03 22 02 45 00 00 00 00          $
	$	REQ012:7E0 03 22 02 0F 00 00 00 00          $
	$	REQ013:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ014:7E0 03 22 02 20 00 00 00 00          $
	$	REQ015:7E0 03 22 02 3A 00 00 00 00          $
	$	REQ016:7E0 03 22 02 3B 00 00 00 00          $
	$	REQ017:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ018:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ019:7E0 03 22 02 5C 00 00 00 00          $
	$	REQ020:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ021:7E0 03 22 02 62 00 00 00 00          $
	$	REQ022:7E0 03 22 02 63 00 00 00 00          $
	$	REQ023:7E0 03 22 02 10 00 00 00 00          $

  $  000.maximum attainable indicated torque                             $    $  N.m      $    $  ANS000.BYTE003  $  XY*0.001525879
  $  001.desired indicated engine torque                                 $    $  N.m      $    $  ANS001.BYTE003  $  XY*0.001525879
  $  002.indicated real engine torque                                    $    $  N.m      $    $  ANS002.BYTE003  $  XY*0.001525879
  $  003.desired torque change from the idle speed control               $    $  N.m      $    $  ANS003.BYTE003  $  XY*0.003051758-100
  $  004.relative air mass                                               $    $  %        $    $  ANS004.BYTE003  $  X*0.390625
  $  005.engine speed                                                    $    $  rpm      $    $  ANS005.BYTE003  $  XY*0.25
  $  006.vehicle speed                                                   $    $  Km/h     $    $  ANS006.BYTE003  $  XY*0.0078125
  $  007.effective steady-state idle speed                               $    $  rpm      $    $  ANS007.BYTE003  $  X*10
  $  008.ambient pressure                                                $    $  hPa      $    $  ANS008.BYTE003  $  XY*0.0390625
  $  009.ambient air temperature                                         $    $  °C      $    $  ANS009.BYTE003  $  X*0.75-48
  $  010.Actual intake manifold pressure sensor voltage                  $    $  V        $    $  ANS010.BYTE003  $  XY*0.004882813
  $  011.intake manifold pressure (absolute)                             $    $  hPa      $    $  ANS011.BYTE003  $  XY*0.0390625
  $  012.pressure upstream throttle valve                                $    $  hPa      $    $  ANS012.BYTE003  $  XY*0.078125
  $  013.intake air temperature                                          $    $  °C      $    $  ANS013.BYTE003  $  X*0.75-48
  $  014.Air mass flow                                                   $    $  Kg/h     $    $  ANS014.BYTE003  $  X*4
  $  015.throttle blade position dependent on poti 1                     $    $  %DK      $    $  ANS015.BYTE003  $  XY*0.024414063
  $  016.throttle blade position dependent on poti 2                     $    $  %DK      $    $  ANS016.BYTE003  $  XY*0.024414063
  $  017.throttle angle with respect to lower mechanical stop            $    $  %DK      $    $  ANS017.BYTE003  $  XY*0.024414063
  $  018.sensor voltage from throttle potentiometer 1                    $    $  V        $    $  ANS018.BYTE003  $  XY*0.001220703
  $  019.sensor voltage from throttle potentiometer 2                    $    $  V        $    $  ANS019.BYTE003  $  XY*0.001220703
  $  020.Sum of the PID-components (Throttle actuator Control PWM)       $    $  %        $    $  ANS020.BYTE003  $  XY*0.001525879
  $  021.Voltage PWG potentiometer 1                                     $    $  V        $    $  ANS021.BYTE003  $  XY*0.004882813
  $  022.Voltage PWG potentiometer 2                                     $    $  V        $    $  ANS022.BYTE003  $  XY*0.004882813
  $  023.normalized angle acceleration pedal                             $    $  %        $    $  ANS023.BYTE003  $  XY*0.001525879


