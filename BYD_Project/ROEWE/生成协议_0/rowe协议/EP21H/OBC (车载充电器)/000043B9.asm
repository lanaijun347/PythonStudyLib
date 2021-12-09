
     系统名称:OBC (车载充电器)

     系统ID:000043B9

;******************************************************************************************************************************************************

     通讯线:$~#1$~#9$~500K$~78C,718,748

进入命令:

  $~ REQ000:784 02 10 03 00 00 00 00 00       $~ ANS000:78C 02 10 03 00 00 00 00 00

空闲命令:

  $! REQ000:784 02 3E 00 00 00 00 00 00       $! ANS000:78C 02 3E 00 00 00 00 00 00


;******************************************************************************************************************************************************

     通讯线:$~#1$~#9$~500K$~78C,718,748

进入命令:

  $~ REQ000:784 02 10 01 00 00 00 00 00       $~ ANS000:78C 02 10 01 00 00 00 00 00

空闲命令:

  $! REQ000:784 02 3E 00 00 00 00 00 00       $! ANS000:78C 02 3E 00 00 00 00 00 00


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

  $#  REQ000:784 03 19 02 2C 00 00 00 00            $#  

			故障码表示:帧长决定故障个数,$#BYTE03$#开始表示故障码,每$#4$#个字节表示一个故障码,前$#3$#个字节表示码号.

			码库: $*$*DTC/000043B9

			读码方式:case 13

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:784 04 14 FF FF FF 00 00 00            $$  

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:784 03 22 F1 87 00 00 00 00            $%  
  $%  REQ001:784 03 22 F1 8B 00 00 00 00            $%  
  $%  REQ002:784 03 22 F1 90 00 00 00 00            $%  
  $%  REQ003:784 03 22 F1 91 00 00 00 00            $%  
  $%  REQ004:784 03 22 F1 A0 00 00 00 00            $%  
  $%  REQ005:784 03 22 F1 A1 00 00 00 00            $%  
  $%  REQ006:784 03 22 F1 A2 00 00 00 00            $%  
  $%  REQ007:784 03 22 F1 A8 00 00 00 00            $%  
  $%  REQ008:784 03 22 F1 10 00 00 00 00            $%  
  $%  REQ009:784 03 22 F1 20 00 00 00 00            $%  
  $%  REQ010:784 03 22 F1 21 00 00 00 00            $%  
  $%  REQ011:784 03 22 F1 83 00 00 00 00            $%  
  $%  REQ012:784 03 22 F1 8A 00 00 00 00            $%  
  $%  REQ013:784 03 22 F1 8C 00 00 00 00            $%  
  $%  REQ014:784 03 22 F1 92 00 00 00 00            $%  
  $%  REQ015:784 03 22 F1 94 00 00 00 00            $%  
  $%  REQ016:784 03 22 F1 98 00 00 00 00            $%  
  $%  REQ017:784 03 22 F1 A5 00 00 00 00            $%  
  $%  REQ018:784 03 22 F1 A9 00 00 00 00            $%  
  $%  REQ019:784 03 22 F1 AA 00 00 00 00            $%  

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

  $  REQ000:784 03 22 B0 00 00 00 00 00            $  
  $  REQ001:784 03 22 B0 01 00 00 00 00            $  
  $  REQ002:784 03 22 B0 02 00 00 00 00            $  
  $  REQ003:784 03 22 B0 03 00 00 00 00            $  
  $  REQ004:784 03 22 B0 06 00 00 00 00            $  
  $  REQ005:784 03 22 B0 07 00 00 00 00            $  
  $  REQ006:784 03 22 B0 08 00 00 00 00            $  
  $  REQ007:784 03 22 B0 09 00 00 00 00            $  
  $  REQ008:784 03 22 B0 0A 00 00 00 00            $  
  $  REQ009:784 03 22 B0 0B 00 00 00 00            $  
  $  REQ010:784 03 22 B0 0C 00 00 00 00            $  
  $  REQ011:784 03 22 B0 0D 00 00 00 00            $  
  $  REQ012:784 03 22 B0 0E 00 00 00 00            $  
  $  REQ013:784 03 22 B0 0F 00 00 00 00            $  
  $  REQ014:784 03 22 B0 10 00 00 00 00            $  
  $  REQ015:784 03 22 B0 11 00 00 00 00            $  
  $  REQ016:784 03 22 B0 13 00 00 00 00            $  

  $  000.充电器高压直流电电压          $    $  伏         $    $  ANS000.BYTE003  $  y=(x1*256+x2)*0.02; 
  $  001.充电器高压直流电电流          $    $  安培       $    $  ANS001.BYTE003  $  y=(x1*256+x2)*0.05; 
  $  002.充电器交流电电压              $    $  伏         $    $  ANS002.BYTE003  $  y=(x)*2; 
  $  003.充电器交流电电流              $    $  安培       $    $  ANS003.BYTE003  $  y=(x)*0.2; 
  $  004.唤醒信号状态                  $    $             $    $  ANS004.BYTE003  $  switxh(x&0x01)0x00:@0292;0x01:@0291; 
  $  005.充电口正极温度                $    $  摄氏度     $    $  ANS005.BYTE003  $  y=(x)*1-40; 
  $  006.充电口负极温度                $    $  摄氏度     $    $  ANS006.BYTE003  $  y=(x)*1-40; 
  $  007.主级环境温度1                 $    $  摄氏度     $    $  ANS007.BYTE003  $  y=(x)*1-40; 
  $  008.主级环境温度2                 $    $  摄氏度     $    $  ANS008.BYTE003  $  y=(x)*1-40; 
  $  009.次级环境温度3                 $    $  摄氏度     $    $  ANS009.BYTE003  $  y=(x)*1-40; 
  $  010.次级环境温度4                 $    $  摄氏度     $    $  ANS010.BYTE003  $  y=(x)*1-40; 
  $  011.环境温度                      $    $  摄氏度     $    $  ANS011.BYTE003  $  y=(x)*1-40; 
  $  012.主板温度                      $    $  摄氏度     $    $  ANS012.BYTE003  $  y=(x)*1-40; 
  $  013.BMS请求充电器工作             $    $             $    $  ANS013.BYTE003  $  switxh(x)0x00:@027d;0x01:@0932;0x02:@002e;0x03:@09d5; 
  $  014.BMS请求充电器的输出电压       $    $  伏         $    $  ANS014.BYTE003  $  y=(x1*256+x2)*0.02; 
  $  015.BMS请求充电器的输出电流       $    $  安培       $    $  ANS015.BYTE003  $  y=(x1*256+x2)*0.05; 
  $  016.充电器状态                    $    $             $    $  ANS016.BYTE003  $  switxh(x&0x30)0x00:@0058;0x10:@00f0;0x30:@0160;0x50:@0161;0x70:@079c;0x90:@0070;0xA0:@002e; 

;******************************************************************************************************************************************************

