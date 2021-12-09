$~#7$~#7$~10400
<VCI>
	<ACTIVE_ADDNODE type="0" num="0">
		<param type="string" value="1,1"/> 
		<param type="string" value="13"/>
	</ACTIVE_ADDNODE>
</VCI>

车型代号:CN100
车型:五菱宏光
排量:1.5L
年份:2011
模块名缩写:SDM
模块名:防抱死刹车系统
供应商:奥托立夫
诊断代码:CN100_全系_2011_SDM_K
ECU地址:58
初始化方式:快速初始化
初始化头字节格式:80
其他服务头字节格式:80

;******************************************************************************************************************************************************
激活命令

	$~	REQ000: 80 58 F1 01 81 4B          $~           58 F1 01 81 4B

;******************************************************************************************************************************************************
退出命令

	$@	REQ000: 80 58 F1 01 82 4C          $@

;******************************************************************************************************************************************************
空闲命令

	$!	REQ000: 80 58 F1 01 3E 08          $!

;******************************************************************************************************************************************************
$#读当前故障码

	$#	REQ000: 80 58 F1 04 18 10 FF 00 F4          $#

				规律:帧长决定故障码个数，$#BYTE01$#开始表示故障码，每$#3$#个字节表示一个故障码,前$#2$#个字节表示码号,后1个字节表示状态位。

				状态位-->当前:-,历史:-,间歇:-

		$*$*DTC/WLHGDTCS


;******************************************************************************************************************************************************
$#读历史故障码

	$#	REQ000: 80 58 F1 04 18 20 FF 00 04          $#

				规律:帧长决定故障码个数，$#BYTE01$#开始表示故障码，每$#3$#个字节表示一个故障码,前$#2$#个字节表示码号,后1个字节表示状态位。

				状态位-->当前:-,历史:-,间歇:-

;******************************************************************************************************************************************************
清除故障码

	$$	REQ000: 80 58 F1 03 14 FF 00 DF          $$

;******************************************************************************************************************************************************
模块信息

	$%	REQ000: 80 58 F1 02 21 8A 76          $%
	$%	REQ001: 80 58 F1 02 21 8B 77          $%
	$%	REQ002: 80 58 F1 02 21 8C 78          $%
	$%	REQ003: 80 58 F1 02 21 8D 79          $%
	$%	REQ004: 80 58 F1 02 21 8E 7A          $%

  $%  000:零件号         $%    $%  ANS000.BYTE002  $%  17个字节的ASCII显示
  $%  001:ACU信息1       $%    $%  ANS001.BYTE002  $%  17个字节的ASCII显示
  $%  002:ACU信息2       $%    $%  ANS002.BYTE002  $%  17个字节的ASCII显示
  $%  003:ACU信息3       $%    $%  ANS003.BYTE002  $%  17个字节的ASCII显示
  $%  004:配置信息       $%    $%  ANS004.BYTE002  $%  17个字节的ASCII显示

;******************************************************************************************************************************************************
数据流

	$	REQ000: 80 58 F1 02 21 08 F4          $

  $  000.电池电压                       $    $  V       $    $  ANS000.BYTE011  $  X*0.078431
  $  001.主驾驶安全气囊点爆电阻         $    $  ohm     $    $  ANS000.BYTE016  $  X*0.0294117647058824
  $  002.副驾驶安全气囊点爆电阻         $    $  ohm     $    $  ANS000.BYTE017  $  X*0.0294117647058824
  $  003.主驾驶安全带预紧点爆电阻       $    $  ohm     $    $  ANS000.BYTE018  $  X*0.0294117647058824
  $  004.副驾驶安全带预紧点爆电阻       $    $  ohm     $    $  ANS000.BYTE019  $  X*0.0294117647058824
  $  005.主驾驶侧边气囊点爆电阻         $    $  ohm     $    $  ANS000.BYTE020  $  X*0.0294117647058824
  $  006.副驾驶侧边气囊点爆电阻         $    $  ohm     $    $  ANS000.BYTE021  $  X*0.0294117647058824
  $  007.主驾驶气帘点爆电阻             $    $  ohm     $    $  ANS000.BYTE022  $  X*0.0294117647058824
  $  008.副驾驶气帘点爆电阻             $    $  ohm     $    $  ANS000.BYTE023  $  X*0.0294117647058824

