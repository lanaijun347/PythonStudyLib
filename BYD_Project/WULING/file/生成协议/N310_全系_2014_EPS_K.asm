$~#7$~#7$~10400
;******************************************************************************************************************************************************

车型代号:N310
车型:五菱荣光S
排量:1.2MCE
年份:2014
模块名缩写:EPS
模块名:电子助力转向模块
供应商:龙润
诊断代码:N310_全系_2014_EPS_K
ECU地址:35
初始化方式:快速初始化
初始化头字节格式:80
其他服务头字节格式:80

;******************************************************************************************************************************************************
激活命令

	$~	REQ000: 80 35 F1 01 81 28          $~           35 F1 01 81 28

;******************************************************************************************************************************************************
退出命令

	$@	REQ000: 80 35 F1 01 82 29          $@

;******************************************************************************************************************************************************
空闲命令

	$!	REQ000: 80 35 F1 02 3E 00 E6          $!

;******************************************************************************************************************************************************
$#读当前故障码

	$#	REQ000: 80 35 F1 04 18 01 FF 00 C2          $#

				规律:帧长决定故障码个数，$#BYTE02$#开始表示故障码，每$#3$#个字节表示一个故障码,前$#2$#个字节表示码号,后1个字节表示状态位。

				状态位-->当前:0x1,历史:0x3,间歇:0x2

		$*$*DTC/WLRGVDTCS


;******************************************************************************************************************************************************
$#读历史故障码

	$#	REQ000: 80 35 F1 04 18 03 FF 00 C4          $#

				规律:帧长决定故障码个数，$#BYTE02$#开始表示故障码，每$#3$#个字节表示一个故障码,前$#2$#个字节表示码号,后1个字节表示状态位。

				状态位-->当前:0x1,历史:0x3,间歇:0x2

;******************************************************************************************************************************************************
清除故障码

	$$	REQ000: 80 35 F1 03 14 FF 00 BC          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000: 80 35 F1 02 11 03 BC          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000: 80 35 F1 02 21 84 4D          $%
	$%	REQ001: 80 35 F1 02 21 85 4E          $%
	$%	REQ002: 80 35 F1 02 21 86 4F          $%
	$%	REQ003: 80 35 F1 02 21 87 50          $%
	$%	REQ004: 80 35 F1 02 21 88 51          $%
	$%	REQ005: 80 35 F1 02 21 89 52          $%
	$%	REQ006: 80 35 F1 02 21 8A 53          $%
	$%	REQ007: 80 35 F1 02 21 8B 54          $%
	$%	REQ008: 80 35 F1 02 21 8C 55          $%
	$%	REQ009: 80 35 F1 02 21 8D 56          $%
	$%	REQ010: 80 35 F1 02 21 8E 57          $%
	$%	REQ011: 80 35 F1 02 21 8F 58          $%
	$%	REQ012: 80 35 F1 02 21 90 59          $%

  $%  000:ECU软件号                 $%    $%  ANS000.BYTE001  $%  10个字节的ASCII显示
  $%  001:SGMW-ECU软件号            $%    $%  ANS001.BYTE011  $%  10个字节的ASCII显示
  $%  002:ECU软件版本               $%    $%  ANS002.BYTE021  $%  02个字节的ASCII显示
  $%  003:供应商ECU软件版本         $%    $%  ANS003.BYTE023  $%  04个字节的ASCII显示
  $%  004:ECU供应商出厂日期         $%    $%  ANS004.BYTE027  $%  X1X2X3X4
  $%  005:SGMW整车出厂日期          $%    $%  ANS005.BYTE031  $%  X1X2X3X4
  $%  006:ECU序列号                 $%    $%  ANS006.BYTE035  $%  20个字节的ASCII显示
  $%  007:SGMW-ECU硬件号            $%    $%  ANS007.BYTE055  $%  10个字节的ASCII显示
  $%  008:供应商ECU硬件号           $%    $%  ANS008.BYTE065  $%  10个字节的ASCII显示
  $%  009:供应商ECU硬件版本号       $%    $%  ANS009.BYTE075  $%  02个字节的ASCII显示
  $%  010:SGMW-ECU硬件版本号        $%    $%  ANS010.BYTE077  $%  02个字节的ASCII显示
  $%  011:SGMW零件号                $%    $%  ANS011.BYTE079  $%  08个字节的ASCII显示
  $%  012:VIN                       $%    $%  ANS012.BYTE087  $%  17个字节的ASCII显示

;******************************************************************************************************************************************************
数据流

	$	REQ000: 80 35 F1 02 21 76 3F          $
	$	REQ001: 80 35 F1 02 21 77 40          $
	$	REQ002: 80 35 F1 02 21 79 42          $

  $  000.EPS供电电压       $    $  V       $    $  ANS000.BYTE002  $  X*0.1+5
  $  001.方向盘角度        $    $  deg     $    $  ANS001.BYTE002  $  XY*0.0625-2048
  $  002.车辆配置          $    $  -       $    $  ANS002.BYTE002  $  if(X1&0x1)y=@0234;else y=@0233;

