$~#6$~#14$~500$~7ED
;******************************************************************************************************************************************************

车型代号:CN202SR_IN
车型:HECTOR
排量:N15T
年份:2019
模块名缩写:SCRM
模块名:尿素管理系统
供应商:菲亚特
诊断代码:CN202SR_IN_BS6_2020_SCRM_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:7E5 02 10 01 00 00 00 00 00          $~          7ED 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:7E5 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:7E5 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:7E5 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/HECTORDTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:7E5 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:7E5 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:7E5 03 22 F1 8A 00 00 00 00          $%
	$%	REQ001:7E5 03 22 F1 8B 00 00 00 00          $%
	$%	REQ002:7E5 03 22 F1 90 00 00 00 00          $%
	$%	REQ003:7E5 03 22 F1 93 00 00 00 00          $%
	$%	REQ004:7E5 03 22 F1 95 00 00 00 00          $%
	$%	REQ005:7E5 03 22 F1 CB 00 00 00 00          $%
	$%	REQ006:7E5 03 22 F1 92 00 00 00 00          $%
	$%	REQ007:7E5 03 22 F1 94 00 00 00 00          $%
	$%	REQ008:7E5 03 22 F1 88 00 00 00 00          $%

  $%  000:Supplier Identifier Information       $%    $%  ANS000.BYTE003  $%  07个字节的ASCII显示
  $%  001:ECUManufacturingDate                  $%    $%  ANS001.BYTE003  $%  04个字节的HEX显示
  $%  002:VIN                                   $%    $%  ANS002.BYTE003  $%  17个字节的ASCII显示
  $%  003:ECU Hardware Version Number           $%    $%  ANS003.BYTE003  $%  01个字节的ASCII显示
  $%  004:ECU Software Version Number           $%    $%  ANS004.BYTE003  $%  02个字节的ASCII显示
  $%  005:SGMW P/N                              $%    $%  ANS005.BYTE003  $%  X1X2X3X4
  $%  006:Supplier ECU Hardware Number          $%    $%  ANS006.BYTE003  $%  11个字节的ASCII显示
  $%  007:Supplier ECU Software Number          $%    $%  ANS007.BYTE003  $%  11个字节的ASCII显示
  $%  008:SGMW ECUSoftwareNumber                $%    $%  ANS008.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

   00.Data flow

	$	REQ000:7E5 03 22 F0 11 00 00 00 00          $
	$	REQ001:7E5 03 22 F0 12 00 00 00 00          $
	$	REQ002:7E5 03 22 F0 13 00 00 00 00          $
	$	REQ003:7E5 03 22 F0 14 00 00 00 00          $
	$	REQ004:7E5 03 22 10 03 00 00 00 00          $
	$	REQ005:7E5 03 22 10 05 00 00 00 00          $
	$	REQ006:7E5 03 22 10 08 00 00 00 00          $
	$	REQ007:7E5 03 22 10 09 00 00 00 00          $
	$	REQ008:7E5 03 22 18 DE 00 00 00 00          $
	$	REQ009:7E5 03 22 19 1D 00 00 00 00          $
	$	REQ010:7E5 03 22 19 35 00 00 00 00          $
	$	REQ011:7E5 03 22 19 56 00 00 00 00          $
	$	REQ012:7E5 03 22 20 02 00 00 00 00          $
	$	REQ013:7E5 03 22 20 03 00 00 00 00          $
	$	REQ014:7E5 03 22 20 08 00 00 00 00          $
	$	REQ015:7E5 03 22 20 09 00 00 00 00          $
	$	REQ016:7E5 03 22 20 0A 00 00 00 00          $
	$	REQ017:7E5 03 22 20 0B 00 00 00 00          $
	$	REQ018:7E5 03 22 20 0C 00 00 00 00          $
	$	REQ019:7E5 03 22 60 80 00 00 00 00          $
	$	REQ020:7E5 03 22 60 82 00 00 00 00          $
	$	REQ021:7E5 03 22 D2 20 00 00 00 00          $
	$	REQ022:7E5 03 22 D2 21 00 00 00 00          $
	$	REQ023:7E5 03 22 D2 24 00 00 00 00          $
	$	REQ024:7E5 03 22 D2 25 00 00 00 00          $
	$	REQ025:7E5 03 22 D2 26 00 00 00 00          $
	$	REQ026:7E5 03 22 D9 20 00 00 00 00          $
	$	REQ027:7E5 03 22 D9 21 00 00 00 00          $
	$	REQ028:7E5 03 22 D9 24 00 00 00 00          $
	$	REQ029:7E5 03 22 D9 30 00 00 00 00          $
	$	REQ030:7E5 03 22 D9 31 00 00 00 00          $
	$	REQ031:7E5 03 22 D9 32 00 00 00 00          $
	$	REQ032:7E5 03 22 D9 35 00 00 00 00          $
	$	REQ033:7E5 03 22 D9 36 00 00 00 00          $
	$	REQ034:7E5 03 22 D9 37 00 00 00 00          $
	$	REQ035:7E5 03 22 D9 3B 00 00 00 00          $
	$	REQ036:7E5 03 22 D9 3D 00 00 00 00          $
	$	REQ037:7E5 03 22 D9 3E 00 00 00 00          $
	$	REQ038:7E5 03 22 D9 48 00 00 00 00          $
	$	REQ039:7E5 03 22 D9 4F 00 00 00 00          $
	$	REQ040:7E5 03 22 D9 50 00 00 00 00          $
	$	REQ041:7E5 03 22 D9 52 00 00 00 00          $
	$	REQ042:7E5 03 22 D9 54 00 00 00 00          $
	$	REQ043:7E5 03 22 D9 55 00 00 00 00          $
	$	REQ044:7E5 03 22 D9 57 00 00 00 00          $
	$	REQ045:7E5 03 22 D9 58 00 00 00 00          $
	$	REQ046:7E5 03 22 D9 5C 00 00 00 00          $
	$	REQ047:7E5 03 22 D9 5D 00 00 00 00          $
	$	REQ048:7E5 03 22 D9 60 00 00 00 00          $
	$	REQ049:7E5 03 22 D9 64 00 00 00 00          $
	$	REQ050:7E5 03 22 D9 65 00 00 00 00          $
	$	REQ051:7E5 03 22 D9 66 00 00 00 00          $
	$	REQ052:7E5 03 22 D9 67 00 00 00 00          $
	$	REQ053:7E5 03 22 D9 68 00 00 00 00          $
	$	REQ054:7E5 03 22 D9 6A 00 00 00 00          $
	$	REQ055:7E5 03 22 D9 6B 00 00 00 00          $
	$	REQ056:7E5 03 22 D9 6F 00 00 00 00          $
	$	REQ057:7E5 03 22 D9 71 00 00 00 00          $
	$	REQ058:7E5 03 22 D9 97 00 00 00 00          $
	$	REQ059:7E5 03 22 D9 7A 00 00 00 00          $
	$	REQ060:7E5 03 22 D9 7B 00 00 00 00          $
	$	REQ061:7E5 03 22 D9 7C 00 00 00 00          $
	$	REQ062:7E5 03 22 D9 81 00 00 00 00          $
	$	REQ063:7E5 03 22 D9 82 00 00 00 00          $
	$	REQ064:7E5 03 22 D9 85 00 00 00 00          $
	$	REQ065:7E5 03 22 D9 86 00 00 00 00          $
	$	REQ066:7E5 03 22 D9 87 00 00 00 00          $
	$	REQ067:7E5 03 22 D9 88 00 00 00 00          $
	$	REQ068:7E5 03 22 D9 89 00 00 00 00          $
	$	REQ069:7E5 03 22 D9 94 00 00 00 00          $
	$	REQ070:7E5 03 22 D9 98 00 00 00 00          $
	$	REQ071:7E5 03 22 D9 99 00 00 00 00          $
	$	REQ072:7E5 03 22 DA 05 00 00 00 00          $
	$	REQ073:7E5 03 22 DA 07 00 00 00 00          $
	$	REQ074:7E5 03 22 DA 0E 00 00 00 00          $
	$	REQ075:7E5 03 22 DA 10 00 00 00 00          $
	$	REQ076:7E5 03 22 DA 11 00 00 00 00          $
	$	REQ077:7E5 03 22 DA 1D 00 00 00 00          $
	$	REQ078:7E5 03 22 DA 1F 00 00 00 00          $
	$	REQ079:7E5 03 22 DA 20 00 00 00 00          $
	$	REQ080:7E5 03 22 DA 23 00 00 00 00          $
	$	REQ081:7E5 03 22 DA 24 00 00 00 00          $
	$	REQ082:7E5 03 22 DA 25 00 00 00 00          $
	$	REQ083:7E5 03 22 DA 28 00 00 00 00          $
	$	REQ084:7E5 03 22 DA 29 00 00 00 00          $
	$	REQ085:7E5 03 22 DA 2A 00 00 00 00          $
	$	REQ086:7E5 03 22 DA 2D 00 00 00 00          $
	$	REQ087:7E5 03 22 DA 38 00 00 00 00          $
	$	REQ088:7E5 03 22 DA 39 00 00 00 00          $
	$	REQ089:7E5 03 22 DA 3A 00 00 00 00          $
	$	REQ090:7E5 03 22 DA 3B 00 00 00 00          $
	$	REQ091:7E5 03 22 DA 3C 00 00 00 00          $
	$	REQ092:7E5 03 22 DA 3D 00 00 00 00          $
	$	REQ093:7E5 03 22 DA 3E 00 00 00 00          $
	$	REQ094:7E5 03 22 DA 3F 00 00 00 00          $
	$	REQ095:7E5 03 22 DA 40 00 00 00 00          $
	$	REQ096:7E5 03 22 DA 41 00 00 00 00          $
	$	REQ097:7E5 03 22 DA 42 00 00 00 00          $
	$	REQ098:7E5 03 22 DA 43 00 00 00 00          $
	$	REQ099:7E5 03 22 DA 44 00 00 00 00          $
	$	REQ100:7E5 03 22 DA 45 00 00 00 00          $
	$	REQ101:7E5 03 22 DA 46 00 00 00 00          $
	$	REQ102:7E5 03 22 DA 47 00 00 00 00          $
	$	REQ103:7E5 03 22 DA 48 00 00 00 00          $
	$	REQ104:7E5 03 22 DA 49 00 00 00 00          $
	$	REQ105:7E5 03 22 DA 4E 00 00 00 00          $
	$	REQ106:7E5 03 22 DA 4F 00 00 00 00          $
	$	REQ107:7E5 03 22 DA 50 00 00 00 00          $
	$	REQ108:7E5 03 22 DA 51 00 00 00 00          $
	$	REQ109:7E5 03 22 DA 52 00 00 00 00          $
	$	REQ110:7E5 03 22 DA 53 00 00 00 00          $
	$	REQ111:7E5 03 22 DA 54 00 00 00 00          $
	$	REQ112:7E5 03 22 DA 55 00 00 00 00          $
	$	REQ113:7E5 03 22 DA 56 00 00 00 00          $
	$	REQ114:7E5 03 22 DA 57 00 00 00 00          $
	$	REQ115:7E5 03 22 DA 58 00 00 00 00          $
	$	REQ116:7E5 03 22 DA 59 00 00 00 00          $
	$	REQ117:7E5 03 22 DA 5A 00 00 00 00          $
	$	REQ118:7E5 03 22 DA 5C 00 00 00 00          $
	$	REQ119:7E5 03 22 DA 5D 00 00 00 00          $
	$	REQ120:7E5 03 22 DA 5E 00 00 00 00          $
	$	REQ121:7E5 03 22 DA 5F 00 00 00 00          $
	$	REQ122:7E5 03 22 DA 60 00 00 00 00          $
	$	REQ123:7E5 03 22 DA 61 00 00 00 00          $
	$	REQ124:7E5 03 22 DA 62 00 00 00 00          $
	$	REQ125:7E5 03 22 DA 63 00 00 00 00          $
	$	REQ126:7E5 03 22 DA 64 00 00 00 00          $
	$	REQ127:7E5 03 22 DA 65 00 00 00 00          $
	$	REQ128:7E5 03 22 DA 66 00 00 00 00          $
	$	REQ129:7E5 03 22 DA 67 00 00 00 00          $
	$	REQ130:7E5 03 22 DA 68 00 00 00 00          $
	$	REQ131:7E5 03 22 DA 69 00 00 00 00          $
	$	REQ132:7E5 03 22 DA 6A 00 00 00 00          $
	$	REQ133:7E5 03 22 DA 6B 00 00 00 00          $
	$	REQ134:7E5 03 22 DA 6C 00 00 00 00          $
	$	REQ135:7E5 03 22 DA 6D 00 00 00 00          $
	$	REQ136:7E5 03 22 DA 6E 00 00 00 00          $
	$	REQ137:7E5 03 22 DA 6F 00 00 00 00          $
	$	REQ138:7E5 03 22 DA 70 00 00 00 00          $
	$	REQ139:7E5 03 22 DA 71 00 00 00 00          $
	$	REQ140:7E5 03 22 DA 72 00 00 00 00          $
	$	REQ141:7E5 03 22 DA 73 00 00 00 00          $
	$	REQ142:7E5 03 22 DA 74 00 00 00 00          $
	$	REQ143:7E5 03 22 DA 75 00 00 00 00          $
	$	REQ144:7E5 03 22 DA 76 00 00 00 00          $
	$	REQ145:7E5 03 22 DA 83 00 00 00 00          $
	$	REQ146:7E5 03 22 DA 84 00 00 00 00          $

  $  000.Vehicle Battery Voltage                                                                                                                             $    $  V        $    $  ANS000.BYTE003  $  X*0.1
  $  001.Engine Speed                                                                                                                                        $    $  rpm      $    $  ANS001.BYTE003  $  XY*0.25
  $  002.Vehicle Speed                                                                                                                                       $    $  km/h     $    $  ANS002.BYTE003  $  XY*0.015625
  $  003.Odometer                                                                                                                                            $    $  Km       $    $  ANS003.BYTE003  $  X1X2X3X4*0.015625
  $  004.System coolant temperature with 1℃resolution                                                                                                       $    $  ℃       $    $  ANS004.BYTE003  $  X*1-40
  $  005.Outiside ambient air temperature filtered                                                                                                           $    $  ℃       $    $  ANS005.BYTE003  $  XY*0.0078125
  $  006.ECU time stamps (RAM)                                                                                                                               $    $  min      $    $  ANS006.BYTE003  $  X1X2X3X4
  $  007.ECU time stamps from KeyOn (RAM)                                                                                                                    $    $  s        $    $  ANS007.BYTE003  $  XY*15
  $  008.Inlet Diesel Particulate Filter Exhaust gas temperature                                                                                             $    $  ℃       $    $  ANS008.BYTE003  $  XY*0.0625-273.15
  $  009.Power latch time                                                                                                                                    $    $  s        $    $  ANS009.BYTE003  $  X
  $  010.Intake air temperature                                                                                                                              $    $  ℃       $    $  ANS010.BYTE003  $  X*1-40
  $  011.Ambient pressure                                                                                                                                    $    $  hPa      $    $  ANS011.BYTE003  $  X*5
  $  012.Odometer content to the last F-ROM updating                                                                                                         $    $  km       $    $  ANS012.BYTE003  $  XYZ*0.1
  $  013.Number of FlashRom re-writings (F-ROM)                                                                                                              $    $  -        $    $  ANS013.BYTE003  $  X
  $  014.ECU time stamps (EEPROM)                                                                                                                            $    $  min      $    $  ANS014.BYTE003  $  X1X2X3X4
  $  015.ECU time stamps from KeyOn (EEPROM)                                                                                                                 $    $  s        $    $  ANS015.BYTE003  $  XY*15
  $  016.KeyOn counter (EEPROM)                                                                                                                              $    $  -        $    $  ANS016.BYTE003  $  XY
  $  017.ECU Time first DTC detection (EEPROM)                                                                                                               $    $  min      $    $  ANS017.BYTE003  $  X1X2X3X4
  $  018.ECU Time Stamps from KeyOn first DTC detection (EEPROM)                                                                                             $    $  s        $    $  ANS018.BYTE003  $  XY*15
  $  019.Event Counter                                                                                                                                       $    $  -        $    $  ANS019.BYTE003  $  X
  $  020.Failure Type                                                                                                                                        $    $  -        $    $  ANS020.BYTE003  $  X
  $  021.Switch state                                                                                                                                        $    $  -        $    $  ANS021.BYTE003  $  00:Stop position (not used)		01:Inizialization (Key-Off)		02:Accessory position		04:Run position (Key-On)		05:Cranking position		07:Signal not Available		其他:-
  $  022.Engine operation status                                                                                                                             $    $  -        $    $  ANS022.BYTE003  $  00:Engine off		01:Cranking		02:Unused		03:Engine in Idle		04:Engine Running(no overspeed limitation activated)		05:Engine overspeed conditions reached		06:Unused		0F:Signal not Available		其他:-
  $  023.Urea mass flow quantity request                                                                                                                     $    $  mg/s     $    $  ANS023.BYTE003  $  XY*0.015625
  $  024.Exhaust back pressure                                                                                                                               $    $  mbar     $    $  ANS024.BYTE003  $  XY
  $  025.Cooling fan average speed                                                                                                                           $    $  %        $    $  ANS025.BYTE003  $  X
  $  026.Actuator test injector                                                                                                                              $    $  %        $    $  ANS026.BYTE003  $  XY*0.0061
  $  027.Actuator Test Pump                                                                                                                                  $    $  %        $    $  ANS027.BYTE003  $  XY*0.0061
  $  028.Actuator Test Inverse Pump                                                                                                                          $    $  %        $    $  ANS028.BYTE003  $  XY*0.0061
  $  029.Reducing agent volume in tank                                                                                                                       $    $  l        $    $  ANS029.BYTE003  $  XY*0.0009765625 
  $  030.Overall consumed reducing agent quantity with Low Resolution                                                                                        $    $  g        $    $  ANS030.BYTE003  $  XY*32.7674865722656
  $  031.Reducing agent temperatures at tank                                                                                                                 $    $  ℃       $    $  ANS031.BYTE003  $  XY*0.0625-273,15
  $  032. Reducing agent Tank system heating is active                                                                                                        $    $  -        $    $  ANS032.BYTE003  $  00:Urea Tank Heater Not Active		01:Urea Tank Heater Active		其他:-
  $  033.Reducing agent Tube system heating is active                                                                                                        $    $  -        $    $  ANS033.BYTE003  $  00:Urea Tube Heater Not Active		01:Urea Tube Heater Active		其他:-
  $  034.engine running time (since engine start) in [s]                                                                                                     $    $  s        $    $  ANS034.BYTE003  $  XY*0.1
  $  035.Engine shut-off time                                                                                                                                $    $  min      $    $  ANS035.BYTE003  $  XY
  $  036.Fuel temperature                                                                                                                                    $    $  ℃       $    $  ANS036.BYTE003  $  X*1-50
  $  037.Raw vehicle acceleration received from communication network                                                                                        $    $  m/s²      $    $  ANS037.BYTE003  $  X*0.08-10.24
  $  038.Raw traversal vehicle acceleration received from communication network                                                                              $    $  m/s²      $    $  ANS038.BYTE003  $  X*0.08-10.24
  $  039.Measured current feedback of reducing agent injector                                                                                                $    $  A        $    $  ANS039.BYTE003  $  XY*0.0009765625
  $  040.Reducing agent tank urea concentration                                                                                                              $    $  %        $    $  ANS040.BYTE003  $  XY*0.01-10
  $  041.Remaining distance calculated from reducing agent tank volume                                                                                       $    $  km       $    $  ANS041.BYTE003  $  XY*2
  $  042.Frequency of the PWM signal to control the reducing agent injector                                                                                  $    $  Hz       $    $  ANS042.BYTE003  $  XY*0.015625
  $  043.Exhaust gas temperature ahead of oxidation catalyst                                                                                                 $    $  ℃       $    $  ANS043.BYTE003  $  XY*0.0625-273.15
  $  044.Enabling of reducing agent supply system                                                                                                            $    $  -        $    $  ANS044.BYTE003  $  00:Supply System not Enabled		01:Supply System Enabled		其他:-
  $  045.General MIL on request                                                                                                                              $    $  -        $    $  ANS045.BYTE003  $  00:MIL on not request		01:MIL on request		其他:-
  $  046.Power latch phase active                                                                                                                            $    $  -        $    $  ANS046.BYTE003  $  00:Pawer latch phase not active		01:Pawer latch phase active		其他:-
  $  047.Cavity flag validity status                                                                                                                         $    $  -        $    $  ANS047.BYTE003  $  00:Not Valid		01:Valid		其他:-
  $  048.Flag to indicate the tank is frozen or not                                                                                                          $    $  -        $    $  ANS048.BYTE003  $  00:Not Frozen		01:Frozen		其他:-
  $  049.Refilling detected for the reducing agent at the tank                                                                                               $    $  -        $    $  ANS049.BYTE003  $  00:Refill not detected		01:Refill detected		其他:-
  $  050.Reducing agent realized injected mass                                                                                                               $    $  g        $    $  ANS050.BYTE003  $  X*0.001
  $  051.Exhaust mass flow after EGR                                                                                                                         $    $  kg/h     $    $  ANS051.BYTE003  $  XY*0.0625
  $  052.Feedback of injected adblue mass flow                                                                                                               $    $  mg/s     $    $  ANS052.BYTE003  $  XY*0.015625
  $  053.Maximum allowed reducing agent mass flow for dosing                                                                                                 $    $  mg/s     $    $  ANS053.BYTE003  $  XY*0.0625
  $  054.Measured reducing agent pump speed                                                                                                                  $    $  rpm      $    $  ANS054.BYTE003  $  XY
  $  055.Setpoint for spped controller in [rpm]                                                                                                              $    $  rpm      $    $  ANS055.BYTE003  $  XY
  $  056.Filtered reducing agent pressure sensor signal                                                                                                      $    $  bar      $    $  ANS056.BYTE003  $  [0000-7FFF]:XY*0.0009765625+0		[8000-FFFF]:(XY-65535)*0.0009765625+0
  $  057.Reducing agent pressure setpoint                                                                                                                    $    $  bar      $    $  ANS057.BYTE003  $  [0000-7FFF]:XY*0.0009765625+0		[8000-FFFF]:(XY-65535)*0.0009765625+0
  $  058.Reducing agent temperature value coming from the tank sensor                                                                                        $    $  ℃       $    $  ANS058.BYTE003  $  XY*0.0625-273.15
  $  059.Reducing agent volume downstream to pump                                                                                                            $    $  ml       $    $  ANS059.BYTE003  $  XY*0.01
  $  060.Maximum fillable reducing agent tank volume                                                                                                         $    $  l        $    $  ANS060.BYTE003  $  XY*0.0009765625
  $  061.Reducing agent nominal fill capacity as a percent of maximum                                                                                        $    $  %        $    $  ANS061.BYTE003  $  X*0.390625
  $  062.Vector for direct Reducing agent tank levels measured by a continuous level sensor                                                                  $    $  l        $    $  ANS062.BYTE003  $  XY*0.1
  $  063.Vector for combi Reducing agent tank levels measured by a continuous level sensor                                                                   $    $  l        $    $  ANS063.BYTE003  $  XY*0.1
  $  064.Fast Filtered reducing agent tank level measurement                                                                                                 $    $  mm       $    $  ANS064.BYTE003  $  XY*0.01
  $  065.Slow Filtered reducing agent tank level measurement                                                                                                 $    $  mm       $    $  ANS065.BYTE003  $  XY*0.01
  $  066.Fast filtered reducing agent tank volume in high resolution                                                                                         $    $  l        $    $  ANS066.BYTE003  $  XY* 0.0009765625
  $  067.Slow filtered reducing agent tank volume in high resolution                                                                                         $    $  l        $    $  ANS067.BYTE003  $  XY* 0.0009765625
  $  068.SCRM state machine activated                                                                                                                        $    $  -        $    $  ANS068.BYTE003  $  00:ES_ON		01:ASYN_ON		02:SYN_ON		03:SYN_OFF		04:PWL		05:WAIT		06:DEAC		其他:-
  $  069.Reducing agent temperature measured by pressure sensor                                                                                              $    $  ℃       $    $  ANS069.BYTE003  $  XY*0.0625-273.15
  $  070.Reducing agent injector coil temperature                                                                                                            $    $  ℃       $    $  ANS070.BYTE003  $  XY*0.0625-273.15
  $  071.Indicated torque for combustion setpoint                                                                                                            $    $  Nm       $    $  ANS071.BYTE003  $  [0000-7FFF]:XY*0.03125+0		[8000-FFFF]:(XY-65535)*0.03125+0
  $  072.Adaption factor for reducing agent pump                                                                                                             $    $  -        $    $  ANS072.BYTE003  $  XY* 0.0001220703125
  $  073.Volume of the reducing agent pump per stroke filtered                                                                                               $    $  µl        $    $  ANS073.BYTE003  $  XY*0.1
  $  074.Reducing agent purging during power latch is successful                                                                                             $    $  -        $    $  ANS074.BYTE003  $  00:power latch is not successful		01:power latch is not successful		其他:-
  $  075.Intervention for the injector protection in case of high exhaust gas temperature for SCR interface                                                  $    $  -        $    $  ANS075.BYTE003  $  00:injector protection not active		01:injector protection active		其他:-
  $  076.Exhaust gas temperature at the reducing agent injector for cylinder bank 1                                                                          $    $  ℃       $    $  ANS076.BYTE003  $  [0000-7FFF]:XY*0.0625+0		[8000-FFFF]:(XY-65535)*0.0625+0
  $  077.Driver warning and inducement active                                                                                                                $    $  -        $    $  ANS077.BYTE003  $  00:Driver warning and inducement not active		01:Driver warning and inducement not active		其他:-
  $  078.Power-latch phase is ended : begining of system shutdown mechanism                                                                                  $    $  -        $    $  ANS078.BYTE003  $  00:Driver warning and inducement not active		01:Driver warning and inducement not active		其他:-
  $  079.First reducing agent refilling of the system completed                                                                                              $    $  -        $    $  ANS079.BYTE003  $  00:First reducing agent refilling of the system not completed		01:First reducing agent refilling of the system not completed		其他:-
  $  080.Injector heating is active                                                                                                                          $    $  -        $    $  ANS080.BYTE003  $  00:Injector heating is not active		01:Injector heating is active		其他:-
  $  081.Realized air mass correction                                                                                                                        $    $  mg       $    $  ANS081.BYTE003  $  [0000-7FFF]:XY*0.0625+0		[8000-FFFF]:(XY-65535)*0.0625+0
  $  082.Reducing agent mass for air injection correction total                                                                                              $    $  mg       $    $  ANS082.BYTE003  $  [0000-7FFF]:XY*0.0625+0		[8000-FFFF]:(XY-65535)*0.0625+0
  $  083.Reducing agent tank volume without the dead volume                                                                                                  $    $  l        $    $  ANS083.BYTE003  $  XY*0.0009765625
  $  084.Level Direct Piezo in Liter                                                                                                                         $    $  l        $    $  ANS084.BYTE003  $  XY*0.0009765625
  $  085.Level Combi Piezo in Liter                                                                                                                          $    $  l        $    $  ANS085.BYTE003  $  XY*0.0009765625
  $  086.Lifetime counter for measured reducing agent injector coil temperature (based on current feedback) over maximum limit                               $    $  s        $    $  ANS086.BYTE003  $  X1X2X3X4
  $  087.Rate based monitor general denominator                                                                                                              $    $  -        $    $  ANS087.BYTE003  $  XY
  $  088.Rate based monitor ignition cycle counter                                                                                                           $    $  -        $    $  ANS088.BYTE003  $  XY
  $  089.Numerator - reducing agent concentration plausibility diagnosis                                                                                     $    $  -        $    $  ANS089.BYTE003  $  XY
  $  090.Denominator - reducing agent concentration plausibility diagnosis                                                                                   $    $  -        $    $  ANS090.BYTE003  $  XY
  $  091.Numerator - reducing agent concentration stuck diagnosis                                                                                            $    $  -        $    $  ANS091.BYTE003  $  XY
  $  092.Denominator - reducing agent concentration stuck diagnosis                                                                                          $    $  -        $    $  ANS092.BYTE003  $  XY
  $  093.Numerator - Temperature offset between reducing agent pressure sensor temperature and the reference temperatures is too high at cold start          $    $  -        $    $  ANS093.BYTE003  $  XY
  $  094.Denominator - Temperature offset between reducing agent pressure sensor temperature and the reference temperatures is too high at cold start        $    $  -        $    $  ANS094.BYTE003  $  XY
  $  095.Numerator - Temperature offset between reducing agent pressure sensor temperature and the reference temperatures is too low at cold start           $    $  -        $    $  ANS095.BYTE003  $  XY
  $  096.Denominator - Temperature offset between reducing agent pressure sensor temperature and the reference temperatures is too low at cold start         $    $  -        $    $  ANS096.BYTE003  $  XY
  $  097.Numerator - Temperature offset between reducing agent tank temperature sensor and the reference temperatures is too high at cold start              $    $  -        $    $  ANS097.BYTE003  $  XY
  $  098.Denominator - Temperature offset between reducing agent tank temperature sensor and the reference temperatures is too high at cold start            $    $  -        $    $  ANS098.BYTE003  $  XY
  $  099.Numerator - Temperature offset between reducing agent tank temperature sensor and the reference temperatures is too low at cold start               $    $  -        $    $  ANS099.BYTE003  $  XY
  $  100.Denominator - Temperature offset between reducing agent tank temperature sensor and the reference temperatures is too low at cold start             $    $  -        $    $  ANS100.BYTE003  $  XY
  $  101.Numerator - Temperature offset between reducing agent injector coil temperature and the reference temperatures is too high at cold start            $    $  -        $    $  ANS101.BYTE003  $  XY
  $  102.Denominator - Temperature offset between reducing agent injector coil temperature and the reference temperatures is too high at cold start          $    $  -        $    $  ANS102.BYTE003  $  XY
  $  103.Numerator - Temperature offset between reducing agent injector coil temperature and the reference temperatures is too low at cold start             $    $  -        $    $  ANS103.BYTE003  $  XY
  $  104.Denominator - Temperature offset between reducing agent injector coil temperature and the reference temperatures is too low at cold start           $    $  -        $    $  ANS104.BYTE003  $  XY
  $  105.Numerator - Reducing agent system pressure crossing bottom 1 threshold of plausible range                                                           $    $  -        $    $  ANS105.BYTE003  $  XY
  $  106.Denominator - Reducing agent system pressure crossing bottom 1 threshold of plausible range                                                         $    $  -        $    $  ANS106.BYTE003  $  XY
  $  107.Numerator - Reducing agent low system pressure decrease with disabled pump                                                                          $    $  -        $    $  ANS107.BYTE003  $  XY
  $  108.Denominator - Reducing agent low system pressure decrease with disabled pump                                                                        $    $  -        $    $  ANS108.BYTE003  $  XY
  $  109.Numerator - Reducing agent low system pressure increase with an enabled pump                                                                        $    $  -        $    $  ANS109.BYTE003  $  XY
  $  110.Denominator - Reducing agent low system pressure increase with an enabled pump                                                                      $    $  -        $    $  ANS110.BYTE003  $  XY
  $  111.Numerator - High negative deviation between ambient and system pressure before engine start                                                         $    $  -        $    $  ANS111.BYTE003  $  XY
  $  112.Denominator - High negative deviation between ambient and system pressure before engine start                                                       $    $  -        $    $  ANS112.BYTE003  $  XY
  $  113.Numerator - High positive deviation between ambient and system pressure before engine start                                                         $    $  -        $    $  ANS113.BYTE003  $  XY
  $  114.Denominator - High positive deviation between ambient and system pressure before engine start                                                       $    $  -        $    $  ANS114.BYTE003  $  XY
  $  115.Numerator - Reducing agent system pressure crossing top 1 threshold plausible range                                                                 $    $  -        $    $  ANS115.BYTE003  $  XY
  $  116.Denominator - Reducing agent system pressure crossing top 1 threshold plausible range                                                               $    $  -        $    $  ANS116.BYTE003  $  XY
  $  117.Numerator - Reducing agent pump pumping air fault                                                                                                   $    $  -        $    $  ANS117.BYTE003  $  XY
  $  118.Numerator - Reducing agent consumption is implausible high (determined by tank level information)                                                   $    $  -        $    $  ANS118.BYTE003  $  XY
  $  119.Denominator - Reducing agent consumption is implausible high (determined by tank level information)                                                 $    $  -        $    $  ANS119.BYTE003  $  XY
  $  120.Numerator - Reducing agent consumption is implausible low(determined by tank level information)                                                     $    $  -        $    $  ANS120.BYTE003  $  XY
  $  121.Denominator - Reducing agent consumption is implausible low (determined by tank level information)                                                  $    $  -        $    $  ANS121.BYTE003  $  XY
  $  122.Numerator - Reducing agent consumption is implausible high                                                                                          $    $  -        $    $  ANS122.BYTE003  $  XY
  $  123.Denominator - Reducing agent consumption is implausible high                                                                                        $    $  -        $    $  ANS123.BYTE003  $  XY
  $  124.Numerator - Reducing agent consumption is implausible low                                                                                           $    $  -        $    $  ANS124.BYTE003  $  XY
  $  125.Denominator - Reducing agent consumption is implausible low                                                                                         $    $  -        $    $  ANS125.BYTE003  $  XY
  $  126.Numerator - Reducing agent system leakage too high                                                                                                  $    $  -        $    $  ANS126.BYTE003  $  XY
  $  127.Denominator - Reducing agent system leakage too high                                                                                                $    $  -        $    $  ANS127.BYTE003  $  XY
  $  128.Numerator - Jammed reducing agent injector detected                                                                                                 $    $  -        $    $  ANS128.BYTE003  $  XY
  $  129.Denominator - Jammed reducing agent injector detected                                                                                               $    $  -        $    $  ANS129.BYTE003  $  XY
  $  130.Numerator - reducing agent level empty diagnosis                                                                                                    $    $  -        $    $  ANS130.BYTE003  $  XY
  $  131.Denominator - reducing agent level empty diagnosis                                                                                                  $    $  -        $    $  ANS131.BYTE003  $  XY
  $  132.Numerator - reducing agent level out of range diagnosis                                                                                             $    $  -        $    $  ANS132.BYTE003  $  XY
  $  133.Denominator - reducing agent level out of range diagnosis                                                                                           $    $  -        $    $  ANS133.BYTE003  $  XY
  $  134.Numerator - reducing agent tank sensor signals comparison diagnosis                                                                                 $    $  -        $    $  ANS134.BYTE003  $  XY
  $  135.Denominator - reducing agent tank sensor signals comparison diagnosis                                                                               $    $  -        $    $  ANS135.BYTE003  $  XY
  $  136.Numerator - reducing agent tank sensor not availability diagnosis                                                                                   $    $  -        $    $  ANS136.BYTE003  $  XY
  $  137.Denominator - reducing agent tank sensor not availability diagnosis                                                                                 $    $  -        $    $  ANS137.BYTE003  $  XY
  $  138.Numerator - reducing agent tank sensor not availability diagnosis 1                                                                                 $    $  -        $    $  ANS138.BYTE003  $  XY
  $  139.Denominator - reducing agent tank sensor not availability diagnosis 1                                                                               $    $  -        $    $  ANS139.BYTE003  $  XY
  $  140.Numerator - reducing agent level stuck diagnosis                                                                                                    $    $  -        $    $  ANS140.BYTE003  $  XY
  $  141.Denominator - reducing agent level stuck diagnosis                                                                                                  $    $  -        $    $  ANS141.BYTE003  $  XY
  $  142.Numerator - reducing agent level stuck diagnosis 1                                                                                                  $    $  -        $    $  ANS142.BYTE003  $  XY
  $  143.Denominator - reducing agent level stuck diagnosis 1                                                                                                $    $  -        $    $  ANS143.BYTE003  $  XY
  $  144.Within one driving cycle consumed reducing agent quantity for enviromental data                                                                     $    $  mg       $    $  ANS144.BYTE003  $  XY*16
  $  145.Overall consumed reducing agent quantity with High Resolution                                                                                       $    $  g        $    $  ANS145.BYTE003  $  X1X2X3X4*0.001
  $  146.Volume of the reducing agent pump per stroke filtered and normalized                                                                                $    $  μl      $    $  ANS146.BYTE003  $  XY*0.1


