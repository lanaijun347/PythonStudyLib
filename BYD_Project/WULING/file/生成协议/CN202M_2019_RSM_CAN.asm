$~#6$~#14$~500$~72E
;******************************************************************************************************************************************************

车型代号:CN210S
车型:CN210S
排量:N15T
年份:2018
模块名缩写:RSM
模块名:雷达传感器控制模块
供应商:博世
诊断代码:CN202M_2019_RSM_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:726 02 10 01 00 00 00 00 00          $~          72E 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:726 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:726 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:726 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/RM-5DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:726 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:726 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:726 03 22 F1 8A 00 00 00 00          $%
	$%	REQ001:726 03 22 F1 8B 00 00 00 00          $%
	$%	REQ002:726 03 22 F1 8C 00 00 00 00          $%
	$%	REQ003:726 03 22 F1 90 00 00 00 00          $%
	$%	REQ004:726 03 22 F1 93 00 00 00 00          $%
	$%	REQ005:726 03 22 F1 95 00 00 00 00          $%
	$%	REQ006:726 03 22 F1 CB 00 00 00 00          $%
	$%	REQ007:726 03 22 F1 B2 00 00 00 00          $%
	$%	REQ008:726 03 22 F1 88 00 00 00 00          $%
	$%	REQ009:726 03 22 F1 91 00 00 00 00          $%

  $%  000:供应商标识信息            $%    $%  ANS000.BYTE003  $%  07个字节的ASCII显示
  $%  001:ECU生产日期               $%    $%  ANS001.BYTE003  $%  04个字节的HEX显示
  $%  002:ECU序列号                 $%    $%  ANS002.BYTE003  $%  40个字节的ASCII显示
  $%  003:VIN                       $%    $%  ANS003.BYTE003  $%  17个字节的ASCII显示
  $%  004:供应商ECU硬件版本号       $%    $%  ANS004.BYTE003  $%  13个字节的ASCII显示
  $%  005:供应商ECU软件版本号       $%    $%  ANS005.BYTE003  $%  13个字节的ASCII显示
  $%  006:零件号                    $%    $%  ANS006.BYTE003  $%  X1X2X3X4
  $%  007:车辆生产日期              $%    $%  ANS007.BYTE003  $%  04个字节的HEX显示
  $%  008:SGMW软件号                $%    $%  ANS008.BYTE003  $%  X1X2X3X4
  $%  009:SGMW硬件号                $%    $%  ANS009.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

   00.数据流

	$	REQ000:726 03 22 26 00 00 00 00 00          $
	$	REQ001:726 03 22 26 01 00 00 00 00          $
	$	REQ002:726 03 22 26 06 00 00 00 00          $
	$	REQ003:726 03 22 26 07 00 00 00 00          $
	$	REQ004:726 03 22 26 10 00 00 00 00          $
	$	REQ005:726 03 22 26 11 00 00 00 00          $
	$	REQ006:726 03 22 26 12 00 00 00 00          $
	$	REQ007:726 03 22 28 03 00 00 00 00          $
	$	REQ008:726 03 22 28 04 00 00 00 00          $
	$	REQ009:726 03 22 28 06 00 00 00 00          $
	$	REQ010:726 03 22 28 07 00 00 00 00          $
	$	REQ011:726 03 22 28 08 00 00 00 00          $
	$	REQ012:726 03 22 28 09 00 00 00 00          $
	$	REQ013:726 03 22 28 0A 00 00 00 00          $
	$	REQ014:726 03 22 28 0B 00 00 00 00          $
	$	REQ015:726 03 22 28 0C 00 00 00 00          $
	$	REQ016:726 03 22 28 0D 00 00 00 00          $
	$	REQ017:726 03 22 28 0E 00 00 00 00          $
	$	REQ018:726 03 22 28 0F 00 00 00 00          $
	$	REQ019:726 03 22 C1 01 00 00 00 00          $
	$	REQ020:726 03 22 20 08 00 00 00 00          $
	$	REQ021:726 03 22 20 70 00 00 00 00          $
	$	REQ022:726 03 22 20 71 00 00 00 00          $

  $  000.产线模式                                      $    $  -          $    $  ANS000.BYTE003  $  00:关		01:开,		其他:-
  $  001.ECU 温度                                      $    $  ℃         $    $  ANS001.BYTE003  $  X*1-50
  $  002.水平慢速偏差角度                              $    $  Deg        $    $  ANS002.BYTE003  $  X1X2X3X4*0.0000017075479
  $  003.水平快速偏差角度                              $    $  Deg        $    $  ANS003.BYTE003  $  X1X2X3X4*0.0000017075479
  $  004.ECU电压                                       $    $  v          $    $  ANS004.BYTE003  $  X*0.1
  $  005.垂直慢速偏差角度                              $    $  -          $    $  ANS005.BYTE003  $  XY*0.0034970581054688
  $  006.垂直快速偏差角度                              $    $  -          $    $  ANS006.BYTE003  $  XY*0.0034970581054688
  $  007.雷达加热功能状态                              $    $  -          $    $  ANS007.BYTE003  $  00:OFF		01:ON		其他:-
  $  008.读取雷达加热模块控制值                        $    $  %          $    $  ANS008.BYTE003  $  00:0		2710:100		其他:-
  $  009.上上次预报警目标类型                          $    $  -          $    $  ANS009.BYTE010  $  00:未分类的目标		01:前方移动目标		02:固定目标		03:静止目标,之前移动过,后来停住了		04:对向目标		其他:-
  $  010.上次预报警目标类型                            $    $             $    $  ANS010.BYTE010  $  00:未分类的目标		01:前方移动目标		02:固定目标		03:静止目标,之前移动过,后来停住了		04:对向目标		其他:-
  $  011.上上次紧急报警目标类型                        $    $             $    $  ANS011.BYTE010  $  00:未分类的目标		01:前方移动目标		02:固定目标		03:静止目标,之前移动过,后来停住了		04:对向目标		其他:-
  $  012.上次紧急报警目标类型                          $    $             $    $  ANS012.BYTE010  $  00:未分类的目标		01:前方移动目标		02:固定目标		03:静止目标,之前移动过,后来停住了		04:对向目标		其他:-
  $  013.上上次紧急制动辅助目标类型                    $    $             $    $  ANS013.BYTE010  $  00:未分类的目标		01:前方移动目标		02:固定目标		03:静止目标,之前移动过,后来停住了		04:对向目标		其他:-
  $  014.上次紧急制动辅助目标类型                      $    $             $    $  ANS014.BYTE010  $  00:未分类的目标		01:前方移动目标		02:固定目标		03:静止目标,之前移动过,后来停住了		04:对向目标		其他:-
  $  015.上上次自动紧急制动目标类型                    $    $             $    $  ANS015.BYTE010  $  00:未分类的目标		01:前方移动目标		02:固定目标		03:静止目标,之前移动过,后来停住了		04:对向目标		其他:-
  $  016.上上次自动紧急制动目标类型                    $    $             $    $  ANS016.BYTE010  $  00:未分类的目标		01:前方移动目标		02:固定目标		03:静止目标,之前移动过,后来停住了		04:对向目标		其他:-
  $  017.上上次中速自动紧急制动目标类型                $    $             $    $  ANS017.BYTE010  $  00:未分类的目标		01:前方移动目标		02:固定目标		03:静止目标,之前移动过,后来停住了		04:对向目标		其他:-
  $  018.上次中速自动紧急制动目标类型                  $    $             $    $  ANS018.BYTE010  $  00:未分类的目标		01:前方移动目标		02:固定目标		03:静止目标,之前移动过,后来停住了		04:对向目标		其他:-
  $  019.RSM在线配置-发动机类型                        $    $  -          $    $  ANS019.BYTE003  $  04:S12T		08:N15T		其他:-
  $  020.RSM在线配置-变速箱类型                        $    $  -          $    $  ANS019.BYTE004  $  03:CVT		05:DCT		其他:-
  $  021.RSM在线配置-排放标准                          $    $  -          $    $  ANS019.BYTE006  $  03:5		04:6a		05:6b		其他:-
  $  022.RSM在线配置-是否存在AC温度信号                $    $  -          $    $  ANS019.BYTE014  $  00:温度信号不存在		01:温度信号存在		其他:-
  $  023.RSM在线配置-是否与摄像头融合                  $    $  -          $    $  ANS019.BYTE013  $  00:摄像头不存在		01:摄像头存在		其他:-
  $  024.全局实时时间                                  $    $  Year       $    $  ANS020.BYTE008  $  X*1+2010
  $  025.全局实时时间                                  $    $  Month      $    $  ANS020.BYTE007  $  X1X2X3X4
  $  026.全局实时时间                                  $    $  Day        $    $  ANS020.BYTE006  $  05个字节的HEX显示
  $  027.全局实时时间                                  $    $  Hour       $    $  ANS020.BYTE005  $  05个字节的HEX显示
  $  028.全局实时时间                                  $    $  Minute     $    $  ANS020.BYTE004  $  06个字节的HEX显示
  $  029.全局实时时间                                  $    $  Second     $    $  ANS020.BYTE003  $  06个字节的HEX显示
  $  030.高级驾驶辅助功能碰撞警告设置状态              $    $  -          $    $  ANS021.BYTE009  $  00:OFF		01:ON		其他:-
  $  031.高级驾驶辅助功能AEB辅助制动功能设置状态       $    $  -          $    $  ANS021.BYTE010  $  00:OFF		01:ON		其他:-
  $  032.碰撞告警灵敏度等级状态                        $    $  -          $    $  ANS022.BYTE003  $  01:报警提前		02:普通报警		03:报警延后		其他:-
  $  033.温度                                          $    $  -          $    $  ANS019.BYTE007  $  if(X1&0x80)y=@0104;else y=@0103;
  $  034.视频                                          $    $  -          $    $  ANS019.BYTE007  $  if(X1&0x40)y=@0104;else y=@0103;
  $  035.碰撞警告设置状态                              $    $  -          $    $  ANS021.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  036.AEB辅助制动功能设置状态                       $    $  -          $    $  ANS021.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;


