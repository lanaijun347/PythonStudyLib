$~#7$~#7$~10400
;******************************************************************************************************************************************************

车型代号:N300
车型:五菱荣光
排量:1.5L
年份:2012
模块名缩写:ECM
模块名:发动机控制模块
供应商:大陆
诊断代码:N300_B15_2012_ECM_K
ECU地址:11
初始化方式:快速初始化
初始化头字节格式:80
其他服务头字节格式:8X

;******************************************************************************************************************************************************
激活命令

	$~	REQ000: 80 11 F1 01 81 04          $~           11 F1 01 81 04

;******************************************************************************************************************************************************
退出命令

	$@	REQ000: 80 11 F1 01 82 05          $@

;******************************************************************************************************************************************************
空闲命令

	$!	REQ000: 80 11 F1 01 3E C1          $!

;******************************************************************************************************************************************************
$#读当前故障码

	$#	REQ000: 80 11 F1 04 18 00 FF 00 9D          $#

				规律:帧长决定故障码个数，$#BYTE02$#开始表示故障码，每$#2$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

		$*$*DTC/WLRGDTCS


;******************************************************************************************************************************************************
$#读历史故障码

	$#	REQ000: 80 11 F1 04 18 00 FF 00 9D          $#

				规律:帧长决定故障码个数，$#BYTE02$#开始表示故障码，每$#2$#个字节表示一个故障码,前$#2$#个字节表示码号,无状态位。

;******************************************************************************************************************************************************
清除故障码

	$$	REQ000: 80 11 F1 03 14 FF 00 98          $$

;******************************************************************************************************************************************************
模块信息

	$%	REQ000: 80 11 F1 02 21 80 25          $%

  $%  000:ECU 序列号           $%    $%  ANS000.BYTE002  $%  12个字节的ASCII显示
  $%  001:ECU 硬件号           $%    $%  ANS000.BYTE014  $%  16个字节的ASCII显示
  $%  002:ECU 出厂码           $%    $%  ANS000.BYTE030  $%  04个字节的ASCII显示
  $%  003:引导程序版本号       $%    $%  ANS000.BYTE034  $%  16个字节的ASCII显示
  $%  004:适用软件版本号       $%    $%  ANS000.BYTE050  $%  16个字节的ASCII显示
  $%  005:标定版本号           $%    $%  ANS000.BYTE066  $%  16个字节的ASCII显示
  $%  006:VIN码                $%    $%  ANS000.BYTE082  $%  17个字节的ASCII显示

;******************************************************************************************************************************************************
数据流

	$	REQ000: 80 11 F1 02 21 01 A6          $

  $  000.节气门位置传感器1电压             $    $  V           $    $  ANS000.BYTE002  $  XY*0.0001526
  $  001.节气门位置传感器2电压             $    $  V           $    $  ANS000.BYTE004  $  XY*0.0001526
  $  002.电子油门踏板位置传感器1电压       $    $  V           $    $  ANS000.BYTE006  $  XY*0.0048828
  $  003.电子油门踏板位置传感器2电压       $    $  V           $    $  ANS000.BYTE008  $  XY*0.0048828
  $  004.发动机冷却液温度电压              $    $  V           $    $  ANS000.BYTE012  $  XY*0.00015258
  $  005.进气温度传感器电压值              $    $  V           $    $  ANS000.BYTE014  $  XY*0.00015258
  $  006.钥匙上电后的电瓶电压              $    $  V           $    $  ANS000.BYTE022  $  XY*0.0006256
  $  007.节气门开度                        $    $  TPS         $    $  ANS000.BYTE038  $  X*0.4668254
  $  008.电子油门开度                      $    $  %           $    $  ANS000.BYTE039  $  XY*0.0976562
  $  009.发动机冷却液温度                  $    $  ℃          $    $  ANS000.BYTE041  $  X*0.75-48
  $  010.进气温度                          $    $  ℃          $    $  ANS000.BYTE043  $  X*0.75-48
  $  011.环境压力                          $    $  hPA         $    $  ANS000.BYTE044  $  XY*0.08291752
  $  012.进气歧管压力                      $    $  hPA         $    $  ANS000.BYTE046  $  XY*0.08291752
  $  013.节气门压力                        $    $  hPA         $    $  ANS000.BYTE048  $  XY*0.08291752
  $  014.电瓶电压                          $    $  V           $    $  ANS000.BYTE050  $  X*0.1015625
  $  015.前氧传感器电压                    $    $  V           $    $  ANS000.BYTE051  $  XY*0.0048828
  $  016.后氧传感器电压                    $    $  V           $    $  ANS000.BYTE053  $  XY*0.0048828
  $  017.爆震控制信号1                     $    $  V           $    $  ANS000.BYTE062  $  XY*0.0000763
  $  018.爆震控制信号2                     $    $  V           $    $  ANS000.BYTE064  $  XY*0.0000763
  $  019.爆震控制信号3                     $    $  V           $    $  ANS000.BYTE066  $  XY*0.0000763
  $  020.爆震控制信号4                     $    $  V           $    $  ANS000.BYTE068  $  XY*0.0000763
  $  021.车速                              $    $  Km/h        $    $  ANS000.BYTE070  $  X
  $  022.发电机脉冲                        $    $  %           $    $  ANS000.BYTE071  $  X*0.390625
  $  023.发动机转速                        $    $  rpm/min     $    $  ANS000.BYTE072  $  XY
  $  024.前氧传感器加热脉宽                $    $  %           $    $  ANS000.BYTE077  $  X*0.390625
  $  025.后氧传感器加热脉宽                $    $  %           $    $  ANS000.BYTE078  $  X*0.390625
  $  026.1缸喷油时间                       $    $  ms          $    $  ANS000.BYTE097  $  XY*0.004
  $  027.2缸喷油时间                       $    $  ms          $    $  ANS000.BYTE099  $  XY*0.004
  $  028.3缸喷油时间                       $    $  ms          $    $  ANS000.BYTE101  $  XY*0.004
  $  029.4缸喷油时间                       $    $  ms          $    $  ANS000.BYTE103  $  XY*0.004
  $  030.蒸发器温度                        $    $  ℃          $    $  ANS000.BYTE116  $  X*0.75-48
  $  031.空调压缩机                        $    $  -           $    $  ANS000.BYTE075  $  if(X1&0x1)y=@0225;else y=@0040;
  $  032.故障指示灯                        $    $  -           $    $  ANS000.BYTE076  $  if(X1&0x2)y=@0120;else y=@0119;

