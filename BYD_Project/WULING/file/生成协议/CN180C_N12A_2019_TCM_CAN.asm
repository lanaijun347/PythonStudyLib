$~#6$~#14$~500$~7E9
;******************************************************************************************************************************************************

车型代号:CN185M
车型:宝骏330
排量:1.5L
年份:2018
模块名缩写:TCM
模块名:变速器控制系统
供应商:上汽齿
诊断代码:CN180C_N12A_2019_TCM_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:7E1 02 10 01 00 00 00 00 00          $~          7E9 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:7E1 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:7E1 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:7E1 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/BJ310DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:7E1 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:7E1 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:7E1 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:7E1 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:7E1 03 22 F1 CB 00 00 00 00          $%
	$%	REQ003:7E1 03 22 F1 8A 00 00 00 00          $%
	$%	REQ004:7E1 03 22 F1 95 00 00 00 00          $%
	$%	REQ005:7E1 03 22 F1 B2 00 00 00 00          $%

  $%  000:ECU生产日期        $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN                $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:零件号             $%    $%  ANS002.BYTE003  $%  X1X2X3X4
  $%  003:供应商代码         $%    $%  ANS003.BYTE003  $%  09个字节的HEX显示
  $%  004:软件版本号         $%    $%  ANS004.BYTE003  $%  02个字节的HEX显示
  $%  005:车辆生产日期       $%    $%  ANS005.BYTE003  $%  04个字节的HEX显示

;******************************************************************************************************************************************************
数据流

 $ 00.电压信号

	$	REQ000:7E1 03 22 12 03 00 00 00 00          $
	$	REQ001:7E1 03 22 12 08 00 00 00 00          $
	$	REQ002:7E1 03 22 12 0A 00 00 00 00          $
	$	REQ003:7E1 03 22 12 0C 00 00 00 00          $
	$	REQ004:7E1 03 22 12 16 00 00 00 00          $
	$	REQ005:7E1 03 22 12 17 00 00 00 00          $
	$	REQ006:7E1 03 22 12 18 00 00 00 00          $

  $  000.控制模块电压              $    $  V     $    $  ANS000.BYTE003  $  XY*0.001
  $  001.离合行程传感器1电压       $    $  V     $    $  ANS001.BYTE003  $  XY*0.0048875855327468
  $  002.选档行程传感器1电压       $    $  V     $    $  ANS002.BYTE003  $  XY*0.0048875855327468
  $  003.换档行程传感器1电压       $    $  V     $    $  ANS003.BYTE003  $  XY*0.0048875855327468
  $  004.离合电机检测电流          $    $  A     $    $  ANS004.BYTE003  $  X*0.5-64
  $  005.选档电机检测电流          $    $  A     $    $  ANS005.BYTE003  $  X*0.5-64
  $  006.换挡电机检测电流          $    $  A     $    $  ANS006.BYTE003  $  X*0.5-64

 $ 01.行程信息

	$	REQ000:7E1 03 22 12 1F 00 00 00 00          $
	$	REQ001:7E1 03 22 12 20 00 00 00 00          $
	$	REQ002:7E1 03 22 12 21 00 00 00 00          $

  $  000.离合行程       $    $  mm     $    $  ANS000.BYTE003  $  XY*0.00390625
  $  001.选档行程       $    $  mm     $    $  ANS001.BYTE003  $  XY*0.00390625
  $  002.换档行程       $    $  mm     $    $  ANS002.BYTE003  $  XY*0.00390625

 $ 02.油温信息

	$	REQ000:7E1 03 22 12 01 00 00 00 00          $
	$	REQ001:7E1 03 22 12 15 00 00 00 00          $
	$	REQ002:7E1 03 22 12 23 00 00 00 00          $

  $  000.故障灯亮后行驶里程       $    $  km      $    $  ANS000.BYTE003  $  XY
  $  001.发动机转速               $    $  rpm     $    $  ANS001.BYTE003  $  X*32
  $  002.变速箱油温               $    $  ℃      $    $  ANS002.BYTE003  $  X*1-128

 $ 03.开关信息

	$	REQ000:7E1 03 22 12 22 00 00 00 00          $
	$	REQ001:7E1 03 22 12 24 00 00 00 00          $
	$	REQ002:7E1 03 22 12 04 00 00 00 00          $
	$	REQ003:7E1 03 22 12 05 00 00 00 00          $

  $  000.档杆位置                  $    $  -     $    $  ANS000.BYTE003  $  00:R		01:N		02:D		03:M(+)		04:M(-)		其他:-
  $  001.当前齿轮位置              $    $  -     $    $  ANS001.BYTE003  $  00:unknown		01:1st		02:2nd		03:3rd		04:4th		05:5th		FE:N		FF:R		其他:-
  $  002.换挡杆开关 LSW+           $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  003.换挡杆开关 LSWR           $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  004.换挡杆开关  LSWS          $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  005.换挡杆开关  LSWN          $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  006.换挡杆开关  LSW-          $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x8)y=@0120;else y=@0119;
  $  007.换挡杆检测开关 LSRC       $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x4)y=@0120;else y=@0119;
  $  008.换挡杆检测开关 LSSC       $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x2)y=@0120;else y=@0119;
  $  009.换挡杆检测开关 LSNC       $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x1)y=@0120;else y=@0119;
  $  010.点火开关                  $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  011.起动机开关                $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  012.制动灯开关 STP            $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  013.手刹开关                  $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x8)y=@0120;else y=@0119;
  $  014.左前门门碰开关            $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x4)y=@0120;else y=@0119;

 $ 04.自学习值

	$	REQ000:7E1 03 22 12 26 00 00 00 00          $

  $  000.变速箱挡区格删自学习完成               $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0073;else y=@0072;
  $  001.选挡电磁阀零流量电流自学习完成         $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0073;else y=@0072;
  $  002.离合器电磁阀零流量电流自学习完成       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x10)y=@0073;else y=@0072;
  $  003.离合器老化指数自学习完成               $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x2)y=@0073;else y=@0072;
  $  004.离合器啮合点自学习完成                 $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x1)y=@0073;else y=@0072;


