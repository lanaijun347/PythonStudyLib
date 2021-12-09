$~#6$~#14$~500$~709
;******************************************************************************************************************************************************

车型代号:CN210S
车型:宝骏560
排量:N15T
年份:2020
模块名缩写:SCU
模块名:换挡杆控制模块
供应商:南京奥联
诊断代码:CN210S_280T_2020_SCU(CVT)_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:701 02 10 01 00 00 00 00 00          $~          709 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:701 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:701 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:701 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/RS-5DTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:701 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:701 02 11 01 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:701 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:701 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:701 03 22 F1 92 00 00 00 00          $%
	$%	REQ003:701 03 22 F1 93 00 00 00 00          $%
	$%	REQ004:701 03 22 F1 94 00 00 00 00          $%
	$%	REQ005:701 03 22 F1 95 00 00 00 00          $%
	$%	REQ006:701 03 22 F1 CB 00 00 00 00          $%
	$%	REQ007:701 03 22 F1 88 00 00 00 00          $%
	$%	REQ008:701 03 22 F1 91 00 00 00 00          $%

  $%  000:ECU生产日期       $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN码             $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:硬件号            $%    $%  ANS002.BYTE003  $%  10个字节的ASCII显示
  $%  003:硬件版本号        $%    $%  ANS003.BYTE003  $%  04个字节的ASCII显示
  $%  004:软件号            $%    $%  ANS004.BYTE003  $%  10个字节的ASCII显示
  $%  005:软件版本号        $%    $%  ANS005.BYTE003  $%  04个字节的ASCII显示
  $%  006:零件号            $%    $%  ANS006.BYTE003  $%  X1X2X3X4
  $%  007:ECU软件号         $%    $%  ANS007.BYTE003  $%  X1X2X3X4
  $%  008:ECU硬件号         $%    $%  ANS008.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

   00.换挡杆数据流

	$	REQ000:701 03 22 F1 01 00 00 00 00          $
	$	REQ001:701 03 22 F1 02 00 00 00 00          $
	$	REQ002:701 03 22 F1 03 00 00 00 00          $
	$	REQ003:701 03 22 F1 06 00 00 00 00          $
	$	REQ004:701 03 22 F1 04 00 00 00 00          $
	$	REQ005:701 03 22 F1 05 00 00 00 00          $
	$	REQ006:701 03 22 F1 07 00 00 00 00          $

  $  000.ECU供电电压                      $    $  V      $    $  ANS000.BYTE003  $  X*0.1
  $  001.档位器位置传感器1数据            $    $  -      $    $  ANS001.BYTE003  $  XY*(-)-
  $  002.档位器位置传感器2数据            $    $  -      $    $  ANS001.BYTE005  $  XY*(-)-
  $  003.档位器上2标定位置                $    $  mm     $    $  ANS002.BYTE003  $  XY*0.000875
  $  004.档位器上1标定位置                $    $  mm     $    $  ANS002.BYTE005  $  XY*0.000875
  $  005.档位器标定中间位置               $    $  mm     $    $  ANS002.BYTE007  $  XY*0.000875
  $  006.档位器下1标定位置                $    $  mm     $    $  ANS002.BYTE009  $  XY*0.000875
  $  007.档位器下2标定位置                $    $  mm     $    $  ANS002.BYTE011  $  XY*0.000875
  $  008.档位器上2标定位置（备份）        $    $  mm     $    $  ANS002.BYTE013  $  XY*0.000875
  $  009.档位器上1标定位置（备份）        $    $  mm     $    $  ANS002.BYTE015  $  XY*0.000875
  $  010.档位器标定中间位置（备份）       $    $  mm     $    $  ANS002.BYTE017  $  XY*0.000875
  $  011.档位器下1标定位置（备份）        $    $  mm     $    $  ANS002.BYTE019  $  XY*0.000875
  $  012.档位器下2标定位置（备份）        $    $  mm     $    $  ANS002.BYTE021  $  XY*0.000875
  $  013.R 硬线输出状态                   $    $  -      $    $  ANS003.BYTE003  $  X*(-)-
  $  014.park按键状态                     $    $  -      $    $  ANS004.BYTE003  $  if(X1&0x80)y=@0329;else y=@0349;
  $  015.unlock按键状态                   $    $  -      $    $  ANS004.BYTE003  $  if(X1&0x40)y=@0329;else y=@0349;
  $  016.P LED状态                        $    $  -      $    $  ANS005.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  017.R LED状态                        $    $  -      $    $  ANS005.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  018.N LED状态                        $    $  -      $    $  ANS005.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  019.D LED状态                        $    $  -      $    $  ANS005.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  020.S LED状态                        $    $  -      $    $  ANS005.BYTE003  $  if(X1&0x8)y=@0120;else y=@0119;
  $  021.P LED状态                        $    $  -      $    $  ANS006.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  022.R LED状态                        $    $  -      $    $  ANS006.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  023.N LED状态                        $    $  -      $    $  ANS006.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  024.D LED状态                        $    $  -      $    $  ANS006.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  025.S LED状态                        $    $  -      $    $  ANS006.BYTE003  $  if(X1&0x8)y=@0120;else y=@0119;


