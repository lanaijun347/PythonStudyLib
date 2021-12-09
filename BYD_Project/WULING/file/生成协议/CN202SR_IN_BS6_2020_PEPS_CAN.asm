$~#6$~#14$~500$~749
;******************************************************************************************************************************************************

车型代号:CN202SR_IN
车型:HECTOR
排量:N15T
年份:2019
模块名缩写:PEPS
模块名:无钥匙进入系统
供应商:大陆
诊断代码:CN202SR_IN_BS6_2020_PEPS_CAN

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
	$%	REQ006:741 03 22 F1 88 00 00 00 00          $%
	$%	REQ007:741 03 22 F1 91 00 00 00 00          $%

  $%  000:Supplier Identifier Information       $%    $%  ANS000.BYTE003  $%  07个字节的ASCII显示
  $%  001:ECUManufacturingDate                  $%    $%  ANS001.BYTE003  $%  04个字节的HEX显示
  $%  002:VIN                                   $%    $%  ANS002.BYTE003  $%  17个字节的ASCII显示
  $%  003:ECU Hardware Version Number           $%    $%  ANS003.BYTE003  $%  04个字节的ASCII显示
  $%  004:ECU Software Version Number           $%    $%  ANS004.BYTE003  $%  16个字节的ASCII显示
  $%  005:SGMW P/N                              $%    $%  ANS005.BYTE003  $%  X1X2X3X4
  $%  006:SGMW ECU Software Number              $%    $%  ANS006.BYTE003  $%  X1X2X3X4
  $%  007:SGMW ECU Hardware Number              $%    $%  ANS007.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

   00.Data flow

	$	REQ000:741 03 22 C0 00 00 00 00 00          $
	$	REQ001:741 03 22 C5 02 00 00 00 00          $
	$	REQ002:741 03 22 C5 04 00 00 00 00          $
	$	REQ003:741 03 22 C5 03 00 00 00 00          $
	$	REQ004:741 03 22 C5 24 00 00 00 00          $
	$	REQ005:741 03 22 C5 25 00 00 00 00          $
	$	REQ006:741 03 22 C5 26 00 00 00 00          $
	$	REQ007:741 03 22 C5 30 00 00 00 00          $
	$	REQ008:741 03 22 C5 00 00 00 00 00          $
	$	REQ009:741 03 22 C5 05 00 00 00 00          $

  $  000.ECU power supply                                          $    $  V      $    $  ANS000.BYTE003  $  X*0.1
  $  001.Number of Programmed Keys                                 $    $  -      $    $  ANS001.BYTE003  $  X
  $  002.Analog_ACC_RLY                                            $    $  V      $    $  ANS002.BYTE003  $  X*0.1
  $  003.Analog_IGN1_RLY                                           $    $  V      $    $  ANS002.BYTE004  $  X*0.1
  $  004.Analog_IGN2_RLY                                           $    $  V      $    $  ANS002.BYTE005  $  X*0.1
  $  005.ESK Written or Erase fail reason（Only LV3 5 seats)       $    $  -      $    $  ANS003.BYTE005  $  00:No fail		01:Received ESK not matched with stored		02:Erased internal learning data failed		03:Update learning status failed		04:Erase ESK failed		其他:-
  $  006.ESCL Option（Only LV3 5 seats)                            $    $  -      $    $  ANS004.BYTE003  $  55:SYstem with ESCL		AA:SYstem without ESCL		其他:-
  $  007.cfgPostLFBlankingTime（Only LV3 5 seats)                  $    $  ms     $    $  ANS005.BYTE003  $  X*10
  $  008.Calib_WELLightOnTime（Only LV3 5 seats)                   $    $  ms     $    $  ANS006.BYTE003  $  X*10
  $  009.configure Blanking Enable Option（Only LV3 5 seats)       $    $  -      $    $  ANS007.BYTE003  $  00:no blanking time		01:enable blanking for only Unlock		02:enable blanking for only Lock		03:enable blanking for unlock and lock		其他:-
  $  010.L_BrakeSW1                                                $    $  -      $    $  ANS008.BYTE003  $  if(X1&0x80)y=@0277;else y=@0276;
  $  011.L_AST_Unlock                                              $    $  -      $    $  ANS008.BYTE003  $  if(X1&0x40)y=@0336;else y=@0335;
  $  012.L_SSB_SW2                                                 $    $  -      $    $  ANS008.BYTE003  $  if(X1&0x20)y=@0279;else y=@0278;
  $  013.L_DRV_Unlock                                              $    $  -      $    $  ANS008.BYTE003  $  if(X1&0x10)y=@0338;else y=@0337;
  $  014.L_TrunkLidSW                                              $    $  -      $    $  ANS008.BYTE003  $  if(X1&0x8)y=@0283;else y=@0282;
  $  015.L_DRV_Lock                                                $    $  -      $    $  ANS008.BYTE003  $  if(X1&0x4)y=@0340;else y=@0339;
  $  016.L_AST_Lock                                                $    $  -      $    $  ANS008.BYTE003  $  if(X1&0x2)y=@0342;else y=@0341;
  $  017.L_SSB_SW1                                                 $    $  -      $    $  ANS008.BYTE003  $  if(X1&0x1)y=@0289;else y=@0288;
  $  018.L_Clutch_Switch(MT)                                       $    $  -      $    $  ANS008.BYTE004  $  if(X1&0x2)y=@0291;else y=@0290;
  $  019.O_STARTER_RLY                                             $    $  -      $    $  ANS009.BYTE003  $  if(X1&0x8)y=@0301;else y=@0300;
  $  020.O_IGN2_RLY                                                $    $  -      $    $  ANS009.BYTE003  $  if(X1&0x4)y=@0303;else y=@0302;
  $  021.O_IGN1_RLY                                                $    $  -      $    $  ANS009.BYTE003  $  if(X1&0x2)y=@0305;else y=@0304;
  $  022.O_ACC_RLY                                                 $    $  -      $    $  ANS009.BYTE003  $  if(X1&0x1)y=@0307;else y=@0306;
  $  023.O_WPC_Mute                                                $    $  -      $    $  ANS009.BYTE004  $  if(X1&0x8)y=@0344;else y=@0343;
  $  024.O_SSB_BKG_PWR                                             $    $  -      $    $  ANS009.BYTE004  $  if(X1&0x4)y=@0309;else y=@0308;
  $  025.O_SSB_LED_ORANGE                                          $    $  -      $    $  ANS009.BYTE004  $  if(X1&0x2)y=@0311;else y=@0310;
  $  026.O_SSB_LED_GREEN                                           $    $  -      $    $  ANS009.BYTE004  $  if(X1&0x1)y=@0313;else y=@0312;
  $  027.ESCL learning status                                      $    $  -      $    $  ANS003.BYTE003  $  if(X1&0x2)y=@0025;else y=@0024;
  $  028.ESK written Status                                        $    $  -      $    $  ANS003.BYTE003  $  if(X1&0x1)y=@0027;else y=@0026;


