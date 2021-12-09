$~#7$~#7$~10400
;******************************************************************************************************************************************************

车型代号:CN112
车型:五菱宏光S
排量:1.5L
年份:2013
模块名缩写:EPS
模块名:电子助力转向系统
供应商:耐斯特
诊断代码:CN112_全系_2013_EPS_K
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

	$#	REQ000: 80 35 F1 02 18 01 C1          $#

				规律:帧长决定故障码个数，$#BYTE02$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#3$#个字节表示码号,后1个字节表示状态位。

				状态位-->当前:-,历史:-,间歇:-

		$*$*DTC/WLHGDTCS


;******************************************************************************************************************************************************
$#读历史故障码

	$#	REQ000: 80 35 F1 02 18 03 C3          $#

				规律:帧长决定故障码个数，$#BYTE02$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#3$#个字节表示码号,后1个字节表示状态位。

				状态位-->当前:-,历史:-,间歇:-

;******************************************************************************************************************************************************
清除故障码

	$$	REQ000: 80 35 F1 04 14 FF FF FF BB          $$

;******************************************************************************************************************************************************
模块信息

	$%	REQ000: 80 35 F1 02 21 80 49          $%

  $%  000:供应商软件版本号       $%    $%  ANS000.BYTE024  $%  02个字节的ASCII显示
  $%  001:零件号                 $%    $%  ANS000.BYTE034  $%  08个字节的ASCII显示

;******************************************************************************************************************************************************
数据流

	$	REQ000: 80 35 F1 02 21 76 3F          $
	$	REQ001: 80 35 F1 02 21 77 40          $

  $  000.供电电压         $    $  V       $    $  ANS000.BYTE002  $  X*0.1+5
  $  001.方向盘角度       $    $  °C     $    $  ANS001.BYTE002  $  XY*0.0625-2048

