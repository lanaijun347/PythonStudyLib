
    车型ID：732f

    模拟：协议模拟-->732f

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
			y=(x1<<8)+x2; 

  ANS000.BYTE05 控制故障码个数，从$#ANS000.BYTE6$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/732f0000_2BYTE


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

  $%  000:汽车制造商备用零件号:          $%    $%  ANS000.BYTE006  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:系统供应商:                    $%    $%  ANS001.BYTE006  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:ECU序列号:                     $%    $%  ANS002.BYTE006  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  003:系统供应商ECU硬件号:           $%    $%  ANS003.BYTE006  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  004:系统供应商ECU硬件版本号:       $%    $%  ANS004.BYTE006  $%  ASCII(x1,x2,x3,x4);
  $%  005:系统供应商ECU软件号:           $%    $%  ANS005.BYTE006  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  006:系统供应商ECU软件版本号:       $%    $%  ANS006.BYTE006  $%  ASCII(x1,x2,x3,x4);
  $%  007:VIN(车辆识别号):               $%    $%  ANS007.BYTE007  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:80 58 F1 03 22 C9 50 07       $  ANS000:80 58 F1 03 22 C9 50 07
  $  REQ001:80 58 F1 03 22 C9 5B 12       $  ANS001:80 58 F1 03 22 C9 5B 12
  $  REQ002:80 58 F1 03 22 C9 5C 13       $  ANS002:80 58 F1 03 22 C9 5C 13
  $  REQ003:80 58 F1 03 22 59 10 57       $  ANS003:80 58 F1 03 22 59 10 57
  $  REQ004:80 58 F1 03 22 59 11 58       $  ANS004:80 58 F1 03 22 59 11 58
  $  REQ005:80 58 F1 03 22 59 14 5B       $  ANS005:80 58 F1 03 22 59 14 5B
  $  REQ006:80 58 F1 03 22 59 15 5C       $  ANS006:80 58 F1 03 22 59 15 5C
  $  REQ007:80 58 F1 03 22 59 16 5D       $  ANS007:80 58 F1 03 22 59 16 5D
  $  REQ008:80 58 F1 03 22 59 17 5E       $  ANS008:80 58 F1 03 22 59 17 5E
  $  REQ009:80 58 F1 03 22 59 18 5F       $  ANS009:80 58 F1 03 22 59 18 5F
  $  REQ010:80 58 F1 03 22 59 19 60       $  ANS010:80 58 F1 03 22 59 19 60
  $  REQ011:80 58 F1 03 22 59 1C 63       $  ANS011:80 58 F1 03 22 59 1C 63
  $  REQ012:80 58 F1 03 22 D1 00 BF       $  ANS012:80 58 F1 03 22 D1 00 BF
  $  REQ013:80 58 F1 03 22 E2 21 F1       $  ANS013:80 58 F1 03 22 E2 21 F1
  $  REQ014:80 58 F1 03 22 E2 4A 1A       $  ANS014:80 58 F1 03 22 E2 4A 1A
  $  REQ015:80 58 F1 03 22 E2 48 18       $  ANS015:80 58 F1 03 22 E2 48 18
  $  REQ016:80 58 F1 03 22 E3 00 D1       $  ANS016:80 58 F1 03 22 E3 00 D1
  $  REQ017:80 58 F1 03 22 E3 05 D6       $  ANS017:80 58 F1 03 22 E3 05 D6
  $  REQ018:80 58 F1 03 22 E3 10 E1       $  ANS018:80 58 F1 03 22 E3 10 E1
  $  REQ019:80 58 F1 03 22 E3 14 E5       $  ANS019:80 58 F1 03 22 E3 14 E5
  $  REQ020:80 58 F1 03 22 E4 10 E2       $  ANS020:80 58 F1 03 22 E4 10 E2
  $  REQ021:80 58 F1 03 22 C9 58 0F       $  ANS021:80 58 F1 03 22 C9 58 0F
  $  REQ022:80 58 F1 03 22 F0 0B E9       $  ANS022:80 58 F1 03 22 F0 0B E9

  $  000.安全带扣开关(输入1)                    $    $           $    $  ANS000.BYTE007  $  if(x&0x01)y=@014b;else y=@014c;
  $  001.约束指示灯-RIL(输出1)                  $    $           $    $  ANS001.BYTE007  $  if((x&0x03)==0x00)y=@014a;else if((x&0x03)==0x01)y=@0149;else if((x&0x03)==0x02)y=@0495;else y=@02f1;
  $  002.事件通知信号-ENS(输出2)                $    $           $    $  ANS002.BYTE007  $  if(x&0x01)y=@0000;else y=@0001;
  $  003.驾驶室安全气囊回路1电阻                $    $  ohm      $    $  ANS003.BYTE007  $  if(x1*256+x2<=102)y=0; else y=(x1*256+x2-102)/81.8;
  $  004.副驾驶室安全气囊回路2电阻              $    $  ohm      $    $  ANS004.BYTE007  $  y=(x1*256+x2)/100;
  $  005.驾驶室预张紧器回路3电阻                $    $  ohm      $    $  ANS005.BYTE007  $  y=(x1*256+x2)/100;
  $  006.副驾驶室预张紧器回路4电阻              $    $  ohm      $    $  ANS006.BYTE007  $  y=(x1*256+x2)/100;
  $  007.驾驶室侧安全气囊回路5电阻              $    $  ohm      $    $  ANS007.BYTE007  $  y=(x1*256+x2)/100;
  $  008.副驾驶室侧安全气囊回路6电阻            $    $  ohm      $    $  ANS008.BYTE007  $  y=(x1*256+x2)/100;
  $  009.驾驶室头部气帘回路7电阻                $    $  ohm      $    $  ANS009.BYTE007  $  y=(x1*256+x2)/100;
  $  010.副驾驶室头部气帘回路8电阻              $    $  ohm      $    $  ANS010.BYTE007  $  y=(x1*256+x2)/100;
  $  011.驾驶室牵拉器回路9电阻                  $    $  ohm      $    $  ANS011.BYTE007  $  y=(x1*256+x2)/100;
  $  012.气囊电控单元运行状态                   $    $           $    $  ANS012.BYTE007  $  if(x1==0x5a)y=@014d;else if(x1==0xa5)y=@0133;else y=@0188;
  $  013.模块序列号                             $    $           $    $  ANS013.BYTE007  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $  014.驾驶室正面碰撞传感器卫星序列号         $    $           $    $  ANS014.BYTE007  $  HEX(x1,x2,x3,x4);
  $  015.副驾驶室正面碰撞传感器卫星序列号       $    $           $    $  ANS015.BYTE007  $  HEX(x1,x2,x3,x4);
  $  016.车辆识别码(VIN)                        $    $           $    $  ANS016.BYTE007  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $  017.客户零件号                             $    $           $    $  ANS017.BYTE007  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  018.高田零件号                             $    $           $    $  ANS018.BYTE007  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  019.碰撞次数                               $    $           $    $  ANS019.BYTE007  $  HEX(x1);
  $  020.维修店代号                             $    $           $    $  ANS020.BYTE007  $  ASCII(x1,x2,x3,x4,x5);
  $  021.(硬线)车速                             $    $  km/h     $    $  ANS021.BYTE007  $  if(x1&0x80)y=@0095;else y=(x1*256+x2)*0.72;
  $  022.下线匹配的回路数                       $    $  个       $    $  ANS022.BYTE007  $  if((x1==0)&&(x2==0x08))y=x2;else if((x1==0)&&(x2==0x06))y=x2;else if((x1==0)&&(x2==0x04))y=x2;else if((x1==0)&&(x2==0x02))y=x2;else y=@0095;

;******************************************************************************************************************************************************

