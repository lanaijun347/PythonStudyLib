$~#6$~#14$~500$~758
;******************************************************************************************************************************************************

车型代号:CN200S
车型:宝骏560
排量:1.8L
年份:2015
模块名缩写:EPS
模块名:电子助力转向
供应商:耐斯特
诊断代码:CN200S_1.8L_2015_EPS_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:750 02 10 01 00 00 00 00 00          $~          758 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:750 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:750 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:750 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/ALLDTCCODE


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:750 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:750 02 11 03 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:750 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:750 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:750 03 22 F1 92 00 00 00 00          $%
	$%	REQ003:750 03 22 F1 94 00 00 00 00          $%
	$%	REQ004:750 03 22 F1 CB 00 00 00 00          $%

  $%  000:ECUManufacturingDate               $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN                                $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:Supplier ECU Hardware Number       $%    $%  ANS002.BYTE003  $%  08个字节的ASCII显示
  $%  003:Supplier ECU Software Number       $%    $%  ANS003.BYTE003  $%  19个字节的ASCII显示
  $%  004:SGMW P/N                           $%    $%  ANS004.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

   00.EPS DATA

	$	REQ000:750 03 22 30 01 00 00 00 00          $
	$	REQ001:750 03 22 30 02 00 00 00 00          $
	$	REQ002:750 03 22 30 03 00 00 00 00          $
	$	REQ003:750 03 22 30 04 00 00 00 00          $
	$	REQ004:750 03 22 30 05 00 00 00 00          $

  $  000.EPS Supply Voltage                 $    $  V       $    $  ANS000.BYTE004  $  X*0.1+5
  $  001.Active Steering Wheel Angle        $    $  deg     $    $  ANS001.BYTE004  $  XY*0.0625-2048
  $  002.ECU Internal Temp                  $    $  ℃      $    $  ANS002.BYTE004  $  X*1-40
  $  003.Steering Input Torque              $    $  N.m     $    $  ANS003.BYTE004  $  XY*0.0039062-128
  $  004.Vehicle Speed Validity             $    $  -       $    $  ANS004.BYTE003  $  if(X1&0x80)y=@0018;else y=@0017;
  $  005.EPS Calibration Complete           $    $  -       $    $  ANS004.BYTE003  $  if(X1&0x40)y=@0020;else y=@0019;
  $  006.EPS Setup Procedure Complete       $    $  -       $    $  ANS004.BYTE003  $  if(X1&0x20)y=@0020;else y=@0019;
  $  007.EPS Mechanical Center Found        $    $  -       $    $  ANS004.BYTE003  $  if(X1&0x10)y=@0020;else y=@0019;
  $  008.EPS Center Value Stored            $    $  -       $    $  ANS004.BYTE003  $  if(X1&0x8)y=@0020;else y=@0019;


