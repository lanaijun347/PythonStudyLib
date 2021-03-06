$~#6$~#14$~500$~728
;******************************************************************************************************************************************************

车型代号:GP30
车型:宝骏330
排量:1.5
年份:2015
模块名缩写:ABS
模块名:防抱死系统
供应商:未知
诊断代码:GP30_1.5L_2015_ABS_CAN

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

	$#	REQ000:720 03 19 02 0C 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/BJ330DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:720 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:720 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:720 03 22 F1 90 00 00 00 00          $%
	$%	REQ001:720 03 22 F1 87 00 00 00 00          $%
	$%	REQ002:720 03 22 F1 91 00 00 00 00          $%
	$%	REQ003:720 03 22 F1 92 00 00 00 00          $%
	$%	REQ004:720 03 22 F1 94 00 00 00 00          $%
	$%	REQ005:720 03 22 F1 A1 00 00 00 00          $%

  $%  000:车辆标识信息（VIN）       $%    $%  ANS000.BYTE003  $%  17个字节的ASCII显示
  $%  001:模块零件总成号            $%    $%  ANS001.BYTE003  $%  05个字节的HEX显示
  $%  002:模块硬件号                $%    $%  ANS002.BYTE003  $%  05个字节的HEX显示
  $%  003:模块硬件版本号            $%    $%  ANS003.BYTE003  $%  10个字节的ASCII显示
  $%  004:模块软件版本号            $%    $%  ANS004.BYTE003  $%  10个字节的ASCII显示
  $%  005:模块标定软件号            $%    $%  ANS005.BYTE003  $%  05个字节的HEX显示

;******************************************************************************************************************************************************
数据流

   00.ABS数据流

	$	REQ000:720 03 22 01 12 00 00 00 00          $
	$	REQ001:720 03 22 E1 01 00 00 00 00          $
	$	REQ002:720 03 22 01 0C 00 00 00 00          $
	$	REQ003:720 03 22 B0 05 00 00 00 00          $
	$	REQ004:720 03 22 B0 07 00 00 00 00          $
	$	REQ005:720 03 22 B0 08 00 00 00 00          $
	$	REQ006:720 03 22 B0 09 00 00 00 00          $
	$	REQ007:720 03 22 B0 0A 00 00 00 00          $
	$	REQ008:720 03 22 B0 0B 00 00 00 00          $
	$	REQ009:720 03 22 B0 10 00 00 00 00          $
	$	REQ010:720 03 22 B0 11 00 00 00 00          $
	$	REQ011:720 03 22 B0 12 00 00 00 00          $
	$	REQ012:720 03 22 B0 14 00 00 00 00          $
	$	REQ013:720 03 22 B0 15 00 00 00 00          $
	$	REQ014:720 03 22 B0 19 00 00 00 00          $
	$	REQ015:720 03 22 D3 01 00 00 00 00          $
	$	REQ016:720 03 22 D0 01 00 00 00 00          $
	$	REQ017:720 03 22 B0 16 00 00 00 00          $

  $  000.供电电压                          $    $  V         $    $  ANS000.BYTE003  $  X*0.1
  $  001.行驶里程                          $    $  km        $    $  ANS001.BYTE003  $  XYZ
  $  002.冷却液温度                        $    $  ℃        $    $  ANS002.BYTE003  $  X*1-40
  $  003.加注状态                          $    $  -         $    $  ANS003.BYTE003  $  00:未加注成功		01:加注成功		其他:-
  $  004.方向盘角度标定状态                $    $  -         $    $  ANS004.BYTE003  $  00:未标定		01:已标定		其他:-
  $  005.左前轮速                          $    $  kph       $    $  ANS005.BYTE003  $  XY
  $  006.右前轮速                          $    $  kph       $    $  ANS006.BYTE003  $  XY
  $  007.左后轮速                          $    $  kph       $    $  ANS007.BYTE003  $  XY
  $  008.右后轮速                          $    $  kph       $    $  ANS008.BYTE003  $  XY
  $  009.纵向加速度                        $    $  m/s^2     $    $  ANS009.BYTE003  $  [0000-7FFF]:XY*0.015625+0		[8000-FFFF]:(XY-65535)*0.015625+0
  $  010.横向加速度                        $    $  m/s^2     $    $  ANS010.BYTE003  $  XY*0.015625
  $  011.车速                              $    $  kph       $    $  ANS011.BYTE003  $  XY*0.01
  $  012.方向盘角度                        $    $  deg       $    $  ANS012.BYTE003  $  XY*0.0625-2048
  $  013.方向盘渐变角度                    $    $  deg       $    $  ANS013.BYTE003  $  XY*1-2048
  $  014.车速限制                          $    $  -         $    $  ANS014.BYTE003  $  X
  $  015.电动马达                          $    $  -         $    $  ANS015.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  016.车身稳定系统警告灯（仅ESC）       $    $  -         $    $  ANS015.BYTE003  $  if(X1&0x8)y=@0120;else y=@0119;
  $  017.车身稳定系统警告灯（仅ESC）       $    $  -         $    $  ANS015.BYTE003  $  if(X1&0x4)y=@0120;else y=@0119;
  $  018.ABS警告灯                         $    $  -         $    $  ANS015.BYTE003  $  if(X1&0x1)y=@0120;else y=@0119;
  $  019.整车START状态                     $    $  -         $    $  ANS016.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  020.整车发动机运行状态                $    $  -         $    $  ANS016.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  021.整车ON状态                        $    $  -         $    $  ANS016.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  022.整车ACC状态                       $    $  -         $    $  ANS016.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  023.系统START状态                     $    $  -         $    $  ANS016.BYTE003  $  if(X1&0x8)y=@0120;else y=@0119;
  $  024.系统发动机运行状态                $    $  -         $    $  ANS016.BYTE003  $  if(X1&0x4)y=@0120;else y=@0119;
  $  025.系统ON状态                        $    $  -         $    $  ANS016.BYTE003  $  if(X1&0x2)y=@0120;else y=@0119;
  $  026.系统ACC状态                       $    $  -         $    $  ANS016.BYTE003  $  if(X1&0x1)y=@0120;else y=@0119;
  $  027.左前轮速信号                      $    $  -         $    $  ANS017.BYTE003  $  if(X1&0x80)y=@0032;else y=@0064;
  $  028.右前轮速信号                      $    $  -         $    $  ANS017.BYTE003  $  if(X1&0x40)y=@0032;else y=@0064;
  $  029.左后轮速信号                      $    $  -         $    $  ANS017.BYTE003  $  if(X1&0x20)y=@0032;else y=@0064;
  $  030.右后轮速信号                      $    $  -         $    $  ANS017.BYTE003  $  if(X1&0x10)y=@0032;else y=@0064;
  $  031.方向盘角度信号                    $    $  -         $    $  ANS017.BYTE003  $  if(X1&0x8)y=@0032;else y=@0064;
  $  032.车速信号                          $    $  -         $    $  ANS017.BYTE003  $  if(X1&0x2)y=@0032;else y=@0064;
  $  033.路面起伏信号                      $    $  -         $    $  ANS017.BYTE003  $  if(X1&0x1)y=@0032;else y=@0064;
  $  034.发动机温度信号                    $    $  -         $    $  ANS017.BYTE004  $  if(X1&0x40)y=@0032;else y=@0064;
  $  035.车速信号                          $    $  -         $    $  ANS017.BYTE004  $  if(X1&0x20)y=@0032;else y=@0064;
  $  036.加速踏板信号                      $    $  -         $    $  ANS017.BYTE004  $  if(X1&0x10)y=@0032;else y=@0064;
  $  037.扭矩信号                          $    $  -         $    $  ANS017.BYTE004  $  if(X1&0x8)y=@0032;else y=@0064;
  $  038.制动开关信号                      $    $  -         $    $  ANS017.BYTE004  $  if(X1&0x4)y=@0032;else y=@0064;


