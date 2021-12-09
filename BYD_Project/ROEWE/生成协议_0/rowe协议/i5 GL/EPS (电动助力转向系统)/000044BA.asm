
     系统名称:EPS (电动助力转向系统)

     系统ID:000044BA

;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~729,718,748

进入命令:

  $~ REQ000:721 02 10 03 00 00 00 00 00       $~ ANS000:729 02 10 03 00 00 00 00 00
  $~ REQ001:721 03 22 F1 91 00 00 00 00       $~ ANS001:729 03 22 F1 91 00 00 00 00

		提示:版本号由ANS001.BYTE03-BYTE06,4个字节的十六进制控制,或BYTE03-BYTE10,8个字节的ASCII控制.

空闲命令:

  $! REQ000:721 02 3E 00 00 00 00 00 00       $! ANS000:729 02 3E 00 00 00 00 00 00


;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~729,718,748

进入命令:

  $~ REQ000:721 02 10 01 00 00 00 00 00       $~ ANS000:729 02 10 01 00 00 00 00 00
  $~ REQ001:721 03 22 F1 91 00 00 00 00       $~ ANS001:729 03 22 F1 91 00 00 00 00

		提示:版本号由ANS001.BYTE03-BYTE06,4个字节的十六进制控制,或BYTE03-BYTE10,8个字节的ASCII控制.

空闲命令:

  $! REQ000:721 02 3E 00 00 00 00 00 00       $! ANS000:729 02 3E 00 00 00 00 00 00


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
		<param type="string" value="{&quot;10250087&quot;: &quot;000044BA&quot;, &quot;10896835&quot;: &quot;000044BA&quot;, &quot;10823701&quot;: &quot;000044BB&quot;, &quot;10890237&quot;: &quot;000044BB&quot;}"/>
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
		<param type="string" value="{&quot;10250087&quot;: &quot;000044BA&quot;, &quot;10896835&quot;: &quot;000044BA&quot;, &quot;10823701&quot;: &quot;000044BB&quot;, &quot;10890237&quot;: &quot;000044BB&quot;}"/>
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

  $#  REQ000:721 03 19 02 2C 00 00 00 00            $#  

			故障码表示:帧长决定故障个数,$#BYTE03$#开始表示故障码,每$#4$#个字节表示一个故障码,前$#3$#个字节表示码号.

			码库: $*$*DTC/000044BA

			读码方式:case 13

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:721 04 14 FF FF FF 00 00 00            $$  

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:721 03 22 F1 83 00 00 00 00            $%  
  $%  REQ001:721 03 22 F1 87 00 00 00 00            $%  
  $%  REQ002:721 03 22 F1 8C 00 00 00 00            $%  
  $%  REQ003:721 03 22 F1 90 00 00 00 00            $%  
  $%  REQ004:721 03 22 F1 91 00 00 00 00            $%  
  $%  REQ005:721 03 22 F1 A0 00 00 00 00            $%  
  $%  REQ006:721 03 22 F1 A1 00 00 00 00            $%  
  $%  REQ007:721 03 22 F1 A2 00 00 00 00            $%  
  $%  REQ008:721 03 22 F1 A8 00 00 00 00            $%  
  $%  REQ009:721 03 22 F1 A9 00 00 00 00            $%  
  $%  REQ010:721 03 22 F1 AA 00 00 00 00            $%  
  $%  REQ011:721 03 22 F1 00 00 00 00 00            $%  
  $%  REQ012:721 03 22 F1 20 00 00 00 00            $%  
  $%  REQ013:721 03 22 F1 8A 00 00 00 00            $%  
  $%  REQ014:721 03 22 F1 8B 00 00 00 00            $%  
  $%  REQ015:721 03 22 F1 92 00 00 00 00            $%  
  $%  REQ016:721 03 22 F1 94 00 00 00 00            $%  
  $%  REQ017:721 03 22 F1 98 00 00 00 00            $%  
  $%  REQ018:721 03 22 F1 A5 00 00 00 00            $%  

  $%  000:电控单元基础软件参考号                     $%    $%  ANS000.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  001:电控单元零件号                             $%    $%  ANS001.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  002:电控单元序列号                             $%    $%  ANS002.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16); 
  $%  003:车辆识别码(VIN)                            $%    $%  ANS003.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17); 
  $%  004:电控单元硬件号                             $%    $%  ANS004.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  005:电控单元应用软件号                         $%    $%  ANS005.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  006:电控单元标定软件号                         $%    $%  ANS006.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  007:电控单元网络参考号                         $%    $%  ANS007.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8); 
  $%  008:车辆特征信息(FK)                           $%    $%  ANS008.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20); 
  $%  009:电控单元配置文件号                         $%    $%  ANS009.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  010:电控单元刷新过程文件号                     $%    $%  ANS010.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  011:ECU软件校验号                              $%    $%  ANS011.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16); 
  $%  012:网络配置文件零件号-网络信息域(出厂)        $%    $%  ANS012.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  013:系统供应商标识号                           $%    $%  ANS013.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  014:电控单元制造日期                           $%    $%  ANS014.BYTE003  $%  HEX(x1,x2,x3); 
  $%  015:供应商电控单元硬件参考号                   $%    $%  ANS015.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  016:电控单元软件参考号                         $%    $%  ANS016.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  017:配置跟踪域                                 $%    $%  ANS017.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11); 
  $%  018:电控单元索引信息                           $%    $%  ANS018.BYTE003  $%  HEX(x1,x2,x3); 

;******************************************************************************************************************************************************

数据流:

  $  REQ000:721 03 22 B0 00 00 00 00 00            $  
  $  REQ001:721 03 22 B0 02 00 00 00 00            $  
  $  REQ002:721 03 22 B0 04 00 00 00 00            $  
  $  REQ003:721 03 22 B0 06 00 00 00 00            $  
  $  REQ004:721 03 22 B0 07 00 00 00 00            $  
  $  REQ005:721 03 22 B0 08 00 00 00 00            $  
  $  REQ006:721 03 22 B0 09 00 00 00 00            $  
  $  REQ007:721 03 22 B0 16 00 00 00 00            $  
  $  REQ008:721 03 22 E0 10 00 00 00 00            $  
  $  REQ009:721 03 22 B0 17 00 00 00 00            $  

  $  000.电动助力转向(EPS)系统状态               $    $              $    $  ANS000.BYTE003  $  switxh(x1*256+x2)0x01:@02ad;0x03:@02ae;0x04:@02af;0x05:@02b0;0x06:@02b1;0x07:@002e;0x08:@008d; 
  $  001.驱动扭矩                                $    $  牛顿*米     $    $  ANS001.BYTE003  $  if(0x80>x)y=(x)*0.1;elsey=(x-0xFF)*0.1; 
  $  002.电机位置                                $    $  度          $    $  ANS002.BYTE003  $  y=(x1*256+x2)*0.087890625; 
  $  003.电机转速                                $    $  转/分       $    $  ANS003.BYTE003  $  if(0x8000>(x1*256+x2))y=(x1*256+x2)*1;elsey=(x1*256+x2-0xFFFF)*1; 
  $  004.转向角                                  $    $  度          $    $  ANS004.BYTE003  $  if(0x8000>(x1*256+x2))y=(x1*256+x2)*0.1;elsey=(x1*256+x2-0xFFFF)*0.1; 
  $  005.ECU温度                                 $    $  摄氏度      $    $  ANS005.BYTE003  $  y=(x)*1-70; 
  $  006.电动助力转向(EPS)助力扭矩输出系数       $    $  百分比      $    $  ANS006.BYTE003  $  y=(x1*256+x2)*0.0030517578125; 
  $  007.转向机右侧末端保护学习状态              $    $              $    $  ANS007.BYTE003  $  switxh(x&0x0C)0x00:@06e5;0x04:@07ab;0x08:@07ac; 
  $  008.转向机左侧末端保护学习状态              $    $              $    $  ANS007.BYTE003  $  switxh(x&0x03)0x00:@06e5;0x01:@07ab;0x02:@07ac; 
  $  009.车速                                    $    $  千米/时     $    $  ANS008.BYTE003  $  y=(x1*256+x2)*0.015625; 
  $  010.系统模式                                $    $              $    $  ANS009.BYTE003  $  switxh(x&0x01)0x00:@0279;0x01:@0a4e; 

;******************************************************************************************************************************************************

