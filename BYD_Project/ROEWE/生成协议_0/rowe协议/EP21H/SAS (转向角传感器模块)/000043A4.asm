
     系统名称:SAS (转向角传感器模块)

     系统ID:000043A4

;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~77F,718,748

进入命令:

  $~ REQ000:777 02 10 03 00 00 00 00 00       $~ ANS000:77F 02 10 03 00 00 00 00 00

空闲命令:

  $! REQ000:777 02 3E 00 00 00 00 00 00       $! ANS000:77F 02 3E 00 00 00 00 00 00


;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~77F,718,748

进入命令:

  $~ REQ000:777 02 10 01 00 00 00 00 00       $~ ANS000:77F 02 10 01 00 00 00 00 00

空闲命令:

  $! REQ000:777 02 3E 00 00 00 00 00 00       $! ANS000:77F 02 3E 00 00 00 00 00 00


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

  $#  REQ000:777 03 19 02 2C 00 00 00 00            $#  

			故障码表示:帧长决定故障个数,$#BYTE03$#开始表示故障码,每$#4$#个字节表示一个故障码,前$#3$#个字节表示码号.

			码库: $*$*DTC/000043A4

			读码方式:case 13

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:777 04 14 FF FF FF 00 00 00            $$  

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:777 03 22 F1 87 00 00 00 00            $%  
  $%  REQ001:777 03 22 F1 8B 00 00 00 00            $%  
  $%  REQ002:777 03 22 F1 90 00 00 00 00            $%  
  $%  REQ003:777 03 22 F1 91 00 00 00 00            $%  
  $%  REQ004:777 03 22 F1 A0 00 00 00 00            $%  
  $%  REQ005:777 03 22 F1 A1 00 00 00 00            $%  
  $%  REQ006:777 03 22 F1 A2 00 00 00 00            $%  
  $%  REQ007:777 03 22 F1 A8 00 00 00 00            $%  
  $%  REQ008:777 03 22 F1 A9 00 00 00 00            $%  
  $%  REQ009:777 03 22 F1 00 00 00 00 00            $%  
  $%  REQ010:777 03 22 F1 10 00 00 00 00            $%  
  $%  REQ011:777 03 22 F1 20 00 00 00 00            $%  
  $%  REQ012:777 03 22 F1 21 00 00 00 00            $%  
  $%  REQ013:777 03 22 F1 83 00 00 00 00            $%  
  $%  REQ014:777 03 22 F1 8A 00 00 00 00            $%  
  $%  REQ015:777 03 22 F1 8C 00 00 00 00            $%  
  $%  REQ016:777 03 22 F1 92 00 00 00 00            $%  
  $%  REQ017:777 03 22 F1 94 00 00 00 00            $%  
  $%  REQ018:777 03 22 F1 98 00 00 00 00            $%  
  $%  REQ019:777 03 22 F1 A5 00 00 00 00            $%  
  $%  REQ020:777 03 22 F1 AA 00 00 00 00            $%  

  $%  000:电控单元零件号                             $%    $%  ANS000.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  001:电控单元制造日期                           $%    $%  ANS001.BYTE003  $%  HEX(x1,x2,x3); 
  $%  002:车辆识别码(VIN)                            $%    $%  ANS002.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17); 
  $%  003:电控单元硬件号                             $%    $%  ANS003.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  004:电控单元应用软件号                         $%    $%  ANS004.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  005:电控单元标定软件号                         $%    $%  ANS005.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  006:电控单元网络参考号                         $%    $%  ANS006.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8); 
  $%  007:车辆特征信息(FK)                           $%    $%  ANS007.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20); 
  $%  008:电控单元配置文件号                         $%    $%  ANS008.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  009:软件验证信息域                             $%    $%  ANS009.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11); 
  $%  010:电控单元零件号-刷新信息域                  $%    $%  ANS010.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  011:测试工具参考号-刷新信息域                  $%    $%  ANS010.BYTE008  $%  HEX(x1,x2,x3,x4,x5,x6); 
  $%  012:里程读数-刷新信息域                        $%    $%  ANS010.BYTE014  $%  y=(x1*65536+x2*256+x3)*1; 
  $%  013:网络配置文件零件号-网络信息域(出厂)        $%    $%  ANS011.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  014:测试工具参考号-网络信息域(出厂)            $%    $%  ANS011.BYTE008  $%  HEX(x1,x2,x3,x4,x5,x6); 
  $%  015:里程读数-网络信息域(出厂)                  $%    $%  ANS011.BYTE014  $%  y=(x1*65536+x2*256+x3)*1; 
  $%  016:网络配置文件零件号-网络信息域(当前)        $%    $%  ANS012.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  017:测试工具参考号-网络信息域(当前)            $%    $%  ANS012.BYTE008  $%  HEX(x1,x2,x3,x4,x5,x6); 
  $%  018:里程读数-网络信息域(当前)                  $%    $%  ANS012.BYTE014  $%  y=(x1*65536+x2*256+x3)*1; 
  $%  019:电控单元基础软件参考号                     $%    $%  ANS013.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  020:系统供应商标识号                           $%    $%  ANS014.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  021:电控单元序列号                             $%    $%  ANS015.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16); 
  $%  022:供应商电控单元硬件参考号                   $%    $%  ANS016.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  023:电控单元软件参考号                         $%    $%  ANS017.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  024:配置跟踪域                                 $%    $%  ANS018.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11); 
  $%  025:电控单元索引信息                           $%    $%  ANS019.BYTE003  $%  HEX(x1,x2,x3); 
  $%  026:电控单元刷新过程文件号                     $%    $%  ANS020.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 

;******************************************************************************************************************************************************

数据流:

  $  REQ000:777 03 22 B0 00 00 00 00 00            $  
  $  REQ001:777 03 22 B0 01 00 00 00 00            $  
  $  REQ002:777 03 22 B0 02 00 00 00 00            $  
  $  REQ003:777 03 22 B0 03 00 00 00 00            $  
  $  REQ004:777 03 22 B0 04 00 00 00 00            $  
  $  REQ005:777 03 22 B0 05 00 00 00 00            $  
  $  REQ006:777 03 22 B0 06 00 00 00 00            $  
  $  REQ007:777 03 22 B0 07 00 00 00 00            $  
  $  REQ008:777 03 22 B0 08 00 00 00 00            $  
  $  REQ009:777 03 22 B0 09 00 00 00 00            $  
  $  REQ010:777 03 22 B0 0A 00 00 00 00            $  
  $  REQ011:777 03 22 B0 0C 00 00 00 00            $  
  $  REQ012:777 03 22 B0 0D 00 00 00 00            $  
  $  REQ013:777 03 22 B0 0E 00 00 00 00            $  
  $  REQ014:777 03 22 B0 0F 00 00 00 00            $  
  $  REQ015:777 03 22 B0 10 00 00 00 00            $  
  $  REQ016:777 03 22 B0 11 00 00 00 00            $  
  $  REQ017:777 03 22 B0 12 00 00 00 00            $  
  $  REQ018:777 03 22 B0 13 00 00 00 00            $  
  $  REQ019:777 03 22 B0 14 00 00 00 00            $  
  $  REQ020:777 03 22 B0 15 00 00 00 00            $  
  $  REQ021:777 03 22 B0 16 00 00 00 00            $  
  $  REQ022:777 03 22 B0 17 00 00 00 00            $  
  $  REQ023:777 03 22 B0 18 00 00 00 00            $  
  $  REQ024:777 03 22 B0 19 00 00 00 00            $  
  $  REQ025:777 03 22 B0 20 00 00 00 00            $  
  $  REQ026:777 03 22 B0 21 00 00 00 00            $  
  $  REQ027:777 03 22 B0 22 00 00 00 00            $  
  $  REQ028:777 03 22 B0 23 00 00 00 00            $  
  $  REQ029:777 03 22 B0 24 00 00 00 00            $  
  $  REQ030:777 03 22 B0 25 00 00 00 00            $  
  $  REQ031:777 03 22 B0 26 00 00 00 00            $  
  $  REQ032:777 03 22 B0 27 00 00 00 00            $  
  $  REQ033:777 03 22 B0 28 00 00 00 00            $  
  $  REQ034:777 03 22 B0 29 00 00 00 00            $  
  $  REQ035:777 03 22 B0 2A 00 00 00 00            $  
  $  REQ036:777 03 22 B0 2B 00 00 00 00            $  
  $  REQ037:777 03 22 B0 2E 00 00 00 00            $  
  $  REQ038:777 03 22 B0 2F 00 00 00 00            $  
  $  REQ039:777 03 22 B0 30 00 00 00 00            $  
  $  REQ040:777 03 22 B0 31 00 00 00 00            $  
  $  REQ041:777 03 22 B0 34 00 00 00 00            $  
  $  REQ042:777 03 22 E0 03 00 00 00 00            $  
  $  REQ043:777 03 22 B0 33 00 00 00 00            $  
  $  REQ044:777 03 22 B0 32 00 00 00 00            $  

  $  000.滤波前的DCDC高压端直流电压        $    $  伏          $    $  ANS000.BYTE003  $  y=((x1*256+x2)&0x03FF)*1; 
  $  001.滤波后Dclink电压                  $    $  伏          $    $  ANS001.BYTE003  $  y=((x1*256+x2)&0x03FF)*1; 
  $  002.滤波前TM 逆变器高压电流值         $    $  安培        $    $  ANS002.BYTE003  $  y=((x1*256+x2)&0x07FF)*1-1023; 
  $  003.滤波后TM 逆变器高压电流值         $    $  安培        $    $  ANS003.BYTE003  $  y=((x1*256+x2)&0x07FF)*1-1023; 
  $  004.TM电机高压是否在范围内            $    $              $    $  ANS004.BYTE003  $  switxh(x&0xFF)0x00:@0022;0x01:@0021; 
  $  005.TM电机是否限扭                    $    $              $    $  ANS005.BYTE003  $  switxh(x&0xFF)0x00:@0022;0x01:@0021; 
  $  006.TM电机扭矩需求                    $    $  牛米        $    $  ANS006.BYTE003  $  y=((x1*256+x2)&0x07FF)*1-1023; 
  $  007.TM电机最大扭矩上升率              $    $  牛米/秒     $    $  ANS007.BYTE003  $  y=(x1*256+x2)*2; 
  $  008.发自VCU的TM电机最小扭矩指令       $    $  牛米        $    $  ANS008.BYTE003  $  y=((x1*256+x2)&0x07FF)*1-1023; 
  $  009.发自VCU的TM电机最大扭矩指令       $    $  牛米        $    $  ANS009.BYTE003  $  y=((x1*256+x2)&0x07FF)*1-1023; 
  $  010.TM电机电磁扭矩                    $    $  牛米        $    $  ANS010.BYTE003  $  y=((x1*256+x2)&0x07FF)*1-1023; 
  $  011.TM发电模式最小可用扭矩            $    $  牛米        $    $  ANS011.BYTE003  $  y=((x1*256+x2)&0x07FF)*1-1023; 
  $  012.TM电动模式最大可用扭矩            $    $  牛米        $    $  ANS012.BYTE003  $  y=((x1*256+x2)&0x07FF)*1-1023; 
  $  013.发电扭矩限制原因                  $    $              $    $  ANS013.BYTE003  $  switxh(x&0xFF)0x00:@00e7;0x01:@02ed;0x02:@02ee;0x03:@02ef;0x04:@02f0;0x05:@02f1;0x06:@02f2;0x07:@02f3;0x08:@02f4;0x09:@02f5;0x0A:@0ca7;0x0F:@0ca5;0x10:@0ca6; 
  $  014.电动扭矩限制原因                  $    $              $    $  ANS014.BYTE003  $  switxh(x&0xFF)0x00:@00e7;0x01:@02ed;0x02:@02ee;0x03:@02ef;0x04:@02f0;0x05:@02f1;0x06:@02f2;0x07:@02f3;0x08:@02f4;0x09:@02f5;0x0A:@02f6;0x0F:@0ca5;0x10:@0ca6; 
  $  015.TM电机防抖动控制标记              $    $              $    $  ANS015.BYTE003  $  switxh(x&0x07)0x00:@0022;0x01:@0021; 
  $  016.TM无防抖动控制时实际扭矩          $    $  牛米        $    $  ANS016.BYTE003  $  y=((x1*256+x2)&0x07FF)*1-1023; 
  $  017.TM逆变器温度                      $    $  摄氏度      $    $  ANS017.BYTE003  $  y=(x)*1-40; 
  $  018.TM电机目标转速                    $    $  转/分       $    $  ANS018.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  019.牵引电机速度                      $    $  转/分钟     $    $  ANS019.BYTE003  $  y=(x1*256+x2)*1-32767; 
  $  020.TM W相电流                        $    $  安培        $    $  ANS020.BYTE003  $  y=(x1*256+x2)*1-1023; 
  $  021.TM V相电流                        $    $  安培        $    $  ANS021.BYTE003  $  y=(x1*256+x2)*1-1023; 
  $  022.TM U相电流                        $    $  安培        $    $  ANS022.BYTE003  $  y=(x1*256+x2)*1-1023; 
  $  023.TM电机定子电流频率                $    $  千赫        $    $  ANS023.BYTE003  $  y=(x1*256+x2)*1-10000; 
  $  024.TM 定子电流有效值                 $    $  安培        $    $  ANS024.BYTE003  $  y=((x1*256+x2)&0x07FF)*1-1023; 
  $  025.TM转角标定请求                    $    $              $    $  ANS025.BYTE003  $  switxh(x&0x03)0x00:@0022;0x01:@0021; 
  $  026.TM三相短路标识                    $    $              $    $  ANS026.BYTE003  $  switxh(x&0x03)0x00:@0022;0x01:@0021; 
  $  027.TM运行模式                        $    $              $    $  ANS027.BYTE003  $  switxh(x&0x0F)0x00:@0071;0x01:@0072;0x03:@0030;0x05:@0bcc;0x06:@09c3;0x07:@0074;0x08:@0075;0x09:@0076;0x0A:@0077;0x0B:@0078;0x0C:@0079;0x0D:@0070;0x0E:@007a;0x0F:@09c6; 
  $  028.TM三相开路标记                    $    $              $    $  ANS028.BYTE003  $  switxh(x&0x03)0x00:@0022;0x01:@0021; 
  $  029.电池电压                          $    $  伏特        $    $  ANS029.BYTE003  $  y=(x)*0.1; 
  $  030.终端状态                          $    $              $    $  ANS030.BYTE003  $  switxh(x&0x07)0x00:@002e;0x01:@0037; 
  $  031.BMS主继电器状态                   $    $              $    $  ANS031.BYTE003  $  switxh(x&0x07)0x00:@02ea;0x01:@0206;0x02:@01b1;0x03:@0070; 
  $  032.VCU-TM模式请求                    $    $              $    $  ANS032.BYTE003  $  switxh(x&0x0F)0x01:@0072;0x03:@0030;0x05:@0bcc;0x06:@09c3;0x07:@0074;0x08:@0075;0x09:@0076;0x0A:@0077;0x0B:@0078;0x0E:@007a; 
  $  033.TM电机转子偏置角                  $    $  度          $    $  ANS033.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  034.高压电池包电压                    $    $  伏          $    $  ANS034.BYTE003  $  y=((x1*256+x2)&0x0FFF)*0.25; 
  $  035.冷却泵脉宽调制(PWM)请求           $    $  百分比      $    $  ANS035.BYTE003  $  y=(x)*0.4; 
  $  036.转子偏置角状态                    $    $              $    $  ANS036.BYTE003  $  switxh(x&0x07)0x00:@0a5f;0x01:@022e; 
  $  037.逆变器U相温度                     $    $  摄氏度      $    $  ANS037.BYTE003  $  y=(x)*1-40; 
  $  038.逆变器V相温度                     $    $  摄氏度      $    $  ANS038.BYTE003  $  y=(x)*1-40; 
  $  039.逆变器W相温度                     $    $  摄氏度      $    $  ANS039.BYTE003  $  y=(x)*1-40; 
  $  040.PEB冷却液温度                     $    $  摄氏度      $    $  ANS040.BYTE003  $  y=(x)*1-40; 
  $  041.TM电机定子温度                    $    $  摄氏度      $    $  ANS041.BYTE003  $  y=(x)*1-40; 
  $  042.紧急关闭输入                      $    $              $    $  ANS042.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  043.EDU冷却液温度                     $    $  摄氏度      $    $  ANS043.BYTE003  $  y=(x)*1-40; 
  $  044.冷却泵状态                        $    $              $    $  ANS044.BYTE003  $  switxh(x&0x07)0x00:@0a58;0x01:@0a59;0x02:@0a62;0x03:@0a63;0x04:@0a64;0x05:@0a65;0x06:@0a66;0x07:@0a67; 

;******************************************************************************************************************************************************

