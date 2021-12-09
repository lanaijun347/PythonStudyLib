
     系统名称:BCM (车身控制模块)

     系统ID:0000442C

;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~748,718,748

进入命令:

  $~ REQ000:740 02 10 03 00 00 00 00 00       $~ ANS000:748 02 10 03 00 00 00 00 00

空闲命令:

  $! REQ000:740 02 3E 00 00 00 00 00 00       $! ANS000:748 02 3E 00 00 00 00 00 00


;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~748,718,748

进入命令:

  $~ REQ000:740 02 10 01 00 00 00 00 00       $~ ANS000:748 02 10 01 00 00 00 00 00

空闲命令:

  $! REQ000:740 02 3E 00 00 00 00 00 00       $! ANS000:748 02 3E 00 00 00 00 00 00


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

  $#  REQ000:740 03 19 02 2C 00 00 00 00            $#  

			故障码表示:帧长决定故障个数,$#BYTE03$#开始表示故障码,每$#4$#个字节表示一个故障码,前$#3$#个字节表示码号.

			码库: $*$*DTC/0000442C

			读码方式:case 13

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:740 04 14 FF FF FF 00 00 00            $$  

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:740 03 22 F1 87 00 00 00 00            $%  
  $%  REQ001:740 03 22 F1 8B 00 00 00 00            $%  
  $%  REQ002:740 03 22 F1 90 00 00 00 00            $%  
  $%  REQ003:740 03 22 F1 91 00 00 00 00            $%  
  $%  REQ004:740 03 22 F1 A0 00 00 00 00            $%  
  $%  REQ005:740 03 22 F1 A1 00 00 00 00            $%  
  $%  REQ006:740 03 22 F1 A2 00 00 00 00            $%  
  $%  REQ007:740 03 22 F1 A8 00 00 00 00            $%  
  $%  REQ008:740 03 22 F1 A9 00 00 00 00            $%  
  $%  REQ009:740 03 22 F1 10 00 00 00 00            $%  
  $%  REQ010:740 03 22 F1 20 00 00 00 00            $%  
  $%  REQ011:740 03 22 F1 21 00 00 00 00            $%  
  $%  REQ012:740 03 22 F1 83 00 00 00 00            $%  
  $%  REQ013:740 03 22 F1 8A 00 00 00 00            $%  
  $%  REQ014:740 03 22 F1 8C 00 00 00 00            $%  
  $%  REQ015:740 03 22 F1 92 00 00 00 00            $%  
  $%  REQ016:740 03 22 F1 94 00 00 00 00            $%  
  $%  REQ017:740 03 22 F1 98 00 00 00 00            $%  
  $%  REQ018:740 03 22 F1 A5 00 00 00 00            $%  
  $%  REQ019:740 03 22 F1 AA 00 00 00 00            $%  

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
  $IN_-1  REQ000:740 02 27 09 00 00 00 00 00            $IN_-1  
  $IN_-1  REQ001:740 06 27 0A 00 00 00 00 00            $IN_-1  

				加密case:[102]

<DS>
	<DS_IN num="-1">
		<call_protocol label="security_access_new" function="security_access_new">
		<!--安全算法种cass-->
		<param type="string" value="102"/>
		<!--读命令,写命令-->
		<param type="command" value="DS_IN_CMD_ALL_000,DS_IN_CMD_ALL_001"/>
		<!--读命令偏移,读字节偏移,读取字节个数,写命令偏移,写字节偏移+3，修改字节个数-->
		<param type="string" value="0,2,4,1,5,4"/>
		</call_protocol>
	</DS_IN>
</DS>

  $  REQ000:740 03 22 62 02 00 00 00 00            $  
  $  REQ001:740 03 22 62 03 00 00 00 00            $  
  $  REQ002:740 03 22 62 05 00 00 00 00            $  
  $  REQ003:740 03 22 B1 41 00 00 00 00            $  
  $  REQ004:740 03 22 B5 07 00 00 00 00            $  
  $  REQ005:740 03 22 B5 08 00 00 00 00            $  
  $  REQ006:740 03 22 B5 11 00 00 00 00            $  
  $  REQ007:740 03 22 B5 12 00 00 00 00            $  
  $  REQ008:740 03 22 D1 10 00 00 00 00            $  
  $  REQ009:740 03 22 D1 12 00 00 00 00            $  
  $  REQ010:740 03 22 D1 14 00 00 00 00            $  
  $  REQ011:740 03 22 D1 16 00 00 00 00            $  
  $  REQ012:740 03 22 D1 60 00 00 00 00            $  
  $  REQ013:740 03 22 61 01 00 00 00 00            $  
  $  REQ014:740 03 22 61 02 00 00 00 00            $  
  $  REQ015:740 03 22 61 03 00 00 00 00            $  
  $  REQ016:740 03 22 61 09 00 00 00 00            $  
  $  REQ017:740 03 22 61 2C 00 00 00 00            $  
  $  REQ018:740 03 22 61 15 00 00 00 00            $  
  $  REQ019:740 03 22 61 16 00 00 00 00            $  
  $  REQ020:740 03 22 E3 00 00 00 00 00            $  
  $  REQ021:740 03 22 E3 04 00 00 00 00            $  
  $  REQ022:740 03 22 E3 06 00 00 00 00            $  
  $  REQ023:740 03 22 E3 25 00 00 00 00            $  
  $  REQ024:740 03 22 E3 40 00 00 00 00            $  
  $  REQ025:740 03 22 E3 29 00 00 00 00            $  
  $  REQ026:740 03 22 C1 A3 00 00 00 00            $  
  $  REQ027:740 03 22 B5 03 00 00 00 00            $  

  $  000.钥匙ID在防盗回应天线范围内                              $    $           $    $  ANS000.BYTE003  $  y=(x&0xF0)*1; 
  $  001.可关联钥匙的数目                                        $    $           $    $  ANS000.BYTE003  $  y=(x&0x0F)*1; 
  $  002.钥匙芯片/发射器状态：最后一次检测到的钥匙发射器ID       $    $           $    $  ANS000.BYTE004  $  y=(x&0xF0)*1; 
  $  003.钥匙已被防盗线圈识别到                                  $    $           $    $  ANS000.BYTE004  $  switxh(x&0x04)0x00:@0022;0x04:@0021; 
  $  004.RF校验和错误标志位                                      $    $           $    $  ANS000.BYTE004  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  005.RF帧结构错误                                            $    $           $    $  ANS000.BYTE004  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 
  $  006.钥匙芯片/发射器状态：最后一次按压类型                   $    $           $    $  ANS000.BYTE005  $  switxh(x&0xE0)0x00:@07c9;0x20:@0359;0x40:@035a;0x60:@0811; 
  $  007.最后一次接收到的遥控器按钮                              $    $           $    $  ANS000.BYTE005  $  switxh(x&0x0F)0x00:@0449;0x01:@044a;0x02:@044b;0x03:@044c;0x04:@03e2;0x05:@01f9; 
  $  008.无效的PIN存在                                           $    $           $    $  ANS001.BYTE003  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  009.PIN输错锁定次数                                         $    $           $    $  ANS001.BYTE003  $  y=(x&0x0F)*1; 
  $  010.BCM持续锁定的时间                                       $    $  分钟     $    $  ANS001.BYTE004  $  y=((x1*256+x2)&0xFFFF)*1; 
  $  011.最近一次触发报警的事件                                  $    $           $    $  ANS002.BYTE003  $  switxh(x&0xF0)0x10:@0878;0x20:@0463;0x30:@087a;0x40:@087b;0x50:@0b29;0x60:@0b2a;0x70:@0466;0x80:@0467;0x90:@087e;0xA0:@0469;0xB0:@046a;0xC0:@046b;0xF0:@046c; 
  $  012.防盗警报                                                $    $           $    $  ANS003.BYTE003  $  switxh(x&0x07)0x00:@002e;0x01:@0361;0x02:@0362;0x05:@0962;0x06:@0963; 
  $  013.发动机防盗系统激活                                      $    $           $    $  ANS004.BYTE003  $  switxh(x&0x40)0x00:@0022;0x40:@0021; 
  $  014.因为管柱锁启动电机被关闭                                $    $           $    $  ANS004.BYTE003  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  015.起动电机禁用-惯性开关打开                               $    $           $    $  ANS004.BYTE003  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  016.由于无效钥匙造成起动开关关闭                            $    $           $    $  ANS004.BYTE003  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  017.由于P/N档信号的输入启动电机关闭                         $    $           $    $  ANS004.BYTE003  $  switxh(x&0x04)0x00:@0022;0x04:@0021; 
  $  018.发动机达到一定速度时，启动器关闭                        $    $           $    $  ANS004.BYTE003  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  019.PIN 已编程                                              $    $           $    $  ANS004.BYTE004  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  020.密码已编程                                              $    $           $    $  ANS004.BYTE004  $  switxh(x&0x40)0x00:@0022;0x40:@0021; 
  $  021.VIN 已编程                                              $    $           $    $  ANS004.BYTE004  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  022.识别BCM是否处于锁止状态                                 $    $           $    $  ANS004.BYTE004  $  switxh(x&0x01)0x00:@06fb;0x01:@001f; 
  $  023.超时导致起动电机继电器断开                              $    $           $    $  ANS004.BYTE005  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  024.起动电机禁用-ECM未认证                                  $    $           $    $  ANS004.BYTE005  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  025.起动电机禁用-离合/空挡开关打开                          $    $           $    $  ANS004.BYTE005  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  026.忽略口令                                                $    $           $    $  ANS004.BYTE005  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  027.正在撞击                                                $    $           $    $  ANS004.BYTE005  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 
  $  028.钥匙4已学习                                             $    $           $    $  ANS005.BYTE003  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  029.钥匙3已学习                                             $    $           $    $  ANS005.BYTE003  $  switxh(x&0x04)0x00:@0022;0x04:@0021; 
  $  030.钥匙2已学习                                             $    $           $    $  ANS005.BYTE003  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  031.钥匙1已学习                                             $    $           $    $  ANS005.BYTE003  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 
  $  032.无钥匙起动认证通过                                      $    $           $    $  ANS005.BYTE005  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  033.无钥匙进入认证通过                                      $    $           $    $  ANS005.BYTE005  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  034.通过PEPS禁用钥匙1                                       $    $           $    $  ANS006.BYTE006  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  035.通过PEPS禁用钥匙2                                       $    $           $    $  ANS006.BYTE006  $  switxh(x&0x40)0x00:@0022;0x40:@0021; 
  $  036.通过PEPS禁用钥匙3                                       $    $           $    $  ANS006.BYTE006  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  037.通过PEPS禁用钥匙4                                       $    $           $    $  ANS006.BYTE006  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  038.主灯光开关-闪烁                                         $    $           $    $  ANS007.BYTE003  $  switxh(x&0x08)0x00:@002e;0x08:@0037; 
  $  039.左前车窗一键上升/下降开关状态(DDSP)                     $    $           $    $  ANS008.BYTE003  $  switxh(x&0x04)0x00:@002e;0x04:@0037; 
  $  040.左前车窗开关状态-向上(DDSP)                             $    $           $    $  ANS008.BYTE003  $  switxh(x&0x02)0x00:@002e;0x02:@0037; 
  $  041.左前车窗开关状态-向下(DDSP)                             $    $           $    $  ANS008.BYTE003  $  switxh(x&0x01)0x00:@002e;0x01:@0037; 
  $  042.右前车窗一键上升/下降开关状态                           $    $           $    $  ANS008.BYTE004  $  switxh(x&0x40)0x00:@002e;0x40:@0037; 
  $  043.右前车窗开关状态-向上                                   $    $           $    $  ANS008.BYTE004  $  switxh(x&0x20)0x00:@002e;0x20:@0037; 
  $  044.右前车窗开关状态-向下                                   $    $           $    $  ANS008.BYTE004  $  switxh(x&0x10)0x00:@002e;0x10:@0037; 
  $  045.右前车窗一键上升/下降开关状态(DDSP)                     $    $           $    $  ANS008.BYTE004  $  switxh(x&0x04)0x00:@002e;0x04:@0037; 
  $  046.右前车窗开关状态-向上(DDSP)                             $    $           $    $  ANS008.BYTE004  $  switxh(x&0x02)0x00:@002e;0x02:@0037; 
  $  047.右前车窗开关状态-向下(DDSP)                             $    $           $    $  ANS008.BYTE004  $  switxh(x&0x01)0x00:@002e;0x01:@0037; 
  $  048.左后车窗高速开关动作                                    $    $           $    $  ANS008.BYTE005  $  switxh(x&0x40)0x00:@002e;0x40:@0037; 
  $  049.左后车窗开关-向上动作                                   $    $           $    $  ANS008.BYTE005  $  switxh(x&0x20)0x00:@002e;0x20:@0037; 
  $  050.左后车窗开关-向下动作                                   $    $           $    $  ANS008.BYTE005  $  switxh(x&0x10)0x00:@002e;0x10:@0037; 
  $  051.左后车窗一键上升/下降开关状态(DDSP)                     $    $           $    $  ANS008.BYTE005  $  switxh(x&0x04)0x00:@002e;0x04:@0037; 
  $  052.左后车窗开关状态-向上(DDSP)                             $    $           $    $  ANS008.BYTE005  $  switxh(x&0x02)0x00:@002e;0x02:@0037; 
  $  053.左后车窗开关状态-向下(DDSP)                             $    $           $    $  ANS008.BYTE005  $  switxh(x&0x01)0x00:@002e;0x01:@0037; 
  $  054.右后车窗高速动作开关                                    $    $           $    $  ANS008.BYTE006  $  switxh(x&0x40)0x00:@002e;0x40:@0037; 
  $  055.右后车窗开关-向上动作                                   $    $           $    $  ANS008.BYTE006  $  switxh(x&0x20)0x00:@002e;0x20:@0037; 
  $  056.右后车窗开关-向下动作                                   $    $           $    $  ANS008.BYTE006  $  switxh(x&0x10)0x00:@002e;0x10:@0037; 
  $  057.右后车窗一键上升/下降开关状态(DDSP)                     $    $           $    $  ANS008.BYTE006  $  switxh(x&0x04)0x00:@002e;0x04:@0037; 
  $  058.右后车窗开关状态-向上(DDSP)                             $    $           $    $  ANS008.BYTE006  $  switxh(x&0x02)0x00:@002e;0x02:@0037; 
  $  059.右后车窗开关状态-向下(DDSP)                             $    $           $    $  ANS008.BYTE006  $  switxh(x&0x01)0x00:@002e;0x01:@0037; 
  $  060.尾门打开开关                                            $    $           $    $  ANS009.BYTE003  $  switxh(x&0x20)0x00:@002e;0x20:@0037; 
  $  061.发动机罩开启状态                                        $    $           $    $  ANS009.BYTE003  $  switxh(x&0x10)0x00:@002e;0x10:@0037; 
  $  062.右后车门打开状态                                        $    $           $    $  ANS009.BYTE003  $  switxh(x&0x08)0x00:@002e;0x08:@0037; 
  $  063.左后车门打开状态                                        $    $           $    $  ANS009.BYTE003  $  switxh(x&0x04)0x00:@002e;0x04:@0037; 
  $  064.前排乘客侧门打开状态                                    $    $           $    $  ANS009.BYTE003  $  switxh(x&0x02)0x00:@002e;0x02:@0037; 
  $  065.驾驶员侧车门打开状态                                    $    $           $    $  ANS009.BYTE003  $  switxh(x&0x01)0x00:@002e;0x01:@0037; 
  $  066.内部主解锁开关                                          $    $           $    $  ANS009.BYTE004  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  067.内部主锁止开关                                          $    $           $    $  ANS009.BYTE004  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 
  $  068.后雨刮电机复位开关状态                                  $    $           $    $  ANS010.BYTE003  $  switxh(x&0x80)0x00:@002e;0x80:@0037; 
  $  069.前刮水器停止开关                                        $    $           $    $  ANS010.BYTE003  $  switxh(x&0x40)0x00:@002e;0x40:@0037; 
  $  070.后风窗洗涤开关                                          $    $           $    $  ANS010.BYTE003  $  switxh(x&0x20)0x00:@002e;0x20:@0037; 
  $  071.前风窗洗涤开关                                          $    $           $    $  ANS010.BYTE003  $  switxh(x&0x10)0x00:@002e;0x10:@0037; 
  $  072.后刮水器选择开关                                        $    $           $    $  ANS010.BYTE003  $  switxh(x&0x04)0x00:@002e;0x04:@0037; 
  $  073.前刮水器选择开关 2                                      $    $           $    $  ANS010.BYTE003  $  switxh(x&0x02)0x00:@002e;0x02:@0037; 
  $  074.前刮水器选择开关 1                                      $    $           $    $  ANS010.BYTE003  $  switxh(x&0x01)0x00:@002e;0x01:@0037; 
  $  075.雨量传感器硬件故障                                      $    $           $    $  ANS010.BYTE006  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  076.雨量传感器初始化故障                                    $    $           $    $  ANS010.BYTE006  $  switxh(x&0x40)0x00:@0022;0x40:@0021; 
  $  077.灯光传感器硬件故障                                      $    $           $    $  ANS010.BYTE006  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  078.雨量灯光传感器配置状态                                  $    $           $    $  ANS010.BYTE006  $  switxh(x&0x10)0x00:@096e;0x10:@0914; 
  $  079.雨量灯光传感器配置错误                                  $    $           $    $  ANS010.BYTE006  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  080.制动踏板开关状态-硬线信号                               $    $           $    $  ANS011.BYTE004  $  switxh(x&0x20)0x00:@0706;0x20:@003b; 
  $  081.PEPS运行/起动挡输出错误                                 $    $           $    $  ANS012.BYTE005  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  082.PEPS辅助挡控制输出                                      $    $           $    $  ANS012.BYTE005  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 
  $  083.PEPS运行/起动挡控制输出                                 $    $           $    $  ANS012.BYTE006  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  084.雨刮延时调节开关电压信号                                $    $  伏       $    $  ANS013.BYTE003  $  y=(x&0xFF)*0.02; 
  $  085.转弯灯开关                                              $    $  伏特     $    $  ANS014.BYTE003  $  y=(x&0xFF)*0.02; 
  $  086.远光灯常亮/点动开关电压值                               $    $  伏       $    $  ANS015.BYTE003  $  y=(x&0xFF)*0.02; 
  $  087.发动机罩开关电压                                        $    $  伏       $    $  ANS016.BYTE003  $  y=(x&0xFF)*0.02; 
  $  088.启停按钮信号电压                                        $    $  伏       $    $  ANS017.BYTE003  $  y=(x&0xFF)*0.02; 
  $  089.辅助挡指示灯PWM占空比                                   $    $  %        $    $  ANS018.BYTE003  $  y=(x&0xFF)*0.4; 
  $  090.起动/运行挡指示灯PWM占空比                              $    $  %        $    $  ANS019.BYTE003  $  y=(x&0xFF)*0.4; 
  $  091.无钥匙进入启停开关故障状态                              $    $           $    $  ANS020.BYTE003  $  switxh(x&0x07)0x00:@00c8;0x01:@0278;0x02:@0277;0x03:@02eb;0x04:@03a0;0x05:@03b0; 
  $  092.点火开关状态                                            $    $           $    $  ANS021.BYTE003  $  switxh(x&0x03)0x00:@002e;0x01:@055e;0x02:@0970;0x03:@095f; 
  $  093.系统电压模式有效                                        $    $           $    $  ANS022.BYTE003  $  switxh(x&0x03)0x00:@001a;0x01:@0973;0x02:@03ef;0x03:@03f0; 
  $  094.雨量灯光传感器灵敏度                                    $    $           $    $  ANS023.BYTE003  $  switxh(x&0xE0)0x00:@0802;0x20:@0803;0x40:@0804;0x60:@0805; 
  $  095.远程起动车辆动力总成起动中止原因                        $    $           $    $  ANS024.BYTE003  $  switxh(x&0xF0)0x00:@046d;0x10:@0c9d;0x20:@046f;0x30:@0470;0x40:@0471;0x50:@0472;0x60:@0885;0x70:@0474;0x80:@0886;0xF0:@047a; 
  $  096.远程起动车辆动力总成运行中止原因                        $    $           $    $  ANS024.BYTE003  $  switxh(x&0x0F)0x00:@046d;0x01:@046e;0x02:@046f;0x03:@0470;0x04:@0471;0x05:@0472;0x06:@0473;0x07:@0474;0x08:@0475;0x09:@0476;0x0A:@0477;0x0B:@0478;0x0C:@0479;0x0F:@047a; 
  $  097.转向灯开关状态                                          $    $           $    $  ANS025.BYTE003  $  switxh(x&0xC0)0x00:@002e;0x40:@057c;0x80:@058a; 
  $  098.已学习钥匙1序列号                                       $    $           $    $  ANS026.BYTE003  $  HEX(x1,x2,x3,x4); 
  $  099.已学习钥匙2序列号                                       $    $           $    $  ANS026.BYTE007  $  HEX(x1,x2,x3,x4); 
  $  100.已学习钥匙3序列号                                       $    $           $    $  ANS026.BYTE011  $  HEX(x1,x2,x3,x4); 
  $  101.已学习钥匙4序列号                                       $    $           $    $  ANS026.BYTE015  $  HEX(x1,x2,x3,x4); 
  $  102.BCM电源模式                                             $    $           $    $  ANS027.BYTE003  $  switxh(x)0x00:@00e8;0x01:@07e0;0x02:@051d;0x03:@001a;0x06:@07c3; 

;******************************************************************************************************************************************************

