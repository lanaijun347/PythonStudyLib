$~#7$~#7$~10400
<VCI>
	<ACTIVE_ADDNODE type="0" num="0">
		<param type="string" value="1,1"/> 
		<param type="string" value="13"/>
	</ACTIVE_ADDNODE>
</VCI>

车型代号:CN100
车型:五菱宏光
排量:1.2
年份:2010
模块名缩写:CN100
模块名:SDM
供应商:奥托立夫
诊断代码:CN100_1.2_2012_SDM_K
ECU地址:2C
初始化方式:快速初始化
初始化头字节格式:8X
其他服务头字节格式:8X

;******************************************************************************************************************************************************
激活命令

	$~	REQ000: 81 2C F1 81 1F          $~           2C F1 81 1F

;******************************************************************************************************************************************************
退出命令

	$@	REQ000: 81 2C F1 82 20          $@

;******************************************************************************************************************************************************
空闲命令

	$!	REQ000: 81 2C F1 3E DC          $!

;******************************************************************************************************************************************************
$#读当前故障码

	$#	REQ000: 83 2C F1 17 FF 00 B6          $#

				规律:帧长决定故障码个数，$#BYTE01$#开始表示故障码，每$#2$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/WLHGDTCS


;******************************************************************************************************************************************************
清除故障码

	$$	REQ000: 83 2C F1 14 FF 00 B3          $$

;******************************************************************************************************************************************************
模块信息

	$%	REQ000: 82 2C F1 21 80 40          $%
	$%	REQ001: 82 2C F1 21 8B 4B          $%

  $%  000:SDM 模块代码             $%    $%  ANS000.BYTE002  $%  05个字节的ASCII显示
  $%  001:供应商编号               $%    $%  ANS000.BYTE007  $%  X
  $%  002:供应商代码：             $%    $%  ANS000.BYTE008  $%  03个字节的ASCII显示
  $%  003:硬件编号：               $%    $%  ANS000.BYTE011  $%  XYZ
  $%  004:PCBA最大序号             $%    $%  ANS000.BYTE014  $%  X
  $%  005:PCBA最小序号             $%    $%  ANS001.BYTE015  $%  X
  $%  006:软件最大版本号           $%    $%  ANS000.BYTE016  $%  X
  $%  007:软件最小版本号           $%    $%  ANS000.BYTE017  $%  X
  $%  008:序列号                   $%    $%  ANS000.BYTE018  $%  X
  $%  009:版本号                   $%    $%  ANS000.BYTE019  $%  X
  $%  010:标定号（生产之前）       $%    $%  ANS000.BYTE020  $%  XY
  $%  011:车辆类型                 $%    $%  ANS000.BYTE022  $%  X
  $%  012:可以使用IO测试           $%    $%  ANS000.BYTE023  $%  X
  $%  013:ECU硬件版本              $%    $%  ANS000.BYTE024  $%  X
  $%  014:ECU软件版本              $%    $%  ANS000.BYTE025  $%  X

;******************************************************************************************************************************************************
数据流

	$	REQ000: 82 2C F1 21 B0 70          $
	$	REQ001: 82 2C F1 21 C0 80          $
	$	REQ002: 82 2C F1 21 C1 81          $
	$	REQ003: 82 2C F1 21 85 45          $
	$	REQ004: 82 2C F1 21 88 48          $
	$	REQ005: 82 2C F1 21 89 49          $
	$	REQ006: 82 2C F1 21 8A 4A          $

  $  000.车辆生产日期-年                            $    $  20xx年     $    $  ANS000.BYTE002  $  01个字节的ASCII显示
  $  001.车辆生产日期-月                            $    $  xx月       $    $  ANS000.BYTE003  $  01个字节的ASCII显示
  $  002.车辆生产日期-日                            $    $  xx日       $    $  ANS000.BYTE004  $  01个字节的ASCII显示
  $  003.上次售后服务日期-年                        $    $  21xx年     $    $  ANS001.BYTE002  $  01个字节的ASCII显示
  $  004.上次售后服务日期-月                        $    $  xx月       $    $  ANS001.BYTE003  $  01个字节的ASCII显示
  $  005.上次售后服务日期-日                        $    $  xx日       $    $  ANS001.BYTE004  $  01个字节的ASCII显示
  $  006.制造时间-年                                $    $  年         $    $  ANS002.BYTE002  $  01个字节的ASCII显示
  $  007.制造时间-月                                $    $  月         $    $  ANS002.BYTE003  $  03个字节的ASCII显示
  $  008.系统编号                                   $    $  -          $    $  ANS002.BYTE006  $  05个字节的ASCII显示
  $  009.ROM校验码                                  $    $  -          $    $  ANS002.BYTE011  $  04个字节的ASCII显示
  $  010.总体 EEPROM 保护区校验码                   $    $  -          $    $  ANS002.BYTE015  $  02个字节的ASCII显示
  $  011.引爆 EEPROM 保护区校验码                   $    $  -          $    $  ANS002.BYTE017  $  02个字节的ASCII显示
  $  012.EEPROM版本编号：                           $    $  -          $    $  ANS002.BYTE019  $  02个字节的ASCII显示
  $  013.终端线1-阻抗                               $    $  Ohms       $    $  ANS003.BYTE002  $  X*0.0696
  $  014.终端线2-阻抗                               $    $  Ohms       $    $  ANS003.BYTE003  $  X*0.0696
  $  015.终端线3-阻抗                               $    $  Ohms       $    $  ANS003.BYTE004  $  X*0.0696
  $  016.终端线4-阻抗                               $    $  Ohms       $    $  ANS003.BYTE005  $  X*0.0696
  $  017.终端线9-阻抗                               $    $  Ohms       $    $  ANS003.BYTE010  $  X*0.0696
  $  018.终端线12-阻抗                              $    $  Ohms       $    $  ANS003.BYTE013  $  X*0.0696
  $  019.所有爆管被引爆（yes-25，no-6）             $    $  -          $    $  ANS004.BYTE002  $  X
  $  020.禁止关键字配置（配置-6，不配置-0）         $    $  -          $    $  ANS005.BYTE004  $  X
  $  021.RAM区存储的连续性故障数目                  $    $  -          $    $  ANS006.BYTE002  $  X
  $  022.RAM区存储的间歇性故障数目                  $    $  -          $    $  ANS006.BYTE003  $  X
  $  023.根据引爆来点亮报警灯（25-YES,6-OFF）       $    $  -          $    $  ANS006.BYTE004  $  X
  $  024.根据服务锁止ECU（25-YES,6-OFF）            $    $  -          $    $  ANS006.BYTE005  $  X
  $  025.根据服务配置ECU（25-YES,6-OFF）            $    $  -          $    $  ANS006.BYTE006  $  X
  $  026.故障灯瞬时状态（25-ON,6-OFF）              $    $  -          $    $  ANS006.BYTE007  $  X
  $  027.禁止灯瞬时状态（25-ON,6-OFF）              $    $  -          $    $  ANS006.BYTE008  $  X
  $  028.已记录的引爆次数                           $    $  -          $    $  ANS006.BYTE009  $  X
  $  029.计数器被更改（25-YES,6-OFF）               $    $  -          $    $  ANS006.BYTE010  $  X
  $  030.自检加速（25-ON,6-OFF）                    $    $  -          $    $  ANS006.BYTE011  $  X
  $  031.附属配置状态（25-ON,6-OFF）                $    $  -          $    $  ANS006.BYTE012  $  X
  $  032.前枕引爆不确定（25-ON,6-OFF）              $    $  -          $    $  ANS006.BYTE018  $  X
  $  033.侧枕引爆不确定（25-yes,6-no）              $    $  -          $    $  ANS006.BYTE019  $  X
  $  034.驾驶中安全关闭（25-yes,6-no）              $    $  -          $    $  ANS006.BYTE020  $  X
  $  035.错误计数器复位次数                         $    $  -          $    $  ANS006.BYTE021  $  X

