$~#6$~#14$~500$~72E
;******************************************************************************************************************************************************

车型代号:CN180S-MCE
车型:RS-3
排量:N15T
年份:2019
模块名缩写:RSM
模块名:雷达传感器控制模块
供应商:博世
诊断代码:CN180S MCE_2019_RSM_CAN

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

		$*$*DTC/RS-3DTCS


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
	$%	REQ002:726 03 22 F1 90 00 00 00 00          $%
	$%	REQ003:726 03 22 F1 93 00 00 00 00          $%
	$%	REQ004:726 03 22 F1 95 00 00 00 00          $%
	$%	REQ005:726 03 22 F1 CB 00 00 00 00          $%

  $%  000:供应商标识信息            $%    $%  ANS000.BYTE003  $%  07个字节的ASCII显示
  $%  001:ECU生产日期               $%    $%  ANS001.BYTE003  $%  04个字节的HEX显示
  $%  002:VIN                       $%    $%  ANS002.BYTE003  $%  17个字节的ASCII显示
  $%  003:供应商ECU硬件版本号       $%    $%  ANS003.BYTE003  $%  13个字节的ASCII显示
  $%  004:供应商ECU软件版本号       $%    $%  ANS004.BYTE003  $%  13个字节的ASCII显示
  $%  005:零件号                    $%    $%  ANS005.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

   00.数据流

	$	REQ000:726 03 22 26 00 00 00 00 00          $
	$	REQ001:726 03 22 26 02 00 00 00 00          $
	$	REQ002:726 03 22 26 03 00 00 00 00          $
	$	REQ003:726 03 22 26 04 00 00 00 00          $
	$	REQ004:726 03 22 26 06 00 00 00 00          $
	$	REQ005:726 03 22 26 07 00 00 00 00          $
	$	REQ006:726 03 22 26 08 00 00 00 00          $
	$	REQ007:726 03 22 26 09 00 00 00 00          $
	$	REQ008:726 03 22 28 02 00 00 00 00          $
	$	REQ009:726 03 22 28 03 00 00 00 00          $
	$	REQ010:726 03 22 20 71 00 00 00 00          $
	$	REQ011:726 03 22 C1 01 00 00 00 00          $
	$	REQ012:726 03 22 20 70 00 00 00 00          $
	$	REQ013:726 03 22 20 50 00 00 00 00          $

  $  000.产线模式                       $    $  -     $    $  ANS000.BYTE003  $  00: 关 		01: 开		其他:-
  $  001.当前反射面板位置               $    $  -     $    $  ANS001.BYTE003  $  00:就绪 		01:位置1 		02:位置2 		03:位置3 		04:计算		其他:-
  $  002.下一个反射面板放置位置         $    $  -     $    $  ANS002.BYTE003  $  00:运行 		01:位置1 		02:位置2 		03:位置3 		04:调整螺丝并停止 		05:完成并停止		其他:-
  $  003.垂直旋转圈数                   $    $  -     $    $  ANS003.BYTE003  $  00:无 		01:左 		02:右		其他:-
  $  004.垂直旋转方向                   $    $  -     $    $  ANS003.BYTE004  $  X*(-)-
  $  005.慢速偏差角度                   $    $  -     $    $  ANS004.BYTE003  $  X1X2X3X4*(-)-
  $  006.快速偏差角度                   $    $  -     $    $  ANS005.BYTE003  $  X1X2X3X4*(-)-
  $  007.水平偏差角度                   $    $  -     $    $  ANS006.BYTE003  $  XY*(-)-
  $  008.垂直偏差角度                   $    $  -     $    $  ANS007.BYTE003  $  XY*(-)-
  $  009.无效密钥计数                   $    $  -     $    $  ANS008.BYTE003  $  X*(-)-
  $  010.加热                           $    $  -     $    $  ANS009.BYTE003  $  00:关 		01:开		其他:-
  $  011.碰撞警告灵敏度等级状态         $    $  -     $    $  ANS010.BYTE003  $  00:无 		01:报警提前 		02:普通报警 		03:报警延后		其他:-
  $  012.温度                           $    $  -     $    $  ANS011.BYTE007  $  if(X1&0x80)y=@0104;else y=@0103;
  $  013.视频                           $    $  -     $    $  ANS011.BYTE007  $  if(X1&0x40)y=@0104;else y=@0103;
  $  014.碰撞警告设置状态               $    $  -     $    $  ANS012.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  015.AEB辅助制动功能设置状态        $    $  -     $    $  ANS012.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  016.校准监控故障原因右边过远       $    $  -     $    $  ANS013.BYTE003  $  if(X1&0x80)y=@0039;else y=@0334;
  $  017.校准监控故障原因左边过远       $    $  -     $    $  ANS013.BYTE003  $  if(X1&0x40)y=@0039;else y=@0334;
  $  018.校准监控故障原因高处过远       $    $  -     $    $  ANS013.BYTE003  $  if(X1&0x20)y=@0039;else y=@0334;
  $  019.校准监控故障原因低处过远       $    $  -     $    $  ANS013.BYTE003  $  if(X1&0x10)y=@0039;else y=@0334;


