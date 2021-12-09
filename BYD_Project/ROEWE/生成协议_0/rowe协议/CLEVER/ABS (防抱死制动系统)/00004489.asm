
     系统名称:ABS (防抱死制动系统)

     系统ID:00004489

;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~728,718,748

进入命令:

  $~ REQ000:720 02 10 03 00 00 00 00 00       $~ ANS000:728 02 10 03 00 00 00 00 00

空闲命令:

  $! REQ000:720 02 3E 00 00 00 00 00 00       $! ANS000:728 02 3E 00 00 00 00 00 00


;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~728,718,748

进入命令:

  $~ REQ000:720 02 10 01 00 00 00 00 00       $~ ANS000:728 02 10 01 00 00 00 00 00

空闲命令:

  $! REQ000:720 02 3E 00 00 00 00 00 00       $! ANS000:728 02 3E 00 00 00 00 00 00


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

  $#  REQ000:720 03 19 02 2C 00 00 00 00            $#  

			故障码表示:帧长决定故障个数,$#BYTE03$#开始表示故障码,每$#4$#个字节表示一个故障码,前$#3$#个字节表示码号.

			码库: $*$*DTC/00004489

			读码方式:case 13

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:720 04 14 FF FF FF 00 00 00            $$  

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:720 03 22 F1 83 00 00 00 00            $%  
  $%  REQ001:720 03 22 F1 87 00 00 00 00            $%  
  $%  REQ002:720 03 22 F1 8C 00 00 00 00            $%  
  $%  REQ003:720 03 22 F1 90 00 00 00 00            $%  
  $%  REQ004:720 03 22 F1 91 00 00 00 00            $%  
  $%  REQ005:720 03 22 F1 A0 00 00 00 00            $%  
  $%  REQ006:720 03 22 F1 A1 00 00 00 00            $%  
  $%  REQ007:720 03 22 F1 A2 00 00 00 00            $%  
  $%  REQ008:720 03 22 F1 A8 00 00 00 00            $%  
  $%  REQ009:720 03 22 F1 A9 00 00 00 00            $%  
  $%  REQ010:720 03 22 F1 AA 00 00 00 00            $%  
  $%  REQ011:720 03 22 F1 00 00 00 00 00            $%  
  $%  REQ012:720 03 22 F1 20 00 00 00 00            $%  
  $%  REQ013:720 03 22 F1 8A 00 00 00 00            $%  
  $%  REQ014:720 03 22 F1 8B 00 00 00 00            $%  
  $%  REQ015:720 03 22 F1 92 00 00 00 00            $%  
  $%  REQ016:720 03 22 F1 94 00 00 00 00            $%  
  $%  REQ017:720 03 22 F1 98 00 00 00 00            $%  
  $%  REQ018:720 03 22 F1 A5 00 00 00 00            $%  

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
  $%  011:ECU软件校验号                              $%    $%  ANS011.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11); 
  $%  012:网络配置文件零件号-网络信息域(出厂)        $%    $%  ANS012.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  013:系统供应商标识号                           $%    $%  ANS013.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  014:电控单元制造日期                           $%    $%  ANS014.BYTE003  $%  HEX(x1,x2,x3); 
  $%  015:供应商电控单元硬件参考号                   $%    $%  ANS015.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  016:电控单元软件参考号                         $%    $%  ANS016.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  017:配置跟踪域                                 $%    $%  ANS017.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11); 
  $%  018:电控单元索引信息                           $%    $%  ANS018.BYTE003  $%  HEX(x1,x2,x3); 

;******************************************************************************************************************************************************

数据流:

  $  REQ000:720 03 22 B0 00 00 00 00 00            $  
  $  REQ001:720 03 22 B0 01 00 00 00 00            $  
  $  REQ002:720 03 22 B0 02 00 00 00 00            $  
  $  REQ003:720 03 22 B0 03 00 00 00 00            $  
  $  REQ004:720 03 22 B0 04 00 00 00 00            $  

  $  000.防抱死制动系统(ABS)警告灯           $    $              $    $  ANS000.BYTE003  $  switxh(x&0x02)0x02:@0037;0x00:@002e; 
  $  001.电子制动力分配系统(EBD)警告灯       $    $              $    $  ANS000.BYTE003  $  switxh(x&0x01)0x01:@0037;0x00:@002e; 
  $  002.制动液液位低开关状态                $    $              $    $  ANS001.BYTE003  $  switxh(x&0x10)0x10:@0037;0x00:@002e; 
  $  003.刹车灯开关状态                      $    $              $    $  ANS001.BYTE003  $  switxh(x&0x01)0x01:@0037;0x00:@002e; 
  $  004.防抱死制动系统(ABS)工作             $    $              $    $  ANS002.BYTE003  $  switxh(x&0x02)0x02:@008b;0x00:@00e7; 
  $  005.EBD作用                             $    $              $    $  ANS002.BYTE003  $  switxh(x&0x01)0x01:@008b;0x00:@00e7; 
  $  006.防抱死制动系统(ABS)失效             $    $              $    $  ANS003.BYTE003  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  007.电子制动力分配系统(EBD)失效         $    $              $    $  ANS003.BYTE003  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 
  $  008.左前轮速                            $    $  千米/时     $    $  ANS004.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  009.右前轮速                            $    $  千米/时     $    $  ANS004.BYTE005  $  y=(x1*256+x2)*0.1; 
  $  010.右后轮速                            $    $  千米/时     $    $  ANS004.BYTE007  $  y=(x1*256+x2)*0.1; 
  $  011.左后轮速                            $    $  千米/时     $    $  ANS004.BYTE009  $  y=(x1*256+x2)*0.1; 

;******************************************************************************************************************************************************

