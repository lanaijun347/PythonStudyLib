$~#6$~#14$~500$~7E9
;******************************************************************************************************************************************************

车型代号:CN202SR
车型:ALMAZ
排量:N15T
年份:2019
模块名缩写:DCT
模块名:变速器控制系统
供应商:上汽齿柳东
诊断代码:CN202SR_2019_TCM(CVT)_CAN

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

		$*$*DTC/CAPTIVADTCS


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
	$%	REQ005:7E1 03 22 F1 8A 00 00 00 00          $%

  $%  000:ECUManufacturingDate                       $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:SGMW VIN                                   $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:EndModelPartNumber(SGMW P/N)               $%    $%  ANS002.BYTE003  $%  X1X2X3X4
  $%  003:Supplier ECU Hardware Version Number       $%    $%  ANS003.BYTE003  $%  08个字节的ASCII显示
  $%  004:Supplier ECU Software Version Number       $%    $%  ANS004.BYTE003  $%  08个字节的ASCII显示
  $%  005:Supplier Identifier Information            $%    $%  ANS005.BYTE003  $%  07个字节的ASCII显示

;******************************************************************************************************************************************************
数据流

   00.Data flow

	$	REQ000:7E1 03 22 10 00 00 00 00 00          $
	$	REQ001:7E1 03 22 10 01 00 00 00 00          $
	$	REQ002:7E1 03 22 10 02 00 00 00 00          $
	$	REQ003:7E1 03 22 10 03 00 00 00 00          $
	$	REQ004:7E1 03 22 10 04 00 00 00 00          $
	$	REQ005:7E1 03 22 10 05 00 00 00 00          $
	$	REQ006:7E1 03 22 10 06 00 00 00 00          $
	$	REQ007:7E1 03 22 10 07 00 00 00 00          $
	$	REQ008:7E1 03 22 10 10 00 00 00 00          $
	$	REQ009:7E1 03 22 10 11 00 00 00 00          $
	$	REQ010:7E1 03 22 10 12 00 00 00 00          $
	$	REQ011:7E1 03 22 10 20 00 00 00 00          $
	$	REQ012:7E1 03 22 10 21 00 00 00 00          $
	$	REQ013:7E1 03 22 10 22 00 00 00 00          $
	$	REQ014:7E1 03 22 10 23 00 00 00 00          $
	$	REQ015:7E1 03 22 10 26 00 00 00 00          $
	$	REQ016:7E1 03 22 10 27 00 00 00 00          $
	$	REQ017:7E1 03 22 10 28 00 00 00 00          $
	$	REQ018:7E1 03 22 10 29 00 00 00 00          $
	$	REQ019:7E1 03 22 10 30 00 00 00 00          $
	$	REQ020:7E1 03 22 10 31 00 00 00 00          $
	$	REQ021:7E1 03 22 10 32 00 00 00 00          $
	$	REQ022:7E1 03 22 10 33 00 00 00 00          $
	$	REQ023:7E1 03 22 10 34 00 00 00 00          $
	$	REQ024:7E1 03 22 10 35 00 00 00 00          $
	$	REQ025:7E1 03 22 10 36 00 00 00 00          $
	$	REQ026:7E1 03 22 10 37 00 00 00 00          $
	$	REQ027:7E1 03 22 10 40 00 00 00 00          $
	$	REQ028:7E1 03 22 10 41 00 00 00 00          $
	$	REQ029:7E1 03 22 10 42 00 00 00 00          $
	$	REQ030:7E1 03 22 10 43 00 00 00 00          $
	$	REQ031:7E1 03 22 10 44 00 00 00 00          $
	$	REQ032:7E1 03 22 10 45 00 00 00 00          $
	$	REQ033:7E1 03 22 10 49 00 00 00 00          $

  $  000.Battery Voltage                                                    $    $  V        $    $  ANS000.BYTE003  $  X*0.25
  $  001.HSD1 Voltage (Primary Secondary DNR solenoid )                     $    $  V        $    $  ANS001.BYTE003  $  X*0.25
  $  002.HSD2 Voltage (TC Line solenoid supply)                             $    $  V        $    $  ANS002.BYTE003  $  X*0.25
  $  003.HSD3 Voltage (Start lock solenoid supply)                          $    $  V        $    $  ANS003.BYTE003  $  X*0.25
  $  004.9V Sensor Supply 1 (Primary Secondary speed sensor)                $    $  V        $    $  ANS004.BYTE003  $  X*0.25
  $  005.9V Sensor Supply 2 (Turbine speed sensor)                          $    $  V        $    $  ANS005.BYTE003  $  X*0.25
  $  006.5V Sensor Supply 1 (Primary pressure & Gear position sensor)       $    $  V        $    $  ANS006.BYTE003  $  X*0.25
  $  007.5V Sensor Supply 2 (Secondary pressure sensor)                     $    $  V        $    $  ANS007.BYTE003  $  X*0.25
  $  008.input for brake 2 signal status                                    $    $  -        $    $  ANS008.BYTE003  $  00:Low level		01:High level		其他:-
  $  009.input for start key signal status                                  $    $  -        $    $  ANS009.BYTE003  $  00:Low level		01:High level		其他:-
  $  010.output for start lock control pin status                           $    $  -        $    $  ANS010.BYTE003  $  00:High level (relay OFF)		01:Low level (relay ON)		其他:-
  $  011.Primary pressure                                                   $    $  Bar      $    $  ANS011.BYTE003  $  XY*0.125
  $  012.Secondary  pressure                                                $    $  Bar      $    $  ANS012.BYTE003  $  XY*0.125
  $  013.Primary speed                                                      $    $  rpm      $    $  ANS013.BYTE003  $  XY
  $  014.Secondary speed                                                    $    $  rpm      $    $  ANS014.BYTE003  $  XY
  $  015.Line valve current                                                 $    $  mA       $    $  ANS015.BYTE003  $  XY*0.1
  $  016.DNR valve current                                                  $    $  mA       $    $  ANS016.BYTE003  $  XY*0.1
  $  017.Secondary valve current                                            $    $  mA       $    $  ANS017.BYTE003  $  XY*0.1
  $  018.TC valve current                                                   $    $  mA       $    $  ANS018.BYTE003  $  XY*0.1
  $  019.Forward clutch status                                              $    $  -        $    $  ANS019.BYTE003  $  00:Undefined		01:Open		02:Filling		03:Ramp down		04:Touch		05:Ramp up		06:Closed,		其他:-
  $  020.Reverse clutch status                                              $    $  -        $    $  ANS020.BYTE003  $  00:Undefined		01:Open		02:Filling		03:Ramp down		04:Touch		05:Ramp up		06:Closed,		其他:-
  $  021.TC lockup clutch status                                            $    $  -        $    $  ANS021.BYTE003  $  00:Undefined		01:Released		02:Filling		03:Lock Ramp		04:Locked		05:Release Ramp		其他:-
  $  022.Gear lever position                                                $    $  -        $    $  ANS022.BYTE003  $  00:Undefined		01:Park		02:Reverse		03:Neutral		04:Drive		05:Low,		其他:-
  $  023.Drive program master status                                        $    $  -        $    $  ANS023.BYTE003  $  00:Undefined		01:Economy		02:Sport		03:Tip		04:Warm Up		05:Cool Down		06:Not used		07:Reverse,		其他:-
  $  024.Transmission oil temperature                                       $    $  °C      $    $  ANS024.BYTE003  $  X*1-40
  $  025.Request of MIL Active                                              $    $  -        $    $  ANS025.BYTE003  $  00:False		01:True,		其他:-
  $  026.Limp home status                                                   $    $  -        $    $  ANS026.BYTE003  $  00:not active		01:active		02:pre-active		其他:-
  $  027.Wheel Speed front left                                             $    $  km/h     $    $  ANS027.BYTE003  $  XY*0.01
  $  028.Wheel Speed front right                                            $    $  km/h     $    $  ANS028.BYTE003  $  XY*0.01
  $  029.Wheel Speed rear left                                              $    $  km/h     $    $  ANS029.BYTE003  $  XY*0.01
  $  030.Wheel Speed rear right                                             $    $  km/h     $    $  ANS030.BYTE003  $  XY*0.01
  $  031.Brake Pedal status                                                 $    $  -        $    $  ANS031.BYTE003  $  00:False		01:True		其他:-
  $  032.Accelerator pedal position                                         $    $  %        $    $  ANS032.BYTE003  $  X*0.392157
  $  033.Variator ratio                                                     $    $  -        $    $  ANS033.BYTE003  $  XY*0.005


