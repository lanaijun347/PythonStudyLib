$~#6$~#14$~500$~778
;******************************************************************************************************************************************************

车型代号:E200
车型:E200
排量:N/A
年份:2019
模块名缩写:BMS
模块名:电池管理系统
供应商:科易动力
诊断代码:E200_BMS_2018_LG_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:770 02 10 01 00 00 00 00 00          $~          778 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:770 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:770 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:770 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/E100DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:770 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:770 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:770 03 22 F1 8A 00 00 00 00          $%
	$%	REQ001:770 03 22 F1 7A 00 00 00 00          $%
	$%	REQ002:770 03 22 F1 8B 00 00 00 00          $%
	$%	REQ003:770 03 22 F1 8C 00 00 00 00          $%
	$%	REQ004:770 03 22 F1 90 00 00 00 00          $%
	$%	REQ005:770 03 22 F1 93 00 00 00 00          $%
	$%	REQ006:770 03 22 F1 95 00 00 00 00          $%
	$%	REQ007:770 03 22 F1 CB 00 00 00 00          $%

  $%  000:一级供应商标识符信息       $%    $%  ANS000.BYTE003  $%  07个字节的ASCII显示
  $%  001:二级供应商标识符信息       $%    $%  ANS001.BYTE003  $%  07个字节的ASCII显示
  $%  002:ECU生产日期                $%    $%  ANS002.BYTE003  $%  04个字节的HEX显示
  $%  003:ECU序列号                  $%    $%  ANS003.BYTE003  $%  20个字节的ASCII显示
  $%  004:VIN码                      $%    $%  ANS004.BYTE003  $%  17个字节的ASCII显示
  $%  005:供应商ECU硬件版本号        $%    $%  ANS005.BYTE003  $%  06个字节的ASCII显示
  $%  006:供应商ECU软件版本号        $%    $%  ANS006.BYTE003  $%  06个字节的ASCII显示
  $%  007:零件号                     $%    $%  ANS007.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

 $ 00.电池包继电器数据

	$	REQ000:770 03 22 C8 9C 00 00 00 00          $
	$	REQ001:770 03 22 C8 9D 00 00 00 00          $
	$	REQ002:770 03 22 C8 9E 00 00 00 00          $
	$	REQ003:770 03 22 C9 00 00 00 00 00          $
	$	REQ004:770 03 22 C9 01 00 00 00 00          $
	$	REQ005:770 03 22 C9 02 00 00 00 00          $
	$	REQ006:770 03 22 C9 03 00 00 00 00          $
	$	REQ007:770 03 22 C9 04 00 00 00 00          $
	$	REQ008:770 03 22 C9 05 00 00 00 00          $
	$	REQ009:770 03 22 C9 06 00 00 00 00          $
	$	REQ010:770 03 22 C9 07 00 00 00 00          $
	$	REQ011:770 03 22 C9 08 00 00 00 00          $

  $  000.主负继电器计数           $    $  -     $    $  ANS000.BYTE003  $  XYZ
  $  001.预充继电器计数           $    $  -     $    $  ANS001.BYTE003  $  XYZ
  $  002.慢充继电器计数           $    $  -     $    $  ANS002.BYTE003  $  XYZ
  $  003.加热继电器计数           $    $  -     $    $  ANS003.BYTE003  $  XYZ
  $  004.主正继电器状态           $    $  -     $    $  ANS004.BYTE003  $  00:断开		01:连接		02:粘连		03:开路		其他:-
  $  005.主负继电器状态           $    $  -     $    $  ANS005.BYTE003  $  00:断开		01:连接		02:粘连		03:开路		其他:-
  $  006.预充继电器状态           $    $  -     $    $  ANS006.BYTE003  $  00:断开		01:连接		02:粘连		03:开路		其他:-
  $  007.慢充继电器状态           $    $  -     $    $  ANS007.BYTE003  $  00:断开		01:连接		02:粘连		03:开路		其他:-
  $  008.加热继电器状态           $    $  -     $    $  ANS008.BYTE003  $  00:断开		01:连接		02:粘连		03:开路		其他:-
  $  009.电池包加热检验           $    $  -     $    $  ANS009.BYTE003  $  00:正常加热阈值		01:测试加热阈值		其他:-
  $  010.电芯数量                 $    $  -     $    $  ANS010.BYTE003  $  X
  $  011.电芯温度传感器个数       $    $  -     $    $  ANS011.BYTE003  $  X

 $ 01.OBC数据

	$	REQ000:770 03 22 C8 20 00 00 00 00          $
	$	REQ001:770 03 22 C8 43 00 00 00 00          $
	$	REQ002:770 03 22 C8 44 00 00 00 00          $
	$	REQ003:770 03 22 C8 45 00 00 00 00          $
	$	REQ004:770 03 22 C8 46 00 00 00 00          $

  $  000.充电机输入最大电流       $    $  A      $    $  ANS000.BYTE003  $  X
  $  001.OBC状态                  $    $  -      $    $  ANS001.BYTE003  $  00:充电准备完成		01:正常工作		02:降功率工作		03:故障		04:待机		其他:-
  $  002.OBC输入电压              $    $  V      $    $  ANS002.BYTE003  $  XY
  $  003.OBC输出电压              $    $  V      $    $  ANS003.BYTE003  $  XY*0.1
  $  004.OBC输出电流              $    $  A      $    $  ANS004.BYTE003  $  XY*0.1

 $ 02.电池包电压数据

	$	REQ000:770 03 22 C8 01 00 00 00 00          $
	$	REQ001:770 03 22 C8 09 00 00 00 00          $
	$	REQ002:770 03 22 C8 0A 00 00 00 00          $
	$	REQ003:770 03 22 C8 0B 00 00 00 00          $
	$	REQ004:770 03 22 C8 0C 00 00 00 00          $
	$	REQ005:770 03 22 C8 2C 00 00 00 00          $
	$	REQ006:770 03 22 C8 39 00 00 00 00          $
	$	REQ007:770 03 22 C8 40 00 00 00 00          $

  $  000.电池包外部电压               $    $  V      $    $  ANS000.BYTE003  $  XY*0.1
  $  001.电池包单体电压最高位置       $    $  -      $    $  ANS001.BYTE003  $  X
  $  002.电池包单体电压最低位置       $    $  -      $    $  ANS002.BYTE003  $  X
  $  003.电池包单体最高电压           $    $  mV     $    $  ANS003.BYTE003  $  XY
  $  004.电池包单体最低电压           $    $  mV     $    $  ANS004.BYTE003  $  XY
  $  005.电池包内部电压               $    $  V      $    $  ANS005.BYTE003  $  XY*0.1
  $  006.电池包总电压状态             $    $  -      $    $  ANS006.BYTE003  $  00:正常		01:电压过高		02:电压过低		其他:-
  $  007.电池电压传感器状态           $    $  -      $    $  ANS007.BYTE003  $  00:正常		01:异常		其他:-

 $ 03.电池包电流数据

	$	REQ000:770 03 22 C8 00 00 00 00 00          $
	$	REQ001:770 03 22 C8 3F 00 00 00 00          $

  $  000.电池包总电流             $    $  A     $    $  ANS000.BYTE003  $  XY*0.1-1000
  $  001.电池电流传感器状态       $    $  -     $    $  ANS001.BYTE003  $  00:正常		01:异常		其他:-

 $ 04.电池包温度数据

	$	REQ000:770 03 22 C8 02 00 00 00 00          $
	$	REQ001:770 03 22 C8 03 00 00 00 00          $
	$	REQ002:770 03 22 C8 04 00 00 00 00          $
	$	REQ003:770 03 22 C8 07 00 00 00 00          $
	$	REQ004:770 03 22 C8 08 00 00 00 00          $
	$	REQ005:770 03 22 C8 35 00 00 00 00          $
	$	REQ006:770 03 22 C8 36 00 00 00 00          $
	$	REQ007:770 03 22 C8 3A 00 00 00 00          $
	$	REQ008:770 03 22 C8 3C 00 00 00 00          $
	$	REQ009:770 03 22 C8 3D 00 00 00 00          $
	$	REQ010:770 03 22 C8 3E 00 00 00 00          $

  $  000.电池包模块平均温度           $    $  ℃     $    $  ANS000.BYTE003  $  X*1-50
  $  001.电池包模块最高温度           $    $  ℃     $    $  ANS001.BYTE003  $  X*1-50
  $  002.电池包模块最低温度           $    $  ℃     $    $  ANS002.BYTE003  $  X*1-50
  $  003.电池包模块温度最高位置       $    $  -      $    $  ANS003.BYTE003  $  X
  $  004.电池包模块温度最低位置       $    $  -      $    $  ANS004.BYTE003  $  X
  $  005.电池包最高温度               $    $  ℃     $    $  ANS005.BYTE003  $  X*1-50
  $  006.电池包最低温度               $    $  ℃     $    $  ANS006.BYTE003  $  X*1-50
  $  007.电池包温度状态               $    $  -      $    $  ANS007.BYTE003  $  00:正常		01:电压过高		02:电压过低		03:电压不均衡		其他:-
  $  008.电池绝缘状态                 $    $  -      $    $  ANS008.BYTE003  $  00:正常		01:绝缘值低		其他:-
  $  009.电池CAN通讯状态              $    $  -      $    $  ANS009.BYTE003  $  00:正常		01:异常		其他:-
  $  010.电池温度传感器状态           $    $  -      $    $  ANS010.BYTE003  $  00:正常		01:异常		其他:-

 $ 05.电机数据

	$	REQ000:770 03 22 C8 1A 00 00 00 00          $
	$	REQ001:770 03 22 C8 1D 00 00 00 00          $

  $  000.电机当前工作状态       $    $  -     $    $  ANS000.BYTE003  $  00:未准备完成		01:低压自检通过		02:MOS管自检通过		03:准备完毕		其他:-
  $  001.电机变频器电压         $    $  V     $    $  ANS001.BYTE003  $  XY

 $ 06.车辆数据

	$	REQ000:770 03 22 C8 10 00 00 00 00          $
	$	REQ001:770 03 22 C8 11 00 00 00 00          $

  $  000.车辆操作模式       $    $  -     $    $  ANS000.BYTE003  $  00:休眠		01:初始化		02:上电		03:行驶		04:充电		05:下电		06:故障		07:跛行		其他:-
  $  001.车辆充电请求       $    $  -     $    $  ANS001.BYTE003  $  00:禁止充电		01:允许充电		02:充电完成		其他:-

 $ 07.电池包充放电数据

	$	REQ000:770 03 22 C8 23 00 00 00 00          $
	$	REQ001:770 03 22 C8 24 00 00 00 00          $
	$	REQ002:770 03 22 C8 25 00 00 00 00          $
	$	REQ003:770 03 22 C8 26 00 00 00 00          $
	$	REQ004:770 03 22 C8 27 00 00 00 00          $
	$	REQ005:770 03 22 C8 28 00 00 00 00          $
	$	REQ006:770 03 22 C8 29 00 00 00 00          $
	$	REQ007:770 03 22 C8 2A 00 00 00 00          $
	$	REQ008:770 03 22 C8 2B 00 00 00 00          $
	$	REQ009:770 03 22 C8 9F 00 00 00 00          $
	$	REQ010:770 03 22 C8 A0 00 00 00 00          $

  $  000.电池包充放电次数                $    $  -       $    $  ANS000.BYTE003  $  XY
  $  001.电池包剩余充电时间              $    $  min     $    $  ANS001.BYTE003  $  XY
  $  002.电池包继续充电可用功率          $    $  kw      $    $  ANS002.BYTE003  $  XY*0.01
  $  003.电池包继续放电可用功率          $    $  kw      $    $  ANS003.BYTE003  $  XY*0.01
  $  004.电池包2S脉冲充电可用功率        $    $  kw      $    $  ANS004.BYTE003  $  XY*0.01
  $  005.电池包2S脉冲放电可用功率        $    $  kw      $    $  ANS005.BYTE003  $  XY*0.01
  $  006.电池包10S脉冲充电可用功率       $    $  kw      $    $  ANS006.BYTE003  $  XY*0.01
  $  007.电池包10S脉冲放电可用功率       $    $  kw      $    $  ANS007.BYTE003  $  XY*0.01
  $  008.电池包完成充电电压              $    $  V       $    $  ANS008.BYTE003  $  XY*0.1
  $  009.电池包累计充电电量              $    $  -       $    $  ANS009.BYTE003  $  X1X2X3X4
  $  010.电池包累计放电电量              $    $  -       $    $  ANS010.BYTE003  $  X1X2X3X4

 $ 08.电池包状态数据

	$	REQ000:770 03 22 C8 05 00 00 00 00          $
	$	REQ001:770 03 22 C8 06 00 00 00 00          $
	$	REQ002:770 03 22 C8 21 00 00 00 00          $
	$	REQ003:770 03 22 C8 2D 00 00 00 00          $
	$	REQ004:770 03 22 C8 2E 00 00 00 00          $
	$	REQ005:770 03 22 C8 2F 00 00 00 00          $
	$	REQ006:770 03 22 C8 34 00 00 00 00          $
	$	REQ007:770 03 22 C8 37 00 00 00 00          $
	$	REQ008:770 03 22 C8 38 00 00 00 00          $

  $  000.电池包SOH                    $    $  %       $    $  ANS000.BYTE003  $  X*0.3921
  $  001.电池包SOC                    $    $  %       $    $  ANS001.BYTE003  $  X*0.3921
  $  002.电池包绝缘值                 $    $  kΩ     $    $  ANS002.BYTE003  $  XY
  $  003.电池电源状态                 $    $  -       $    $  ANS003.BYTE003  $  00:电源断开		01:电源连接		其他:-
  $  004.电池包慢充状态               $    $  -       $    $  ANS004.BYTE003  $  00:不可充电		01:可充电		02:充电完成		其他:-
  $  005.电池保险丝状态               $    $  -       $    $  ANS005.BYTE003  $  00:正常		01:熔断		其他:-
  $  006.电池包高压互锁状态           $    $  -       $    $  ANS006.BYTE003  $  00:断开		01:连接		02:粘连		其他:-
  $  007.电池包故障等级               $    $  -       $    $  ANS007.BYTE003  $  00:正常		01:放电轻微故障		02:放电功率限制		03:放电跛行行车		04:停车		05:紧急停车		06:充电功率限制		07:充电紧急停止		08:充电紧急停止		09:放电紧急停止		0A:充电紧急停止		其他:-
  $  008.电池包单体平均电源状态       $    $  -       $    $  ANS008.BYTE003  $  00:正常		01:电压过高		02:电压过低		03:电压不均衡		其他:-

 $ 09.BMS数据

	$	REQ000:770 03 22 C8 0F 00 00 00 00          $
	$	REQ001:770 03 22 C8 1E 00 00 00 00          $
	$	REQ002:770 03 22 C8 1F 00 00 00 00          $

  $  000.BMS高压功率请求                $    $  -     $    $  ANS000.BYTE003  $  00:断开高压开关		01:紧急断开高压开关		02:闭合高压开关		其他:-
  $  001.电池管理系统充电电流请求       $    $  A     $    $  ANS001.BYTE003  $  XY*0.1
  $  002.电池管理系统充电电压请求       $    $  V     $    $  ANS002.BYTE003  $  XY*0.1

 $ 10.其他数据

	$	REQ000:770 03 22 C8 41 00 00 00 00          $
	$	REQ001:770 03 22 C8 42 00 00 00 00          $
	$	REQ002:770 03 22 C8 72 00 00 00 00          $
	$	REQ003:770 03 22 C8 A2 00 00 00 00          $
	$	REQ004:770 03 22 C8 A3 00 00 00 00          $

  $  000.气囊状态       $    $  -     $    $  ANS000.BYTE003  $  00:未点爆		01:点爆		其他:-
  $  001.碰撞状态       $    $  -     $    $  ANS001.BYTE003  $  00:未发生后撞		01:发生后撞		其他:-
  $  002.禁止绝缘       $    $  -     $    $  ANS002.BYTE003  $  00:绝缘正常		01:绝缘异常		其他:-
  $  003.均衡标识       $    $  -     $    $  ANS003.BYTE003  $  00:无均衡		01:开启均衡		02:均衡错误		其他:-
  $  004.钥匙位置       $    $  -     $    $  ANS004.BYTE003  $  00:OFF		01:ACC		02:ON		其他:-


