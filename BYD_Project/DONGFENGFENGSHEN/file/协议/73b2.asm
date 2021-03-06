
    车型ID：73b2

    模拟：协议模拟-->73b2

;******************************************************************************************************************************************************

    通讯线: $~07$~07$~10400

<VCI>
	<ACTIVE_ADDNODE type="0" num="0">
	<param type="string" value="1"/>
	<param type="string" value="6,14,11,12,3,8,15"/>
	</ACTIVE_ADDNODE>
</VCI>

进入命令:

  $~  REQ000:81 58 F1 81 4B       $~  ANS000:81 58 F1 81 4B
  $~  REQ001:80 58 F1 02 10 01 DC       $~  ANS001:80 58 F1 02 10 01 DC

空闲命令:

  $!  REQ000:80 58 F1 01 3E 08       $!  ANS000:80 58 F1 01 3E 08

退出命令:

  $@  REQ000:80 58 F1 01 82 4C       $@  ANS000:80 58 F1 01 82 4C


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:80 58 F1 02 18 08 EB       $#  ANS000:80 58 F1 02 18 08 EB

		控制公式：
			y=x1*0x100+x2; 

  ANS000.BYTE05 控制故障码个数，从$#ANS000.BYTE6$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/73b20000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:80 58 F1 01 14 DE       $$  ANS000:80 58 F1 01 14 DE

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:80 58 F1 02 1A 87 6C       $%  ANS000:80 58 F1 02 1A 87 6C
  $%  REQ001:80 58 F1 02 1A 8A 6F       $%  ANS001:80 58 F1 02 1A 8A 6F
  $%  REQ002:80 58 F1 02 1A 8C 71       $%  ANS002:80 58 F1 02 1A 8C 71
  $%  REQ003:80 58 F1 02 1A 92 77       $%  ANS003:80 58 F1 02 1A 92 77
  $%  REQ004:80 58 F1 02 1A 93 78       $%  ANS004:80 58 F1 02 1A 93 78
  $%  REQ005:80 58 F1 02 1A 94 79       $%  ANS005:80 58 F1 02 1A 94 79
  $%  REQ006:80 58 F1 02 1A 95 7A       $%  ANS006:80 58 F1 02 1A 95 7A
  $%  REQ007:80 58 F1 03 22 E3 00 D1       $%  ANS007:80 58 F1 03 22 E3 00 D1

  $%  000:ECU识别数据表:                 $%    $%  ANS000.BYTE007  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:汽车制造商备用零件号:          $%    $%  ANS001.BYTE007  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:系统供应商:                    $%    $%  ANS002.BYTE007  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  003:ECU序列号:                     $%    $%  ANS003.BYTE007  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  004:系统供应商ECU硬件号:           $%    $%  ANS004.BYTE007  $%  ASCII(x1,x2,x3,x4);
  $%  005:系统供应商ECU硬件版本号:       $%    $%  ANS005.BYTE007  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  006:系统供应商ECU软件号:           $%    $%  ANS006.BYTE007  $%  ASCII(x1,x2,x3,x4);
  $%  007:VIN(车辆识别码):               $%    $%  ANS007.BYTE007  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:80 58 F1 03 22 C9 57 0E       $  ANS000:80 58 F1 03 22 C9 57 0E
  $  REQ001:80 58 F1 03 22 C9 59 10       $  ANS001:80 58 F1 03 22 C9 59 10
  $  REQ002:80 58 F1 03 22 59 10 57       $  ANS002:80 58 F1 03 22 59 10 57
  $  REQ003:80 58 F1 03 22 59 11 58       $  ANS003:80 58 F1 03 22 59 11 58
  $  REQ004:80 58 F1 03 22 59 14 5B       $  ANS004:80 58 F1 03 22 59 14 5B
  $  REQ005:80 58 F1 03 22 59 15 5C       $  ANS005:80 58 F1 03 22 59 15 5C
  $  REQ006:80 58 F1 03 22 59 16 5D       $  ANS006:80 58 F1 03 22 59 16 5D
  $  REQ007:80 58 F1 03 22 59 17 5E       $  ANS007:80 58 F1 03 22 59 17 5E
  $  REQ008:80 58 F1 03 22 59 18 5F       $  ANS008:80 58 F1 03 22 59 18 5F
  $  REQ009:80 58 F1 03 22 59 19 60       $  ANS009:80 58 F1 03 22 59 19 60
  $  REQ010:80 58 F1 03 22 59 1C 63       $  ANS010:80 58 F1 03 22 59 1C 63
  $  REQ011:80 58 F1 03 22 D1 00 BF       $  ANS011:80 58 F1 03 22 D1 00 BF
  $  REQ012:80 58 F1 03 22 E2 21 F1       $  ANS012:80 58 F1 03 22 E2 21 F1
  $  REQ013:80 58 F1 03 22 E2 3B 0B       $  ANS013:80 58 F1 03 22 E2 3B 0B
  $  REQ014:80 58 F1 03 22 E2 48 18       $  ANS014:80 58 F1 03 22 E2 48 18
  $  REQ015:80 58 F1 03 22 E2 4A 1A       $  ANS015:80 58 F1 03 22 E2 4A 1A
  $  REQ016:80 58 F1 03 22 E2 50 20       $  ANS016:80 58 F1 03 22 E2 50 20
  $  REQ017:80 58 F1 03 22 E3 05 D6       $  ANS017:80 58 F1 03 22 E3 05 D6
  $  REQ018:80 58 F1 03 22 E3 10 E1       $  ANS018:80 58 F1 03 22 E3 10 E1
  $  REQ019:80 58 F1 03 22 C9 58 0F       $  ANS019:80 58 F1 03 22 C9 58 0F
  $  REQ020:80 58 F1 03 22 E3 14 E5       $  ANS020:80 58 F1 03 22 E3 14 E5

  $  000.安全带扣开关(输入1)               $    $           $    $  ANS000.BYTE007  $  if(((x1>>0)&1)) y=@014b;else y=@014c;
  $  001.约束指示灯 - RIL(输出1)           $    $           $    $  ANS001.BYTE007  $  if(((x1>>1)&1)) y=@0149;else y=@014a;
  $  002.事件通知信号 - ENS(输出2)         $    $           $    $  ANS001.BYTE007  $  if(((x1>>4)&1)) y=@0000;else y=@0001;
  $  003.驾驶室安全气囊回路1电阻           $    $  ohm      $    $  ANS002.BYTE007  $  if(((x1*256+x2)*0.01)>=10)y=10.0;else y=(x1*256+x2)*0.01;
  $  004.副驾驶室安全气囊回路2电阻         $    $  ohm      $    $  ANS003.BYTE007  $  if(((x1*256+x2)*0.01)>=10)y=10.0;else y=(x1*256+x2)*0.01;
  $  005.驾驶室预张紧器回路3电阻           $    $  ohm      $    $  ANS004.BYTE007  $  if(((x1*256+x2)*0.01)>=10)y=10.0;else y=(x1*256+x2)*0.01;
  $  006.副驾驶室预张紧器回路4电阻         $    $  ohm      $    $  ANS005.BYTE007  $  if(((x1*256+x2)*0.01)>=10)y=10.0;else y=(x1*256+x2)*0.01;
  $  007.驾驶室侧安全气囊回路5电阻         $    $  ohm      $    $  ANS006.BYTE007  $  if(((x1*256+x2)*0.01)>=10)y=10.0;else y=(x1*256+x2)*0.01;
  $  008.副驾驶室侧安全气囊回路6电阻       $    $  ohm      $    $  ANS007.BYTE007  $  if(((x1*256+x2)*0.01)>=10)y=10.0;else y=(x1*256+x2)*0.01;
  $  009.驾驶室头部气帘回路7电阻           $    $  ohm      $    $  ANS008.BYTE007  $  if(((x1*256+x2)*0.01)>=10)y=10.0;else y=(x1*256+x2)*0.01;
  $  010.副驾驶室头部气帘回路8电阻         $    $  ohm      $    $  ANS009.BYTE007  $  if(((x1*256+x2)*0.01)>=10)y=10.0;else y=(x1*256+x2)*0.01;
  $  011.驾驶室牵拉器回路9电阻             $    $  ohm      $    $  ANS010.BYTE007  $  if(((x1*256+x2)*0.01)>=10)y=10.0;else y=(x1*256+x2)*0.01;
  $  012.气囊电控单元运行状态              $    $           $    $  ANS011.BYTE007  $  if(x==0x5A) y=@014d;else y=@0133;
  $  013.模块序列号                        $    $           $    $  ANS012.BYTE007  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  014.驾驶员前碰传感器序列号            $    $           $    $  ANS013.BYTE007  $  HEX(x1,x2,x3,x4);
  $  015.副驾驶侧碰传感器序列号            $    $           $    $  ANS014.BYTE007  $  HEX(x1,x2,x3,x4);
  $  016.驾驶员侧碰传感器序列号            $    $           $    $  ANS015.BYTE007  $  HEX(x1,x2,x3,x4);
  $  017.副驾驶前碰传感器序列号            $    $           $    $  ANS016.BYTE007  $  HEX(x1,x2,x3,x4);
  $  018.客户零件号                        $    $           $    $  ANS017.BYTE007  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  019.高田零件号                        $    $           $    $  ANS018.BYTE007  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  020.(硬线)车速                        $    $  km/h     $    $  ANS019.BYTE007  $  if(((x1>>7)&1)) y=@0095;else y=(((x1&0x7F)<<8)+x2)*0.72;
  $  021.碰撞次数                          $    $           $    $  ANS020.BYTE007  $  HEXx1;

;******************************************************************************************************************************************************

