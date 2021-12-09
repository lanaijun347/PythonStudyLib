$~#6$~#14$~500$~748
;******************************************************************************************************************************************************

车型代号:CN113R年度车型
车型:CONFERO 
排量:1.5L
年份:2019
模块名缩写:BCM
模块名:车身控制模块
供应商:联电
诊断代码:CN113R_2019_BCM_CAN

;******************************************************************************************************************************************************
激活命令

	$~	REQ000:740 02 10 01 00 00 00 00 00          $~          748 02 10 01 00 00 00 00 00

;******************************************************************************************************************************************************
诊断仪在线需回复

	 	REQ000:740 02 3E 00 00 00 00 00 00           

;******************************************************************************************************************************************************
诊断仪在线无回复

	$!	REQ000:740 02 3E 80 00 00 00 00 00          $!

;******************************************************************************************************************************************************
读取故障码

	$#	REQ000:740 03 19 02 08 00 00 00 00          $#

			规律:帧长决定故障码个数，$#BYTE03$#开始表示故障码，每$#4$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/CONFERO SDTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000:740 04 14 FF FF FF 00 00 00          $$

;******************************************************************************************************************************************************
ECU复位

		REQ000:740 02 11 03 00 00 00 00 00          

;******************************************************************************************************************************************************
模块信息

	$%	REQ000:740 03 22 F1 8B 00 00 00 00          $%
	$%	REQ001:740 03 22 F1 90 00 00 00 00          $%
	$%	REQ002:740 03 22 F1 92 00 00 00 00          $%
	$%	REQ003:740 03 22 F1 93 00 00 00 00          $%
	$%	REQ004:740 03 22 F1 94 00 00 00 00          $%
	$%	REQ005:740 03 22 F1 95 00 00 00 00          $%
	$%	REQ006:740 03 22 F1 CB 00 00 00 00          $%

  $%  000:ECUManufacturingDate                       $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN                                        $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:Supplier ECU Hardware Number               $%    $%  ANS002.BYTE003  $%  03个字节的ASCII显示
  $%  003:Supplier ECU Hardware Version Number       $%    $%  ANS003.BYTE003  $%  01个字节的HEX显示
  $%  004:Supplier ECU Software Number               $%    $%  ANS004.BYTE003  $%  05个字节的ASCII显示
  $%  005:Supplier ECU Software Number               $%    $%  ANS005.BYTE003  $%  03个字节的HEX显示
  $%  006:EndModelPartNumber (SGMW P/N)              $%    $%  ANS006.BYTE003  $%  X1X2X3X4

;******************************************************************************************************************************************************
数据流

 $ 00.Car lighting system data

	$	REQ000:740 03 22 70 03 00 00 00 00          $
	$	REQ001:740 03 22 70 01 00 00 00 00          $
	$	REQ002:740 03 22 70 02 00 00 00 00          $
	$	REQ003:740 03 22 A0 0C 00 00 00 00          $

  $  000.Output for Interior lamp                    $    $  %     $    $  ANS000.BYTE003  $  X*0.392157
  $  001.Position lamp switch                        $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  002.Dipped beam switch                          $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x40)y=@0009;else y=@0008;
  $  003.Head lamp switch                            $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x20)y=@0009;else y=@0008;
  $  004.High beam switch                            $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;
  $  005.Left turn lamp switch                       $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x8)y=@0009;else y=@0008;
  $  006.Right turn lamp switch                      $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  007.Front fog lamp switch                       $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  008.Rear fog lamp switch                        $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  009.Hazard switch                               $    $  -     $    $  ANS001.BYTE004  $  if(X1&0x80)y=@0009;else y=@0008;
  $  010.Reversing light switch                      $    $  -     $    $  ANS001.BYTE004  $  if(X1&0x40)y=@0009;else y=@0008;
  $  011.Position lamp                               $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  012.Dipped beam                                 $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x40)y=@0009;else y=@0008;
  $  013.High beam                                   $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x20)y=@0009;else y=@0008;
  $  014.Left turn lamp                              $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;
  $  015.Right turn lamp                             $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x8)y=@0009;else y=@0008;
  $  016.Front fog lamp                              $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  017.Rear fog lamp                               $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x2)y=@0009;else y=@0008;
  $  018.Reversing lights                            $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  019.Daytime Running Lamps(Only Cross LV2)       $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;

 $ 01.Wiper and washer data

	$	REQ000:740 03 22 A0 02 00 00 00 00          $
	$	REQ001:740 03 22 A0 06 00 00 00 00          $

  $  000.Front wiper Intermittent adjustment switch       $    $  -     $    $  ANS000.BYTE007  $  00:Retain		01:delay1		02:delay2		03:delay3		04:delay4		05:delay5		06:delay6		07:delay7		其他:-
  $  001.Front wiper high speed switch                    $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  002.Front wiper low speed switch                     $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x40)y=@0009;else y=@0008;
  $  003.Front wiper intermission switch                  $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0009;else y=@0008;
  $  004.Front wiper park switch                          $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;
  $  005.Front wash switch                                $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x1)y=@0009;else y=@0008;
  $  006.Rear wiper switch                                $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x80)y=@0009;else y=@0008;
  $  007.Rear wash switch                                 $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x40)y=@0009;else y=@0008;
  $  008.Front wiper high speed motor                     $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  009.Front wiper low speed motor                      $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x40)y=@0009;else y=@0008;
  $  010.Front wash motor                                 $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x20)y=@0009;else y=@0008;
  $  011.Rear wiper motor                                 $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;
  $  012.Rear wash motor                                  $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x8)y=@0009;else y=@0008;

 $ 02.Touch with door lock state data

	$	REQ000:740 03 22 A0 03 00 00 00 00          $
	$	REQ001:740 03 22 A0 09 00 00 00 00          $

  $  000.Front left door ajar switch        $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  001.Front right door ajar switch       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x40)y=@0009;else y=@0008;
  $  002.Rear left door ajar switch         $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0009;else y=@0008;
  $  003.Rear right door ajar switch        $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x10)y=@0009;else y=@0008;
  $  004.Trunk ajar switch                  $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x8)y=@0009;else y=@0008;
  $  005.Hood ajar switch                   $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x4)y=@0009;else y=@0008;
  $  006.Lock feedback switch               $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x20)y=@0009;else y=@0008;
  $  007.Trunk unlock switch                $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x10)y=@0009;else y=@0008;
  $  008.Door Lock motor                    $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  009.Door Unlock motor                  $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x40)y=@0009;else y=@0008;
  $  010.Trunk unlocked motor               $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x20)y=@0009;else y=@0008;

 $ 03.The key state data

	$	REQ000:740 03 22 A0 01 00 00 00 00          $

  $  000.Key insert switch              $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0022;else y=@0021;
  $  001.KLR(ACC) switch                $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x40)y=@0252;else y=@0251;
  $  002.KL15(ON) ignition switch       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0009;else y=@0253;
  $  003.KL50 start switch              $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x10)y=@0255;else y=@0254;

 $ 04.IMMO data(non-peps model support)

	$	REQ000:740 03 22 C8 07 00 00 00 00          $
	$	REQ001:740 03 22 C8 16 00 00 00 00          $

  $  000.Key number                   $    $  -     $    $  ANS000.BYTE003  $  00:0		01:1		02:2		03:3		04:4		05:Reserved		06:Reserved		07:Reserved		其他:-
  $  001.RKE Number（RKE only）       $    $  -     $    $  ANS001.BYTE003  $  00:0		01:1		02:2		03:3		04:4		其他:-
  $  002.IMMO Locked or Not           $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0011;else y=@0023;
  $  003.Write PIN or Not             $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x40)y=@0011;else y=@0023;
  $  004.Write SK or Not              $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0011;else y=@0023;
  $  005.Write VIN or Not             $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x10)y=@0011;else y=@0023;

 $ 05.other

	$	REQ000:740 03 22 A0 07 00 00 00 00          $
	$	REQ001:740 03 22 A0 08 00 00 00 00          $
	$	REQ002:740 03 22 A0 0A 00 00 00 00          $
	$	REQ003:740 03 22 A0 0C 00 00 00 00          $

  $  000.power window (Rise)         $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  001.power window (Fall)         $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x40)y=@0009;else y=@0008;
  $  002.Horn                        $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  003.Battery saver output        $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;
  $  004.Daytime Running Lamps       $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x80)y=@0009;else y=@0008;


