$~#6$~#14$~500$~769
;******************************************************************************************************************************************************

车型代号:CN202SR
车型:ALMAZ
排量:N15T
年份:2019
模块名缩写:ICE
模块名:多媒体总成
供应商:华阳电子
诊断代码:CN202SR_2019_ICE_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:761 02 10 01 00 00 00 00 00          $~          769 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:761 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:761 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:761 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/CAPTIVADTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:761 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:761 02 11 03 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:761 03 22 F1 8A 00 00 00 00          $%
	$%	REQ001:761 03 22 F1 8B 00 00 00 00          $%
	$%	REQ002:761 03 22 F1 8C 00 00 00 00          $%
	$%	REQ003:761 03 22 F1 90 00 00 00 00          $%
	$%	REQ004:761 03 22 F1 93 00 00 00 00          $%
	$%	REQ005:761 03 22 F1 95 00 00 00 00          $%
	$%	REQ006:761 03 22 F1 CB 00 00 00 00          $%

  $%  000:Supplier Identifier Information            $%    $%  ANS000.BYTE003  $%  07个字节的ASCII显示
  $%  001:ECUManufacturingDate                       $%    $%  ANS001.BYTE003  $%  04个字节的HEX显示
  $%  002:ECU Serial Number                          $%    $%  ANS002.BYTE003  $%  26个字节的ASCII显示
  $%  003:SGMW VIN                                   $%    $%  ANS003.BYTE003  $%  17个字节的ASCII显示
  $%  004:Supplier ECU Hardware Version Number       $%    $%  ANS004.BYTE003  $%  22个字节的ASCII显示
  $%  005:Supplier ECU Software Version Number       $%    $%  ANS005.BYTE003  $%  26个字节的ASCII显示
  $%  006:SGMW P/N                                   $%    $%  ANS006.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

   00.Data flow

	$	REQ000:761 03 22 61 05 00 00 00 00          $
	$	REQ001:761 03 22 61 06 00 00 00 00          $
	$	REQ002:761 03 22 61 07 00 00 00 00          $
	$	REQ003:761 03 22 61 08 00 00 00 00          $
	$	REQ004:761 03 22 61 0A 00 00 00 00          $
	$	REQ005:761 03 22 61 0B 00 00 00 00          $
	$	REQ006:761 03 22 61 0C 00 00 00 00          $
	$	REQ007:761 03 22 61 0E 00 00 00 00          $
	$	REQ008:761 03 22 61 0F 00 00 00 00          $
	$	REQ009:761 03 22 61 10 00 00 00 00          $
	$	REQ010:761 03 22 61 0D 00 00 00 00          $

  $  000.Vehicle speed                       $    $  Km/h     $    $  ANS000.BYTE003  $  X
  $  001.Igntion KEY position                $    $  -        $    $  ANS001.BYTE003  $  00:Lock		01:ACC		02:RUN		03:START		其他:-
  $  002.AVM system calibration Status       $    $  -        $    $  ANS002.BYTE003  $  00:Calibration is failed		01:Calibration result is saving		02:Calibration is finished (calibration result is saved successfully)		其他:-
  $  003.Reverse switch signal               $    $  -        $    $  ANS003.BYTE003  $  00:inactive		01:active		其他:-
  $  004.Steering Wheel Angle signal         $    $  deg      $    $  ANS004.BYTE003  $  XY*0.0625-2048
  $  005.360DV camera switch status          $    $  -        $    $  ANS005.BYTE003  $  00:inactive		01:active		其他:-
  $  006.Car color                           $    $  -        $    $  ANS006.BYTE003  $  00:Not set		01:Starry black		02:Burgundy red		03:Pearl white		04:Aurora silver		05:Crystal brown		06:Starry blue		其他:-
  $  007.AVM Output View Status              $    $  -        $    $  ANS007.BYTE003  $  00:Exit		01:Open AVM		02:Enter Calibration		03:Update AVM		其他:-
  $  008.Enquiry mode                        $    $  -        $    $  ANS008.BYTE003  $  00:Calibration is failed		01:Calibration result is saving		02:Calibration is finished (calibration result is saved successfully)		其他:-
  $  009.Enquiry AVM vol                     $    $  -        $    $  ANS009.BYTE003  $  X*0.1
  $  010.Front View Dynamic Guides           $    $  -        $    $  ANS010.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  011.Back View Dynamic Guides            $    $  -        $    $  ANS010.BYTE003  $  if(X1&0x40)y=@0009;else y=@0008;


