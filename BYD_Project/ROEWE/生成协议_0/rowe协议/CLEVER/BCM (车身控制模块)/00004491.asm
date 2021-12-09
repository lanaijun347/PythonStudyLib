
     系统名称:BCM (车身控制模块)

     系统ID:00004491

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

			码库: $*$*DTC/00004491

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
  $%  011:里程读数-刷新信息域                        $%    $%  ANS009.BYTE014  $%  y=(x1*65536+x2*256+x3)*1; 
  $%  012:网络配置文件零件号-网络信息域(出厂)        $%    $%  ANS010.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  013:测试工具参考号-网络信息域(出厂)            $%    $%  ANS010.BYTE008  $%  HEX(x1,x2,x3,x4,x5,x6); 
  $%  014:里程读数-网络信息域(出厂)                  $%    $%  ANS010.BYTE014  $%  y=(x1*65536+x2*256+x3)*1; 
  $%  015:网络配置文件零件号-网络信息域(当前)        $%    $%  ANS011.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  016:测试工具参考号-网络信息域(当前)            $%    $%  ANS011.BYTE008  $%  HEX(x1,x2,x3,x4,x5,x6); 
  $%  017:里程读数-网络信息域(当前)                  $%    $%  ANS011.BYTE014  $%  y=(x1*65536+x2*256+x3)*1; 
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

  $  REQ000:740 03 22 62 02 00 00 00 00            $  
  $  REQ001:740 03 22 62 03 00 00 00 00            $  
  $  REQ002:740 03 22 62 05 00 00 00 00            $  
  $  REQ003:740 03 22 B1 00 00 00 00 00            $  
  $  REQ004:740 03 22 B1 41 00 00 00 00            $  
  $  REQ005:740 03 22 B2 50 00 00 00 00            $  
  $  REQ006:740 03 22 B2 52 00 00 00 00            $  
  $  REQ007:740 03 22 B5 07 00 00 00 00            $  
  $  REQ008:740 03 22 B5 08 00 00 00 00            $  
  $  REQ009:740 03 22 B5 12 00 00 00 00            $  
  $  REQ010:740 03 22 D1 05 00 00 00 00            $  
  $  REQ011:740 03 22 D1 12 00 00 00 00            $  
  $  REQ012:740 03 22 D1 14 00 00 00 00            $  
  $  REQ013:740 03 22 D1 16 00 00 00 00            $  
  $  REQ014:740 03 22 D1 62 00 00 00 00            $  
  $  REQ015:740 03 22 D1 D0 00 00 00 00            $  
  $  REQ016:740 03 22 61 01 00 00 00 00            $  
  $  REQ017:740 03 22 61 02 00 00 00 00            $  
  $  REQ018:740 03 22 61 03 00 00 00 00            $  
  $  REQ019:740 03 22 61 2C 00 00 00 00            $  
  $  REQ020:740 03 22 E3 04 00 00 00 00            $  
  $  REQ021:740 03 22 E3 06 00 00 00 00            $  
  $  REQ022:740 03 22 E3 13 00 00 00 00            $  
  $  REQ023:740 03 22 E3 14 00 00 00 00            $  
  $  REQ024:740 03 22 B5 03 00 00 00 00            $  
  $  REQ025:740 03 22 B5 09 00 00 00 00            $  
  $  REQ026:740 03 22 B5 14 00 00 00 00            $  
  $  REQ027:740 03 22 D2 22 00 00 00 00            $  
  $  REQ028:740 03 22 E3 90 00 00 00 00            $  
  $  REQ029:740 03 22 E3 91 00 00 00 00            $  

  $  000.钥匙ID在防盗回应天线范围内                              $    $             $    $  ANS000.BYTE003  $  y=(x&0xF0)*1; 
  $  001.可关联钥匙的数目                                        $    $             $    $  ANS000.BYTE003  $  y=(x&0x0F)*1; 
  $  002.钥匙芯片/发射器状态：最后一次检测到的钥匙发射器ID       $    $             $    $  ANS000.BYTE004  $  y=(x&0xF0)*1; 
  $  003.RF校验和错误标志位                                      $    $             $    $  ANS000.BYTE004  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  004.RF帧结构错误                                            $    $             $    $  ANS000.BYTE004  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 
  $  005.钥匙芯片/发射器状态：最后一次按压类型                   $    $             $    $  ANS000.BYTE005  $  switxh(x&0xE0)0x00:@07c9;0x20:@0359;0x40:@035a;0x60:@0811; 
  $  006.最后一次接收到的遥控器按钮                              $    $             $    $  ANS000.BYTE005  $  switxh(x&0x0F)0x00:@0449;0x01:@044a;0x02:@044b;0x03:@044c;0x04:@03e2;0x05:@01f9; 
  $  007.无效的PIN存在                                           $    $             $    $  ANS001.BYTE003  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  008.PIN输错锁定次数                                         $    $             $    $  ANS001.BYTE003  $  y=(x&0x0F)*1; 
  $  009.BCM持续锁定的时间                                       $    $  分钟       $    $  ANS001.BYTE004  $  y=(x1*256+x2)*1; 
  $  010.最近一次触发报警的事件                                  $    $             $    $  ANS002.BYTE003  $  switxh(x&0xF0)0x00:@0c22;0x10:@0878;0x20:@0463;0x30:@087a;0x40:@087b;0x50:@0b29;0x60:@0b2a;0x70:@0466;0x80:@0467;0x90:@087e;0xA0:@0469;0xB0:@046a;0xC0:@046b;0xD0:@0c23;0xE0:@0c24;0xF0:@046c; 
  $  011.驾驶员车窗智能电机状态                                  $    $             $    $  ANS003.BYTE003  $  switxh(x&0xF0)0x00:@001a;0x10:@0845;0x20:@0846;0x30:@0847;0x40:@0848;0x50:@0849;0x60:@084a; 
  $  012.防盗警报                                                $    $             $    $  ANS004.BYTE003  $  switxh(x&0x07)0x00:@002e;0x01:@0361;0x02:@0362;0x05:@0962;0x06:@0963; 
  $  013.冗余数据：保养里程                                      $    $  千米       $    $  ANS005.BYTE003  $  y=(x1*0x100*0x100+x2*0x100+x3); 
  $  014.备份数据-里程                                           $    $  公里       $    $  ANS006.BYTE003  $  y=(x1*0x100*0x100+x2*0x100+x3); 
  $  015.发动机防盗系统激活                                      $    $             $    $  ANS007.BYTE003  $  switxh(x&0x40)0x00:@0022;0x40:@0021; 
  $  016.PIN 已编程                                              $    $             $    $  ANS007.BYTE004  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  017.密码已编程                                              $    $             $    $  ANS007.BYTE004  $  switxh(x&0x40)0x00:@0022;0x40:@0021; 
  $  018.VIN 已编程                                              $    $             $    $  ANS007.BYTE004  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  019.识别BCM是否处于锁止状态                                 $    $             $    $  ANS007.BYTE004  $  switxh(x&0x01)0x00:@06fb;0x01:@001f; 
  $  020.忽略口令                                                $    $             $    $  ANS007.BYTE005  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  021.正在撞击                                                $    $             $    $  ANS007.BYTE005  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 
  $  022.钥匙4已学习                                             $    $             $    $  ANS008.BYTE003  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  023.钥匙3已学习                                             $    $             $    $  ANS008.BYTE003  $  switxh(x&0x04)0x00:@0022;0x04:@0021; 
  $  024.钥匙2已学习                                             $    $             $    $  ANS008.BYTE003  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  025.钥匙1已学习                                             $    $             $    $  ANS008.BYTE003  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 
  $  026.主灯光开关-闪烁                                         $    $             $    $  ANS009.BYTE003  $  switxh(x&0x08)0x00:@002e;0x08:@0037; 
  $  027.驾驶员车窗破冰功能启用                                  $    $             $    $  ANS010.BYTE004  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  028.驾驶员车窗电机继电器故障                                $    $             $    $  ANS010.BYTE004  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  029.驾驶员车窗电机反转                                      $    $             $    $  ANS010.BYTE004  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  030.驾驶员车窗电机热保护激活                                $    $             $    $  ANS010.BYTE004  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  031.驾驶员车窗系统已初始化                                  $    $             $    $  ANS010.BYTE004  $  switxh(x&0x02)0x00:@0021;0x02:@0022; 
  $  032.驾驶员车窗防夹传感系统故障                              $    $             $    $  ANS010.BYTE004  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 
  $  033.尾门打开开关                                            $    $             $    $  ANS011.BYTE003  $  switxh(x&0x20)0x00:@002e;0x20:@0037; 
  $  034.前排乘客侧门打开状态                                    $    $             $    $  ANS011.BYTE003  $  switxh(x&0x02)0x00:@002e;0x02:@0037; 
  $  035.驾驶员侧车门打开状态                                    $    $             $    $  ANS011.BYTE003  $  switxh(x&0x01)0x00:@002e;0x01:@0037; 
  $  036.内部主解锁开关                                          $    $             $    $  ANS011.BYTE004  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  037.内部主锁止开关                                          $    $             $    $  ANS011.BYTE004  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 
  $  038.前刮水器停止开关                                        $    $             $    $  ANS012.BYTE003  $  switxh(x&0x40)0x00:@002e;0x40:@0037; 
  $  039.前风窗洗涤开关                                          $    $             $    $  ANS012.BYTE003  $  switxh(x&0x10)0x00:@002e;0x10:@0037; 
  $  040.前刮水器选择开关 2                                      $    $             $    $  ANS012.BYTE003  $  switxh(x&0x02)0x00:@002e;0x02:@0037; 
  $  041.前刮水器选择开关 1                                      $    $             $    $  ANS012.BYTE003  $  switxh(x&0x01)0x00:@002e;0x01:@0037; 
  $  042.制动踏板开关状态-硬线信号                               $    $             $    $  ANS013.BYTE004  $  switxh(x&0x20)0x00:@0706;0x20:@003b; 
  $  043.危险警告灯开关输入状态                                  $    $             $    $  ANS013.BYTE004  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  044.电子助力转向模块通信状态                                $    $             $    $  ANS014.BYTE003  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  045.安全气囊控制模块通信状态                                $    $             $    $  ANS014.BYTE003  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 
  $  046.通讯模块通信状态                                        $    $             $    $  ANS014.BYTE004  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  047.车身防盗设定状态                                        $    $             $    $  ANS015.BYTE003  $  switxh(x&0x80)0x00:@002e;0x80:@0037; 
  $  048.车辆远程起动                                            $    $             $    $  ANS015.BYTE004  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  049.防盗报警触发                                            $    $             $    $  ANS015.BYTE006  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  050.钥匙电量低                                              $    $             $    $  ANS015.BYTE006  $  switxh(x&0x40)0x00:@0022;0x40:@0021; 
  $  051.钥匙无效                                                $    $             $    $  ANS015.BYTE006  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  052.雨刮延时调节开关电压信号                                $    $  伏         $    $  ANS016.BYTE003  $  y=(x)*0.02; 
  $  053.转弯灯开关                                              $    $  伏特       $    $  ANS017.BYTE003  $  y=(x)*0.02; 
  $  054.远光灯常亮/点动开关电压值                               $    $  伏         $    $  ANS018.BYTE003  $  y=(x)*0.02; 
  $  055.启停按钮信号电压                                        $    $  伏         $    $  ANS019.BYTE003  $  y=(x)*0.02; 
  $  056.点火开关状态                                            $    $             $    $  ANS020.BYTE003  $  switxh(x&0x03)0x00:@002e;0x01:@055e;0x02:@0970;0x03:@095f; 
  $  057.系统电压模式有效                                        $    $             $    $  ANS021.BYTE003  $  switxh(x&0x03)0x00:@001a;0x01:@0973;0x02:@03ef;0x03:@03f0; 
  $  058.行李箱盖打开状态                                        $    $             $    $  ANS022.BYTE003  $  switxh(x&0xC0)0x00:@002e;0x40:@0037; 
  $  059.示宽灯状态                                              $    $             $    $  ANS023.BYTE003  $  switxh(x&0x06)0x00:@0720;0x02:@0721;0x04:@0722;0x06:@0723; 
  $  060.BCM电源模式                                             $    $             $    $  ANS024.BYTE003  $  switxh(x)0x00:@00e8;0x01:@07e0;0x02:@051d;0x03:@001a;0x06:@07c3; 
  $  061.通过诊断仪禁用钥匙1                                     $    $             $    $  ANS025.BYTE005  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  062.通过诊断仪禁用钥匙2                                     $    $             $    $  ANS025.BYTE005  $  switxh(x&0x40)0x00:@0022;0x40:@0021; 
  $  063.通过诊断仪禁用钥匙3                                     $    $             $    $  ANS025.BYTE005  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  064.通过诊断仪禁用钥匙4                                     $    $             $    $  ANS025.BYTE005  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  065.通过TBOX禁用钥匙1                                       $    $             $    $  ANS026.BYTE005  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  066.通过TBOX禁用钥匙2                                       $    $             $    $  ANS026.BYTE005  $  switxh(x&0x40)0x00:@0022;0x40:@0021; 
  $  067.通过TBOX禁用钥匙3                                       $    $             $    $  ANS026.BYTE005  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  068.通过TBOX禁用钥匙4                                       $    $             $    $  ANS026.BYTE005  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  069.左前胎压有效性                                          $    $             $    $  ANS015.BYTE005  $  switxh(x&0x80)0x00:@003a;0x80:@0392; 
  $  070.右前胎压有效性                                          $    $             $    $  ANS015.BYTE005  $  switxh(x&0x40)0x00:@003a;0x40:@0392; 
  $  071.左后胎压有效性                                          $    $             $    $  ANS015.BYTE005  $  switxh(x&0x20)0x00:@003a;0x20:@0392; 
  $  072.右后胎压有效性                                          $    $             $    $  ANS015.BYTE005  $  switxh(x&0x10)0x00:@003a;0x10:@0392; 
  $  073.左前轮胎温度有效性                                      $    $             $    $  ANS015.BYTE005  $  switxh(x&0x04)0x00:@003a;0x04:@0392; 
  $  074.右前轮胎温度有效性                                      $    $             $    $  ANS015.BYTE005  $  switxh(x&0x02)0x00:@003a;0x02:@0392; 
  $  075.左后轮胎温度有效性                                      $    $             $    $  ANS015.BYTE005  $  switxh(x&0x01)0x00:@003a;0x01:@0392; 
  $  076.右后轮胎温度有效性                                      $    $             $    $  ANS015.BYTE006  $  switxh(x&0x08)0x00:@003a;0x08:@0392; 
  $  077.胎压监测系统故障                                        $    $             $    $  ANS027.BYTE003  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  078.胎压监测系统传感器ID学习完成                            $    $             $    $  ANS027.BYTE003  $  switxh(x&0x04)0x00:@0022;0x04:@0021; 
  $  079.胎压监测系统冬季模式激活                                $    $             $    $  ANS027.BYTE003  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 
  $  080.前左轮胎状态                                            $    $             $    $  ANS028.BYTE003  $  switxh(x&0xE0)0x00:@001a;0x20:@022e;0x40:@0374;0x60:@09ae;0x80:@09af;0xA0:@08b6;0xC0:@09b0;0xE0:@09b1; 
  $  081.前右轮胎状态                                            $    $             $    $  ANS028.BYTE003  $  switxh(x&0x1C)0x00:@001a;0x04:@022e;0x08:@0374;0x0C:@09ae;0x10:@09af;0x14:@08b6;0x18:@09b0;0x1C:@09b1; 
  $  082.左前胎压                                                $    $  千帕       $    $  ANS028.BYTE004  $  y=(x)*4; 
  $  083.后左轮胎状态                                            $    $             $    $  ANS028.BYTE005  $  switxh(x&0xE0)0x00:@001a;0x20:@022e;0x40:@0374;0x60:@09ae;0x80:@09af;0xA0:@08b6;0xC0:@09b0;0xE0:@09b1; 
  $  084.后右轮胎状态                                            $    $             $    $  ANS028.BYTE005  $  switxh(x&0x1C)0x00:@001a;0x04:@022e;0x08:@0374;0x0C:@09ae;0x10:@09af;0x14:@08b6;0x18:@09b0;0x1C:@09b1; 
  $  085.右前胎压                                                $    $  千帕       $    $  ANS028.BYTE006  $  y=(x)*4; 
  $  086.左后胎压                                                $    $  千帕       $    $  ANS028.BYTE007  $  y=(x)*4; 
  $  087.右后胎压                                                $    $  千帕       $    $  ANS028.BYTE008  $  y=(x)*4; 
  $  088.左前轮胎温度                                            $    $  摄氏度     $    $  ANS029.BYTE004  $  y=(x)*2-60; 
  $  089.右前轮胎温度                                            $    $  摄氏度     $    $  ANS029.BYTE006  $  y=(x)*2-60; 
  $  090.左后轮胎温度                                            $    $  摄氏度     $    $  ANS029.BYTE007  $  y=(x)*2-60; 
  $  091.右后轮胎温度                                            $    $  摄氏度     $    $  ANS029.BYTE008  $  y=(x)*2-60; 

;******************************************************************************************************************************************************

