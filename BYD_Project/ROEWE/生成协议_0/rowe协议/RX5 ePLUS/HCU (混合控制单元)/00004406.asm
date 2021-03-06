
     系统名称:HCU (混合控制单元)

     系统ID:00004406

;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~7EB,718,748

进入命令:

  $~ REQ000:7E3 02 10 03 00 00 00 00 00       $~ ANS000:7EB 02 10 03 00 00 00 00 00

空闲命令:

  $! REQ000:7E3 02 3E 00 00 00 00 00 00       $! ANS000:7EB 02 3E 00 00 00 00 00 00


;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~7EB,718,748

进入命令:

  $~ REQ000:7E3 02 10 01 00 00 00 00 00       $~ ANS000:7EB 02 10 01 00 00 00 00 00

空闲命令:

  $! REQ000:7E3 02 3E 00 00 00 00 00 00       $! ANS000:7EB 02 3E 00 00 00 00 00 00


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

  $#  REQ000:7E3 03 19 02 2C 00 00 00 00            $#  

			故障码表示:帧长决定故障个数,$#BYTE03$#开始表示故障码,每$#4$#个字节表示一个故障码,前$#3$#个字节表示码号.

			码库: $*$*DTC/00004406

			读码方式:case 13

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E3 04 14 FF FF FF 00 00 00            $$  

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E3 03 22 F1 87 00 00 00 00            $%  
  $%  REQ001:7E3 03 22 F1 8B 00 00 00 00            $%  
  $%  REQ002:7E3 03 22 F1 90 00 00 00 00            $%  
  $%  REQ003:7E3 03 22 F1 91 00 00 00 00            $%  
  $%  REQ004:7E3 03 22 F1 A0 00 00 00 00            $%  
  $%  REQ005:7E3 03 22 F1 A1 00 00 00 00            $%  
  $%  REQ006:7E3 03 22 F1 A2 00 00 00 00            $%  
  $%  REQ007:7E3 03 22 F1 A8 00 00 00 00            $%  
  $%  REQ008:7E3 03 22 F1 10 00 00 00 00            $%  
  $%  REQ009:7E3 03 22 F1 20 00 00 00 00            $%  
  $%  REQ010:7E3 03 22 F1 21 00 00 00 00            $%  
  $%  REQ011:7E3 03 22 F1 83 00 00 00 00            $%  
  $%  REQ012:7E3 03 22 F1 8A 00 00 00 00            $%  
  $%  REQ013:7E3 03 22 F1 8C 00 00 00 00            $%  
  $%  REQ014:7E3 03 22 F1 92 00 00 00 00            $%  
  $%  REQ015:7E3 03 22 F1 94 00 00 00 00            $%  
  $%  REQ016:7E3 03 22 F1 98 00 00 00 00            $%  
  $%  REQ017:7E3 03 22 F1 A5 00 00 00 00            $%  
  $%  REQ018:7E3 03 22 F1 A9 00 00 00 00            $%  
  $%  REQ019:7E3 03 22 F1 AA 00 00 00 00            $%  

  $%  000:电控单元零件号                             $%    $%  ANS000.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  001:电控单元制造日期                           $%    $%  ANS001.BYTE003  $%  HEX(x1,x2,x3); 
  $%  002:车辆识别码(VIN)                            $%    $%  ANS002.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17); 
  $%  003:电控单元硬件号                             $%    $%  ANS003.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  004:电控单元应用软件号版本                     $%    $%  ANS004.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  005:电控单元标定软件号                         $%    $%  ANS005.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  006:电控单元网络参考号                         $%    $%  ANS006.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8); 
  $%  007:车辆特征信息(FK)                           $%    $%  ANS007.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20); 
  $%  008:电控单元零件号-刷新信息域                  $%    $%  ANS008.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  009:测试工具参考号-刷新信息域                  $%    $%  ANS008.BYTE008  $%  HEX(x1,x2,x3,x4,x5,x6); 
  $%  010:里程读数-刷新信息域                        $%    $%  ANS008.BYTE014  $%  y=(x1*65536+x2*256+x3)*1; 
  $%  011:网络配置文件零件号-网络信息域(出厂)        $%    $%  ANS009.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  012:测试工具参考号-网络信息域(出厂)            $%    $%  ANS009.BYTE008  $%  HEX(x1,x2,x3,x4,x5,x6); 
  $%  013:里程读数-网络信息域(出厂)                  $%    $%  ANS009.BYTE014  $%  y=(x1*65536+x2*256+x3)*1; 
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

  $  REQ000:7E3 03 22 B0 08 00 00 00 00            $  
  $  REQ001:7E3 03 22 B0 0A 00 00 00 00            $  
  $  REQ002:7E3 03 22 B1 00 00 00 00 00            $  
  $  REQ003:7E3 03 22 B1 03 00 00 00 00            $  
  $  REQ004:7E3 03 22 B1 04 00 00 00 00            $  
  $  REQ005:7E3 03 22 B1 20 00 00 00 00            $  
  $  REQ006:7E3 03 22 B1 42 00 00 00 00            $  
  $  REQ007:7E3 03 22 B1 87 00 00 00 00            $  
  $  REQ008:7E3 03 22 B1 88 00 00 00 00            $  
  $  REQ009:7E3 03 22 B1 89 00 00 00 00            $  
  $  REQ010:7E3 03 22 B1 8B 00 00 00 00            $  
  $  REQ011:7E3 03 22 B2 01 00 00 00 00            $  
  $  REQ012:7E3 03 22 B2 02 00 00 00 00            $  
  $  REQ013:7E3 03 22 B2 03 00 00 00 00            $  
  $  REQ014:7E3 03 22 B2 04 00 00 00 00            $  
  $  REQ015:7E3 03 22 B2 05 00 00 00 00            $  
  $  REQ016:7E3 03 22 B2 06 00 00 00 00            $  
  $  REQ017:7E3 03 22 B2 80 00 00 00 00            $  
  $  REQ018:7E3 03 22 B3 00 00 00 00 00            $  
  $  REQ019:7E3 03 22 B3 07 00 00 00 00            $  
  $  REQ020:7E3 03 22 B3 08 00 00 00 00            $  
  $  REQ021:7E3 03 22 B3 09 00 00 00 00            $  
  $  REQ022:7E3 03 22 B3 81 00 00 00 00            $  
  $  REQ023:7E3 03 22 B3 82 00 00 00 00            $  
  $  REQ024:7E3 03 22 B3 83 00 00 00 00            $  
  $  REQ025:7E3 03 22 B3 84 00 00 00 00            $  
  $  REQ026:7E3 03 22 B3 85 00 00 00 00            $  
  $  REQ027:7E3 03 22 B3 86 00 00 00 00            $  
  $  REQ028:7E3 03 22 B4 00 00 00 00 00            $  
  $  REQ029:7E3 03 22 B4 01 00 00 00 00            $  
  $  REQ030:7E3 03 22 B4 02 00 00 00 00            $  
  $  REQ031:7E3 03 22 B4 03 00 00 00 00            $  
  $  REQ032:7E3 03 22 B4 04 00 00 00 00            $  
  $  REQ033:7E3 03 22 B4 0A 00 00 00 00            $  
  $  REQ034:7E3 03 22 B4 0B 00 00 00 00            $  
  $  REQ035:7E3 03 22 B4 0D 00 00 00 00            $  
  $  REQ036:7E3 03 22 B4 0E 00 00 00 00            $  
  $  REQ037:7E3 03 22 B4 80 00 00 00 00            $  
  $  REQ038:7E3 03 22 B4 81 00 00 00 00            $  
  $  REQ039:7E3 03 22 B4 82 00 00 00 00            $  
  $  REQ040:7E3 03 22 B4 83 00 00 00 00            $  
  $  REQ041:7E3 03 22 B4 84 00 00 00 00            $  
  $  REQ042:7E3 03 22 B5 00 00 00 00 00            $  
  $  REQ043:7E3 03 22 B5 01 00 00 00 00            $  
  $  REQ044:7E3 03 22 B5 02 00 00 00 00            $  
  $  REQ045:7E3 03 22 B5 03 00 00 00 00            $  
  $  REQ046:7E3 03 22 B5 04 00 00 00 00            $  
  $  REQ047:7E3 03 22 B5 0A 00 00 00 00            $  
  $  REQ048:7E3 03 22 B5 0B 00 00 00 00            $  
  $  REQ049:7E3 03 22 B5 0D 00 00 00 00            $  
  $  REQ050:7E3 03 22 B5 0E 00 00 00 00            $  
  $  REQ051:7E3 03 22 B5 50 00 00 00 00            $  
  $  REQ052:7E3 03 22 B5 51 00 00 00 00            $  
  $  REQ053:7E3 03 22 B5 52 00 00 00 00            $  
  $  REQ054:7E3 03 22 B5 53 00 00 00 00            $  
  $  REQ055:7E3 03 22 B5 54 00 00 00 00            $  
  $  REQ056:7E3 03 22 B5 80 00 00 00 00            $  
  $  REQ057:7E3 03 22 B5 81 00 00 00 00            $  
  $  REQ058:7E3 03 22 B5 82 00 00 00 00            $  
  $  REQ059:7E3 03 22 B5 83 00 00 00 00            $  
  $  REQ060:7E3 03 22 B5 84 00 00 00 00            $  
  $  REQ061:7E3 03 22 B5 86 00 00 00 00            $  
  $  REQ062:7E3 03 22 B5 D0 00 00 00 00            $  
  $  REQ063:7E3 03 22 B7 00 00 00 00 00            $  
  $  REQ064:7E3 03 22 B7 01 00 00 00 00            $  
  $  REQ065:7E3 03 22 B7 02 00 00 00 00            $  
  $  REQ066:7E3 03 22 B7 03 00 00 00 00            $  
  $  REQ067:7E3 03 22 B7 04 00 00 00 00            $  
  $  REQ068:7E3 03 22 B7 05 00 00 00 00            $  
  $  REQ069:7E3 03 22 B7 06 00 00 00 00            $  
  $  REQ070:7E3 03 22 B7 09 00 00 00 00            $  
  $  REQ071:7E3 03 22 B7 0A 00 00 00 00            $  
  $  REQ072:7E3 03 22 B7 10 00 00 00 00            $  
  $  REQ073:7E3 03 22 B7 11 00 00 00 00            $  
  $  REQ074:7E3 03 22 B7 12 00 00 00 00            $  
  $  REQ075:7E3 03 22 B7 13 00 00 00 00            $  
  $  REQ076:7E3 03 22 B7 17 00 00 00 00            $  
  $  REQ077:7E3 03 22 B7 1A 00 00 00 00            $  
  $  REQ078:7E3 03 22 B7 80 00 00 00 00            $  
  $  REQ079:7E3 03 22 B7 81 00 00 00 00            $  
  $  REQ080:7E3 03 22 B8 01 00 00 00 00            $  
  $  REQ081:7E3 03 22 B8 05 00 00 00 00            $  
  $  REQ082:7E3 03 22 B8 08 00 00 00 00            $  
  $  REQ083:7E3 03 22 B8 09 00 00 00 00            $  
  $  REQ084:7E3 03 22 B8 11 00 00 00 00            $  
  $  REQ085:7E3 03 22 B8 12 00 00 00 00            $  
  $  REQ086:7E3 03 22 B8 80 00 00 00 00            $  
  $  REQ087:7E3 03 22 B8 81 00 00 00 00            $  
  $  REQ088:7E3 03 22 B8 82 00 00 00 00            $  
  $  REQ089:7E3 03 22 B8 85 00 00 00 00            $  
  $  REQ090:7E3 03 22 B8 86 00 00 00 00            $  
  $  REQ091:7E3 03 22 B8 8B 00 00 00 00            $  
  $  REQ092:7E3 03 22 B8 8C 00 00 00 00            $  
  $  REQ093:7E3 03 22 B9 00 00 00 00 00            $  
  $  REQ094:7E3 03 22 B9 81 00 00 00 00            $  
  $  REQ095:7E3 03 22 BA 00 00 00 00 00            $  
  $  REQ096:7E3 03 22 BA 02 00 00 00 00            $  
  $  REQ097:7E3 03 22 BA 40 00 00 00 00            $  
  $  REQ098:7E3 03 22 BA 41 00 00 00 00            $  
  $  REQ099:7E3 03 22 BB 03 00 00 00 00            $  
  $  REQ100:7E3 03 22 BB 06 00 00 00 00            $  
  $  REQ101:7E3 03 22 BB 82 00 00 00 00            $  
  $  REQ102:7E3 03 22 BB 83 00 00 00 00            $  
  $  REQ103:7E3 03 22 BB 85 00 00 00 00            $  
  $  REQ104:7E3 03 22 BB 8D 00 00 00 00            $  
  $  REQ105:7E3 03 22 B0 E0 00 00 00 00            $  
  $  REQ106:7E3 03 22 B0 E5 00 00 00 00            $  
  $  REQ107:7E3 03 22 B0 E6 00 00 00 00            $  
  $  REQ108:7E3 03 22 B0 E7 00 00 00 00            $  
  $  REQ109:7E3 03 22 B0 E8 00 00 00 00            $  
  $  REQ110:7E3 03 22 B0 E9 00 00 00 00            $  
  $  REQ111:7E3 03 22 B0 EA 00 00 00 00            $  
  $  REQ112:7E3 03 22 B0 EC 00 00 00 00            $  
  $  REQ113:7E3 03 22 B0 ED 00 00 00 00            $  
  $  REQ114:7E3 03 22 B0 EE 00 00 00 00            $  
  $  REQ115:7E3 03 22 B0 EF 00 00 00 00            $  
  $  REQ116:7E3 03 22 B1 82 00 00 00 00            $  
  $  REQ117:7E3 03 22 B1 83 00 00 00 00            $  
  $  REQ118:7E3 03 22 B1 84 00 00 00 00            $  
  $  REQ119:7E3 03 22 B1 85 00 00 00 00            $  
  $  REQ120:7E3 03 22 B1 86 00 00 00 00            $  
  $  REQ121:7E3 03 22 B1 90 00 00 00 00            $  
  $  REQ122:7E3 03 22 B1 91 00 00 00 00            $  
  $  REQ123:7E3 03 22 B1 92 00 00 00 00            $  

  $  000.混动系统功率                       $    $  千瓦        $    $  ANS000.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  001.动力释放请求                       $    $              $    $  ANS001.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  002.油门踏板需求                       $    $  百分比      $    $  ANS002.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  003.加速踏板传感器1供电电压            $    $  伏          $    $  ANS003.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  004.加速踏板传感器2供电电压            $    $  伏          $    $  ANS004.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  005.制动踏板位置                       $    $  百分比      $    $  ANS005.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  006.刹车灯开关状态                     $    $              $    $  ANS006.BYTE003  $  switxh(x)0x00:@00e7;0x01:@008b; 
  $  007.开关模式状态                       $    $              $    $  ANS007.BYTE003  $  switxh(x)0x00:@027d;0x01:@0209;0x02:@027a;0x03:@0a56; 
  $  008.巡航控制 激活                      $    $              $    $  ANS008.BYTE003  $  switxh(x)0x00:@00e7;0x01:@008b; 
  $  009.巡航控制待命                       $    $              $    $  ANS009.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  010.巡航控制开关状态                   $    $              $    $  ANS010.BYTE003  $  switxh(x)0x00:@001a;0x01:@0392;0x02:@0a72;0x03:@009a; 
  $  011.一档位置                           $    $  毫米        $    $  ANS011.BYTE003  $  y=(x1*256+x2)*0.01-20; 
  $  012.同步器位置传感器正PWM信号          $    $  N/A         $    $  ANS012.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  013.同步器位置传感器负PWM信号          $    $  N/A         $    $  ANS013.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  014.输入轴转速                         $    $  转/分       $    $  ANS014.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  015.输出轴转速                         $    $  转/分       $    $  ANS015.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  016.请求EDU输入轴扭矩                  $    $  牛米        $    $  ANS016.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  017.期望挡位                           $    $              $    $  ANS017.BYTE003  $  switxh(x)0x00:@007c;0x01:@0010;0x02:@0011;0x07:@0912; 
  $  018.EDU实际工作模式                    $    $              $    $  ANS018.BYTE003  $  switxh(x)0x00:@031c;0x01:@00b6;0x02:@00b7;0x03:@00b8; 
  $  019.EDU油温                            $    $  摄氏度      $    $  ANS019.BYTE003  $  y=(x)*1-40; 
  $  020.EDU的实际油压                      $    $  巴          $    $  ANS020.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  021.EDU冷却液温度                      $    $  摄氏度      $    $  ANS021.BYTE003  $  y=(x)*1-40; 
  $  022.请求离合器1电流                    $    $  毫安        $    $  ANS022.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  023.请求离合器2电流                    $    $  毫安        $    $  ANS023.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  024.请求流量阀(换挡方向阀)电流         $    $  毫安        $    $  ANS024.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  025.请求安全阀电流                     $    $  毫安        $    $  ANS025.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  026.请求安全阀电流                     $    $  毫安        $    $  ANS026.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  027.请求EDU油泵状态                    $    $              $    $  ANS027.BYTE003  $  switxh(x)0x00:@002e;0x01:@0037; 
  $  028.TM电机的实际模式                   $    $              $    $  ANS028.BYTE003  $  switxh(x)0x00:@0071;0x01:@0072;0x03:@0030;0x05:@031d;0x06:@0cdb;0x07:@09c2;0x08:@0320;0x09:@0321;0x0A:@0322;0x0B:@0078;0x0C:@0079;0x0D:@0070;0x0E:@007a; 
  $  029.请求TM电机扭矩                     $    $  牛米        $    $  ANS029.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  030.牵引电机速度                       $    $  转/分钟     $    $  ANS030.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  031.TM电机实际可达到最小扭矩           $    $  牛米        $    $  ANS031.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  032.TM电机实际可达到的最大扭矩         $    $  牛米        $    $  ANS032.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  033.TM电机过温状态                     $    $              $    $  ANS033.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  034.TM电机功率受限                     $    $              $    $  ANS034.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  035.TM电机禁止高压状态                 $    $              $    $  ANS035.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  036.TM电机故障灯点亮状态               $    $              $    $  ANS036.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  037.请求TM电机模式                     $    $              $    $  ANS037.BYTE003  $  switxh(x)0x03:@0030;0x05:@031d;0x06:@031e;0x07:@031f;0x08:@0320;0x09:@0321;0x0A:@0322;0x0E:@007a; 
  $  038.请求TM电机扭矩                     $    $  牛米        $    $  ANS038.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  039.请求TM电机转速                     $    $  转/分       $    $  ANS039.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  040.发自HCU的TM电机最小扭矩指令        $    $  牛米        $    $  ANS040.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  041.发自HCU的TM电机最大扭矩指令        $    $  牛米        $    $  ANS041.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  042.实际ISG电机工作模式                $    $              $    $  ANS042.BYTE003  $  switxh(x)0x00:@0071;0x01:@0072;0x03:@0030;0x05:@031d;0x06:@0cdb;0x07:@09c2;0x08:@0320;0x09:@0321;0x0A:@0322;0x0B:@0078;0x0C:@0079;0x0D:@0070;0x0E:@007a; 
  $  043.实际ISG电机扭矩                    $    $  牛顿*米     $    $  ANS043.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  044.ISG电机转速                        $    $  转/分       $    $  ANS044.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  045.ISG实际可达的最小扭矩              $    $  牛米        $    $  ANS045.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  046.ISG实际可达的最大扭矩              $    $  牛米        $    $  ANS046.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  047.ISG电机过温状态                    $    $              $    $  ANS047.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  048.ISG电机功率受限                    $    $              $    $  ANS048.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  049.ISG电机禁止高压状态                $    $              $    $  ANS049.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  050.ISG电机故障灯点亮状态              $    $              $    $  ANS050.BYTE003  $  y=(x)*1; 
  $  051.请求ISG电机模式                    $    $              $    $  ANS051.BYTE003  $  switxh(x)0x03:@0030;0x05:@031d;0x06:@031e;0x07:@031f;0x08:@0320;0x09:@0321;0x0A:@0322;0x0E:@007a; 
  $  052.请求ISG电机扭矩                    $    $  牛米        $    $  ANS052.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  053.请求ISG电机转速                    $    $  转/分       $    $  ANS053.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  054.发自HCU的ISG电机最小扭矩指令       $    $  牛顿*米     $    $  ANS054.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  055.发自HCU的ISG电机最大扭矩指令       $    $  牛顿*米     $    $  ANS055.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  056.实际DCDC工作模式                   $    $              $    $  ANS056.BYTE003  $  switxh(x)0x00:@0030;0x01:@03bb;0x02:@0400;0x03:@007a;0x05:@0070; 
  $  057.实际DCDC高压电流                   $    $  安培        $    $  ANS057.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  058.实际DCDC高压电压                   $    $  伏          $    $  ANS058.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  059.实际DCDC低压电流                   $    $  安培        $    $  ANS059.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  060.实际DCDC低压电压                   $    $  伏          $    $  ANS060.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  061.发动机自动停机功能禁止状态         $    $  %           $    $  ANS061.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  062.DCDC模式请求                       $    $              $    $  ANS062.BYTE003  $  switxh(x)0x00:@0030;0x01:@03bb;0x02:@0400;0x03:@007a;0x05:@0070; 
  $  063.高压系统绝缘电阻值                 $    $  千欧        $    $  ANS063.BYTE003  $  y=(x1*256+x2)*1; 
  $  064.高压电池SOC                        $    $  百分比      $    $  ANS064.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  065.BMS运行状态                        $    $              $    $  ANS065.BYTE003  $  switxh(x)0x00:@0d56;0x01:@015d;0x02:@015e;0x03:@041c;0x04:@03f2;0x06:@0161;0x0A:@0162;0x0C:@0072;0x0D:@0163;0x0E:@03fa;0x0F:@0070; 
  $  066.高压电池继电器状态                 $    $              $    $  ANS066.BYTE003  $  switxh(x)0x00:@09e8;0x01:@09e9;0x02:@0a51;0x03:@0070; 
  $  067.高压互锁回路状态                   $    $              $    $  ANS067.BYTE003  $  switxh(x)0x00:@0037;0x01:@002e; 
  $  068.电池电压                           $    $  伏特        $    $  ANS068.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  069.高压电池电流                       $    $  安培        $    $  ANS069.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  070.高压电池包电池单体最低温度         $    $  摄氏度      $    $  ANS070.BYTE003  $  y=(x1*256+x2)*0.1-40; 
  $  071.高压蓄电池单元最高温度             $    $  摄氏度      $    $  ANS071.BYTE003  $  y=(x1*256+x2)*0.1-40; 
  $  072.BMS峰值充电功率                    $    $  千瓦        $    $  ANS072.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  073.BMS峰值放电功率                    $    $  千瓦        $    $  ANS073.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  074.高压蓄电池有效充电功率             $    $  千瓦        $    $  ANS074.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  075.高压电池有效放电功率               $    $  千瓦        $    $  ANS075.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  076.BMS车载充电插头插上                $    $              $    $  ANS076.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  077.高压蓄电池冷却液温度               $    $  摄氏度      $    $  ANS077.BYTE003  $  y=(x)*1-40; 
  $  078.紧急关闭输入                       $    $              $    $  ANS078.BYTE003  $  y=(x)*1; 
  $  079.请求高压电池主继电器状态           $    $              $    $  ANS079.BYTE003  $  switxh(x)0x00:@0037;0x01:@002e; 
  $  080.发动机实际转速                     $    $  转/分       $    $  ANS080.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  081.发动机实际指示扭矩                 $    $  牛顿*米     $    $  ANS081.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  082.发动机扭矩最小值                   $    $  牛米        $    $  ANS082.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  083.发动机扭矩最大值                   $    $  牛米        $    $  ANS083.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  084.发动机自动停机功能禁止状态         $    $              $    $  ANS084.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  085.EMS故障等级                        $    $              $    $  ANS085.BYTE003  $  switxh(x)0x00:@001a;0x01:@0a71;0x02:@0070;0x03:@01f1;0x04:@01f2;0x05:@01f3; 
  $  086.请求发动机工作                     $    $              $    $  ANS086.BYTE003  $  switxh(x)0x00:@0ab7;0x01:@0ab6; 
  $  087.请求发动机转速                     $    $  转/分       $    $  ANS087.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  088.发动机燃油泵请求                   $    $  牛米        $    $  ANS088.BYTE003  $  y=(x)*1; 
  $  089.请求发动机的扭矩(高速)             $    $  牛米        $    $  ANS089.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  090.请求发动机的扭矩(低速)             $    $  牛米        $    $  ANS090.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  091.请求发动机主动燃油切断             $    $              $    $  ANS091.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  092.发动机主动切断燃油                 $    $              $    $  ANS092.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  093.实际档位                           $    $              $    $  ANS093.BYTE003  $  switxh(x)0x00:@0070;0x01:@020b;0x02:@020c;0x03:@0532;0x05:@0935;0x06:@007c;0x07:@0912;0x08:@0939;0x09:@09c0;0x0A:@09c1; 
  $  094.巡航控制目标速度                   $    $  千米/时     $    $  ANS094.BYTE003  $  y=(x1*256+x2)*0.01-200; 
  $  095.车速                               $    $  千米/时     $    $  ANS095.BYTE003  $  y=(x1*256+x2)*0.01-200; 
  $  096.制动真空泵信息                     $    $              $    $  ANS096.BYTE003  $  switxh(x)0x00:@001a;0x01:@0d08;0x02:@0a75;0x03:@0070; 
  $  097.电子驻车制动(EPB)状态              $    $              $    $  ANS097.BYTE003  $  switxh(x)0x00:@0a25;0x01:@0a23;0x02:@0070; 
  $  098.电子驻车制动(EPB)开关状态          $    $              $    $  ANS098.BYTE003  $  switxh(x)0x00:@00e2;0x01:@0719;0x02:@0319;0x03:@0070; 
  $  099.原始燃油量                         $    $  升          $    $  ANS099.BYTE003  $  y=(x)*1; 
  $  100.发动机罩开启状态                   $    $              $    $  ANS100.BYTE003  $  switxh(x)0x00:@0037;0x01:@002e; 
  $  101.动力系统就绪                       $    $              $    $  ANS101.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  102.混合动力系统故障                   $    $              $    $  ANS102.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  103.整车动力系统功率受限               $    $              $    $  ANS103.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  104.换挡操作                           $    $              $    $  ANS104.BYTE003  $  switxh(x)0x00:@0ac3;0x01:@09c0;0x02:@09c1; 
  $  105.同步器位置自学习状态               $    $              $    $  ANS105.BYTE003  $  y=(x1*256+x2)*1; 
  $  106.空档位置偏移                       $    $  毫米        $    $  ANS106.BYTE003  $  y=(x1*256+x2)*0.01-20; 
  $  107.一档位置                           $    $  毫米        $    $  ANS107.BYTE003  $  y=(x1*256+x2)*0.01-20; 
  $  108.二档位置                           $    $  毫米        $    $  ANS108.BYTE003  $  y=(x1*256+x2)*0.01-20; 
  $  109.同步器1档同步最小位置              $    $  毫米        $    $  ANS109.BYTE003  $  y=(x1*256+x2)*0.01-20; 
  $  110.同步器2档同步最小位置              $    $  毫米        $    $  ANS110.BYTE003  $  y=(x1*256+x2)*0.01-20; 
  $  111.离合器1啮合点压力                  $    $  巴          $    $  ANS111.BYTE003  $  y=(x)*0.1; 
  $  112.同步器自学习完成时里程数           $    $  公里        $    $  ANS112.BYTE003  $  y=(x1*16777216+x2*65536+x3*256+x4)*1; 
  $  113.同步器自学习次数                   $    $              $    $  ANS113.BYTE003  $  y=(x1*256+x2)*1; 
  $  114.离合器自学习完成时里程数           $    $  公里        $    $  ANS114.BYTE003  $  y=(x1*16777216+x2*65536+x3*256+x4)*1; 
  $  115.离合器自学习次数                   $    $              $    $  ANS115.BYTE003  $  y=(x1*256+x2)*1; 
  $  116.12V蓄电池电压                      $    $  伏          $    $  ANS116.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  117.同步器位置传感器5V供电电压         $    $  伏          $    $  ANS117.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  118.主油路压力传感器5V供电电压         $    $  伏          $    $  ANS118.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  119.输出轴转速传感器9V供电电压         $    $  伏          $    $  ANS119.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  120.9V 2号传感器供电                   $    $  伏          $    $  ANS120.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  121.电磁阀供电0                        $    $  伏          $    $  ANS121.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  122.电磁阀供电1                        $    $  伏          $    $  ANS122.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  123.电磁阀供电2                        $    $  伏          $    $  ANS123.BYTE003  $  y=(x1*256+x2)*0.01; 

;******************************************************************************************************************************************************

