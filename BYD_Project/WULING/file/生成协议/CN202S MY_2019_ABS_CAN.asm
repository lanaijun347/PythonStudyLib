$~#6$~#14$~500$~728
;******************************************************************************************************************************************************

车型代号:CN202S MY
车型:宝骏560
排量:1.5L/1.8L
年份:2016
模块名缩写:ABS/ESP
模块名:防抱死系统
供应商:BOSCH
诊断代码:CN202S MY_2019_ABS_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:720 02 10 01 00 00 00 00 00          $~          728 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:720 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:720 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:720 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/BJ530DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:720 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:720 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:720 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:720 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:720 03 22 F1 92 00 00 00 00          $%
	$%	REQ003:720 03 22 F1 94 00 00 00 00          $%
	$%	REQ004:720 03 22 F1 CB 00 00 00 00          $%
	$%	REQ005:720 03 22 F1 95 00 00 00 00          $%

  $%  000:ECU生产日期               $%    $%  ANS000.BYTE003  $%  06个字节的ASCII显示
  $%  001:VIN                       $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:供应商ECU硬件号           $%    $%  ANS002.BYTE003  $%  05个字节的HEX显示
  $%  003:供应商ECU软件号           $%    $%  ANS003.BYTE003  $%  03个字节的HEX显示
  $%  004:零件号                    $%    $%  ANS004.BYTE003  $%  X1X2X3X4
  $%  005:供应商ECU软件版本号       $%    $%  ANS005.BYTE003  $%  04个字节的HEX显示

;******************************************************************************************************************************************************
数据流

   00.数据流

	$	REQ000:720 03 22 2D 00 00 00 00 00          $
	$	REQ001:720 03 22 2D 05 00 00 00 00          $
	$	REQ002:720 03 22 2D 01 00 00 00 00          $
	$	REQ003:720 03 22 2D 0F 00 00 00 00          $
	$	REQ004:720 03 22 2D 20 00 00 00 00          $
	$	REQ005:720 03 22 2D 21 00 00 00 00          $
	$	REQ006:720 03 22 2D 22 00 00 00 00          $
	$	REQ007:720 03 22 2D 23 00 00 00 00          $
	$	REQ008:720 03 22 2D 24 00 00 00 00          $
	$	REQ009:720 03 22 2D 25 00 00 00 00          $
	$	REQ010:720 03 22 2D 27 00 00 00 00          $
	$	REQ011:720 03 22 2D 28 00 00 00 00          $
	$	REQ012:720 03 22 2D 29 00 00 00 00          $
	$	REQ013:720 03 22 2D 30 00 00 00 00          $

  $  000.车速信息                               $    $  km/h      $    $  ANS000.BYTE003  $  XY*0.05625
  $  001.左前轮速                               $    $  km/h      $    $  ANS000.BYTE005  $  XY*0.05625
  $  002.右前轮速                               $    $  km/h      $    $  ANS000.BYTE007  $  XY*0.05625
  $  003.左后轮速                               $    $  km/h      $    $  ANS000.BYTE009  $  XY*0.05625
  $  004.右后轮速                               $    $  km/h      $    $  ANS000.BYTE011  $  XY*0.05625
  $  005.主缸压力                               $    $  bar       $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*0.0153+0		[8000-FFFF]:(XY-65535)*0.0153+0
  $  006.方向盘转角                             $    $  °        $    $  ANS001.BYTE005  $  [0000-7FFF]:XY*0.1+0		[8000-FFFF]:(XY-65535)*0.1+0
  $  007.偏航率（横摆角速度）                   $    $  rad/s     $    $  ANS001.BYTE007  $  [0000-7FFF]:XY*0.00213+0		[8000-FFFF]:(XY-65535)*0.00213+0
  $  008.侧向加速度                             $    $  m/s2      $    $  ANS001.BYTE009  $  [0000-7FFF]:XY*0.02712+0		[8000-FFFF]:(XY-65535)*0.02712+0
  $  009.纵向加速度                             $    $  m/s2      $    $  ANS001.BYTE011  $  [0000-7FFF]:XY*0.02712+0		[8000-FFFF]:(XY-65535)*0.02712+0
  $  010.电池电压                               $    $  V         $    $  ANS002.BYTE003  $  X*0.08
  $  011.方向盘转向角自学习值(仅ESP)            $    $  rad       $    $  ANS003.BYTE003  $  [0000-7FFF]:XY*0.0009765+0		[8000-FFFF]:(XY-65535)*0.0009765+0
  $  012.左制动卡钳温度(仅电子手刹)             $    $  ℃        $    $  ANS004.BYTE003  $  [00-7F]:X*1+0		[80-FF]:(X-255)*1+0
  $  013.右制动卡钳温度(仅电子手刹)             $    $  ℃        $    $  ANS005.BYTE003  $  [00-7F]:X*1+0		[80-FF]:(X-255)*1+0
  $  014.左驻车制动执行次数(仅电子手刹)         $    $  次        $    $  ANS006.BYTE003  $  X1X2X3X4
  $  015.右驻车制动执行次数(仅电子手刹)         $    $  次        $    $  ANS007.BYTE003  $  X1X2X3X4
  $  016.左驻车制动力(仅电子手刹)               $    $  -         $    $  ANS008.BYTE003  $  XY
  $  017.右驻车制动力(仅电子手刹)               $    $  -         $    $  ANS009.BYTE003  $  XY
  $  018.左驻车制动执行器状态(仅电子手刹)       $    $  -         $    $  ANS010.BYTE003  $  00:夹紧		01:释放		02:夹紧中		03:释放中		04:未知状态		05:d自动夹紧		06:完全释放		其他:-
  $  019.右驻车制动执行器状态(仅电子手刹)       $    $  -         $    $  ANS011.BYTE003  $  00:夹紧		01:释放		02:夹紧中		03:释放中		04:未知状态		05:d自动夹紧		06:完全释放		其他:-
  $  020.电子手刹开关状态(仅电子手刹)           $    $  -         $    $  ANS012.BYTE003  $  00:空		01:释放		02:拉起		其他:-
  $  021.自动驻车开关状态(仅电子手刹)           $    $  -         $    $  ANS013.BYTE003  $  00:关		01:开		其他:-


