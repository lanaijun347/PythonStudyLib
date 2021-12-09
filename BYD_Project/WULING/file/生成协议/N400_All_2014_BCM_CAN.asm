$~#6$~#14$~500$~748
;******************************************************************************************************************************************************

车型代号:N400
车型:五菱征程
排量:1.5L/1.8L
年份:2014
模块名缩写:BCM
模块名:车身控制模块
供应商:联电
诊断代码:N400_All_2014_BCM_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:740 02 10 01 00 00 00 00 00          $~          748 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:740 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:740 02 3E 08 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:740 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/WLZCDTCS


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

  $%  000:ECU生产日期           $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN                   $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:供应商ECU硬件号       $%    $%  ANS002.BYTE003  $%  03个字节的ASCII显示
  $%  003:供应商ECU软件号       $%    $%  ANS003.BYTE003  $%  05个字节的ASCII显示
  $%  004:零件号SGMW P/N        $%    $%  ANS004.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

 $ 00.车外照明系统数据

	$	REQ000:740 03 22 70 03 00 00 00 00          $
	$	REQ001:740 03 22 70 01 00 00 00 00          $
	$	REQ002:740 03 22 70 02 00 00 00 00          $
	$	REQ003:740 03 22 A0 0C 00 00 00 00          $

  $  000.车内灯亮度           $    $  %     $    $  ANS000.BYTE003  $  X*0.392157
  $  001.位置灯开关           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  002.近光灯开关           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  003.大灯开关             $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  004.远光灯开关           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  005.左转向灯开关         $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x8)y=@0120;else y=@0119;
  $  006.右转向灯开关         $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x4)y=@0120;else y=@0119;
  $  007.前雾灯开关           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x2)y=@0120;else y=@0119;
  $  008.后雾灯开关           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x1)y=@0120;else y=@0119;
  $  009.危险警告灯开关       $    $  -     $    $  ANS001.BYTE004  $  if(X1&0x80)y=@0120;else y=@0119;
  $  010.倒车灯开关           $    $  -     $    $  ANS001.BYTE004  $  if(X1&0x40)y=@0120;else y=@0119;
  $  011.位置灯               $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  012.近光灯               $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  013.远光灯               $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  014.左转向灯             $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  015.右转向灯             $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x8)y=@0120;else y=@0119;
  $  016.前雾灯               $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x4)y=@0120;else y=@0119;
  $  017.后雾灯               $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x2)y=@0120;else y=@0119;
  $  018.倒车灯               $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x1)y=@0120;else y=@0119;
  $  019.日间行车灯           $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;

 $ 01.刮水器、洗涤器数据

	$	REQ000:740 03 22 A0 02 00 00 00 00          $
	$	REQ001:740 03 22 A0 06 00 00 00 00          $

  $  000.前雨刮间歇调节开关       $    $  -     $    $  ANS000.BYTE003  $  00:保留		01:延迟1		02:延迟2		03:延迟3		04:延迟4		05:延迟5		06:延迟6		07:延迟7		其他:-
  $  001.前雨刮高速开关           $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  002.前雨刮低速开关           $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  003.前雨刮间歇开关           $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  004.前雨刮停止开关           $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  005.前洗涤开关               $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x1)y=@0120;else y=@0119;
  $  006.后雨刮开关               $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x80)y=@0120;else y=@0119;
  $  007.后洗涤开关               $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x40)y=@0120;else y=@0119;
  $  008.前雨刮高速电机           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  009.前雨刮低速电机           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  010.前洗涤电机               $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  011.后雨刮电机               $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  012.后洗涤电机               $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x8)y=@0120;else y=@0119;

 $ 02.门碰与锁状态数据

	$	REQ000:740 03 22 A0 03 00 00 00 00          $
	$	REQ001:740 03 22 A0 09 00 00 00 00          $

  $  000.驾驶员门碰开关         $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  001.其它门碰开关           $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  002.后备箱门碰开关         $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  003.驾驶员锁反馈开关       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  004.后备箱解锁开关         $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x8)y=@0120;else y=@0119;
  $  005.锁车电机               $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  006.解锁电机               $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  007.后备箱解锁电机         $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;

 $ 03.钥匙状态数据

	$	REQ000:740 03 22 A0 01 00 00 00 00          $

  $  000.钥匙插入状态       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0122;else y=@0121;
  $  001.ACC位置            $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x40)y=@0116;else y=@0115;
  $  002.ON位置             $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0116;else y=@0115;
  $  003.START位置          $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x10)y=@0116;else y=@0115;

 $ 04.电源管理数据



 $ 05.IMMO相关数据

	$	REQ000:740 03 22 C8 07 00 00 00 00          $

  $  000.已匹配钥匙       $    $  -     $    $  ANS000.BYTE003  $  00:0		01:1		02:2		03:3		04:4		其他:-
  $  001.IMMO锁定         $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0116;else y=@0115;
  $  002.PIN写入          $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x40)y=@0116;else y=@0115;
  $  003.SK写入           $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0116;else y=@0115;
  $  004.VIN写入          $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x10)y=@0116;else y=@0115;

 $ 06.其他

	$	REQ000:740 03 22 A0 04 00 00 00 00          $
	$	REQ001:740 03 22 A0 08 00 00 00 00          $
	$	REQ002:740 03 22 A0 0A 00 00 00 00          $
	$	REQ003:740 03 22 A0 0B 00 00 00 00          $

  $  000.驻车制动开关       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  001.Horn蜂鸣器         $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  002.节电控制           $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  003.后除霜             $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;


