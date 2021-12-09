$~#6$~#14$~500$~748
;******************************************************************************************************************************************************

车型代号:CN210S
车型:宝骏560
排量:N15T
年份:2018
模块名缩写:BCM
模块名:车身控制模块
供应商:联电
诊断代码:CN210S_N15T_2018_BCM_CAN

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

		$*$*DTC/RS-5DTCS


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
	$%	REQ003:740 03 22 F1 94 00 00 00 00          $%
	$%	REQ004:740 03 22 F1 CB 00 00 00 00          $%
	$%	REQ005:740 03 22 F1 93 00 00 00 00          $%
	$%	REQ006:740 03 22 F1 95 00 00 00 00          $%

  $%  000:ECU生产日期               $%    $%  ANS000.BYTE003  $%  04个字节的HEX显示
  $%  001:VIN                       $%    $%  ANS001.BYTE003  $%  17个字节的ASCII显示
  $%  002:供应商ECU硬件号           $%    $%  ANS002.BYTE003  $%  03个字节的ASCII显示
  $%  003:供应商ECU软件号           $%    $%  ANS003.BYTE003  $%  05个字节的ASCII显示
  $%  004:零件号SGMW P/N            $%    $%  ANS004.BYTE003  $%  X1X2X3X4
  $%  005:供应商ECU硬件版本号       $%    $%  ANS005.BYTE003  $%  01个字节的HEX显示
  $%  006:供应商ECU软件版本号       $%    $%  ANS006.BYTE003  $%  03个字节的HEX显示

;******************************************************************************************************************************************************
数据流

 $ 00.车外照明系统数据

	$	REQ000:740 03 22 70 03 00 00 00 00          $
	$	REQ001:740 03 22 70 01 00 00 00 00          $
	$	REQ002:740 03 22 70 02 00 00 00 00          $
	$	REQ003:740 03 22 A0 0C 00 00 00 00          $
	$	REQ004:740 03 22 A0 15 00 00 00 00          $
	$	REQ005:740 03 22 A0 16 00 00 00 00          $
	$	REQ006:740 03 22 A0 17 00 00 00 00          $
	$	REQ007:740 03 22 A0 1F 00 00 00 00          $

  $  000.车内灯亮度                     $    $  %     $    $  ANS000.BYTE003  $  X*0.392157
  $  001.位置灯开关                     $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  002.大灯开关                       $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  003.左转向灯开关                   $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x8)y=@0120;else y=@0119;
  $  004.右转向灯开关                   $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x4)y=@0120;else y=@0119;
  $  005.前雾灯开关                     $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x2)y=@0120;else y=@0119;
  $  006.后雾灯开关                     $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x1)y=@0120;else y=@0119;
  $  007.危险警告灯开关                 $    $  -     $    $  ANS001.BYTE004  $  if(X1&0x80)y=@0120;else y=@0119;
  $  008.倒车灯开关                     $    $  -     $    $  ANS001.BYTE004  $  if(X1&0x40)y=@0120;else y=@0119;
  $  009.自动大灯开关                   $    $  -     $    $  ANS001.BYTE004  $  if(X1&0x20)y=@0120;else y=@0119;
  $  010.超车灯开关                     $    $  -     $    $  ANS001.BYTE004  $  if(X1&0x10)y=@0120;else y=@0119;
  $  011.远近灯切换开关                 $    $  -     $    $  ANS001.BYTE004  $  if(X1&0x8)y=@0120;else y=@0119;
  $  012.位置灯                         $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  013.近光灯                         $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  014.远光灯                         $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  015.左转向灯                       $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  016.右转向灯                       $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x8)y=@0120;else y=@0119;
  $  017.后雾灯                         $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x2)y=@0120;else y=@0119;
  $  018.后挡板左后转向灯               $    $  -     $    $  ANS002.BYTE004  $  if(X1&0x80)y=@0120;else y=@0119;
  $  019.后挡板右后转向灯               $    $  -     $    $  ANS002.BYTE004  $  if(X1&0x40)y=@0120;else y=@0119;
  $  020.D-柱左后转向灯                 $    $  -     $    $  ANS002.BYTE004  $  if(X1&0x20)y=@0120;else y=@0119;
  $  021.D-柱右后转向灯                 $    $  -     $    $  ANS002.BYTE004  $  if(X1&0x10)y=@0120;else y=@0119;
  $  022.位置灯改变控制                 $    $  -     $    $  ANS002.BYTE004  $  if(X1&0x8)y=@0120;else y=@0119;
  $  023.行李箱灯                       $    $  -     $    $  ANS002.BYTE004  $  if(X1&0x4)y=@0120;else y=@0119;
  $  024.immo背后灯                     $    $  -     $    $  ANS002.BYTE004  $  if(X1&0x2)y=@0120;else y=@0119;
  $  025.门锁状态灯                     $    $  -     $    $  ANS002.BYTE004  $  if(X1&0x1)y=@0120;else y=@0119;
  $  026.左前雾灯                       $    $  -     $    $  ANS002.BYTE005  $  if(X1&0x80)y=@0120;else y=@0119;
  $  027.右前雾灯                       $    $  -     $    $  ANS002.BYTE005  $  if(X1&0x40)y=@0120;else y=@0119;
  $  028.后视镜标识灯                   $    $  -     $    $  ANS002.BYTE005  $  if(X1&0x20)y=@0120;else y=@0119;
  $  029.日间行车灯                     $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  030.前转向灯打开反馈               $    $  -     $    $  ANS004.BYTE003  $  if(X1&0x80)y=@0116;else y=@0115;
  $  031.后转向灯打开反馈               $    $  -     $    $  ANS004.BYTE003  $  if(X1&0x40)y=@0116;else y=@0115;
  $  032.远程控制输出                   $    $  -     $    $  ANS005.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  033.遥控降窗设置状态               $    $  -     $    $  ANS006.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  034.遥控升窗设置状态               $    $  -     $    $  ANS006.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  035.自动感应车速落锁设置状态       $    $  -     $    $  ANS006.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  036.变道闪光设置状态               $    $  -     $    $  ANS006.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  037.外后视镜自动折叠设置状态       $    $  -     $    $  ANS006.BYTE003  $  if(X1&0x8)y=@0120;else y=@0119;
  $  038.雨刮维修位置状态               $    $  -     $    $  ANS006.BYTE003  $  if(X1&0x4)y=@0120;else y=@0119;
  $  039.电动窗电源开关                 $    $  -     $    $  ANS007.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;

 $ 01.刮水器、洗涤器数据

	$	REQ000:740 03 22 A0 02 00 00 00 00          $
	$	REQ001:740 03 22 A0 06 00 00 00 00          $

  $  000.前雨刮间歇调节开关       $    $  -     $    $  ANS000.BYTE007  $  00:保留		01:延迟1		02:延迟2		03:延迟3		04:延迟4		05:延迟5		06:延迟6		07:延迟7		其他:-
  $  001.前雨刮高速开关           $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  002.前雨刮低速开关           $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  003.前雨刮间歇开关           $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  004.前雨刮停止开关           $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  005.前洗涤开关               $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x1)y=@0120;else y=@0119;
  $  006.后雨刮开关               $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x80)y=@0120;else y=@0119;
  $  007.后洗涤开关               $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x40)y=@0120;else y=@0119;
  $  008.前雨刮高速电机           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  009.前雨刮低速电机           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  010.前洗涤电机               $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  011.后雨刮电机               $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  012.后洗涤电机               $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x8)y=@0120;else y=@0119;

 $ 02.门碰与锁状态数据

	$	REQ000:740 03 22 A0 03 00 00 00 00          $
	$	REQ001:740 03 22 A0 09 00 00 00 00          $

  $  000.驾驶员门碰开关           $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  001.右前门碰开关             $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x40)y=@0120;else y=@0119;
  $  002.左后门碰开关             $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  003.右后门碰开关             $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  004.后备箱门碰开关           $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x8)y=@0120;else y=@0119;
  $  005.电动尾门开关             $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x4)y=@0120;else y=@0119;
  $  006.中控未锁定开关           $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x80)y=@0120;else y=@0119;
  $  007.中控锁定开关             $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x40)y=@0120;else y=@0119;
  $  008.驾驶员锁反馈开关         $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x20)y=@0120;else y=@0119;
  $  009.后备箱解锁开关           $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x10)y=@0120;else y=@0119;
  $  010.副驾驶员锁反馈开关       $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x8)y=@0120;else y=@0119;
  $  011.左后门锁反馈开关         $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x4)y=@0120;else y=@0119;
  $  012.右后门锁反馈开关         $    $  -     $    $  ANS000.BYTE004  $  if(X1&0x2)y=@0120;else y=@0119;
  $  013.行李箱解锁电机           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x20)y=@0120;else y=@0119;
  $  014.左前门锁电机             $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x10)y=@0120;else y=@0119;
  $  015.左前门解锁电机           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x8)y=@0120;else y=@0119;
  $  016.其他三门锁电机           $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x4)y=@0120;else y=@0119;
  $  017.其他三门解锁电机         $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x2)y=@0120;else y=@0119;

 $ 03.钥匙状态数据

	$	REQ000:740 03 22 A0 01 00 00 00 00          $

  $  000.钥匙插入状态(仅immo)       $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0122;else y=@0121;
  $  001.ACC位置                    $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x40)y=@0116;else y=@0115;
  $  002.ON位置                     $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0116;else y=@0115;
  $  003.START位置                  $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x10)y=@0116;else y=@0115;

 $ 04.IMMO相关数据（非PEPS车型支持）

	$	REQ000:740 03 22 C8 07 00 00 00 00          $

  $  000.已匹配钥匙       $    $  -     $    $  ANS000.BYTE007  $  00:0		01:1		02:2		03:3		04:4		其他:-
  $  001.IMMO锁定         $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0116;else y=@0115;
  $  002.PIN写入          $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x40)y=@0116;else y=@0115;
  $  003.SK写入           $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x20)y=@0116;else y=@0115;
  $  004.VIN写入          $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x10)y=@0116;else y=@0115;

 $ 05.其他

	$	REQ000:740 03 22 A0 08 00 00 00 00          $
	$	REQ001:740 03 22 A0 0A 00 00 00 00          $
	$	REQ002:740 03 22 A0 0B 00 00 00 00          $
	$	REQ003:740 03 22 C1 01 00 00 00 00          $

  $  000.Horn蜂鸣器                              $    $  -     $    $  ANS000.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  001.节电控制                                $    $  -     $    $  ANS001.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  002.后除霜                                  $    $  -     $    $  ANS002.BYTE003  $  if(X1&0x80)y=@0120;else y=@0119;
  $  003.在线配置状态                            $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x80)y=@0130;else y=@0129;
  $  004.转向辅助照明功能状态                    $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x40)y=@0132;else y=@0131;
  $  005.自动大灯状态                            $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x20)y=@0132;else y=@0131;
  $  006.自动雨刮状态                            $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x10)y=@0132;else y=@0131;
  $  007.前转向开路反馈状态(关联LED前大灯)       $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x8)y=@0132;else y=@0131;
  $  008.车辆设置功能状态                        $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x4)y=@0132;else y=@0131;
  $  009.语音控制功能状态                        $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x2)y=@0132;else y=@0131;
  $  010.电动尾门状态                            $    $  -     $    $  ANS003.BYTE003  $  if(X1&0x1)y=@0132;else y=@0131;
  $  011.远程控制状态                            $    $  -     $    $  ANS003.BYTE004  $  if(X1&0x80)y=@0132;else y=@0131;


