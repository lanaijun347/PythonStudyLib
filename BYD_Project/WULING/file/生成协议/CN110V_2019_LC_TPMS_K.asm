$~#7$~#7$~10400
;******************************************************************************************************************************************************

车型代号:CN110V
车型:五菱宏光
排量:1.2L
年份:2019
模块名缩写:TPMS
模块名:胎压模块
供应商:保隆、联创
诊断代码:CN110V_2019_TPMS_K
ECU地址:C0
初始化方式:快速初始化
初始化头字节格式:8X
其他服务头字节格式:8X

;******************************************************************************************************************************************************
激活命令

	$~	REQ000: 81 C0 F1 81 B3          $~           C0 F1 81 B3

;******************************************************************************************************************************************************
退出命令

	$@	REQ000: 81 C0 F1 82 B4          $@

;******************************************************************************************************************************************************
空闲命令

	$!	REQ000: 82 C0 F1 3E 00 71          $!

;******************************************************************************************************************************************************
$#读当前故障码

	$#	REQ000: 84 C0 F1 18 00 FF 00 4C          $#

				规律:帧长决定故障码个数，$#BYTE02$#开始表示故障码，每$#3$#个字节表示一个故障码,前$#2$#个字节表示码号,后1个字节表示状态位。

				状态位-->当前:0x20,历史:0x0,间歇:-

		$*$*DTC/WLHGVDTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000: 83 C0 F1 14 FF 00 47          $$

;******************************************************************************************************************************************************
模块信息

	$%	REQ000: 82 C0 F1 21 90 E4          $%
	$%	REQ001: 82 C0 F1 21 92 E6          $%
	$%	REQ002: 82 C0 F1 21 93 E7          $%
	$%	REQ003: 82 C0 F1 21 94 E8          $%
	$%	REQ004: 82 C0 F1 21 95 E9          $%
	$%	REQ005: 82 C0 F1 21 B2 06          $%
	$%	REQ006: 82 C0 F1 21 CB 1F          $%

  $%  000:VIN码               $%    $%  ANS000.BYTE002  $%  17个字节的ASCII显示
  $%  001:ECU硬件号           $%    $%  ANS001.BYTE002  $%  10个字节的ASCII显示
  $%  002:ECU硬件版本号       $%    $%  ANS002.BYTE002  $%  01个字节的ASCII显示
  $%  003:ECU软件号           $%    $%  ANS003.BYTE002  $%  10个字节的ASCII显示
  $%  004:ECU软件版本号       $%    $%  ANS004.BYTE002  $%  01个字节的ASCII显示
  $%  005:制造日期            $%    $%  ANS005.BYTE002  $%  04个字节的HEX显示
  $%  006:零件号              $%    $%  ANS006.BYTE002  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

	$	REQ000: 82 C0 F1 21 D0 24          $
	$	REQ001: 82 C0 F1 21 D1 25          $
	$	REQ002: 82 C0 F1 21 D2 26          $
	$	REQ003: 82 C0 F1 21 D3 27          $
	$	REQ004: 82 C0 F1 21 D6 2A          $

  $  000.左前传感器ID           $    $  -       $    $  ANS000.BYTE002  $  04个字节的HEX显示
  $  001.右前传感器ID           $    $  -       $    $  ANS000.BYTE006  $  04个字节的HEX显示
  $  002.左后传感器ID           $    $  -       $    $  ANS000.BYTE010  $  04个字节的HEX显示
  $  003.右后传感器ID           $    $  -       $    $  ANS000.BYTE014  $  04个字节的HEX显示
  $  004.左前胎压压力           $    $  Kpa     $    $  ANS001.BYTE002  $  01个字节的HEX显示
  $  005.右前胎压压力           $    $  Kpa     $    $  ANS001.BYTE003  $  01个字节的HEX显示
  $  006.左后胎压压力           $    $  Kpa     $    $  ANS001.BYTE004  $  01个字节的HEX显示
  $  007.右后胎压压力           $    $  Kpa     $    $  ANS001.BYTE005  $  01个字节的HEX显示
  $  008.左前胎压温度           $    $  ℃      $    $  ANS002.BYTE002  $  01个字节的HEX显示
  $  009.右前胎压温度           $    $  ℃      $    $  ANS002.BYTE002  $  01个字节的HEX显示
  $  010.左后胎压温度           $    $  ℃      $    $  ANS002.BYTE002  $  01个字节的HEX显示
  $  011.右后胎压温度           $    $  ℃      $    $  ANS002.BYTE002  $  01个字节的HEX显示
  $  012.前胎压压力标准值       $    $  Kpa     $    $  ANS003.BYTE002  $  01个字节的HEX显示
  $  013.后胎压压力标准值       $    $  Kpa     $    $  ANS003.BYTE003  $  01个字节的HEX显示
  $  014.ECU输入电压            $    $  V       $    $  ANS004.BYTE002  $  02个字节的HEX显示

