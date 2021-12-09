
     系统名称:VCU (车型控制单元)

     系统ID:000043A9

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

			码库: $*$*DTC/000043A9

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

  $  REQ000:7E3 03 22 B0 00 00 00 00 00            $  
  $  REQ001:7E3 03 22 B0 01 00 00 00 00            $  
  $  REQ002:7E3 03 22 B0 02 00 00 00 00            $  
  $  REQ003:7E3 03 22 B0 03 00 00 00 00            $  
  $  REQ004:7E3 03 22 B0 04 00 00 00 00            $  
  $  REQ005:7E3 03 22 B0 07 00 00 00 00            $  
  $  REQ006:7E3 03 22 B0 08 00 00 00 00            $  
  $  REQ007:7E3 03 22 B0 80 00 00 00 00            $  
  $  REQ008:7E3 03 22 B1 00 00 00 00 00            $  
  $  REQ009:7E3 03 22 B1 01 00 00 00 00            $  
  $  REQ010:7E3 03 22 B1 02 00 00 00 00            $  
  $  REQ011:7E3 03 22 B1 03 00 00 00 00            $  
  $  REQ012:7E3 03 22 B1 04 00 00 00 00            $  
  $  REQ013:7E3 03 22 B1 20 00 00 00 00            $  
  $  REQ014:7E3 03 22 B1 40 00 00 00 00            $  
  $  REQ015:7E3 03 22 B1 41 00 00 00 00            $  
  $  REQ016:7E3 03 22 B1 42 00 00 00 00            $  
  $  REQ017:7E3 03 22 B1 82 00 00 00 00            $  
  $  REQ018:7E3 03 22 B1 88 00 00 00 00            $  
  $  REQ019:7E3 03 22 B1 8B 00 00 00 00            $  
  $  REQ020:7E3 03 22 B1 8C 00 00 00 00            $  
  $  REQ021:7E3 03 22 B1 8E 00 00 00 00            $  
  $  REQ022:7E3 03 22 B1 8F 00 00 00 00            $  
  $  REQ023:7E3 03 22 B1 C0 00 00 00 00            $  
  $  REQ024:7E3 03 22 B2 04 00 00 00 00            $  
  $  REQ025:7E3 03 22 B2 05 00 00 00 00            $  
  $  REQ026:7E3 03 22 B3 09 00 00 00 00            $  
  $  REQ027:7E3 03 22 B4 00 00 00 00 00            $  
  $  REQ028:7E3 03 22 B4 01 00 00 00 00            $  
  $  REQ029:7E3 03 22 B4 02 00 00 00 00            $  
  $  REQ030:7E3 03 22 B4 03 00 00 00 00            $  
  $  REQ031:7E3 03 22 B4 04 00 00 00 00            $  
  $  REQ032:7E3 03 22 B4 0A 00 00 00 00            $  
  $  REQ033:7E3 03 22 B4 0C 00 00 00 00            $  
  $  REQ034:7E3 03 22 B4 0E 00 00 00 00            $  
  $  REQ035:7E3 03 22 B4 80 00 00 00 00            $  
  $  REQ036:7E3 03 22 B4 81 00 00 00 00            $  
  $  REQ037:7E3 03 22 B4 82 00 00 00 00            $  
  $  REQ038:7E3 03 22 B5 80 00 00 00 00            $  
  $  REQ039:7E3 03 22 B5 81 00 00 00 00            $  
  $  REQ040:7E3 03 22 B5 82 00 00 00 00            $  
  $  REQ041:7E3 03 22 B5 83 00 00 00 00            $  
  $  REQ042:7E3 03 22 B5 84 00 00 00 00            $  
  $  REQ043:7E3 03 22 B5 87 00 00 00 00            $  
  $  REQ044:7E3 03 22 B5 D0 00 00 00 00            $  
  $  REQ045:7E3 03 22 B7 00 00 00 00 00            $  
  $  REQ046:7E3 03 22 B7 01 00 00 00 00            $  
  $  REQ047:7E3 03 22 B7 02 00 00 00 00            $  
  $  REQ048:7E3 03 22 B7 03 00 00 00 00            $  
  $  REQ049:7E3 03 22 B7 05 00 00 00 00            $  
  $  REQ050:7E3 03 22 B7 06 00 00 00 00            $  
  $  REQ051:7E3 03 22 B7 0C 00 00 00 00            $  
  $  REQ052:7E3 03 22 B7 0D 00 00 00 00            $  
  $  REQ053:7E3 03 22 B7 0E 00 00 00 00            $  
  $  REQ054:7E3 03 22 B7 0F 00 00 00 00            $  
  $  REQ055:7E3 03 22 B7 10 00 00 00 00            $  
  $  REQ056:7E3 03 22 B7 11 00 00 00 00            $  
  $  REQ057:7E3 03 22 B7 12 00 00 00 00            $  
  $  REQ058:7E3 03 22 B7 13 00 00 00 00            $  
  $  REQ059:7E3 03 22 B7 17 00 00 00 00            $  
  $  REQ060:7E3 03 22 B7 80 00 00 00 00            $  
  $  REQ061:7E3 03 22 B7 81 00 00 00 00            $  
  $  REQ062:7E3 03 22 B9 00 00 00 00 00            $  
  $  REQ063:7E3 03 22 B9 81 00 00 00 00            $  
  $  REQ064:7E3 03 22 BA 00 00 00 00 00            $  
  $  REQ065:7E3 03 22 BA 40 00 00 00 00            $  
  $  REQ066:7E3 03 22 BA 41 00 00 00 00            $  
  $  REQ067:7E3 03 22 BB 01 00 00 00 00            $  
  $  REQ068:7E3 03 22 BB 02 00 00 00 00            $  
  $  REQ069:7E3 03 22 BB 05 00 00 00 00            $  
  $  REQ070:7E3 03 22 BB 06 00 00 00 00            $  
  $  REQ071:7E3 03 22 BB 0A 00 00 00 00            $  
  $  REQ072:7E3 03 22 BB 80 00 00 00 00            $  
  $  REQ073:7E3 03 22 BB 8E 00 00 00 00            $  
  $  REQ074:7E3 03 22 BB 90 00 00 00 00            $  
  $  REQ075:7E3 03 22 BB 91 00 00 00 00            $  
  $  REQ076:7E3 03 22 B7 1B 00 00 00 00            $  
  $  REQ077:7E3 03 22 B0 0C 00 00 00 00            $  
  $  REQ078:7E3 03 22 B1 93 00 00 00 00            $  
  $  REQ079:7E3 03 22 B1 94 00 00 00 00            $  
  $  REQ080:7E3 03 22 B4 05 00 00 00 00            $  
  $  REQ081:7E3 03 22 B4 07 00 00 00 00            $  
  $  REQ082:7E3 03 22 B0 0D 00 00 00 00            $  
  $  REQ083:7E3 03 22 B0 0E 00 00 00 00            $  
  $  REQ084:7E3 03 22 B0 0F 00 00 00 00            $  
  $  REQ085:7E3 03 22 B0 10 00 00 00 00            $  
  $  REQ086:7E3 03 22 B0 11 00 00 00 00            $  
  $  REQ087:7E3 03 22 B0 12 00 00 00 00            $  
  $  REQ088:7E3 03 22 B0 13 00 00 00 00            $  
  $  REQ089:7E3 03 22 B1 8D 00 00 00 00            $  
  $  REQ090:7E3 03 22 BA 01 00 00 00 00            $  
  $  REQ091:7E3 03 22 B0 81 00 00 00 00            $  
  $  REQ092:7E3 03 22 B1 95 00 00 00 00            $  
  $  REQ093:7E3 03 22 01 12 00 00 00 00            $  
  $  REQ094:7E3 03 22 E1 01 00 00 00 00            $  
  $  REQ095:7E3 03 22 D0 01 00 00 00 00            $  
  $  REQ096:7E3 03 22 B2 00 00 00 00 00            $  
  $  REQ097:7E3 03 22 B2 01 00 00 00 00            $  
  $  REQ098:7E3 03 22 B2 0E 00 00 00 00            $  
  $  REQ099:7E3 03 22 B2 10 00 00 00 00            $  
  $  REQ100:7E3 03 22 B2 11 00 00 00 00            $  
  $  REQ101:7E3 03 22 B2 80 00 00 00 00            $  
  $  REQ102:7E3 03 22 B2 81 00 00 00 00            $  
  $  REQ103:7E3 03 22 B2 82 00 00 00 00            $  
  $  REQ104:7E3 03 22 B2 83 00 00 00 00            $  
  $  REQ105:7E3 03 22 B5 00 00 00 00 00            $  
  $  REQ106:7E3 03 22 B5 01 00 00 00 00            $  
  $  REQ107:7E3 03 22 B5 02 00 00 00 00            $  
  $  REQ108:7E3 03 22 B5 03 00 00 00 00            $  
  $  REQ109:7E3 03 22 B5 04 00 00 00 00            $  
  $  REQ110:7E3 03 22 B5 05 00 00 00 00            $  
  $  REQ111:7E3 03 22 B5 07 00 00 00 00            $  
  $  REQ112:7E3 03 22 B5 0A 00 00 00 00            $  
  $  REQ113:7E3 03 22 B5 0C 00 00 00 00            $  
  $  REQ114:7E3 03 22 B5 0E 00 00 00 00            $  
  $  REQ115:7E3 03 22 B5 50 00 00 00 00            $  
  $  REQ116:7E3 03 22 B5 51 00 00 00 00            $  
  $  REQ117:7E3 03 22 B5 52 00 00 00 00            $  
  $  REQ118:7E3 03 22 BB 0B 00 00 00 00            $  
  $  REQ119:7E3 03 22 BB 0C 00 00 00 00            $  
  $  REQ120:7E3 03 22 BB 0D 00 00 00 00            $  
  $  REQ121:7E3 03 22 BB 92 00 00 00 00            $  
  $  REQ122:7E3 03 22 B0 EC 00 00 00 00            $  
  $  REQ123:7E3 03 22 B0 ED 00 00 00 00            $  
  $  REQ124:7E3 03 22 E1 06 00 00 00 00            $  
  $  REQ125:7E3 03 22 B6 00 00 00 00 00            $  
  $  REQ126:7E3 03 22 B6 01 00 00 00 00            $  
  $  REQ127:7E3 03 22 B6 02 00 00 00 00            $  
  $  REQ128:7E3 03 22 B6 03 00 00 00 00            $  
  $  REQ129:7E3 03 22 B6 04 00 00 00 00            $  
  $  REQ130:7E3 03 22 B6 05 00 00 00 00            $  
  $  REQ131:7E3 03 22 B6 07 00 00 00 00            $  
  $  REQ132:7E3 03 22 B6 0A 00 00 00 00            $  
  $  REQ133:7E3 03 22 B6 0C 00 00 00 00            $  
  $  REQ134:7E3 03 22 B6 0E 00 00 00 00            $  
  $  REQ135:7E3 03 22 B6 80 00 00 00 00            $  
  $  REQ136:7E3 03 22 B6 81 00 00 00 00            $  
  $  REQ137:7E3 03 22 B6 82 00 00 00 00            $  
  $  REQ138:7E3 03 22 B1 C2 00 00 00 00            $  
  $  REQ139:7E3 03 22 B6 83 00 00 00 00            $  
  $  REQ140:7E3 03 22 B6 84 00 00 00 00            $  

  $  000.动力系统待命状态                     $    $              $    $  ANS000.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  001.动力系统状态                         $    $              $    $  ANS001.BYTE003  $  switxh(x)0x00:@0a78; 
  $  002.车辆严重故障状态                     $    $              $    $  ANS002.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  003.动力系统最大可用扭矩                 $    $  牛米        $    $  ANS003.BYTE003  $  y=(x1*256+x2)*1; 
  $  004.驾驶员扭矩需求                       $    $  牛米        $    $  ANS004.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  005.最大再生制动扭矩值                   $    $  牛米        $    $  ANS005.BYTE003  $  y=(x1*256+x2)*1-30000; 
  $  006.动力系统功率                         $    $  千瓦        $    $  ANS006.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  007.系统复位原因                         $    $              $    $  ANS007.BYTE003  $  switxh(x1*256+x2)0x00:@02dd;0x01:@02de;0x02:@02df;0x04:@02e0;0x08:@02e1;0x10:@02e2;0x20:@02e3;0x40:@02e4;0xBC:@02e5;0x178:@02e6;0x32C:@02e7;0xA18:@02e8;0x1430:@02e9; 
  $  008.油门踏板需求                         $    $  百分比      $    $  ANS008.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  009.加速踏板位置1传感器电压              $    $  伏          $    $  ANS009.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  010.加速踏板位置2传感器电压              $    $  伏          $    $  ANS010.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  011.加速踏板传感器1供电电压              $    $  伏          $    $  ANS011.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  012.加速踏板传感器2供电电压              $    $  伏          $    $  ANS012.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  013.制动踏板位置                         $    $  百分比      $    $  ANS013.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  014.制动开关状态                         $    $              $    $  ANS014.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  015.制动开关 1 状态                      $    $              $    $  ANS015.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  016.制动开关 2 状态                      $    $              $    $  ANS016.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  017.电池电压                             $    $  伏特        $    $  ANS017.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  018.巡航状态                             $    $              $    $  ANS018.BYTE003  $  switxh(x)0x00:@002e;0x01:@0030;0x02:@008b; 
  $  019.巡航控制开关状态                     $    $              $    $  ANS019.BYTE003  $  switxh(x)0x00:@00c8;0x01:@0392;0x02:@0a72;0x03:@009a; 
  $  020.点火开关状态                         $    $              $    $  ANS020.BYTE003  $  switxh(x)0x00:@002e;0x01:@055e;0x02:@0970;0x03:@095f; 
  $  021.能量回收模式(KERS)                   $    $              $    $  ANS021.BYTE003  $  switxh(x)0x00:@0a76;0x01:@0a41;0x02:@0a77; 
  $  022.车辆驾驶模式                         $    $              $    $  ANS022.BYTE003  $  switxh(x)0x00:@09c7;0x01:@0209;0x02:@027a;0x03:@0a56; 
  $  023.冷却风扇请求占空比                   $    $  百分比      $    $  ANS023.BYTE003  $  y=(x)*0.39215; 
  $  024.输入轴转速                           $    $  转/分       $    $  ANS024.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  025.输出轴转速                           $    $  转/分       $    $  ANS025.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  026.EDU冷却液温度                        $    $  摄氏度      $    $  ANS026.BYTE003  $  y=(x)*1-40; 
  $  027.实际牵引电机控制器工作模式           $    $              $    $  ANS027.BYTE003  $  switxh(x)0x00:@0071;0x01:@0072;0x03:@0030;0x05:@031d;0x06:@0930;0x07:@09c2;0x08:@0320;0x09:@0321;0x0A:@0322;0x0B:@0af0;0x0C:@0079;0x0D:@0070;0x0E:@007a; 
  $  028.实际TM电机扭矩                       $    $  牛顿*米     $    $  ANS028.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  029.牵引电机速度                         $    $  转/分钟     $    $  ANS029.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  030.TM电机实际可达到最小扭矩             $    $  牛米        $    $  ANS030.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  031.TM电机实际可达到的最大扭矩           $    $  牛米        $    $  ANS031.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  032.TM电机过温状态                       $    $              $    $  ANS032.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  033.TM三相短路标识                       $    $              $    $  ANS033.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  034.TM电机故障灯点亮状态                 $    $              $    $  ANS034.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  035.VCU-TM模式请求                       $    $              $    $  ANS035.BYTE003  $  switxh(x)0x03:@0030;0x05:@031d;0x06:@0930;0x07:@09c2;0x08:@0320;0x09:@0321;0x0A:@0322;0x0E:@007a; 
  $  036.TM电机扭矩需求                       $    $  牛米        $    $  ANS036.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  037.TM电机目标转速                       $    $  转/分       $    $  ANS037.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  038.实际DCDC工作模式                     $    $              $    $  ANS038.BYTE003  $  switxh(x)0x00:@0030;0x01:@03bb;0x02:@0400;0x03:@007a;0x05:@0070; 
  $  039.实际DCDC高压电流                     $    $  安培        $    $  ANS039.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  040.实际DCDC高压电压                     $    $  伏          $    $  ANS040.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  041.实际DCDC低压电流                     $    $  安培        $    $  ANS041.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  042.实际DCDC低压电压                     $    $  伏          $    $  ANS042.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  043.DCDC温度                             $    $  摄氏度      $    $  ANS043.BYTE003  $  y=(x)*1-40; 
  $  044.DCDC模式请求                         $    $              $    $  ANS044.BYTE003  $  switxh(x)0x00:@0030;0x01:@03bb;0x02:@0400;0x03:@007a;0x05:@0070; 
  $  045.高压系统绝缘电阻值                   $    $  千欧        $    $  ANS045.BYTE003  $  y=(x1*256+x2)*1; 
  $  046.高压电池SOC                          $    $  百分比      $    $  ANS046.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  047.BMS运行状态                          $    $              $    $  ANS047.BYTE003  $  switxh(x)0x00:@00f0;0x01:@015d;0x02:@015e;0x03:@041c;0x04:@0160;0x06:@0161;0x0A:@0162;0x0C:@0072;0x0D:@0163;0x0E:@03fa;0x0F:@0070; 
  $  048.高压电池继电器状态                   $    $              $    $  ANS048.BYTE003  $  switxh(x)0x00:@09e8;0x01:@09e9;0x02:@0a51;0x03:@0070; 
  $  049.电池电压                             $    $  伏特        $    $  ANS049.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  050.高压电池电流                         $    $  安培        $    $  ANS050.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  051.高压电池包最大充电电流               $    $  安培        $    $  ANS051.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  052.高压电池包最大放电电流               $    $  安培        $    $  ANS052.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  053.BMS充电缓冲能力                      $    $  百分比      $    $  ANS053.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  054.BMS放电缓冲能力                      $    $  百分比      $    $  ANS054.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  055.BMS峰值充电功率                      $    $  千瓦        $    $  ANS055.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  056.BMS峰值放电功率                      $    $  千瓦        $    $  ANS056.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  057.高压蓄电池有效充电功率               $    $  千瓦        $    $  ANS057.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  058.高压电池有效放电功率                 $    $  千瓦        $    $  ANS058.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  059.高压电池包快充充电插头插入状态       $    $              $    $  ANS059.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  060.紧急关闭输入                         $    $              $    $  ANS060.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  061.请求高压电池主继电器状态             $    $              $    $  ANS061.BYTE003  $  switxh(x)0x00:@02ea;0x01:@0206; 
  $  062.换档杆位置                           $    $              $    $  ANS062.BYTE003  $  switxh(x)0x00:@0070;0x01:@020b;0x02:@020c;0x03:@0532;0x05:@0935;0x06:@007c;0x07:@0912;0x08:@0939;0x09:@09c0;0x0A:@09c1; 
  $  063.巡航控制目标速度                     $    $  千米/时     $    $  ANS063.BYTE003  $  y=(x1*256+x2)*0.01-200; 
  $  064.车速                                 $    $  千米/时     $    $  ANS064.BYTE003  $  y=(x1*256+x2)*0.01-200; 
  $  065.电子驻车制动(EPB)状态                $    $              $    $  ANS065.BYTE003  $  switxh(x)0x00:@022e;0x01:@0a23;0x02:@0a25;0x03:@0a1b; 
  $  066.电子驻车制动(EPB)开关状态            $    $              $    $  ANS066.BYTE003  $  switxh(x)0x00:@0027;0x01:@0719;0x02:@0319;0x03:@0070; 
  $  067.空调压缩机实际功率                   $    $  千瓦        $    $  ANS067.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  068.空调压缩机请求状态                   $    $              $    $  ANS068.BYTE003  $  switxh(x)0x00:@0027;0x01:@0402;0x02:@0403;0x03:@0404; 
  $  069.环境温度                             $    $  摄氏度      $    $  ANS069.BYTE003  $  y=(x)*1-40; 
  $  070.发动机罩盖打开开关                   $    $              $    $  ANS070.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  071.空调压力                             $    $  千帕        $    $  ANS071.BYTE003  $  y=(x1*256+x2)*1; 
  $  072.空调压缩机功率限制                   $    $  千瓦        $    $  ANS072.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  073.空调实际的制热功率                   $    $  千瓦        $    $  ANS073.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  074.TM电机冷却泵继电器控制电路状态       $    $              $    $  ANS074.BYTE003  $  switxh(x)0x00:@002e;0x01:@0037;0x02:@0961;0x03:@0070; 
  $  075.冷却风扇驱动电路状态                 $    $              $    $  ANS075.BYTE003  $  switxh(x)0x00:@002e;0x01:@0037;0x02:@0a80; 
  $  076.BMS车载充电插头插上                  $    $              $    $  ANS076.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  077.动力系统最大拖拽扭矩                 $    $  牛米        $    $  ANS077.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  078.快充口正极温度                       $    $  摄氏度      $    $  ANS078.BYTE003  $  y=(x)*1-40; 
  $  079.快充口负极温度                       $    $  摄氏度      $    $  ANS079.BYTE003  $  y=(x)*1-40; 
  $  080.牵引电机定子温度                     $    $  摄氏度      $    $  ANS080.BYTE003  $  y=(x)*1-40; 
  $  081.牵引电机逆变器温度                   $    $  摄氏度      $    $  ANS081.BYTE003  $  y=(x)*1-40; 
  $  082.当前速度增量                         $    $  千米/时     $    $  ANS082.BYTE003  $  y=(x1*256+x2)*0.01-200; 
  $  083.当前速度衰减量                       $    $  千米/时     $    $  ANS083.BYTE003  $  y=(x1*256+x2)*0.01-200; 
  $  084.当前位移增加量                       $    $  米          $    $  ANS084.BYTE003  $  y=(x1*256+x2)*0.01-200; 
  $  085.当前位移下降量                       $    $  米          $    $  ANS085.BYTE003  $  y=(x1*256+x2)*0.01-200; 
  $  086.扭矩超限时间过长标记                 $    $              $    $  ANS086.BYTE003  $  y=(x)*1; 
  $  087.巡航控制系统扭矩需求（TQM)           $    $  牛米        $    $  ANS087.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  088.巡航控制系统扭矩需求（TQD)           $    $  牛米        $    $  ANS088.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  089.远程起动请求                         $    $              $    $  ANS089.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  090.制动压力                             $    $  千帕        $    $  ANS090.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  091.重启详细原因                         $    $              $    $  ANS091.BYTE003  $  y=(x1*256+x2)*1; 
  $  092.车载充电器电子锁状态                 $    $              $    $  ANS092.BYTE003  $  switxh(x)0x00:@0a1d;0x01:@0110; 
  $  093.电池电压                             $    $  伏特        $    $  ANS093.BYTE003  $  y=(x)*0.1; 
  $  094.里程表读数                           $    $  千米        $    $  ANS094.BYTE003  $  y=(x1*65536+x2*256+x3)*1; 
  $  095.点火开关状态                         $    $              $    $  ANS095.BYTE003  $  y=(x)*1; 
  $  096.EDU实际挡位                          $    $              $    $  ANS096.BYTE003  $  switxh(x)0x00:@007c;0x01:@0010;0x02:@0011;0x03:@038c; 
  $  097.EDU同步器位置                        $    $  毫米        $    $  ANS097.BYTE003  $  y=(x1*256+x2)*0.01-20; 
  $  098.换挡激活状态                         $    $              $    $  ANS098.BYTE003  $  switxh(x)0x00:@00e7;0x01:@09c0;0x02:@09c1; 
  $  099.换挡控制模块实际模式                 $    $              $    $  ANS099.BYTE003  $  switxh(x)0x00:@0071;0x01:@0030;0x02:@0ac8;0x03:@0320;0x04:@0ac9;0x06:@096d; 
  $  100.换挡控制模块实际扭矩                 $    $  毫牛米      $    $  ANS100.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  101.EDU目标挡位                          $    $              $    $  ANS101.BYTE003  $  switxh(x)0x01:@0010;0x02:@0011;0x0D:@007c;0x0E:@0912;0x0F:@0939; 
  $  102.请求换挡控制模块模式                 $    $              $    $  ANS102.BYTE003  $  switxh(x)0x00:@0030;0x01:@0ac8;0x02:@0320;0x03:@0ac9; 
  $  103.请求换挡控制模块扭矩                 $    $              $    $  ANS103.BYTE003  $  y=(x1*256+x2)*0.1-3267.7; 
  $  104.请求同步器的位置                     $    $              $    $  ANS104.BYTE003  $  y=(x1*256+x2)*0.01-20; 
  $  105.TM2电机实际模式                      $    $              $    $  ANS105.BYTE003  $  switxh(x)0x00:@0071;0x01:@0072;0x03:@0030;0x05:@031d;0x06:@0930;0x07:@09c2;0x08:@0320;0x09:@0321;0x0A:@0322;0x0B:@0af0;0x0C:@0079;0x0D:@0070;0x0E:@007a; 
  $  106.TM2电机实际扭矩                      $    $  牛米        $    $  ANS106.BYTE003  $  y=(x1*256+x2)*0.1-3267.7; 
  $  107.TM2电机实际转速                      $    $  转/分钟     $    $  ANS107.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  108.TM2电机实际可用最小扭矩              $    $  牛米        $    $  ANS108.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  109.TM2电机实际可用最大扭矩              $    $  牛米        $    $  ANS109.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  110.TM2电机定子温度                      $    $  摄氏度      $    $  ANS110.BYTE003  $  y=(x)*1-40; 
  $  111.TM2电机逆变器温度                    $    $  摄氏度      $    $  ANS111.BYTE003  $  y=(x)*1-40; 
  $  112.TM2电机过温状态                      $    $              $    $  ANS112.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  113.TM2电机交流电路短路就绪状态          $    $              $    $  ANS113.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  114.TM2电机故障灯点亮状态                $    $              $    $  ANS114.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  115.请求TM2电机模式                      $    $              $    $  ANS115.BYTE003  $  switxh(x)0x03:@0030;0x05:@031d;0x06:@0930;0x07:@09c2;0x08:@0320;0x09:@0321;0x0A:@0322;0x0E:@007a; 
  $  116.请求TM2电机扭矩                      $    $  牛米        $    $  ANS116.BYTE003  $  y=(x1*256+x2)*0.1-3277; 
  $  117.请求TM2电机速度                      $    $  转/分钟     $    $  ANS117.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  118.主动进气格栅系统实际位置             $    $  %           $    $  ANS118.BYTE003  $  y=(x)*0.3922; 
  $  119.主动进气格栅系统模式                 $    $              $    $  ANS119.BYTE003  $  switxh(x)0x00:@001a;0x01:@0070;0x02:@02b6; 
  $  120.主动进气格栅系统移动标志             $    $              $    $  ANS120.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  121.自适应巡航目标位置                   $    $  %           $    $  ANS121.BYTE003  $  y=(x)*0.3922; 
  $  122.同步器自学习完成时里程数             $    $              $    $  ANS122.BYTE003  $  y=(x1*16777216+x2*65536+x3*256+x4)*1; 
  $  123.同步器自学习次数                     $    $              $    $  ANS123.BYTE003  $  y=(x1*256+x2)*1; 
  $  124.冷却泵2 PWM控制                      $    $  %           $    $  ANS124.BYTE003  $  y=(x)*1; 
  $  125.前轴电机实际工作模式                 $    $              $    $  ANS125.BYTE003  $  y=(x)*1; 
  $  126.前轴电机实际扭矩                     $    $  牛米        $    $  ANS126.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  127.前轴电机实际转速                     $    $  转/分钟     $    $  ANS127.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  128.前轴电机实际可用最小扭矩             $    $  牛米        $    $  ANS128.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  129.前轴电机实际可用最大扭矩             $    $  牛米        $    $  ANS129.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  130.前轴电机定子温度                     $    $  摄氏度      $    $  ANS130.BYTE003  $  y=(x)*1-40; 
  $  131.前轴电机逆变器温度                   $    $  摄氏度      $    $  ANS131.BYTE003  $  y=(x)*1-40; 
  $  132.前轴电机过温状态                     $    $              $    $  ANS132.BYTE003  $  y=(x)*1; 
  $  133.前轴电机交流电短路就绪状态           $    $              $    $  ANS133.BYTE003  $  y=(x)*1; 
  $  134.前轴电机故障灯状态                   $    $              $    $  ANS134.BYTE003  $  y=(x)*1; 
  $  135.请求的前轴电机工作模式               $    $              $    $  ANS135.BYTE003  $  y=(x)*1; 
  $  136.请求的前轴电机扭矩                   $    $  牛米        $    $  ANS136.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  137.请求的前轴电机转速                   $    $  转/分钟     $    $  ANS137.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  138.冷却泵2 请求占空比                   $    $  %           $    $  ANS138.BYTE003  $  y=(x)*0.39215; 
  $  139.请求的前轴电机最大扭矩               $    $  牛米        $    $  ANS139.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 
  $  140.请求的前轴电机最小扭矩               $    $  牛米        $    $  ANS140.BYTE003  $  y=(x1*256+x2)*0.1-3276.7; 

;******************************************************************************************************************************************************

