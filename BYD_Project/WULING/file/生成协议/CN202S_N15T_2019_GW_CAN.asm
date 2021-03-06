$~#6$~#14$~500$~718
;******************************************************************************************************************************************************

车型代号:CN202S
车型:宝骏530
排量:N15T
年份:2019
模块名缩写:GW
模块名:网关
供应商:联电/华东
诊断代码:CN202S_N15T_2019_GW_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:710 02 10 01 00 00 00 00 00          $~          718 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:710 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:710 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:710 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/BJ530DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:710 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:710 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:710 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:710 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:710 03 22 F1 CB 00 00 00 00          $%
	$%	REQ003:710 03 22 F1 92 00 00 00 00          $%
	$%	REQ004:710 03 22 F1 94 00 00 00 00          $%
	$%	REQ005:710 03 22 F1 8A 00 00 00 00          $%

  $%  000:ECU生产日期       $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN               $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:零件号            $%    $%  ANS002.BYTE003  $%  X1X2X3X4
  $%  003:硬件号            $%    $%  ANS003.BYTE003  $%  10个字节的ASCII显示
  $%  004:软件号            $%    $%  ANS004.BYTE003  $%  10个字节的ASCII显示
  $%  005:供应商代码        $%    $%  ANS005.BYTE003  $%  07个字节的ASCII显示

;******************************************************************************************************************************************************
数据流

   00.所有数据

	$	REQ000:710 03 22 B1 50 00 00 00 00          $
	$	REQ001:710 03 22 B1 66 00 00 00 00          $
	$	REQ002:710 03 22 D1 00 00 00 00 00          $

  $  000.电压                 $    $  V     $    $  ANS000.BYTE003  $  XY*0.0276+0.42
  $  001.EEPROM检查           $    $  -     $    $  ANS001.BYTE003  $  00:软件不匹配		01:软件匹配		其他:-
  $  002.信号输入-on档        $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x80)y=@0086;else y=@0085;
  $  003.信号输入-ACC档       $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x40)y=@0086;else y=@0085;
  $  004.信号输入-OFF档       $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x20)y=@0086;else y=@0085;


