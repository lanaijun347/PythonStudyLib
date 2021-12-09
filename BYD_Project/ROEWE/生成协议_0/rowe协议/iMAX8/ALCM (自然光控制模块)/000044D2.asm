
     系统名称:ALCM (自然光控制模块)

     系统ID:000044D2

;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~7AB,718,748

进入命令:

  $~ REQ000:7A3 02 10 03 00 00 00 00 00       $~ ANS000:7AB 02 10 03 00 00 00 00 00

空闲命令:

  $! REQ000:7A3 02 3E 00 00 00 00 00 00       $! ANS000:7AB 02 3E 00 00 00 00 00 00


;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~7AB,718,748

进入命令:

  $~ REQ000:7A3 02 10 01 00 00 00 00 00       $~ ANS000:7AB 02 10 01 00 00 00 00 00

空闲命令:

  $! REQ000:7A3 02 3E 00 00 00 00 00 00       $! ANS000:7AB 02 3E 00 00 00 00 00 00


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

  $#  REQ000:7A3 03 19 02 2C 00 00 00 00            $#  

			故障码表示:帧长决定故障个数,$#BYTE03$#开始表示故障码,每$#4$#个字节表示一个故障码,前$#3$#个字节表示码号.

			码库: $*$*DTC/000044D2

			读码方式:case 13

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A3 04 14 FF FF FF 00 00 00            $$  

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A3 03 22 F1 90 00 00 00 00            $%  
  $%  REQ001:7A3 03 22 F1 87 00 00 00 00            $%  
  $%  REQ002:7A3 03 22 F1 91 00 00 00 00            $%  
  $%  REQ003:7A3 03 22 F1 8B 00 00 00 00            $%  
  $%  REQ004:7A3 03 22 F1 8C 00 00 00 00            $%  
  $%  REQ005:7A3 03 22 F1 A0 00 00 00 00            $%  
  $%  REQ006:7A3 03 22 F1 A1 00 00 00 00            $%  
  $%  REQ007:7A3 03 22 F1 A5 00 00 00 00            $%  
  $%  REQ008:7A3 03 22 F1 A9 00 00 00 00            $%  
  $%  REQ009:7A3 03 22 F1 AA 00 00 00 00            $%  
  $%  REQ010:7A3 03 22 F1 A2 00 00 00 00            $%  
  $%  REQ011:7A3 03 22 F1 A8 00 00 00 00            $%  

  $%  000:车辆识别码(VIN)               $%    $%  ANS000.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17); 
  $%  001:电控单元零件号                $%    $%  ANS001.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  002:电控单元硬件号                $%    $%  ANS002.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  003:电控单元制造日期              $%    $%  ANS003.BYTE003  $%  HEX(x1,x2,x3); 
  $%  004:电控单元序列号                $%    $%  ANS004.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16); 
  $%  005:电控单元应用软件号            $%    $%  ANS005.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  006:电控单元标定软件号            $%    $%  ANS006.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  007:电控单元索引信息              $%    $%  ANS007.BYTE003  $%  HEX(x1,x2,x3); 
  $%  008:电控单元配置文件号            $%    $%  ANS008.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  009:电控单元刷新过程文件号        $%    $%  ANS009.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  010:电控单元网络参考号            $%    $%  ANS010.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8); 
  $%  011:车辆特征信息(FK)              $%    $%  ANS011.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20); 

;******************************************************************************************************************************************************

数据流:

  $  REQ000:7A3 03 22 EA 01 00 00 00 00            $  
  $  REQ001:7A3 03 22 BF 00 00 00 00 00            $  
  $  REQ002:7A3 03 22 BF 01 00 00 00 00            $  
  $  REQ003:7A3 03 22 D9 01 00 00 00 00            $  
  $  REQ004:7A3 03 22 01 12 00 00 00 00            $  

  $  000.LIN1中的颜色                 $    $           $    $  ANS000.BYTE006  $  y=(x)*1; 
  $  001.LIN1中的背光等级             $    $           $    $  ANS000.BYTE005  $  y=(x)*1; 
  $  002.LIN1节点1运行状态            $    $           $    $  ANS001.BYTE003  $  switxh(x&0x80)0x00:@00e7;0x80:@008b; 
  $  003.LIN1节点1诊断故障状态        $    $           $    $  ANS002.BYTE003  $  switxh(x&0x80)0x00:@00c8;0x80:@096d; 
  $  004.LIN1节点10运行状态           $    $           $    $  ANS001.BYTE004  $  switxh(x&0x40)0x00:@00e7;0x40:@008b; 
  $  005.LIN1节点10诊断故障状态       $    $           $    $  ANS002.BYTE004  $  switxh(x&0x40)0x00:@00c8;0x40:@096d; 
  $  006.LIN1节点11运行状态           $    $           $    $  ANS001.BYTE004  $  switxh(x&0x20)0x00:@00e7;0x20:@008b; 
  $  007.LIN1节点11诊断故障状态       $    $           $    $  ANS002.BYTE004  $  switxh(x&0x20)0x00:@00c8;0x20:@096d; 
  $  008.LIN1节点12运行状态           $    $           $    $  ANS001.BYTE004  $  switxh(x&0x10)0x00:@00e7;0x10:@008b; 
  $  009.LIN1节点12诊断故障状态       $    $           $    $  ANS002.BYTE004  $  switxh(x&0x10)0x00:@00c8;0x10:@096d; 
  $  010.LIN1节点13运行状态           $    $           $    $  ANS001.BYTE004  $  switxh(x&0x08)0x00:@00e7;0x08:@008b; 
  $  011.LIN1节点13诊断故障状态       $    $           $    $  ANS002.BYTE004  $  switxh(x&0x08)0x00:@00c8;0x08:@096d; 
  $  012.LIN1节点14运行状态           $    $           $    $  ANS001.BYTE004  $  switxh(x&0x04)0x00:@00e7;0x04:@008b; 
  $  013.LIN1节点14诊断故障状态       $    $           $    $  ANS002.BYTE004  $  switxh(x&0x04)0x00:@00c8;0x04:@096d; 
  $  014.LIN1节点15运行状态           $    $           $    $  ANS001.BYTE004  $  switxh(x&0x02)0x00:@00e7;0x02:@008b; 
  $  015.LIN1节点15诊断故障状态       $    $           $    $  ANS002.BYTE004  $  switxh(x&0x02)0x00:@00c8;0x02:@096d; 
  $  016.LIN1节点16运行状态           $    $           $    $  ANS001.BYTE004  $  switxh(x&0x01)0x00:@00e7;0x01:@008b; 
  $  017.LIN1节点16诊断故障状态       $    $           $    $  ANS002.BYTE004  $  switxh(x&0x01)0x00:@00c8;0x01:@096d; 
  $  018.LIN1节点2运行状态            $    $           $    $  ANS001.BYTE003  $  switxh(x&0x40)0x00:@00e7;0x40:@008b; 
  $  019.LIN1节点2诊断故障状态        $    $           $    $  ANS002.BYTE003  $  switxh(x&0x40)0x00:@00c8;0x40:@096d; 
  $  020.LIN1节点3运行状态            $    $           $    $  ANS001.BYTE003  $  switxh(x&0x20)0x00:@00e7;0x20:@008b; 
  $  021.LIN1节点3诊断故障状态        $    $           $    $  ANS002.BYTE003  $  switxh(x&0x20)0x00:@00c8;0x20:@096d; 
  $  022.LIN1节点4运行状态            $    $           $    $  ANS001.BYTE003  $  switxh(x&0x10)0x00:@00e7;0x10:@008b; 
  $  023.LIN1节点4诊断故障状态        $    $           $    $  ANS002.BYTE003  $  switxh(x&0x10)0x00:@00c8;0x10:@096d; 
  $  024.LIN1节点5运行状态            $    $           $    $  ANS001.BYTE003  $  switxh(x&0x08)0x00:@00e7;0x08:@008b; 
  $  025.LIN1节点5诊断故障状态        $    $           $    $  ANS002.BYTE003  $  switxh(x&0x08)0x00:@00c8;0x08:@096d; 
  $  026.LIN1节点6运行状态            $    $           $    $  ANS001.BYTE003  $  switxh(x&0x04)0x00:@00e7;0x04:@008b; 
  $  027.LIN1节点6诊断故障状态        $    $           $    $  ANS002.BYTE003  $  switxh(x&0x04)0x00:@00c8;0x04:@096d; 
  $  028.LIN1节点7运行状态            $    $           $    $  ANS001.BYTE003  $  switxh(x&0x02)0x00:@00e7;0x02:@008b; 
  $  029.LIN1节点7诊断故障状态        $    $           $    $  ANS002.BYTE003  $  switxh(x&0x02)0x00:@00c8;0x02:@096d; 
  $  030.LIN1节点8运行状态            $    $           $    $  ANS001.BYTE003  $  switxh(x&0x01)0x00:@00e7;0x01:@008b; 
  $  031.LIN1节点8诊断故障状态        $    $           $    $  ANS002.BYTE003  $  switxh(x&0x01)0x00:@00c8;0x01:@096d; 
  $  032.LIN1节点9运行状态            $    $           $    $  ANS001.BYTE004  $  switxh(x&0x80)0x00:@00e7;0x80:@008b; 
  $  033.LIN1节点9诊断故障状态        $    $           $    $  ANS002.BYTE004  $  switxh(x&0x80)0x00:@00c8;0x80:@096d; 
  $  034.通道开关                     $    $           $    $  ANS003.BYTE003  $  switxh(x&0x08)0x00:@002e;0x08:@0037; 
  $  035.电池电压                     $    $  伏特     $    $  ANS004.BYTE003  $  y=(x)*0.1; 

;******************************************************************************************************************************************************

