
     系统名称:GW (网关)

     系统ID:00004403

;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~718,718,748

进入命令:

  $~ REQ000:710 02 10 03 00 00 00 00 00       $~ ANS000:718 02 10 03 00 00 00 00 00

空闲命令:

  $! REQ000:710 02 3E 00 00 00 00 00 00       $! ANS000:718 02 3E 00 00 00 00 00 00


;******************************************************************************************************************************************************

     通讯线:$~#6$~#14$~500K$~718,718,748

进入命令:

  $~ REQ000:710 02 10 01 00 00 00 00 00       $~ ANS000:718 02 10 01 00 00 00 00 00

空闲命令:

  $! REQ000:710 02 3E 00 00 00 00 00 00       $! ANS000:718 02 3E 00 00 00 00 00 00


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

  $#  REQ000:710 03 19 02 2C 00 00 00 00            $#  

			故障码表示:帧长决定故障个数,$#BYTE03$#开始表示故障码,每$#4$#个字节表示一个故障码,前$#3$#个字节表示码号.

			码库: $*$*DTC/00004403

			读码方式:case 13

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:710 04 14 FF FF FF 00 00 00            $$  

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:710 03 22 F1 AA 00 00 00 00            $%  
  $%  REQ001:710 03 22 F1 A9 00 00 00 00            $%  
  $%  REQ002:710 03 22 F1 A8 00 00 00 00            $%  
  $%  REQ003:710 03 22 F1 A5 00 00 00 00            $%  
  $%  REQ004:710 03 22 F1 A2 00 00 00 00            $%  
  $%  REQ005:710 03 22 F1 A1 00 00 00 00            $%  
  $%  REQ006:710 03 22 F1 A0 00 00 00 00            $%  
  $%  REQ007:710 03 22 F1 91 00 00 00 00            $%  
  $%  REQ008:710 03 22 F1 90 00 00 00 00            $%  
  $%  REQ009:710 03 22 F1 8C 00 00 00 00            $%  
  $%  REQ010:710 03 22 F1 8B 00 00 00 00            $%  
  $%  REQ011:710 03 22 F1 87 00 00 00 00            $%  
  $%  REQ012:710 03 22 F1 20 00 00 00 00            $%  
  $%  REQ013:710 03 22 F1 98 00 00 00 00            $%  
  $%  REQ014:710 03 22 F1 94 00 00 00 00            $%  
  $%  REQ015:710 03 22 F1 92 00 00 00 00            $%  
  $%  REQ016:710 03 22 F1 8A 00 00 00 00            $%  
  $%  REQ017:710 03 22 F1 83 00 00 00 00            $%  

  $%  000:电控单元刷新过程文件号                     $%    $%  ANS000.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  001:电控单元配置文件号                         $%    $%  ANS001.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  002:车辆特征信息(FK)                           $%    $%  ANS002.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20); 
  $%  003:电控单元索引信息                           $%    $%  ANS003.BYTE003  $%  HEX(x1,x2,x3); 
  $%  004:电控单元网络参考号                         $%    $%  ANS004.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8); 
  $%  005:电控单元标定软件号                         $%    $%  ANS005.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  006:电控单元应用软件号                         $%    $%  ANS006.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  007:电控单元硬件号                             $%    $%  ANS007.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  008:车辆识别码(VIN)                            $%    $%  ANS008.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17); 
  $%  009:电控单元序列号                             $%    $%  ANS009.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16); 
  $%  010:电控单元制造日期                           $%    $%  ANS010.BYTE003  $%  HEX(x1,x2,x3); 
  $%  011:电控单元零件号                             $%    $%  ANS011.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  012:网络配置文件零件号-网络信息域(出厂)        $%    $%  ANS012.BYTE014  $%  y=(x1*65536+x2*256+x3)*1; 
  $%  013:配置跟踪域                                 $%    $%  ANS013.BYTE003  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11); 
  $%  014:电控单元软件参考号                         $%    $%  ANS014.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  015:供应商电控单元硬件参考号                   $%    $%  ANS015.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 
  $%  016:系统供应商标识号                           $%    $%  ANS016.BYTE003  $%  HEX(x1,x2,x3,x4,x5); 
  $%  017:电控单元基础软件参考号                     $%    $%  ANS017.BYTE003  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); 

;******************************************************************************************************************************************************

数据流:

  $  REQ000:710 03 22 B9 04 00 00 00 00            $  
  $  REQ001:710 03 22 B9 05 00 00 00 00            $  
  $  REQ002:710 03 22 B9 12 00 00 00 00            $  
  $  REQ003:710 03 22 B9 13 00 00 00 00            $  
  $  REQ004:710 03 22 B9 14 00 00 00 00            $  
  $  REQ005:710 03 22 B9 16 00 00 00 00            $  
  $  REQ006:710 03 22 B9 17 00 00 00 00            $  
  $  REQ007:710 03 22 B9 18 00 00 00 00            $  
  $  REQ008:710 03 22 B9 20 00 00 00 00            $  
  $  REQ009:710 03 22 B9 40 00 00 00 00            $  
  $  REQ010:710 03 22 B9 A0 00 00 00 00            $  
  $  REQ011:710 03 22 B9 30 00 00 00 00            $  

  $  000.变速器换挡杆位置信号状态                     $    $         $    $  ANS000.BYTE003  $  switxh(x&0x80)0x00:@003a;0x80:@0392; 
  $  001.变速器换挡杆位置                             $    $         $    $  ANS000.BYTE003  $  switxh(x&0x0F)0x00:@024f;0x01:@0939;0x02:@0912;0x03:@007c;0x04:@0935; 
  $  002.挡位显示模块位置信号是否超出范围             $    $         $    $  ANS001.BYTE003  $  switxh(x&0x10)0x00:@0022;0x10:@0021; 
  $  003.挡位显示模块位置信号是否无效                 $    $         $    $  ANS001.BYTE003  $  switxh(x&0x08)0x00:@0022;0x08:@0021; 
  $  004.挡位显示模块电压超出范围                     $    $         $    $  ANS001.BYTE003  $  switxh(x&0x04)0x00:@0022;0x04:@0021; 
  $  005.档位显示模块接受LIN信息超时                  $    $         $    $  ANS001.BYTE003  $  switxh(x&0x02)0x00:@0022;0x02:@0021; 
  $  006.挡位显示模块校验错误                         $    $         $    $  ANS001.BYTE003  $  switxh(x&0x01)0x00:@0022;0x01:@0021; 
  $  007.机械点火开关信号电压输入                     $    $  伏     $    $  ANS002.BYTE003  $  y=(x1*256+x2)*0.001; 
  $  008.换挡面板S模式开关动作                        $    $         $    $  ANS003.BYTE003  $  switxh(x&0x08)0x00:@00e7;0x08:@008b; 
  $  009.换挡面板W模式开关动作                        $    $         $    $  ANS003.BYTE003  $  switxh(x&0x01)0x00:@00e7;0x01:@008b; 
  $  010.加减速开关使能                               $    $         $    $  ANS003.BYTE004  $  switxh(x&0x30)0x00:@00e7;0x10:@08cc;0x20:@08cd;0x30:@08ce; 
  $  011.加减速开关状态                               $    $         $    $  ANS003.BYTE004  $  switxh(x&0x0C)0x00:@00e7;0x04:@0776;0x08:@0777;0x0C:@0778; 
  $  012.方向盘上加减速开关状态                       $    $         $    $  ANS003.BYTE004  $  switxh(x&0x03)0x00:@00e7;0x01:@0776;0x02:@0777;0x03:@0778; 
  $  013.换挡杆开关工作电压                           $    $  伏     $    $  ANS004.BYTE003  $  y=(x1*256+x2)*0.001; 
  $  014.巡航开关输出信号(OFF/ON/CANCLE/RESUME)       $    $  伏     $    $  ANS005.BYTE003  $  y=(x1*256+x2)*0.001; 
  $  015.巡航开关输出信号(+/-)                        $    $  伏     $    $  ANS006.BYTE003  $  y=(x1*256+x2)*0.001; 
  $  016.巡航开关输出数字信号(OFF/ON)                 $    $         $    $  ANS007.BYTE003  $  switxh(x&0x80)0x00:@002e;0x80:@0037; 
  $  017.制动踏板位置传感器位置信号                   $    $  伏     $    $  ANS008.BYTE003  $  y=(x1*256+x2)*0.001; 
  $  018.制动踏板位置传感器零位电压                   $    $  伏     $    $  ANS008.BYTE005  $  y=(x1*256+x2)*0.001; 
  $  019.制动踏板位置传感器零位电压的动态学习值       $    $  伏     $    $  ANS008.BYTE007  $  y=(x1*256+x2)*0.001; 
  $  020.发动机控制模块通信状态                       $    $         $    $  ANS009.BYTE003  $  switxh(x&0x80)0x00:@0401;0x80:@06e7; 
  $  021.变速器控制模块通信状态                       $    $         $    $  ANS009.BYTE003  $  switxh(x&0x40)0x00:@0401;0x40:@06e7; 
  $  022.四驱控制模块通信状态                         $    $         $    $  ANS009.BYTE003  $  switxh(x&0x20)0x00:@0401;0x20:@06e7; 
  $  023.换挡控制单元通信状态                         $    $         $    $  ANS009.BYTE003  $  switxh(x&0x10)0x00:@0401;0x10:@06e7; 
  $  024.牵引电机控制器通讯状态                       $    $         $    $  ANS009.BYTE004  $  switxh(x&0x80)0x00:@0401;0x80:@06e7; 
  $  025.集成式起动发电机控制器通讯状态               $    $         $    $  ANS009.BYTE004  $  switxh(x&0x40)0x00:@0401;0x40:@06e7; 
  $  026.混动控制单元通讯状态                         $    $         $    $  ANS009.BYTE004  $  switxh(x&0x20)0x00:@0401;0x20:@06e7; 
  $  027.电池管理系统通信状态                         $    $         $    $  ANS009.BYTE004  $  switxh(x&0x10)0x00:@0401;0x10:@06e7; 
  $  028.高压DCDC通信状态                             $    $         $    $  ANS009.BYTE004  $  switxh(x&0x04)0x00:@0401;0x04:@06e7; 
  $  029.防抱死系统通信状态                           $    $         $    $  ANS009.BYTE005  $  switxh(x&0x80)0x00:@0401;0x80:@06e7; 
  $  030.电子控制稳定系统通信状态                     $    $         $    $  ANS009.BYTE005  $  switxh(x&0x40)0x00:@0401;0x40:@06e7; 
  $  031.转向角度传感器通信状态                       $    $         $    $  ANS009.BYTE005  $  switxh(x&0x10)0x00:@0401;0x10:@06e7; 
  $  032.胎压监测系统通信状态                         $    $         $    $  ANS009.BYTE005  $  switxh(x&0x08)0x00:@0401;0x08:@06e7; 
  $  033.电子助力刹车通信状态                         $    $         $    $  ANS009.BYTE005  $  switxh(x&0x04)0x00:@0401;0x04:@06e7; 
  $  034.电子助力转向模块通信状态                     $    $         $    $  ANS009.BYTE005  $  switxh(x&0x02)0x00:@0401;0x02:@06e7; 
  $  035.安全气囊控制模块通信状态                     $    $         $    $  ANS009.BYTE006  $  switxh(x&0x80)0x00:@0401;0x80:@06e7; 
  $  036.驻车辅助系统通信状态                         $    $         $    $  ANS009.BYTE006  $  switxh(x&0x40)0x00:@0401;0x40:@06e7; 
  $  037.动态前照灯水平调节模块通信状态               $    $         $    $  ANS009.BYTE006  $  switxh(x&0x20)0x00:@0401;0x20:@06e7; 
  $  038.后向驾驶辅助模块通信状态                     $    $         $    $  ANS009.BYTE006  $  switxh(x&0x10)0x00:@0401;0x10:@06e7; 
  $  039.前向摄像头系统模块通信状态                   $    $         $    $  ANS009.BYTE006  $  switxh(x&0x04)0x00:@0401;0x04:@06e7; 
  $  040.带电源管理的直流变流器通信状态               $    $         $    $  ANS009.BYTE007  $  switxh(x&0x80)0x00:@0401;0x80:@06e7; 
  $  041.车身控制模块通信状态                         $    $         $    $  ANS009.BYTE007  $  switxh(x&0x40)0x00:@0401;0x40:@06e7; 
  $  042.空调通信状态                                 $    $         $    $  ANS009.BYTE007  $  switxh(x&0x20)0x00:@0401;0x20:@06e7; 
  $  043.无钥匙进入系统通信状态                       $    $         $    $  ANS009.BYTE007  $  switxh(x&0x08)0x00:@0401;0x08:@06e7; 
  $  044.电动尾门控制模块通信状态                     $    $         $    $  ANS009.BYTE007  $  switxh(x&0x01)0x00:@0401;0x01:@06e7; 
  $  045.电液制动系统通信状态                         $    $         $    $  ANS009.BYTE008  $  switxh(x&0x80)0x00:@0401;0x80:@06e7; 
  $  046.座椅记忆模块通信状态                         $    $         $    $  ANS009.BYTE008  $  switxh(x&0x08)0x00:@0401;0x08:@06e7; 
  $  047.扫风模块通信状态                             $    $         $    $  ANS009.BYTE008  $  switxh(x&0x04)0x00:@0401;0x04:@06e7; 
  $  048.组合仪表通信状态                             $    $         $    $  ANS009.BYTE009  $  switxh(x&0x80)0x00:@0401;0x80:@06e7; 
  $  049.通讯模块通信状态                             $    $         $    $  ANS009.BYTE009  $  switxh(x&0x10)0x00:@0401;0x10:@06e7; 
  $  050.娱乐通信状态                                 $    $         $    $  ANS009.BYTE009  $  switxh(x&0x08)0x00:@0401;0x08:@06e7; 
  $  051.行人警示模块通信状态                         $    $         $    $  ANS009.BYTE009  $  switxh(x&0x01)0x00:@0401;0x01:@06e7; 
  $  052.电池ID                                       $    $         $    $  ANS010.BYTE003  $  HEX(x1); 
  $  053.系统工作模式                                 $    $         $    $  ANS011.BYTE003  $  switxh(x&0x78)0x00:@001a;0x08:@04c9;0x20:@07c3; 

;******************************************************************************************************************************************************

