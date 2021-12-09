$~#6$~#14$~500$~749
;******************************************************************************************************************************************************

车型代号:CN210M
车型:宝骏730
排量:1.5T
年份:2016
模块名缩写:PEPS
模块名:无钥匙进入系统
供应商:大陆
诊断代码:CN210M_1.5T_2016_PEPS_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:741 02 10 01 00 00 00 00 00          $~          749 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:741 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:741 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:741 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/BJ730DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:741 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:741 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:741 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:741 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:741 03 22 F1 CB 00 00 00 00          $%
	$%	REQ003:741 03 22 F1 95 00 00 00 00          $%

  $%  000:ECU生产日期       $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN               $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:零件号            $%    $%  ANS002.BYTE003  $%  X1X2X3X4
  $%  003:软件版本号        $%    $%  ANS003.BYTE003  $%  16个字节的ASCII显示

;******************************************************************************************************************************************************
数据流

   00.数据流

	$	REQ000:741 03 22 C0 00 00 00 00 00          $
	$	REQ001:741 03 22 C5 02 00 00 00 00          $
	$	REQ002:741 03 22 C5 04 00 00 00 00          $
	$	REQ003:741 03 22 C1 01 00 00 00 00          $
	$	REQ004:741 03 22 C5 00 00 00 00 00          $
	$	REQ005:741 03 22 C5 05 00 00 00 00          $
	$	REQ006:741 03 22 C5 03 00 00 00 00          $
	$	REQ007:741 03 22 C5 21 00 00 00 00          $

  $  000.ECU电压                            $    $  V        $    $  ANS000.BYTE003  $  X*0.1
  $  001.已匹配钥匙数量                     $    $  -        $    $  ANS001.BYTE003  $  X
  $  002.ACC继电器输出电压                  $    $  V        $    $  ANS002.BYTE003  $  X*0.1
  $  003.IGN1继电器输出电压                 $    $  V        $    $  ANS002.BYTE004  $  X*0.1
  $  004.IGN2继电器输出电压                 $    $  V        $    $  ANS002.BYTE005  $  X*0.1
  $  005.电子转向锁电源电压                 $    $  V        $    $  ANS002.BYTE006  $  X*0.1
  $  006.电子转向锁负极电压                 $    $  V        $    $  ANS002.BYTE007  $  X*0.1
  $  007.右前轮速度                         $    $  km/h     $    $  ANS002.BYTE008  $  X
  $  008.电子转向锁使能信号电压             $    $  V        $    $  ANS002.BYTE009  $  X*0.1
  $  009.整车配置信息（变速器型式）         $    $  -        $    $  ANS003.BYTE009  $  00:MT		01:DCT		02:AMT		03:CVT		其他:-
  $  010.刹车开关信号                       $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x80)y=@0039;else y=@0038;
  $  011.启动开关2                          $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x20)y=@0039;else y=@0038;
  $  012.左前门开关信号                     $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x10)y=@0039;else y=@0038;
  $  013.尾门开关信号                       $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x8)y=@0039;else y=@0038;
  $  014.电子转向锁解锁状态                 $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x4)y=@0039;else y=@0038;
  $  015.右前门开关信号                     $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x2)y=@0039;else y=@0038;
  $  016.启动开关1                          $    $  -        $    $  ANS004.BYTE003  $  if(X1&0x1)y=@0039;else y=@0038;
  $  017.离合信号                           $    $  -        $    $  ANS004.BYTE004  $  if(X1&0x2)y=@0039;else y=@0038;
  $  018.DCU继电器控制输出状态              $    $  -        $    $  ANS005.BYTE003  $  if(X1&0x80)y=@0039;else y=@0038;
  $  019.电子转向锁使能                     $    $  -        $    $  ANS005.BYTE003  $  if(X1&0x40)y=@0039;else y=@0038;
  $  020.电子转向锁负极控制输出状态         $    $  -        $    $  ANS005.BYTE003  $  if(X1&0x20)y=@0039;else y=@0038;
  $  021.电子转向锁电源控制输出状态         $    $  -        $    $  ANS005.BYTE003  $  if(X1&0x10)y=@0039;else y=@0038;
  $  022.启动马达继电器控制输出状态         $    $  -        $    $  ANS005.BYTE003  $  if(X1&0x8)y=@0039;else y=@0038;
  $  023.IGN2继电器控制输出状态             $    $  -        $    $  ANS005.BYTE003  $  if(X1&0x4)y=@0039;else y=@0038;
  $  024.IGN1继电器控制输出状态             $    $  -        $    $  ANS005.BYTE003  $  if(X1&0x2)y=@0039;else y=@0038;
  $  025.ACC继电器控制输出状态              $    $  -        $    $  ANS005.BYTE003  $  if(X1&0x1)y=@0039;else y=@0038;
  $  026.启动开关背景控制输出状态           $    $  -        $    $  ANS005.BYTE004  $  if(X1&0x4)y=@0039;else y=@0038;
  $  027.启动开关橙色灯控制输出状态         $    $  -        $    $  ANS005.BYTE004  $  if(X1&0x2)y=@0039;else y=@0038;
  $  028.启动开关绿色灯控制输出状态         $    $  -        $    $  ANS005.BYTE004  $  if(X1&0x1)y=@0039;else y=@0038;
  $  029.防盗学习状态-电子转向柱锁          $    $  -        $    $  ANS006.BYTE003  $  if(X1&0x2)y=@0146;else y=@0133;
  $  030.防盗学习状态-ESK                   $    $  -        $    $  ANS006.BYTE003  $  if(X1&0x1)y=@0148;else y=@0147;
  $  031.电子转向柱锁状态（PEPS内部）       $    $  -        $    $  ANS007.BYTE003  $  if(X1&0x2)y=@0150;else y=@0149;
  $  032.电子转向柱锁状态（ESCL内部）       $    $  -        $    $  ANS007.BYTE003  $  if(X1&0x1)y=@0150;else y=@0149;


