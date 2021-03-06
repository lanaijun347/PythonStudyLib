
     系统名称:TPMS (胎压传感器系统)

     系统ID:00004480

;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~72C,718,748

进入命令:

  $~ REQ000:724 02 10 03 00 00 00 00 00       $~ ANS000:72C 02 10 03 00 00 00 00 00

空闲命令:

  $! REQ000:724 02 3E 00 00 00 00 00 00       $! ANS000:72C 02 3E 00 00 00 00 00 00


;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~72C,718,748

进入命令:

  $~ REQ000:724 02 10 01 00 00 00 00 00       $~ ANS000:72C 02 10 01 00 00 00 00 00

空闲命令:

  $! REQ000:724 02 3E 00 00 00 00 00 00       $! ANS000:72C 02 3E 00 00 00 00 00 00


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

  $#  REQ000:724 03 19 02 2C 00 00 00 00            $#  

			故障码表示:帧长决定故障个数,$#BYTE03$#开始表示故障码,每$#4$#个字节表示一个故障码,前$#3$#个字节表示码号.

			码库: $*$*DTC/00004480

			读码方式:case 13

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:724 04 14 FF FF FF 00 00 00            $$  

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:724 03 22 F1 83 00 00 00 00            $%  
  $%  REQ001:724 03 22 F1 87 00 00 00 00            $%  
  $%  REQ002:724 03 22 F1 8C 00 00 00 00            $%  
  $%  REQ003:724 03 22 F1 90 00 00 00 00            $%  
  $%  REQ004:724 03 22 F1 91 00 00 00 00            $%  
  $%  REQ005:724 03 22 F1 A0 00 00 00 00            $%  
  $%  REQ006:724 03 22 F1 A1 00 00 00 00            $%  
  $%  REQ007:724 03 22 F1 A2 00 00 00 00            $%  
  $%  REQ008:724 03 22 F1 A8 00 00 00 00            $%  
  $%  REQ009:724 03 22 F1 A9 00 00 00 00            $%  
  $%  REQ010:724 03 22 F1 AA 00 00 00 00            $%  
  $%  REQ011:724 03 22 B0 09 00 00 00 00            $%  
  $%  REQ012:724 03 22 F1 00 00 00 00 00            $%  
  $%  REQ013:724 03 22 F1 20 00 00 00 00            $%  
  $%  REQ014:724 03 22 F1 8A 00 00 00 00            $%  
  $%  REQ015:724 03 22 F1 8B 00 00 00 00            $%  
  $%  REQ016:724 03 22 F1 92 00 00 00 00            $%  
  $%  REQ017:724 03 22 F1 94 00 00 00 00            $%  
  $%  REQ018:724 03 22 F1 98 00 00 00 00            $%  
  $%  REQ019:724 03 22 F1 A5 00 00 00 00            $%  

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
  $%  011:左前轮胎传感器ID                           $%    $%  ANS011.BYTE003  $%  HEX(x1,x2,x3,x4); 
  $%  012:右前轮胎传感器ID                           $%    $%  ANS011.BYTE007  $%  HEX(x1,x2,x3,x4); 
  $%  013:右后轮胎传感器ID                           $%    $%  ANS011.BYTE011  $%  HEX(x1,x2,x3,x4); 
  $%  014:左后轮胎传感器ID                           $%    $%  ANS011.BYTE015  $%  HEX(x1,x2,x3,x4); 
  $%  015:ECU软件校验号                              $%    $%  ANS012.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6); 
  $%  016:网络配置文件零件号-网络信息域(出厂)        $%    $%  ANS013.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  017:系统供应商标识号                           $%    $%  ANS014.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  018:电控单元制造日期                           $%    $%  ANS015.BYTE003  $%  HEX(x1,x2,x3); 
  $%  019:供应商电控单元硬件参考号                   $%    $%  ANS016.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  020:电控单元软件参考号                         $%    $%  ANS017.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  021:配置跟踪域                                 $%    $%  ANS018.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11); 
  $%  022:电控单元索引信息                           $%    $%  ANS019.BYTE003  $%  HEX(x1,x2,x3); 

;******************************************************************************************************************************************************

数据流:

  $  REQ000:724 03 22 B0 01 00 00 00 00            $  
  $  REQ001:724 03 22 B0 02 00 00 00 00            $  
  $  REQ002:724 03 22 B0 03 00 00 00 00            $  
  $  REQ003:724 03 22 B0 04 00 00 00 00            $  
  $  REQ004:724 03 22 B0 05 00 00 00 00            $  
  $  REQ005:724 03 22 B0 06 00 00 00 00            $  
  $  REQ006:724 03 22 B0 07 00 00 00 00            $  
  $  REQ007:724 03 22 B0 08 00 00 00 00            $  
  $  REQ008:724 03 22 B0 0C 00 00 00 00            $  

  $  000.左前胎压有效性                   $    $             $    $  ANS000.BYTE003  $  switxh(x&0x80)0x00:@003a;0x80:@0392; 
  $  001.左前胎压                         $    $  千帕       $    $  ANS000.BYTE003  $  y=(x&0x7F)*4; 
  $  002.右前胎压有效性                   $    $             $    $  ANS000.BYTE004  $  switxh(x&0x80)0x00:@003a;0x80:@0392; 
  $  003.右前胎压                         $    $  千帕       $    $  ANS000.BYTE004  $  y=(x&0x7F)*4; 
  $  004.右后胎压有效性                   $    $             $    $  ANS000.BYTE005  $  switxh(x&0x80)0x00:@003a;0x80:@0392; 
  $  005.右后胎压                         $    $  千帕       $    $  ANS000.BYTE005  $  y=(x&0x7F)*4; 
  $  006.左后胎压有效性                   $    $             $    $  ANS000.BYTE006  $  switxh(x&0x80)0x00:@003a;0x80:@0392; 
  $  007.左后胎压                         $    $  千帕       $    $  ANS000.BYTE006  $  y=(x&0x7F)*4; 
  $  008.左前标准热胎压                   $    $  千帕       $    $  ANS001.BYTE003  $  y=(x)*2; 
  $  009.右前标准热胎压                   $    $  千帕       $    $  ANS001.BYTE004  $  y=(x)*2; 
  $  010.右后标准热胎压                   $    $  千帕       $    $  ANS001.BYTE005  $  y=(x)*2; 
  $  011.左后标准热胎压                   $    $  千帕       $    $  ANS001.BYTE006  $  y=(x)*2; 
  $  012.左前轮胎温度有效性               $    $             $    $  ANS002.BYTE003  $  switxh(x&0x80)0x00:@003a;0x80:@0392; 
  $  013.左前轮胎温度                     $    $  摄氏度     $    $  ANS002.BYTE003  $  y=(x&0x7F)*2-60; 
  $  014.右前轮胎温度有效性               $    $             $    $  ANS002.BYTE004  $  switxh(x&0x80)0x00:@003a;0x80:@0392; 
  $  015.右前轮胎温度                     $    $  摄氏度     $    $  ANS002.BYTE004  $  y=(x&0x7F)*2-60; 
  $  016.右后轮胎温度有效性               $    $             $    $  ANS002.BYTE005  $  switxh(x&0x80)0x00:@003a;0x80:@0392; 
  $  017.右后轮胎温度                     $    $  摄氏度     $    $  ANS002.BYTE005  $  y=(x&0x7F)*2-60; 
  $  018.左后轮胎温度有效性               $    $             $    $  ANS002.BYTE006  $  switxh(x&0x80)0x00:@003a;0x80:@0392; 
  $  019.左后轮胎温度                     $    $  摄氏度     $    $  ANS002.BYTE006  $  y=(x&0x7F)*2-60; 
  $  020.左前胎压低报警阀值               $    $  千帕       $    $  ANS003.BYTE003  $  y=(x)*2; 
  $  021.右前胎压低报警阀值               $    $  千帕       $    $  ANS003.BYTE004  $  y=(x)*2; 
  $  022.右后胎压低报警阀值               $    $  千帕       $    $  ANS003.BYTE005  $  y=(x)*2; 
  $  023.左后胎压低报警阀值               $    $  千帕       $    $  ANS003.BYTE006  $  y=(x)*2; 
  $  024.前轴压力高报警阀值               $    $  千帕       $    $  ANS003.BYTE007  $  y=(x)*2; 
  $  025.后轴压力高报警阀值               $    $  千帕       $    $  ANS003.BYTE008  $  y=(x)*2; 
  $  026.温度高报警阀值                   $    $  摄氏度     $    $  ANS003.BYTE009  $  y=(x)*2-60; 
  $  027.压力快速漏气报警阀值             $    $  千帕       $    $  ANS003.BYTE010  $  y=(x)*2; 
  $  028.左右胎压不平衡报警阀值           $    $  千帕       $    $  ANS003.BYTE011  $  y=(x)*2; 
  $  029.前左轮胎状态                     $    $             $    $  ANS004.BYTE003  $  switxh(x)0x00:@001a;0x01:@022e;0x02:@0374;0x03:@09ae;0x04:@09af;0x05:@08b6;0x06:@09b0;0x07:@09b1; 
  $  030.前右轮胎状态                     $    $             $    $  ANS004.BYTE004  $  switxh(x)0x00:@001a;0x01:@022e;0x02:@0374;0x03:@09ae;0x04:@09af;0x05:@08b6;0x06:@09b0;0x07:@09b1; 
  $  031.后右轮胎状态                     $    $             $    $  ANS004.BYTE005  $  switxh(x)0x00:@001a;0x01:@022e;0x02:@0374;0x03:@09ae;0x04:@09af;0x05:@08b6;0x06:@09b0;0x07:@09b1; 
  $  032.后左轮胎状态                     $    $             $    $  ANS004.BYTE006  $  switxh(x)0x00:@001a;0x01:@022e;0x02:@0374;0x03:@09ae;0x04:@09af;0x05:@08b6;0x06:@09b0;0x07:@09b1; 
  $  033.系统操作模式                     $    $             $    $  ANS005.BYTE003  $  switxh(x)0x01:@027a;0x02:@0a1e;0x03:@0a1f;0x04:@0279; 
  $  034.左前轮胎传感器工作模式           $    $             $    $  ANS005.BYTE004  $  switxh(x)0x00:@027d;0x01:@0c93;0x02:@0c80;0x03:@0c81;0x04:@09d3;0x05:@09d4;0x06:@0c82;0x07:@0279; 
  $  035.右前轮胎传感器工作模式           $    $             $    $  ANS005.BYTE005  $  switxh(x)0x00:@027d;0x01:@0c93;0x02:@0c80;0x03:@0c81;0x04:@09d3;0x05:@09d4;0x06:@0c82;0x07:@0279; 
  $  036.右后轮胎传感器工作模式           $    $             $    $  ANS005.BYTE006  $  switxh(x)0x00:@027d;0x01:@0c93;0x02:@0c80;0x03:@0c81;0x04:@09d3;0x05:@09d4;0x06:@0c82;0x07:@0279; 
  $  037.左后轮胎传感器工作模式           $    $             $    $  ANS005.BYTE007  $  switxh(x)0x00:@027d;0x01:@0c93;0x02:@0c80;0x03:@0c81;0x04:@09d3;0x05:@09d4;0x06:@0c82;0x07:@0279; 
  $  038.左前轮胎传感器的ID学习状态       $    $             $    $  ANS006.BYTE003  $  switxh(x&0x80)0x00:@09a7;0x80:@09a8; 
  $  039.右前轮胎传感器的ID学习状态       $    $             $    $  ANS006.BYTE003  $  switxh(x&0x40)0x00:@09a7;0x40:@09a8; 
  $  040.右后轮胎传感器的ID学习状态       $    $             $    $  ANS006.BYTE003  $  switxh(x&0x20)0x00:@09a7;0x20:@09a8; 
  $  041.左后轮胎传感器的ID学习状态       $    $             $    $  ANS006.BYTE003  $  switxh(x&0x10)0x00:@09a7;0x10:@09a8; 
  $  042.左前轮胎传感器信号丢失           $    $             $    $  ANS007.BYTE003  $  switxh((x1*256+x2)&0x8000)0x00:@0a57;0x8000:@06ff; 
  $  043.右前轮胎传感器信号丢失           $    $             $    $  ANS007.BYTE005  $  switxh((x1*256+x2)&0x8000)0x00:@0a57;0x8000:@06ff; 
  $  044.右后轮胎传感器信号丢失           $    $             $    $  ANS007.BYTE007  $  switxh((x1*256+x2)&0x8000)0x00:@0a57;0x8000:@06ff; 
  $  045.左后轮胎传感器信号丢失           $    $             $    $  ANS007.BYTE009  $  switxh((x1*256+x2)&0x8000)0x00:@0a57;0x8000:@06ff; 
  $  046.环境温度                         $    $  摄氏度     $    $  ANS008.BYTE003  $  y=(x)*0.5-40; 

;******************************************************************************************************************************************************

