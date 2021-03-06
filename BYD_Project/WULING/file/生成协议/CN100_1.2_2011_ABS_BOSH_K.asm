$~#7$~#7$~10400
<VCI>
	<ACTIVE_ADDNODE type="0" num="0">
		<param type="string" value="1,1"/> 
		<param type="string" value="9,14"/>
	</ACTIVE_ADDNODE>
</VCI>

车型代号:CN100
车型:五菱宏光
排量:1.2L
年份:2011
模块名缩写:CN100
模块名:ABS
供应商:博世
诊断代码:CN100_1.2_2010_ABS_K
ECU地址:28
初始化方式:快速初始化
初始化头字节格式:80
其他服务头字节格式:80

;******************************************************************************************************************************************************
激活命令

	$~	REQ000: 80 28 F1 01 81 1B          $~           28 F1 01 81 1B

;******************************************************************************************************************************************************
退出命令

	$@	REQ000: 80 28 F1 01 82 1C          $@

;******************************************************************************************************************************************************
空闲命令

	$!	REQ000: 80 28 F1 02 3E 00 D9          $!

;******************************************************************************************************************************************************
$#读当前故障码

	$#	REQ000: 80 28 F1 02 18 01 B4          $#

				规律:帧长决定故障码个数，$#BYTE02$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#3$#个字节表示码号,后1个字节表示状态位。

				状态位-->当前:0x20,历史:0x0,间歇:-

		$*$*DTC/WLHGDTCS


;******************************************************************************************************************************************************
$#读历史故障码

	$#	REQ000: 80 28 F1 02 18 03 B6          $#

				规律:帧长决定故障码个数，$#BYTE02$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#3$#个字节表示码号,后1个字节表示状态位。

				状态位-->当前:0x20,历史:0x0,间歇:-

;******************************************************************************************************************************************************
清除故障码

	$$	REQ000: 80 28 F1 04 14 FF FF FF AE          $$

;******************************************************************************************************************************************************
模块信息

	$%	REQ000: 80 28 F1 02 21 80 3C          $%

  $%  000:车辆名称           $%    $%  ANS000.BYTE002  $%  05个字节的ASCII显示
  $%  001:系统名称           $%    $%  ANS000.BYTE007  $%  03个字节的ASCII显示
  $%  002:软件部分编号       $%    $%  ANS000.BYTE010  $%  03个字节的HEX显示
  $%  003:软硬件版本         $%    $%  ANS000.BYTE013  $%  04个字节的HEX显示
  $%  004:供应商零件号       $%    $%  ANS000.BYTE017  $%  05个字节的HEX显示
  $%  005:整车厂零件号       $%    $%  ANS000.BYTE022  $%  13个字节的ASCII显示

;******************************************************************************************************************************************************
数据流

	$	REQ000: 80 28 F1 02 21 02 BE          $
	$	REQ001: 80 28 F1 02 21 03 BF          $
	$	REQ002: 80 28 F1 02 21 04 C0          $
	$	REQ003: 80 28 F1 02 21 08 C4          $
	$	REQ004: 80 28 F1 02 21 09 C5          $
	$	REQ005: 80 28 F1 02 21 10 CC          $
	$	REQ006: 80 28 F1 02 21 1C D8          $
	$	REQ007: 80 28 F1 02 21 1F DB          $

  $  000.液压块的充填状态               $    $  -        $    $  ANS000.BYTE002  $  00:填充未完成		AA:填充完成(成功)		EE:填充完成(不成功)		FF:初始状态		其他:-
  $  001.终端检测状态                   $    $  -        $    $  ANS001.BYTE002  $  00:填充未完成		AA:填充完成(成功)		EE:填充完成(不成功)		FF:初始状态		其他:-
  $  002.左前轮速度                     $    $  km/h     $    $  ANS002.BYTE002  $  XY*0.0563
  $  003.右前轮速度                     $    $  km/h     $    $  ANS002.BYTE002  $  XY*0.0563
  $  004.左后轮速度                     $    $  km/h     $    $  ANS002.BYTE002  $  XY*0.0563
  $  005.右后轮速度                     $    $  km/h     $    $  ANS002.BYTE002  $  XY*0.0563
  $  006.车速                           $    $  km/h     $    $  ANS003.BYTE002  $  XY*0.0563
  $  007.左前阀（进口）继电器状态       $    $  -        $    $  ANS004.BYTE002  $  if(X1&0x1)y=@0120;else y=@0119;
  $  008.左前阀（出口）继电器状态       $    $  -        $    $  ANS004.BYTE002  $  if(X1&0x2)y=@0120;else y=@0119;
  $  009.右前阀（进口）继电器状态       $    $  -        $    $  ANS004.BYTE002  $  if(X1&0x4)y=@0120;else y=@0119;
  $  010.右前阀（出口）继电器状态       $    $  -        $    $  ANS004.BYTE002  $  if(X1&0x8)y=@0120;else y=@0119;
  $  011.左后阀（进口）继电器状态       $    $  -        $    $  ANS004.BYTE002  $  if(X1&0x10)y=@0120;else y=@0119;
  $  012.左后阀（出口）继电器状态       $    $  -        $    $  ANS004.BYTE002  $  if(X1&0x20)y=@0120;else y=@0119;
  $  013.右后阀（进口）继电器状态       $    $  -        $    $  ANS004.BYTE002  $  if(X1&0x40)y=@0120;else y=@0119;
  $  014.右后阀（出口）继电器状态       $    $  -        $    $  ANS004.BYTE002  $  if(X1&0x80)y=@0120;else y=@0119;
  $  015.继电器阀状态                   $    $  -        $    $  ANS004.BYTE002  $  if(X1&0x1)y=@0120;else y=@0119;
  $  016.泵状态                         $    $  -        $    $  ANS004.BYTE002  $  if(X1&0x2)y=@0120;else y=@0119;
  $  017.气泵马达状态                   $    $  -        $    $  ANS005.BYTE002  $  if(X1&0x80)y=@0120;else y=@0119;
  $  018.电池电压                       $    $  V        $    $  ANS006.BYTE002  $  X*0.08
  $  019.当前继电器阀关闭状态           $    $  -        $    $  ANS007.BYTE002  $  if(X1&0x1)y=@0224;else y=@0223;
  $  020.当前阀限速状态                 $    $  -        $    $  ANS007.BYTE002  $  if(X1&0x2)y=@0224;else y=@0223;

