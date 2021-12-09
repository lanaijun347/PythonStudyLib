
     系统名称:SDM (安全气囊系统)

     系统ID:00004389

;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~738,718,748

进入命令:

  $~ REQ000:730 02 10 03 00 00 00 00 00       $~ ANS000:738 02 10 03 00 00 00 00 00

空闲命令:

  $! REQ000:730 02 3E 00 00 00 00 00 00       $! ANS000:738 02 3E 00 00 00 00 00 00


;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~738,718,748

进入命令:

  $~ REQ000:730 02 10 01 00 00 00 00 00       $~ ANS000:738 02 10 01 00 00 00 00 00

空闲命令:

  $! REQ000:730 02 3E 00 00 00 00 00 00       $! ANS000:738 02 3E 00 00 00 00 00 00


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

  $#  REQ000:730 03 19 02 2C 00 00 00 00            $#  

			故障码表示:帧长决定故障个数,$#BYTE03$#开始表示故障码,每$#4$#个字节表示一个故障码,前$#3$#个字节表示码号.

			码库: $*$*DTC/00004389

			读码方式:case 13

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:730 04 14 FF FF FF 00 00 00            $$  

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:730 03 22 F1 20 00 00 00 00            $%  
  $%  REQ001:730 03 22 F1 87 00 00 00 00            $%  
  $%  REQ002:730 03 22 F1 8B 00 00 00 00            $%  
  $%  REQ003:730 03 22 F1 8C 00 00 00 00            $%  
  $%  REQ004:730 03 22 F1 90 00 00 00 00            $%  
  $%  REQ005:730 03 22 F1 91 00 00 00 00            $%  
  $%  REQ006:730 03 22 F1 A0 00 00 00 00            $%  
  $%  REQ007:730 03 22 F1 A1 00 00 00 00            $%  
  $%  REQ008:730 03 22 F1 A2 00 00 00 00            $%  
  $%  REQ009:730 03 22 F1 A5 00 00 00 00            $%  
  $%  REQ010:730 03 22 F1 A8 00 00 00 00            $%  
  $%  REQ011:730 03 22 F1 A9 00 00 00 00            $%  
  $%  REQ012:730 03 22 F1 AA 00 00 00 00            $%  
  $%  REQ013:730 03 22 F1 83 00 00 00 00            $%  
  $%  REQ014:730 03 22 F1 8A 00 00 00 00            $%  
  $%  REQ015:730 03 22 F1 92 00 00 00 00            $%  
  $%  REQ016:730 03 22 F1 94 00 00 00 00            $%  
  $%  REQ017:730 03 22 F1 98 00 00 00 00            $%  

  $%  000:网络配置文件零件号-网络信息域(出厂)        $%    $%  ANS000.BYTE014  $%  y=(x1*65536+x2*256+x3)*1; 
  $%  001:电控单元零件号                             $%    $%  ANS001.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  002:电控单元制造日期                           $%    $%  ANS002.BYTE003  $%  HEX(x1,x2,x3); 
  $%  003:电控单元序列号                             $%    $%  ANS003.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16); 
  $%  004:车辆识别码(VIN)                            $%    $%  ANS004.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17); 
  $%  005:电控单元硬件号                             $%    $%  ANS005.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  006:电控单元应用软件号                         $%    $%  ANS006.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  007:电控单元标定软件号                         $%    $%  ANS007.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  008:电控单元网络参考号                         $%    $%  ANS008.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8); 
  $%  009:电控单元索引信息                           $%    $%  ANS009.BYTE003  $%  HEX(x1,x2,x3); 
  $%  010:车辆特征信息(FK)                           $%    $%  ANS010.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20); 
  $%  011:电控单元配置文件号                         $%    $%  ANS011.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  012:电控单元刷新过程文件号                     $%    $%  ANS012.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  013:电控单元基础软件参考号                     $%    $%  ANS013.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  014:系统供应商标识号                           $%    $%  ANS014.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  015:供应商电控单元硬件参考号                   $%    $%  ANS015.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  016:电控单元软件参考号                         $%    $%  ANS016.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  017:配置跟踪域                                 $%    $%  ANS017.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11); 

;******************************************************************************************************************************************************

数据流:

  $  REQ000:730 03 22 B0 01 00 00 00 00            $  
  $  REQ001:730 03 22 B0 02 00 00 00 00            $  
  $  REQ002:730 03 22 B0 03 00 00 00 00            $  
  $  REQ003:730 03 22 B0 04 00 00 00 00            $  
  $  REQ004:730 03 22 B0 05 00 00 00 00            $  
  $  REQ005:730 03 22 B0 06 00 00 00 00            $  

  $  000.气囊控制模块工作状态                              $    $              $    $  ANS000.BYTE003  $  switxh(x)0x00:@0994;0x01:@027a; 
  $  001.乘客侧气囊禁用开关状态                            $    $              $    $  ANS000.BYTE004  $  switxh(x&0x0F)0x00:@03e6;0x02:@03e7;0x04:@096d;0x07:@096e; 
  $  002.前排副驾驶安全带插锁状态                          $    $              $    $  ANS000.BYTE005  $  switxh(x&0xF0)0x00:@03e3;0x10:@03e4;0x30:@096e; 
  $  003.前排驾驶员安全带插锁状态                          $    $              $    $  ANS000.BYTE005  $  switxh(x&0x0F)0x00:@03e3;0x01:@03e4;0x03:@096e; 
  $  004.气囊警告灯状态                                    $    $              $    $  ANS000.BYTE006  $  switxh(x&0x03)0x00:@002e;0x01:@0037;0x02:@0038; 
  $  005.VIN锁定状态                                       $    $              $    $  ANS000.BYTE006  $  switxh(x&0x08)0x00:@02fa;0x08:@02f9; 
  $  006.气囊控制模块激活状态                              $    $              $    $  ANS000.BYTE006  $  switxh(x&0x10)0x00:@00e7;0x10:@00e6; 
  $  007.碰撞是否发生                                      $    $              $    $  ANS000.BYTE006  $  switxh(x&0x04)0x00:@071b;0x04:@071c; 
  $  008.乘客气囊打开指示灯状态                            $    $              $    $  ANS000.BYTE007  $  switxh(x&0x03)0x00:@002e;0x01:@0037;0x02:@096d;0x03:@06ec; 
  $  009.驾驶员安全带提醒输出状态                          $    $              $    $  ANS000.BYTE007  $  switxh(x&0x30)0x00:@002e;0x10:@0037;0x20:@0038;0x30:@06ec; 
  $  010.乘客安全带提醒输出状态                            $    $              $    $  ANS000.BYTE007  $  switxh(x&0xC0)0x00:@002e;0x40:@0037;0x80:@0038;0xC0:@06ec; 
  $  011.气囊控制模块使用时间                              $    $  小时        $    $  ANS001.BYTE003  $  y=(x1*16777216+x2*65536+x3*256+x4)*0.00027; 
  $  012.点火钥匙打开后气囊控制模块运作时间                $    $  秒          $    $  ANS002.BYTE003  $  y=(x1*256+x2)*1; 
  $  013.驾驶员气囊（DAB）点火回路电阻值                   $    $  欧姆        $    $  ANS003.BYTE003  $  y=(x)*0.1; 
  $  014.乘客气囊（PAB）点火回路电阻值                     $    $  欧姆        $    $  ANS003.BYTE005  $  y=(x)*0.1; 
  $  015.左侧侧气帘点火回路电阻值                          $    $  欧姆        $    $  ANS003.BYTE009  $  y=(x)*0.1; 
  $  016.右侧侧气帘点火回路电阻值                          $    $  欧姆        $    $  ANS003.BYTE010  $  y=(x)*0.1; 
  $  017.驾驶员预拉紧安全带点火回路电阻值                  $    $  欧姆        $    $  ANS003.BYTE011  $  y=(x)*0.1; 
  $  018.乘客预拉紧安全带点火回路电阻值                    $    $  欧姆        $    $  ANS003.BYTE012  $  y=(x)*0.1; 
  $  019.右侧侧气囊点火回路电阻值                          $    $  欧姆        $    $  ANS003.BYTE013  $  y=(x)*0.1; 
  $  020.左侧侧气囊点火回路电阻值                          $    $  欧姆        $    $  ANS003.BYTE014  $  y=(x)*0.1; 
  $  021.车速                                              $    $  千米/时     $    $  ANS004.BYTE003  $  y=(x1*256+x2)*0.01; 
  $  022.第二排左侧乘员安全带插锁+乘员占位传感器状态       $    $              $    $  ANS000.BYTE010  $  switxh(x&0xF0)0x00:@03e3;0x10:@03e4;0x30:@096e; 
  $  023.第二排中间乘员安全带插锁+乘员占位传感器状态       $    $              $    $  ANS000.BYTE010  $  switxh(x&0x0F)0x00:@03e3;0x01:@03e4;0x03:@096e; 
  $  024.第二排右侧乘员安全带插锁+乘员占位传感器状态       $    $              $    $  ANS000.BYTE011  $  switxh(x&0xF0)0x00:@03e3;0x10:@03e4;0x30:@096e; 
  $  025.第二排左侧安全带提醒输出状态                      $    $              $    $  ANS000.BYTE012  $  switxh(x&0xC0)0x00:@002e;0x40:@0037;0x80:@0038;0xC0:@096e; 
  $  026.第二排中间安全带提醒输出状态                      $    $              $    $  ANS000.BYTE012  $  switxh(x&0x30)0x00:@002e;0x10:@0037;0x20:@0038;0x30:@096e; 
  $  027.第二排右侧安全带提醒输出状态                      $    $              $    $  ANS000.BYTE012  $  switxh(x&0x0C)0x00:@002e;0x04:@0037;0x08:@0038;0x0C:@096e; 
  $  028.第二排左侧安全带预拉紧点火回路电阻值              $    $  欧姆        $    $  ANS003.BYTE004  $  y=(x)*0.1; 
  $  029.第二排右侧安全带预拉紧点火回路电阻值              $    $  欧姆        $    $  ANS003.BYTE006  $  y=(x)*0.1; 
  $  030.第二排左侧侧气帘点火回路电阻值                    $    $              $    $  ANS003.BYTE015  $  y=(x)*0.1; 
  $  031.第二排右侧侧气帘点火回路电阻值                    $    $              $    $  ANS003.BYTE016  $  y=(x)*0.1; 
  $  032.乘客气囊禁用开关状态改变时刻的里程数              $    $  公里        $    $  ANS005.BYTE003  $  y=(x1*65536+x2*256+x3)*1; 

;******************************************************************************************************************************************************

