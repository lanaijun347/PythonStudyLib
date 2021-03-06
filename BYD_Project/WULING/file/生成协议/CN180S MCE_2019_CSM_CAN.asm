$~#6$~#14$~500$~73A
;******************************************************************************************************************************************************

车型代号:CN210S
车型:宝骏560
排量:N15T
年份:2018
模块名缩写:CSM
模块名:摄像头传感器模块
供应商:大陆
诊断代码:CN180S MCE_2019_CSM_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:732 02 10 01 00 00 00 00 00          $~          73A 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:732 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:732 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:732 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/RS-3DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:732 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:732 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:732 03 22 F1 8A 00 00 00 00          $%
	$%	REQ001:732 03 22 F1 8B 00 00 00 00          $%
	$%	REQ002:732 03 22 F1 90 00 00 00 00          $%
	$%	REQ003:732 03 22 F1 92 00 00 00 00          $%
	$%	REQ004:732 03 22 F1 93 00 00 00 00          $%
	$%	REQ005:732 03 22 F1 94 00 00 00 00          $%
	$%	REQ006:732 03 22 F1 95 00 00 00 00          $%
	$%	REQ007:732 03 22 F1 C6 00 00 00 00          $%
	$%	REQ008:732 03 22 F1 CB 00 00 00 00          $%
	$%	REQ009:732 03 22 F1 88 00 00 00 00          $%
	$%	REQ010:732 03 22 F1 91 00 00 00 00          $%

  $%  000:供应商标识信息            $%    $%  ANS000.BYTE003  $%  07个字节的ASCII显示
  $%  001:ECU生产日期               $%    $%  ANS001.BYTE003  $%  04个字节的HEX显示
  $%  002:VIN                       $%    $%  ANS002.BYTE003  $%  17个字节的ASCII显示
  $%  003:供应商ECU硬件号           $%    $%  ANS003.BYTE003  $%  03个字节的HEX显示
  $%  004:供应商ECU硬件版本号       $%    $%  ANS004.BYTE003  $%  03个字节的HEX显示
  $%  005:供应商ECU软件号           $%    $%  ANS005.BYTE003  $%  03个字节的HEX显示
  $%  006:供应商ECU软件版本号       $%    $%  ANS006.BYTE003  $%  03个字节的HEX显示
  $%  007:供应商ECU标定号           $%    $%  ANS007.BYTE003  $%  08个字节的HEX显示
  $%  008:SGMW P/N                  $%    $%  ANS008.BYTE003  $%  X1X2X3X4
  $%  009:SGMW ECU硬件号            $%    $%  ANS009.BYTE003  $%  X1X2X3X4
  $%  010:SGMW ECU软件号            $%    $%  ANS010.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

   00.数据流

	$	REQ000:732 03 22 DD 00 00 00 00 00          $
	$	REQ001:732 03 22 DD 01 00 00 00 00          $
	$	REQ002:732 03 22 DD 02 00 00 00 00          $
	$	REQ003:732 03 22 DD 03 00 00 00 00          $
	$	REQ004:732 03 22 DD 04 00 00 00 00          $
	$	REQ005:732 03 22 DD 05 00 00 00 00          $
	$	REQ006:732 03 22 DD 10 00 00 00 00          $
	$	REQ007:732 03 22 DD 11 00 00 00 00          $
	$	REQ008:732 03 22 DD 12 00 00 00 00          $
	$	REQ009:732 03 22 DD 13 00 00 00 00          $
	$	REQ010:732 03 22 F0 17 00 00 00 00          $
	$	REQ011:732 03 22 F1 C9 00 00 00 00          $

  $  000.当前时间-年                        $    $  Year       $    $  ANS000.BYTE008  $  X*1+2010
  $  001.当前时间-月                        $    $  Month      $    $  ANS000.BYTE007  $  X1X2X3X4
  $  002.当前时间-日                        $    $  Day        $    $  ANS000.BYTE006  $  05个字节的HEX显示
  $  003.当前时间-时                        $    $  Hour       $    $  ANS000.BYTE005  $  05个字节的HEX显示
  $  004.当前时间-分                        $    $  Minute     $    $  ANS000.BYTE004  $  06个字节的HEX显示
  $  005.当前时间-秒                        $    $  Second     $    $  ANS000.BYTE003  $  06个字节的HEX显示
  $  006.里程                               $    $  Km         $    $  ANS001.BYTE003  $  X
  $  007.供电电压                           $    $  V          $    $  ANS002.BYTE003  $  X*0.1
  $  008.MCU温度                            $    $  ℃         $    $  ANS003.BYTE003  $  X
  $  009.DSP温度                            $    $  ℃         $    $  ANS003.BYTE004  $  X
  $  010.图像传感器温度                     $    $  ℃         $    $  ANS003.BYTE005  $  X
  $  011.车速                               $    $  Km/h       $    $  ANS004.BYTE003  $  XY*0.015625
  $  012.非易失性存储器错误记录-CRC块       $    $  -          $    $  ANS005.BYTE004  $  00:CRC块没有错误		01:CRC块有错误		其他:-
  $  013.非易失性存储器错误记录-NVM块       $    $  -          $    $  ANS005.BYTE003  $  00:NVM写访问没有失败		01:NVM写操作失败为活动状态		其他:-
  $  014.车道偏离警告设置状态               $    $  -          $    $  ANS006.BYTE010  $  00:OFF		01:ON		其他:-
  $  015.自动灯光控制设置请求               $    $  -          $    $  ANS006.BYTE009  $  00:OFF		01:ON		其他:-
  $  016.交通标识识别设置状态               $    $  -          $    $  ANS006.BYTE008  $  00:OFF		01:ON		其他:-
  $  017.限速报警设置状态                   $    $  -          $    $  ANS006.BYTE007  $  00:OFF		01:ON		其他:-
  $  018.车道辅助灵敏度等级设置状态         $    $  -          $    $  ANS007.BYTE003  $  01:低灵敏度		02:高灵敏度		其他:-
  $  019.车道偏离报警方式设置状态           $    $  -          $    $  ANS008.BYTE003  $  02:显示预警		03:声音报警		04:方向盘震动报警		05:声音+方向盘震动报警		其他:-
  $  020.限速报警偏移量设置状态             $    $  Km/h       $    $  ANS009.BYTE003  $  X
  $  021.传感器控制状态                     $    $  -          $    $  ANS010.BYTE003  $  00:luC启动		01:SoC启动		02:正常操作		03:减少操作		04:传感器错误		05:EOL校准		06:通过总线读取图像		07:测功器测试		08:安全通信		09:功能关闭		0A:关闭软件		其他:-
  $  022.摄像头售后校准结果                 $    $  -          $    $  ANS011.BYTE010  $  00:否		01:是		其他:-
  $  023.摄像头下线校准结果                 $    $  -          $    $  ANS011.BYTE009  $  00:否		01:是		其他:-
  $  024.Roll角度不适当                     $    $  -          $    $  ANS011.BYTE011  $  00:否		01:是		其他:-
  $  025.识别时间超时情况                   $    $  -          $    $  ANS011.BYTE010  $  00:否		01:是		其他:-
  $  026.目标相对距离不适当情况             $    $  -          $    $  ANS011.BYTE009  $  00:否		01:是		其他:-
  $  027.目标数量不适当情况                 $    $  -          $    $  ANS011.BYTE008  $  00:否		01:是		其他:-
  $  028.目标距离不适当情况                 $    $  -          $    $  ANS011.BYTE007  $  00:否		01:是		其他:-
  $  029.领域的扩张不适当情况               $    $  -          $    $  ANS011.BYTE006  $  00:否		01:是		其他:-


