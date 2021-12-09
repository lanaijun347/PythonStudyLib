
     系统名称:SCU (换挡控制模块)

     系统ID:00004471

;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~779,718,748

进入命令:

  $~ REQ000:771 02 10 03 00 00 00 00 00       $~ ANS000:779 02 10 03 00 00 00 00 00
  $~ REQ001:771 03 22 F1 91 00 00 00 00       $~ ANS001:779 03 22 F1 91 00 00 00 00

		提示:版本号由ANS001.BYTE03-BYTE06,4个字节的十六进制控制,或BYTE03-BYTE10,8个字节的ASCII控制.

空闲命令:

  $! REQ000:771 02 3E 00 00 00 00 00 00       $! ANS000:779 02 3E 00 00 00 00 00 00


;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~779,718,748

进入命令:

  $~ REQ000:771 02 10 01 00 00 00 00 00       $~ ANS000:779 02 10 01 00 00 00 00 00
  $~ REQ001:771 03 22 F1 91 00 00 00 00       $~ ANS001:779 03 22 F1 91 00 00 00 00

		提示:版本号由ANS001.BYTE03-BYTE06,4个字节的十六进制控制,或BYTE03-BYTE10,8个字节的ASCII控制.

空闲命令:

  $! REQ000:771 02 3E 00 00 00 00 00 00       $! ANS000:779 02 3E 00 00 00 00 00 00


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
		<param type="string" value="{&quot;10677359&quot;: &quot;00004471&quot;, &quot;10857321&quot;: &quot;00004472&quot;}"/>
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
		<param type="string" value="{&quot;10677359&quot;: &quot;00004471&quot;, &quot;10857321&quot;: &quot;00004472&quot;}"/>
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

  $#  REQ000:771 03 19 02 2C 00 00 00 00            $#  

			故障码表示:帧长决定故障个数,$#BYTE03$#开始表示故障码,每$#4$#个字节表示一个故障码,前$#3$#个字节表示码号.

			码库: $*$*DTC/00004471

			读码方式:case 13

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:771 04 14 FF FF FF 00 00 00            $$  

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:771 03 22 F1 90 00 00 00 00            $%  
  $%  REQ001:771 03 22 F1 87 00 00 00 00            $%  
  $%  REQ002:771 03 22 F1 8B 00 00 00 00            $%  
  $%  REQ003:771 03 22 F1 91 00 00 00 00            $%  
  $%  REQ004:771 03 22 F1 A0 00 00 00 00            $%  
  $%  REQ005:771 03 22 F1 A1 00 00 00 00            $%  
  $%  REQ006:771 03 22 F1 AA 00 00 00 00            $%  
  $%  REQ007:771 03 22 F1 10 00 00 00 00            $%  
  $%  REQ008:771 03 22 F1 A9 00 00 00 00            $%  
  $%  REQ009:771 03 22 F1 A5 00 00 00 00            $%  

  $%  000:车辆识别码(VIN)               $%    $%  ANS000.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17); 
  $%  001:电控单元零件号                $%    $%  ANS001.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  002:电控单元制造日期              $%    $%  ANS002.BYTE003  $%  HEX(x1,x2,x3); 
  $%  003:电控单元硬件号                $%    $%  ANS003.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  004:电控单元应用软件号            $%    $%  ANS004.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  005:电控单元标定软件号            $%    $%  ANS005.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  006:电控单元刷新过程文件号        $%    $%  ANS006.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  007:刷新工具参考号记录            $%    $%  ANS007.BYTE008  $%  HEX(x1,x2,x3,x4,x5,x6); 
  $%  008:刷新里程数记录                $%    $%  ANS007.BYTE014  $%  y=(x1*65536+x2*256+x3)*1; 
  $%  009:电控单元配置文件号            $%    $%  ANS008.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  010:电控单元索引信息              $%    $%  ANS009.BYTE003  $%  HEX(x1,x2,x3); 

;******************************************************************************************************************************************************

数据流:

  $  REQ000:771 03 22 B2 04 00 00 00 00            $  
  $  REQ001:771 03 22 B2 01 00 00 00 00            $  
  $  REQ002:771 03 22 B1 40 00 00 00 00            $  
  $  REQ003:771 03 22 B1 41 00 00 00 00            $  
  $  REQ004:771 03 22 B2 0A 00 00 00 00            $  
  $  REQ005:771 03 22 B1 04 00 00 00 00            $  
  $  REQ006:771 03 22 B1 03 00 00 00 00            $  
  $  REQ007:771 03 22 B1 01 00 00 00 00            $  
  $  REQ008:771 03 22 B1 02 00 00 00 00            $  
  $  REQ009:771 03 22 B1 0D 00 00 00 00            $  
  $  REQ010:771 03 22 B1 0E 00 00 00 00            $  
  $  REQ011:771 03 22 B2 03 00 00 00 00            $  

  $  000.换挡执行机构位置                $    $           $    $  ANS000.BYTE003  $  switxh(x&0x0F)0x00:@0939;0x01:@0912;0x02:@007c;0x03:@0935;0x04:@0ad6;0x05:@0ad7;0x06:@0ad8;0x07:@08e7; 
  $  001.电池电压                        $    $  伏特     $    $  ANS001.BYTE003  $  y=(x1*256+x2)*0.034; 
  $  002.换挡杆位置信号A1                $    $  %        $    $  ANS002.BYTE003  $  y=(x1*256+x2)*1; 
  $  003.换挡杆位置信号A2                $    $  %        $    $  ANS003.BYTE003  $  y=(x1*256+x2)*1; 
  $  004.换挡杆位置信号B1                $    $  %        $    $  ANS002.BYTE005  $  y=(x1*256+x2)*1; 
  $  005.换挡杆位置信号B2                $    $  %        $    $  ANS003.BYTE005  $  y=(x1*256+x2)*1; 
  $  006.换挡执行机构位置信号1           $    $  %        $    $  ANS004.BYTE003  $  switxh(x1*256+x2)0x00:@0cce; 
  $  007.换挡执行机构位置信号1           $    $  %        $    $  ANS004.BYTE005  $  switxh(x1*256+x2)0x00:@0cce; 
  $  008.换挡执行机构位置标定值-D        $    $  %        $    $  ANS005.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  009.换挡执行机构位置标定值-N        $    $  %        $    $  ANS006.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  010.换挡执行机构位置标定值-P        $    $  %        $    $  ANS007.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  011.换挡执行机构位置标定值-R        $    $  %        $    $  ANS008.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  012.驻车(P)挡按钮位置1              $    $  伏       $    $  ANS009.BYTE003  $  y=(x1*256+x2)*0.001220703125; 
  $  013.驻车(P)挡按钮位置2              $    $  伏       $    $  ANS009.BYTE005  $  y=(x1*256+x2)*0.001220703125; 
  $  014.附件电压                        $    $  伏       $    $  ANS010.BYTE003  $  y=(x1*256+x2)*0.00908; 
  $  015.KL15(IGN)电路电压               $    $  伏       $    $  ANS010.BYTE005  $  y=(x1*256+x2)*0.00908; 
  $  016.驻车解锁(Unlock)按钮信号1       $    $  伏       $    $  ANS010.BYTE007  $  y=(x1*256+x2)*0.001220703125; 
  $  017.驻车解锁(Unlock)按钮信号2       $    $  伏       $    $  ANS010.BYTE009  $  y=(x1*256+x2)*0.001220703125; 
  $  018.换档杆位置                      $    $           $    $  ANS011.BYTE003  $  switxh(x&0x0F)0x01:@0939;0x02:@0912;0x03:@007c;0x04:@0935; 

;******************************************************************************************************************************************************

