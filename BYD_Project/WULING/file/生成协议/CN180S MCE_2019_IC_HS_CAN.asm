$~#6$~#14$~500$~768
;******************************************************************************************************************************************************

车型代号:CN210S
车型:宝骏560
排量:N15T
年份:2018
模块名缩写:IC
模块名:仪表控制模块
供应商:航盛
诊断代码:CN180S MCE_2019_IC_HS_CAN

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

		$*$*DTC/RS-3DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:760 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:760 02 11 03 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:760 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:760 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:760 03 22 F1 93 00 00 00 00          $%
	$%	REQ003:760 03 22 F1 95 00 00 00 00          $%
	$%	REQ004:760 03 22 F1 CB 00 00 00 00          $%
	$%	REQ005:760 03 22 F1 88 00 00 00 00          $%
	$%	REQ006:760 03 22 F1 91 00 00 00 00          $%

  $%  000:ECU生产日期           $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN码                 $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:供应商ECU硬件号       $%    $%  ANS002.BYTE003  $%  02个字节的HEX显示
  $%  003:供应商ECU软件号       $%    $%  ANS003.BYTE003  $%  02个字节的HEX显示
  $%  004:零件号                $%    $%  ANS004.BYTE003  $%  X1X2X3X4
  $%  005:SGMW的ECU软件号       $%    $%  ANS005.BYTE003  $%  X1X2X3X4
  $%  006:SGMW的ECU硬件号       $%    $%  ANS006.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

 $ 00.仪表模拟量显示

	$	REQ000:760 03 22 60 12 00 00 00 00          $
	$	REQ001:760 03 22 60 20 00 00 00 00          $
	$	REQ002:760 03 22 60 21 00 00 00 00          $
	$	REQ003:760 03 22 60 22 00 00 00 00          $
	$	REQ004:760 03 22 60 23 00 00 00 00          $
	$	REQ005:760 03 22 60 24 00 00 00 00          $
	$	REQ006:760 03 22 60 27 00 00 00 00          $
	$	REQ007:760 03 22 60 42 00 00 00 00          $
	$	REQ008:760 03 22 60 43 00 00 00 00          $
	$	REQ009:760 03 22 60 44 00 00 00 00          $
	$	REQ010:760 03 22 60 5B 00 00 00 00          $
	$	REQ011:760 03 22 C1 01 00 00 00 00          $
	$	REQ012:760 03 22 60 4E 00 00 00 00          $
	$	REQ013:760 03 22 60 4F 00 00 00 00          $

  $  000.电池电压                             $    $  V           $    $  ANS000.BYTE003  $  X*0.1+5
  $  001.水温表显示值                         $    $  ℃          $    $  ANS001.BYTE003  $  X*1-40
  $  002.油位表显示值                         $    $  %           $    $  ANS002.BYTE003  $  X*0.392156862745098
  $  003.车速表显示值                         $    $  Km/h        $    $  ANS003.BYTE003  $  XY*0.015625
  $  004.转速表显示值                         $    $  rpm         $    $  ANS004.BYTE003  $  XY*0.25
  $  005.里程表显示值                         $    $  Km          $    $  ANS005.BYTE003  $  X1X2X3X4*0.015625
  $  006.左前胎压输出显示值                   $    $  Kpa         $    $  ANS006.BYTE003  $  X*1.38
  $  007.右前胎压输出显示值                   $    $  Kpa         $    $  ANS006.BYTE003  $  X*1.38
  $  008.左后胎压输出显示值                   $    $  Kpa         $    $  ANS006.BYTE003  $  X*1.38
  $  009.右后胎压输出显示值                   $    $  Kpa         $    $  ANS006.BYTE003  $  X*1.38
  $  010.瞬时燃油消耗                         $    $  L/100Km     $    $  ANS007.BYTE003  $  X*0.1
  $  011.平均燃油消耗                         $    $  L/100Km     $    $  ANS008.BYTE003  $  X*0.1
  $  012.持久英里数                           $    $  Km          $    $  ANS009.BYTE003  $  XY
  $  013.巡航控制系统目标速度                 $    $  km/h        $    $  ANS010.BYTE003  $  XY*0.015625
  $  014.在线配置-分体式互联网车机            $    $  -           $    $  ANS011.BYTE009  $  09:无仪表互联		0A:仪表联CAN		其他:-
  $  015.在线配置-主动刹车AEB                 $    $  -           $    $  ANS011.BYTE013  $  00:无		01:有		其他:-
  $  016.在线配置-前碰预警功能FCW             $    $  -           $    $  ANS011.BYTE012  $  00:无		01:有		其他:-
  $  017.在线配置-车道偏离警告LDW             $    $  -           $    $  ANS011.BYTE011  $  00:无		01:有		其他:-
  $  018.在线配置-远近光灯自动切换HMA         $    $  -           $    $  ANS011.BYTE010  $  00:无		01:有		其他:-
  $  019.在线配置-交通识别TSR                 $    $  -           $    $  ANS011.BYTE009  $  00:无		01:有		其他:-
  $  020.在线配置-自适应巡航巡航系统ACC       $    $  -           $    $  ANS011.BYTE008  $  00:无		01:有		其他:-
  $  021.在线配置-车道偏离辅助LKA             $    $  -           $    $  ANS011.BYTE007  $  00:无		01:有		其他:-
  $  022.在线配置-后倒车雷达                  $    $  -           $    $  ANS011.BYTE010  $  00:无		01:有		其他:-
  $  023.在线配置-前驻车雷达                  $    $  -           $    $  ANS011.BYTE009  $  00:无		01:有		其他:-
  $  024.在线配置-第二排安全带未系报警        $    $  -           $    $  ANS011.BYTE008  $  00:无		01:有		其他:-
  $  025.在线配置-PEPS                        $    $  -           $    $  ANS011.BYTE009  $  00:无		01:有		其他:-
  $  026.在线配置-胎压测试                    $    $  -           $    $  ANS011.BYTE012  $  00:无胎压监测		01:有直接式胎压		10:有间接式胎压		其他:-
  $  027.车道偏离辅助指示                     $    $  -           $    $  ANS012.BYTE003  $  00:无指示		01:灰		02:绿		03:红		其他:-
  $  028.自适应巡航控制指示                   $    $  -           $    $  ANS013.BYTE003  $  00:无指示		01:灰		02:绿		03:黄		其他:-

 $ 01.仪表状态量显示

	$	REQ000:760 03 22 60 41 00 00 00 00          $
	$	REQ001:760 03 22 60 40 00 00 00 00          $
	$	REQ002:760 03 22 60 01 00 00 00 00          $
	$	REQ003:760 03 22 60 51 00 00 00 00          $

  $  000.档位显示                           $    $  档     $    $  ANS000.BYTE004  $  00:未使用		01:1档		02:2档		03:3档		04:4档		05:5档		06:P档		07:N档		08:R档		09:D档		0A:6档		0B:7档		0C:8档,		其他:-
  $  001.自动模式控制显示                   $    $  -      $    $  ANS000.BYTE009  $  00:未使用		01:运动模式		02:雪地模式		03:经济模式		其他:-
  $  002.巡航状态                           $    $  -      $    $  ANS001.BYTE007  $  00:关		01:开		02:闪烁		其他:-
  $  003.位置灯未关闭报警                   $    $  -      $    $  ANS002.BYTE003  $  if(X1&0x8)y=@0120;else y=@0119;
  $  004.驾驶员安全带未系报警               $    $  -      $    $  ANS002.BYTE003  $  if(X1&0x4)y=@0120;else y=@0119;
  $  005.副驾驶员安全带未系报警             $    $  -      $    $  ANS002.BYTE003  $  if(X1&0x2)y=@0120;else y=@0119;
  $  006.钥匙未拔时驾驶员门未关报警         $    $  -      $    $  ANS002.BYTE003  $  if(X1&0x1)y=@0120;else y=@0119;
  $  007.驾驶员安全带未系提示灯状态         $    $  -      $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  008.副驾驶员安全带未系提示灯状态       $    $  -      $    $  ANS001.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  009.远光灯状态                         $    $  -      $    $  ANS001.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  010.左转向灯状态                       $    $  -      $    $  ANS001.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  011.右转向灯状态                       $    $  -      $    $  ANS001.BYTE003  $  if(X1&0x8)y=@0120;else y=@0119;
  $  012.后雾灯状态                         $    $  -      $    $  ANS001.BYTE003  $  if(X1&0x2)y=@0120;else y=@0119;
  $  013.位置灯状态                         $    $  -      $    $  ANS001.BYTE003  $  if(X1&0x1)y=@0120;else y=@0119;
  $  014.油位低指示灯状态                   $    $  -      $    $  ANS001.BYTE004  $  if(X1&0x80)y=@0120;else y=@0119;
  $  015.水温高指示灯                       $    $  -      $    $  ANS001.BYTE004  $  if(X1&0x20)y=@0120;else y=@0119;
  $  016.防盗指示灯                         $    $  -      $    $  ANS001.BYTE004  $  if(X1&0x2)y=@0120;else y=@0119;
  $  017.ABS/ESP指示灯                      $    $  -      $    $  ANS001.BYTE004  $  if(X1&0x1)y=@0120;else y=@0119;
  $  018.安全气囊指示灯                     $    $  -      $    $  ANS001.BYTE005  $  if(X1&0x80)y=@0120;else y=@0119;
  $  019.ESC报警指示灯                      $    $  -      $    $  ANS001.BYTE005  $  if(X1&0x40)y=@0120;else y=@0119;
  $  020.ESC开关指示灯                      $    $  -      $    $  ANS001.BYTE005  $  if(X1&0x20)y=@0120;else y=@0119;
  $  021.EPS指示灯                          $    $  -      $    $  ANS001.BYTE005  $  if(X1&0x10)y=@0120;else y=@0119;
  $  022.档位模式                           $    $  -      $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0143;else y=@0142;
  $  023.EBD指示灯                          $    $  -      $    $  ANS001.BYTE005  $  if(X1&0x8)y=@0120;else y=@0119;
  $  024.变速器报警指示灯                   $    $  -      $    $  ANS001.BYTE005  $  if(X1&0x4)y=@0120;else y=@0119;
  $  025.胎压监测指示灯                     $    $  -      $    $  ANS001.BYTE005  $  if(X1&0x2)y=@0120;else y=@0119;
  $  026.左前门                             $    $  -      $    $  ANS001.BYTE006  $  if(X1&0x80)y=@0120;else y=@0119;
  $  027.右前门                             $    $  -      $    $  ANS001.BYTE006  $  if(X1&0x40)y=@0120;else y=@0119;
  $  028.左后门                             $    $  -      $    $  ANS001.BYTE006  $  if(X1&0x20)y=@0120;else y=@0119;
  $  029.右后门                             $    $  -      $    $  ANS001.BYTE006  $  if(X1&0x10)y=@0120;else y=@0119;
  $  030.后备箱                             $    $  -      $    $  ANS001.BYTE006  $  if(X1&0x8)y=@0120;else y=@0119;
  $  031.引擎盖                             $    $  -      $    $  ANS001.BYTE006  $  if(X1&0x4)y=@0120;else y=@0119;
  $  032.后排安全带报警                     $    $  -      $    $  ANS003.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  033.主报警灯                           $    $  -      $    $  ANS003.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  034.保养提示                           $    $  -      $    $  ANS003.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  035.AEB错误指示灯                      $    $  -      $    $  ANS003.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  036.汽油机颗粒捕集器再生提醒           $    $  -      $    $  ANS003.BYTE004  $  if(X1&0x40)y=@0120;else y=@0119;
  $  037.发动机故障指示灯                   $    $  -      $    $  ANS003.BYTE004  $  if(X1&0x20)y=@0120;else y=@0119;
  $  038.机油压力过低指示灯                 $    $  -      $    $  ANS003.BYTE004  $  if(X1&0x10)y=@0120;else y=@0119;
  $  039.近光指示灯                         $    $  -      $    $  ANS003.BYTE004  $  if(X1&0x8)y=@0120;else y=@0119;
  $  040.AEBOFF指示灯                       $    $  -      $    $  ANS003.BYTE004  $  if(X1&0x4)y=@0120;else y=@0119;


