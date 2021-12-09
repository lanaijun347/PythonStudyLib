$~#6$~#14$~500$~768
;******************************************************************************************************************************************************

车型代号:E200
车型:E200
排量:N/A
年份:2018
模块名缩写:IC
模块名:仪表模块
供应商:航盛&天有为
诊断代码:E200_IC_2018_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:760 02 10 01 00 00 00 00 00          $~          768 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:760 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:760 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:760 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/E200DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:760 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:760 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:760 03 22 F1 90 00 00 00 00          $%
	$%	REQ001:760 03 22 F1 86 00 00 00 00          $%
	$%	REQ002:760 03 22 F1 8A 00 00 00 00          $%
	$%	REQ003:760 03 22 F1 8B 00 00 00 00          $%
	$%	REQ004:760 03 22 F1 8C 00 00 00 00          $%
	$%	REQ005:760 03 22 F1 93 00 00 00 00          $%
	$%	REQ006:760 03 22 F1 95 00 00 00 00          $%
	$%	REQ007:760 03 22 F1 CB 00 00 00 00          $%

  $%  000:车辆标识信息（VIN）       $%    $%  ANS000.BYTE003  $%  17个字节的ASCII显示
  $%  001:激活诊断会话              $%    $%  ANS001.BYTE003  $%  X
  $%  002:供应商标识信息            $%    $%  ANS002.BYTE003  $%  07个字节的ASCII显示
  $%  003:ECU制造日期               $%    $%  ANS003.BYTE003  $%  04个字节的HEX显示
  $%  004:ECU序列号                 $%    $%  ANS004.BYTE003  $%  20个字节的ASCII显示
  $%  005:供应商ECU硬件版本号       $%    $%  ANS005.BYTE003  $%  02个字节的HEX显示
  $%  006:供应商ECU软件版本号       $%    $%  ANS006.BYTE003  $%  02个字节的HEX显示
  $%  007:零件号（SGMW P/N）        $%    $%  ANS007.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

 $ 00.所有数据

	$	REQ000:760 03 22 60 12 00 00 00 00          $
	$	REQ001:760 03 22 60 22 00 00 00 00          $
	$	REQ002:760 03 22 60 24 00 00 00 00          $
	$	REQ003:760 03 22 60 25 00 00 00 00          $
	$	REQ004:760 03 22 60 44 00 00 00 00          $
	$	REQ005:760 03 22 60 47 00 00 00 00          $
	$	REQ006:760 03 22 60 48 00 00 00 00          $
	$	REQ007:760 03 22 60 49 00 00 00 00          $
	$	REQ008:760 03 22 60 4A 00 00 00 00          $
	$	REQ009:760 03 22 60 27 00 00 00 00          $
	$	REQ010:760 03 22 60 52 00 00 00 00          $
	$	REQ011:760 03 22 60 01 00 00 00 00          $
	$	REQ012:760 03 22 60 40 00 00 00 00          $
	$	REQ013:760 03 22 60 46 00 00 00 00          $
	$	REQ014:760 03 22 60 4B 00 00 00 00          $
	$	REQ015:760 03 22 60 4C 00 00 00 00          $
	$	REQ016:760 03 22 60 4D 00 00 00 00          $

  $  000.KL30模拟电压输入               $    $  V        $    $  ANS000.BYTE003  $  X*0.1+5
  $  001.车速表输出                     $    $  km/h     $    $  ANS001.BYTE003  $  XY*0.015625
  $  002.行驶里程输出                   $    $  km       $    $  ANS002.BYTE003  $  X1X2X3X4*0.015625
  $  003.Trip1输出                      $    $  km       $    $  ANS003.BYTE003  $  XY*0.015257
  $  004.续驶里程                       $    $  km       $    $  ANS004.BYTE003  $  XY
  $  005.电机输出转速                   $    $  rpm      $    $  ANS005.BYTE003  $  XY*1-16384
  $  006.SOC输出                        $    $  %        $    $  ANS006.BYTE003  $  X*0.4
  $  007.电流输出                       $    $  A        $    $  ANS007.BYTE003  $  XY*0.1-1000
  $  008.电压输出                       $    $  V        $    $  ANS008.BYTE003  $  XY*0.1
  $  009.左前轮胎胎压输出               $    $  kpa      $    $  ANS009.BYTE003  $  X*1.38
  $  010.右前轮胎胎压输出               $    $  kpa      $    $  ANS009.BYTE003  $  X*1.38
  $  011.左后轮胎胎压输出               $    $  kpa      $    $  ANS009.BYTE003  $  X*1.38
  $  012.右后轮胎胎压输出               $    $  kpa      $    $  ANS009.BYTE003  $  X*1.38
  $  013.左前轮胎温度输出               $    $  ℃       $    $  ANS010.BYTE003  $  X*0.65-40
  $  014.右前轮胎温度输出               $    $  ℃       $    $  ANS010.BYTE003  $  X*0.65-40
  $  015.左后轮胎温度输出               $    $  ℃       $    $  ANS010.BYTE003  $  X*0.65-40
  $  016.右后轮胎温度输出               $    $  ℃       $    $  ANS010.BYTE003  $  X*0.65-40
  $  017.主驾驶员安全带未系提醒         $    $  -        $    $  ANS011.BYTE003  $  if(X1&0x1)y=@0041;else y=@0040;
  $  018.主驾驶员安全带未系指示灯       $    $  -        $    $  ANS012.BYTE003  $  if(X1&0x80)y=@0041;else y=@0040;
  $  019.远光指示灯                     $    $  -        $    $  ANS012.BYTE003  $  if(X1&0x20)y=@0041;else y=@0040;
  $  020.左转向指示灯                   $    $  -        $    $  ANS012.BYTE003  $  if(X1&0x10)y=@0041;else y=@0040;
  $  021.右转向指示灯                   $    $  -        $    $  ANS012.BYTE003  $  if(X1&0x8)y=@0041;else y=@0040;
  $  022.前雾指示灯                     $    $  -        $    $  ANS012.BYTE003  $  if(X1&0x4)y=@0041;else y=@0040;
  $  023.后雾指示灯                     $    $  -        $    $  ANS012.BYTE003  $  if(X1&0x2)y=@0041;else y=@0040;
  $  024.安全气囊故障指示灯             $    $  -        $    $  ANS012.BYTE005  $  if(X1&0x80)y=@0041;else y=@0040;
  $  025.ESC警告指示灯                  $    $  -        $    $  ANS012.BYTE005  $  if(X1&0x40)y=@0041;else y=@0040;
  $  026.ESC开关指示灯                  $    $  -        $    $  ANS012.BYTE005  $  if(X1&0x20)y=@0041;else y=@0040;
  $  027.EPS故障指示灯                  $    $  -        $    $  ANS012.BYTE005  $  if(X1&0x10)y=@0041;else y=@0040;
  $  028.EBD故障指示灯                  $    $  -        $    $  ANS012.BYTE005  $  if(X1&0x8)y=@0041;else y=@0040;
  $  029.胎压故障指示灯                 $    $  -        $    $  ANS012.BYTE005  $  if(X1&0x2)y=@0041;else y=@0040;
  $  030.电子手刹工作指示灯             $    $  -        $    $  ANS013.BYTE003  $  if(X1&0x80)y=@0041;else y=@0040;
  $  031.电子手刹故障指示灯             $    $  -        $    $  ANS013.BYTE003  $  if(X1&0x40)y=@0041;else y=@0040;
  $  032.AUTOHOLD工作指示灯             $    $  -        $    $  ANS013.BYTE003  $  if(X1&0x20)y=@0041;else y=@0040;
  $  033.AUTOHOLD故障指示灯             $    $  -        $    $  ANS013.BYTE003  $  if(X1&0x10)y=@0041;else y=@0040;
  $  034.12V蓄电池充电状态指示灯        $    $  -        $    $  ANS014.BYTE003  $  if(X1&0x80)y=@0041;else y=@0040;
  $  035.手刹指示灯                     $    $  -        $    $  ANS014.BYTE003  $  if(X1&0x40)y=@0041;else y=@0040;
  $  036.电机过热指示灯                 $    $  -        $    $  ANS014.BYTE003  $  if(X1&0x20)y=@0041;else y=@0040;
  $  037.READY指示灯                    $    $  -        $    $  ANS014.BYTE003  $  if(X1&0x10)y=@0041;else y=@0040;
  $  038.车辆充电状态指示灯             $    $  -        $    $  ANS014.BYTE003  $  if(X1&0x8)y=@0041;else y=@0040;
  $  039.充电线连接指示灯               $    $  -        $    $  ANS014.BYTE003  $  if(X1&0x4)y=@0041;else y=@0040;
  $  040.动力电池切断指示               $    $  -        $    $  ANS014.BYTE003  $  if(X1&0x2)y=@0041;else y=@0040;
  $  041.整车绝缘报警指示               $    $  -        $    $  ANS014.BYTE003  $  if(X1&0x1)y=@0041;else y=@0040;
  $  042.动力电池故障指示灯             $    $  -        $    $  ANS014.BYTE004  $  if(X1&0x80)y=@0041;else y=@0040;
  $  043.整车故障指示灯                 $    $  -        $    $  ANS014.BYTE004  $  if(X1&0x40)y=@0041;else y=@0040;
  $  044.动力蓄电池荷电状态指示灯       $    $  -        $    $  ANS014.BYTE004  $  if(X1&0x10)y=@0041;else y=@0040;
  $  045.动力电池温度异常指示灯         $    $  -        $    $  ANS014.BYTE004  $  if(X1&0x4)y=@0041;else y=@0040;
  $  046.真空泵故障报警指示灯           $    $  -        $    $  ANS014.BYTE004  $  if(X1&0x1)y=@0041;else y=@0040;
  $  047.电机故障指示灯                 $    $  -        $    $  ANS014.BYTE005  $  if(X1&0x80)y=@0041;else y=@0040;
  $  048.行人警示指示灯                 $    $  -        $    $  ANS014.BYTE005  $  if(X1&0x20)y=@0041;else y=@0040;
  $  049.电池包加热指示                 $    $  -        $    $  ANS014.BYTE005  $  if(X1&0x10)y=@0041;else y=@0040;
  $  050.驾驶员离开提醒                 $    $  -        $    $  ANS015.BYTE003  $  if(X1&0x80)y=@0041;else y=@0040;
  $  051.左门状态                       $    $  -        $    $  ANS016.BYTE003  $  if(X1&0x80)y=@0041;else y=@0040;
  $  052.右门状态                       $    $  -        $    $  ANS016.BYTE003  $  if(X1&0x40)y=@0041;else y=@0040;
  $  053.尾门状态                       $    $  -        $    $  ANS016.BYTE003  $  if(X1&0x20)y=@0041;else y=@0040;
  $  054.发动机罩状态                   $    $  -        $    $  ANS016.BYTE003  $  if(X1&0x10)y=@0041;else y=@0040;

 $ 01.嗡鸣器

	$	REQ000:760 03 22 60 01 00 00 00 00          $
	$	REQ001:760 03 22 60 4C 00 00 00 00          $

  $  000.主驾驶员安全带未系提醒       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x1)y=@0041;else y=@0040;
  $  001.驾驶员离开提醒               $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0041;else y=@0040;

 $ 02.车辆状态输出

	$	REQ000:760 03 22 60 12 00 00 00 00          $
	$	REQ001:760 03 22 60 22 00 00 00 00          $
	$	REQ002:760 03 22 60 24 00 00 00 00          $
	$	REQ003:760 03 22 60 44 00 00 00 00          $

  $  000.KL30模拟电压输入       $    $  V        $    $  ANS000.BYTE003  $  X*0.1+5
  $  001.车速表输出             $    $  km/h     $    $  ANS001.BYTE003  $  XY*0.015625
  $  002.行驶里程输出           $    $  km       $    $  ANS002.BYTE003  $  X1X2X3X4*0.015625
  $  003.续驶里程               $    $  km       $    $  ANS003.BYTE003  $  XY

 $ 03.指示灯输出

	$	REQ000:760 03 22 60 40 00 00 00 00          $
	$	REQ001:760 03 22 60 46 00 00 00 00          $
	$	REQ002:760 03 22 60 4B 00 00 00 00          $

  $  000.主驾驶员安全带未系指示灯       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0041;else y=@0040;
  $  001.远光指示灯                     $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0041;else y=@0040;
  $  002.左转向指示灯                   $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x10)y=@0041;else y=@0040;
  $  003.右转向指示灯                   $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x8)y=@0041;else y=@0040;
  $  004.前雾指示灯                     $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x4)y=@0041;else y=@0040;
  $  005.后雾指示灯                     $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x2)y=@0041;else y=@0040;
  $  006.安全气囊故障指示灯             $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x80)y=@0041;else y=@0040;
  $  007.ESC警告指示灯                  $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x40)y=@0041;else y=@0040;
  $  008.ESC开关指示灯                  $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x20)y=@0041;else y=@0040;
  $  009.EPS故障指示灯                  $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x10)y=@0041;else y=@0040;
  $  010.EBD故障指示灯                  $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x8)y=@0041;else y=@0040;
  $  011.胎压故障指示灯                 $    $  -     $    $  ANS000.BYTE005  $  if(X1&0x2)y=@0041;else y=@0040;
  $  012.电子手刹工作指示灯             $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0041;else y=@0040;
  $  013.电子手刹故障指示灯             $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x40)y=@0041;else y=@0040;
  $  014.AUTOHOLD工作指示灯             $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x20)y=@0041;else y=@0040;
  $  015.AUTOHOLD故障指示灯             $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x10)y=@0041;else y=@0040;
  $  016.12V蓄电池充电状态指示灯        $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x80)y=@0041;else y=@0040;
  $  017.手刹指示灯                     $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x40)y=@0041;else y=@0040;
  $  018.电机过热指示灯                 $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x20)y=@0041;else y=@0040;
  $  019.READY指示灯                    $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x10)y=@0041;else y=@0040;
  $  020.车辆充电状态指示灯             $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x8)y=@0041;else y=@0040;
  $  021.充电线连接指示灯               $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x4)y=@0041;else y=@0040;
  $  022.动力电池切断指示               $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x2)y=@0041;else y=@0040;
  $  023.整车绝缘报警指示               $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x1)y=@0041;else y=@0040;
  $  024.动力电池故障指示灯             $    $  -     $    $  ANS002.BYTE004  $  if(X1&0x80)y=@0041;else y=@0040;
  $  025.整车故障指示灯                 $    $  -     $    $  ANS002.BYTE004  $  if(X1&0x40)y=@0041;else y=@0040;
  $  026.动力蓄电池荷电状态指示灯       $    $  -     $    $  ANS002.BYTE004  $  if(X1&0x10)y=@0041;else y=@0040;
  $  027.动力电池温度异常指示灯         $    $  -     $    $  ANS002.BYTE004  $  if(X1&0x4)y=@0041;else y=@0040;
  $  028.真空泵故障报警指示灯           $    $  -     $    $  ANS002.BYTE004  $  if(X1&0x1)y=@0041;else y=@0040;
  $  029.电机故障指示灯                 $    $  -     $    $  ANS002.BYTE005  $  if(X1&0x80)y=@0041;else y=@0040;
  $  030.行人警示指示灯                 $    $  -     $    $  ANS002.BYTE005  $  if(X1&0x20)y=@0041;else y=@0040;
  $  031.电池包加热指示                 $    $  -     $    $  ANS002.BYTE005  $  if(X1&0x10)y=@0041;else y=@0040;

 $ 04.动力系统输出显示

	$	REQ000:760 03 22 60 25 00 00 00 00          $
	$	REQ001:760 03 22 60 47 00 00 00 00          $
	$	REQ002:760 03 22 60 4B 00 00 00 00          $

  $  000.Trip1输出                      $    $  km      $    $  ANS000.BYTE003  $  XY*0.015257
  $  001.电机输出转速                   $    $  rpm     $    $  ANS001.BYTE003  $  XY*1-16384
  $  002.电机过热指示灯                 $    $  -       $    $  ANS002.BYTE003  $  if(X1&0x20)y=@0041;else y=@0040;
  $  003.动力电池切断指示               $    $  -       $    $  ANS002.BYTE003  $  if(X1&0x2)y=@0041;else y=@0040;
  $  004.动力电池故障指示灯             $    $  -       $    $  ANS002.BYTE004  $  if(X1&0x80)y=@0041;else y=@0040;
  $  005.动力蓄电池荷电状态指示灯       $    $  -       $    $  ANS002.BYTE004  $  if(X1&0x10)y=@0041;else y=@0040;
  $  006.动力电池温度异常指示灯         $    $  -       $    $  ANS002.BYTE004  $  if(X1&0x4)y=@0041;else y=@0040;
  $  007.电机故障指示灯                 $    $  -       $    $  ANS002.BYTE005  $  if(X1&0x80)y=@0041;else y=@0040;
  $  008.行人警示指示灯                 $    $  -       $    $  ANS002.BYTE005  $  if(X1&0x20)y=@0041;else y=@0040;
  $  009.电池包加热指示                 $    $  -       $    $  ANS002.BYTE005  $  if(X1&0x10)y=@0041;else y=@0040;

 $ 05.电池输出

	$	REQ000:760 03 22 60 48 00 00 00 00          $
	$	REQ001:760 03 22 60 49 00 00 00 00          $
	$	REQ002:760 03 22 60 4A 00 00 00 00          $

  $  000.SOC输出        $    $  %     $    $  ANS000.BYTE003  $  X*0.4
  $  001.电流输出       $    $  A     $    $  ANS001.BYTE003  $  XY*0.1-1000
  $  002.电压输出       $    $  V     $    $  ANS002.BYTE003  $  XY*0.1


