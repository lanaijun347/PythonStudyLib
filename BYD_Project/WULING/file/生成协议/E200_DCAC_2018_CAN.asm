$~#6$~#14$~500$~7DF
;******************************************************************************************************************************************************

车型代号:E100
车型:E100
排量:N/A
年份:2016
模块名缩写:EPB
模块名:电子驻车制动模块
供应商:亚太(APG)
诊断代码:E100_EPB_2016_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:774 02 10 01 00 00 00 00 00          $~          7DF 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:774 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:774 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:774 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/E200DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:774 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:774 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:774 03 22 F1 90 00 00 00 00          $%
	$%	REQ001:774 03 22 F1 86 00 00 00 00          $%
	$%	REQ002:774 03 22 F1 8A 00 00 00 00          $%
	$%	REQ003:774 03 22 F1 8B 00 00 00 00          $%
	$%	REQ004:774 03 22 F1 CB 00 00 00 00          $%
	$%	REQ005:774 03 22 F1 92 00 00 00 00          $%
	$%	REQ006:774 03 22 F1 93 00 00 00 00          $%
	$%	REQ007:774 03 22 F1 94 00 00 00 00          $%
	$%	REQ008:774 03 22 F1 95 00 00 00 00          $%

  $%  000:车辆标识信息（VIN）       $%    $%  ANS000.BYTE003  $%  17个字节的ASCII显示
  $%  001:激活诊断会话              $%    $%  ANS001.BYTE003  $%  X
  $%  002:供应商标识信息            $%    $%  ANS002.BYTE003  $%  07个字节的ASCII显示
  $%  003:ECU制造日期               $%    $%  ANS003.BYTE003  $%  04个字节的HEX显示
  $%  004:零件号（SGMW P/N）        $%    $%  ANS004.BYTE003  $%  X1X2X3X4
  $%  005:供应商ECU硬件号           $%    $%  ANS005.BYTE003  $%  08个字节的ASCII显示
  $%  006:供应商ECU硬件版本号       $%    $%  ANS006.BYTE003  $%  05个字节的ASCII显示
  $%  007:供应商ECU软件号           $%    $%  ANS007.BYTE003  $%  07个字节的ASCII显示
  $%  008:供应商ECU软件版本号       $%    $%  ANS008.BYTE003  $%  08个字节的ASCII显示

;******************************************************************************************************************************************************
数据流

   00.所有数据

	$	REQ000:774 03 22 D1 00 00 00 00 00          $
	$	REQ001:774 03 22 D1 01 00 00 00 00          $
	$	REQ002:774 03 22 D1 02 00 00 00 00          $
	$	REQ003:774 03 22 D1 03 00 00 00 00          $
	$	REQ004:774 03 22 D1 05 00 00 00 00          $
	$	REQ005:774 03 22 D1 06 00 00 00 00          $
	$	REQ006:774 03 22 D1 07 00 00 00 00          $
	$	REQ007:774 03 22 D1 08 00 00 00 00          $
	$	REQ008:774 03 22 D1 09 00 00 00 00          $
	$	REQ009:774 03 22 D1 0A 00 00 00 00          $
	$	REQ010:774 03 22 D1 0B 00 00 00 00          $
	$	REQ011:774 03 22 D1 0C 00 00 00 00          $
	$	REQ012:774 03 22 D1 0D 00 00 00 00          $

  $  000.输入电压            $    $  V      $    $  ANS000.BYTE003  $  XY*0.1
  $  001.输入电流            $    $  A      $    $  ANS001.BYTE003  $  XY*0.1
  $  002.前级电容温度        $    $  ℃     $    $  ANS002.BYTE003  $  X*1-40
  $  003.后级电容温度        $    $  ℃     $    $  ANS003.BYTE003  $  X*1-40
  $  004.工作状态            $    $  -      $    $  ANS004.BYTE003  $  00:初始化/不工作		01:工作		02:故障		其他:-
  $  005.开关状态            $    $  -      $    $  ANS005.BYTE003  $  00:关闭		01:打开		其他:-
  $  006.输出电压            $    $  V      $    $  ANS006.BYTE003  $  XY*0.1
  $  007.输出电流            $    $  A      $    $  ANS007.BYTE003  $  XY*0.1
  $  008.输出功率            $    $  W      $    $  ANS008.BYTE003  $  XY
  $  009.输出频率            $    $  Hz     $    $  ANS009.BYTE003  $  XY*0.1
  $  010.DC/AC温度           $    $  ℃     $    $  ANS010.BYTE003  $  X*1-40
  $  011.高压互锁状态        $    $  -      $    $  ANS011.BYTE003  $  00:非互锁状态		01:互锁状态		其他:-
  $  012.LED指示灯状态       $    $  -      $    $  ANS012.BYTE003  $  00:不工作		01:工作		其他:-


