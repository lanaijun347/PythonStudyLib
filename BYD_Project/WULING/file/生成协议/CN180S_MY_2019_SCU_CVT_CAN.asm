$~#6$~#14$~500$~709
;******************************************************************************************************************************************************

车型代号:CN210M
车型:宝骏730
排量:CVT
年份:2019
模块名缩写:SCU
模块名:换挡杆控制模块
供应商:重庆御捷
诊断代码:CN210M_2019_SCU_CVT_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:701 02 10 01 00 00 00 00 00          $~          709 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:701 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:701 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:701 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/BJ510DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:701 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:701 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:701 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:701 03 22 F1 8A 00 00 00 00          $%
	$%	REQ002:701 03 22 F1 90 00 00 00 00          $%
	$%	REQ003:701 03 22 F1 93 00 00 00 00          $%
	$%	REQ004:701 03 22 F1 95 00 00 00 00          $%
	$%	REQ005:701 03 22 F1 CB 00 00 00 00          $%

  $%  000:ECU生产日期       $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:供应商代码        $%    $%  ANS001.BYTE003  $%  07个字节的ASCII显示
  $%  002:VIN码             $%    $%  ANS002.BYTE003  $%  17个字节的ASCII显示
  $%  003:硬件版本号        $%    $%  ANS003.BYTE003  $%  11个字节的ASCII显示
  $%  004:软件版本号        $%    $%  ANS004.BYTE003  $%  11个字节的ASCII显示
  $%  005:零件号            $%    $%  ANS005.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

   00.换挡杆数据流

	$	REQ000:701 03 22 01 10 00 00 00 00          $
	$	REQ001:701 03 22 02 00 00 00 00 00          $
	$	REQ002:701 03 22 02 01 00 00 00 00          $
	$	REQ003:701 03 22 10 00 00 00 00 00          $
	$	REQ004:701 03 22 01 00 00 00 00 00          $
	$	REQ005:701 03 22 21 02 00 00 00 00          $
	$	REQ006:701 03 22 11 10 00 00 00 00          $
	$	REQ007:701 03 22 11 20 00 00 00 00          $

  $  000.工厂模式             $    $  -     $    $  ANS000.BYTE003  $  00:非工厂模式		01:工厂模式		其他:-
  $  001.刷新成功计数器       $    $  -     $    $  ANS001.BYTE003  $  XY
  $  002.尝试刷新计数器       $    $  -     $    $  ANS002.BYTE003  $  XY
  $  003.电源电压             $    $  V     $    $  ANS003.BYTE003  $  X*0.1
  $  004.驾驶模式             $    $  -     $    $  ANS004.BYTE003  $  00:无指示		01:经济模式		02:运动模式		03:冬季模式		其他:-
  $  005.TCU档位信号          $    $  -     $    $  ANS005.BYTE003  $  01:驻车档		02:倒档		03:空档		04:行驶档		05:手动档		06:运动档		其他:-
  $  006.背光电压             $    $  V     $    $  ANS006.BYTE003  $  X*0.1
  $  007.高亮电压             $    $  V     $    $  ANS007.BYTE003  $  X*0.1


