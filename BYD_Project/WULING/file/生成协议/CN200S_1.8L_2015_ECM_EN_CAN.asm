$~#6$~#14$~500$~7E8
;******************************************************************************************************************************************************

车型代号:CN200S
车型:宝骏560
排量:1.8L
年份:2015
模块名缩写:ECM
模块名:发动机控制模块
供应商:联电
诊断代码:CN200S_1.8L_2015_ECM_CAN

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

		$*$*DTC/BJ530DTCS


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
	$	REQ003:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ004:7E0 03 22 02 03 00 00 00 00          $
	$	REQ005:7E0 03 22 02 7C 00 00 00 00          $
	$	REQ006:7E0 03 22 02 04 00 00 00 00          $
	$	REQ007:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ008:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ009:7E0 03 22 02 36 00 00 00 00          $
	$	REQ010:7E0 03 22 02 7E 00 00 00 00          $
	$	REQ011:7E0 03 22 03 21 00 00 00 00          $
	$	REQ012:7E0 03 22 03 22 00 00 00 00          $
	$	REQ013:7E0 03 22 03 23 00 00 00 00          $
	$	REQ014:7E0 03 22 03 24 00 00 00 00          $
	$	REQ015:7E0 03 22 02 7F 00 00 00 00          $
	$	REQ016:7E0 03 22 03 31 00 00 00 00          $
	$	REQ017:7E0 03 22 03 32 00 00 00 00          $
	$	REQ018:7E0 03 22 03 33 00 00 00 00          $
	$	REQ019:7E0 03 22 03 34 00 00 00 00          $
	$	REQ020:7E0 03 22 02 86 00 00 00 00          $
	$	REQ021:7E0 03 22 02 87 00 00 00 00          $
	$	REQ022:7E0 03 22 02 6D 00 00 00 00          $
	$	REQ023:7E0 03 22 0F 17 00 00 00 00          $
	$	REQ024:7E0 03 22 0F 15 00 00 00 00          $
	$	REQ025:7E0 03 22 0F 14 00 00 00 00          $
	$	REQ026:7E0 03 22 0F 13 00 00 00 00          $
	$	REQ027:7E0 03 22 0F 12 00 00 00 00          $
	$	REQ028:7E0 03 22 0F 0B 00 00 00 00          $
	$	REQ029:7E0 03 22 0F 16 00 00 00 00          $

  $  000.maximum attainable indicated torque                                                $    $  N.m         $    $  ANS000.BYTE003  $  XY*0.001525879
  $  001.desired indicated engine torque                                                    $    $  N.m         $    $  ANS001.BYTE003  $  XY*0.001525879
  $  002.indicated real engine torque                                                       $    $  N.m         $    $  ANS002.BYTE003  $  XY*0.001525879
  $  003.relative air mass                                                                  $    $  %           $    $  ANS003.BYTE003  $  X*0.390625
  $  004.engine temperature                                                                 $    $  °C         $    $  ANS004.BYTE003  $  X*0.75-48
  $  005.engine temperature at start                                                        $    $  °C         $    $  ANS005.BYTE003  $  X*0.75-48
  $  006.engine speed                                                                       $    $  rpm         $    $  ANS006.BYTE003  $  XY*0.25
  $  007.vehicle speed                                                                      $    $  Km/h        $    $  ANS007.BYTE003  $  XY*0.0078125
  $  008.effective steady-state idle speed                                                  $    $  rpm         $    $  ANS008.BYTE003  $  X*10
  $  009.real ignition angle                                                                $    $  Grad Kw     $    $  ANS009.BYTE003  $  [00-7F]:X*0.75+0		[80-FF]:(X-255)*0.75+0
  $  010.basic ignition angle                                                               $    $  Grad Kw     $    $  ANS010.BYTE003  $  X*0.75
  $  011.reference level knock control, 16bit, Cylinder #1                                  $    $  V           $    $  ANS011.BYTE003  $  XY*0.00007694
  $  012.reference level knock control, 16bit, Cylinder #2                                  $    $  V           $    $  ANS012.BYTE003  $  XY*0.00007694
  $  013.reference level knock control, 16bit, Cylinder #3                                  $    $  V           $    $  ANS013.BYTE003  $  XY*0.00007694
  $  014.reference level knock control, 16bit, Cylinder #4                                  $    $  V           $    $  ANS014.BYTE003  $  XY*0.00007694
  $  015.fault counter, summary, counts emission relevant misfirings of all cylinders       $    $  time        $    $  ANS015.BYTE003  $  XY
  $  016.number of misfire: cylinder#1                                                      $    $  time        $    $  ANS016.BYTE003  $  XY
  $  017.number of misfire: cylinder#2                                                      $    $  time        $    $  ANS017.BYTE003  $  XY
  $  018.number of misfire: cylinder#3                                                      $    $  time        $    $  ANS018.BYTE003  $  XY
  $  019.number of misfire: cylinder#4                                                      $    $  time        $    $  ANS019.BYTE003  $  XY
  $  020.area of misfirings, minimum load                                                   $    $  %           $    $  ANS020.BYTE003  $  X*0.390625
  $  021.area of misfirings, maximum load                                                   $    $  %           $    $  ANS021.BYTE003  $  X*0.390625
  $  022.injection time                                                                     $    $  ms          $    $  ANS022.BYTE003  $  XY*0.001
  $  023.Cruise speed                                                                       $    $  Km/h        $    $  ANS023.BYTE003  $  XY*1+1
  $  024.MIL indicator                                                                      $    $  -           $    $  ANS024.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  025.Clutch switch status                                                               $    $  -           $    $  ANS025.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  026.Brake lamp switch status                                                           $    $  -           $    $  ANS026.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  027.Brake test switch status                                                           $    $  -           $    $  ANS027.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  028.Main relay status                                                                  $    $  -           $    $  ANS028.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  029.Cruise status                                                                      $    $  -           $    $  ANS029.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;

 $ 01.Air conditioning system data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 0D 05 00 00 00 00          $
	$	REQ003:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ004:7E0 03 22 02 04 00 00 00 00          $
	$	REQ005:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ006:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ007:7E0 03 22 02 3A 00 00 00 00          $
	$	REQ008:7E0 03 22 02 3B 00 00 00 00          $
	$	REQ009:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ010:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ011:7E0 03 22 02 5C 00 00 00 00          $
	$	REQ012:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ013:7E0 03 22 0F 11 00 00 00 00          $
	$	REQ014:7E0 03 22 0F 0F 00 00 00 00          $
	$	REQ015:7E0 03 22 0F 0E 00 00 00 00          $

  $  000.maximum attainable indicated torque                             $    $  N.m      $    $  ANS000.BYTE003  $  XY*0.001525879
  $  001.desired indicated engine torque                                 $    $  N.m      $    $  ANS001.BYTE003  $  XY*0.001525879
  $  002.indicated real engine torque                                    $    $  N.m      $    $  ANS002.BYTE003  $  XY*0.001525879
  $  003.relative air mass                                               $    $  %        $    $  ANS003.BYTE003  $  X*0.390625
  $  004.engine speed                                                    $    $  rpm      $    $  ANS004.BYTE003  $  XY*0.25
  $  005.vehicle speed                                                   $    $  Km/h     $    $  ANS005.BYTE003  $  XY*0.0078125
  $  006.effective steady-state idle speed                               $    $  rpm      $    $  ANS006.BYTE003  $  X*10
  $  007.throttle blade position dependent on poti 1                     $    $  %        $    $  ANS007.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  008.throttle blade position dependent on poti 2                     $    $  %        $    $  ANS008.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  009.throttle angle with respect to lower mechanical stop            $    $  %        $    $  ANS009.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  010.sensor voltage from throttle potentiometer 1                    $    $  V        $    $  ANS010.BYTE003  $  XY*0.001220703
  $  011.sensor voltage from throttle potentiometer 2                    $    $  V        $    $  ANS011.BYTE003  $  XY*0.001220703
  $  012.Sum of the PID-components (Throttle actuator Control PWM)       $    $  %        $    $  ANS012.BYTE003  $  XY*0.001525879
  $  013.A/C evaporator temperature                                      $    $  ℃       $    $  ANS013.BYTE003  $  X*0.75-48
  $  014.A/C request switch status                                       $    $  -        $    $  ANS014.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  015.A/C compressor clutch relay status                              $    $  -        $    $  ANS015.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;

 $ 02.Exhaust gas recirculation data

	$	REQ000:7E0 03 22 02 AA 00 00 00 00          $
	$	REQ001:7E0 03 22 02 AB 00 00 00 00          $
	$	REQ002:7E0 03 22 02 57 00 00 00 00          $

  $  000.O2 sensor voltage bank1, sensor 1       $    $  V     $    $  ANS000.BYTE003  $  XY*0.004882813
  $  001.O2 sensor voltage bank1, sensor 2       $    $  V     $    $  ANS001.BYTE003  $  XY*0.004882813
  $  002.lambda controller output                $    $  -     $    $  ANS002.BYTE003  $  XY*0.000030518

 $ 03.Evaporative emission data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 0D 05 00 00 00 00          $
	$	REQ003:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ004:7E0 03 22 02 04 00 00 00 00          $
	$	REQ005:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ006:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ007:7E0 03 22 02 09 00 00 00 00          $
	$	REQ008:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ009:7E0 03 22 02 A2 00 00 00 00          $
	$	REQ010:7E0 03 22 02 45 00 00 00 00          $
	$	REQ011:7E0 03 22 02 0F 00 00 00 00          $
	$	REQ012:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ013:7E0 03 22 02 20 00 00 00 00          $
	$	REQ014:7E0 03 22 02 3A 00 00 00 00          $
	$	REQ015:7E0 03 22 02 3B 00 00 00 00          $
	$	REQ016:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ017:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ018:7E0 03 22 02 5C 00 00 00 00          $
	$	REQ019:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ020:7E0 03 22 02 62 00 00 00 00          $
	$	REQ021:7E0 03 22 02 63 00 00 00 00          $
	$	REQ022:7E0 03 22 02 10 00 00 00 00          $
	$	REQ023:7E0 03 22 02 7D 00 00 00 00          $
	$	REQ024:7E0 03 22 0F 0D 00 00 00 00          $
	$	REQ025:7E0 03 22 0F 0C 00 00 00 00          $

  $  000.maximum attainable indicated torque                             $    $  N.m      $    $  ANS000.BYTE003  $  XY*0.001525879
  $  001.desired indicated engine torque                                 $    $  N.m      $    $  ANS001.BYTE003  $  XY*0.001525879
  $  002.indicated real engine torque                                    $    $  N.m      $    $  ANS002.BYTE003  $  XY*0.001525879
  $  003.relative air mass                                               $    $  %        $    $  ANS003.BYTE003  $  X*0.390625
  $  004.engine speed                                                    $    $  rpm      $    $  ANS004.BYTE003  $  XY*0.25
  $  005.vehicle speed                                                   $    $  Km/h     $    $  ANS005.BYTE003  $  XY*0.0078125
  $  006.effective steady-state idle speed                               $    $  rpm      $    $  ANS006.BYTE003  $  X*10
  $  007.ambient pressure                                                $    $  hPa      $    $  ANS007.BYTE003  $  XY*0.0390625
  $  008.ambient air temperature                                         $    $  °C      $    $  ANS008.BYTE003  $  X*0.75-48
  $  009.Actual intake manifold pressure sensor voltage                  $    $  hPa      $    $  ANS009.BYTE003  $  XY*0.0390625
  $  010.intake manifold pressure (absolute)                             $    $  hPa      $    $  ANS010.BYTE003  $  XY*0.0390625
  $  011.pressure upstream throttle valve                                $    $  hPa      $    $  ANS011.BYTE003  $  XY*0.078125
  $  012.intake air temperature                                          $    $  °C      $    $  ANS012.BYTE003  $  X*0.75-48
  $  013.Air mass flow                                                   $    $  Kg/h     $    $  ANS013.BYTE003  $  X*4
  $  014.throttle blade position dependent on poti 1                     $    $  %        $    $  ANS014.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  015.throttle blade position dependent on poti 2                     $    $  %        $    $  ANS015.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  016.throttle angle with respect to lower mechanical stop            $    $  %        $    $  ANS016.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  017.sensor voltage from throttle potentiometer 1                    $    $  V        $    $  ANS017.BYTE003  $  XY*0.001220703
  $  018.sensor voltage from throttle potentiometer 2                    $    $  V        $    $  ANS018.BYTE003  $  XY*0.001220703
  $  019.Sum of the PID-components (Throttle actuator Control PWM)       $    $  %        $    $  ANS019.BYTE003  $  XY*0.001525879
  $  020.Voltage PWG potentiometer 1                                     $    $  V        $    $  ANS020.BYTE003  $  XY*0.004882813
  $  021.Voltage PWG potentiometer 2                                     $    $  V        $    $  ANS021.BYTE003  $  XY*0.004882813
  $  022.normalized angle acceleration pedal                             $    $  %        $    $  ANS022.BYTE003  $  XY*0.001525879
  $  023.standardized mass flow from canister purge control              $    $  kg/h     $    $  ANS023.BYTE003  $  XY*0.000390625
  $  024.Cooling fan 1 switch status                                     $    $  -        $    $  ANS024.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  025.Cooling fan 2 switch status                                     $    $  -        $    $  ANS025.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;

 $ 04.The fuel system data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 0D 05 00 00 00 00          $
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
	$	REQ021:7E0 03 22 0F 05 00 00 00 00          $
	$	REQ022:7E0 03 22 0F 06 00 00 00 00          $
	$	REQ023:7E0 03 22 0F 07 00 00 00 00          $
	$	REQ024:7E0 03 22 0F 08 00 00 00 00          $
	$	REQ025:7E0 03 22 0F 0A 00 00 00 00          $

  $  000.maximum attainable indicated torque                             $    $  N.m      $    $  ANS000.BYTE003  $  XY*0.001525879
  $  001.desired indicated engine torque                                 $    $  N.m      $    $  ANS001.BYTE003  $  XY*0.001525879
  $  002.indicated real engine torque                                    $    $  N.m      $    $  ANS002.BYTE003  $  XY*0.001525879
  $  003.relative air mass                                               $    $  %        $    $  ANS003.BYTE003  $  X*0.390625
  $  004.engine speed                                                    $    $  rpm      $    $  ANS004.BYTE003  $  XY*0.25
  $  005.vehicle speed                                                   $    $  Km/h     $    $  ANS005.BYTE003  $  XY*0.0078125
  $  006.effective steady-state idle speed                               $    $  rpm      $    $  ANS006.BYTE003  $  X*10
  $  007.Actual intake manifold pressure sensor voltage                  $    $  hPa      $    $  ANS007.BYTE003  $  XY*0.0390625
  $  008.intake manifold pressure (absolute)                             $    $  hPa      $    $  ANS008.BYTE003  $  XY*0.0390625
  $  009.pressure upstream throttle valve                                $    $  hPa      $    $  ANS009.BYTE003  $  XY*0.078125
  $  010.intake air temperature                                          $    $  °C      $    $  ANS010.BYTE003  $  X*0.75-48
  $  011.Air mass flow                                                   $    $  Kg/h     $    $  ANS011.BYTE003  $  X*4
  $  012.throttle blade position dependent on poti 1                     $    $  %        $    $  ANS012.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  013.throttle blade position dependent on poti 2                     $    $  %        $    $  ANS013.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  014.throttle angle with respect to lower mechanical stop            $    $  %        $    $  ANS014.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  015.sensor voltage from throttle potentiometer 1                    $    $  V        $    $  ANS015.BYTE003  $  XY*0.001220703
  $  016.sensor voltage from throttle potentiometer 2                    $    $  V        $    $  ANS016.BYTE003  $  XY*0.001220703
  $  017.Sum of the PID-components (Throttle actuator Control PWM)       $    $  %        $    $  ANS017.BYTE003  $  XY*0.001525879
  $  018.Voltage PWG potentiometer 1                                     $    $  V        $    $  ANS018.BYTE003  $  XY*0.004882813
  $  019.Voltage PWG potentiometer 2                                     $    $  V        $    $  ANS019.BYTE003  $  XY*0.004882813
  $  020.normalized angle acceleration pedal                             $    $  %        $    $  ANS020.BYTE003  $  XY*0.001525879
  $  021.Injection time, cylinder#1                                      $    $  ms       $    $  ANS021.BYTE003  $  XY*0.002667
  $  022.Injection time, cylinder#2                                      $    $  ms       $    $  ANS022.BYTE003  $  XY*0.002667
  $  023.Injection time, cylinder#3                                      $    $  ms       $    $  ANS023.BYTE003  $  XY*0.002667
  $  024.Injection time, cylinder#4                                      $    $  ms       $    $  ANS024.BYTE003  $  XY*0.002667
  $  025.Fuel pump relay status                                          $    $  -        $    $  ANS025.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;

 $ 05.Fuel adjustment data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 0D 05 00 00 00 00          $
	$	REQ003:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ004:7E0 03 22 02 04 00 00 00 00          $
	$	REQ005:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ006:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ007:7E0 03 22 02 09 00 00 00 00          $
	$	REQ008:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ009:7E0 03 22 02 A2 00 00 00 00          $
	$	REQ010:7E0 03 22 02 45 00 00 00 00          $
	$	REQ011:7E0 03 22 02 0F 00 00 00 00          $
	$	REQ012:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ013:7E0 03 22 02 20 00 00 00 00          $
	$	REQ014:7E0 03 22 02 62 00 00 00 00          $
	$	REQ015:7E0 03 22 02 63 00 00 00 00          $
	$	REQ016:7E0 03 22 02 10 00 00 00 00          $
	$	REQ017:7E0 03 22 02 36 00 00 00 00          $
	$	REQ018:7E0 03 22 02 7E 00 00 00 00          $
	$	REQ019:7E0 03 22 03 21 00 00 00 00          $
	$	REQ020:7E0 03 22 03 22 00 00 00 00          $
	$	REQ021:7E0 03 22 03 23 00 00 00 00          $
	$	REQ022:7E0 03 22 03 24 00 00 00 00          $
	$	REQ023:7E0 03 22 02 AA 00 00 00 00          $
	$	REQ024:7E0 03 22 02 AB 00 00 00 00          $
	$	REQ025:7E0 03 22 02 57 00 00 00 00          $
	$	REQ026:7E0 03 22 02 6D 00 00 00 00          $
	$	REQ027:7E0 03 22 02 7D 00 00 00 00          $
	$	REQ028:7E0 03 22 0F 0A 00 00 00 00          $

  $  000.maximum attainable indicated torque                      $    $  N.m         $    $  ANS000.BYTE003  $  XY*0.001525879
  $  001.desired indicated engine torque                          $    $  N.m         $    $  ANS001.BYTE003  $  XY*0.001525879
  $  002.indicated real engine torque                             $    $  N.m         $    $  ANS002.BYTE003  $  XY*0.001525879
  $  003.relative air mass                                        $    $  %           $    $  ANS003.BYTE003  $  X*0.390625
  $  004.engine speed                                             $    $  rpm         $    $  ANS004.BYTE003  $  XY*0.25
  $  005.vehicle speed                                            $    $  Km/h        $    $  ANS005.BYTE003  $  XY*0.0078125
  $  006.effective steady-state idle speed                        $    $  rpm         $    $  ANS006.BYTE003  $  X*10
  $  007.ambient pressure                                         $    $  hPa         $    $  ANS007.BYTE003  $  XY*0.0390625
  $  008.ambient air temperature                                  $    $  °C         $    $  ANS008.BYTE003  $  X*0.75-48
  $  009.Actual intake manifold pressure sensor voltage           $    $  hPa         $    $  ANS009.BYTE003  $  XY*0.0390625
  $  010.intake manifold pressure (absolute)                      $    $  hPa         $    $  ANS010.BYTE003  $  XY*0.0390625
  $  011.pressure upstream throttle valve                         $    $  hPa         $    $  ANS011.BYTE003  $  XY*0.078125
  $  012.intake air temperature                                   $    $  °C         $    $  ANS012.BYTE003  $  X*0.75-48
  $  013.Air mass flow                                            $    $  Kg/h        $    $  ANS013.BYTE003  $  X*4
  $  014.Voltage PWG potentiometer 1                              $    $  V           $    $  ANS014.BYTE003  $  XY*0.004882813
  $  015.Voltage PWG potentiometer 2                              $    $  V           $    $  ANS015.BYTE003  $  XY*0.004882813
  $  016.normalized angle acceleration pedal                      $    $  %           $    $  ANS016.BYTE003  $  XY*0.001525879
  $  017.real ignition angle                                      $    $  Grad Kw     $    $  ANS017.BYTE003  $  [00-7F]:X*0.75+0		[80-FF]:(X-255)*0.75+0
  $  018.basic ignition angle                                     $    $  Grad Kw     $    $  ANS018.BYTE003  $  X*0.75
  $  019.reference level knock control, 16bit, Cylinder #1        $    $  V           $    $  ANS019.BYTE003  $  XY*0.00007694
  $  020.reference level knock control, 16bit, Cylinder #2        $    $  V           $    $  ANS020.BYTE003  $  XY*0.00007694
  $  021.reference level knock control, 16bit, Cylinder #3        $    $  V           $    $  ANS021.BYTE003  $  XY*0.00007694
  $  022.reference level knock control, 16bit, Cylinder #4        $    $  V           $    $  ANS022.BYTE003  $  XY*0.00007694
  $  023.O2 sensor voltage bank1, sensor 1                        $    $  V           $    $  ANS023.BYTE003  $  XY*0.004882813
  $  024.O2 sensor voltage bank1, sensor 2                        $    $  V           $    $  ANS024.BYTE003  $  XY*0.004882813
  $  025.lambda controller output                                 $    $  -           $    $  ANS025.BYTE003  $  XY*0.000030518
  $  026.injection time                                           $    $  ms          $    $  ANS026.BYTE003  $  XY*0.001
  $  027.standardized mass flow from canister purge control       $    $  kg/h        $    $  ANS027.BYTE003  $  XY*0.000390625
  $  028.Fuel pump relay status                                   $    $  -           $    $  ANS028.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;

 $ 06.Oxygen sensor data

	$	REQ000:7E0 03 22 02 01 00 00 00 00          $
	$	REQ001:7E0 03 22 0D 05 00 00 00 00          $
	$	REQ002:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ003:7E0 03 22 02 04 00 00 00 00          $
	$	REQ004:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ005:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ006:7E0 03 22 02 A2 00 00 00 00          $
	$	REQ007:7E0 03 22 02 45 00 00 00 00          $
	$	REQ008:7E0 03 22 02 0F 00 00 00 00          $
	$	REQ009:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ010:7E0 03 22 02 20 00 00 00 00          $
	$	REQ011:7E0 03 22 02 3A 00 00 00 00          $
	$	REQ012:7E0 03 22 02 3B 00 00 00 00          $
	$	REQ013:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ014:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ015:7E0 03 22 02 5C 00 00 00 00          $
	$	REQ016:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ017:7E0 03 22 02 62 00 00 00 00          $
	$	REQ018:7E0 03 22 02 63 00 00 00 00          $
	$	REQ019:7E0 03 22 02 10 00 00 00 00          $
	$	REQ020:7E0 03 22 02 36 00 00 00 00          $
	$	REQ021:7E0 03 22 02 7E 00 00 00 00          $
	$	REQ022:7E0 03 22 02 7F 00 00 00 00          $
	$	REQ023:7E0 03 22 03 31 00 00 00 00          $
	$	REQ024:7E0 03 22 03 32 00 00 00 00          $
	$	REQ025:7E0 03 22 03 33 00 00 00 00          $
	$	REQ026:7E0 03 22 03 34 00 00 00 00          $
	$	REQ027:7E0 03 22 02 86 00 00 00 00          $
	$	REQ028:7E0 03 22 02 87 00 00 00 00          $
	$	REQ029:7E0 03 22 02 AA 00 00 00 00          $
	$	REQ030:7E0 03 22 02 AB 00 00 00 00          $
	$	REQ031:7E0 03 22 02 57 00 00 00 00          $
	$	REQ032:7E0 03 22 02 6D 00 00 00 00          $
	$	REQ033:7E0 03 22 02 7D 00 00 00 00          $
	$	REQ034:7E0 03 22 0F 04 00 00 00 00          $
	$	REQ035:7E0 03 22 0F 03 00 00 00 00          $

  $  000.desired indicated engine torque                                                    $    $  N.m         $    $  ANS000.BYTE003  $  XY*0.001525879
  $  001.indicated real engine torque                                                       $    $  N.m         $    $  ANS001.BYTE003  $  XY*0.001525879
  $  002.relative air mass                                                                  $    $  %           $    $  ANS002.BYTE003  $  X*0.390625
  $  003.engine speed                                                                       $    $  rpm         $    $  ANS003.BYTE003  $  XY*0.25
  $  004.vehicle speed                                                                      $    $  Km/h        $    $  ANS004.BYTE003  $  XY*0.0078125
  $  005.effective steady-state idle speed                                                  $    $  rpm         $    $  ANS005.BYTE003  $  X*10
  $  006.Actual intake manifold pressure sensor voltage                                     $    $  hPa         $    $  ANS006.BYTE003  $  XY*0.0390625
  $  007.intake manifold pressure (absolute)                                                $    $  hPa         $    $  ANS007.BYTE003  $  XY*0.0390625
  $  008.pressure upstream throttle valve                                                   $    $  hPa         $    $  ANS008.BYTE003  $  XY*0.078125
  $  009.intake air temperature                                                             $    $  °C         $    $  ANS009.BYTE003  $  X*0.75-48
  $  010.Air mass flow                                                                      $    $  Kg/h        $    $  ANS010.BYTE003  $  X*4
  $  011.throttle blade position dependent on poti 1                                        $    $  %           $    $  ANS011.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  012.throttle blade position dependent on poti 2                                        $    $  %           $    $  ANS012.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  013.throttle angle with respect to lower mechanical stop                               $    $  %           $    $  ANS013.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  014.sensor voltage from throttle potentiometer 1                                       $    $  V           $    $  ANS014.BYTE003  $  XY*0.001220703
  $  015.sensor voltage from throttle potentiometer 2                                       $    $  V           $    $  ANS015.BYTE003  $  XY*0.001220703
  $  016.Sum of the PID-components (Throttle actuator Control PWM)                          $    $  %           $    $  ANS016.BYTE003  $  XY*0.001525879
  $  017.Voltage PWG potentiometer 1                                                        $    $  V           $    $  ANS017.BYTE003  $  XY*0.004882813
  $  018.Voltage PWG potentiometer 2                                                        $    $  V           $    $  ANS018.BYTE003  $  XY*0.004882813
  $  019.normalized angle acceleration pedal                                                $    $  %           $    $  ANS019.BYTE003  $  XY*0.001525879
  $  020.real ignition angle                                                                $    $  Grad Kw     $    $  ANS020.BYTE003  $  [00-7F]:X*0.75+0		[80-FF]:(X-255)*0.75+0
  $  021.basic ignition angle                                                               $    $  Grad Kw     $    $  ANS021.BYTE003  $  X*0.75
  $  022.fault counter, summary, counts emission relevant misfirings of all cylinders       $    $  time        $    $  ANS022.BYTE003  $  XY
  $  023.number of misfire: cylinder#1                                                      $    $  time        $    $  ANS023.BYTE003  $  XY
  $  024.number of misfire: cylinder#2                                                      $    $  time        $    $  ANS024.BYTE003  $  XY
  $  025.number of misfire: cylinder#3                                                      $    $  time        $    $  ANS025.BYTE003  $  XY
  $  026.number of misfire: cylinder#4                                                      $    $  time        $    $  ANS026.BYTE003  $  XY
  $  027.area of misfirings, minimum load                                                   $    $  %           $    $  ANS027.BYTE003  $  X*0.390625
  $  028.area of misfirings, maximum load                                                   $    $  %           $    $  ANS028.BYTE003  $  X*0.390625
  $  029.O2 sensor voltage bank1, sensor 1                                                  $    $  V           $    $  ANS029.BYTE003  $  XY*0.004882813
  $  030.O2 sensor voltage bank1, sensor 2                                                  $    $  V           $    $  ANS030.BYTE003  $  XY*0.004882813
  $  031.lambda controller output                                                           $    $  -           $    $  ANS031.BYTE003  $  XY*0.000030518
  $  032.injection time                                                                     $    $  ms          $    $  ANS032.BYTE003  $  XY*0.001
  $  033.standardized mass flow from canister purge control                                 $    $  kg/h        $    $  ANS033.BYTE003  $  XY*0.000390625
  $  034.Downstream O2 heater status                                                        $    $  -           $    $  ANS034.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  035.Upstream O2 heater status                                                          $    $  -           $    $  ANS035.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;

 $ 07.Ignition data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 0D 05 00 00 00 00          $
	$	REQ003:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ004:7E0 03 22 02 04 00 00 00 00          $
	$	REQ005:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ006:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ007:7E0 03 22 02 3A 00 00 00 00          $
	$	REQ008:7E0 03 22 02 3B 00 00 00 00          $
	$	REQ009:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ010:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ011:7E0 03 22 02 5C 00 00 00 00          $
	$	REQ012:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ013:7E0 03 22 02 62 00 00 00 00          $
	$	REQ014:7E0 03 22 02 63 00 00 00 00          $
	$	REQ015:7E0 03 22 02 10 00 00 00 00          $
	$	REQ016:7E0 03 22 02 36 00 00 00 00          $
	$	REQ017:7E0 03 22 02 7E 00 00 00 00          $
	$	REQ018:7E0 03 22 03 21 00 00 00 00          $
	$	REQ019:7E0 03 22 03 22 00 00 00 00          $
	$	REQ020:7E0 03 22 03 23 00 00 00 00          $
	$	REQ021:7E0 03 22 03 24 00 00 00 00          $
	$	REQ022:7E0 03 22 02 7F 00 00 00 00          $
	$	REQ023:7E0 03 22 03 31 00 00 00 00          $
	$	REQ024:7E0 03 22 03 32 00 00 00 00          $
	$	REQ025:7E0 03 22 03 33 00 00 00 00          $
	$	REQ026:7E0 03 22 03 34 00 00 00 00          $
	$	REQ027:7E0 03 22 02 86 00 00 00 00          $
	$	REQ028:7E0 03 22 02 87 00 00 00 00          $
	$	REQ029:7E0 03 22 02 6D 00 00 00 00          $

  $  000.maximum attainable indicated torque                                                $    $  N.m         $    $  ANS000.BYTE003  $  XY*0.001525879
  $  001.desired indicated engine torque                                                    $    $  N.m         $    $  ANS001.BYTE003  $  XY*0.001525879
  $  002.indicated real engine torque                                                       $    $  N.m         $    $  ANS002.BYTE003  $  XY*0.001525879
  $  003.relative air mass                                                                  $    $  %           $    $  ANS003.BYTE003  $  X*0.390625
  $  004.engine speed                                                                       $    $  rpm         $    $  ANS004.BYTE003  $  XY*0.25
  $  005.vehicle speed                                                                      $    $  Km/h        $    $  ANS005.BYTE003  $  XY*0.0078125
  $  006.effective steady-state idle speed                                                  $    $  rpm         $    $  ANS006.BYTE003  $  X*10
  $  007.throttle blade position dependent on poti 1                                        $    $  %           $    $  ANS007.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  008.throttle blade position dependent on poti 2                                        $    $  %           $    $  ANS008.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  009.throttle angle with respect to lower mechanical stop                               $    $  %           $    $  ANS009.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  010.sensor voltage from throttle potentiometer 1                                       $    $  V           $    $  ANS010.BYTE003  $  XY*0.001220703
  $  011.sensor voltage from throttle potentiometer 2                                       $    $  V           $    $  ANS011.BYTE003  $  XY*0.001220703
  $  012.Sum of the PID-components (Throttle actuator Control PWM)                          $    $  %           $    $  ANS012.BYTE003  $  XY*0.001525879
  $  013.Voltage PWG potentiometer 1                                                        $    $  V           $    $  ANS013.BYTE003  $  XY*0.004882813
  $  014.Voltage PWG potentiometer 2                                                        $    $  V           $    $  ANS014.BYTE003  $  XY*0.004882813
  $  015.normalized angle acceleration pedal                                                $    $  %           $    $  ANS015.BYTE003  $  XY*0.001525879
  $  016.real ignition angle                                                                $    $  Grad Kw     $    $  ANS016.BYTE003  $  [00-7F]:X*0.75+0		[80-FF]:(X-255)*0.75+0
  $  017.basic ignition angle                                                               $    $  Grad Kw     $    $  ANS017.BYTE003  $  X*0.75
  $  018.reference level knock control, 16bit, Cylinder #1                                  $    $  V           $    $  ANS018.BYTE003  $  XY*0.00007694
  $  019.reference level knock control, 16bit, Cylinder #2                                  $    $  V           $    $  ANS019.BYTE003  $  XY*0.00007694
  $  020.reference level knock control, 16bit, Cylinder #3                                  $    $  V           $    $  ANS020.BYTE003  $  XY*0.00007694
  $  021.reference level knock control, 16bit, Cylinder #4                                  $    $  V           $    $  ANS021.BYTE003  $  XY*0.00007694
  $  022.fault counter, summary, counts emission relevant misfirings of all cylinders       $    $  time        $    $  ANS022.BYTE003  $  XY
  $  023.number of misfire: cylinder#1                                                      $    $  time        $    $  ANS023.BYTE003  $  XY
  $  024.number of misfire: cylinder#2                                                      $    $  time        $    $  ANS024.BYTE003  $  XY
  $  025.number of misfire: cylinder#3                                                      $    $  time        $    $  ANS025.BYTE003  $  XY
  $  026.number of misfire: cylinder#4                                                      $    $  time        $    $  ANS026.BYTE003  $  XY
  $  027.area of misfirings, minimum load                                                   $    $  %           $    $  ANS027.BYTE003  $  X*0.390625
  $  028.area of misfirings, maximum load                                                   $    $  %           $    $  ANS028.BYTE003  $  X*0.390625
  $  029.injection time                                                                     $    $  ms          $    $  ANS029.BYTE003  $  XY*0.001

 $ 08.Air intake data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 0D 05 00 00 00 00          $
	$	REQ003:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ004:7E0 03 22 02 04 00 00 00 00          $
	$	REQ005:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ006:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ007:7E0 03 22 02 09 00 00 00 00          $
	$	REQ008:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ009:7E0 03 22 02 A2 00 00 00 00          $
	$	REQ010:7E0 03 22 02 45 00 00 00 00          $
	$	REQ011:7E0 03 22 02 0F 00 00 00 00          $
	$	REQ012:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ013:7E0 03 22 02 20 00 00 00 00          $
	$	REQ014:7E0 03 22 02 3A 00 00 00 00          $
	$	REQ015:7E0 03 22 02 3B 00 00 00 00          $
	$	REQ016:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ017:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ018:7E0 03 22 02 5C 00 00 00 00          $
	$	REQ019:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ020:7E0 03 22 02 62 00 00 00 00          $
	$	REQ021:7E0 03 22 02 63 00 00 00 00          $
	$	REQ022:7E0 03 22 02 10 00 00 00 00          $
	$	REQ023:7E0 03 22 02 AA 00 00 00 00          $
	$	REQ024:7E0 03 22 02 AB 00 00 00 00          $
	$	REQ025:7E0 03 22 02 57 00 00 00 00          $
	$	REQ026:7E0 03 22 02 7D 00 00 00 00          $

  $  000.maximum attainable indicated torque                             $    $  N.m      $    $  ANS000.BYTE003  $  XY*0.001525879
  $  001.desired indicated engine torque                                 $    $  N.m      $    $  ANS001.BYTE003  $  XY*0.001525879
  $  002.indicated real engine torque                                    $    $  N.m      $    $  ANS002.BYTE003  $  XY*0.001525879
  $  003.relative air mass                                               $    $  %        $    $  ANS003.BYTE003  $  X*0.390625
  $  004.engine speed                                                    $    $  rpm      $    $  ANS004.BYTE003  $  XY*0.25
  $  005.vehicle speed                                                   $    $  Km/h     $    $  ANS005.BYTE003  $  XY*0.0078125
  $  006.effective steady-state idle speed                               $    $  rpm      $    $  ANS006.BYTE003  $  X*10
  $  007.ambient pressure                                                $    $  hPa      $    $  ANS007.BYTE003  $  XY*0.0390625
  $  008.ambient air temperature                                         $    $  °C      $    $  ANS008.BYTE003  $  X*0.75-48
  $  009.Actual intake manifold pressure sensor voltage                  $    $  hPa      $    $  ANS009.BYTE003  $  XY*0.0390625
  $  010.intake manifold pressure (absolute)                             $    $  hPa      $    $  ANS010.BYTE003  $  XY*0.0390625
  $  011.pressure upstream throttle valve                                $    $  hPa      $    $  ANS011.BYTE003  $  XY*0.078125
  $  012.intake air temperature                                          $    $  °C      $    $  ANS012.BYTE003  $  X*0.75-48
  $  013.Air mass flow                                                   $    $  Kg/h     $    $  ANS013.BYTE003  $  X*4
  $  014.throttle blade position dependent on poti 1                     $    $  %        $    $  ANS014.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  015.throttle blade position dependent on poti 2                     $    $  %        $    $  ANS015.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  016.throttle angle with respect to lower mechanical stop            $    $  %        $    $  ANS016.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  017.sensor voltage from throttle potentiometer 1                    $    $  V        $    $  ANS017.BYTE003  $  XY*0.001220703
  $  018.sensor voltage from throttle potentiometer 2                    $    $  V        $    $  ANS018.BYTE003  $  XY*0.001220703
  $  019.Sum of the PID-components (Throttle actuator Control PWM)       $    $  %        $    $  ANS019.BYTE003  $  XY*0.001525879
  $  020.Voltage PWG potentiometer 1                                     $    $  V        $    $  ANS020.BYTE003  $  XY*0.004882813
  $  021.Voltage PWG potentiometer 2                                     $    $  V        $    $  ANS021.BYTE003  $  XY*0.004882813
  $  022.normalized angle acceleration pedal                             $    $  %        $    $  ANS022.BYTE003  $  XY*0.001525879
  $  023.O2 sensor voltage bank1, sensor 1                               $    $  V        $    $  ANS023.BYTE003  $  XY*0.004882813
  $  024.O2 sensor voltage bank1, sensor 2                               $    $  V        $    $  ANS024.BYTE003  $  XY*0.004882813
  $  025.lambda controller output                                        $    $  -        $    $  ANS025.BYTE003  $  XY*0.000030518
  $  026.standardized mass flow from canister purge control              $    $  kg/h     $    $  ANS026.BYTE003  $  XY*0.000390625

 $ 09.The instrument shows data

	$	REQ000:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ001:7E0 03 22 02 03 00 00 00 00          $
	$	REQ002:7E0 03 22 02 7C 00 00 00 00          $
	$	REQ003:7E0 03 22 02 04 00 00 00 00          $
	$	REQ004:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ005:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ006:7E0 03 22 0D 06 00 00 00 00          $
	$	REQ007:7E0 03 22 02 7B 00 00 00 00          $
	$	REQ008:7E0 03 22 0D 00 00 00 00 00          $
	$	REQ009:7E0 03 22 02 05 00 00 00 00          $
	$	REQ010:7E0 03 22 02 06 00 00 00 00          $

  $  000.relative air mass                                           $    $  %        $    $  ANS000.BYTE003  $  X*0.390625
  $  001.engine temperature                                          $    $  °C      $    $  ANS001.BYTE003  $  X*0.75-48
  $  002.engine temperature at start                                 $    $  °C      $    $  ANS002.BYTE003  $  X*0.75-48
  $  003.engine speed                                                $    $  rpm      $    $  ANS003.BYTE003  $  XY*0.25
  $  004.vehicle speed                                               $    $  Km/h     $    $  ANS004.BYTE003  $  XY*0.0078125
  $  005.effective steady-state idle speed                           $    $  rpm      $    $  ANS005.BYTE003  $  X*10
  $  006.Drivingdistance since prime start                           $    $  Km       $    $  ANS006.BYTE003  $  X1X2X3X4
  $  007.counter for distance travelled while MIL is activated       $    $  Km       $    $  ANS007.BYTE003  $  XY
  $  008.battery voltage                                             $    $  V        $    $  ANS008.BYTE003  $  XY*0.000390625
  $  009.time counter at end of start                                $    $  s        $    $  ANS009.BYTE003  $  XY*0.1
  $  010.fuel level                                                  $    $  L        $    $  ANS010.BYTE003  $  XY*0.1

 $ 10.The fire data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 0D 05 00 00 00 00          $
	$	REQ003:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ004:7E0 03 22 02 04 00 00 00 00          $
	$	REQ005:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ006:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ007:7E0 03 22 02 3A 00 00 00 00          $
	$	REQ008:7E0 03 22 02 3B 00 00 00 00          $
	$	REQ009:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ010:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ011:7E0 03 22 02 5C 00 00 00 00          $
	$	REQ012:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ013:7E0 03 22 02 62 00 00 00 00          $
	$	REQ014:7E0 03 22 02 63 00 00 00 00          $
	$	REQ015:7E0 03 22 02 10 00 00 00 00          $
	$	REQ016:7E0 03 22 02 36 00 00 00 00          $
	$	REQ017:7E0 03 22 02 7E 00 00 00 00          $
	$	REQ018:7E0 03 22 02 7F 00 00 00 00          $
	$	REQ019:7E0 03 22 03 31 00 00 00 00          $
	$	REQ020:7E0 03 22 03 32 00 00 00 00          $
	$	REQ021:7E0 03 22 03 33 00 00 00 00          $
	$	REQ022:7E0 03 22 03 34 00 00 00 00          $
	$	REQ023:7E0 03 22 02 86 00 00 00 00          $
	$	REQ024:7E0 03 22 02 87 00 00 00 00          $
	$	REQ025:7E0 03 22 02 6D 00 00 00 00          $
	$	REQ026:7E0 03 22 02 7D 00 00 00 00          $

  $  000.maximum attainable indicated torque                                                $    $  N.m         $    $  ANS000.BYTE003  $  XY*0.001525879
  $  001.desired indicated engine torque                                                    $    $  N.m         $    $  ANS001.BYTE003  $  XY*0.001525879
  $  002.indicated real engine torque                                                       $    $  N.m         $    $  ANS002.BYTE003  $  XY*0.001525879
  $  003.relative air mass                                                                  $    $  %           $    $  ANS003.BYTE003  $  X*0.390625
  $  004.engine speed                                                                       $    $  rpm         $    $  ANS004.BYTE003  $  XY*0.25
  $  005.vehicle speed                                                                      $    $  Km/h        $    $  ANS005.BYTE003  $  XY*0.0078125
  $  006.effective steady-state idle speed                                                  $    $  rpm         $    $  ANS006.BYTE003  $  X*10
  $  007.throttle blade position dependent on poti 1                                        $    $  %           $    $  ANS007.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  008.throttle blade position dependent on poti 2                                        $    $  %           $    $  ANS008.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  009.throttle angle with respect to lower mechanical stop                               $    $  %           $    $  ANS009.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  010.sensor voltage from throttle potentiometer 1                                       $    $  V           $    $  ANS010.BYTE003  $  XY*0.001220703
  $  011.sensor voltage from throttle potentiometer 2                                       $    $  V           $    $  ANS011.BYTE003  $  XY*0.001220703
  $  012.Sum of the PID-components (Throttle actuator Control PWM)                          $    $  %           $    $  ANS012.BYTE003  $  XY*0.001525879
  $  013.Voltage PWG potentiometer 1                                                        $    $  V           $    $  ANS013.BYTE003  $  XY*0.004882813
  $  014.Voltage PWG potentiometer 2                                                        $    $  V           $    $  ANS014.BYTE003  $  XY*0.004882813
  $  015.normalized angle acceleration pedal                                                $    $  %           $    $  ANS015.BYTE003  $  XY*0.001525879
  $  016.real ignition angle                                                                $    $  Grad Kw     $    $  ANS016.BYTE003  $  [00-7F]:X*0.75+0		[80-FF]:(X-255)*0.75+0
  $  017.basic ignition angle                                                               $    $  Grad Kw     $    $  ANS017.BYTE003  $  X*0.75
  $  018.fault counter, summary, counts emission relevant misfirings of all cylinders       $    $  time        $    $  ANS018.BYTE003  $  XY
  $  019.number of misfire: cylinder#1                                                      $    $  time        $    $  ANS019.BYTE003  $  XY
  $  020.number of misfire: cylinder#2                                                      $    $  time        $    $  ANS020.BYTE003  $  XY
  $  021.number of misfire: cylinder#3                                                      $    $  time        $    $  ANS021.BYTE003  $  XY
  $  022.number of misfire: cylinder#4                                                      $    $  time        $    $  ANS022.BYTE003  $  XY
  $  023.area of misfirings, minimum load                                                   $    $  %           $    $  ANS023.BYTE003  $  X*0.390625
  $  024.area of misfirings, maximum load                                                   $    $  %           $    $  ANS024.BYTE003  $  X*0.390625
  $  025.injection time                                                                     $    $  ms          $    $  ANS025.BYTE003  $  XY*0.001
  $  026.standardized mass flow from canister purge control                                 $    $  kg/h        $    $  ANS026.BYTE003  $  XY*0.000390625

 $ 11.Throttle data

	$	REQ000:7E0 03 22 02 00 00 00 00 00          $
	$	REQ001:7E0 03 22 02 01 00 00 00 00          $
	$	REQ002:7E0 03 22 0D 05 00 00 00 00          $
	$	REQ003:7E0 03 22 02 1E 00 00 00 00          $
	$	REQ004:7E0 03 22 02 04 00 00 00 00          $
	$	REQ005:7E0 03 22 0D 01 00 00 00 00          $
	$	REQ006:7E0 03 22 02 6E 00 00 00 00          $
	$	REQ007:7E0 03 22 02 09 00 00 00 00          $
	$	REQ008:7E0 03 22 02 0E 00 00 00 00          $
	$	REQ009:7E0 03 22 02 A2 00 00 00 00          $
	$	REQ010:7E0 03 22 02 45 00 00 00 00          $
	$	REQ011:7E0 03 22 02 0F 00 00 00 00          $
	$	REQ012:7E0 03 22 02 0D 00 00 00 00          $
	$	REQ013:7E0 03 22 02 20 00 00 00 00          $
	$	REQ014:7E0 03 22 02 3A 00 00 00 00          $
	$	REQ015:7E0 03 22 02 3B 00 00 00 00          $
	$	REQ016:7E0 03 22 02 0B 00 00 00 00          $
	$	REQ017:7E0 03 22 02 5B 00 00 00 00          $
	$	REQ018:7E0 03 22 02 5C 00 00 00 00          $
	$	REQ019:7E0 03 22 02 3C 00 00 00 00          $
	$	REQ020:7E0 03 22 02 62 00 00 00 00          $
	$	REQ021:7E0 03 22 02 63 00 00 00 00          $
	$	REQ022:7E0 03 22 02 10 00 00 00 00          $

  $  000.maximum attainable indicated torque                             $    $  N.m      $    $  ANS000.BYTE003  $  XY*0.001525879
  $  001.desired indicated engine torque                                 $    $  N.m      $    $  ANS001.BYTE003  $  XY*0.001525879
  $  002.indicated real engine torque                                    $    $  N.m      $    $  ANS002.BYTE003  $  XY*0.001525879
  $  003.relative air mass                                               $    $  %        $    $  ANS003.BYTE003  $  X*0.390625
  $  004.engine speed                                                    $    $  rpm      $    $  ANS004.BYTE003  $  XY*0.25
  $  005.vehicle speed                                                   $    $  Km/h     $    $  ANS005.BYTE003  $  XY*0.0078125
  $  006.effective steady-state idle speed                               $    $  rpm      $    $  ANS006.BYTE003  $  X*10
  $  007.ambient pressure                                                $    $  hPa      $    $  ANS007.BYTE003  $  XY*0.0390625
  $  008.ambient air temperature                                         $    $  °C      $    $  ANS008.BYTE003  $  X*0.75-48
  $  009.Actual intake manifold pressure sensor voltage                  $    $  hPa      $    $  ANS009.BYTE003  $  XY*0.0390625
  $  010.intake manifold pressure (absolute)                             $    $  hPa      $    $  ANS010.BYTE003  $  XY*0.0390625
  $  011.pressure upstream throttle valve                                $    $  hPa      $    $  ANS011.BYTE003  $  XY*0.078125
  $  012.intake air temperature                                          $    $  °C      $    $  ANS012.BYTE003  $  X*0.75-48
  $  013.Air mass flow                                                   $    $  Kg/h     $    $  ANS013.BYTE003  $  X*4
  $  014.throttle blade position dependent on poti 1                     $    $  %        $    $  ANS014.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  015.throttle blade position dependent on poti 2                     $    $  %        $    $  ANS015.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  016.throttle angle with respect to lower mechanical stop            $    $  %        $    $  ANS016.BYTE003  $  [0000-7FFF]:XY*0.024414063+0		[8000-FFFF]:(XY-65535)*0.024414063+0
  $  017.sensor voltage from throttle potentiometer 1                    $    $  V        $    $  ANS017.BYTE003  $  XY*0.001220703
  $  018.sensor voltage from throttle potentiometer 2                    $    $  V        $    $  ANS018.BYTE003  $  XY*0.001220703
  $  019.Sum of the PID-components (Throttle actuator Control PWM)       $    $  %        $    $  ANS019.BYTE003  $  XY*0.001525879
  $  020.Voltage PWG potentiometer 1                                     $    $  V        $    $  ANS020.BYTE003  $  XY*0.004882813
  $  021.Voltage PWG potentiometer 2                                     $    $  V        $    $  ANS021.BYTE003  $  XY*0.004882813
  $  022.normalized angle acceleration pedal                             $    $  %        $    $  ANS022.BYTE003  $  XY*0.001525879


