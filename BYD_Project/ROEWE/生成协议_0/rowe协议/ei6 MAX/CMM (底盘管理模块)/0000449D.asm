
     系统名称:CMM (底盘管理模块)

     系统ID:0000449D

;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~77C,718,748

进入命令:

  $~ REQ000:774 02 10 03 00 00 00 00 00       $~ ANS000:77C 02 10 03 00 00 00 00 00

空闲命令:

  $! REQ000:774 02 3E 00 00 00 00 00 00       $! ANS000:77C 02 3E 00 00 00 00 00 00


;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~77C,718,748

进入命令:

  $~ REQ000:774 02 10 01 00 00 00 00 00       $~ ANS000:77C 02 10 01 00 00 00 00 00

空闲命令:

  $! REQ000:774 02 3E 00 00 00 00 00 00       $! ANS000:77C 02 3E 00 00 00 00 00 00


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

  $#  REQ000:774 03 19 02 2C 00 00 00 00            $#  

			故障码表示:帧长决定故障个数,$#BYTE03$#开始表示故障码,每$#4$#个字节表示一个故障码,前$#3$#个字节表示码号.

			码库: $*$*DTC/0000449D

			读码方式:case 13

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:774 04 14 FF FF FF 00 00 00            $$  

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:774 03 22 F1 87 00 00 00 00            $%  
  $%  REQ001:774 03 22 F1 8B 00 00 00 00            $%  
  $%  REQ002:774 03 22 F1 90 00 00 00 00            $%  
  $%  REQ003:774 03 22 F1 91 00 00 00 00            $%  
  $%  REQ004:774 03 22 F1 A0 00 00 00 00            $%  
  $%  REQ005:774 03 22 F1 A1 00 00 00 00            $%  
  $%  REQ006:774 03 22 F1 A2 00 00 00 00            $%  
  $%  REQ007:774 03 22 F1 A8 00 00 00 00            $%  
  $%  REQ008:774 03 22 F1 00 00 00 00 00            $%  
  $%  REQ009:774 03 22 F1 20 00 00 00 00            $%  
  $%  REQ010:774 03 22 F1 83 00 00 00 00            $%  
  $%  REQ011:774 03 22 F1 8A 00 00 00 00            $%  
  $%  REQ012:774 03 22 F1 8C 00 00 00 00            $%  
  $%  REQ013:774 03 22 F1 92 00 00 00 00            $%  
  $%  REQ014:774 03 22 F1 94 00 00 00 00            $%  
  $%  REQ015:774 03 22 F1 98 00 00 00 00            $%  
  $%  REQ016:774 03 22 F1 A5 00 00 00 00            $%  
  $%  REQ017:774 03 22 F1 A9 00 00 00 00            $%  
  $%  REQ018:774 03 22 F1 AA 00 00 00 00            $%  

  $%  000:电控单元零件号                             $%    $%  ANS000.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  001:电控单元制造日期                           $%    $%  ANS001.BYTE003  $%  HEX(x1,x2,x3); 
  $%  002:车辆识别码(VIN)                            $%    $%  ANS002.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17); 
  $%  003:电控单元硬件号                             $%    $%  ANS003.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  004:电控单元应用软件号                         $%    $%  ANS004.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  005:电控单元标定软件号                         $%    $%  ANS005.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  006:电控单元网络参考号                         $%    $%  ANS006.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8); 
  $%  007:车辆特征信息(FK)                           $%    $%  ANS007.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20); 
  $%  008:ECU软件校验号                              $%    $%  ANS008.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11); 
  $%  009:网络配置文件零件号-网络信息域(出厂)        $%    $%  ANS009.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  010:电控单元基础软件参考号                     $%    $%  ANS010.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  011:系统供应商标识号                           $%    $%  ANS011.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  012:电控单元序列号                             $%    $%  ANS012.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16); 
  $%  013:供应商电控单元硬件参考号                   $%    $%  ANS013.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  014:电控单元软件参考号                         $%    $%  ANS014.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  015:配置跟踪域                                 $%    $%  ANS015.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11); 
  $%  016:电控单元索引信息                           $%    $%  ANS016.BYTE003  $%  HEX(x1,x2,x3); 
  $%  017:电控单元配置文件号                         $%    $%  ANS017.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  018:电控单元刷新过程文件号                     $%    $%  ANS018.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 

;******************************************************************************************************************************************************

数据流:

  $  REQ000:774 03 22 B0 01 00 00 00 00            $  
  $  REQ001:774 03 22 B0 10 00 00 00 00            $  
  $  REQ002:774 03 22 B0 11 00 00 00 00            $  
  $  REQ003:774 03 22 B0 20 00 00 00 00            $  
  $  REQ004:774 03 22 B0 21 00 00 00 00            $  
  $  REQ005:774 03 22 B0 22 00 00 00 00            $  
  $  REQ006:774 03 22 B0 30 00 00 00 00            $  
  $  REQ007:774 03 22 B0 40 00 00 00 00            $  
  $  REQ008:774 03 22 B0 50 00 00 00 00            $  
  $  REQ009:774 03 22 B0 51 00 00 00 00            $  
  $  REQ010:774 03 22 B0 60 00 00 00 00            $  

  $  000.加油口小门位置传感器有效性                   $    $           $    $  ANS000.BYTE003  $  switxh(x&0x40)0x00:@0392;0x40:@003a; 
  $  001.加油口小门锁上                               $    $           $    $  ANS000.BYTE003  $  switxh(x&0x30)0x00:@0022;0x10:@0021;0x20:@01b1; 
  $  002.加油口小门位置状态                           $    $           $    $  ANS000.BYTE003  $  switxh(x&0x0E)0x00:@0952;0x02:@0037;0x04:@01b1;0x06:@0ac6;0x08:@0ac7;0x0A:@0392; 
  $  003.检测到加油口小门关闭                         $    $           $    $  ANS000.BYTE003  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 
  $  004.加油口小门位置传感器电压                     $    $  毫伏     $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.001; 
  $  005.燃油系统泄压状态                             $    $           $    $  ANS001.BYTE003  $  switxh(x&0x0C)0x00:@0aec;0x04:@0aed;0x08:@0aee;0x0C:@0aef; 
  $  006.燃油系统泄压命令                             $    $           $    $  ANS001.BYTE003  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  007.加油泄压请求                                 $    $           $    $  ANS001.BYTE003  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 
  $  008.燃油系统泄压待定计时器                       $    $  秒       $    $  ANS001.BYTE004  $  y=(x1*16777216+x2*65536+x3*256+x4)*0.00006103515625; 
  $  009.油箱蒸气压力有效性                           $    $           $    $  ANS002.BYTE003  $  switxh(x&0x01)0x00:@003a;0x01:@0392; 
  $  010.油箱蒸气压力原始值                           $    $  千帕     $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.001953-64; 
  $  011.油箱蒸气压力过滤值                           $    $  千帕     $    $  ANS002.BYTE006  $  y=(x1*256+x2)*0.001953-64; 
  $  012.加油请求开关传感器电压有效性                 $    $           $    $  ANS003.BYTE003  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  013.加油请求开关状态                             $    $           $    $  ANS003.BYTE003  $  switxh(x&0x07)0x00:@0ac6;0x01:@0ac7;0x02:@008b;0x03:@00e7;0x04:@0392; 
  $  014.加油请求开关电压                             $    $  毫伏     $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.001; 
  $  015.检测到有效加油请求                           $    $           $    $  ANS004.BYTE003  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  016.加油请求                                     $    $           $    $  ANS004.BYTE003  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 
  $  017.加油完成                                     $    $           $    $  ANS005.BYTE003  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 
  $  018.加油口小门锁定完成                           $    $           $    $  ANS006.BYTE003  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  019.加油口小门锁定状态                           $    $           $    $  ANS006.BYTE003  $  switxh(x&0x70)0x00:@0027;0x10:@0110;0x20:@0a1d;0x30:@0ade;0x40:@0adf;0x50:@0ae0; 
  $  020.加油口小门锁定条件满足                       $    $           $    $  ANS006.BYTE003  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  021.加油口小门期望锁定状态                       $    $           $    $  ANS006.BYTE003  $  switxh(x&0x07)0x00:@0027;0x01:@0110;0x02:@0a1d;0x03:@0ade;0x04:@0adf;0x05:@0ae0; 
  $  022.加油口小门锁止位置传感器有效性               $    $           $    $  ANS006.BYTE004  $  switxh(x&0x08)0x00:@0392;0x08:@003a; 
  $  023.加油口小门锁止位置状态                       $    $           $    $  ANS006.BYTE004  $  switxh(x&0x07)0x00:@0ae1;0x01:@0ae2;0x02:@0ae3;0x03:@0ae4;0x04:@0ae5;0x05:@0ae6;0x06:@0ae7; 
  $  024.加油口小门锁止位置传感器电压                 $    $  毫伏     $    $  ANS006.BYTE005  $  y=(x1*256+x2)*0.001; 
  $  025.车辆加油状态                                 $    $           $    $  ANS007.BYTE003  $  switxh(x&0x0C)0x00:@0ae8;0x04:@0ae9;0x08:@0aea;0x0C:@0aeb; 
  $  026.加油口小门开启指示灯点亮                     $    $           $    $  ANS007.BYTE003  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  027.燃油系统服务指示灯点亮                       $    $           $    $  ANS007.BYTE003  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 
  $  028.加油事件计数器-来自EEPROM                    $    $           $    $  ANS008.BYTE003  $  y=(x&0x0C)>>2; 
  $  029.加油事件计数器-来自ECM                       $    $           $    $  ANS008.BYTE003  $  y=(x&0x03)*1; 
  $  030.加油总次数                                   $    $           $    $  ANS009.BYTE003  $  y=(x1*16777216+x2*65536+x3*256+x4)*1; 
  $  031.泄压待定计时错误                             $    $           $    $  ANS010.BYTE003  $  switxh(x&0x80)0x00:@0022;0x80:@0021; 
  $  032.泄压失败错误                                 $    $           $    $  ANS010.BYTE003  $  switxh(x&0x40)0x00:@0022;0x40:@0021; 
  $  033.加油口小门位置传感器无效错误指示             $    $           $    $  ANS010.BYTE003  $  switxh(x&0x20)0x00:@0022;0x20:@0021; 
  $  034.加油口小门开闭电机控制电路无效错误指示       $    $           $    $  ANS010.BYTE003  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  035.加油请求开关电压传感器无效错误指示           $    $           $    $  ANS010.BYTE003  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  036.加油口小门开闭电机异常卡滞错误               $    $           $    $  ANS010.BYTE003  $  switxh(x&0x04)0x00:@0022;0x04:@0021; 
  $  037.加油口小门开闭电机电流持续无效错误           $    $           $    $  ANS010.BYTE003  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  038.加油口小门上锁解锁切换错误                   $    $           $    $  ANS010.BYTE003  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 
  $  039.加油口小门锁止位置传感器无效错误             $    $           $    $  ANS010.BYTE004  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  040.加油口小门执行器故障                         $    $           $    $  ANS010.BYTE004  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 

;******************************************************************************************************************************************************

