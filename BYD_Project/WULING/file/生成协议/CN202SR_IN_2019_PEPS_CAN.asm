$~#6$~#14$~500$~749
;******************************************************************************************************************************************************

车型代号:CN202SR_IN
车型:HECTOR
排量:N15T
年份:2019
模块名缩写:PEPS
模块名:无钥匙进入系统
供应商:大陆
诊断代码:CN202SR_IN_2019_PEPS_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:741 02 10 01 00 00 00 00 00          $~          749 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:741 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:741 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:741 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/HECTORDTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:741 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:741 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:741 03 22 F1 8A 00 00 00 00          $%
	$%	REQ001:741 03 22 F1 8B 00 00 00 00          $%
	$%	REQ002:741 03 22 F1 90 00 00 00 00          $%
	$%	REQ003:741 03 22 F1 93 00 00 00 00          $%
	$%	REQ004:741 03 22 F1 95 00 00 00 00          $%
	$%	REQ005:741 03 22 F1 CB 00 00 00 00          $%

  $%  000:Supplier Identifier Information               $%    $%  ANS000.BYTE003  $%  07个字节的ASCII显示
  $%  001:ECUManufacturingDateDataIdentifier            $%    $%  ANS001.BYTE003  $%  04个字节的HEX显示
  $%  002:VIN                                           $%    $%  ANS002.BYTE003  $%  17个字节的ASCII显示
  $%  003:SupplierECUHardwareNumberDataIdentifier       $%    $%  ANS003.BYTE003  $%  04个字节的ASCII显示
  $%  004:SupplierECUSoftwareVersionNumber              $%    $%  ANS004.BYTE003  $%  16个字节的ASCII显示
  $%  005:SGMW P/N                                      $%    $%  ANS005.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

   00.Data flow

	$	REQ000:741 03 22 C0 00 00 00 00 00          $
	$	REQ001:741 03 22 C5 02 00 00 00 00          $
	$	REQ002:741 03 22 C5 04 00 00 00 00          $
	$	REQ003:741 03 22 C5 00 00 00 00 00          $
	$	REQ004:741 03 22 C5 05 00 00 00 00          $
	$	REQ005:741 03 22 C5 03 00 00 00 00          $
	$	REQ006:741 03 22 C5 21 00 00 00 00          $

  $  000.ECU power supply                     $    $  V        $    $  ANS000.BYTE003  $  X*0.1
  $  001.Number of Programmed Keys            $    $  -        $    $  ANS001.BYTE003  $  X
  $  002.Analog_ACC_RLY                       $    $  V        $    $  ANS002.BYTE003  $  X*0.1
  $  003.Analog_IGN1_RLY                      $    $  V        $    $  ANS002.BYTE004  $  X*0.1
  $  004.Analog_IGN2_RLY                      $    $  V        $    $  ANS002.BYTE005  $  X*0.1
  $  005.Analog_ESCL_BAT                      $    $  V        $    $  ANS002.BYTE006  $  X*0.1
  $  006.Analog_ESCL_GND                      $    $  V        $    $  ANS002.BYTE007  $  X*0.1
  $  007.F_WheelSpeed                         $    $  km/h     $    $  ANS002.BYTE008  $  X
  $  008.Analog_ESCL_Enable                   $    $  V        $    $  ANS002.BYTE009  $  X*0.1
  $  009.L_BrakeSW1                           $    $  -        $    $  ANS003.BYTE003  $  if(X1&0x80)y=@0277;else y=@0276;
  $  010.L_SSB_SW2                            $    $  -        $    $  ANS003.BYTE003  $  if(X1&0x20)y=@0279;else y=@0278;
  $  011.L_DRVTogglebutton                    $    $  -        $    $  ANS003.BYTE003  $  if(X1&0x10)y=@0281;else y=@0280;
  $  012.L_TrunkLidSW                         $    $  -        $    $  ANS003.BYTE003  $  if(X1&0x8)y=@0283;else y=@0282;
  $  013.L_ESCL_unlock                        $    $  -        $    $  ANS003.BYTE003  $  if(X1&0x4)y=@0285;else y=@0284;
  $  014.L_ASTToggleButton                    $    $  -        $    $  ANS003.BYTE003  $  if(X1&0x2)y=@0287;else y=@0286;
  $  015.L_SSB_SW1                            $    $  -        $    $  ANS003.BYTE003  $  if(X1&0x1)y=@0289;else y=@0288;
  $  016.L_Clutch_Switch(MT)                  $    $  -        $    $  ANS003.BYTE004  $  if(X1&0x2)y=@0291;else y=@0290;
  $  017.O_IGN3_RLY                           $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x80)y=@0293;else y=@0292;
  $  018.O_ESCL_Enable                        $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x40)y=@0295;else y=@0294;
  $  019.O_ESCL_GND                           $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x20)y=@0297;else y=@0296;
  $  020.O_ESCL_BAT                           $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x10)y=@0299;else y=@0298;
  $  021.O_STARTER_RLY                        $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x8)y=@0301;else y=@0300;
  $  022.O_IGN2_RLY                           $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x4)y=@0303;else y=@0302;
  $  023.O_IGN1_RLY                           $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x2)y=@0305;else y=@0304;
  $  024.O_ACC_RLY                            $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x1)y=@0307;else y=@0306;
  $  025.O_SSB_BKG_PWR(reserve)               $    $  -        $    $  ANS004.BYTE004  $  if(X1&0x4)y=@0309;else y=@0308;
  $  026.O_SSB_LED_ORANGE                     $    $  -        $    $  ANS004.BYTE004  $  if(X1&0x2)y=@0311;else y=@0310;
  $  027.O_SSB_LED_GREEN                      $    $  -        $    $  ANS004.BYTE004  $  if(X1&0x1)y=@0313;else y=@0312;
  $  028.ESCL learning status                 $    $  -        $    $  ANS005.BYTE003  $  if(X1&0x2)y=@0025;else y=@0024;
  $  029.ESK written Status                   $    $  -        $    $  ANS005.BYTE003  $  if(X1&0x1)y=@0027;else y=@0026;
  $  030.PEPS internal ESCL bolt status       $    $  -        $    $  ANS006.BYTE003  $  if(X1&0x2)y=@0315;else y=@0314;
  $  031.ESCL bolt status                     $    $  -        $    $  ANS006.BYTE003  $  if(X1&0x1)y=@0317;else y=@0316;


