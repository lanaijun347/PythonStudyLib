
     系统名称:PLCM (电动尾门控制模块)

     系统ID:0000444A

;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~749,718,748

进入命令:

  $~ REQ000:741 02 10 03 00 00 00 00 00       $~ ANS000:749 02 10 03 00 00 00 00 00

空闲命令:

  $! REQ000:741 02 3E 00 00 00 00 00 00       $! ANS000:749 02 3E 00 00 00 00 00 00


;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~749,718,748

进入命令:

  $~ REQ000:741 02 10 01 00 00 00 00 00       $~ ANS000:749 02 10 01 00 00 00 00 00

空闲命令:

  $! REQ000:741 02 3E 00 00 00 00 00 00       $! ANS000:749 02 3E 00 00 00 00 00 00


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

  $#  REQ000:741 03 19 02 2C 00 00 00 00            $#  

			故障码表示:帧长决定故障个数,$#BYTE03$#开始表示故障码,每$#4$#个字节表示一个故障码,前$#3$#个字节表示码号.

			码库: $*$*DTC/0000444A

			读码方式:case 13

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:741 04 14 FF FF FF 00 00 00            $$  

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:741 03 22 F1 A0 00 00 00 00            $%  
  $%  REQ001:741 03 22 F1 91 00 00 00 00            $%  
  $%  REQ002:741 03 22 F1 90 00 00 00 00            $%  
  $%  REQ003:741 03 22 F1 87 00 00 00 00            $%  
  $%  REQ004:741 03 22 F1 AA 00 00 00 00            $%  
  $%  REQ005:741 03 22 F1 A9 00 00 00 00            $%  
  $%  REQ006:741 03 22 F1 8C 00 00 00 00            $%  
  $%  REQ007:741 03 22 F1 8A 00 00 00 00            $%  
  $%  REQ008:741 03 22 F1 83 00 00 00 00            $%  

  $%  000:电控单元应用软件号            $%    $%  ANS000.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  001:电控单元硬件号                $%    $%  ANS001.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  002:车辆识别码(VIN)               $%    $%  ANS002.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17); 
  $%  003:电控单元零件号                $%    $%  ANS003.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  004:电控单元刷新过程文件号        $%    $%  ANS004.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  005:电控单元配置文件号            $%    $%  ANS005.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  006:电控单元序列号                $%    $%  ANS006.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15); 
  $%  007:系统供应商标识号              $%    $%  ANS007.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  008:电控单元基础软件参考号        $%    $%  ANS008.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 

;******************************************************************************************************************************************************

数据流:

  $  REQ000:741 03 22 B1 00 00 00 00 00            $  
  $  REQ001:741 03 22 B1 01 00 00 00 00            $  
  $  REQ002:741 03 22 B1 02 00 00 00 00            $  
  $  REQ003:741 03 22 B1 03 00 00 00 00            $  
  $  REQ004:741 03 22 B1 04 00 00 00 00            $  
  $  REQ005:741 03 22 B1 05 00 00 00 00            $  
  $  REQ006:741 03 22 B2 00 00 00 00 00            $  
  $  REQ007:741 03 22 B4 01 00 00 00 00            $  

  $  000.尾门运行方向                 $    $                $    $  ANS000.BYTE007  $  switxh(x)0x00:@002e;0x01:@02bf;0x02:@027e; 
  $  001.尾门状态                     $    $                $    $  ANS001.BYTE003  $  switxh(x)0x01:@002e;0x02:@027e;0x03:@027f;0x04:@0280;0x05:@0281;0x06:@0282;0x07:@0283;0x08:@0284;0x09:@0285;0x0A:@0070; 
  $  002.尾门锁状态                   $    $                $    $  ANS001.BYTE004  $  switxh(x)0x00:@02cd;0x01:@02ce;0x02:@02cf;0x03:@02d0;0x04:@02d1;0x05:@02d2;0x06:@02d3; 
  $  003.点火开关状态                 $    $                $    $  ANS002.BYTE004  $  switxh(x)0x00:@002e;0x01:@055e;0x02:@0970;0x03:@095f; 
  $  004.换档杆位置                   $    $                $    $  ANS002.BYTE005  $  switxh(x)0x00:@024f;0x01:@0939;0x02:@0912;0x03:@007c;0x04:@04ce;0x05:@04cf;0x06:@04d0;0x07:@04d1;0x08:@04d2;0x09:@04d3;0x0A:@04d4;0x0B:@04d5;0x0F:@04a7; 
  $  005.车速                         $    $  千米/时       $    $  ANS002.BYTE006  $  y=(x1*256+x2)*0.015625; 
  $  006.行李箱盖打开状态             $    $                $    $  ANS002.BYTE008  $  switxh(x&0x04)0x00:@002e;0x04:@0037; 
  $  007.尾门开/关-遥控钥匙           $    $                $    $  ANS002.BYTE008  $  switxh(x&0x02)0x00:@002e;0x02:@0037; 
  $  008.载物区释放开关               $    $                $    $  ANS002.BYTE008  $  switxh(x&0x01)0x00:@002e;0x01:@0037; 
  $  009.环境平均温度                 $    $  摄氏度        $    $  ANS002.BYTE009  $  y=(x)*0.5-40; 
  $  010.车辆加速度                   $    $  米/平方秒     $    $  ANS002.BYTE010  $  if(0x80>x1)y=(x1*256+x2)*0.03;elsey=(x1*256+x2-0xFFFF)*0.03; 
  $  011.尾门蜂鸣器状态               $    $                $    $  ANS002.BYTE012  $  switxh(x)0x00:@027d;0x01:@027b;0x02:@0c92;0x03:@0c92; 
  $  012.尾门状态仪表显示             $    $                $    $  ANS003.BYTE003  $  switxh(x&0x78)0x00:@0027;0x10:@07ca;0x18:@07cb;0x20:@0ca2;0x28:@0711;0x30:@07cc;0x78:@06ec; 
  $  013.电撑杆电机电流               $    $  安培          $    $  ANS004.BYTE003  $  y=(x1*256+x2)*0.036; 
  $  014.电吸锁扣电机电流             $    $  安培          $    $  ANS004.BYTE005  $  y=(x1*256+x2)*0.036; 
  $  015.蜂鸣器是否正在响             $    $                $    $  ANS005.BYTE003  $  switxh(x)0x00:@0022;0x01:@0021; 
  $  016.中控台尾门开关电压           $    $  伏            $    $  ANS006.BYTE006  $  y=(x1*256+x2)*0.016; 
  $  017.中控台尾门开关状态           $    $                $    $  ANS006.BYTE008  $  switxh(x)0x00:@002e;0x01:@0037;0x02:@02eb; 
  $  018.右防夹条传感器电压           $    $  伏            $    $  ANS006.BYTE009  $  y=(x1*256+x2)*0.005; 
  $  019.右防夹条传感器状态           $    $                $    $  ANS006.BYTE011  $  switxh(x)0x00:@0c90;0x01:@0c91;0x02:@0278;0x04:@0277;0x08:@02eb;0x0F:@00bc; 
  $  020.左防夹条传感器电压           $    $  伏            $    $  ANS006.BYTE012  $  y=(x1*256+x2)*0.005; 
  $  021.左防夹条传感器状态           $    $                $    $  ANS006.BYTE014  $  switxh(x)0x00:@0c90;0x01:@0c91;0x02:@0278;0x04:@0277;0x08:@02eb;0x0F:@00bc; 
  $  022.尾门处尾门关闭开关电压       $    $  伏            $    $  ANS006.BYTE015  $  y=(x1*256+x2)*0.016; 
  $  023.尾门处尾门关闭开关状态       $    $                $    $  ANS006.BYTE017  $  switxh(x)0x00:@002e;0x01:@0037;0x02:@02eb; 
  $  024.锁扣已收紧                   $    $                $    $  ANS007.BYTE003  $  switxh(x&0x04)0x00:@0022;0x04:@0021; 
  $  025.锁扣释放                     $    $                $    $  ANS007.BYTE003  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  026.行李箱打开开关               $    $                $    $  ANS007.BYTE003  $  switxh(x&0x01)0x00:@002e;0x01:@0037; 

;******************************************************************************************************************************************************

