$~#6$~#14$~500$~738
;******************************************************************************************************************************************************

车型代号:CN180MR
车型:CN210MR
排量:1.5L
年份:2016
模块名缩写:SDM
模块名:安全气囊模块
供应商:大陆
诊断代码:CN210MR_SDM_LV8_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:730 02 10 01 00 00 00 00 00          $~          738 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:730 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:730 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:730 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/CORTEZDTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:730 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:730 02 11 03 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:730 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:730 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:730 03 22 F1 93 00 00 00 00          $%
	$%	REQ003:730 03 22 F1 95 00 00 00 00          $%
	$%	REQ004:730 03 22 F1 CB 00 00 00 00          $%

  $%  000:ECUManufacturingDate                $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN                                 $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:Supplier ECU Hardware Number        $%    $%  ANS002.BYTE003  $%  02个字节的HEX显示
  $%  003:Supplier ECU Software Number        $%    $%  ANS003.BYTE003  $%  02个字节的HEX显示
  $%  004:EndModelPartNumber (SGMW P/N)       $%    $%  ANS004.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

 $ 00.Airbag value

	$	REQ000:730 03 22 51 00 00 00 00 00          $
	$	REQ001:730 03 22 51 01 00 00 00 00          $

  $  000.Front Airbag Driver value                          $    $  Ohm     $    $  ANS000.BYTE004  $  X*0.256
  $  001.Front Airbag Passenger value                       $    $  Ohm     $    $  ANS000.BYTE006  $  X*0.256
  $  002.Front Side Airbag Driver                           $    $  Ohm     $    $  ANS000.BYTE008  $  X*0.256
  $  003.Front Side Airbag Passenger                        $    $  Ohm     $    $  ANS000.BYTE010  $  X*0.256
  $  004.he second row on the left side Airbag value        $    $  Ohm     $    $  ANS000.BYTE012  $  X*0.256
  $  005.he second row on the right side Airbag value       $    $  Ohm     $    $  ANS000.BYTE014  $  X*0.256
  $  006.Front Airbag belt preloaded Driver value           $    $  Ohm     $    $  ANS000.BYTE016  $  X*0.256
  $  007.Front Airbag belt preloaded Passenger value        $    $  Ohm     $    $  ANS000.BYTE018  $  X*0.256
  $  008.Battery voltage                                    $    $  V       $    $  ANS001.BYTE006  $  X*0.256
  $  009.Energy reserve voltage                             $    $  V       $    $  ANS001.BYTE007  $  X*0.256
  $  010.Ignition Cycle counter                             $    $  -       $    $  ANS001.BYTE008  $  X1X2X3X4

 $ 01.Real-time Data

	$	REQ000:730 03 22 51 01 00 00 00 00          $

  $  000.Buckle Switch Driver real time status                       $    $  -     $    $  ANS000.BYTE003  $  X&60		00:Existing defect		20:In good condition		40:not configured		60:-		
  $  001.The driver seat belts                                       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x10)y=@0004;else y=@0003;
  $  002.Buckle Switch Passenger  real time status  Configured       $    $  -     $    $  ANS000.BYTE003  $  X&06		00:Existing defect		02:In good condition		04:not configured		06:-		
  $  003.The Passenger seat belts                                    $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x1)y=@0004;else y=@0003;
  $  004.Buckle Switch Passenger real time status  Configured        $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x2)y=@0005;else y=@0002;
  $  005.Buckle Switch Passenger real time status  to take           $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x1)y=@0257;else y=@0256;
  $  006.PADS Switch status Configured                               $    $  -     $    $  ANS000.BYTE005  $  X&06		00:Existing defect		02:In good condition		04:not configured		06:-		
  $  007.PADS Switch status Configured Activated                     $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x1)y=@0259;else y=@0258;


