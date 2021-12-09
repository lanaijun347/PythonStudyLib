$~#6$~#14$~500$~708
;******************************************************************************************************************************************************

车型代号:CN210S
车型:宝骏560
排量:N15T
年份:2018
模块名缩写:AGS
模块名:主动进气格栅
供应商:天津博顿
诊断代码:CN210S_2018_AGS_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:700 02 10 01 00 00 00 00 00          $~          708 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:700 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:700 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:700 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/RS-5DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:700 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:700 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:700 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:700 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:700 03 22 F1 CB 00 00 00 00          $%
	$%	REQ003:700 03 22 F1 93 00 00 00 00          $%
	$%	REQ004:700 03 22 F1 95 00 00 00 00          $%
	$%	REQ005:700 03 22 F1 8A 00 00 00 00          $%

  $%  000:ECU生产日期          $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN                  $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:零件号               $%    $%  ANS002.BYTE003  $%  X1X2X3X4
  $%  003:ECU硬件版本号        $%    $%  ANS003.BYTE003  $%  07个字节的ASCII显示
  $%  004:ECU软件版本号        $%    $%  ANS004.BYTE003  $%  07个字节的ASCII显示
  $%  005:供应商标识信息       $%    $%  ANS005.BYTE003  $%  07个字节的ASCII显示

;******************************************************************************************************************************************************
数据流

   00.所有数据

	$	REQ000:700 03 22 18 00 00 00 00 00          $
	$	REQ001:700 03 22 18 01 00 00 00 00          $
	$	REQ002:700 03 22 18 02 00 00 00 00          $

  $  000.供电电压           $    $  V     $    $  ANS000.BYTE003  $  X*0.1
  $  001.电机闭度状态       $    $  %     $    $  ANS001.BYTE003  $  X
  $  002.电机扭矩状态       $    $  -     $    $  ANS001.BYTE004  $  00:正常扭矩模式		02:低扭矩模式		04: Boost 模式		05: Boost 模式1		其他:-
  $  003.期望的位置         $    $  %     $    $  ANS002.BYTE003  $  X


