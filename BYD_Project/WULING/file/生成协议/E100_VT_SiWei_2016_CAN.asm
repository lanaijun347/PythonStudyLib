$~#6$~#14$~500$~76A
;******************************************************************************************************************************************************

车型代号:E100
车型:E100
排量:N/A
年份:2016
模块名缩写:VT
模块名:车载终端
供应商:赛格&安悦四维
诊断代码:E100_2016_VT_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:762 02 10 01 00 00 00 00 00          $~          76A 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:762 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:762 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:762 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/E100DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:762 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:762 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:762 03 22 F1 8A 00 00 00 00          $%
	$%	REQ001:762 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:762 03 22 F1 CB 00 00 00 00          $%
	$%	REQ003:762 03 22 F1 92 00 00 00 00          $%
	$%	REQ004:762 03 22 F1 93 00 00 00 00          $%
	$%	REQ005:762 03 22 F1 94 00 00 00 00          $%
	$%	REQ006:762 03 22 F1 95 00 00 00 00          $%
	$%	REQ007:762 03 22 F1 B2 00 00 00 00          $%

  $%  000:供应商识别码信息       $%    $%  ANS000.BYTE003  $%  07个字节的ASCII显示
  $%  001:VIN                    $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:模块零件号             $%    $%  ANS002.BYTE003  $%  X1X2X3X4
  $%  003:模块硬件号             $%    $%  ANS003.BYTE003  $%  16个字节的ASCII显示
  $%  004:模块硬件版本号         $%    $%  ANS004.BYTE003  $%  06个字节的ASCII显示
  $%  005:模块软件号             $%    $%  ANS005.BYTE003  $%  16个字节的ASCII显示
  $%  006:模块软件版本号         $%    $%  ANS006.BYTE003  $%  05个字节的ASCII显示
  $%  007:制造日期               $%    $%  ANS007.BYTE003  $%  04个字节的HEX显示

;******************************************************************************************************************************************************
数据流

 $ 00.蓄电池数据

	$	REQ000:762 03 22 60 00 00 00 00 00          $
	$	REQ001:762 03 22 60 01 00 00 00 00          $

  $  000.B+电压           $    $  V     $    $  ANS000.BYTE003  $  X*0.1
  $  001.B+连接状态       $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x1)y=@0031;else y=@0030;

 $ 01.GPS数据

	$	REQ000:762 03 22 60 05 00 00 00 00          $
	$	REQ001:762 03 22 60 02 00 00 00 00          $
	$	REQ002:762 03 22 60 03 00 00 00 00          $
	$	REQ003:762 03 22 60 04 00 00 00 00          $

  $  000.GPS定位坐标纬度_度         $    $  °     $    $  ANS000.BYTE003  $  X
  $  001.GPS定位坐标纬度_分         $    $  ′     $    $  ANS000.BYTE004  $  X
  $  002.GPS定位坐标纬度_秒         $    $  ″     $    $  ANS000.BYTE005  $  XY*0.01
  $  003.GPS定位坐标纬度_方位       $    $  -      $    $  ANS000.BYTE007  $  4E:N		53:S		其他:-
  $  004.GPS定位坐标经度_度         $    $  °     $    $  ANS000.BYTE008  $  X
  $  005.GPS定位坐标经度_分         $    $  ′     $    $  ANS000.BYTE009  $  X
  $  006.GPS定位坐标经度_秒         $    $  ″     $    $  ANS000.BYTE010  $  XY*0.01
  $  007.GPS定位坐标经度_方位       $    $  -      $    $  ANS000.BYTE012  $  57:W		45:E		其他:-
  $  008.GPS模块工作状态            $    $  -      $    $  ANS001.BYTE003  $  if(X1&0x1)y=@0033;else y=@0032;
  $  009.GPS天线工作状态            $    $  -      $    $  ANS002.BYTE003  $  if(X1&0x1)y=@0033;else y=@0032;
  $  010.GPS定位状态                $    $  -      $    $  ANS003.BYTE003  $  if(X1&0x1)y=@0035;else y=@0034;

 $ 02.GPRS数据

	$	REQ000:762 03 22 60 06 00 00 00 00          $
	$	REQ001:762 03 22 60 07 00 00 00 00          $
	$	REQ002:762 03 22 60 08 00 00 00 00          $

  $  000.GPRS模块工作状态       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x1)y=@0033;else y=@0032;
  $  001.GPRS天线工作状态       $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x1)y=@0033;else y=@0032;
  $  002.GPRS网络状态           $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x1)y=@0037;else y=@0036;

 $ 03.CANBUS数据

	$	REQ000:762 03 22 60 09 00 00 00 00          $

  $  000.CANBUS通信状态       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x1)y=@0033;else y=@0032;

 $ 04.移动设备数据

	$	REQ000:762 03 22 60 0A 00 00 00 00          $
	$	REQ001:762 03 22 60 0B 00 00 00 00          $
	$	REQ002:762 03 22 60 0C 00 00 00 00          $
	$	REQ003:762 03 22 60 0D 00 00 00 00          $
	$	REQ004:762 03 22 60 0E 00 00 00 00          $

  $  000.MEID移动识别码       $    $  -      $    $  ANS000.BYTE003  $  20个字节的ASCII显示
  $  001.网络信号强度         $    $  -      $    $  ANS001.BYTE003  $  X
  $  002.当前上传频率         $    $  ms     $    $  ANS002.BYTE003  $  X1X2X3X4
  $  003.存储内存使用率       $    $  %      $    $  ANS003.BYTE003  $  X
  $  004.存储工作状态         $    $  -      $    $  ANS004.BYTE003  $  if(X1&0x1)y=@0033;else y=@0032;

 $ 05.备用电池数据

	$	REQ000:762 03 22 60 0F 00 00 00 00          $
	$	REQ001:762 03 22 60 10 00 00 00 00          $

  $  000.备用电池电量           $    $  %     $    $  ANS000.BYTE003  $  X
  $  001.备用电池连接状态       $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x1)y=@0031;else y=@0030;


