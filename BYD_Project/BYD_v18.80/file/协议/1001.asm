
    车型ID：1001

    模拟：协议模拟-->1001

;******************************************************************************************************************************************************

    通讯线: $~07$~07$~10400

$JSON{"P4":5}

<VCI>
	<ACTIVE_ADDNODE type="0" num="0">
	<param type="string" value="1"/>
	<param type="string" value="3,11,1,12,8,2,15,6,9,13"/>
	</ACTIVE_ADDNODE>
</VCI>

进入命令:

  $~  REQ000:81 11 F1 81 04       $~  ANS000:81 11 F1 81 04

空闲命令:

  $!  REQ000:81 11 F1 3E C1       $!  ANS000:81 11 F1 3E C1

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:84 11 F1 18 00 FF 00 9D       $#  ANS000:84 11 F1 18 00 FF 00 9D

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE04 控制故障码个数，从$#ANS000.BYTE5$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/feff0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:83 11 F1 14 FF 00 98       $$  ANS000:83 11 F1 14 FF 00 98

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:82 11 F1 1A 92 30       $%  ANS000:82 11 F1 1A 92 30
  $%  REQ001:82 11 F1 1A 94 32       $%  ANS001:82 11 F1 1A 94 32
  $%  REQ002:82 11 F1 1A 95 33       $%  ANS002:82 11 F1 1A 95 33
  $%  REQ003:82 11 F1 1A 96 34       $%  ANS003:82 11 F1 1A 96 34
  $%  REQ004:82 11 F1 1A 97 35       $%  ANS004:82 11 F1 1A 97 35
  $%  REQ005:82 11 F1 1A 99 37       $%  ANS005:82 11 F1 1A 99 37
  $%  REQ006:82 11 F1 1A 9A 38       $%  ANS006:82 11 F1 1A 9A 38
  $%  REQ007:82 11 F1 1A 9B 39       $%  ANS007:82 11 F1 1A 9B 39
  $%  REQ008:82 11 F1 1A 9C 3A       $%  ANS008:82 11 F1 1A 9C 3A
  $%  REQ009:82 11 F1 1A 9D 3B       $%  ANS009:82 11 F1 1A 9D 3B
  $%  REQ010:82 11 F1 1A 9F 3D       $%  ANS010:82 11 F1 1A 9F 3D
  $%  REQ011:82 11 F1 1A 90 2E       $%  ANS011:82 11 F1 1A 90 2E

  $%  000:硬件编号:                    $%    $%  ANS000.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  001:软件编号:                    $%    $%  ANS001.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:软件版本号:                  $%    $%  ANS002.BYTE005  $%  ASCII(x1,x2);
  $%  003:定型编号:                    $%    $%  ANS003.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:系统名称或发动机类型:        $%    $%  ANS004.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  005:编程日期:                    $%    $%  ANS005.BYTE005  $%  y=SPRINTF([%02X %02X %02X %02X],x1,x2,x3,x4);
  $%  006:ECU诊断数据标识:             $%    $%  ANS006.BYTE005  $%  HEX(x1,x2);
  $%  007:ECU代码版本号:               $%    $%  ANS007.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  008:ECU ROM版本号:               $%    $%  ANS008.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:CAN数据字典版本号:           $%    $%  ANS009.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  010:零部件编号:                  $%    $%  ANS010.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:VIN:                         $%    $%  ANS011.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

动作测试:

$^ 00.发动机故障(MIL)指示灯控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00: 84 11 F1 30 10 07 FF 00     $^

$^BUTTON:关闭 
$^REQ00: 84 11 F1 30 10 07 00 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 10 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.燃油泵控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00: 84 11 F1 30 12 07 FF 00     $^

$^BUTTON:关闭 
$^REQ00: 84 11 F1 30 12 07 00 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 12 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.冷却风扇#1(低速风扇)控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00: 84 11 F1 30 13 07 FF 00     $^

$^BUTTON:关闭 
$^REQ00: 84 11 F1 30 13 07 00 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 13 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.冷却风扇#2(高速风扇)控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00: 84 11 F1 30 14 07 FF 00     $^

$^BUTTON:关闭 
$^REQ00: 84 11 F1 30 14 07 00 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 14 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.空调离合器控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00: 84 11 F1 30 15 07 FF 00     $^

$^BUTTON:关闭 
$^REQ00: 84 11 F1 30 15 07 00 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 15 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.车辆立即维修(SVS)指示灯控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00: 84 11 F1 30 18 07 FF 00     $^

$^BUTTON:关闭 
$^REQ00: 84 11 F1 30 18 07 00 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 18 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.禁用燃油喷射控制 
$^TYPE0
$^BUTTON:禁止#1缸喷射 
$^REQ00: 85 11 F1 30 20 07 00 01 00     $^
$^REQ01: 85 11 F1 30 20 07 FF 01 00     $^

$^BUTTON:禁止#2缸喷射 
$^REQ00: 85 11 F1 30 20 07 00 02 00     $^
$^REQ01: 85 11 F1 30 20 07 FF 02 00     $^

$^BUTTON:禁止#3缸喷射 
$^REQ00: 85 11 F1 30 20 07 00 03 00     $^
$^REQ01: 85 11 F1 30 20 07 FF 03 00     $^

$^BUTTON:禁止#4缸喷射 
$^REQ00: 85 11 F1 30 20 07 00 04 00     $^
$^REQ01: 85 11 F1 30 20 07 FF 04 00     $^

$^BUTTON:启动#1缸喷射 
$^REQ00: 85 11 F1 30 20 07 FF 01 00     $^

$^BUTTON:启动#2缸喷射 
$^REQ00: 85 11 F1 30 20 07 FF 02 00     $^

$^BUTTON:启动#3缸喷射 
$^REQ00: 85 11 F1 30 20 07 FF 03 00     $^

$^BUTTON:启动#4缸喷射 
$^REQ00: 85 11 F1 30 20 07 FF 04 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 20 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.怠速转速控制(短期调整) 
$^IN  REQ00: 84 11 F1 30 24 07 64 21     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:84 11 F1 30 24 07 XX 21     $^

$^BUTTON:退出
$^REQ00: 83 11 F1 30 24 00 B5     $^

$^DSP:怠速转速控制(短期调整)->rpm
$^TIP:请输入怠速转速控制值,范围0~2500(转/分):  
$^IN_F:y=(x1*256+x2)/10;
$^RANGE:0,2550
;----------------------------------------------------------------------------------------------------

$^ 08.怠速转速控制(长期调整) 
$^IN  REQ00: 84 11 F1 30 24 08 FF 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:84 11 F1 30 24 08 XX 00     $^

$^BUTTON:退出
$^REQ00: 83 11 F1 30 24 00 B5     $^

$^DSP:怠速转速控制(长期调整)->rpm
$^TIP:请输入怠速转速控制值,范围800~2500(转/分):  
$^IN_F:y=((x1*256+x2)-780)/10;
$^RANGE:800,2500
;----------------------------------------------------------------------------------------------------

$^ 09.怠速转速控制(冻结当前状态) 
$^IN  REQ00: 84 11 F1 30 24 05 FF 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:84 11 F1 30 24 05 XX 00     $^

$^BUTTON:退出
$^REQ00: 83 11 F1 30 24 00 B5     $^

$^DSP:怠速转速控制(冻结当前状态)->rpm
$^TIP:请输入怠速转速控制值,范围800~2500(转/分):  
$^IN_F:y=((x1*256+x2)-780)/10;
$^RANGE:800,2500
;----------------------------------------------------------------------------------------------------

$^ 10.步进电机执行器控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00: 84 11 F1 30 38 07 FF 00     $^

$^BUTTON:关闭 
$^REQ00: 84 11 F1 30 38 07 00 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 38 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 11.写AC关联配置 
$^TYPE0
$^BUTTON:不关联 
$^REQ00: 83 11 F1 3B B2 00 00     $^

$^BUTTON:关联 
$^REQ00: 83 11 F1 3B B2 01 00     $^

;----------------------------------------------------------------------------------------------------

$^ 12.步进电机位置控制 
$^TYPE0
$^BUTTON:打开 
$^REQ00: 84 11 F1 30 37 07 FF 00     $^

$^BUTTON:关闭 
$^REQ00: 84 11 F1 30 37 07 00 00     $^

$^BUTTON:退出 
$^REQ00: 83 11 F1 30 37 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 13.碳罐控制阀控制 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:84 11 F1 30 11 07 XX 00     $^

$^BUTTON:退出
$^REQ00: 83 11 F1 30 11 00 00     $^

$^DSP:碳罐控制阀控制->%
$^TIP:请输入测试值(范围:0~100) 
$^IN_F:y=x1;
$^RANGE:0,100
;----------------------------------------------------------------------------------------------------

