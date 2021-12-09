$~#6$~#14$~500$~729
;******************************************************************************************************************************************************

车型代号:CN180S
车型:宝骏510
排量:1.5L
年份:2016
模块名缩写:TPMS
模块名:胎压监测系统
供应商:保隆
诊断代码:CN180S_2016_TPMS_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:721 02 10 01 00 00 00 00 00          $~          729 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:721 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:721 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:721 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/BJ310WDTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:721 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:721 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:721 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:721 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:721 03 22 F1 CB 00 00 00 00          $%

  $%  000:ECU生产日期       $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN               $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:零件号            $%    $%  ANS002.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

 $ 00.传感器ID

	$	REQ000:721 03 22 2C 02 00 00 00 00          $

  $  000.左前胎压传感器ID       $    $  -     $    $  ANS000.BYTE003  $  04个字节的HEX显示
  $  001.右前胎压传感器ID       $    $  -     $    $  ANS000.BYTE007  $  04个字节的HEX显示
  $  002.左后胎压传感器ID       $    $  -     $    $  ANS000.BYTE011  $  04个字节的HEX显示
  $  003.右后胎压传感器ID       $    $  -     $    $  ANS000.BYTE015  $  04个字节的HEX显示

 $ 01.胎压和胎温

	$	REQ000:721 03 22 2C 03 00 00 00 00          $
	$	REQ001:721 03 22 2C 04 00 00 00 00          $

  $  000.左前轮胎气压       $    $  kPa     $    $  ANS000.BYTE003  $  X*1.38
  $  001.右前轮胎气压       $    $  kPa     $    $  ANS000.BYTE004  $  X*1.38
  $  002.左后轮胎气压       $    $  kPa     $    $  ANS000.BYTE005  $  X*1.38
  $  003.右后轮胎气压       $    $  kPa     $    $  ANS000.BYTE006  $  X*1.38
  $  004.左前轮胎温度       $    $  ℃      $    $  ANS001.BYTE003  $  X*0.65-40
  $  005.右前轮胎温度       $    $  ℃      $    $  ANS001.BYTE004  $  X*0.65-40
  $  006.左后轮胎温度       $    $  ℃      $    $  ANS001.BYTE005  $  X*0.65-40
  $  007.右后轮胎温度       $    $  ℃      $    $  ANS001.BYTE006  $  X*0.65-40


