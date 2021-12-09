$~#6$~#14$~500$~7E9
;******************************************************************************************************************************************************

车型代号:CN201S
车型:宝骏560
排量:N15T
年份:2018
模块名缩写:TCM
模块名:变速器控制系统
供应商:上汽齿
诊断代码:CN202S_N15T_2018_TCM_CAN

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

		$*$*DTC/BJ530DTCS


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
	$%	REQ003:7E1 03 22 F1 93 00 00 00 00          $%
	$%	REQ004:7E1 03 22 F1 95 00 00 00 00          $%

  $%  000:ECU生产日期       $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN               $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:零件号            $%    $%  ANS002.BYTE003  $%  X1X2X3X4
  $%  003:硬件版本号        $%    $%  ANS003.BYTE003  $%  08个字节的ASCII显示
  $%  004:软件版本号        $%    $%  ANS004.BYTE003  $%  08个字节的ASCII显示

;******************************************************************************************************************************************************
数据流

 $ 00.其他信息

	$	REQ000:7E1 03 22 11 0D 00 00 00 00          $
	$	REQ001:7E1 03 22 11 0E 00 00 00 00          $
	$	REQ002:7E1 03 22 11 0F 00 00 00 00          $
	$	REQ003:7E1 03 22 11 10 00 00 00 00          $
	$	REQ004:7E1 03 22 11 11 00 00 00 00          $
	$	REQ005:7E1 03 22 10 25 00 00 00 00          $
	$	REQ006:7E1 03 22 10 26 00 00 00 00          $
	$	REQ007:7E1 03 22 10 27 00 00 00 00          $
	$	REQ008:7E1 03 22 10 28 00 00 00 00          $
	$	REQ009:7E1 03 22 10 29 00 00 00 00          $
	$	REQ010:7E1 03 22 10 00 00 00 00 00          $
	$	REQ011:7E1 03 22 10 01 00 00 00 00          $
	$	REQ012:7E1 03 22 10 02 00 00 00 00          $
	$	REQ013:7E1 03 22 10 03 00 00 00 00          $
	$	REQ014:7E1 03 22 10 04 00 00 00 00          $
	$	REQ015:7E1 03 22 10 05 00 00 00 00          $
	$	REQ016:7E1 03 22 10 06 00 00 00 00          $
	$	REQ017:7E1 03 22 10 07 00 00 00 00          $
	$	REQ018:7E1 03 22 10 0A 00 00 00 00          $
	$	REQ019:7E1 03 22 10 0B 00 00 00 00          $
	$	REQ020:7E1 03 22 10 0C 00 00 00 00          $
	$	REQ021:7E1 03 22 10 0D 00 00 00 00          $
	$	REQ022:7E1 03 22 10 0E 00 00 00 00          $
	$	REQ023:7E1 03 22 10 0F 00 00 00 00          $
	$	REQ024:7E1 03 22 10 10 00 00 00 00          $
	$	REQ025:7E1 03 22 10 11 00 00 00 00          $
	$	REQ026:7E1 03 22 10 12 00 00 00 00          $
	$	REQ027:7E1 03 22 10 4D 00 00 00 00          $
	$	REQ028:7E1 03 22 10 47 00 00 00 00          $
	$	REQ029:7E1 03 22 10 34 00 00 00 00          $
	$	REQ030:7E1 03 22 10 3A 00 00 00 00          $

  $  000.主动轮电磁阀电流设定值            $    $  mA       $    $  ANS000.BYTE003  $  X1X2X3X4*0.1
  $  001.系统电磁阀电流设定值              $    $  mA       $    $  ANS001.BYTE003  $  X1X2X3X4*0.1
  $  002.DNR电磁阀电流设定值               $    $  mA       $    $  ANS002.BYTE003  $  X1X2X3X4*0.1
  $  003.从动轮电磁阀电流设定值            $    $  mA       $    $  ANS003.BYTE003  $  X1X2X3X4*0.1
  $  004.TC电磁阀电流设定值                $    $  mA       $    $  ANS004.BYTE003  $  X1X2X3X4*0.1
  $  005.主动轮电磁阀电流值                $    $  mA       $    $  ANS005.BYTE003  $  XY*0.1
  $  006.系统轮电磁阀电流值                $    $  mA       $    $  ANS006.BYTE003  $  XY*0.1
  $  007.DNR电磁阀电流值                   $    $  mA       $    $  ANS007.BYTE003  $  XY*0.1
  $  008.从动轮电磁阀电流值                $    $  mA       $    $  ANS008.BYTE003  $  XY*0.1
  $  009.TC电磁阀电流值                    $    $  mA       $    $  ANS009.BYTE003  $  XY*0.1
  $  010.控制器供电电压                    $    $  V        $    $  ANS010.BYTE003  $  X*0.25
  $  011.高边输出1电压值                   $    $  V        $    $  ANS011.BYTE003  $  X*0.25
  $  012.高边输出2电压值                   $    $  V        $    $  ANS012.BYTE003  $  X*0.25
  $  013.高边输出3电压值                   $    $  V        $    $  ANS013.BYTE003  $  X*0.25
  $  014.9V传感器电源1电压                 $    $  V        $    $  ANS014.BYTE003  $  X*0.25
  $  015.9V传感器电源2电压                 $    $  V        $    $  ANS015.BYTE003  $  X*0.25
  $  016.5V传感器电源1电压                 $    $  V        $    $  ANS016.BYTE003  $  X*0.25
  $  017.5V传感器电源2电压                 $    $  V        $    $  ANS017.BYTE003  $  X*0.25
  $  018.经济/运动模式信号输入电压值       $    $  V        $    $  ANS018.BYTE003  $  XY*0.001
  $  019.手动信号输入电压值                $    $  V        $    $  ANS019.BYTE003  $  XY*0.001
  $  020.冬季模式信号输入电压值            $    $  V        $    $  ANS020.BYTE003  $  XY*0.001
  $  021.档位传感器输入信号1状态           $    $  %        $    $  ANS021.BYTE003  $  XY*0.01
  $  022.档位传感器输入信号2状态           $    $  %        $    $  ANS022.BYTE003  $  XY*0.01
  $  023.制动信号1输入状态                 $    $  -        $    $  ANS023.BYTE003  $  00:非制动		01:制动		其他:-
  $  024.制动信号2输入状态                 $    $  -        $    $  ANS024.BYTE003  $  00:非制动		01:制动		其他:-
  $  025.钥匙起动信号输入状态              $    $  -        $    $  ANS025.BYTE003  $  00:非启动		01:启动		其他:-
  $  026.起动信号控制端输出状态            $    $  -        $    $  ANS026.BYTE003  $  00:启动		01:非启动		其他:-
  $  027.发动机运转状态                    $    $  -        $    $  ANS027.BYTE003  $  00:非运转		01:运转		其他:-
  $  028.整车行驶里程                      $    $  km       $    $  ANS028.BYTE003  $  X1X2X3X4*0.015625
  $  029.驾驶控制模式                      $    $  -        $    $  ANS029.BYTE003  $  00:未定义		01:舒适模式		02:运动模式		03:手动模式		04:暖机模式		05:冷却模式		06:未使用		07:后退		08:经济模式		09:冬季模式		其他:-
  $  030.SubRom读取状态                    $    $           $    $  ANS030.BYTE003  $  00:初始值		55:未读取		AA:已读取		其他:-

 $ 01.转速信息

	$	REQ000:7E1 03 22 10 46 00 00 00 00          $
	$	REQ001:7E1 03 22 10 24 00 00 00 00          $
	$	REQ002:7E1 03 22 10 22 00 00 00 00          $
	$	REQ003:7E1 03 22 10 23 00 00 00 00          $
	$	REQ004:7E1 03 22 11 03 00 00 00 00          $
	$	REQ005:7E1 03 22 10 49 00 00 00 00          $
	$	REQ006:7E1 03 22 10 32 00 00 00 00          $
	$	REQ007:7E1 03 22 10 33 00 00 00 00          $
	$	REQ008:7E1 03 22 10 35 00 00 00 00          $
	$	REQ009:7E1 03 22 10 40 00 00 00 00          $
	$	REQ010:7E1 03 22 10 41 00 00 00 00          $
	$	REQ011:7E1 03 22 10 48 00 00 00 00          $

  $  000.发动机转速           $    $  rpm      $    $  ANS000.BYTE003  $  XY*0.25
  $  001.涡轮转速值           $    $  rpm      $    $  ANS001.BYTE003  $  XY
  $  002.主动轮转速值         $    $  rpm      $    $  ANS002.BYTE003  $  XY
  $  003.从动轮转速值         $    $  rpm      $    $  ANS003.BYTE003  $  XY
  $  004.当前速比设定值       $    $  -        $    $  ANS004.BYTE003  $  X1X2X3X4*0.01
  $  005.当前速比             $    $  -        $    $  ANS005.BYTE003  $  XY*0.005
  $  006.TC离合器状态         $    $  -        $    $  ANS006.BYTE003  $  00:未定义		01:释放		02:充油		03:锁止滑磨		04:锁止		05:释放滑磨		其他:-
  $  007.换挡阀位置           $    $  -        $    $  ANS007.BYTE003  $  00:未定义		01:驻车档		02:后退档		03:空挡		04:前进挡		05:运动档		其他:-
  $  008.变速箱油温           $    $  °C      $    $  ANS008.BYTE003  $  X*1-40
  $  009.左前轮速             $    $  km/h     $    $  ANS009.BYTE003  $  XY*0.01
  $  010.右前轮速             $    $  km/h     $    $  ANS010.BYTE003  $  XY*0.01
  $  011.车速                 $    $  km/h     $    $  ANS011.BYTE003  $  XY*0.015625

 $ 02.压力信息

	$	REQ000:7E1 03 22 11 08 00 00 00 00          $
	$	REQ001:7E1 03 22 11 09 00 00 00 00          $
	$	REQ002:7E1 03 22 11 0A 00 00 00 00          $
	$	REQ003:7E1 03 22 11 0B 00 00 00 00          $
	$	REQ004:7E1 03 22 11 0C 00 00 00 00          $
	$	REQ005:7E1 03 22 10 20 00 00 00 00          $
	$	REQ006:7E1 03 22 10 21 00 00 00 00          $
	$	REQ007:7E1 03 22 10 35 00 00 00 00          $
	$	REQ008:7E1 03 22 10 48 00 00 00 00          $
	$	REQ009:7E1 03 22 10 25 00 00 00 00          $
	$	REQ010:7E1 03 22 10 26 00 00 00 00          $
	$	REQ011:7E1 03 22 10 27 00 00 00 00          $
	$	REQ012:7E1 03 22 10 28 00 00 00 00          $
	$	REQ013:7E1 03 22 10 29 00 00 00 00          $

  $  000.主动轮压力设定值          $    $  bar      $    $  ANS000.BYTE003  $  X1X2X3X4*0.01
  $  001.从动轮压力设定值          $    $  bar      $    $  ANS001.BYTE003  $  X1X2X3X4*0.01
  $  002.系统压力设定值            $    $  bar      $    $  ANS002.BYTE003  $  X1X2X3X4*0.01
  $  003.DNR离合器压力设定值       $    $  bar      $    $  ANS003.BYTE003  $  X1X2X3X4*0.01
  $  004.TC压力设定值              $    $  bar      $    $  ANS004.BYTE003  $  X1X2X3X4*0.01
  $  005.主动轮压力值              $    $  bar      $    $  ANS005.BYTE003  $  XY*0.125
  $  006.从动轮压力值              $    $  bar      $    $  ANS006.BYTE003  $  XY*0.125
  $  007.变速箱油温                $    $  °C      $    $  ANS007.BYTE003  $  X*1-40
  $  008.车速                      $    $  km/h     $    $  ANS008.BYTE003  $  XY*0.015625
  $  009.主动轮电磁阀电流值        $    $  mA       $    $  ANS009.BYTE003  $  XY*0.1
  $  010.系统轮电磁阀电流值        $    $  mA       $    $  ANS010.BYTE003  $  XY*0.1
  $  011.DNR电磁阀电流值           $    $  mA       $    $  ANS011.BYTE003  $  XY*0.1
  $  012.从动轮电磁阀电流值        $    $  mA       $    $  ANS012.BYTE003  $  XY*0.1
  $  013.TC电磁阀电流值            $    $  mA       $    $  ANS013.BYTE003  $  XY*0.1

 $ 03.变矩器及离合器相关信息

	$	REQ000:7E1 03 22 10 46 00 00 00 00          $
	$	REQ001:7E1 03 22 10 24 00 00 00 00          $
	$	REQ002:7E1 03 22 10 22 00 00 00 00          $
	$	REQ003:7E1 03 22 10 23 00 00 00 00          $
	$	REQ004:7E1 03 22 10 30 00 00 00 00          $
	$	REQ005:7E1 03 22 10 31 00 00 00 00          $
	$	REQ006:7E1 03 22 10 32 00 00 00 00          $
	$	REQ007:7E1 03 22 10 33 00 00 00 00          $
	$	REQ008:7E1 03 22 10 4A 00 00 00 00          $
	$	REQ009:7E1 03 22 10 4B 00 00 00 00          $
	$	REQ010:7E1 03 22 10 4C 00 00 00 00          $
	$	REQ011:7E1 03 22 10 35 00 00 00 00          $
	$	REQ012:7E1 03 22 10 48 00 00 00 00          $
	$	REQ013:7E1 03 22 10 25 00 00 00 00          $
	$	REQ014:7E1 03 22 10 26 00 00 00 00          $
	$	REQ015:7E1 03 22 10 27 00 00 00 00          $
	$	REQ016:7E1 03 22 10 28 00 00 00 00          $
	$	REQ017:7E1 03 22 10 29 00 00 00 00          $

  $  000.发动机转速               $    $  rpm      $    $  ANS000.BYTE003  $  XY*0.25
  $  001.涡轮转速值               $    $  rpm      $    $  ANS001.BYTE003  $  XY
  $  002.主动轮转速值             $    $  rpm      $    $  ANS002.BYTE003  $  XY
  $  003.从动轮转速值             $    $  rpm      $    $  ANS003.BYTE003  $  XY
  $  004.前进挡离合器状态         $    $  -        $    $  ANS004.BYTE003  $  00:未定义		01:打开		02:充油		03:滑磨下行		04:接触		05:滑磨上行		06:结合		其他:-
  $  005.倒挡离合器状态           $    $  -        $    $  ANS005.BYTE003  $  00:未定义		01:打开		02:充油		03:滑磨下行		04:接触		05:滑磨上行		06:结合		其他:-
  $  006.TC离合器状态             $    $  -        $    $  ANS006.BYTE003  $  00:未定义		01:释放		02:充油		03:锁止滑磨		04:锁止		05:释放滑磨		其他:-
  $  007.换挡阀位置               $    $  -        $    $  ANS007.BYTE003  $  00:未定义		01:驻车档		02:后退档		03:空挡		04:前进挡		05:运动档		其他:-
  $  008.发动机稳态扭矩           $    $  Nm       $    $  ANS008.BYTE003  $  XY*0.5-848
  $  009.驾驶员要求扭矩           $    $  Nm       $    $  ANS009.BYTE003  $  XY*0.5-848
  $  010.推定发动机扭矩           $    $  Nm       $    $  ANS010.BYTE003  $  XY*0.5-848
  $  011.变速箱油温               $    $  °C      $    $  ANS011.BYTE003  $  X*1-40
  $  012.车速                     $    $  km/h     $    $  ANS012.BYTE003  $  XY*0.015625
  $  013.主动轮电磁阀电流值       $    $  mA       $    $  ANS013.BYTE003  $  XY*0.1
  $  014.系统轮电磁阀电流值       $    $  mA       $    $  ANS014.BYTE003  $  XY*0.1
  $  015.DNR电磁阀电流值          $    $  mA       $    $  ANS015.BYTE003  $  XY*0.1
  $  016.从动轮电磁阀电流值       $    $  mA       $    $  ANS016.BYTE003  $  XY*0.1
  $  017.TC电磁阀电流值           $    $  mA       $    $  ANS017.BYTE003  $  XY*0.1

 $ 04.速比信息

	$	REQ000:7E1 03 22 10 46 00 00 00 00          $
	$	REQ001:7E1 03 22 10 24 00 00 00 00          $
	$	REQ002:7E1 03 22 11 12 00 00 00 00          $
	$	REQ003:7E1 03 22 10 22 00 00 00 00          $
	$	REQ004:7E1 03 22 10 23 00 00 00 00          $
	$	REQ005:7E1 03 22 11 03 00 00 00 00          $
	$	REQ006:7E1 03 22 10 49 00 00 00 00          $
	$	REQ007:7E1 03 22 10 32 00 00 00 00          $
	$	REQ008:7E1 03 22 10 4A 00 00 00 00          $
	$	REQ009:7E1 03 22 10 35 00 00 00 00          $
	$	REQ010:7E1 03 22 10 48 00 00 00 00          $
	$	REQ011:7E1 03 22 10 45 00 00 00 00          $
	$	REQ012:7E1 03 22 10 44 00 00 00 00          $

  $  000.发动机转速           $    $  rpm      $    $  ANS000.BYTE003  $  XY*0.25
  $  001.涡轮转速值           $    $  rpm      $    $  ANS001.BYTE003  $  XY
  $  002.主动轮目标转值       $    $  rpm      $    $  ANS002.BYTE003  $  X1X2X3X4*0.1
  $  003.主动轮转速值         $    $  rpm      $    $  ANS003.BYTE003  $  XY
  $  004.从动轮转速值         $    $  rpm      $    $  ANS004.BYTE003  $  XY
  $  005.当前速比设定值       $    $  -        $    $  ANS005.BYTE003  $  X1X2X3X4*0.01
  $  006.当前速比             $    $  -        $    $  ANS006.BYTE003  $  XY*0.005
  $  007.TC离合器状态         $    $  -        $    $  ANS007.BYTE003  $  00:未定义		01:释放		02:充油		03:锁止滑磨		04:锁止		05:释放滑磨		其他:-
  $  008.发动机稳态扭矩       $    $  Nm       $    $  ANS008.BYTE003  $  XY*0.5-848
  $  009.变速箱油温           $    $  °C      $    $  ANS009.BYTE003  $  X*1-40
  $  010.车速                 $    $  km/h     $    $  ANS010.BYTE003  $  XY*0.015625
  $  011.油门踏板位置         $    $  %        $    $  ANS011.BYTE003  $  X*0.392157
  $  012.制动踏板状态         $    $  -        $    $  ANS012.BYTE003  $  00:非制动		01:制动		其他:-

 $ 05.控制器基础信息

	$	REQ000:7E1 03 22 10 46 00 00 00 00          $
	$	REQ001:7E1 03 22 10 24 00 00 00 00          $
	$	REQ002:7E1 03 22 11 12 00 00 00 00          $
	$	REQ003:7E1 03 22 10 22 00 00 00 00          $
	$	REQ004:7E1 03 22 10 23 00 00 00 00          $
	$	REQ005:7E1 03 22 11 03 00 00 00 00          $
	$	REQ006:7E1 03 22 10 49 00 00 00 00          $
	$	REQ007:7E1 03 22 10 20 00 00 00 00          $
	$	REQ008:7E1 03 22 10 21 00 00 00 00          $
	$	REQ009:7E1 03 22 10 30 00 00 00 00          $
	$	REQ010:7E1 03 22 10 31 00 00 00 00          $
	$	REQ011:7E1 03 22 10 32 00 00 00 00          $
	$	REQ012:7E1 03 22 10 33 00 00 00 00          $
	$	REQ013:7E1 03 22 10 4A 00 00 00 00          $
	$	REQ014:7E1 03 22 10 4B 00 00 00 00          $
	$	REQ015:7E1 03 22 10 4C 00 00 00 00          $
	$	REQ016:7E1 03 22 10 35 00 00 00 00          $
	$	REQ017:7E1 03 22 10 40 00 00 00 00          $
	$	REQ018:7E1 03 22 10 41 00 00 00 00          $
	$	REQ019:7E1 03 22 10 42 00 00 00 00          $
	$	REQ020:7E1 03 22 10 43 00 00 00 00          $
	$	REQ021:7E1 03 22 10 48 00 00 00 00          $
	$	REQ022:7E1 03 22 10 45 00 00 00 00          $
	$	REQ023:7E1 03 22 10 25 00 00 00 00          $
	$	REQ024:7E1 03 22 10 26 00 00 00 00          $
	$	REQ025:7E1 03 22 10 27 00 00 00 00          $
	$	REQ026:7E1 03 22 10 28 00 00 00 00          $
	$	REQ027:7E1 03 22 10 29 00 00 00 00          $
	$	REQ028:7E1 03 22 10 44 00 00 00 00          $

  $  000.发动机转速               $    $  rpm      $    $  ANS000.BYTE003  $  XY*0.25
  $  001.涡轮转速值               $    $  rpm      $    $  ANS001.BYTE003  $  XY
  $  002.主动轮目标转值           $    $  rpm      $    $  ANS002.BYTE003  $  X1X2X3X4*0.1
  $  003.主动轮转速值             $    $  rpm      $    $  ANS003.BYTE003  $  XY
  $  004.从动轮转速值             $    $  rpm      $    $  ANS004.BYTE003  $  XY
  $  005.当前速比设定值           $    $  -        $    $  ANS005.BYTE003  $  X1X2X3X4*0.01
  $  006.当前速比                 $    $  -        $    $  ANS006.BYTE003  $  XY*0.005
  $  007.主动轮压力值             $    $  bar      $    $  ANS007.BYTE003  $  XY*0.125
  $  008.从动轮压力值             $    $  bar      $    $  ANS008.BYTE003  $  XY*0.125
  $  009.前进挡离合器状态         $    $  -        $    $  ANS009.BYTE003  $  00:未定义		01:打开		02:充油		03:滑磨下行		04:接触		05:滑磨上行		06:结合		其他:-
  $  010.倒挡离合器状态           $    $  -        $    $  ANS010.BYTE003  $  00:未定义		01:打开		02:充油		03:滑磨下行		04:接触		05:滑磨上行		06:结合		其他:-
  $  011.TC离合器状态             $    $  -        $    $  ANS011.BYTE003  $  00:未定义		01:释放		02:充油		03:锁止滑磨		04:锁止		05:释放滑磨		其他:-
  $  012.换挡阀位置               $    $  -        $    $  ANS012.BYTE003  $  00:未定义		01:驻车档		02:后退档		03:空挡		04:前进挡		05:运动档		其他:-
  $  013.发动机稳态扭矩           $    $  Nm       $    $  ANS013.BYTE003  $  XY*0.5-848
  $  014.驾驶员要求扭矩           $    $  Nm       $    $  ANS014.BYTE003  $  XY*0.5-848
  $  015.推定发动机扭矩           $    $  Nm       $    $  ANS015.BYTE003  $  XY*0.5-848
  $  016.变速箱油温               $    $  °C      $    $  ANS016.BYTE003  $  X*1-40
  $  017.左前轮速                 $    $  km/h     $    $  ANS017.BYTE003  $  XY*0.01
  $  018.右前轮速                 $    $  km/h     $    $  ANS018.BYTE003  $  XY*0.01
  $  019.左后轮速                 $    $  km/h     $    $  ANS019.BYTE003  $  XY*0.01
  $  020.右后轮速                 $    $  km/h     $    $  ANS020.BYTE003  $  XY*0.01
  $  021.车速                     $    $  km/h     $    $  ANS021.BYTE003  $  XY*0.015625
  $  022.油门踏板位置             $    $  %        $    $  ANS022.BYTE003  $  X*0.392157
  $  023.主动轮电磁阀电流值       $    $  mA       $    $  ANS023.BYTE003  $  XY*0.1
  $  024.系统轮电磁阀电流值       $    $  mA       $    $  ANS024.BYTE003  $  XY*0.1
  $  025.DNR电磁阀电流值          $    $  mA       $    $  ANS025.BYTE003  $  XY*0.1
  $  026.从动轮电磁阀电流值       $    $  mA       $    $  ANS026.BYTE003  $  XY*0.1
  $  027.TC电磁阀电流值           $    $  mA       $    $  ANS027.BYTE003  $  XY*0.1
  $  028.制动踏板状态             $    $  -        $    $  ANS028.BYTE003  $  00:非制动		01:制动		其他:-


