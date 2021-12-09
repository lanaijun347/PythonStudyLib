$~#6$~#14$~500$~738
;******************************************************************************************************************************************************

车型代号:CN113
车型:五菱宏光S1
排量:1.5L
年份:2015
模块名缩写:SDM
模块名:安全气囊系统
供应商:奥托立夫
诊断代码:CN113_1.5L_2015_SDM_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:730  02 10 01 00 00 00 00 00          $~          738  02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:730  02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:730  02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:730  03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/WLHGS1DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:730  04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:730  02 11 03 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:730  03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:730  03 22 F1 90 00 00 00 00          $%
	$%	REQ002:730  03 22 F1 92 00 00 00 00          $%
	$%	REQ003:730  03 22 F1 94 00 00 00 00          $%
	$%	REQ004:730  03 22 F1 B2 00 00 00 00          $%

  $%  000:ECU生产日期           $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN码                 $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:供应商ECU硬件号       $%    $%  ANS002.BYTE003  $%  10个字节的ASCII显示
  $%  003:供应商ECU软件号       $%    $%  ANS003.BYTE003  $%  10个字节的ASCII显示
  $%  004:车辆生产日期          $%    $%  ANS004.BYTE003  $%  04个字节的HEX显示

;******************************************************************************************************************************************************
数据流

 $ 00.电瓶电压

	$	REQ000:730  03 22 50 11 00 00 00 00          $
	$	REQ001:730  03 22 50 12 00 00 00 00          $
	$	REQ002:730  03 22 50 51 00 00 00 00          $

  $  000.ECU供电电压            $    $  伏特     $    $  ANS000.BYTE003  $  X*0.097
  $  001.电容电压               $    $  伏特     $    $  ANS001.BYTE003  $  X*0.14
  $  002.副驾驶员存在开关       $    $  -        $    $  ANS002.BYTE003  $  if(X1&0x4)y=@0116;else y=@0115;
  $  003.驾驶员安全带           $    $  -        $    $  ANS002.BYTE003  $  if(X1&0x2)y=@0191;else y=@0190;
  $  004.副驾驶员安全带         $    $  -        $    $  ANS002.BYTE003  $  if(X1&0x1)y=@0191;else y=@0190;

 $ 01.点爆电阻

	$	REQ000:730  03 22 50 11 00 00 00 00          $
	$	REQ001:730  03 22 50 12 00 00 00 00          $
	$	REQ002:730  03 22 50 31 00 00 00 00          $
	$	REQ003:730  03 22 50 32 00 00 00 00          $
	$	REQ004:730  03 22 50 33 00 00 00 00          $
	$	REQ005:730  03 22 50 34 00 00 00 00          $
	$	REQ006:730  03 22 50 35 00 00 00 00          $
	$	REQ007:730  03 22 50 36 00 00 00 00          $

  $  000.ECU供电电压                          $    $  伏特     $    $  ANS000.BYTE003  $  X*0.097
  $  001.电容电压                             $    $  伏特     $    $  ANS001.BYTE003  $  X*0.14
  $  002.驾驶员安全气囊点爆电阻阻值           $    $  OHM      $    $  ANS002.BYTE003  $  X*0.1
  $  003.副驾驶员安全气囊点爆电阻阻值         $    $  OHM      $    $  ANS003.BYTE003  $  X*0.1
  $  004.驾驶员安全带预紧点爆电阻阻值         $    $  OHM      $    $  ANS004.BYTE003  $  X*0.1
  $  005.副驾驶员安全带预紧点爆电阻阻值       $    $  OHM      $    $  ANS005.BYTE003  $  X*0.1
  $  006.左侧安全气囊点爆电阻阻值             $    $  OHM      $    $  ANS006.BYTE003  $  X*0.1
  $  007.右侧安全气囊点爆电阻阻值             $    $  OHM      $    $  ANS007.BYTE003  $  X*0.1


