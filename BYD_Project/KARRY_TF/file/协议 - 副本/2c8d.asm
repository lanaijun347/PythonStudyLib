
    车型ID：2c8d

    模拟：协议模拟-->2c8d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7ED,7EA,75C

进入命令:

  $~  REQ000:7E2 02 10 01 00 00 00 00 00       $~  ANS000:7ED 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E2 02 3E 00 00 00 00 00 00       $!  ANS000:7ED 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读当前故障码
  $#  REQ000:7E2 03 19 02 FF 00 00 00 00       $#  ANS000:7ED 03 19 02 FF 00 00 00 00

		控制公式：
			if((x4&0x09)==0x09)y=(x1<<16)+(x2<<8)+x3;else y=0; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/78000000


  $#  01.读历史故障码
  $#  REQ000:7E2 03 19 02 FF 00 00 00 00       $#  ANS000:7ED 03 19 02 FF 00 00 00 00

		控制公式：
			if((x4&0x09)==0x08)y=(x1<<16)+(x2<<8)+x3;else y=0; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/78000000

<RDTC>
	<FUNCTION type="0" num="0">
		<param type="string" value="9"/>
	</FUNCTION>
	<FUNCTION type="0" num="1">
		<param type="string" value="8"/>
	</FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E2 04 14 FF FF FF 00 00 00       $$  ANS000:7ED 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E2 03 22 F1 87 00 00 00 00       $%  ANS000:7ED 03 22 F1 87 00 00 00 00
  $%  REQ001:7E2 03 22 F1 8A 00 00 00 00       $%  ANS001:7ED 03 22 F1 8A 00 00 00 00
  $%  REQ002:7E2 03 22 F1 91 00 00 00 00       $%  ANS002:7ED 03 22 F1 91 00 00 00 00
  $%  REQ003:7E2 03 22 F1 94 00 00 00 00       $%  ANS003:7ED 03 22 F1 94 00 00 00 00
  $%  REQ004:7E2 03 22 F1 97 00 00 00 00       $%  ANS004:7ED 03 22 F1 97 00 00 00 00
  $%  REQ005:7E2 03 22 F1 90 00 00 00 00       $%  ANS005:7ED 03 22 F1 90 00 00 00 00
  $%  REQ006:7E2 03 22 D0 08 00 00 00 00       $%  ANS006:7ED 03 22 D0 08 00 00 00 00

  $%  000:零件号:                              $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  001:供应商代码:                          $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3);                                  
  $%  002:硬件版本号:                          $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);            
  $%  003:软件版本号:                          $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);            
  $%  004:系统名称或引擎类型数据标识符:        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);            
  $%  005:VIN码:                               $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  006:PIN码:                               $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E2 03 22 D0 09 00 00 00 00       $  ANS000:7ED 03 22 D0 09 00 00 00 00
  $  REQ001:7E2 03 22 01 00 00 00 00 00       $  ANS001:7ED 03 22 01 00 00 00 00 00
  $  REQ002:7E2 03 22 01 05 00 00 00 00       $  ANS002:7ED 03 22 01 05 00 00 00 00
  $  REQ003:7E2 03 22 4C 34 00 00 00 00       $  ANS003:7ED 03 22 4C 34 00 00 00 00
  $  REQ004:7E2 03 22 4C 35 00 00 00 00       $  ANS004:7ED 03 22 4C 35 00 00 00 00
  $  REQ005:7E2 03 22 01 1A 00 00 00 00       $  ANS005:7ED 03 22 01 1A 00 00 00 00
  $  REQ006:7E2 03 22 01 1B 00 00 00 00       $  ANS006:7ED 03 22 01 1B 00 00 00 00
  $  REQ007:7E2 03 22 01 15 00 00 00 00       $  ANS007:7ED 03 22 01 15 00 00 00 00
  $  REQ008:7E2 03 22 01 16 00 00 00 00       $  ANS008:7ED 03 22 01 16 00 00 00 00
  $  REQ009:7E2 03 22 01 19 00 00 00 00       $  ANS009:7ED 03 22 01 19 00 00 00 00
  $  REQ010:7E2 03 22 01 18 00 00 00 00       $  ANS010:7ED 03 22 01 18 00 00 00 00
  $  REQ011:7E2 03 22 01 17 00 00 00 00       $  ANS011:7ED 03 22 01 17 00 00 00 00
  $  REQ012:7E2 03 22 4C 4F 00 00 00 00       $  ANS012:7ED 03 22 4C 4F 00 00 00 00
  $  REQ013:7E2 03 22 4C 4E 00 00 00 00       $  ANS013:7ED 03 22 4C 4E 00 00 00 00
  $  REQ014:7E2 03 22 01 02 00 00 00 00       $  ANS014:7ED 03 22 01 02 00 00 00 00
  $  REQ015:7E2 03 22 4C 4C 00 00 00 00       $  ANS015:7ED 03 22 4C 4C 00 00 00 00
  $  REQ016:7E2 03 22 01 03 00 00 00 00       $  ANS016:7ED 03 22 01 03 00 00 00 00
  $  REQ017:7E2 03 22 01 09 00 00 00 00       $  ANS017:7ED 03 22 01 09 00 00 00 00
  $  REQ018:7E2 03 22 01 08 00 00 00 00       $  ANS018:7ED 03 22 01 08 00 00 00 00
  $  REQ019:7E2 03 22 01 0A 00 00 00 00       $  ANS019:7ED 03 22 01 0A 00 00 00 00
  $  REQ020:7E2 03 22 01 0B 00 00 00 00       $  ANS020:7ED 03 22 01 0B 00 00 00 00
  $  REQ021:7E2 03 22 01 20 00 00 00 00       $  ANS021:7ED 03 22 01 20 00 00 00 00
  $  REQ022:7E2 03 22 01 21 00 00 00 00       $  ANS022:7ED 03 22 01 21 00 00 00 00
  $  REQ023:7E2 03 22 01 22 00 00 00 00       $  ANS023:7ED 03 22 01 22 00 00 00 00
  $  REQ024:7E2 03 22 01 23 00 00 00 00       $  ANS024:7ED 03 22 01 23 00 00 00 00
  $  REQ025:7E2 03 22 01 04 00 00 00 00       $  ANS025:7ED 03 22 01 04 00 00 00 00
  $  REQ026:7E2 03 22 01 25 00 00 00 00       $  ANS026:7ED 03 22 01 25 00 00 00 00
  $  REQ027:7E2 03 22 01 26 00 00 00 00       $  ANS027:7ED 03 22 01 26 00 00 00 00
  $  REQ028:7E2 03 22 01 27 00 00 00 00       $  ANS028:7ED 03 22 01 27 00 00 00 00
  $  REQ029:7E2 03 22 01 28 00 00 00 00       $  ANS029:7ED 03 22 01 28 00 00 00 00
  $  REQ030:7E2 03 22 01 29 00 00 00 00       $  ANS030:7ED 03 22 01 29 00 00 00 00
  $  REQ031:7E2 03 22 01 2A 00 00 00 00       $  ANS031:7ED 03 22 01 2A 00 00 00 00
  $  REQ032:7E2 03 22 01 2B 00 00 00 00       $  ANS032:7ED 03 22 01 2B 00 00 00 00
  $  REQ033:7E2 03 22 01 2C 00 00 00 00       $  ANS033:7ED 03 22 01 2C 00 00 00 00
  $  REQ034:7E2 03 22 01 2D 00 00 00 00       $  ANS034:7ED 03 22 01 2D 00 00 00 00
  $  REQ035:7E2 03 22 01 2E 00 00 00 00       $  ANS035:7ED 03 22 01 2E 00 00 00 00
  $  REQ036:7E2 03 22 01 30 00 00 00 00       $  ANS036:7ED 03 22 01 30 00 00 00 00
  $  REQ037:7E2 03 22 01 31 00 00 00 00       $  ANS037:7ED 03 22 01 31 00 00 00 00
  $  REQ038:7E2 03 22 01 33 00 00 00 00       $  ANS038:7ED 03 22 01 33 00 00 00 00
  $  REQ039:7E2 03 22 01 34 00 00 00 00       $  ANS039:7ED 03 22 01 34 00 00 00 00
  $  REQ040:7E2 03 22 01 35 00 00 00 00       $  ANS040:7ED 03 22 01 35 00 00 00 00
  $  REQ041:7E2 03 22 01 36 00 00 00 00       $  ANS041:7ED 03 22 01 36 00 00 00 00
  $  REQ042:7E2 03 22 01 37 00 00 00 00       $  ANS042:7ED 03 22 01 37 00 00 00 00
  $  REQ043:7E2 03 22 01 39 00 00 00 00       $  ANS043:7ED 03 22 01 39 00 00 00 00
  $  REQ044:7E2 03 22 4C 0B 00 00 00 00       $  ANS044:7ED 03 22 4C 0B 00 00 00 00
  $  REQ045:7E2 03 22 4C 20 00 00 00 00       $  ANS045:7ED 03 22 4C 20 00 00 00 00
  $  REQ046:7E2 03 22 4C 1F 00 00 00 00       $  ANS046:7ED 03 22 4C 1F 00 00 00 00
  $  REQ047:7E2 03 22 4C 24 00 00 00 00       $  ANS047:7ED 03 22 4C 24 00 00 00 00
  $  REQ048:7E2 03 22 4C 25 00 00 00 00       $  ANS048:7ED 03 22 4C 25 00 00 00 00
  $  REQ049:7E2 03 22 01 3B 00 00 00 00       $  ANS049:7ED 03 22 01 3B 00 00 00 00
  $  REQ050:7E2 03 22 01 3C 00 00 00 00       $  ANS050:7ED 03 22 01 3C 00 00 00 00
  $  REQ051:7E2 03 22 01 3D 00 00 00 00       $  ANS051:7ED 03 22 01 3D 00 00 00 00
  $  REQ052:7E2 03 22 01 3E 00 00 00 00       $  ANS052:7ED 03 22 01 3E 00 00 00 00
  $  REQ053:7E2 03 22 01 0C 00 00 00 00       $  ANS053:7ED 03 22 01 0C 00 00 00 00
  $  REQ054:7E2 03 22 4D 05 00 00 00 00       $  ANS054:7ED 03 22 4D 05 00 00 00 00
  $  REQ055:7E2 03 22 4D 04 00 00 00 00       $  ANS055:7ED 03 22 4D 04 00 00 00 00
  $  REQ056:7E2 03 22 01 10 00 00 00 00       $  ANS056:7ED 03 22 01 10 00 00 00 00
  $  REQ057:7E2 03 22 01 11 00 00 00 00       $  ANS057:7ED 03 22 01 11 00 00 00 00
  $  REQ058:7E2 03 22 01 12 00 00 00 00       $  ANS058:7ED 03 22 01 12 00 00 00 00
  $  REQ059:7E2 03 22 01 13 00 00 00 00       $  ANS059:7ED 03 22 01 13 00 00 00 00
  $  REQ060:7E2 03 22 01 14 00 00 00 00       $  ANS060:7ED 03 22 01 14 00 00 00 00
  $  REQ061:7E2 03 22 01 2F 00 00 00 00       $  ANS061:7ED 03 22 01 2F 00 00 00 00
  $  REQ062:7E2 03 22 01 24 00 00 00 00       $  ANS062:7ED 03 22 01 24 00 00 00 00

  $  000.软件配置条码                                                 $    $           $    $  ANS000.BYTE004  $  y=HEX(x);
  $  001.TBOX(远程信息处理控制器)防盗功能配置码                       $    $           $    $  ANS000.BYTE004  $  if(x==0)y=@0625;else if(x==1)y=@0624;else y=@00d9;
  $  002.输入到VCU(整车控制器)的钥匙ON档开关信号                      $    $           $    $  ANS001.BYTE004  $  if(x==1)y=@0001;else if(x==0)y=@0000;else y=@00d9;
  $  003.输入到VCU(整车控制器)的钥匙START档开关信号                   $    $           $    $  ANS002.BYTE004  $  if(x==1)y=@0001;else if(x==0)y=@0000;else y=@00d9;
  $  004.输入到VCU(整车控制器)的制动开关信号1                         $    $           $    $  ANS003.BYTE004  $  if(x==1)y=@0001;else if(x==0)y=@0000;else y=@00d9;
  $  005.输入到VCU(整车控制器)的制动开关信号2                         $    $           $    $  ANS004.BYTE004  $  if(x==1)y=@0000;else if(x==0)y=@0001;else y=@00d9;
  $  006.油门1供电反馈                                                $    $  V        $    $  ANS005.BYTE004  $  y=((x1<<8)+x2)*0.02;
  $  007.油门2供电反馈                                                $    $  V        $    $  ANS006.BYTE004  $  y=((x1<<8)+x2)*0.02;
  $  008.油门1输入电压                                                $    $  V        $    $  ANS007.BYTE004  $  y=((x1<<8)+x2)*0.02;
  $  009.油门2输入电压                                                $    $  V        $    $  ANS008.BYTE004  $  y=((x1<<8)+x2)*0.02;
  $  010.输入到VCU(整车控制器)的蒸发器温度传感器信号                  $    $  V        $    $  ANS009.BYTE004  $  y=((x1<<8)+x2)*0.02;
  $  011.真空泵内部压力传感器输入电压                                 $    $  V        $    $  ANS010.BYTE004  $  y=((x1<<8)+x2)*0.02;
  $  012.真空泵内部压力传感器供电反馈                                 $    $  V        $    $  ANS011.BYTE004  $  y=((x1<<8)+x2)*0.02;
  $  013.外部压力传感器输入电压                                       $    $  V        $    $  ANS012.BYTE004  $  y=((x1<<8)+x2)*0.02;
  $  014.外部压力传感器供电反馈                                       $    $  V        $    $  ANS013.BYTE004  $  y=((x1<<8)+x2)*0.02;
  $  015.输入到VCU(整车控制器)的AC(空调系统)开关请求信号              $    $           $    $  ANS014.BYTE004  $  if(x==1)y=@0001;else if(x==0)y=@0000;else y=@00d9;
  $  016.高低压开关状态                                               $    $           $    $  ANS015.BYTE004  $  if(x==1)y=@0001;else if(x==0)y=@0000;else y=@00d9;
  $  017.输入到VCU(整车控制器)的PTC(电加热器模块)请求信号             $    $           $    $  ANS016.BYTE004  $  if(x==1)y=@0000;else if(x==0)y=@0001;else y=@00d9;
  $  018.输入到VCU(整车控制器)的换挡信号1                             $    $           $    $  ANS017.BYTE004  $  if(x==1)y=@0001;else if(x==0)y=@0000;else y=@00d9;
  $  019.输入到VCU(整车控制器)的换挡信号2                             $    $           $    $  ANS018.BYTE004  $  if(x==1)y=@0001;else if(x==0)y=@0000;else y=@00d9;
  $  020.输入到VCU(整车控制器)的换挡信号3                             $    $           $    $  ANS019.BYTE004  $  if(x==1)y=@0001;else if(x==0)y=@0000;else y=@00d9;
  $  021.输入到VCU(整车控制器)的换挡信号4                             $    $           $    $  ANS020.BYTE004  $  if(x==1)y=@0001;else if(x==0)y=@0000;else y=@00d9;
  $  022.车速                                                         $    $  km/h     $    $  ANS021.BYTE004  $  y=((x1<<8)+x2)*0.0625;
  $  023.电机转速                                                     $    $  rpm      $    $  ANS022.BYTE004  $  y=((x1<<8)+x2)-20000;
  $  024.电机模式                                                     $    $           $    $  ANS023.BYTE004  $  if(x==0)y=@0163;else if(x==1)y=@0041;else if(x==10)y=@0164;else if(x==18)y=@0165;else if(x==26)y=@0166;else if(x==3)y=@0167;else if(x==2)y=@0168;else if(x==11)y=@0169;else y=@00d9;
  $  025.VCU(整车控制器)发出的电机工作状态模式请求                    $    $           $    $  ANS024.BYTE004  $  if(x==0)y=@0163;else if(x==1)y=@0041;else if(x==10)y=@0164;else if(x==18)y=@0165;else if(x==26)y=@0166;else if(x==3)y=@0167;else if(x==2)y=@0168;else y=@00d9;
  $  026.电机实际扭矩                                                 $    $  Nm       $    $  ANS025.BYTE004  $  y=(((x1<<8)+x2)*0.1)-2000;
  $  027.DCDC(直流转换器)工作使能状态                                 $    $           $    $  ANS026.BYTE004  $  if(x==0)y=@0148;else if(x==1)y=@016a;else if(x==2)y=@016b;else if(x==3)y=@0071;else y=@00d9;
  $  028.DCDC(直流转换器)低压侧输出电流                               $    $  A        $    $  ANS027.BYTE004  $  y=((x1<<8)+x2)*0.1;
  $  029.VCU(整车控制器)发出的当前档位信息                            $    $           $    $  ANS028.BYTE004  $  if(x==0xD)y=@016d;else if(x==0xC)y=@0145;else if(x==0xB)y=@0146;else if(x==0x5)y=@016e;else if(x==0x6)y=@016f;else y=@00d9;
  $  030.VCU(整车控制器)发出的电机扭矩请求                            $    $           $    $  ANS029.BYTE004  $  y=(((x1<<8)+x2)*0.1)-2000;
  $  031.VCU(整车控制器)发出的DCDC(直流转换器)使能请求                $    $           $    $  ANS030.BYTE004  $  if(x==0)y=@02a7;else if(x==1)y=@0036;else if(x==3)y=@0033;else y=@00d9;
  $  032.VCU(整车控制器)发出的DCDC(直流转换器)低压侧电压              $    $  V        $    $  ANS031.BYTE004  $  y=x*0.1;
  $  033.VCU(整车控制器)控制BMS(电池管理系统)高压主回路的通断         $    $           $    $  ANS032.BYTE004  $  if(x==1)y=@0001;else if(x==0)y=@0000;else y=@00d9;
  $  034.BMS(电池管理系统)状态                                        $    $           $    $  ANS033.BYTE004  $  if(x==0)y=@0148;else if(x==1)y=@061d;else if(x==2)y=@014b;else if(x==3)y=@061e;else if(x==4)y=@0051;else if(x==5)y=@061f;else if(x==6)y=@0620;else if(x==7)y=@0621;else if(x==8)y=@0075;else if(x==9)y=@019a;else if(x==15)y=@013f;else y=@00d9;
  $  035.充电连接线指示灯                                             $    $           $    $  ANS034.BYTE004  $  if(x==0)y=@04b9;else if(x==1)y=@0142;else if(x==2)y=@0143;else if(x==3)y=@0015;else y=@00d9;
  $  036.高压电池包电流                                               $    $  A        $    $  ANS035.BYTE004  $  y=(((x1<<8)+x2)*0.05)-1600;
  $  037.高压电池包内部电压                                           $    $  V        $    $  ANS036.BYTE004  $  y=((x1<<8)+x2)*0.05;     
  $  038.电池电量                                                     $    $  %        $    $  ANS037.BYTE004  $  y=((x1<<8)+x2)*0.01;     
  $  039.空调实际电功率                                               $    $  kW       $    $  ANS038.BYTE004  $  y=x*0.04;
  $  040.空调电功率请求                                               $    $  kW       $    $  ANS039.BYTE004  $  y=x*0.04;
  $  041.ABS(防抱死制动系统)提示车速信号是否有效                      $    $           $    $  ANS040.BYTE004  $  if(x==1)y=@0033;else if(x==0)y=@0034;else y=@00d9;
  $  042.加速踏板实际开度                                             $    $  %        $    $  ANS041.BYTE004  $  y=x*0.392;
  $  043.上电逻辑状态                                                 $    $           $    $  ANS042.BYTE004  $  if(x==0)y=@0148;else if(x==5)y=@0149;else if(x==10)y=@014a;else if(x==15)y=@014b;else if(x==20)y=@014c;else if(x==25)y=@014d;else if(x==30)y=@014e;else if(x==31)y=@014f;else if(x==35)y=@0150;else if(x==40)y=@0151;else if(x==45)y=@0152;else if(x==50)y=@0153;else if(x==55)y=@0154;else if(x==60)y=@0155;else if(x==61)y=@0156;else if(x==62)y=@0157;else if(x==63)y=@0158;else y=@00d9;
  $  044.VCU(整车控制器)内部当前系统故障等级                          $    $           $    $  ANS043.BYTE004  $  if(x==0)y=@0070;else if(x==1)y=@015b;else if(x==2)y=@015c;else if(x==5)y=@015d;else if(x==6)y=@015e;else if(x==7)y=@015f;else if(x==8)y=@0160;else if(x==11)y=@0622;else if(x==13)y=@003f;else if(x==15)y=@0162;else y=@00d9;
  $  045.MCU(驱动电机控制单元)故障等级                                $    $           $    $  ANS044.BYTE004  $  if(x==0)y=@0170;else if(x==1)y=@0171;else if(x==2)y=@0172;else if(x==3)y=@0173;else y=@00d9;
  $  046.BMS(电池管理系统)放电故障等级                                $    $           $    $  ANS045.BYTE004  $  if(x==0)y=@017d;else if(x==1)y=@0171;else if(x==2)y=@0172;else if(x==3)y=@0173;else if(x==4)y=@017e;else y=@00d9;
  $  047.BMS(电池管理系统)充电故障等级                                $    $           $    $  ANS046.BYTE004  $  if(x==0)y=@017d;else if(x==1)y=@0171;else if(x==2)y=@0172;else if(x==3)y=@0173;else if(x==4)y=@017e;else y=@00d9;
  $  048.DCDC(直流转换器)故障状态                                     $    $           $    $  ANS047.BYTE004  $  if(x==0)y=@0174;else if(x==1)y=@0175;else if(x==2)y=@0176;else if(x==3)y=@0177;else if(x==4)y=@0178;else if(x==5)y=@0179;else if(x==6)y=@017a;else if(x==7)y=@017b;else if(x==8)y=@017c;else y=@00d9;
  $  049.OBC(充电控制器)故障状态                                      $    $           $    $  ANS048.BYTE004  $  if(x==0)y=@0070;else if(x==1)y=@017f;else if(x==2)y=@0180;else if(x==3)y=@0181;else if(x==4)y=@0182;else if(x==5)y=@0183;else if(x==6)y=@0184;else if(x==8)y=@0185;else if(x==9)y=@0186;else if(x==10)y=@0187;else if(x==11)y=@0188;else if(x==12)y=@0189;else y=@00d9;
  $  050.电机峰值扭矩最大值限制                                       $    $  Nm       $    $  ANS049.BYTE004  $  y=((x1<<8)+x2)-4000;
  $  051.电机峰值扭矩最小值限制                                       $    $  Nm       $    $  ANS050.BYTE004  $  y=((x1<<8)+x2)-4000;
  $  052.原始投递的车轮端目标扭矩                                     $    $  Nm       $    $  ANS051.BYTE004  $  y=((x1<<8)+x2)-4000;
  $  053.电机最大扭矩限制                                             $    $  Nm       $    $  ANS052.BYTE004  $  y=(((x1<<8)+x2)*0.1)-2000;
  $  054.VCU(整车控制器)硬线输出控制的水泵继电器                      $    $           $    $  ANS053.BYTE004  $  if(x==1)y=@0001;else if(x==0)y=@0000;else y=@00d9;
  $  055.VCU(整车控制器)硬线输出控制的低速风扇继电器                  $    $           $    $  ANS054.BYTE004  $  if(x==1)y=@0001;else if(x==0)y=@0000;else y=@00d9;
  $  056.VCU(整车控制器)硬线输出控制的高速风扇继电器                  $    $           $    $  ANS055.BYTE004  $  if(x==1)y=@0001;else if(x==0)y=@0000;else y=@00d9;
  $  057.PTC(电加热器模块)电源使能                                    $    $           $    $  ANS056.BYTE004  $  if(x==1)y=@0001;else if(x==0)y=@0000;else y=@00d9;
  $  058.VCU(整车控制器)硬线输出控制的MCU(驱动电机控制单元)唤醒       $    $           $    $  ANS057.BYTE004  $  if(x==1)y=@0001;else if(x==0)y=@0000;else y=@00d9;
  $  059.VCU(整车控制器)硬线输出控制的DCDC(直流转换器)唤醒            $    $           $    $  ANS058.BYTE004  $  if(x==1)y=@0001;else if(x==0)y=@0000;else y=@00d9;
  $  060.VCU(整车控制器)硬线输出控制的低压主继电器                    $    $           $    $  ANS059.BYTE004  $  if(x==1)y=@0001;else if(x==0)y=@0000;else y=@00d9;
  $  061.输入到VCU(整车控制器)的低压蓄电池电压采集                    $    $  V        $    $  ANS060.BYTE004  $  y=x*0.1;
  $  062.VCU(整车控制器)硬线输出控制的制动真空泵继电器                $    $           $    $  ANS061.BYTE004  $  if(x==1)y=@0001;else if(x==0)y=@0000;else y=@00d9;
  $  063.VCU(整车控制器)硬线输出控制的倒车灯继电器                    $    $           $    $  ANS062.BYTE004  $  if(x==1)y=@0001;else if(x==0)y=@0000;else y=@00d9;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E2 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
