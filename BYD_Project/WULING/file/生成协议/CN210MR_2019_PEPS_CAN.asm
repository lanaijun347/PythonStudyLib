$~#6$~#14$~500$~749
;******************************************************************************************************************************************************

车型代号:CN210MR
车型:Cortez
排量:B15D
年份:2019
模块名缩写:PEPS
模块名:无钥匙进入系统
供应商:大陆
诊断代码:CN210MR_2019_PEPS_CAN

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

		$*$*DTC/CORTEZDTCS


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

  $%  000:Supplier Identifier Information            $%    $%  ANS000.BYTE003  $%  07个字节的ASCII显示
  $%  001:ECUManufacturingDate                       $%    $%  ANS001.BYTE003  $%  04个字节的HEX显示
  $%  002:VIN                                        $%    $%  ANS002.BYTE003  $%  17个字节的ASCII显示
  $%  003:Supplier ECU Hardware Version Number       $%    $%  ANS003.BYTE003  $%  04个字节的ASCII显示
  $%  004:Supplier ECU Software Version Number       $%    $%  ANS004.BYTE003  $%  16个字节的ASCII显示
  $%  005:PartNumber                                 $%    $%  ANS005.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

   00.数据流

	$	REQ000:741 03 22 C0 00 00 00 00 00          $
	$	REQ001:741 03 22 C5 02 00 00 00 00          $
	$	REQ002:741 03 22 C5 04 00 00 00 00          $
	$	REQ003:741 03 22 C5 00 00 00 00 00          $
	$	REQ004:741 03 22 C5 05 00 00 00 00          $
	$	REQ005:741 03 22 C5 03 00 00 00 00          $
	$	REQ006:741 03 22 C5 21 00 00 00 00          $

  $  000.ECU power supply                                   $    $  V        $    $  ANS000.BYTE003  $  X*0.1
  $  001.Number of Programmed Keys                          $    $  -        $    $  ANS001.BYTE003  $  X
  $  002.ACC Relay Feedback Voltage                         $    $  V        $    $  ANS002.BYTE003  $  X*0.1
  $  003.IGN1 Relay Feedback Voltage                        $    $  V        $    $  ANS002.BYTE004  $  X*0.1
  $  004.IGN2 Relay Feedback Voltage                        $    $  V        $    $  ANS002.BYTE005  $  X*0.1
  $  005.ESCL power supply Voltage                          $    $  V        $    $  ANS002.BYTE006  $  X*0.1
  $  006.ESCL Ground Voltage                                $    $  V        $    $  ANS002.BYTE007  $  X*0.1
  $  007.FR_WheelSpeed                                      $    $  km/h     $    $  ANS002.BYTE008  $  X
  $  008.ESCL enable line Voltage                           $    $  V        $    $  ANS002.BYTE009  $  X*0.1
  $  009.Stop lamp input                                    $    $  -        $    $  ANS003.BYTE003  $  if(X1&0x80)y=@0015;else y=@0014;
  $  010.ssb input line2                                    $    $  -        $    $  ANS003.BYTE003  $  if(X1&0x20)y=@0015;else y=@0014;
  $  011.Toggle button from driver door side                $    $  -        $    $  ANS003.BYTE003  $  if(X1&0x10)y=@0015;else y=@0014;
  $  012.tailgate lid switch input                          $    $  -        $    $  ANS003.BYTE003  $  if(X1&0x8)y=@0015;else y=@0014;
  $  013.ESCL unlock status                                 $    $  -        $    $  ANS003.BYTE003  $  if(X1&0x4)y=@0015;else y=@0014;
  $  014.Toggle button input from assistant door side       $    $  -        $    $  ANS003.BYTE003  $  if(X1&0x2)y=@0015;else y=@0014;
  $  015.ssb input line1                                    $    $  -        $    $  ANS003.BYTE003  $  if(X1&0x1)y=@0015;else y=@0014;
  $  016.Clutch_Switch                                      $    $  -        $    $  ANS003.BYTE004  $  if(X1&0x2)y=@0015;else y=@0014;
  $  017.DCU relay control output state                     $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x80)y=@0015;else y=@0014;
  $  018.ESCL Enable control output                         $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x40)y=@0015;else y=@0014;
  $  019.ESCL GND control output                            $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x20)y=@0015;else y=@0014;
  $  020.ESCL PWR control output                            $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x10)y=@0015;else y=@0014;
  $  021.Startor control output                             $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x8)y=@0015;else y=@0014;
  $  022.IGN2 control output                                $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x4)y=@0015;else y=@0014;
  $  023.IGN1 control output                                $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x2)y=@0015;else y=@0014;
  $  024.ACC control output                                 $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x1)y=@0015;else y=@0014;
  $  025.SSB LED background power control output            $    $  -        $    $  ANS004.BYTE004  $  if(X1&0x4)y=@0015;else y=@0014;
  $  026.SSB Orange LED control output                      $    $  -        $    $  ANS004.BYTE004  $  if(X1&0x2)y=@0015;else y=@0014;
  $  027.SSB green LED control output                       $    $  -        $    $  ANS004.BYTE004  $  if(X1&0x1)y=@0015;else y=@0014;
  $  028.SecretKey Programming Status-ESCL                  $    $  -        $    $  ANS005.BYTE003  $  if(X1&0x2)y=@0025;else y=@0024;
  $  029.SecretKey Programming Status-ESK                   $    $  -        $    $  ANS005.BYTE003  $  if(X1&0x1)y=@0027;else y=@0026;
  $  030.ESCL bolt status（PEPS internal）                  $    $  -        $    $  ANS006.BYTE003  $  if(X1&0x2)y=@0029;else y=@0028;
  $  031.ESCL bolt status（ESCL internal）                  $    $  -        $    $  ANS006.BYTE003  $  if(X1&0x1)y=@0029;else y=@0028;


