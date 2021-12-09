$~#6$~#14$~500$~748
;******************************************************************************************************************************************************

车型代号:CN180S
车型:宝骏510
排量:1.5L
年份:2016
模块名缩写:BCM
模块名:车身控制模块
供应商:联电
诊断代码:CN180S_2016_BCM_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:740 02 10 01 00 00 00 00 00          $~          748 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:740 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:740 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:740 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/BJ310WDTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:740 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:740 02 11 03 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:740 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:740 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:740 03 22 F1 92 00 00 00 00          $%
	$%	REQ003:740 03 22 F1 94 00 00 00 00          $%
	$%	REQ004:740 03 22 F1 CB 00 00 00 00          $%
	$%	REQ005:740 03 22 F1 8A 00 00 00 00          $%

  $%  000:ECU生产日期           $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN                   $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:供应商ECU硬件号       $%    $%  ANS002.BYTE003  $%  03个字节的ASCII显示
  $%  003:供应商ECU软件号       $%    $%  ANS003.BYTE003  $%  05个字节的ASCII显示
  $%  004:零件号SGMW P/N        $%    $%  ANS004.BYTE003  $%  X1X2X3X4
  $%  005:供应商标识符          $%    $%  ANS005.BYTE003  $%  07个字节的ASCII显示

;******************************************************************************************************************************************************
数据流

 $ 00.车外照明系统数据

	$	REQ000:740 03 22 70 03 00 00 00 00          $
	$	REQ001:740 03 22 70 01 00 00 00 00          $
	$	REQ002:740 03 22 A0 0C 00 00 00 00          $

  $  000.车内灯亮度           $    $  %     $    $  ANS000.BYTE003  $  X
  $  001.位置灯开关           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  002.近光灯开关           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  003.大灯开关             $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  004.远光灯开关           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  005.左转向灯开关         $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x8)y=@0120;else y=@0119;
  $  006.右转向灯开关         $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x4)y=@0120;else y=@0119;
  $  007.前雾灯开关           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x2)y=@0120;else y=@0119;
  $  008.后雾灯开关           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x1)y=@0120;else y=@0119;
  $  009.危险警告灯开关       $    $  -     $    $  ANS001.BYTE004  $  if(X1&0x80)y=@0120;else y=@0119;
  $  010.日间行车灯           $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;

 $ 01.刮水器、洗涤器数据

	$	REQ000:740 03 22 A0 02 00 00 00 00          $
	$	REQ001:740 03 22 A0 06 00 00 00 00          $

  $  000.前雨刮高速开关       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  001.前雨刮低速开关       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  002.前雨刮间歇开关       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  003.前雨刮停止开关       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  004.前洗涤开关           $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x1)y=@0120;else y=@0119;
  $  005.后雨刮开关           $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x80)y=@0120;else y=@0119;
  $  006.后洗涤开关           $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x40)y=@0120;else y=@0119;
  $  007.前雨刮高速电机       $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  008.前雨刮低速电机       $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  009.前洗涤电机           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  010.后雨刮电机           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  011.后洗涤电机           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x8)y=@0120;else y=@0119;

 $ 02.门碰与锁状态数据

	$	REQ000:740 03 22 A0 03 00 00 00 00          $
	$	REQ001:740 03 22 A0 09 00 00 00 00          $

  $  000.驾驶员门碰开关         $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  001.其它门碰开关           $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  002.后备箱门碰开关         $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  003.驾驶员锁反馈开关       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  004.中控解锁开关           $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  005.中控闭锁开关           $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  006.锁车电机               $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  007.解锁电机               $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  008.后备箱解锁电机         $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;

 $ 03.钥匙状态数据

	$	REQ000:740 03 22 C0 02 00 00 00 00          $
	$	REQ001:740 03 22 A0 01 00 00 00 00          $

  $  000.遥控闭锁命令计数器       $    $  -     $    $  ANS000.BYTE003  $  X
  $  001.闭锁计数器               $    $  -     $    $  ANS000.BYTE004  $  X
  $  002.遥控解锁命令计数器       $    $  -     $    $  ANS000.BYTE005  $  X
  $  003.解锁计数器               $    $  -     $    $  ANS000.BYTE006  $  X
  $  004.钥匙插入状态             $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0122;else y=@0121;
  $  005.ACC位置                  $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x40)y=@0116;else y=@0115;
  $  006.ON位置                   $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x20)y=@0116;else y=@0115;
  $  007.START位置                $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x10)y=@0116;else y=@0115;

 $ 04.IMMO相关数据

	$	REQ000:740 03 22 C8 07 00 00 00 00          $

  $  000.IMMO锁定       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0116;else y=@0115;
  $  001.PIN写入        $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x40)y=@0116;else y=@0115;
  $  002.SK写入         $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0116;else y=@0115;
  $  003.VIN写入        $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x10)y=@0116;else y=@0115;

 $ 05.其他

	$	REQ000:740 03 22 C8 07 00 00 00 00          $
	$	REQ001:740 03 22 A0 04 00 00 00 00          $
	$	REQ002:740 03 22 A0 08 00 00 00 00          $
	$	REQ003:740 03 22 A0 0A 00 00 00 00          $
	$	REQ004:740 03 22 A0 0B 00 00 00 00          $

  $  000.已匹配钥匙         $    $  -     $    $  ANS000.BYTE003  $  00:0		01:1		02:2		03:3		04:4		其他:-
  $  001.驻车制动开关       $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  002.Horn蜂鸣器         $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  003.节电控制           $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  004.后除霜             $    $  -     $    $  ANS004.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;


