$~#7$~#7$~10400
;******************************************************************************************************************************************************

车型代号:N300
车型:五菱荣光S
排量:1.5L
年份:2013
模块名缩写:ECM
模块名:发动机控制模块
供应商:联电
诊断代码:N310_B15_2013_ECM_K
ECU地址:11
初始化方式:快速初始化
初始化头字节格式:8X
其他服务头字节格式:80

;******************************************************************************************************************************************************
激活命令

	$~	REQ000: 81 11 F1 81 04          $~           11 F1 81 04

;******************************************************************************************************************************************************
退出命令

	$@	REQ000: 81 11 F1 82 05          $@

;******************************************************************************************************************************************************
空闲命令

	$!	REQ000: 81 11 F1 3E C1          $!

;******************************************************************************************************************************************************
$#读当前故障码

	$#	REQ000: 84 11 F1 18 00 FF 00 9D          $#

				规律:帧长决定故障码个数，$#BYTE02$#开始表示故障码，每$#3$#个字节表示一个故障码,前$#2$#个字节表示码号,后1个字节表示状态位。

				状态位-->当前:0x60,历史:0x20,间歇:-

		$*$*DTC/WLRGSDTCS


;******************************************************************************************************************************************************
$#读历史故障码

	$#	REQ000: 84 11 F1 18 00 FF 00 9D          $#

				规律:帧长决定故障码个数，$#BYTE02$#开始表示故障码，每$#3$#个字节表示一个故障码,前$#2$#个字节表示码号,后1个字节表示状态位。

				状态位-->当前:0x60,历史:0x20,间歇:-

;******************************************************************************************************************************************************
清除故障码

	$$	REQ000: 83 11 F1 14 FF 00 98          $$

;******************************************************************************************************************************************************
模块信息

	$%	REQ000: 82 11 F1 21 80 25          $%

  $%  000:车辆识别码(VIN码）       $%    $%  ANS000.BYTE002  $%  17个字节的ASCII显示
  $%  001:零件号Alpha码            $%    $%  ANS000.BYTE019  $%  11个字节的ASCII显示
  $%  002:ECU基本硬件号            $%    $%  ANS000.BYTE030  $%  19个字节的ASCII显示
  $%  003:ECU软件号                $%    $%  ANS000.BYTE049  $%  10个字节的ASCII显示

;******************************************************************************************************************************************************
数据流

	$	REQ000: 82 11 F1 21 01 A6          $

  $  000.电瓶电压                                 $    $  V           $    $  ANS000.BYTE033  $  X*0.073675
  $  001.发动机转速                               $    $  r/min       $    $  ANS000.BYTE034  $  XY* 0.25
  $  002.车速                                     $    $  km/h        $    $  ANS000.BYTE038  $  X
  $  003.车辆加速度                               $    $  m/s^2       $    $  ANS000.BYTE039  $  [00-7F]:X*0.217+0		[80-FF]:(X-255)*0.217+0
  $  004.发动机冷却温度传感器电压                 $    $  v           $    $  ANS000.BYTE040  $  X*0.01953
  $  005.发动机冷却液温度                         $    $  ℃          $    $  ANS000.BYTE041  $  X*1-40
  $  006.进气温度传感器电压                       $    $  V           $    $  ANS000.BYTE042  $  X*0.01953
  $  007.进气温度                                 $    $  ℃          $    $  ANS000.BYTE043  $  X*1-40
  $  008.环境温度                                 $    $  V           $    $  ANS000.BYTE044  $  X*1-40
  $  009.空调蒸发器温度传感器电压                 $    $  ℃          $    $  ANS000.BYTE045  $  X*0.01953
  $  010.空调蒸发器温度                           $    $  ℃          $    $  ANS000.BYTE046  $  X*0.750188-48.012
  $  011.发动机燃油温度                           $    $  ℃          $    $  ANS000.BYTE047  $  [00-7F]:X*1-60		[80-FF]:(X-255)*1-60
  $  012.进气歧管压力传感器电压                   $    $  V           $    $  ANS000.BYTE053  $  X*0.01953
  $  013.进气歧管压力                             $    $  KPA         $    $  ANS000.BYTE054  $  X
  $  014.前氧传感器电压                           $    $  V           $    $  ANS000.BYTE083  $  X*0.01953
  $  015.后氧传感器电压                           $    $  V           $    $  ANS000.BYTE084  $  X*0.01953
  $  016.加速踏板传感器1电压                      $    $  V           $    $  ANS000.BYTE055  $  X*0.01953
  $  017.加速踏板传感器2电压                      $    $  V           $    $  ANS000.BYTE056  $  X*0.01953
  $  018.加速踏板开度                             $    $  %           $    $  ANS000.BYTE057  $  X*0.392157
  $  019.节气门位置传感器1电压                    $    $  V           $    $  ANS000.BYTE058  $  X*0.01953
  $  020.节气门位置传感器2电压                    $    $  V           $    $  ANS000.BYTE059  $  X*0.01953
  $  021.节气门位置                               $    $  %           $    $  ANS000.BYTE061  $  X*0.392157
  $  022.发动机相对负荷                           $    $  %           $    $  ANS000.BYTE093  $  X*0.750188
  $  023.碳罐控制阀占空比                         $    $  %           $    $  ANS000.BYTE096  $  X*0.390625
  $  024.行驶里程数                               $    $  KM          $    $  ANS000.BYTE100  $  X1X2X3X4
  $  025.行驶时间                                 $    $  min         $    $  ANS000.BYTE104  $  X1X2X3X4
  $  026.空气流量                                 $    $  kg/h        $    $  ANS000.BYTE048  $  XY*0.1
  $  027.期望节气门位置                           $    $  %           $    $  ANS000.BYTE060  $  X*0.392157
  $  028.节气门发电机脉宽控制信号                 $    $  %           $    $  ANS000.BYTE062  $  X*0.39
  $  029.喷油脉宽                                 $    $  ms          $    $  ANS000.BYTE066  $  X*0.1
  $  030.点火线圈充电时间                         $    $  ms          $    $  ANS000.BYTE067  $  X*0.1
  $  031.点火提前角                               $    $  Grad kw     $    $  ANS000.BYTE068  $  X*0.5-64
  $  032.燃油消耗                                 $    $  L/H         $    $  ANS000.BYTE069  $  XY*0.0021458
  $  033.爆震传感器1信号                          $    $  V           $    $  ANS000.BYTE071  $  XY*0.0195313
  $  034.爆震传感器2信号                          $    $  V           $    $  ANS000.BYTE073  $  XY*0.0195313
  $  035.1缸点火角推迟                            $    $  Grad kw     $    $  ANS000.BYTE075  $  [00-7F]:X*(-0.75)+0		[80-FF]:(X-255)*(-0.75)+0
  $  036.2缸点火角推迟                            $    $  Grad kw     $    $  ANS000.BYTE076  $  [00-7F]:X*(-0.75)+0		[80-FF]:(X-255)*(-0.75)+0
  $  037.3缸点火角推迟                            $    $  Grad kw     $    $  ANS000.BYTE077  $  [00-7F]:X*(-0.75)+0		[80-FF]:(X-255)*(-0.75)+0
  $  038.4缸点火角推迟                            $    $  Grad kw     $    $  ANS000.BYTE078  $  [00-7F]:X*(-0.75)+0		[80-FF]:(X-255)*(-0.75)+0
  $  039.氧传感器短期燃油修正                     $    $  -           $    $  ANS000.BYTE081  $  X*0.0078125
  $  040.氧传感器长期燃油修正值                   $    $  -           $    $  ANS000.BYTE087  $  X*0.0078125
  $  041.长期修正：混合气控制                     $    $  -           $    $  ANS000.BYTE088  $  XY*0.046875
  $  042.混合气自学习的附加修正；混合气控制       $    $  %           $    $  ANS000.BYTE090  $  [0000-7FFF]:XY*0.046882+0		[8000-FFFF]:(XY-65535)*0.046882+0
  $  043.进气阀处模型温度                         $    $  ℃          $    $  ANS000.BYTE092  $  X*0.75-48
  $  044.怠速扭矩控制自学习值                     $    $  %           $    $  ANS000.BYTE094  $  [00-7F]:X*0.78125+0		[80-FF]:(X-255)*0.78125+0
  $  045.碳罐控制相对油量                         $    $  %           $    $  ANS000.BYTE097  $  X*12.0048
  $  046.碳罐净化率                               $    $  -           $    $  ANS000.BYTE098  $  X*0.001953
  $  047.油位                                     $    $  -           $    $  ANS000.BYTE124  $  XY*0.1
  $  048.风扇1                                    $    $  -           $    $  ANS000.BYTE021  $  if(X1&0x1)y=@0120;else y=@0119;
  $  049.风扇2                                    $    $  -           $    $  ANS000.BYTE021  $  if(X1&0x2)y=@0120;else y=@0119;
  $  050.主继电器                                 $    $  -           $    $  ANS000.BYTE022  $  if(X1&0x2)y=@0120;else y=@0119;
  $  051.燃油泵继电器                             $    $  -           $    $  ANS000.BYTE022  $  if(X1&0x4)y=@0120;else y=@0119;
  $  052.发动机                                   $    $  -           $    $  ANS000.BYTE022  $  if(X1&0x8)y=@0118;else y=@0117;
  $  053.怠速状态                                 $    $  -           $    $  ANS000.BYTE022  $  if(X1&0x8)y=@0194;else y=@0193;
  $  054.发动机运行温度                           $    $  -           $    $  ANS000.BYTE022  $  if(X1&0x40)y=@0194;else y=@0193;
  $  055.节气门叶片处于怠速位置                   $    $  -           $    $  ANS000.BYTE023  $  if(X1&0x1)y=@0196;else y=@0195;
  $  056.节气门叶片处于全开状态                   $    $  -           $    $  ANS000.BYTE023  $  if(X1&0x2)y=@0196;else y=@0195;
  $  057.处于闭环控制状态                         $    $  -           $    $  ANS000.BYTE024  $  if(X1&0x1)y=@0196;else y=@0195;
  $  058.废弃再循环                               $    $  -           $    $  ANS000.BYTE024  $  if(X1&0x2)y=@0087;else y=@0192;
  $  059.碳罐阀                                   $    $  -           $    $  ANS000.BYTE024  $  if(X1&0x4)y=@0087;else y=@0192;
  $  060.前氧传感器加热                           $    $  -           $    $  ANS000.BYTE025  $  if(X1&0x10)y=@0087;else y=@0192;
  $  061.后氧传感器加热                           $    $  -           $    $  ANS000.BYTE025  $  if(X1&0x20)y=@0087;else y=@0192;
  $  062.故障指示灯                               $    $  -           $    $  ANS000.BYTE027  $  if(X1&0x1)y=@0087;else y=@0192;
  $  063.故障指示灯                               $    $  -           $    $  ANS000.BYTE027  $  if(X1&0x2)y=@0236;else y=@0235;
  $  064.燃油警告灯                               $    $  -           $    $  ANS000.BYTE123  $  if(X1&0x80)y=@0087;else y=@0192;

