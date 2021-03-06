
     系统名称:PEPS (无钥匙进入模块)

     系统ID:000044CD

;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~74D,718,748

进入命令:

  $~ REQ000:745 02 10 03 00 00 00 00 00       $~ ANS000:74D 02 10 03 00 00 00 00 00

空闲命令:

  $! REQ000:745 02 3E 00 00 00 00 00 00       $! ANS000:74D 02 3E 00 00 00 00 00 00


;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~74D,718,748

进入命令:

  $~ REQ000:745 02 10 01 00 00 00 00 00       $~ ANS000:74D 02 10 01 00 00 00 00 00

空闲命令:

  $! REQ000:745 02 3E 00 00 00 00 00 00       $! ANS000:74D 02 3E 00 00 00 00 00 00


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

  $#  REQ000:745 03 19 02 2C 00 00 00 00            $#  

			故障码表示:帧长决定故障个数,$#BYTE03$#开始表示故障码,每$#4$#个字节表示一个故障码,前$#3$#个字节表示码号.

			码库: $*$*DTC/000044CD

			读码方式:case 13

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:745 04 14 FF FF FF 00 00 00            $$  

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:745 03 22 F1 87 00 00 00 00            $%  
  $%  REQ001:745 03 22 F1 8B 00 00 00 00            $%  
  $%  REQ002:745 03 22 F1 90 00 00 00 00            $%  
  $%  REQ003:745 03 22 F1 91 00 00 00 00            $%  
  $%  REQ004:745 03 22 F1 A0 00 00 00 00            $%  
  $%  REQ005:745 03 22 F1 A1 00 00 00 00            $%  
  $%  REQ006:745 03 22 F1 A2 00 00 00 00            $%  
  $%  REQ007:745 03 22 F1 A8 00 00 00 00            $%  
  $%  REQ008:745 03 22 F1 A9 00 00 00 00            $%  
  $%  REQ009:745 03 22 F1 10 00 00 00 00            $%  
  $%  REQ010:745 03 22 F1 20 00 00 00 00            $%  
  $%  REQ011:745 03 22 F1 21 00 00 00 00            $%  
  $%  REQ012:745 03 22 F1 83 00 00 00 00            $%  
  $%  REQ013:745 03 22 F1 8A 00 00 00 00            $%  
  $%  REQ014:745 03 22 F1 8C 00 00 00 00            $%  
  $%  REQ015:745 03 22 F1 92 00 00 00 00            $%  
  $%  REQ016:745 03 22 F1 94 00 00 00 00            $%  
  $%  REQ017:745 03 22 F1 98 00 00 00 00            $%  
  $%  REQ018:745 03 22 F1 A5 00 00 00 00            $%  
  $%  REQ019:745 03 22 F1 AA 00 00 00 00            $%  

  $%  000:电控单元零件号                             $%    $%  ANS000.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  001:电控单元制造日期                           $%    $%  ANS001.BYTE003  $%  HEX(x1,x2,x3); 
  $%  002:车辆识别码(VIN)                            $%    $%  ANS002.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17); 
  $%  003:电控单元硬件号                             $%    $%  ANS003.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  004:电控单元应用软件号                         $%    $%  ANS004.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  005:电控单元标定软件号                         $%    $%  ANS005.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  006:电控单元网络参考号                         $%    $%  ANS006.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8); 
  $%  007:车辆特征信息(FK)                           $%    $%  ANS007.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20); 
  $%  008:电控单元配置文件号                         $%    $%  ANS008.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  009:电控单元零件号-刷新信息域                  $%    $%  ANS009.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  010:测试工具参考号-刷新信息域                  $%    $%  ANS009.BYTE008  $%  HEX(x1,x2,x3,x4,x5,x6); 
  $%  011:里程读数-刷新信息域                        $%    $%  ANS009.BYTE014  $%  y=(x1*0x100*0x100+x2*0x100+x3); 
  $%  012:网络配置文件零件号-网络信息域(出厂)        $%    $%  ANS010.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  013:测试工具参考号-网络信息域(出厂)            $%    $%  ANS010.BYTE008  $%  HEX(x1,x2,x3,x4,x5,x6); 
  $%  014:里程读数-网络信息域(出厂)                  $%    $%  ANS010.BYTE014  $%  y=(x1*0x100*0x100+x2*0x100+x3); 
  $%  015:网络配置文件零件号-网络信息域(当前)        $%    $%  ANS011.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  016:测试工具参考号-网络信息域(当前)            $%    $%  ANS011.BYTE008  $%  HEX(x1,x2,x3,x4,x5,x6); 
  $%  017:里程读数-网络信息域(当前)                  $%    $%  ANS011.BYTE014  $%  y=(x1*0x100*0x100+x2*0x100+x3); 
  $%  018:电控单元基础软件参考号                     $%    $%  ANS012.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  019:系统供应商标识号                           $%    $%  ANS013.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  020:电控单元序列号                             $%    $%  ANS014.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15); 
  $%  021:供应商电控单元硬件参考号                   $%    $%  ANS015.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  022:电控单元软件参考号                         $%    $%  ANS016.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  023:配置跟踪域                                 $%    $%  ANS017.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11); 
  $%  024:电控单元索引信息                           $%    $%  ANS018.BYTE003  $%  HEX(x1,x2,x3); 
  $%  025:电控单元刷新过程文件号                     $%    $%  ANS019.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 

;******************************************************************************************************************************************************

数据流:

		加密命令:
  $IN_-1  REQ000:745 02 27 09 00 00 00 00 00            $IN_-1  
  $IN_-1  REQ001:745 06 27 0A 00 00 00 00 00            $IN_-1  

				加密case:[95]

<DS>
	<DS_IN num="-1">
		<call_protocol label="security_access_new" function="security_access_new">
		<!--安全算法种cass-->
		<param type="string" value="95"/>
		<!--读命令,写命令-->
		<param type="command" value="DS_IN_CMD_ALL_000,DS_IN_CMD_ALL_001"/>
		<!--读命令偏移,读字节偏移,读取字节个数,写命令偏移,写字节偏移+3，修改字节个数-->
		<param type="string" value="0,2,4,1,5,4"/>
		</call_protocol>
	</DS_IN>
</DS>

  $  REQ000:745 03 22 B0 09 00 00 00 00            $  
  $  REQ001:745 03 22 B0 10 00 00 00 00            $  
  $  REQ002:745 03 22 B0 11 00 00 00 00            $  
  $  REQ003:745 03 22 B0 18 00 00 00 00            $  
  $  REQ004:745 03 22 B0 19 00 00 00 00            $  
  $  REQ005:745 03 22 01 05 00 00 00 00            $  
  $  REQ006:745 03 22 B0 16 00 00 00 00            $  
  $  REQ007:745 03 22 E0 01 00 00 00 00            $  
  $  REQ008:745 03 22 E0 04 00 00 00 00            $  
  $  REQ009:745 03 22 E0 07 00 00 00 00            $  
  $  REQ010:745 03 22 E0 08 00 00 00 00            $  
  $  REQ011:745 03 22 E0 09 00 00 00 00            $  
  $  REQ012:745 03 22 B0 15 00 00 00 00            $  

  $  000.驾驶员侧门把手开关- 唤醒源       $    $                $    $  ANS000.BYTE003  $  switxh(x&0x80)0x00:@0021;0x80:@0022; 
  $  001.乘客侧门把手开关- 唤醒源         $    $                $    $  ANS000.BYTE003  $  switxh(x&0x40)0x00:@0021;0x40:@0022; 
  $  002.行李箱盖释放开关- 唤醒源         $    $                $    $  ANS000.BYTE003  $  switxh(x&0x08)0x00:@0021;0x08:@0022; 
  $  003.停启按钮- 唤醒源                 $    $                $    $  ANS000.BYTE003  $  switxh(x&0x01)0x00:@0021;0x01:@0022; 
  $  004.CAN总线激活- 唤醒源              $    $                $    $  ANS000.BYTE004  $  switxh(x&0x80)0x00:@0021;0x80:@0022; 
  $  005.门把手开关类型                   $    $                $    $  ANS001.BYTE003  $  switxh(x&0x01)0x00:@073b;0x01:@073c; 
  $  006.车内低频天线数量                 $    $                $    $  ANS002.BYTE003  $  switxh(x&0x03)0x00:@0761;0x01:@0762;0x02:@0763;0x03:@0764; 
  $  007.PEPS电源模式                     $    $                $    $  ANS003.BYTE003  $  switxh(x&0xFF)0x00:@00e8;0x01:@07e0;0x02:@051d;0x03:@027a; 
  $  008.钥匙1已学习                      $    $                $    $  ANS004.BYTE003  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  009.钥匙2已学习                      $    $                $    $  ANS004.BYTE003  $  switxh(x&0x40)0x00:@0022;0x40:@0021; 
  $  010.钥匙3已学习                      $    $                $    $  ANS004.BYTE003  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  011.钥匙4已学习                      $    $                $    $  ANS004.BYTE003  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  012.钥匙1已禁用                      $    $                $    $  ANS004.BYTE004  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  013.钥匙2已禁用                      $    $                $    $  ANS004.BYTE004  $  switxh(x&0x40)0x00:@0022;0x40:@0021; 
  $  014.钥匙3已禁用                      $    $                $    $  ANS004.BYTE004  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  015.钥匙4已禁用                      $    $                $    $  ANS004.BYTE004  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  016.密钥和PIN码已存储                $    $                $    $  ANS005.BYTE003  $  switxh(x&0x01)0x00:@0021;0x01:@0022; 
  $  017.开始传输数据                     $    $                $    $  ANS005.BYTE003  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  018.防盗数据传输超时                 $    $                $    $  ANS005.BYTE003  $  switxh(x&0x04)0x00:@0022;0x04:@0021; 
  $  019.完成数据传输                     $    $                $    $  ANS005.BYTE003  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  020.数据存储并锁止                   $    $                $    $  ANS005.BYTE003  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  021.PEPS控制器PIN码锁定状态          $    $                $    $  ANS006.BYTE003  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  022.启停按钮输入电压                 $    $  伏            $    $  ANS007.BYTE003  $  y=(x&0xFF)*0.02; 
  $  023.来自 CAN 的车速                  $    $  千米/时       $    $  ANS008.BYTE003  $  y=((x1*256+x2)&0xFFFF)*0.015625; 
  $  024.点火开关状态                     $    $                $    $  ANS009.BYTE003  $  switxh(x&0xFF)0x00:@002e;0x01:@055e;0x02:@0970;0x03:@095f; 
  $  025.左后车轮速度（SCS)               $    $  千米/小时     $    $  ANS010.BYTE003  $  y=((x1*256+x2)&0xFFFF)*0.03125; 
  $  026.右后车轮速度（SCS)               $    $  千米/小时     $    $  ANS011.BYTE003  $  y=((x1*256+x2)&0xFFFF)*0.03125; 
  $  027.已学习钥匙1序列号                $    $                $    $  ANS012.BYTE003  $  HEX(x1,x2,x3,x4); 
  $  028.已学习钥匙2序列号                $    $                $    $  ANS012.BYTE007  $  HEX(x1,x2,x3,x4); 
  $  029.已学习钥匙3序列号                $    $                $    $  ANS012.BYTE011  $  HEX(x1,x2,x3,x4); 
  $  030.已学习钥匙4序列号                $    $                $    $  ANS012.BYTE015  $  HEX(x1,x2,x3,x4); 

;******************************************************************************************************************************************************

