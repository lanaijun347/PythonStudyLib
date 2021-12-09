$~#6$~#14$~500$~7E9
;******************************************************************************************************************************************************

车型代号:CN202SR
车型:HECTOR
排量:N15T
年份:2019
模块名缩写:DCT
模块名:变速器控制系统
供应商:上汽齿
诊断代码:CN202SR_IN_2019_TCM(DCT)_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:7E1 02 10 01 00 00 00 00 00          $~          7E9 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:7E1 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:7E1 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:7E1 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/HECTORDTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:7E1 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:7E1 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:7E1 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:7E1 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:7E1 03 22 F1 CB 00 00 00 00          $%
	$%	REQ003:7E1 03 22 F1 93 00 00 00 00          $%
	$%	REQ004:7E1 03 22 F1 95 00 00 00 00          $%
	$%	REQ005:7E1 03 22 F1 C6 00 00 00 00          $%
	$%	REQ006:7E1 03 22 1D 00 00 00 00 00          $%

  $%  000:ECUManufacturingDate                       $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN                                        $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:EndModelPartNumber                         $%    $%  ANS002.BYTE003  $%  X1X2X3X4
  $%  003:Supplier ECU Hardware Version Numbe        $%    $%  ANS003.BYTE003  $%  10个字节的ASCII显示
  $%  004:Supplier ECU Software Version Number       $%    $%  ANS004.BYTE003  $%  02个字节的HEX显示
  $%  005:Supplier ECU Calibration Data Number       $%    $%  ANS005.BYTE003  $%  04个字节的HEX显示
  $%  006:EE_SubROM_Version/Subrom                   $%    $%  ANS006.BYTE003  $%  04个字节的HEX显示

;******************************************************************************************************************************************************
数据流

   00.Data flow

	$	REQ000:7E1 03 22 10 01 00 00 00 00          $
	$	REQ001:7E1 03 22 10 03 00 00 00 00          $
	$	REQ002:7E1 03 22 10 05 00 00 00 00          $
	$	REQ003:7E1 03 22 10 07 00 00 00 00          $
	$	REQ004:7E1 03 22 10 08 00 00 00 00          $
	$	REQ005:7E1 03 22 10 09 00 00 00 00          $
	$	REQ006:7E1 03 22 10 10 00 00 00 00          $
	$	REQ007:7E1 03 22 10 11 00 00 00 00          $
	$	REQ008:7E1 03 22 10 12 00 00 00 00          $
	$	REQ009:7E1 03 22 10 13 00 00 00 00          $
	$	REQ010:7E1 03 22 10 14 00 00 00 00          $
	$	REQ011:7E1 03 22 10 15 00 00 00 00          $
	$	REQ012:7E1 03 22 10 16 00 00 00 00          $
	$	REQ013:7E1 03 22 10 17 00 00 00 00          $
	$	REQ014:7E1 03 22 10 18 00 00 00 00          $
	$	REQ015:7E1 03 22 10 19 00 00 00 00          $
	$	REQ016:7E1 03 22 10 20 00 00 00 00          $
	$	REQ017:7E1 03 22 10 21 00 00 00 00          $
	$	REQ018:7E1 03 22 10 22 00 00 00 00          $
	$	REQ019:7E1 03 22 10 23 00 00 00 00          $
	$	REQ020:7E1 03 22 10 24 00 00 00 00          $
	$	REQ021:7E1 03 22 10 25 00 00 00 00          $
	$	REQ022:7E1 03 22 10 26 00 00 00 00          $
	$	REQ023:7E1 03 22 10 27 00 00 00 00          $
	$	REQ024:7E1 03 22 10 28 00 00 00 00          $
	$	REQ025:7E1 03 22 10 29 00 00 00 00          $
	$	REQ026:7E1 03 22 10 30 00 00 00 00          $
	$	REQ027:7E1 03 22 10 33 00 00 00 00          $
	$	REQ028:7E1 03 22 10 34 00 00 00 00          $
	$	REQ029:7E1 03 22 10 35 00 00 00 00          $
	$	REQ030:7E1 03 22 10 39 00 00 00 00          $
	$	REQ031:7E1 03 22 10 40 00 00 00 00          $
	$	REQ032:7E1 03 22 10 41 00 00 00 00          $
	$	REQ033:7E1 03 22 10 42 00 00 00 00          $
	$	REQ034:7E1 03 22 10 44 00 00 00 00          $
	$	REQ035:7E1 03 22 10 45 00 00 00 00          $
	$	REQ036:7E1 03 22 10 46 00 00 00 00          $
	$	REQ037:7E1 03 22 10 47 00 00 00 00          $
	$	REQ038:7E1 03 22 10 48 00 00 00 00          $
	$	REQ039:7E1 03 22 10 49 00 00 00 00          $
	$	REQ040:7E1 03 22 10 51 00 00 00 00          $
	$	REQ041:7E1 03 22 10 52 00 00 00 00          $
	$	REQ042:7E1 03 22 10 53 00 00 00 00          $
	$	REQ043:7E1 03 22 10 54 00 00 00 00          $
	$	REQ044:7E1 03 22 10 55 00 00 00 00          $
	$	REQ045:7E1 03 22 10 56 00 00 00 00          $
	$	REQ046:7E1 03 22 10 57 00 00 00 00          $
	$	REQ047:7E1 03 22 10 58 00 00 00 00          $
	$	REQ048:7E1 03 22 10 59 00 00 00 00          $
	$	REQ049:7E1 03 22 10 60 00 00 00 00          $
	$	REQ050:7E1 03 22 10 61 00 00 00 00          $
	$	REQ051:7E1 03 22 10 70 00 00 00 00          $
	$	REQ052:7E1 03 22 10 71 00 00 00 00          $
	$	REQ053:7E1 03 22 10 72 00 00 00 00          $
	$	REQ054:7E1 03 22 10 73 00 00 00 00          $
	$	REQ055:7E1 03 22 10 74 00 00 00 00          $
	$	REQ056:7E1 03 22 10 75 00 00 00 00          $
	$	REQ057:7E1 03 22 10 76 00 00 00 00          $
	$	REQ058:7E1 03 22 10 77 00 00 00 00          $
	$	REQ059:7E1 03 22 10 78 00 00 00 00          $
	$	REQ060:7E1 03 22 10 79 00 00 00 00          $
	$	REQ061:7E1 03 22 10 80 00 00 00 00          $
	$	REQ062:7E1 03 22 10 81 00 00 00 00          $

  $  000.Crank shaft speed sensor (Engine speed)                          $    $  rpm       $    $  ANS000.BYTE003  $  XY
  $  001.Odd shaft speed sensor value                                     $    $  rpm       $    $  ANS001.BYTE003  $  X*32
  $  002.Even shaft speed sensor value                                    $    $  rpm       $    $  ANS002.BYTE003  $  X*32
  $  003.Output shaft speed sensor value                                  $    $  rpm       $    $  ANS003.BYTE003  $  X*32
  $  004.Odd clutch pressure sensor value                                 $    $  bar       $    $  ANS004.BYTE003  $  X*0.125
  $  005.Even shaft pressure sensor value                                 $    $  bar       $    $  ANS005.BYTE003  $  X*0.125
  $  006.Shiftfork 1/3 position sensor value                              $    $  %         $    $  ANS006.BYTE003  $  XY*0.01
  $  007.Shiftfork 2/4 position sensor value                              $    $  %         $    $  ANS007.BYTE003  $  XY*0.01
  $  008.Shiftfork 5/N position sensor value                              $    $  %         $    $  ANS008.BYTE003  $  XY*0.01
  $  009.Shiftfork 6/R position sensor value                              $    $  %         $    $  ANS009.BYTE003  $  XY*0.01
  $  010.Clutch temperature sensor value                                  $    $  °C       $    $  ANS010.BYTE003  $  X*1-40
  $  011.Valvebody temperature sensor value                               $    $  °C       $    $  ANS011.BYTE003  $  X*1-40
  $  012.Solenoid Oil temperature sensor value                            $    $  °C       $    $  ANS012.BYTE003  $  X*1-40
  $  013.Current value of the odd gearshifter solenoid                    $    $  A         $    $  ANS013.BYTE003  $  XY*0.0001
  $  014.Current value of the even gearshifter solenoid                   $    $  A         $    $  ANS014.BYTE003  $  XY*0.0001
  $  015.Current value of the mainline pressure solenoid                  $    $  A         $    $  ANS015.BYTE003  $  XY*0.0001
  $  016.Current value of the lube pressure solenoid                      $    $  A         $    $  ANS016.BYTE003  $  XY*0.0001
  $  017.Current value of the odd clutch solenoid                         $    $  A         $    $  ANS017.BYTE003  $  XY*0.0001
  $  018.Current value of the even clutch solenoid                        $    $  A         $    $  ANS018.BYTE003  $  XY*0.0001
  $  019.Requested Solenoid state of Multiplexer1                         $    $  -         $    $  ANS019.BYTE003  $  00:Off		01:On		其他:-
  $  020.Requested Solenoid state of Multiplexer2                         $    $  -         $    $  ANS020.BYTE003  $  00:Off		01:On		其他:-
  $  021.State torque clutch 1                                            $    $  -         $    $  ANS021.BYTE003  $  00:Default		01: Stable control		02: Offgoing clutch torque transfer		03: Clutch open		04: Oncoming clutch toruqe transfer		05: reserved		06: Offgoing clutch speed control		07: Prefill		08: Oncoming clutch speed control		09: Offgoing clutch speed control		0A: Oncomi		其他:-
  $  022.State torque clutch 2                                            $    $  -         $    $  ANS022.BYTE003  $  00:Default		01: Stable control		02: Offgoing clutch torque transfer		03: Clutch open		04: Oncoming clutch toruqe transfer		05: reserved		06: Offgoing clutch speed control		07: Prefill		08: Oncoming clutch speed control		09: Offgoing clutch speed control		0A: Oncoming clutch 		其他:-
  $  023.The synchronized gear at odd shaft                               $    $  -         $    $  ANS023.BYTE003  $  00: neutral		01: 1st gear		02: 2nd gear		03: 3rd gear		04: 4th gear		05: 5th gear		06: 6th gear		07: reserved		08: Reverse		其他:-
  $  024.The synchronized gear at even shaft                              $    $  -         $    $  ANS024.BYTE003  $  00: neutral		01: 1st gear		02: 2nd gear		03: 3rd gear		04: 4th gear		05: 5th gear		06: 6th gear		07: reserved		08: Reverse		其他:-
  $  025.The gear needed to be synchronised                               $    $  -         $    $  ANS025.BYTE003  $  00: neutral		01: 1st gear		02: 2nd gear		03: 3rd gear		04: 4th gear		05: 5th gear		06: 6th gear		07: reserved		08: Reverse		其他:-
  $  026.The gear needed to be desynchronised                             $    $  -         $    $  ANS026.BYTE003  $  00: neutral		01: 1st gear		02: 2nd gear		03: 3rd gear		04: 4th gear		05: 5th gear		06: 6th gear		07: reserved		08: Reverse		其他:-
  $  027.Engine status                                                    $    $  -         $    $  ANS027.BYTE003  $  00:Silent		01:Cranking		02:Running		03:Suspending		其他:-
  $  028.Brake System Transmission Gear Request                           $    $  -         $    $  ANS028.BYTE003  $  00:No Action		01: Unused andReserved		02: Unused andReserved		03:Hold Gear		其他:-
  $  029.Shift lever lock status                                          $    $  -         $    $  ANS029.BYTE003  $  00:unlocked		01:locked		03:fault		其他:-
  $  030.Engine Non-Transmission Regulated Steady Stat Torque             $    $  Nm        $    $  ANS030.BYTE003  $  XY*0.5-848
  $  031.Engine Driver Request Torque                                     $    $  Nm        $    $  ANS031.BYTE003  $  XY*0.5-848
  $  032.Engine Mechanical Loss Torque                                    $    $  Nm        $    $  ANS032.BYTE003  $  XY*0.5-848
  $  033.Engine speed                                                     $    $  rpm       $    $  ANS033.BYTE003  $  XY*0.25
  $  034.Transmission Vehicle Speed Average Driven                        $    $  kph       $    $  ANS034.BYTE003  $  XY*0.015625
  $  035.Electric Park Brake Status                                       $    $  -         $    $  ANS035.BYTE003  $  00:Unknown		01:Released		02:Locked		03: Releasing		04:Locking		05: Unused andReserved		06: Unused andReserved		07: Unused andReserved		其他:-
  $  036.Vehicle Odometer                                                 $    $  km        $    $  ANS036.BYTE003  $  X1X2X3X4*0.015625
  $  037.Ignition Key Position                                            $    $  -         $    $  ANS037.BYTE003  $  00: OFF		01: ACC		02: ON		03: START		其他:-
  $  038.Accelerator pedal position                                       $    $  %         $    $  ANS038.BYTE003  $  X*0.392157
  $  039.Shifter position                                                 $    $  -         $    $  ANS039.BYTE003  $  00:error		01:S(Sport mode)		02:Unused and Reserved		03:M(Manual mode)		05:D (Drive)		06:N (Neutral)		07:R (Reverse)		08:P (Park)		09:upshift of one gear in M-mode		0A:downshift of one gear in M-mode		其他:-
  $  040.Vehicle Stability Enhancement Longitudinal Acceleration          $    $  m/s*s     $    $  ANS040.BYTE003  $  [0000-7FFF]:XY*0.015625+0		[8000-FFFF]:(XY-65535)*0.015625+0
  $  041.Brake Pressure                                                   $    $  bar       $    $  ANS041.BYTE003  $  XY*0.1
  $  042.Engine Coolant Temperature                                       $    $  °C       $    $  ANS042.BYTE003  $  X*1-40
  $  043.Battery voltage                                                  $    $  V         $    $  ANS043.BYTE003  $  X*0.25
  $  044.5V sensor supply 1 voltage                                       $    $  V         $    $  ANS044.BYTE003  $  X*0.25
  $  045.5V sensor supply 2 voltage                                       $    $  V         $    $  ANS045.BYTE003  $  X*0.25
  $  046.9V sensor supply 1 voltage                                       $    $  V         $    $  ANS046.BYTE003  $  X*0.25
  $  047.9V sensor supply 2 voltage                                       $    $  V         $    $  ANS047.BYTE003  $  X*0.25
  $  048.Solenoid supply 1 voltage                                        $    $  V         $    $  ANS048.BYTE003  $  X*0.25
  $  049.Solenoid supply 2 voltage                                        $    $  V         $    $  ANS049.BYTE003  $  X*0.25
  $  050.Solenoid supply 3 voltage                                        $    $  V         $    $  ANS050.BYTE003  $  X*0.25
  $  051.Transmission Clutch Status                                       $    $  -         $    $  ANS051.BYTE003  $  00: both clutch open/disengaged		01:both clutch Sliding		02: Unused and Reserved		03: Active closed/Inactive Open		其他:-
  $  052.Automatic Transmission Commanded Gear                            $    $  -         $    $  ANS052.BYTE003  $  00:Not Supported		01:1st gear		02:2nd gear		03:3rd gear		04:4th gear		05:5th gear		06:6th gear		0D:Neutral gear		0E:Reverse gear		0F:Park gear		其他:-
  $  053.Driver Shift Control Target Gear                                 $    $  -         $    $  ANS053.BYTE003  $  00:Not Supported		01:1st gear		02:2nd gear		03:3rd gear		04:4th gear		05:5th gear		06:6th gear		0D:Neutral gear		0E:Reverse gear		0F:Park gear		其他:-
  $  054.Transmission Engine Speed Request Value                          $    $  rpm       $    $  ANS054.BYTE003  $  XY*0.25-848
  $  055.Transmission Engine Speed Idle Request Value                     $    $  rpm       $    $  ANS055.BYTE003  $  XY*0.25
  $  056.Transmission Control Mode                                        $    $  -         $    $  ANS056.BYTE003  $  00:Not indicated		01:Economy		02:Sport		其他:-
  $  057.Transmission Engine Torque Request Value                         $    $  Nm        $    $  ANS057.BYTE003  $  XY*0.5-848
  $  058.Engine Maximum Torque Limit Request Value                        $    $  Nm        $    $  ANS058.BYTE003  $  XY*0.5-848
  $  059.Transmission Gear Indication On                                  $    $  -         $    $  ANS059.BYTE003  $  00:Not Supported		01:1st gear		02:2nd gear		03:3rd gear		04:4th gear		05:5th gear		06:6th gear		0D:Neutral gear		0E:Reverse gear		0F:Park gear		其他:-
  $  060.Transmission Malfunction Indication On                           $    $  -         $    $  ANS060.BYTE003  $  00:No Indication		01:Flash		02: True		其他:-
  $  061.Engine Ambient Pressure                                          $    $  hpa       $    $  ANS061.BYTE003  $  XY*0.08291752
  $  062.Actual torque transferred through the clutch Request Value       $    $  Nm        $    $  ANS062.BYTE003  $  XY*0.5-848


