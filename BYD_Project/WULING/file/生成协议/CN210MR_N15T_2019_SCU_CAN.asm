$~#6$~#14$~500$~709
;******************************************************************************************************************************************************

车型代号:CN210MR
车型:Cortez
排量:B15D
年份:2019
模块名缩写:SCU
模块名:换挡杆控制模块
供应商:重庆御捷
诊断代码:CN210MR_N15T_2019_SCU_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:701 02 10 01 00 00 00 00 00          $~          709 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:701 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:701 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:701 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/CORTEZDTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:701 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:701 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:701 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:701 03 22 F1 8A 00 00 00 00          $%
	$%	REQ002:701 03 22 F1 90 00 00 00 00          $%
	$%	REQ003:701 03 22 F1 93 00 00 00 00          $%
	$%	REQ004:701 03 22 F1 95 00 00 00 00          $%
	$%	REQ005:701 03 22 F1 CB 00 00 00 00          $%

  $%  000:ECUManufacturingDate                       $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:Supplier Identifier Information            $%    $%  ANS001.BYTE003  $%  07个字节的ASCII显示
  $%  002:VIN                                        $%    $%  ANS002.BYTE003  $%  17个字节的ASCII显示
  $%  003:Supplier ECU Hardware Version Number       $%    $%  ANS003.BYTE003  $%  11个字节的ASCII显示
  $%  004:Supplier ECU Software Version Number       $%    $%  ANS004.BYTE003  $%  11个字节的ASCII显示
  $%  005:SGMW P/N                                   $%    $%  ANS005.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

   00.Data flow

	$	REQ000:701 03 22 10 00 00 00 00 00          $
	$	REQ001:701 03 22 01 00 00 00 00 00          $
	$	REQ002:701 03 22 21 02 00 00 00 00          $
	$	REQ003:701 03 22 11 10 00 00 00 00          $
	$	REQ004:701 03 22 11 20 00 00 00 00          $

  $  000.Power Voltage                   $    $  V     $    $  ANS000.BYTE003  $  X*0.1
  $  001.DriveMode                       $    $  -     $    $  ANS001.BYTE003  $  00:Not Indication		01:Economy mode		02:Sport mode		03:Winter mode		其他:-
  $  002.GearforDisp                     $    $  -     $    $  ANS002.BYTE003  $  00:Gear_Invalid		01:Gear_P		02:Gear_R		03:Gear_N		04:Gear_D		05:Gear_M		06:Gear_S		其他:-
  $  003.backlight voltage sensing       $    $  V     $    $  ANS003.BYTE003  $  X*0.1
  $  004.highlight voltage sensing       $    $  V     $    $  ANS004.BYTE003  $  X*0.1


