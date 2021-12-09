$~#6$~#14$~500$~758
;******************************************************************************************************************************************************

车型代号:CN200
车型:宝骏730
排量:1.5L/1.8L
年份:2014
模块名缩写:EPS
模块名:电子助力转向
供应商:耐斯特
诊断代码:CN200_All_2014_EPS_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:750 02 10 01 00 00 00 00 00          $~          758 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:750 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:750 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:750 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/BJ730DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:750 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:750 02 11 03 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:750 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:750 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:750 03 22 F1 92 00 00 00 00          $%
	$%	REQ003:750 03 22 F1 94 00 00 00 00          $%
	$%	REQ004:750 03 22 F1 CB 00 00 00 00          $%

  $%  000:ECU生产日期           $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN                   $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:供应商ECU硬件号       $%    $%  ANS002.BYTE003  $%  08个字节的ASCII显示
  $%  003:供应商ECU软件号       $%    $%  ANS003.BYTE003  $%  20个字节的ASCII显示
  $%  004:SGMW P/N              $%    $%  ANS004.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

   00.EPS数据流

	$	REQ000:750 03 22 30 01 00 00 00 00          $
	$	REQ001:750 03 22 30 02 00 00 00 00          $
	$	REQ002:750 03 22 30 03 00 00 00 00          $
	$	REQ003:750 03 22 30 04 00 00 00 00          $
	$	REQ004:750 03 22 30 05 00 00 00 00          $

  $  000.EPS供电电压           $    $  伏特       $    $  ANS000.BYTE003  $  X*0.1+5
  $  001.方向盘转角            $    $  deg        $    $  ANS001.BYTE003  $  XY*0.0625-2048
  $  002.ECU内部温度           $    $  摄氏度     $    $  ANS002.BYTE003  $  X*1-40
  $  003.转向输出扭矩          $    $  牛米       $    $  ANS003.BYTE003  $  XY*0.0039062-128
  $  004.车速有效性            $    $  -          $    $  ANS004.BYTE003  $  if(X1&0x80)y=@0085;else y=@0086;
  $  005.EPS标定完成情况       $    $  -          $    $  ANS004.BYTE003  $  if(X1&0x40)y=@0116;else y=@0115;
  $  006.EPS安装完成           $    $  -          $    $  ANS004.BYTE003  $  if(X1&0x20)y=@0116;else y=@0115;
  $  007.EPS找到机械中位       $    $  -          $    $  ANS004.BYTE003  $  if(X1&0x10)y=@0116;else y=@0115;
  $  008.EPS标定值存储         $    $  -          $    $  ANS004.BYTE003  $  if(X1&0x8)y=@0116;else y=@0115;


