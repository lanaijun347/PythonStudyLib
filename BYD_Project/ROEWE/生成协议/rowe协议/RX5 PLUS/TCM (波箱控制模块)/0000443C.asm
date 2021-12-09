
     系统名称:TCM (波箱控制模块)

     系统ID:0000443C

;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~7E9,718,748

进入命令:

  $~ REQ000:7E1 02 10 03 00 00 00 00 00       $~ ANS000:7E9 02 10 03 00 00 00 00 00
  $~ REQ001:7E1 03 22 F1 91 00 00 00 00       $~ ANS001:7E9 03 22 F1 91 00 00 00 00

		提示:版本号由ANS001.BYTE03-BYTE06,4个字节的十六进制控制,或BYTE03-BYTE10,8个字节的ASCII控制.

空闲命令:

  $! REQ000:7E1 02 3E 00 00 00 00 00 00       $! ANS000:7E9 02 3E 00 00 00 00 00 00


;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~7E9,718,748

进入命令:

  $~ REQ000:7E1 02 10 01 00 00 00 00 00       $~ ANS000:7E9 02 10 01 00 00 00 00 00
  $~ REQ001:7E1 03 22 F1 91 00 00 00 00       $~ ANS001:7E9 03 22 F1 91 00 00 00 00

		提示:版本号由ANS001.BYTE03-BYTE06,4个字节的十六进制控制,或BYTE03-BYTE10,8个字节的ASCII控制.

空闲命令:

  $! REQ000:7E1 02 3E 00 00 00 00 00 00       $! ANS000:7E9 02 3E 00 00 00 00 00 00


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
		<param type="command" value="ENTER_CMD_00_000,ENTER_CMD_00_001"/>
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
		<param type="command" value="ENTER_CMD_01_000,ENTER_CMD_00_001"/>
	</ACTIVE_ADDNODE>
	<VERSION num="0">
		<call_protocol label="reload_path" function="get_info_scanf_version">
		<!-- 用于表示版本号所在存储区域 对应命令表中的 buffer_offset --> 
		<param type="string" value="1"/>
		<!-- 用于表示版本号开始字节在帧中的位置 -->
		<param type="string" value="3"/>
		<!-- 用于表示版本号字节长度 -->
		<param type="string" value="4,8"/>
		<!-- 用于表示扫版本号类型 -->
		<param type="string" value="2,0"/>
		<param type="string" value="{&quot;10365602&quot;: &quot;0000443C&quot;, &quot;10513229&quot;: &quot;0000443D&quot;}"/>
		</call_protocol>
	</VERSION>
	<VERSION num="1">
		<call_protocol label="reload_path" function="get_info_scanf_version">
		<!-- 用于表示版本号所在存储区域 对应命令表中的 buffer_offset --> 
		<param type="string" value="1"/>
		<!-- 用于表示版本号开始字节在帧中的位置 -->
		<param type="string" value="3"/>
		<!-- 用于表示版本号字节长度 -->
		<param type="string" value="4,8"/>
		<!-- 用于表示扫版本号类型 -->
		<param type="string" value="2,0"/>
		<param type="string" value="{&quot;10365602&quot;: &quot;0000443C&quot;, &quot;10513229&quot;: &quot;0000443D&quot;}"/>
		</call_protocol>
	</VERSION>
</VCI>

;******************************************************************************************************************************************************

读取故障码:

<RDTC>
	<FUNCTION type="0" num="0">
		<param type="system_path" value=""/>
	</FUNCTION>
</RDTC>

  $#  REQ000:7E1 03 19 02 2C 00 00 00 00            $#  

			故障码表示:帧长决定故障个数,$#BYTE03$#开始表示故障码,每$#4$#个字节表示一个故障码,前$#3$#个字节表示码号.

			码库: $*$*DTC/0000443C

			读码方式:case 13

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E1 04 14 FF FF FF 00 00 00            $$  

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E1 03 22 F1 8C 00 00 00 00            $%  
  $%  REQ001:7E1 03 22 F1 90 00 00 00 00            $%  
  $%  REQ002:7E1 03 22 F1 87 00 00 00 00            $%  
  $%  REQ003:7E1 03 22 F1 8B 00 00 00 00            $%  
  $%  REQ004:7E1 03 22 F1 91 00 00 00 00            $%  
  $%  REQ005:7E1 03 22 F1 A0 00 00 00 00            $%  
  $%  REQ006:7E1 03 22 F1 A1 00 00 00 00            $%  
  $%  REQ007:7E1 03 22 F1 AA 00 00 00 00            $%  
  $%  REQ008:7E1 03 22 F1 10 00 00 00 00            $%  
  $%  REQ009:7E1 03 22 F1 A9 00 00 00 00            $%  

  $%  000:电控单元序列号                $%    $%  ANS000.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16); 
  $%  001:车辆识别码(VIN)               $%    $%  ANS001.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17); 
  $%  002:电控单元零件号                $%    $%  ANS002.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  003:电控单元制造日期              $%    $%  ANS003.BYTE003  $%  HEX(x1,x2,x3); 
  $%  004:电控单元硬件号                $%    $%  ANS004.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  005:电控单元应用软件号            $%    $%  ANS005.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  006:电控单元标定软件号            $%    $%  ANS006.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  007:电控单元刷新过程文件号        $%    $%  ANS007.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  008:刷新工具参考号记录            $%    $%  ANS008.BYTE008  $%  HEX(x1,x2,x3,x4,x5,x6); 
  $%  009:刷新里程数记录                $%    $%  ANS008.BYTE014  $%  y=(x1*65536+x2*256+x3)*1; 
  $%  010:电控单元配置文件号            $%    $%  ANS009.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 

;******************************************************************************************************************************************************

数据流:

  $  REQ000:7E1 03 22 B1 27 00 00 00 00            $  
  $  REQ001:7E1 03 22 B1 28 00 00 00 00            $  
  $  REQ002:7E1 03 22 B1 25 00 00 00 00            $  
  $  REQ003:7E1 03 22 B1 26 00 00 00 00            $  
  $  REQ004:7E1 03 22 B1 3C 00 00 00 00            $  
  $  REQ005:7E1 03 22 28 10 00 00 00 00            $  
  $  REQ006:7E1 03 22 B1 35 00 00 00 00            $  
  $  REQ007:7E1 03 22 B1 07 00 00 00 00            $  
  $  REQ008:7E1 03 22 28 B9 00 00 00 00            $  
  $  REQ009:7E1 03 22 28 E7 00 00 00 00            $  
  $  REQ010:7E1 03 22 B1 31 00 00 00 00            $  
  $  REQ011:7E1 03 22 B1 3D 00 00 00 00            $  
  $  REQ012:7E1 03 22 B2 1E 00 00 00 00            $  
  $  REQ013:7E1 03 22 B2 1D 00 00 00 00            $  
  $  REQ014:7E1 03 22 34 A6 00 00 00 00            $  
  $  REQ015:7E1 03 22 34 A7 00 00 00 00            $  
  $  REQ016:7E1 03 22 34 A8 00 00 00 00            $  
  $  REQ017:7E1 03 22 23 E6 00 00 00 00            $  
  $  REQ018:7E1 03 22 23 E2 00 00 00 00            $  
  $  REQ019:7E1 03 22 23 F6 00 00 00 00            $  
  $  REQ020:7E1 03 22 34 A9 00 00 00 00            $  
  $  REQ021:7E1 03 22 23 E7 00 00 00 00            $  
  $  REQ022:7E1 03 22 23 E3 00 00 00 00            $  
  $  REQ023:7E1 03 22 23 F7 00 00 00 00            $  
  $  REQ024:7E1 03 22 33 CE 00 00 00 00            $  
  $  REQ025:7E1 03 22 33 BB 00 00 00 00            $  
  $  REQ026:7E1 03 22 B1 53 00 00 00 00            $  
  $  REQ027:7E1 03 22 B2 14 00 00 00 00            $  
  $  REQ028:7E1 03 22 B1 0A 00 00 00 00            $  
  $  REQ029:7E1 03 22 23 C8 00 00 00 00            $  
  $  REQ030:7E1 03 22 B1 10 00 00 00 00            $  
  $  REQ031:7E1 03 22 B1 11 00 00 00 00            $  
  $  REQ032:7E1 03 22 B1 12 00 00 00 00            $  
  $  REQ033:7E1 03 22 B1 13 00 00 00 00            $  
  $  REQ034:7E1 03 22 B1 23 00 00 00 00            $  
  $  REQ035:7E1 03 22 B1 24 00 00 00 00            $  
  $  REQ036:7E1 03 22 33 C3 00 00 00 00            $  
  $  REQ037:7E1 03 22 33 C4 00 00 00 00            $  
  $  REQ038:7E1 03 22 33 C5 00 00 00 00            $  
  $  REQ039:7E1 03 22 33 C6 00 00 00 00            $  
  $  REQ040:7E1 03 22 33 C7 00 00 00 00            $  
  $  REQ041:7E1 03 22 B1 54 00 00 00 00            $  
  $  REQ042:7E1 03 22 23 C7 00 00 00 00            $  
  $  REQ043:7E1 03 22 B2 1F 00 00 00 00            $  
  $  REQ044:7E1 03 22 29 31 00 00 00 00            $  
  $  REQ045:7E1 03 22 29 32 00 00 00 00            $  
  $  REQ046:7E1 03 22 11 41 00 00 00 00            $  
  $  REQ047:7E1 03 22 28 04 00 00 00 00            $  
  $  REQ048:7E1 03 22 28 05 00 00 00 00            $  
  $  REQ049:7E1 03 22 23 D0 00 00 00 00            $  
  $  REQ050:7E1 03 22 23 D1 00 00 00 00            $  
  $  REQ051:7E1 03 22 23 D2 00 00 00 00            $  
  $  REQ052:7E1 03 22 23 D3 00 00 00 00            $  
  $  REQ053:7E1 03 22 B1 3F 00 00 00 00            $  
  $  REQ054:7E1 03 22 34 8E 00 00 00 00            $  
  $  REQ055:7E1 03 22 33 9E 00 00 00 00            $  
  $  REQ056:7E1 03 22 33 80 00 00 00 00            $  
  $  REQ057:7E1 03 22 34 8F 00 00 00 00            $  
  $  REQ058:7E1 03 22 33 9F 00 00 00 00            $  
  $  REQ059:7E1 03 22 33 81 00 00 00 00            $  
  $  REQ060:7E1 03 22 34 90 00 00 00 00            $  
  $  REQ061:7E1 03 22 33 A0 00 00 00 00            $  
  $  REQ062:7E1 03 22 33 82 00 00 00 00            $  
  $  REQ063:7E1 03 22 34 91 00 00 00 00            $  
  $  REQ064:7E1 03 22 33 A1 00 00 00 00            $  
  $  REQ065:7E1 03 22 33 83 00 00 00 00            $  
  $  REQ066:7E1 03 22 34 92 00 00 00 00            $  
  $  REQ067:7E1 03 22 33 A2 00 00 00 00            $  
  $  REQ068:7E1 03 22 33 84 00 00 00 00            $  
  $  REQ069:7E1 03 22 34 93 00 00 00 00            $  
  $  REQ070:7E1 03 22 33 A3 00 00 00 00            $  
  $  REQ071:7E1 03 22 33 85 00 00 00 00            $  
  $  REQ072:7E1 03 22 34 94 00 00 00 00            $  
  $  REQ073:7E1 03 22 33 A4 00 00 00 00            $  
  $  REQ074:7E1 03 22 33 86 00 00 00 00            $  
  $  REQ075:7E1 03 22 34 95 00 00 00 00            $  
  $  REQ076:7E1 03 22 33 A5 00 00 00 00            $  
  $  REQ077:7E1 03 22 33 87 00 00 00 00            $  
  $  REQ078:7E1 03 22 33 A6 00 00 00 00            $  
  $  REQ079:7E1 03 22 B1 58 00 00 00 00            $  
  $  REQ080:7E1 03 22 27 FF 00 00 00 00            $  
  $  REQ081:7E1 03 22 19 9A 00 00 00 00            $  
  $  REQ082:7E1 03 22 19 40 00 00 00 00            $  
  $  REQ083:7E1 03 22 19 4F 00 00 00 00            $  
  $  REQ084:7E1 03 22 B1 33 00 00 00 00            $  
  $  REQ085:7E1 03 27 06 04 00 00 00 00            $  
  $  REQ086:7E1 03 28 06 04 00 00 00 00            $  
  $  REQ087:7E1 03 25 06 04 00 00 00 00            $  
  $  REQ088:7E1 03 26 06 04 00 00 00 00            $  
  $  REQ089:7E1 03 3C 06 04 00 00 00 00            $  
  $  REQ090:7E1 03 35 06 04 00 00 00 00            $  
  $  REQ091:7E1 03 FF 06 04 00 00 00 00            $  
  $  REQ092:7E1 03 3D 03 04 00 00 00 00            $  
  $  REQ093:7E1 03 B9 06 04 00 00 00 00            $  
  $  REQ094:7E1 03 E7 06 04 00 00 00 00            $  
  $  REQ095:7E1 03 31 06 04 00 00 00 00            $  
  $  REQ096:7E1 03 3D 06 04 00 00 00 00            $  
  $  REQ097:7E1 03 39 06 04 00 00 00 00            $  
  $  REQ098:7E1 03 11 06 04 00 00 00 00            $  
  $  REQ099:7E1 03 12 06 04 00 00 00 00            $  
  $  REQ100:7E1 03 36 06 04 00 00 00 00            $  
  $  REQ101:7E1 03 42 06 04 00 00 00 00            $  
  $  REQ102:7E1 03 E2 05 04 00 00 00 00            $  
  $  REQ103:7E1 03 E3 05 04 00 00 00 00            $  
  $  REQ104:7E1 03 32 03 04 00 00 00 00            $  
  $  REQ105:7E1 03 CE 06 04 00 00 00 00            $  
  $  REQ106:7E1 03 BB 06 04 00 00 00 00            $  

  $  000.5伏供电电压1                                       $    $  毫伏        $    $  ANS000.BYTE003  $  y=(x)*0.1; 
  $  001.5伏供电电压2                                       $    $  毫伏        $    $  ANS001.BYTE003  $  y=(x)*0.1; 
  $  002.9伏供电电压1                                       $    $  毫伏        $    $  ANS002.BYTE003  $  y=(x)*0.1; 
  $  003.9伏供电电压2                                       $    $  毫伏        $    $  ANS003.BYTE003  $  y=(x)*0.1; 
  $  004.加速踏板位置                                       $    $  百分比      $    $  ANS004.BYTE003  $  y=(x)*0.392156; 
  $  005.油门踏板位置                                       $    $  百分比      $    $  ANS005.BYTE003  $  y=(x)*0.392156862745098; 
  $  006.附件电压                                           $    $  伏          $    $  ANS006.BYTE003  $  y=(x1*256+x2)*0.001; 
  $  007.偶数轴实际挡位                                     $    $              $    $  ANS007.BYTE003  $  switxh(x&0x0F)0x00:@007c;0x01:@0010;0x02:@0011;0x03:@0012;0x04:@0013;0x05:@0014;0x06:@0015;0x07:@0069;0x0C:@0912; 
  $  008.奇数轴实际挡位                                     $    $              $    $  ANS007.BYTE003  $  switxh(x&0xF0)0x00:@007c;0x10:@0010;0x20:@0011;0x30:@0012;0x40:@0013;0x50:@0014;0x60:@0015;0x70:@0069;0xC0:@0912; 
  $  009.变速器油泵电机实际转速                             $    $  转/分钟     $    $  ANS008.BYTE003  $  y=(x1*256+x2)*3-30000; 
  $  010.变速器油泵电机目标转速                             $    $  转/分钟     $    $  ANS009.BYTE003  $  y=(x1*256+x2)*3-30000; 
  $  011.电池电压                                           $    $  伏特        $    $  ANS010.BYTE003  $  y=(x1*256+x2)*0.001; 
  $  012.制动踏板位置                                       $    $  百分比      $    $  ANS011.BYTE003  $  y=(x)*0.392156; 
  $  013.离合器啮合点收敛学习状态-奇数挡                    $    $              $    $  ANS012.BYTE003  $  switxh(x&0x03)0x00:@01c2;0x01:@03c1;0x02:@03c2;0x03:@0b26; 
  $  014.离合器啮合点收敛学习状态-偶数挡                    $    $              $    $  ANS012.BYTE004  $  switxh(x&0x03)0x01:@03c1;0x02:@03c2;0x03:@0b26;0x00:@01c2; 
  $  015.离合器咬合点收敛学习状态-奇数挡-温度区域2          $    $              $    $  ANS013.BYTE003  $  switxh(x&0x01)0x00:@01c2;0x01:@0b26; 
  $  016.离合器咬合点收敛学习状态-偶数挡-温度区域2          $    $              $    $  ANS013.BYTE006  $  switxh(x&0x01)0x00:@01c2;0x01:@0b26; 
  $  017.离合器咬合点收敛学习状态-奇数挡-温度区域3          $    $              $    $  ANS013.BYTE004  $  switxh(x&0x01)0x00:@01c2;0x01:@0b26; 
  $  018.离合器咬合点收敛学习状态-偶数挡-温度区域3          $    $              $    $  ANS013.BYTE007  $  switxh(x&0x01)0x00:@01c2;0x01:@0b26; 
  $  019.离合器咬合点收敛学习状态-奇数挡-温度区域4          $    $              $    $  ANS013.BYTE005  $  switxh(x&0x01)0x00:@01c2;0x01:@0b26; 
  $  020.离合器咬合点收敛学习状态-偶数挡-温度区域4          $    $              $    $  ANS013.BYTE008  $  switxh(x&0x01)0x00:@01c2;0x01:@0b26; 
  $  021.奇数挡离合器指令位置                               $    $  毫米        $    $  ANS014.BYTE003  $  y=(x)*0.08; 
  $  022.偶数挡离合器指令位置                               $    $  毫米        $    $  ANS015.BYTE003  $  y=(x)*0.08; 
  $  023.离合器1目标状态                                    $    $              $    $  ANS016.BYTE003  $  switxh(x)0x00:@0212;0x01:@0208; 
  $  024.奇数离合器位置                                     $    $  毫米        $    $  ANS017.BYTE003  $  if(0x80>x)y=(x)*0.15625;elsey=(x-0xFF)*0.15625; 
  $  025.奇数离合器滑摩量                                   $    $  转/分钟     $    $  ANS018.BYTE003  $  if(0x8000>(x1*256+x2))y=(x1*256+x2)*0.125;elsey=(x1*256+x2-0xFFFF)*0.125; 
  $  026.奇数挡离合器扭矩接合位置                           $    $  毫米        $    $  ANS019.BYTE003  $  y=(x)*0.0784313725490196; 
  $  027.离合器2目标状态                                    $    $              $    $  ANS020.BYTE003  $  switxh(x)0x00:@0212;0x01:@0208; 
  $  028.偶数离合器位置                                     $    $  毫米        $    $  ANS021.BYTE003  $  if(0x80>x)y=(x)*0.15625;elsey=(x-0xFF)*0.15625; 
  $  029.偶数离合器滑摩量                                   $    $  转/分钟     $    $  ANS022.BYTE003  $  if(0x8000>(x1*256+x2))y=(x1*256+x2)*0.125;elsey=(x1*256+x2-0xFFFF)*0.125; 
  $  030.偶数挡离合器扭矩接合位置                           $    $  毫米        $    $  ANS023.BYTE003  $  y=(x)*0.0784313725490196; 
  $  031.奇数挡离合器估算温度                               $    $  摄氏度      $    $  ANS024.BYTE003  $  y=(x)*4-40; 
  $  032.偶数挡离合器估算温度                               $    $  摄氏度      $    $  ANS025.BYTE003  $  y=(x)*4-40; 
  $  033.挡位1进档失败计数                                  $    $              $    $  ANS026.BYTE003  $  y=((x1)&0x0F); 
  $  034.挡位2进档失败计数                                  $    $              $    $  ANS026.BYTE003  $  y=((x2)&0xF0)>>4; 
  $  035.挡位3进档失败计数                                  $    $              $    $  ANS026.BYTE003  $  y=((x2)&0x0F); 
  $  036.挡位4进档失败计数                                  $    $              $    $  ANS026.BYTE003  $  y=((x3)&0xF0)>>4; 
  $  037.挡位5进档失败计数                                  $    $              $    $  ANS026.BYTE003  $  y=((x3)&0x0F); 
  $  038.挡位6进档失败计数                                  $    $              $    $  ANS026.BYTE003  $  y=((x4)&0xF0)>>4; 
  $  039.挡位7进档失败计数                                  $    $              $    $  ANS026.BYTE003  $  y=((x4)&0x0F); 
  $  040.挡位R进档失败计数                                  $    $              $    $  ANS026.BYTE003  $  y=((x1)&0xF0)>>4; 
  $  041.发动机冷却液温度                                   $    $  摄氏度      $    $  ANS027.BYTE003  $  y=(x)*1-40; 
  $  042.发动机转速                                         $    $  转/分钟     $    $  ANS028.BYTE003  $  y=(x1*256+x2)*1; 
  $  043.偶数输入轴转速                                     $    $  转/分钟     $    $  ANS029.BYTE003  $  y=(x1*256+x2)*0.125; 
  $  044.换挡拨叉（挡位1/7）状态                            $    $              $    $  ANS030.BYTE003  $  switxh(x&0x0F)0x00:@007c;0x01:@0010;0x07:@0069;0x09:@0b45;0x0F:@0b46; 
  $  045.换挡拨叉（挡位2/6）状态                            $    $              $    $  ANS031.BYTE003  $  switxh(x&0x0F)0x00:@007c;0x02:@0011;0x06:@0015;0x0A:@0b43;0x0E:@0b44; 
  $  046.换挡拨叉（挡位4/R）状态                            $    $              $    $  ANS032.BYTE003  $  switxh(x&0x1F)0x00:@007c;0x04:@0013;0x08:@0912;0x0C:@0b47;0x10:@0b48; 
  $  047.换挡拨叉（挡位3/5）状态                            $    $              $    $  ANS033.BYTE003  $  switxh(x&0x0F)0x00:@007c;0x03:@0012;0x05:@0014;0x0B:@0b41;0x0D:@0b42; 
  $  048.高电平驱动1电压                                    $    $  毫伏        $    $  ANS034.BYTE003  $  y=(x)*0.1; 
  $  049.高电平驱动2电压                                    $    $  毫伏        $    $  ANS035.BYTE003  $  y=(x)*0.1; 
  $  050.内部模式开关模式'A'位置传感器信号电压              $    $  伏          $    $  ANS036.BYTE003  $  y=(x)*0.0196078431372549; 
  $  051.内部模式开关模式'B'位置传感器信号电压              $    $  伏          $    $  ANS037.BYTE003  $  y=(x)*0.0196078431372549; 
  $  052.内部模式开关模式'C'位置传感器信号电压              $    $  伏          $    $  ANS038.BYTE003  $  y=(x)*0.0196078431372549; 
  $  053.内部模式开关模式'P'位置传感器信号电压              $    $  伏          $    $  ANS039.BYTE003  $  y=(x)*0.0196078431372549; 
  $  054.内部模式开关模式'S'位置传感器信号电压              $    $  伏          $    $  ANS040.BYTE003  $  y=(x)*0.0196078431372549; 
  $  055.挡位1退档失败计数                                  $    $              $    $  ANS041.BYTE003  $  y=((x1*256+x2)&0x07C0)>>2; 
  $  056.挡位2退档失败计数                                  $    $              $    $  ANS041.BYTE003  $  y=((x2)&0x3E)>>1; 
  $  057.挡位3退档失败计数                                  $    $              $    $  ANS041.BYTE003  $  y=((x2*256+x3)&0x01F0)>>4; 
  $  058.挡位4退档失败计数                                  $    $              $    $  ANS041.BYTE003  $  y=((x3*256+x4)&0x0F80)>>7; 
  $  059.挡位5退档失败计数                                  $    $              $    $  ANS041.BYTE003  $  y=(x4&0x7C)>>2; 
  $  060.挡位6退档失败计数                                  $    $              $    $  ANS041.BYTE003  $  y=((x4*256+x5)&0x03E0)>>5; 
  $  061.挡位7退档失败计数                                  $    $              $    $  ANS041.BYTE003  $  y=(x5&0x1F)*1; 
  $  062.挡位R退档失败计数                                  $    $              $    $  ANS041.BYTE003  $  y=((x1)&0xF8)>>3; 
  $  063.奇数输入轴转速                                     $    $  转/分钟     $    $  ANS042.BYTE003  $  y=(x1*256+x2)*0.125; 
  $  064.1-2升挡T2P位置自适应收敛状态                       $    $              $    $  ANS043.BYTE003  $  switxh(x&0x01)0x00:@01c2;0x01:@0b26; 
  $  065.2-3升挡T2P位置自适应收敛状态                       $    $              $    $  ANS043.BYTE004  $  switxh(x&0x01)0x00:@01c2;0x01:@0b26; 
  $  066.3-4升挡T2P位置自适应收敛状态                       $    $              $    $  ANS043.BYTE005  $  switxh(x&0x01)0x00:@01c2;0x01:@0b26; 
  $  067.4-5升挡T2P位置自适应收敛状态                       $    $              $    $  ANS043.BYTE006  $  switxh(x&0x01)0x00:@01c2;0x01:@0b26; 
  $  068.5-6升挡T2P位置自适应收敛状态                       $    $              $    $  ANS043.BYTE007  $  switxh(x&0x01)0x00:@01c2;0x01:@0b26; 
  $  069.6-7升挡T2P位置自适应收敛状态                       $    $              $    $  ANS043.BYTE008  $  switxh(x&0x01)0x00:@01c2;0x01:@0b26; 
  $  070.输入轴转速信号                                     $    $  转/分钟     $    $  ANS044.BYTE003  $  y=(x1*256+x2)*0.125; 
  $  071.输出轴转速信号                                     $    $  转/分钟     $    $  ANS045.BYTE003  $  y=(x1*256+x2)*0.125; 
  $  072.KL15(IGN)电路电压                                  $    $  伏          $    $  ANS046.BYTE003  $  y=(x)*0.1; 
  $  073.电磁阀供电电路1指令打开                            $    $              $    $  ANS047.BYTE003  $  switxh(x&0x80)0x80:@0021;0x00:@0022; 
  $  074.电磁阀供电电路1开路状态                            $    $              $    $  ANS047.BYTE003  $  switxh(x&0x0C)0x00:@008d;0x04:@01b1;0x0C:@0cb9; 
  $  075.电磁阀供电电路1对地短路状态                        $    $              $    $  ANS047.BYTE003  $  switxh(x&0x30)0x00:@008d;0x10:@01b1;0x30:@0cb9; 
  $  076.电磁阀供电电路1对电源短路状态                      $    $              $    $  ANS047.BYTE003  $  switxh(x&0x03)0x00:@008d;0x01:@01b1;0x03:@0cb9; 
  $  077.电磁阀供电电路2指令打开                            $    $              $    $  ANS048.BYTE003  $  switxh(x&0x80)0x80:@0021;0x00:@0022; 
  $  078.电磁阀供电电路2开路状态                            $    $              $    $  ANS048.BYTE003  $  switxh(x&0x0C)0x00:@008d;0x04:@01b1;0x0C:@0cb9; 
  $  079.电磁阀供电电路2对地短路状态                        $    $              $    $  ANS048.BYTE003  $  switxh(x&0x30)0x00:@008d;0x10:@01b1;0x30:@0cb9; 
  $  080.电磁阀供电电路2对电源短路状态                      $    $              $    $  ANS048.BYTE003  $  switxh(x&0x03)0x00:@008d;0x01:@01b1;0x03:@0cb9; 
  $  081.1/7挡换挡拨叉位置                                  $    $  毫米        $    $  ANS049.BYTE003  $  if(0x80>x)y=(x)*0.09375;elsey=(x-0xFF)*0.09375; 
  $  082.2/6挡换挡拨叉位置                                  $    $  毫米        $    $  ANS050.BYTE003  $  if(0x80>x)y=(x)*0.09375;elsey=(x-0xFF)*0.09375; 
  $  083.4/R挡换挡拨叉位置                                  $    $  毫米        $    $  ANS051.BYTE003  $  if(0x80>x)y=(x)*0.09375;elsey=(x-0xFF)*0.09375; 
  $  084.3/5挡换挡拨叉位置                                  $    $  毫米        $    $  ANS052.BYTE003  $  if(0x80>x)y=(x)*0.09375;elsey=(x-0xFF)*0.09375; 
  $  085.坡度计算值                                         $    $  百分比      $    $  ANS053.BYTE003  $  if(0x8000>(x1*256+x2))y=(x1*256+x2)*0.1;elsey=(x1*256+x2-0xFFFF)*0.1; 
  $  086.电磁阀1特征数据错误-坐标数据递减错误               $    $              $    $  ANS054.BYTE003  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  087.电磁阀1特征数据错误-校验无效                       $    $              $    $  ANS054.BYTE003  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  088.电磁阀1特征数据错误-类型无效                       $    $              $    $  ANS054.BYTE003  $  switxh(x&0x40)0x00:@0022;0x40:@0021; 
  $  089.电磁阀1特征数据错误-数据有效                       $    $              $    $  ANS054.BYTE003  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  090.电磁阀1特征数据错误-未编程                         $    $              $    $  ANS054.BYTE003  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  091.奇数离合器压力控制电磁阀（S1）指令打开             $    $              $    $  ANS055.BYTE003  $  switxh(x&0x80)0x80:@0021;0x00:@0022; 
  $  092.奇数离合器压力控制电磁阀（S1）开路状态             $    $              $    $  ANS055.BYTE003  $  switxh(x&0x0C)0x00:@008d;0x04:@01b1;0x0C:@0cb9; 
  $  093.奇数离合器压力控制电磁阀（S1）对地短路状态         $    $              $    $  ANS055.BYTE003  $  switxh(x&0x30)0x00:@008d;0x10:@01b1;0x30:@0cb9; 
  $  094.奇数离合器压力控制电磁阀（S1）对电源短路状态       $    $              $    $  ANS055.BYTE003  $  switxh(x&0x03)0x00:@008d;0x01:@01b1;0x03:@0cb9; 
  $  095.奇数离合器压力控制电磁阀（S1）电流                 $    $  安培        $    $  ANS056.BYTE003  $  y=(x1*256+x2)*0.244140625; 
  $  096.电磁阀2特征数据错误-坐标数据递减错误               $    $              $    $  ANS057.BYTE003  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  097.电磁阀2特征数据错误-校验无效                       $    $              $    $  ANS057.BYTE003  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  098.电磁阀2特征数据错误-类型无效                       $    $              $    $  ANS057.BYTE003  $  switxh(x&0x40)0x00:@0022;0x40:@0021; 
  $  099.电磁阀2特征数据错误-数据有效                       $    $              $    $  ANS057.BYTE003  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  100.电磁阀2特征数据错误-未编程                         $    $              $    $  ANS057.BYTE003  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  101.偶数离合器压力控制电磁阀（S2）指令打开             $    $              $    $  ANS058.BYTE003  $  switxh(x&0x80)0x80:@0021;0x00:@0022; 
  $  102.偶数离合器压力控制电磁阀（S2）开路状态             $    $              $    $  ANS058.BYTE003  $  switxh(x&0x0C)0x00:@008d;0x04:@01b1;0x0C:@0cb9; 
  $  103.偶数离合器压力控制电磁阀（S2）对地短路状态         $    $              $    $  ANS058.BYTE003  $  switxh(x&0x30)0x00:@008d;0x10:@01b1;0x30:@0cb9; 
  $  104.偶数离合器压力控制电磁阀（S2）对电源短路状态       $    $              $    $  ANS058.BYTE003  $  switxh(x&0x03)0x00:@008d;0x01:@01b1;0x03:@0cb9; 
  $  105.偶数离合器压力控制电磁阀（S2）电流                 $    $  安培        $    $  ANS059.BYTE003  $  y=(x1*256+x2)*0.244140625; 
  $  106.电磁阀3特征数据错误-坐标数据递减错误               $    $              $    $  ANS060.BYTE003  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  107.电磁阀3特征数据错误-校验无效                       $    $              $    $  ANS060.BYTE003  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  108.电磁阀3特征数据错误-类型无效                       $    $              $    $  ANS060.BYTE003  $  switxh(x&0x40)0x00:@0022;0x40:@0021; 
  $  109.电磁阀3特征数据错误-数据有效                       $    $              $    $  ANS060.BYTE003  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  110.电磁阀3特征数据错误-未编程                         $    $              $    $  ANS060.BYTE003  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  111.奇数离合器流量控制电磁阀（S3）指令打开             $    $              $    $  ANS061.BYTE003  $  switxh(x&0x80)0x80:@0021;0x00:@0022; 
  $  112.奇数离合器流量控制电磁阀（S3）开路状态             $    $              $    $  ANS061.BYTE003  $  switxh(x&0x0C)0x00:@008d;0x04:@01b1;0x0C:@0cb9; 
  $  113.奇数离合器流量控制电磁阀（S3）对地短路状态         $    $              $    $  ANS061.BYTE003  $  switxh(x&0x30)0x00:@008d;0x10:@01b1;0x30:@0cb9; 
  $  114.奇数离合器流量控制电磁阀（S3）对电源短路状态       $    $              $    $  ANS061.BYTE003  $  switxh(x&0x03)0x00:@008d;0x01:@01b1;0x03:@0cb9; 
  $  115.奇数离合器流量控制电磁阀（S3）电流                 $    $  安培        $    $  ANS062.BYTE003  $  y=(x1*256+x2)*0.244140625; 
  $  116.电磁阀4特征数据错误-坐标数据递减错误               $    $              $    $  ANS063.BYTE003  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  117.电磁阀4特征数据错误-校验无效                       $    $              $    $  ANS063.BYTE003  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  118.电磁阀4特征数据错误-类型无效                       $    $              $    $  ANS063.BYTE003  $  switxh(x&0x40)0x00:@0022;0x40:@0021; 
  $  119.电磁阀4特征数据错误-数据有效                       $    $              $    $  ANS063.BYTE003  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  120.电磁阀4特征数据错误-未编程                         $    $              $    $  ANS063.BYTE003  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  121.偶数离合器流量控制电磁阀（S4）指令打开             $    $              $    $  ANS064.BYTE003  $  switxh(x&0x80)0x80:@0021;0x00:@0022; 
  $  122.偶数离合器流量控制电磁阀（S4）开路状态             $    $              $    $  ANS064.BYTE003  $  switxh(x&0x0C)0x00:@008d;0x04:@01b1;0x0C:@0cb9; 
  $  123.偶数离合器流量控制电磁阀（S4）对地短路状态         $    $              $    $  ANS064.BYTE003  $  switxh(x&0x30)0x00:@008d;0x10:@01b1;0x30:@0cb9; 
  $  124.偶数离合器流量控制电磁阀（S4）对电源短路状态       $    $              $    $  ANS064.BYTE003  $  switxh(x&0x03)0x00:@008d;0x01:@01b1;0x03:@0cb9; 
  $  125.偶数离合器流量控制电磁阀（S4）电流                 $    $  安培        $    $  ANS065.BYTE003  $  y=(x1*256+x2)*0.244140625; 
  $  126.电磁阀5特征数据错误-坐标数据递减错误               $    $              $    $  ANS066.BYTE003  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  127.电磁阀5特征数据错误-校验无效                       $    $              $    $  ANS066.BYTE003  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  128.电磁阀5特征数据错误-类型无效                       $    $              $    $  ANS066.BYTE003  $  switxh(x&0x40)0x00:@0022;0x40:@0021; 
  $  129.电磁阀5特征数据错误-数据有效                       $    $              $    $  ANS066.BYTE003  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  130.电磁阀5特征数据错误-未编程                         $    $              $    $  ANS066.BYTE003  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  131.奇数档位压力控制电磁阀（S5）指令打开               $    $              $    $  ANS067.BYTE003  $  switxh(x&0x80)0x80:@0021;0x00:@0022; 
  $  132.奇数档位压力控制电磁阀（S5）开路状态               $    $              $    $  ANS067.BYTE003  $  switxh(x&0x0C)0x00:@008d;0x04:@01b1;0x0C:@0cb9; 
  $  133.奇数档位压力控制电磁阀（S5）对地短路状态           $    $              $    $  ANS067.BYTE003  $  switxh(x&0x30)0x00:@008d;0x10:@01b1;0x30:@0cb9; 
  $  134.奇数档位压力控制电磁阀（S5）对电源短路状态         $    $              $    $  ANS067.BYTE003  $  switxh(x&0x03)0x00:@008d;0x01:@01b1;0x03:@0cb9; 
  $  135.奇数挡位压力控制电磁阀（S5）电流                   $    $  安培        $    $  ANS068.BYTE003  $  y=(x1*256+x2)*0.244140625; 
  $  136.电磁阀6特征数据错误-坐标数据递减错误               $    $              $    $  ANS069.BYTE003  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  137.电磁阀6特征数据错误-校验无效                       $    $              $    $  ANS069.BYTE003  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  138.电磁阀6特征数据错误-类型无效                       $    $              $    $  ANS069.BYTE003  $  switxh(x&0x40)0x00:@0022;0x40:@0021; 
  $  139.电磁阀6特征数据错误-数据有效                       $    $              $    $  ANS069.BYTE003  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  140.电磁阀6特征数据错误-未编程                         $    $              $    $  ANS069.BYTE003  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  141.偶数档位压力控制电磁阀（S6）指令打开               $    $              $    $  ANS070.BYTE003  $  switxh(x&0x80)0x80:@0021;0x00:@0022; 
  $  142.偶数档位压力控制电磁阀（S6）开路状态               $    $              $    $  ANS070.BYTE003  $  switxh(x&0x0C)0x00:@008d;0x04:@01b1;0x0C:@0cb9; 
  $  143.偶数档位压力控制电磁阀（S6）对地短路状态           $    $              $    $  ANS070.BYTE003  $  switxh(x&0x30)0x00:@008d;0x10:@01b1;0x30:@0cb9; 
  $  144.偶数档位压力控制电磁阀（S6）对电源短路状态         $    $              $    $  ANS070.BYTE003  $  switxh(x&0x03)0x00:@008d;0x01:@01b1;0x03:@0cb9; 
  $  145.偶数挡位压力控制电磁阀（S6）电流                   $    $  安培        $    $  ANS071.BYTE003  $  y=(x1*256+x2)*0.244140625; 
  $  146.电磁阀7特征数据错误-坐标数据递减错误               $    $              $    $  ANS072.BYTE003  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  147.电磁阀7特征数据错误-校验无效                       $    $              $    $  ANS072.BYTE003  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  148.电磁阀7特征数据错误-类型无效                       $    $              $    $  ANS072.BYTE003  $  switxh(x&0x40)0x00:@0022;0x40:@0021; 
  $  149.电磁阀7特征数据错误-数据有效                       $    $              $    $  ANS072.BYTE003  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  150.电磁阀7特征数据错误-未编程                         $    $              $    $  ANS072.BYTE003  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  151.奇数档位流量控制电磁阀（S7）指令打开               $    $              $    $  ANS073.BYTE003  $  switxh(x&0x80)0x80:@0021;0x00:@0022; 
  $  152.奇数档位流量控制电磁阀（S7）开路状态               $    $              $    $  ANS073.BYTE003  $  switxh(x&0x0C)0x00:@008d;0x04:@01b1;0x0C:@0cb9; 
  $  153.奇数档位流量控制电磁阀（S7）对地短路状态           $    $              $    $  ANS073.BYTE003  $  switxh(x&0x30)0x00:@008d;0x10:@01b1;0x30:@0cb9; 
  $  154.奇数档位流量控制电磁阀（S7）对电源短路状态         $    $              $    $  ANS073.BYTE003  $  switxh(x&0x03)0x00:@008d;0x01:@01b1;0x03:@0cb9; 
  $  155.奇数挡位流量控制电磁阀（S7）电流                   $    $  安培        $    $  ANS074.BYTE003  $  y=(x1*256+x2)*0.244140625; 
  $  156.电磁阀8特征数据错误-坐标数据递减错误               $    $              $    $  ANS075.BYTE003  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  157.电磁阀8特征数据错误-校验无效                       $    $              $    $  ANS075.BYTE003  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  158.电磁阀8特征数据错误-类型无效                       $    $              $    $  ANS075.BYTE003  $  switxh(x&0x40)0x00:@0022;0x40:@0021; 
  $  159.电磁阀8特征数据错误-数据有效                       $    $              $    $  ANS075.BYTE003  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  160.电磁阀8特征数据错误-未编程                         $    $              $    $  ANS075.BYTE003  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  161.偶数档位流量控制电磁阀（S8）指令打开               $    $              $    $  ANS076.BYTE003  $  switxh(x&0x80)0x80:@0021;0x00:@0022; 
  $  162.偶数档位流量控制电磁阀（S8）开路状态               $    $              $    $  ANS076.BYTE003  $  switxh(x&0x0C)0x00:@008d;0x04:@01b1;0x0C:@0cb9; 
  $  163.偶数档位流量控制电磁阀（S8）对地短路状态           $    $              $    $  ANS076.BYTE003  $  switxh(x&0x30)0x00:@008d;0x10:@01b1;0x30:@0cb9; 
  $  164.偶数档位流量控制电磁阀（S8）对电源短路状态         $    $              $    $  ANS076.BYTE003  $  switxh(x&0x03)0x00:@008d;0x01:@01b1;0x03:@0cb9; 
  $  165.偶数挡位流量控制电磁阀（S8）电流                   $    $  安培        $    $  ANS077.BYTE003  $  y=(x1*256+x2)*0.244140625; 
  $  166.奇数/偶数逻辑阀电磁阀（S9）指令打开                $    $              $    $  ANS078.BYTE003  $  switxh(x&0x80)0x80:@0021;0x00:@0022; 
  $  167.奇数/偶数逻辑阀电磁阀（S9）开路状态                $    $              $    $  ANS078.BYTE003  $  switxh(x&0x0C)0x00:@008d;0x04:@01b1;0x0C:@0cb9; 
  $  168.奇数/偶数逻辑阀电磁阀（S9）对地短路状态            $    $              $    $  ANS078.BYTE003  $  switxh(x&0x30)0x00:@008d;0x10:@01b1;0x30:@0cb9; 
  $  169.奇数/偶数逻辑阀电磁阀（S9）对电源短路状态          $    $              $    $  ANS078.BYTE003  $  switxh(x&0x03)0x00:@008d;0x01:@01b1;0x03:@0cb9; 
  $  170.同步滑磨量                                         $    $  转/分钟     $    $  ANS079.BYTE003  $  if(0x8000>(x1*256+x2))y=(x1*256+x2)*0.333333333333333;elsey=(x1*256+x2-0xFFFF)*0.333333333333333; 
  $  171.蓄能器压力                                         $    $  千帕        $    $  ANS080.BYTE003  $  y=(x1*256+x2)*0.111111111111111; 
  $  172.变速器目标挡位                                     $    $              $    $  ANS081.BYTE003  $  switxh(x&0x0F)0x00:@007c;0x01:@0010;0x0C:@0912;0x02:@0011;0x03:@0012;0x04:@0013;0x05:@0014;0x06:@0015;0x07:@0069; 
  $  173.变速器指令挡位-手动模式                            $    $              $    $  ANS081.BYTE003  $  switxh(x&0xF0)0x00:@038c;0x10:@0010;0x20:@0011;0x30:@0012;0x40:@0013;0x50:@0014;0x60:@0015;0x70:@0069; 
  $  174.变速器油温                                         $    $  摄氏度      $    $  ANS082.BYTE003  $  y=(x)*1-40; 
  $  175.变速器挡位                                         $    $              $    $  ANS083.BYTE003  $  switxh(x)0x00:@01b1;0x01:@0939;0x02:@0912;0x04:@007c;0x06:@0015;0x08:@0014;0x10:@0013;0x20:@0012;0x40:@0011;0x80:@0010;0x81:@0069;0xFF:@01b1; 
  $  176.车速信号                                           $    $  千米/时     $    $  ANS084.BYTE003  $  y=(x1*256+x2)*1; 

;******************************************************************************************************************************************************

