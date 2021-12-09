
     系统名称:ABS (防抱死制动系统)

     系统ID:00004476

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

			码库: $*$*DTC/00004476

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
  $  REQ005:720 03 22 B0 05 00 00 00 00            $  
  $  REQ006:720 03 22 B0 06 00 00 00 00            $  
  $  REQ007:720 03 22 B0 20 00 00 00 00            $  
  $  REQ008:720 03 22 B0 22 00 00 00 00            $  
  $  REQ009:720 03 22 B0 23 00 00 00 00            $  

  $  000.动态稳定控制系统(SCS)关闭警告灯         $    $                   $    $  ANS000.BYTE003  $  switxh(x&0x10)0x10:@0037;0x00:@002e; 
  $  001.动态稳定控制系统(SCS)警告灯             $    $                   $    $  ANS000.BYTE003  $  switxh(x&0x0C)0x00:@002e;0x08:@0038;0x04:@0037; 
  $  002.防抱死制动系统(ABS)警告灯               $    $                   $    $  ANS000.BYTE003  $  switxh(x&0x02)0x02:@0037;0x00:@002e; 
  $  003.电子制动力分配系统(EBD)警告灯           $    $                   $    $  ANS000.BYTE003  $  switxh(x&0x01)0x01:@0037;0x00:@002e; 
  $  004.电子驻车制动(EPB)故障警告灯             $    $                   $    $  ANS000.BYTE004  $  switxh(x&0x0C)0x00:@002e;0x04:@0037;0x08:@0038; 
  $  005.电子驻车制动(EPB)功能灯                 $    $                   $    $  ANS000.BYTE004  $  switxh(x&0x03)0x00:@002e;0x01:@0037;0x02:@0038; 
  $  006.电子驻车制动(EPB)开关状态               $    $                   $    $  ANS001.BYTE003  $  switxh(x&0x60)0x00:@0058;0x20:@0319;0x40:@0719;0x60:@008d; 
  $  007.制动液液位低开关状态                    $    $                   $    $  ANS001.BYTE003  $  switxh(x&0x10)0x10:@0037;0x00:@002e; 
  $  008.自动驻车（AVH）开关状态                 $    $                   $    $  ANS001.BYTE003  $  switxh(x&0x08)0x08:@0037;0x00:@002e; 
  $  009.陡坡缓降控制(HDC)开关状态               $    $                   $    $  ANS001.BYTE003  $  switxh(x&0x04)0x04:@0037;0x00:@002e; 
  $  010.动态稳定控制系统(SCS)关闭开关状态       $    $                   $    $  ANS001.BYTE003  $  switxh(x&0x02)0x02:@0037;0x00:@002e; 
  $  011.刹车灯开关状态                          $    $                   $    $  ANS001.BYTE003  $  switxh(x&0x01)0x01:@0037;0x00:@002e; 
  $  012.动态稳定控制系统(SCS)工作               $    $                   $    $  ANS002.BYTE003  $  switxh(x&0x10)0x10:@008b;0x00:@00e7; 
  $  013.MSR激活                                 $    $                   $    $  ANS002.BYTE003  $  switxh(x&0x08)0x08:@008b;0x00:@00e7; 
  $  014.牵引力控制系统（TCS）工作               $    $                   $    $  ANS002.BYTE003  $  switxh(x&0x04)0x04:@008b;0x00:@00e7; 
  $  015.防抱死制动系统(ABS)工作                 $    $                   $    $  ANS002.BYTE003  $  switxh(x&0x02)0x02:@008b;0x00:@00e7; 
  $  016.EBD作用                                 $    $                   $    $  ANS002.BYTE003  $  switxh(x&0x01)0x01:@008b;0x00:@00e7; 
  $  017.动态制动功能(DBF)失效                   $    $                   $    $  ANS003.BYTE003  $  switxh(x&0x80)0x80:@0021;0x00:@0022; 
  $  018.陡坡缓降控制(HDC)警告灯                 $    $                   $    $  ANS000.BYTE003  $  switxh(x&0xE0)0x00:@002e;0x20:@0c9e;0x40:@0c9f;0x60:@0ca0;0x80:@0ca1; 
  $  019.动态稳定控制系统(SCS)失效               $    $                   $    $  ANS003.BYTE003  $  switxh(x&0x20)0x20:@0021;0x00:@0022; 
  $  020.扭矩增加请求(MSR)失效                   $    $                   $    $  ANS003.BYTE003  $  switxh(x&0x10)0x10:@0021;0x00:@0022; 
  $  021.电子牵引力控制系统(ETCS)失效            $    $                   $    $  ANS003.BYTE003  $  switxh(x&0x08)0x08:@0021;0x00:@0022; 
  $  022.制动牵引力控制系统(BTCS)失效            $    $                   $    $  ANS003.BYTE003  $  switxh(x&0x04)0x04:@0021;0x00:@0022; 
  $  023.防抱死制动系统(ABS)失效                 $    $                   $    $  ANS003.BYTE003  $  switxh(x&0x02)0x02:@0021;0x00:@0022; 
  $  024.电子制动力分配系统(EBD)失效             $    $                   $    $  ANS003.BYTE003  $  switxh(x&0x01)0x01:@0021;0x00:@0022; 
  $  025.左前轮速                                $    $  千米/时          $    $  ANS004.BYTE003  $  y=(x1*256+x2)*0.1; 
  $  026.右前轮速                                $    $  千米/时          $    $  ANS004.BYTE005  $  y=(x1*256+x2)*0.1; 
  $  027.右后轮速                                $    $  千米/时          $    $  ANS004.BYTE007  $  y=(x1*256+x2)*0.1; 
  $  028.左后轮速                                $    $  千米/时          $    $  ANS004.BYTE009  $  y=(x1*256+x2)*0.1; 
  $  029.横向加速                                $    $  米每二次方秒     $    $  ANS005.BYTE003  $  if(0x8000>(x1*256+x2))y=(x1*256+x2)*0.0098;elsey=(x1*256+x2-0xFFFF)*0.0098; 
  $  030.纵向加速                                $    $  米每二次方秒     $    $  ANS005.BYTE005  $  if(0x8000>(x1*256+x2))y=(x1*256+x2)*0.098;elsey=(x1*256+x2-0xFFFF)*0.098; 
  $  031.偏航角速度                              $    $  度/秒            $    $  ANS005.BYTE007  $  if(0x8000>(x1*256+x2))y=(x1*256+x2)*0.00286;elsey=(x1*256+x2-0xFFFF)*0.00286; 
  $  032.主缸压力                                $    $  兆帕             $    $  ANS006.BYTE003  $  if(0x8000>(x1*256+x2))y=(x1*256+x2)*0.001;elsey=(x1*256+x2-0xFFFF)*0.001; 
  $  033.真空度                                  $    $  百帕             $    $  ANS006.BYTE005  $  if(0x8000>(x1*256+x2))y=(x1*256+x2)*1;elsey=(x1*256+x2-0xFFFF)*1; 
  $  034.左侧驻车制动状态                        $    $                   $    $  ANS007.BYTE003  $  switxh(x)0x1B:@0a23;0x28:@0a24;0x36:@0a25;0x71:@0a1c;0x8E:@0a1b;0x90:@0a26;0xA3:@0a27; 
  $  035.右侧驻车制动状态                        $    $                   $    $  ANS007.BYTE004  $  switxh(x)0x1B:@0a23;0x28:@0a24;0x36:@0a25;0x71:@0a1c;0x8E:@0a1b;0x90:@0a26;0xA3:@0a27; 
  $  036.左侧执行器工作次数                      $    $                   $    $  ANS008.BYTE003  $  y=(x1*16777216+x2*65536+x3*256+x4)*1; 
  $  037.右侧执行器工作次数                      $    $                   $    $  ANS008.BYTE007  $  y=(x1*16777216+x2*65536+x3*256+x4)*1; 
  $  038.左侧执行器施加的夹紧力                  $    $  牛               $    $  ANS009.BYTE003  $  y=(x1*256+x2)*1; 
  $  039.右侧执行器施加的夹紧力                  $    $  牛               $    $  ANS009.BYTE005  $  y=(x1*256+x2)*1; 

;******************************************************************************************************************************************************

