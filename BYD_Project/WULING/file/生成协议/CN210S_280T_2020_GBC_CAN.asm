$~#6$~#14$~500$~70B
;******************************************************************************************************************************************************

车型代号:CN210S
车型:RS-3
排量:280T
年份:2019
模块名缩写:GBC
模块名:电子换挡执行器控制器
供应商:宁波高发
诊断代码:CN210S_280T_2019_GBC_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:703 02 10 01 00 00 00 00 00          $~          70B 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:703 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:703 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:703 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/RS-5DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:703 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:703 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:703 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:703 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:703 03 22 F1 92 00 00 00 00          $%
	$%	REQ003:703 03 22 F1 93 00 00 00 00          $%
	$%	REQ004:703 03 22 F1 94 00 00 00 00          $%
	$%	REQ005:703 03 22 F1 95 00 00 00 00          $%
	$%	REQ006:703 03 22 F1 CB 00 00 00 00          $%
	$%	REQ007:703 03 22 F1 91 00 00 00 00          $%
	$%	REQ008:703 03 22 F1 88 00 00 00 00          $%

  $%  000:ECU生产日期               $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN                       $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:供应商ECU硬件号           $%    $%  ANS002.BYTE003  $%  10个字节的ASCII显示
  $%  003:供应商ECU硬件版本号       $%    $%  ANS003.BYTE003  $%  04个字节的ASCII显示
  $%  004:供应商ECU软件号           $%    $%  ANS004.BYTE003  $%  10个字节的ASCII显示
  $%  005:供应商ECU软件版本号       $%    $%  ANS005.BYTE003  $%  04个字节的ASCII显示
  $%  006:零件号                    $%    $%  ANS006.BYTE003  $%  X1X2X3X4
  $%  007:SGMW ECU硬件号            $%    $%  ANS007.BYTE003  $%  X1X2X3X4
  $%  008:SGMW ECU软件号            $%    $%  ANS008.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

   00.数据流

	$	REQ000:703 03 22 F1 01 00 00 00 00          $
	$	REQ001:703 03 22 F1 02 00 00 00 00          $
	$	REQ002:703 03 22 F1 03 00 00 00 00          $
	$	REQ003:703 03 22 F1 0A 00 00 00 00          $
	$	REQ004:703 03 22 F1 0B 00 00 00 00          $
	$	REQ005:703 03 22 F1 0C 00 00 00 00          $
	$	REQ006:703 03 22 F1 0D 00 00 00 00          $
	$	REQ007:703 03 22 F1 0E 00 00 00 00          $
	$	REQ008:703 03 22 F1 0F 00 00 00 00          $
	$	REQ009:703 03 22 F1 10 00 00 00 00          $
	$	REQ010:703 03 22 F1 11 00 00 00 00          $

  $  000.ECU供电电压                       $    $  V        $    $  ANS000.BYTE003  $  X*0.1
  $  001.执行器控制器位置传感器1数据       $    $  -        $    $  ANS001.BYTE003  $  XY*0.0884016973125884
  $  002.执行器控制器位置传感器2数据       $    $  -        $    $  ANS001.BYTE005  $  XY*0.0884016973125884
  $  003.P档位置标定数据                   $    $  °       $    $  ANS002.BYTE003  $  XY*0.0884016973125884
  $  004.R档位置标定数据                   $    $  °       $    $  ANS002.BYTE005  $  XY*0.0884016973125884
  $  005.N档位置标定数据                   $    $  °       $    $  ANS002.BYTE007  $  XY*0.0884016973125884
  $  006.D档位置标定数据                   $    $  °       $    $  ANS002.BYTE009  $  XY*0.0884016973125884
  $  007.S档位置标定数据                   $    $  °       $    $  ANS002.BYTE011  $  XY*0.0884016973125884
  $  008.P档位置标定数据（备份）           $    $  °       $    $  ANS002.BYTE013  $  XY*0.0884016973125884
  $  009.R档位置标定数据（备份）           $    $  °       $    $  ANS002.BYTE015  $  XY*0.0884016973125884
  $  010.N档位置标定数据（备份）           $    $  °       $    $  ANS002.BYTE017  $  XY*0.0884016973125884
  $  011.D档位置标定数据（备份）           $    $  °       $    $  ANS002.BYTE019  $  XY*0.0884016973125884
  $  012.S档位置标定数据（备份）           $    $  °       $    $  ANS002.BYTE021  $  XY*0.0884016973125884
  $  013.执行器控制目标档位                $    $  -        $    $  ANS003.BYTE003  $  01:P		02:R		03:N		04:D		06:S		其他:-
  $  014.执行器反馈电流                    $    $  A        $    $  ANS004.BYTE003  $  XY*0.065983953
  $  015.车速                              $    $  km/h     $    $  ANS005.BYTE003  $  XY*0.015625
  $  016.发动机转速                        $    $  rpm      $    $  ANS006.BYTE003  $  XY*0.25
  $  017.刹车状态                          $    $  -        $    $  ANS007.BYTE003  $  00:非制动		01:制动		02:无效		其他:-
  $  018.安全带状态                        $    $  -        $    $  ANS008.BYTE003  $  00:未系		01:已系		02:无效		其他:-
  $  019.门状态                            $    $  -        $    $  ANS009.BYTE003  $  00:开启		01:关闭		02:无效		其他:-
  $  020.发动机状态                        $    $  -        $    $  ANS010.BYTE003  $  00:运转		01:不运转		02:无效		其他:-


