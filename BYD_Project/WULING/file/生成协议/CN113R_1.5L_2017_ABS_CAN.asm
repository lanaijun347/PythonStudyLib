$~#6$~#14$~500$~728
;******************************************************************************************************************************************************

车型代号:CN113R
车型:五菱宏光S1
排量:1.5L
年份:2015
模块名缩写:ABS
模块名:防抱死刹车模块
供应商:博世
诊断代码:CN113R_1.5L_2017_ABS_CAN

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

		$*$*DTC/FORMODTCS


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
	$%	REQ005:720 03 22 F1 8A 00 00 00 00          $%
	$%	REQ006:720 03 22 F1 8C 00 00 00 00          $%
	$%	REQ007:720 03 22 F1 95 00 00 00 00          $%
	$%	REQ008:720 03 22 F1 B2 00 00 00 00          $%

  $%  000:ECU Manufacturing Date                     $%    $%  ANS000.BYTE003  $%  06个字节的ASCII显示
  $%  001:VIN                                        $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:Supplier ECU Hardware Number               $%    $%  ANS002.BYTE003  $%  05个字节的HEX显示
  $%  003:Supplier ECU Software Number               $%    $%  ANS003.BYTE003  $%  03个字节的HEX显示
  $%  004:End Model Part Number                      $%    $%  ANS004.BYTE003  $%  04个字节的HEX显示
  $%  005:Supplier Identifier Information            $%    $%  ANS005.BYTE003  $%  07个字节的ASCII显示
  $%  006:ECU Serial Number                          $%    $%  ANS006.BYTE003  $%  20个字节的ASCII显示
  $%  007:Supplier ECU Software Version Number       $%    $%  ANS007.BYTE003  $%  04个字节的HEX显示
  $%  008:Vehicle Manufacturing Date                 $%    $%  ANS008.BYTE003  $%  04个字节的HEX显示

;******************************************************************************************************************************************************
数据流

 $ 00.speed data

	$	REQ000:720 03 22 2D 00 00 00 00 00          $
	$	REQ001:720 03 22 2D 07 00 00 00 00          $

  $  000.Vehicle speed                    $    $  km/h     $    $  ANS000.BYTE003  $  XY*0.05625
  $  001.Wheel speed FL                   $    $  km/h     $    $  ANS000.BYTE005  $  XY*0.05625
  $  002.Wheel speed FR                   $    $  km/h     $    $  ANS000.BYTE007  $  XY*0.05625
  $  003.Wheel speed RL                   $    $  km/h     $    $  ANS000.BYTE009  $  XY*0.05625
  $  004.Wheel speed RR                   $    $  km/h     $    $  ANS000.BYTE011  $  XY*0.05625+1
  $  005.Speed Limit Disable/Enable       $    $  -        $    $  ANS001.BYTE003  $  if(X1&0x1)y=@0242;else y=@0241;

 $ 01.Electromagnetic valve data

	$	REQ000:720 03 22 2D 02 00 00 00 00          $
	$	REQ001:720 03 22 2D 08 00 00 00 00          $

  $  000.Valve Relay Status                 $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  001.Pump Motor Status                  $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x1)y=@0009;else y=@0008;
  $  002.Outlet Valve Rear Right            $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x80)y=@0015;else y=@0014;
  $  003.Inlet Valve Rear Right             $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x40)y=@0015;else y=@0014;
  $  004.Outlet Valve Rear Left             $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x20)y=@0015;else y=@0014;
  $  005.Inlet Valve Rear Left              $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x10)y=@0015;else y=@0014;
  $  006.Outlet Valve Front Right           $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x8)y=@0015;else y=@0014;
  $  007.Inlet Valve Front Right            $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x4)y=@0015;else y=@0014;
  $  008.Outlet Valve Front Left            $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x2)y=@0015;else y=@0014;
  $  009.Inlet Valve Front Left             $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x1)y=@0015;else y=@0014;
  $  010.Disable Valve Relay Shutdown       $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x1)y=@0242;else y=@0241;

 $ 02.ABS data

	$	REQ000:720 03 22 2D 01 00 00 00 00          $
	$	REQ001:720 03 22 2D 03 00 00 00 00          $
	$	REQ002:720 03 22 2D 04 00 00 00 00          $

  $  000.Battery Voltage          $    $  V     $    $  ANS000.BYTE003  $  X*0.08
  $  001.FillingIn Status         $    $  -     $    $  ANS001.BYTE003  $  00:End-of-line test not completed		AA:Filling-in completed and ok		EE:Filling-in completed and not ok		FF:Default Value		其他:-
  $  002.EOL Status               $    $  -     $    $  ANS002.BYTE003  $  00:End-of-line test not completed		AA:Filling-in completed and ok		EE:Filling-in completed and not ok		FF:Default Value		其他:-
  $  003.Brake Light Switch       $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x1)y=@0009;else y=@0008;


