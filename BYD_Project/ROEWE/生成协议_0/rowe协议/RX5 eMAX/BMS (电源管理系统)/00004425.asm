
     系统名称:BMS (电源管理系统)

     系统ID:00004425

;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~789,718,748

进入命令:

  $~ REQ000:781 02 10 03 00 00 00 00 00       $~ ANS000:789 02 10 03 00 00 00 00 00

空闲命令:

  $! REQ000:781 02 3E 00 00 00 00 00 00       $! ANS000:789 02 3E 00 00 00 00 00 00


;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~789,718,748

进入命令:

  $~ REQ000:781 02 10 01 00 00 00 00 00       $~ ANS000:789 02 10 01 00 00 00 00 00

空闲命令:

  $! REQ000:781 02 3E 00 00 00 00 00 00       $! ANS000:789 02 3E 00 00 00 00 00 00


;******************************************************************************************************************************************************

退出命令:


;******************************************************************************************************************************************************

  $~~ REQ000:710 02 10 01 00 00 00 00 00       $~~ 
  $~~ REQ001:710 02 10 03 00 00 00 00 00       $~~ 
  $~~ REQ002:710 06 27 41 3E AB 00 0D 00       $~~ 
  $~~ REQ003:710 06 27 42 00 00 00 00 00       $~~ 
  $~~ REQ004:710 02 27 01 00 00 00 00 00       $~~ 
  $~~ REQ005:710 06 27 02 00 00 00 00 00       $~~ 
  $~~ REQ006:710 04 31 01 AA FF 00 00 00       $~~ 
  $~~ REQ007:710 05 31 03 AA FF 00 00 00       $~~ 
  $~~ REQ008:740 02 10 03 00 00 00 00 00       $~~ 
  $~~ REQ009:740 06 27 41 3E AB 00 0D 00       $~~ 
  $~~ REQ010:740 06 27 42 00 00 00 00 00       $~~ 
  $~~ REQ011:740 02 27 01 00 00 00 00 00       $~~ 
  $~~ REQ012:740 06 27 02 00 00 00 00 00       $~~ 
  $~~ REQ013:740 04 31 01 AA FF 00 00 00       $~~ 
  $~~ REQ014:740 05 31 03 AA FF 00 00 00       $~~ 

<VCI>
	<ACTIVE_ADDNODE type="0" num="0">
		<!--荣威/名爵特殊激活-->
		<param type="string" value="-2"/>
		<!--设置引脚和波特率-->
		<param type="string" value="6,14,500000"/>
		<!--读命令,写命令-->
		<param type="command" value="KEY_CMD_00_000,KEY_CMD_00_001,KEY_CMD_00_008"/>
		<!--加密算法case-->
		<param type="string" value="200"/>
		<!--第一层加密命令-->
		<param type="command" value="KEY_CMD_00_002,KEY_CMD_00_003"/>
		<!--读命令偏移,读字节偏移,读取字节个数,写命令偏移,写字节偏移+3，修改字节个数-->
		<param type="string" value="0,2,4,1,5,4"/>
		<!--网关安全算法种cass-->
		<param type="string" value="79"/>
		<!--读命令,写命令-->
		<param type="command" value="KEY_CMD_00_004,KEY_CMD_00_005,KEY_CMD_00_006,KEY_CMD_00_007"/>
		<!--读字节偏移,读取字节个数,写字节偏移+3，修改字节个数--> 
		<param type="string" value="0,2,4,1,5,4"/>
		<!--车身加密算法case-->
		<param type="string" value="200"/>
		<!--第一层加密命令-->
		<param type="command" value="KEY_CMD_00_009,KEY_CMD_00_010"/>
		<!--读命令偏移,读字节偏移,读取字节个数,写命令偏移,写字节偏移+3，修改字节个数-->
		<param type="string" value="0,2,4,1,5,4"/>
		<!--安全算法种cass-->
		<param type="string" value="100"/>
		<!--读命令,写命令-->
		<param type="command" value="KEY_CMD_00_011,KEY_CMD_00_012,KEY_CMD_00_013,KEY_CMD_00_014"/>
		<!--读字节偏移,读取字节个数,写字节偏移+3，修改字节个数-->
		<param type="string" value="0,2,4,1,5,4"/>
		<!--重新激活-->
		<param type="command" value="ENTER_CMD_00_000"/>
	</ACTIVE_ADDNODE>
	<ACTIVE_ADDNODE type="0" num="1">
		<!--荣威/名爵特殊激活-->
		<param type="string" value="-2"/>
		<!--设置引脚和波特率-->
		<param type="string" value="6,14,500000"/>
		<!--读命令,写命令-->
		<param type="command" value="KEY_CMD_00_000,KEY_CMD_00_001,KEY_CMD_00_008"/>
		<!--加密算法case-->
		<param type="string" value="200"/>
		<!--第一层加密命令-->
		<param type="command" value="KEY_CMD_00_002,KEY_CMD_00_003"/>
		<!--读命令偏移,读字节偏移,读取字节个数,写命令偏移,写字节偏移+3，修改字节个数-->
		<param type="string" value="0,2,4,1,5,4"/>
		<!--网关安全算法种cass-->
		<param type="string" value="79"/>
		<!--读命令,写命令-->
		<param type="command" value="KEY_CMD_00_004,KEY_CMD_00_005,KEY_CMD_00_006,KEY_CMD_00_007"/>
		<!--读字节偏移,读取字节个数,写字节偏移+3，修改字节个数--> 
		<param type="string" value="0,2,4,1,5,4"/>
		<!--车身加密算法case-->
		<param type="string" value="200"/>
		<!--第一层加密命令-->
		<param type="command" value="KEY_CMD_00_009,KEY_CMD_00_010"/>
		<!--读命令偏移,读字节偏移,读取字节个数,写命令偏移,写字节偏移+3，修改字节个数-->
		<param type="string" value="0,2,4,1,5,4"/>
		<!--安全算法种cass-->
		<param type="string" value="100"/>
		<!--读命令,写命令-->
		<param type="command" value="KEY_CMD_00_011,KEY_CMD_00_012,KEY_CMD_00_013,KEY_CMD_00_014"/>
		<!--读字节偏移,读取字节个数,写字节偏移+3，修改字节个数-->
		<param type="string" value="0,2,4,1,5,4"/>
		<!--重新激活-->
		<param type="command" value="ENTER_CMD_01_000"/>
	</ACTIVE_ADDNODE>
</VCI>

;******************************************************************************************************************************************************

读取故障码:

<RDTC>
	<FUNCTION type="0" num="0">
		<param type="system_path" value=""/>
	</FUNCTION>
</RDTC>

  $#  REQ000:781 03 19 02 2C 00 00 00 00            $#  

			故障码表示:帧长决定故障个数,$#BYTE03$#开始表示故障码,每$#4$#个字节表示一个故障码,前$#3$#个字节表示码号.

			码库: $*$*DTC/00004425

			读码方式:case 13

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:781 04 14 FF FF FF 00 00 00            $$  

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:781 03 22 F1 87 00 00 00 00            $%  
  $%  REQ001:781 03 22 F1 8B 00 00 00 00            $%  
  $%  REQ002:781 03 22 F1 90 00 00 00 00            $%  
  $%  REQ003:781 03 22 F1 91 00 00 00 00            $%  
  $%  REQ004:781 03 22 F1 A0 00 00 00 00            $%  
  $%  REQ005:781 03 22 F1 A1 00 00 00 00            $%  
  $%  REQ006:781 03 22 F1 A2 00 00 00 00            $%  
  $%  REQ007:781 03 22 F1 A8 00 00 00 00            $%  
  $%  REQ008:781 03 22 F1 10 00 00 00 00            $%  
  $%  REQ009:781 03 22 F1 20 00 00 00 00            $%  
  $%  REQ010:781 03 22 F1 21 00 00 00 00            $%  
  $%  REQ011:781 03 22 F1 83 00 00 00 00            $%  
  $%  REQ012:781 03 22 F1 8A 00 00 00 00            $%  
  $%  REQ013:781 03 22 F1 8C 00 00 00 00            $%  
  $%  REQ014:781 03 22 F1 92 00 00 00 00            $%  
  $%  REQ015:781 03 22 F1 94 00 00 00 00            $%  
  $%  REQ016:781 03 22 F1 98 00 00 00 00            $%  
  $%  REQ017:781 03 22 F1 A5 00 00 00 00            $%  
  $%  REQ018:781 03 22 F1 A9 00 00 00 00            $%  
  $%  REQ019:781 03 22 F1 AA 00 00 00 00            $%  

  $%  000:电控单元零件号                             $%    $%  ANS000.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  001:电控单元制造日期                           $%    $%  ANS001.BYTE003  $%  HEX(x1,x2,x3); 
  $%  002:车辆识别码(VIN)                            $%    $%  ANS002.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17); 
  $%  003:电控单元硬件号版本                         $%    $%  ANS003.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  004:电控单元应用软件号                         $%    $%  ANS004.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  005:电控单元标定软件号                         $%    $%  ANS005.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  006:电控单元网络参考号                         $%    $%  ANS006.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8); 
  $%  007:车辆特征信息(FK)                           $%    $%  ANS007.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20); 
  $%  008:电控单元零件号-刷新信息域                  $%    $%  ANS008.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  009:测试工具参考号-刷新信息域                  $%    $%  ANS008.BYTE008  $%  HEX(x1,x2,x3,x4,x5,x6); 
  $%  010:里程读数-刷新信息域                        $%    $%  ANS008.BYTE014  $%  y=(x1*65536+x2*256+x3)*1; 
  $%  011:网络配置文件零件号-网络信息域(出厂)        $%    $%  ANS009.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  012:网络配置文件零件号-网络信息域(出厂)        $%    $%  ANS009.BYTE008  $%  HEX(x1,x2,x3,x4,x5,x6); 
  $%  013:网络配置文件零件号-网络信息域(出厂)        $%    $%  ANS009.BYTE014  $%  y=(x1*65536+x2*256+x3)*1; 
  $%  014:网络配置文件零件号-网络信息域(当前)        $%    $%  ANS010.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  015:测试工具参考号-网络信息域(当前)            $%    $%  ANS010.BYTE008  $%  HEX(x1,x2,x3,x4,x5,x6); 
  $%  016:里程读数-网络信息域(当前)                  $%    $%  ANS010.BYTE014  $%  y=(x1*65536+x2*256+x3)*1; 
  $%  017:电控单元基础软件参考号                     $%    $%  ANS011.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  018:系统供应商标识号                           $%    $%  ANS012.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  019:电控单元序列号                             $%    $%  ANS013.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16); 
  $%  020:供应商电控单元硬件参考号                   $%    $%  ANS014.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  021:电控单元软件参考号                         $%    $%  ANS015.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  022:配置跟踪域                                 $%    $%  ANS016.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11); 
  $%  023:电控单元索引信息                           $%    $%  ANS017.BYTE003  $%  HEX(x1,x2,x3); 
  $%  024:电控单元配置文件号                         $%    $%  ANS018.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  025:电控单元刷新过程文件号                     $%    $%  ANS019.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 

;******************************************************************************************************************************************************

数据流:

  $  REQ000:781 03 22 B0 01 00 00 00 00            $  
  $  REQ001:781 03 22 B0 09 00 00 00 00            $  
  $  REQ002:781 03 22 B0 11 00 00 00 00            $  
  $  REQ003:781 03 22 B0 19 00 00 00 00            $  
  $  REQ004:781 03 22 B0 41 00 00 00 00            $  
  $  REQ005:781 03 22 B0 42 00 00 00 00            $  
  $  REQ006:781 03 22 B0 43 00 00 00 00            $  
  $  REQ007:781 03 22 B0 45 00 00 00 00            $  
  $  REQ008:781 03 22 B0 46 00 00 00 00            $  
  $  REQ009:781 03 22 B0 47 00 00 00 00            $  
  $  REQ010:781 03 22 B0 48 00 00 00 00            $  
  $  REQ011:781 03 22 B0 49 00 00 00 00            $  
  $  REQ012:781 03 22 B0 4A 00 00 00 00            $  
  $  REQ013:781 03 22 B0 52 00 00 00 00            $  
  $  REQ014:781 03 22 B0 56 00 00 00 00            $  
  $  REQ015:781 03 22 B0 57 00 00 00 00            $  
  $  REQ016:781 03 22 B0 58 00 00 00 00            $  
  $  REQ017:781 03 22 B0 59 00 00 00 00            $  
  $  REQ018:781 03 22 B0 5C 00 00 00 00            $  
  $  REQ019:781 03 22 B0 61 00 00 00 00            $  
  $  REQ020:781 03 22 B0 6D 00 00 00 00            $  
  $  REQ021:781 03 22 B0 21 00 00 00 00            $  
  $  REQ022:781 03 22 B0 29 00 00 00 00            $  

  $  000.电芯监控单元(CMU1)电池单体最小电压        $    $  伏         $    $  ANS000.BYTE003  $  y=((x1*256+x2)&0x1FFF)*0.0005+1; 
  $  001.电芯监控单元(CMU1)电池单体最大电压        $    $  伏         $    $  ANS000.BYTE005  $  y=((x1*256+x2)&0x1FFF)*0.0005+1; 
  $  002.电芯监控单元(CMU1)监控电池温度信号2       $    $  摄氏度     $    $  ANS000.BYTE007  $  y=(x)*0.5-40; 
  $  003.电芯监控单元(CMU1)监控电池温度信号1       $    $  摄氏度     $    $  ANS000.BYTE008  $  y=(x)*0.5-40; 
  $  004.电芯监控单元(CMU1)电路板温度              $    $  摄氏度     $    $  ANS000.BYTE009  $  y=(x)*0.5-40; 
  $  005.电芯监控单元(CMU2)电池单体最小电压        $    $  伏         $    $  ANS001.BYTE003  $  y=((x1*256+x2)&0x1FFF)*0.0005+1; 
  $  006.电芯监控单元(CMU2)电池单体最大电压        $    $  伏         $    $  ANS001.BYTE005  $  y=((x1*256+x2)&0x1FFF)*0.0005+1; 
  $  007.电芯监控单元(CMU2)监控电池温度信号2       $    $  摄氏度     $    $  ANS001.BYTE007  $  y=(x)*0.5-40; 
  $  008.电芯监控单元(CMU2)监控电池温度信号1       $    $  摄氏度     $    $  ANS001.BYTE008  $  y=(x)*0.5-40; 
  $  009.电芯监控单元(CMU2)电路板温度              $    $  摄氏度     $    $  ANS001.BYTE009  $  y=(x)*0.5-40; 
  $  010.电芯监控单元(CMU3)电池单体最小电压        $    $  伏         $    $  ANS002.BYTE003  $  y=((x1*256+x2)&0x1FFF)*0.0005+1; 
  $  011.电芯监控单元(CMU3)电池单体最大电压        $    $  伏         $    $  ANS002.BYTE005  $  y=((x1*256+x2)&0x1FFF)*0.0005+1; 
  $  012.电芯监控单元(CMU3)监控电池温度2           $    $  摄氏度     $    $  ANS002.BYTE007  $  y=(x)*0.5-40; 
  $  013.电芯监控单元(CMU3)监控电池温度1           $    $  摄氏度     $    $  ANS002.BYTE008  $  y=(x)*0.5-40; 
  $  014.电芯监控单元(CMU3)电路板温度              $    $  摄氏度     $    $  ANS002.BYTE009  $  y=(x)*0.5-40; 
  $  015.电芯监控单元(CMU4)电池单体最小电压        $    $  伏         $    $  ANS003.BYTE003  $  y=((x1*256+x2)&0x1FFF)*0.0005+1; 
  $  016.电芯监控单元(CMU4)电池单体最大电压        $    $  伏         $    $  ANS003.BYTE005  $  y=((x1*256+x2)&0x1FFF)*0.0005+1; 
  $  017.电芯监控单元(CMU4)监控电池温度2           $    $  摄氏度     $    $  ANS003.BYTE007  $  y=(x)*0.5-40; 
  $  018.电芯监控单元(CMU4)监控电池温度1           $    $  摄氏度     $    $  ANS003.BYTE008  $  y=(x)*0.5-40; 
  $  019.电芯监控单元(CMU4)电路板温度              $    $  摄氏度     $    $  ANS003.BYTE009  $  y=(x)*0.5-40; 
  $  020.高压电池母线电压                          $    $  伏         $    $  ANS004.BYTE003  $  y=((x1*256+x2)&0x0FFF)*0.25+1; 
  $  021.电池电压                                  $    $  伏特       $    $  ANS005.BYTE003  $  y=((x1*256+x2)&0x0FFF)*0.25+1; 
  $  022.高压电池电流                              $    $  安培       $    $  ANS006.BYTE003  $  y=(x1*256+x2)*0.025-1000; 
  $  023.高压系统绝缘电阻值                        $    $  千欧       $    $  ANS007.BYTE003  $  y=((x1*256+x2)&0x3FFF)*0.5; 
  $  024.高压电池SOC                               $    $  百分比     $    $  ANS008.BYTE003  $  y=((x1*256+x2)&0x03FF)*0.1; 
  $  025.高压电池管理系统（BMS）故障状态           $    $             $    $  ANS009.BYTE003  $  switxh(x&0x07)0x00:@0027;0x01:@079c;0x02:@0a69;0x03:@0a6a;0x04:@0a6b;0x05:@0a6c; 
  $  026.BMS运行状态                               $    $             $    $  ANS010.BYTE003  $  switxh(x&0x1F)0x00:@00f0;0x01:@015d;0x02:@015e;0x03:@03f1;0x04:@03f2;0x05:@03f3;0x06:@03f4;0x07:@03f5;0x09:@03f6;0x0A:@03f7;0x0C:@03f8;0x0D:@03f9;0x0E:@03fa;0x0F:@0070; 
  $  027.高压互锁回路（A）状态                     $    $             $    $  ANS011.BYTE003  $  switxh(x&0x01)0x01:@0931;0x00:@0727; 
  $  028.高压互锁回路（B)状态                      $    $             $    $  ANS012.BYTE003  $  switxh(x&0x01)0x01:@0931;0x00:@0727; 
  $  029.碰撞电路状态                              $    $             $    $  ANS013.BYTE003  $  switxh(x&0x01)0x01:@0163;0x00:@071b; 
  $  030.高压蓄电池单元最高温度                    $    $  摄氏度     $    $  ANS014.BYTE003  $  y=(x)*0.5-40; 
  $  031.最高电压电池单体位置                      $    $             $    $  ANS014.BYTE004  $  y=(x)*1; 
  $  032.高压电池包电池单体最低温度                $    $  摄氏度     $    $  ANS015.BYTE003  $  y=(x)*0.5-40; 
  $  033.最低电压电池单体位置                      $    $             $    $  ANS015.BYTE004  $  y=(x)*1; 
  $  034.高压电池包电池单体最高电压                $    $  伏         $    $  ANS016.BYTE003  $  y=((x1*256+x2)&0x1FFF)*0.001; 
  $  035.最高电压电池单体位置                      $    $             $    $  ANS016.BYTE005  $  y=(x)*1; 
  $  036.高压蓄电池最小单元电压                    $    $  伏         $    $  ANS017.BYTE003  $  y=((x1*256+x2)&0x1FFF)*0.001; 
  $  037.最低电压电池单体位置                      $    $             $    $  ANS017.BYTE005  $  y=(x)*1; 
  $  038.BMS冷却液温度                             $    $  摄氏度     $    $  ANS018.BYTE003  $  y=(x)*0.5-40; 
  $  039.高压电池包健康度(SOH)                     $    $  百分比     $    $  ANS019.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  040.日期时间信息 (年-月-日)                   $    $             $    $  ANS020.BYTE003  $  y=(x1*0x100*0x100+x2*0x100+x3); 
  $  041.日期时间信息 (时:分:秒)                   $    $             $    $  ANS020.BYTE006  $  y=(x1*0x100*0x100+x2*0x100+x3); 
  $  042.电芯监控单元(CMU5)电池单体最小电压        $    $  伏         $    $  ANS021.BYTE003  $  y=((x1*256+x2)&0x1FFF)*0.0005+1; 
  $  043.电芯监控单元(CMU5)电池单体最大电压        $    $  伏         $    $  ANS021.BYTE005  $  y=((x1*256+x2)&0x1FFF)*0.0005+1; 
  $  044.电芯监控单元(CMU5)监控电池温度2           $    $  摄氏度     $    $  ANS021.BYTE007  $  y=(x)*0.5-40; 
  $  045.电芯监控单元(CMU5)监控电池温度1           $    $  摄氏度     $    $  ANS021.BYTE008  $  y=(x)*0.5-40; 
  $  046.电芯监控单元(CMU5)电路板温度              $    $  摄氏度     $    $  ANS021.BYTE009  $  y=(x)*0.5-40; 
  $  047.电芯监控单元(CMU6)电池单体最小电压        $    $  伏         $    $  ANS022.BYTE003  $  y=((x1*256+x2)&0x1FFF)*0.0005+1; 
  $  048.电芯监控单元(CMU6)电池单体最大电压        $    $  伏         $    $  ANS022.BYTE005  $  y=((x1*256+x2)&0x1FFF)*0.0005+1; 
  $  049.电芯监控单元(CMU6)监控电池温度信号2       $    $  摄氏度     $    $  ANS022.BYTE007  $  y=(x)*0.5-40; 
  $  050.电芯监控单元(CMU6)监控电池温度信号1       $    $  摄氏度     $    $  ANS022.BYTE008  $  y=(x)*0.5-40; 
  $  051.电芯监控单元(CMU6)电路板温度              $    $  摄氏度     $    $  ANS022.BYTE009  $  y=(x)*0.5-40; 

;******************************************************************************************************************************************************

