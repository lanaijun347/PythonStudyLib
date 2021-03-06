$~#6$~#14$~500$~769
;******************************************************************************************************************************************************

车型代号:CN210S
车型:CN210S
排量:N15T
年份:2018
模块名缩写:T-ICE
模块名:网联版多媒体总成
供应商:德赛西威
诊断代码:CN210S_2018_T-ICE_CAN

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

		$*$*DTC/RS-5DTCS


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
	$%	REQ004:761 03 22 F1 92 00 00 00 00          $%
	$%	REQ005:761 03 22 F1 94 00 00 00 00          $%
	$%	REQ006:761 03 22 F1 CB 00 00 00 00          $%
	$%	REQ007:761 03 22 B0 01 00 00 00 00          $%
	$%	REQ008:761 03 22 B0 04 00 00 00 00          $%
	$%	REQ009:761 03 22 B0 05 00 00 00 00          $%

  $%  000:供应商标识信息        $%    $%  ANS000.BYTE003  $%  07个字节的ASCII显示
  $%  001:ECU生产日期           $%    $%  ANS001.BYTE003  $%  04个字节的HEX显示
  $%  002:ECU序列号             $%    $%  ANS002.BYTE003  $%  20个字节的ASCII显示
  $%  003:VIN码                 $%    $%  ANS003.BYTE003  $%  17个字节的ASCII显示
  $%  004:供应商ECU硬件号       $%    $%  ANS004.BYTE003  $%  05个字节的ASCII显示
  $%  005:供应商ECU软件号       $%    $%  ANS005.BYTE003  $%  19个字节的ASCII显示
  $%  006:零件号                $%    $%  ANS006.BYTE003  $%  X1X2X3X4
  $%  007:SIM卡唯一码           $%    $%  ANS007.BYTE003  $%  20个字节的ASCII显示
  $%  008:4G模块唯一码          $%    $%  ANS008.BYTE003  $%  24个字节的ASCII显示
  $%  009:4G模块软件版本        $%    $%  ANS009.BYTE003  $%  24个字节的ASCII显示

;******************************************************************************************************************************************************
数据流

   00.数据流

	$	REQ000:761 03 22 70 02 00 00 00 00          $
	$	REQ001:761 03 22 70 03 00 00 00 00          $
	$	REQ002:761 03 22 70 04 00 00 00 00          $
	$	REQ003:761 03 22 70 05 00 00 00 00          $
	$	REQ004:761 03 22 70 07 00 00 00 00          $
	$	REQ005:761 03 22 70 08 00 00 00 00          $
	$	REQ006:761 03 22 70 09 00 00 00 00          $
	$	REQ007:761 03 22 70 0A 00 00 00 00          $
	$	REQ008:761 03 22 70 0B 00 00 00 00          $

  $  000.驾驶员侧门碰开关状态       $    $  -     $    $  ANS000.BYTE003  $  X
  $  001.方向盘角度                 $    $  -     $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.0625+0		[8000-FFFF]:(XY-65535)*0.0625+0
  $  002.方向盘角度有效性           $    $  -     $    $  ANS001.BYTE005  $  00:无效		01:有效		其他:-
  $  003.ACC硬线状态                $    $  -     $    $  ANS002.BYTE003  $  00:关		01:开		其他:-
  $  004.背光状态                   $    $  -     $    $  ANS003.BYTE003  $  00:关		01:开		其他:-
  $  005.倒车状态                   $    $  -     $    $  ANS004.BYTE003  $  00:无效		01:激活		其他:-
  $  006.GPS定位状态                $    $  -     $    $  ANS005.BYTE003  $  00:定位中		01:定位完成		其他:-
  $  007.收音天线的供电状态         $    $  -     $    $  ANS006.BYTE003  $  00:无供电		01:有供电		其他:-
  $  008.音量                       $    $  -     $    $  ANS007.BYTE003  $  X
  $  009.空调开关状态               $    $  -     $    $  ANS008.BYTE003  $  00:关		01:开		其他:-


