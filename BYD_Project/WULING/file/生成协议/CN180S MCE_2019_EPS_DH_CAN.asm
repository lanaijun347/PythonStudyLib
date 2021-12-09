$~#6$~#14$~500$~758
;******************************************************************************************************************************************************

车型代号:CN180S
车型:宝骏510
排量:1.5L
年份:2016
模块名缩写:EPS
模块名:电子助力转向
供应商:东华
诊断代码:CN180S MCE_2019_EPS_DH_CAN

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

		$*$*DTC/RS-3DTCS


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
	$%	REQ005:750 03 22 F1 8A 00 00 00 00          $%
	$%	REQ006:750 03 22 F1 88 00 00 00 00          $%
	$%	REQ007:750 03 22 F1 91 00 00 00 00          $%

  $%  000:ECU生产日期           $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN                   $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:供应商ECU硬件号       $%    $%  ANS002.BYTE003  $%  10个字节的ASCII显示
  $%  003:供应商ECU软件号       $%    $%  ANS003.BYTE003  $%  10个字节的ASCII显示
  $%  004:SGMW P/N              $%    $%  ANS004.BYTE003  $%  X1X2X3X4
  $%  005:供应商标识符          $%    $%  ANS005.BYTE003  $%  07个字节的ASCII显示
  $%  006:SGMW的ECU软件号       $%    $%  ANS006.BYTE003  $%  X1X2X3X4
  $%  007:SGMW的ECU硬件号       $%    $%  ANS007.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

   00.EPS数据流

	$	REQ000:750 03 22 30 01 00 00 00 00          $
	$	REQ001:750 03 22 30 02 00 00 00 00          $
	$	REQ002:750 03 22 30 03 00 00 00 00          $
	$	REQ003:750 03 22 30 04 00 00 00 00          $
	$	REQ004:750 03 22 30 06 00 00 00 00          $
	$	REQ005:750 03 22 30 0E 00 00 00 00          $
	$	REQ006:750 03 22 40 01 00 00 00 00          $
	$	REQ007:750 03 22 40 03 00 00 00 00          $
	$	REQ008:750 03 22 30 05 00 00 00 00          $
	$	REQ009:750 03 22 40 02 00 00 00 00          $

  $  000.EPS供电电压                $    $  伏特       $    $  ANS000.BYTE003  $  X*0.1+5
  $  001.方向盘转角                 $    $  deg        $    $  ANS001.BYTE003  $  XY*0.1-740
  $  002.ECU内部温度                $    $  摄氏度     $    $  ANS002.BYTE003  $  X*1-40
  $  003.方向盘输入扭矩             $    $  牛米       $    $  ANS003.BYTE003  $  XY*0.0039062-128
  $  004.发动机采集的整车速度       $    $  KM/H       $    $  ANS004.BYTE003  $  X
  $  005.发动机转速                 $    $  rpm        $    $  ANS005.BYTE003  $  XY
  $  006.ABS采集的整车速度          $    $  KM/H       $    $  ANS006.BYTE003  $  X
  $  007.电机输出扭矩               $    $  牛米       $    $  ANS007.BYTE003  $  XY*0.0039062-128
  $  008.车速有效性                 $    $  -          $    $  ANS008.BYTE003  $  if(X1&0x80)y=@0085;else y=@0086;
  $  009.EPS标定完成情况            $    $  -          $    $  ANS008.BYTE003  $  if(X1&0x40)y=@0116;else y=@0115;
  $  010.EPS安装完成                $    $  -          $    $  ANS008.BYTE003  $  if(X1&0x20)y=@0116;else y=@0115;
  $  011.EPS找到机械中位            $    $  -          $    $  ANS008.BYTE003  $  if(X1&0x10)y=@0116;else y=@0115;
  $  012.EPS标定值存储              $    $  -          $    $  ANS008.BYTE003  $  if(X1&0x8)y=@0116;else y=@0115;
  $  013.发动机运行状态             $    $  -          $    $  ANS009.BYTE003  $  if(X1&0x80)y=@0118;else y=@0117;
  $  014.发动机转速有效性           $    $  -          $    $  ANS009.BYTE003  $  if(X1&0x40)y=@0085;else y=@0086;


