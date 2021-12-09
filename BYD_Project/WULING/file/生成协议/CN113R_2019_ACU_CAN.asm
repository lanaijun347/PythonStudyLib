$~#6$~#14$~500$~7EA
;******************************************************************************************************************************************************

车型代号:CN113R年度车型
车型:CONFERO 
排量:1.5L
年份:2019
模块名缩写:ACU
模块名:自动离合器控制模块
供应商:舍佛勒
诊断代码:CN113R_2019_ACU_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:7E2 02 10 01 00 00 00 00 00          $~          7EA 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:7E2 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:7E2 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:7E2 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/CONFERO SDTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:7E2 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:7E2 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:7E2 03 22 F1 94 00 00 00 00          $%
	$%	REQ001:7E2 03 22 F1 CB 00 00 00 00          $%
	$%	REQ002:7E2 03 22 F1 8A 00 00 00 00          $%
	$%	REQ003:7E2 03 22 F1 8B 00 00 00 00          $%
	$%	REQ004:7E2 03 22 F1 8C 00 00 00 00          $%
	$%	REQ005:7E2 03 22 F1 92 00 00 00 00          $%
	$%	REQ006:7E2 03 22 F1 B2 00 00 00 00          $%

  $%  000:Supplier ECU Software Number                                     $%    $%  ANS000.BYTE003  $%  32个字节的ASCII显示
  $%  001:EndModelPartNumber(SGMW P/N)                                     $%    $%  ANS001.BYTE003  $%  X1X2X3X4
  $%  002:Supplier Identifier Information - will be provided by SGMW       $%    $%  ANS002.BYTE003  $%  07个字节的ASCII显示
  $%  003:ECUManufacturingDate                                             $%    $%  ANS003.BYTE003  $%  04个字节的HEX显示
  $%  004:ECU Serial Number - will be defined by LuK                       $%    $%  ANS004.BYTE003  $%  04个字节的HEX显示
  $%  005:Supplier ECU Hardware Number                                     $%    $%  ANS005.BYTE003  $%  08个字节的ASCII显示
  $%  006:Vehicle Manufacturing Date                                       $%    $%  ANS006.BYTE003  $%  04个字节的HEX显示

;******************************************************************************************************************************************************
数据流

   00.Data flow

	$	REQ000:7E2 03 22 01 00 00 00 00 00          $
	$	REQ001:7E2 03 22 01 01 00 00 00 00          $
	$	REQ002:7E2 03 22 01 03 00 00 00 00          $
	$	REQ003:7E2 03 22 01 04 00 00 00 00          $
	$	REQ004:7E2 03 22 01 08 00 00 00 00          $
	$	REQ005:7E2 03 22 F0 11 00 00 00 00          $
	$	REQ006:7E2 03 22 01 0A 00 00 00 00          $
	$	REQ007:7E2 03 22 01 0E 00 00 00 00          $
	$	REQ008:7E2 03 22 01 0F 00 00 00 00          $
	$	REQ009:7E2 03 22 01 10 00 00 00 00          $
	$	REQ010:7E2 03 22 01 12 00 00 00 00          $
	$	REQ011:7E2 03 22 01 13 00 00 00 00          $
	$	REQ012:7E2 03 22 01 14 00 00 00 00          $
	$	REQ013:7E2 03 22 01 15 00 00 00 00          $
	$	REQ014:7E2 03 22 01 16 00 00 00 00          $
	$	REQ015:7E2 03 22 01 17 00 00 00 00          $
	$	REQ016:7E2 03 22 01 18 00 00 00 00          $
	$	REQ017:7E2 03 22 01 19 00 00 00 00          $
	$	REQ018:7E2 03 22 01 1B 00 00 00 00          $
	$	REQ019:7E2 03 22 01 1C 00 00 00 00          $
	$	REQ020:7E2 03 22 01 20 00 00 00 00          $
	$	REQ021:7E2 03 22 01 25 00 00 00 00          $
	$	REQ022:7E2 03 22 01 3A 00 00 00 00          $
	$	REQ023:7E2 03 22 F0 14 00 00 00 00          $
	$	REQ024:7E2 03 22 F0 12 00 00 00 00          $
	$	REQ025:7E2 03 22 F0 13 00 00 00 00          $
	$	REQ026:7E2 03 22 01 2F 00 00 00 00          $
	$	REQ027:7E2 03 22 01 30 00 00 00 00          $
	$	REQ028:7E2 03 22 01 31 00 00 00 00          $
	$	REQ029:7E2 03 22 01 32 00 00 00 00          $
	$	REQ030:7E2 03 22 01 34 00 00 00 00          $
	$	REQ031:7E2 03 22 03 00 00 00 00 00          $
	$	REQ032:7E2 03 22 03 02 00 00 00 00          $
	$	REQ033:7E2 03 22 01 37 00 00 00 00          $
	$	REQ034:7E2 03 22 01 38 00 00 00 00          $
	$	REQ035:7E2 03 22 01 35 00 00 00 00          $
	$	REQ036:7E2 03 22 01 1A 00 00 00 00          $

  $  000.Clutch touchpoint (medium term)                     $    $  mm         $    $  ANS000.BYTE003  $  XY*0.01
  $  001.Clutch touchpoint (medium term)                     $    $  mm         $    $  ANS000.BYTE005  $  XY*0.01
  $  002.Clutch friction general coefficients                $    $  -          $    $  ANS001.BYTE003  $  XY
  $  003.Clutch modeled temperature                          $    $  °C        $    $  ANS002.BYTE003  $  XY
  $  004.Clutch temperature status                           $    $  -          $    $  ANS003.BYTE003  $  01:Temperature Status Valid		00:Temperature Status not precise		其他:-
  $  005.Clutch actuator target position                     $    $  mm         $    $  ANS004.BYTE003  $  XY*0.01
  $  006.ACU supply voltage                                  $    $  V          $    $  ANS005.BYTE003  $  XY*0.1
  $  007.HCA supply voltage                                  $    $  V          $    $  ANS006.BYTE003  $  XY*0.01
  $  008.Actual gear                                         $    $  -          $    $  ANS007.BYTE003  $  00:Neutral 		01:1st Gear		02:2st Gear		03:3st Gear		04:4st Gear		05:5st Gear		06:6st Gear		07:Reverse Gear		08:nvalid Gear		其他:-
  $  009.Gear status                                         $    $  -          $    $  ANS007.BYTE004  $  FF:Gear Invalid		CC:Gear Verified		C3:Gear Possibly engaged		AA:Gear Probably engaged		0F:Gear Error		其他:-
  $  010.Gearbox select position                             $    $  %          $    $  ANS008.BYTE003  $  [0000-7FFF]:XY*0.01+0		[8000-FFFF]:(XY-65535)*0.01+0
  $  011.Gearbox shift position                              $    $  %          $    $  ANS009.BYTE003  $  [0000-7FFF]:XY*0.01+0		[8000-FFFF]:(XY-65535)*0.01+0
  $  012.Shift lever position                                $    $  %          $    $  ANS010.BYTE003  $  [0000-7FFF]:XY*0.01+0		[8000-FFFF]:(XY-65535)*0.01+0
  $  013.Combustion engine torque                            $    $  Nm         $    $  ANS011.BYTE003  $  [0000-7FFF]:XY*0.1+0		[8000-FFFF]:(XY-65535)*0.1+0
  $  014.Input shaft speed                                   $    $  rpm        $    $  ANS012.BYTE003  $  [0000-7FFF]:XY*1+0		[8000-FFFF]:(XY-65535)*1+0
  $  015.Pressure of HCA                                     $    $  bar        $    $  ANS013.BYTE003  $  [0000-7FFF]:XY*0.1+0		[8000-FFFF]:(XY-65535)*0.1+0
  $  016.Acceleration pedal                                  $    $  deg        $    $  ANS014.BYTE003  $  [0000-7FFF]:XY*0.1+0		[8000-FFFF]:(XY-65535)*0.1+0
  $  017.Gearbox temperature                                 $    $  °C        $    $  ANS015.BYTE003  $  [0000-7FFF]:XY*1+0		[8000-FFFF]:(XY-65535)*1+0
  $  018.Control states of electric actuator motor           $    $  -          $    $  ANS016.BYTE003  $  00:Position Control Mode		01:Speed Control Mode		02:Force Control Mode		03:Voltage Control Mode		其他:-
  $  019.Time since last refill                              $    $  sec        $    $  ANS017.BYTE003  $  [0000-7FFF]:XY*1+0		[8000-FFFF]:(XY-65535)*1+0
  $  020.Clutch End of Life Counter                          $    $  -          $    $  ANS018.BYTE003  $  [0000-7FFF]:XY*1+0		[8000-FFFF]:(XY-65535)*1+0
  $  021.ACU life time counter                               $    $  Minute     $    $  ANS019.BYTE003  $  X1X2X3X4
  $  022.Clutch Torque Confidence Level                      $    $  -          $    $  ANS020.BYTE003  $  00:No clutch confidence		01:Low clutch torque confidence		02:Medium clutch torque confidence		03:High clutch torque confidence		其他:-
  $  023.Temperature PCB sensor HCA                          $    $  °C        $    $  ANS021.BYTE003  $  [0000-7FFF]:XY*1+0		[8000-FFFF]:(XY-65535)*1+0
  $  024.Refill priority                                     $    $  -          $    $  ANS022.BYTE003  $  00:Refill prip none		01: Refill prio 'When Possible'		02:Refill prio 'Urgent'		03:Refill prio 'Now'		其他:-
  $  025.Odometer (for snapshot data)                        $    $  km         $    $  ANS023.BYTE003  $  [00000000-7FFFFFFF]:X1X2X3X4*0.015625+0		[800000-FFFFFF]:(X1X2X3X4-4294967295)*0.015625+0
  $  026.Engine speed (for snapshot data)                    $    $  rpm        $    $  ANS024.BYTE003  $  XY
  $  027.Vehicle speed (for snapshot data)                   $    $  rpm        $    $  ANS025.BYTE003  $  XY*0.1
  $  028.Handbrake state (pressed / not pressed)             $    $  -          $    $  ANS026.BYTE003  $  00:brakes not applied		01:brakes applied		其他:-
  $  029.Footbrake state (applied / not applied)             $    $  -          $    $  ANS027.BYTE003  $  00:brakes not applied		01:brakes applied		其他:-
  $  030.Clutch overspeed counters                           $    $  -          $    $  ANS028.BYTE003  $  08个字节的HEX显示
  $  031.Refill not performed counter                        $    $  -          $    $  ANS029.BYTE003  $  [0000-7FFF]:XY*1+0		[8000-FFFF]:(XY-65535)*1+0
  $  032.Clutch actuator actual voltage                      $    $  V          $    $  ANS030.BYTE003  $  [0000-7FFF]:XY*0.01+0		[8000-FFFF]:(XY-65535)*0.01+0
  $  033.Clutch actuator actual position                     $    $  mm         $    $  ANS031.BYTE003  $  [0000-7FFF]:XY*0.01+0		[8000-FFFF]:(XY-65535)*0.01+0
  $  034.Clutch actuator velocity                            $    $  mm/sec     $    $  ANS031.BYTE005  $  [0000-7FFF]:XY*0.1+0		[8000-FFFF]:(XY-65535)*0.1+0
  $  035.Refill Orifice Status                               $    $  -          $    $  ANS032.BYTE003  $  00:Refill Orifice position not reached		01:Refill Orifice position reached		其他:-
  $  036.Engine state                                        $    $  -          $    $  ANS033.BYTE003  $  A5A5:Engine Init		AAAA:Engine ON		3330:Engine OFF		3CC0:Engine state unkonwn		6969:Engine Error		其他:-
  $  037.Safety clutch operational state                     $    $  -          $    $  ANS034.BYTE003  $  AA:OK		C3:NOK		CC:NOK open		3C:NOK close		其他:-
  $  038.Touchpoint Torque Based FST (adaptation gain)       $    $  -          $    $  ANS035.BYTE003  $  00:Faster adaption pace is not enabled		01:Faster adaption pace is enabled		其他:-
  $  039.Shift Intention                                     $    $  -          $    $  ANS036.BYTE003  $  00:Shift Intention not detected		01:Shift intention detected		其他:-


