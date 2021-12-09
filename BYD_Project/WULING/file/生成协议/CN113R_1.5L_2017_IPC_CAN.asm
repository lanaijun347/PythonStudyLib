$~#6$~#14$~500$~768
;******************************************************************************************************************************************************

车型代号:CN113
车型:CONFERO 
排量:1.5L
年份:2017
模块名缩写:IPC
模块名:仪表控制模块
供应商:天有为
诊断代码:CN113R_1.5L_2017_IPC_CAN

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

		$*$*DTC/FORMODTCS


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

  $%  000:ECU Manufacturing Date                     $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN                                        $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:Supplier ECU Hardware Version Number       $%    $%  ANS002.BYTE003  $%  02个字节的HEX显示
  $%  003:Supplier ECU Software Version Number       $%    $%  ANS003.BYTE003  $%  02个字节的HEX显示
  $%  004:End Model Part Number                      $%    $%  ANS004.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

   00.Data Display

	$	REQ000:760 03 22 60 12 00 00 00 00          $
	$	REQ001:760 03 22 60 20 00 00 00 00          $
	$	REQ002:760 03 22 60 21 00 00 00 00          $
	$	REQ003:760 03 22 60 22 00 00 00 00          $
	$	REQ004:760 03 22 60 23 00 00 00 00          $
	$	REQ005:760 03 22 60 24 00 00 00 00          $
	$	REQ006:760 03 22 60 25 00 00 00 00          $
	$	REQ007:760 03 22 60 40 00 00 00 00          $
	$	REQ008:760 03 22 60 01 00 00 00 00          $

  $  000.KL30 voltage Analogue Input                                        $    $  V        $    $  ANS000.BYTE003  $  X*0.1+5
  $  001.Engine Temperature Gauge Output                                    $    $  ℃       $    $  ANS001.BYTE003  $  X*1-40
  $  002.Fuel Gauge Output                                                  $    $  %        $    $  ANS002.BYTE003  $  X*0.392156862745098
  $  003.Speedometer Output                                                 $    $  Km/h     $    $  ANS003.BYTE003  $  XY*0.015625
  $  004.Tachometer Output                                                  $    $  rpm      $    $  ANS004.BYTE003  $  XY*0.25
  $  005.Odometer Output                                                    $    $  Km       $    $  ANS005.BYTE003  $  X1X2X3X4*0.015625
  $  006.Trip1 Output                                                       $    $  Km       $    $  ANS006.BYTE003  $  XY*0.015257
  $  007.Work status light of cruise control system                         $    $  -        $    $  ANS007.BYTE007  $  00:OFF		01:ON		0A: twinkling		0B: Reserved		其他:-
  $  008.Door open voice remind                                             $    $  -        $    $  ANS008.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  009.Gearbox failure voice warning                                      $    $  -        $    $  ANS008.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;
  $  010.Position light not shut off voice warning                          $    $  -        $    $  ANS008.BYTE003  $  if(X1&0x8)y=@0009;else y=@0008;
  $  011.Driver seat belt not tie voice warning                             $    $  -        $    $  ANS008.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  012.co-driver seat belt not tie voice warning                          $    $  -        $    $  ANS008.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  013.Voice remind when driver side door open but key not pull out       $    $  -        $    $  ANS008.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  014.Driver seat belt not tie Indicator Light                           $    $  -        $    $  ANS007.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  015.co-driver seat belt not tie Indicator Light                        $    $  -        $    $  ANS007.BYTE003  $  if(X1&0x40)y=@0009;else y=@0008;
  $  016.High Beam indicator                                                $    $  -        $    $  ANS007.BYTE003  $  if(X1&0x20)y=@0009;else y=@0008;
  $  017.Left turn indicator                                                $    $  -        $    $  ANS007.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;
  $  018.Right turn indicator                                               $    $  -        $    $  ANS007.BYTE003  $  if(X1&0x8)y=@0009;else y=@0008;
  $  019.Front fog indicator                                                $    $  -        $    $  ANS007.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  020.Rear fog indicator                                                 $    $  -        $    $  ANS007.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  021.Position light                                                     $    $  -        $    $  ANS007.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  022.Fuel too low indication Light                                      $    $  -        $    $  ANS007.BYTE004  $  if(X1&0x80)y=@0009;else y=@0008;
  $  023.Water temperature too high indication light                        $    $  -        $    $  ANS007.BYTE004  $  if(X1&0x20)y=@0009;else y=@0008;
  $  024.Maintain remind Indicator Light                                    $    $  -        $    $  ANS007.BYTE004  $  if(X1&0x4)y=@0009;else y=@0008;
  $  025.IMMO Light                                                         $    $  -        $    $  ANS007.BYTE004  $  if(X1&0x2)y=@0009;else y=@0008;
  $  026.ABS fault indicator light                                          $    $  -        $    $  ANS007.BYTE004  $  if(X1&0x1)y=@0009;else y=@0008;
  $  027.SRS fault Indicator Light                                          $    $  -        $    $  ANS007.BYTE005  $  if(X1&0x80)y=@0009;else y=@0008;
  $  028.ESC warning lamps                                                  $    $  -        $    $  ANS007.BYTE005  $  if(X1&0x40)y=@0009;else y=@0008;
  $  029.ESC Switch Indicator                                               $    $  -        $    $  ANS007.BYTE005  $  if(X1&0x20)y=@0009;else y=@0008;
  $  030.EPS indicator                                                      $    $  -        $    $  ANS007.BYTE005  $  if(X1&0x10)y=@0009;else y=@0008;
  $  031.EBD indicator                                                      $    $  -        $    $  ANS007.BYTE005  $  if(X1&0x8)y=@0009;else y=@0008;
  $  032.Gearbox warning indicator                                          $    $  -        $    $  ANS007.BYTE005  $  if(X1&0x4)y=@0009;else y=@0008;
  $  033.TPMS indicator                                                     $    $  -        $    $  ANS007.BYTE005  $  if(X1&0x2)y=@0009;else y=@0008;
  $  034.front left door                                                    $    $  -        $    $  ANS007.BYTE006  $  if(X1&0x80)y=@0009;else y=@0008;
  $  035.front right door                                                   $    $  -        $    $  ANS007.BYTE006  $  if(X1&0x40)y=@0009;else y=@0008;
  $  036.rear left door                                                     $    $  -        $    $  ANS007.BYTE006  $  if(X1&0x20)y=@0009;else y=@0008;
  $  037.rear right door                                                    $    $  -        $    $  ANS007.BYTE006  $  if(X1&0x10)y=@0009;else y=@0008;
  $  038.Tail-gate                                                          $    $  -        $    $  ANS007.BYTE006  $  if(X1&0x8)y=@0009;else y=@0008;


