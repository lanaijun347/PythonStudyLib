$~#6$~#14$~500$~7EA
;******************************************************************************************************************************************************

车型代号:CN120S
车型:五菱宏光S3
排量:1.5
年份:2018
模块名缩写:ACU
模块名:离合器控制模块
供应商:索弗勒
诊断代码:CN120S_ACU_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:7E2 02 10 01 00 00 00 00 00          $~          7EA 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:7E2 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:7E2 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:7E2 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/WLHGS3DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:7E2 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:7E2 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:7E2 03 22 F1 94 00 00 00 00          $%
	$%	REQ001:7E2 03 22 F1 CB 00 00 00 00          $%
	$%	REQ002:7E2 03 22 F1 8A 00 00 00 00          $%
	$%	REQ003:7E2 03 22 F1 8B 00 00 00 00          $%
	$%	REQ004:7E2 03 22 F1 8C 00 00 00 00          $%
	$%	REQ005:7E2 03 22 F1 92 00 00 00 00          $%
	$%	REQ006:7E2 03 22 F1 B2 00 00 00 00          $%

  $%  000:供应商ECU软件号           $%    $%  ANS000.BYTE003  $%  32个字节的ASCII显示
  $%  001:零件号（SGMW P/N）        $%    $%  ANS001.BYTE003  $%  X1X2X3X4
  $%  002:供应商代码                $%    $%  ANS002.BYTE003  $%  07个字节的ASCII显示
  $%  003:ECU生产日期               $%    $%  ANS003.BYTE003  $%  04个字节的HEX显示
  $%  004:ECU系列号-LuK会定义       $%    $%  ANS004.BYTE003  $%  04个字节的HEX显示
  $%  005:供应商ECU硬件号           $%    $%  ANS005.BYTE003  $%  08个字节的ASCII显示
  $%  006:车辆生产日期              $%    $%  ANS006.BYTE003  $%  04个字节的HEX显示

;******************************************************************************************************************************************************
数据流

   00.所有数据

	$	REQ000:7E2 03 22 01 00 00 00 00 00          $
	$	REQ001:7E2 03 22 01 01 00 00 00 00          $
	$	REQ002:7E2 03 22 01 03 00 00 00 00          $
	$	REQ003:7E2 03 22 01 04 00 00 00 00          $
	$	REQ004:7E2 03 22 01 08 00 00 00 00          $
	$	REQ005:7E2 03 22 F0 11 00 00 00 00          $
	$	REQ006:7E2 03 22 01 0A 00 00 00 00          $
	$	REQ007:7E2 03 22 01 0E 00 00 00 00          $
	$	REQ008:7E2 03 22 01 0F 00 00 00 00          $
	$	REQ009:7E2 03 22 01 10 00 00 00 00          $
	$	REQ010:7E2 03 22 01 12 00 00 00 00          $
	$	REQ011:7E2 03 22 01 13 00 00 00 00          $
	$	REQ012:7E2 03 22 01 14 00 00 00 00          $
	$	REQ013:7E2 03 22 01 15 00 00 00 00          $
	$	REQ014:7E2 03 22 01 16 00 00 00 00          $
	$	REQ015:7E2 03 22 01 17 00 00 00 00          $
	$	REQ016:7E2 03 22 01 18 00 00 00 00          $
	$	REQ017:7E2 03 22 01 19 00 00 00 00          $
	$	REQ018:7E2 03 22 01 1B 00 00 00 00          $
	$	REQ019:7E2 03 22 01 1C 00 00 00 00          $
	$	REQ020:7E2 03 22 01 20 00 00 00 00          $
	$	REQ021:7E2 03 22 01 25 00 00 00 00          $
	$	REQ022:7E2 03 22 01 3A 00 00 00 00          $
	$	REQ023:7E2 03 22 01 39 00 00 00 00          $
	$	REQ024:7E2 03 22 F0 14 00 00 00 00          $
	$	REQ025:7E2 03 22 F0 12 00 00 00 00          $
	$	REQ026:7E2 03 22 F0 13 00 00 00 00          $
	$	REQ027:7E2 03 22 01 2F 00 00 00 00          $
	$	REQ028:7E2 03 22 01 30 00 00 00 00          $
	$	REQ029:7E2 03 22 01 31 00 00 00 00          $
	$	REQ030:7E2 03 22 01 32 00 00 00 00          $
	$	REQ031:7E2 03 22 01 34 00 00 00 00          $
	$	REQ032:7E2 03 22 03 00 00 00 00 00          $
	$	REQ033:7E2 03 22 03 02 00 00 00 00          $
	$	REQ034:7E2 03 22 01 37 00 00 00 00          $
	$	REQ035:7E2 03 22 01 38 00 00 00 00          $
	$	REQ036:7E2 03 22 01 35 00 00 00 00          $
	$	REQ037:7E2 03 22 01 1A 00 00 00 00          $
	$	REQ038:7E2 03 22 01 2D 00 00 00 00          $

  $  000.离合器接合点（中期）          $    $  mm         $    $  ANS000.BYTE003  $  [0000-7FFF]:XY*0.01+0		[8000-FFFF]:(XY-65535)*0.01+0
  $  001.离合器接合点（长期）          $    $  mm         $    $  ANS000.BYTE005  $  [0000-7FFF]:XY*0.01+0		[8000-FFFF]:(XY-65535)*0.01+0
  $  002.离合器摩擦系数                $    $  -          $    $  ANS001.BYTE003  $  [0000-7FFF]:XY*1+0		[8000-FFFF]:(XY-65535)*1+0
  $  003.离合器模型温度                $    $  °C        $    $  ANS002.BYTE003  $  [0000-7FFF]:XY*1+0		[8000-FFFF]:(XY-65535)*1+0
  $  004.离合器温度状态                $    $  -          $    $  ANS003.BYTE003  $  00:温度状态有效		01:温度状态不精确		其他:-
  $  005.离合器执行器目标位置          $    $  mm         $    $  ANS004.BYTE003  $  [0000-7FFF]:XY*0.01+0		[8000-FFFF]:(XY-65535)*0.01+0
  $  006.ACU 供电电压                  $    $  V          $    $  ANS005.BYTE003  $  XY*0.1
  $  007.HCA 供电电压                  $    $  V          $    $  ANS006.BYTE003  $  XY*0.01
  $  008.实际档位                      $    $  -          $    $  ANS007.BYTE003  $  00:空档		01:1档		02:2档		03:3档		04:4档		05:5档		06:6档		07:倒档		08:无效档		其他:-
  $  009.档位状态                      $    $  -          $    $  ANS007.BYTE004  $  FF:档位无效		CC:档位验证		C3:可能结合档位		AA:可能结合档位		0F:错误档位		其他:-
  $  010.变速箱选档位置                $    $  %          $    $  ANS008.BYTE003  $  [0000-7FFF]:XY*0.01+0		[8000-FFFF]:(XY-65535)*0.01+0
  $  011.变速箱换档位置                $    $  %          $    $  ANS009.BYTE003  $  [0000-7FFF]:XY*0.01+0		[8000-FFFF]:(XY-65535)*0.01+0
  $  012.换档杆位置                    $    $  %          $    $  ANS010.BYTE003  $  [0000-7FFF]:XY*0.01+0		[8000-FFFF]:(XY-65535)*0.01+0
  $  013.发动机扭矩                    $    $  Nm         $    $  ANS011.BYTE003  $  [0000-7FFF]:XY*0.1+0		[8000-FFFF]:(XY-65535)*0.1+0
  $  014.输入轴转速                    $    $  rpm        $    $  ANS012.BYTE003  $  [0000-7FFF]:XY*1+0		[8000-FFFF]:(XY-65535)*1+0
  $  015.HCA压力                       $    $  bar        $    $  ANS013.BYTE003  $  [0000-7FFF]:XY*0.1+0		[8000-FFFF]:(XY-65535)*0.1+0
  $  016.加速踏板                      $    $  deg        $    $  ANS014.BYTE003  $  [0000-7FFF]:XY*0.1+0		[8000-FFFF]:(XY-65535)*0.1+0
  $  017.变速箱温度                    $    $  °C        $    $  ANS015.BYTE003  $  [0000-7FFF]:XY*1+0		[8000-FFFF]:(XY-65535)*1+0
  $  018.电机控制状态                  $    $  -          $    $  ANS016.BYTE003  $  00:位置控制模型		01:速度控制模型		02:力控制模型		03:电压控制模型		其他:-
  $  019.距上一次补液时间              $    $  sec        $    $  ANS017.BYTE003  $  [0000-7FFF]:XY*1+0		[8000-FFFF]:(XY-65535)*1+0
  $  020.离合器EOL计数                 $    $  -          $    $  ANS018.BYTE003  $  [0000-7FFF]:XY*1+0		[8000-FFFF]:(XY-65535)*1+0
  $  021.ACU寿命计数                   $    $  Minute     $    $  ANS019.BYTE003  $  X1X2X3X4
  $  022.离合器扭矩可信度              $    $  -          $    $  ANS020.BYTE003  $  00:离合器扭矩可信度无		01:离合器扭矩可信度低		02:离合器扭矩可信度中		03:离合器扭矩可信度高		其他:-
  $  023.HCA的PCB温度                  $    $  °C        $    $  ANS021.BYTE003  $  [0000-7FFF]:XY*1+0		[8000-FFFF]:(XY-65535)*1+0
  $  024.补液需求程度                  $    $  -          $    $  ANS022.BYTE003  $  00:补液需求优先级“无”		01:补液需求优先级“当可能的时候”		02:补液需求优先级“紧急”		03:补液需求优先级“现在”		其他:-
  $  025.油液温度                      $    $  °C        $    $  ANS023.BYTE003  $  [0000-7FFF]:XY*1+0		[8000-FFFF]:(XY-65535)*1+0
  $  026.里程                          $    $  km         $    $  ANS024.BYTE003  $  [00000000-7FFFFFFF]:X1X2X3X4*0.015625+0		[800000-FFFFFF]:(X1X2X3X4-4294967295)*0.015625+0
  $  027.发动机转速                    $    $  rpm        $    $  ANS025.BYTE003  $  XY
  $  028.车速                          $    $  rpm        $    $  ANS026.BYTE003  $  XY*0.1
  $  029.手刹状态（拉起/未拉起）       $    $  -          $    $  ANS027.BYTE003  $  00:手刹没有拉起		01:手刹拉起		其他:-
  $  030.脚刹状态（踩下/未踩下）       $    $  -          $    $  ANS028.BYTE003  $  00:未踩脚刹		01:踩脚刹		其他:-
  $  031.离合器超速次数                $    $  -          $    $  ANS029.BYTE003  $  08个字节的HEX显示
  $  032.未实行补液次数                $    $  -          $    $  ANS030.BYTE003  $  [0000-7FFF]:XY*1+0		[8000-FFFF]:(XY-65535)*1+0
  $  033.离合器执行器实际电压          $    $  V          $    $  ANS031.BYTE003  $  [0000-7FFF]:XY*0.01+0		[8000-FFFF]:(XY-65535)*0.01+0
  $  034.离合器实际位置                $    $  mm         $    $  ANS032.BYTE003  $  [0000-7FFF]:XY*0.01+0		[8000-FFFF]:(XY-65535)*0.01+0
  $  035.离合器执行器加速度            $    $  mm/sec     $    $  ANS032.BYTE005  $  [0000-7FFF]:XY*0.1+0		[8000-FFFF]:(XY-65535)*0.1+0
  $  036.补液孔状态                    $    $  -          $    $  ANS033.BYTE003  $  00:补液口位置未到		01:补液口位置到达		其他:-
  $  037.发动机状态                    $    $  -          $    $  ANS034.BYTE003  $  A5A5:发动机上电		AAAA:发动机启动		3330:发动机熄火		3CC0:发动机状态不清楚		6969:发动机错误		其他:-
  $  038.离合器安全操作状态            $    $  -          $    $  ANS035.BYTE003  $  AA:好		C3:不好		CC:不能打开		3C:不能关闭		其他:-
  $  039.结合点扭矩                    $    $  -          $    $  ANS036.BYTE003  $  00:快速调整功能不可启用		01:快速调整功能可启用		其他:-
  $  040.换档意图                      $    $  -          $    $  ANS037.BYTE003  $  00:换档意图未被识别		01:换档意图识别		其他:-
  $  041.自由位置学习标志位            $    $  -          $    $  ANS038.BYTE003  $  X1X2X3X4


