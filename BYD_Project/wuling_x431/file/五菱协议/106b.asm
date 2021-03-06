
    车型ID：106b

    模拟：协议模拟-->106b

;******************************************************************************************************************************************************

    通讯线: $~07$~07$~10400

$JSON{"P4":5}

<VCI>
	<ACTIVE_ADDNODE type="0" num="0">
	<param type="string" value="1"/>
	<param type="string" value="9,8,13,1,3,12,10,11"/>
	</ACTIVE_ADDNODE>
</VCI>

进入命令:

  $~  REQ000:80 28 F1 01 81 1B       $~  ANS000:80 28 F1 01 81 1B
  $~  REQ001:80 28 F1 02 10 81 2C       $~  ANS001:80 28 F1 02 10 81 2C

空闲命令:

  $!  REQ000:80 28 F1 02 3E 00 D9       $!  ANS000:80 28 F1 02 3E 00 D9

退出命令:

  $@  REQ000:80 28 F1 01 82 1C       $@  ANS000:80 28 F1 01 82 1C


;******************************************************************************************************************************************************

读取故障码:

  $#  00.读当前故障码
  $#  REQ000:80 28 F1 02 18 01 B4       $#  ANS000:80 28 F1 02 18 01 B4

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE6$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/7c000000


  $#  01.读历史故障码
  $#  REQ000:80 28 F1 02 18 02 B5       $#  ANS000:80 28 F1 02 18 02 B5

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE6$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/7c000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:80 28 F1 04 14 FF FF FF AE       $$  ANS000:80 28 F1 04 14 FF FF FF AE

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:80 28 F1 02 1A 80 35       $%  ANS000:80 28 F1 02 1A 80 35

  $%  000:车辆名称:            $%    $%  ANS000.BYTE006  $%  ASCII(x1,x2,x3,x4,x5);
  $%  001:系统名称:            $%    $%  ANS000.BYTE011  $%  ASCII(x1,x2,x3);
  $%  002:软件部分编号:        $%    $%  ANS000.BYTE014  $%  HEX(x1,x2,x3);
  $%  003:软件版本:            $%    $%  ANS000.BYTE017  $%  HEX(x1,x2,x3,x4);
  $%  004:供应商零件号:        $%    $%  ANS000.BYTE021  $%  ASCII(x1,x2,x3,x4,x5);
  $%  005:整车厂零件号:        $%    $%  ANS000.BYTE026  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:80 28 F1 02 21 02 BE       $  ANS000:80 28 F1 02 21 02 BE
  $  REQ001:80 28 F1 02 21 03 BF       $  ANS001:80 28 F1 02 21 03 BF
  $  REQ002:80 28 F1 02 21 04 C0       $  ANS002:80 28 F1 02 21 04 C0
  $  REQ003:80 28 F1 02 21 08 C4       $  ANS003:80 28 F1 02 21 08 C4
  $  REQ004:80 28 F1 02 21 09 C5       $  ANS004:80 28 F1 02 21 09 C5
  $  REQ005:80 28 F1 02 21 10 CC       $  ANS005:80 28 F1 02 21 10 CC
  $  REQ006:80 28 F1 02 21 1C D8       $  ANS006:80 28 F1 02 21 1C D8
  $  REQ007:80 28 F1 02 21 1F DB       $  ANS007:80 28 F1 02 21 1F DB

  $  000.加注状态                       $    $           $    $  ANS000.BYTE006  $  if(x==0x00)y=@019d;else if(x==0xaa)y=@019e;else if(x==0xee)y=@019f;else if(x==0xff)y=@017c;else y=@01a0;
  $  001.终端检测状态                   $    $           $    $  ANS001.BYTE006  $  if(x==0x00)y=@019d;else if(x==0xaa)y=@019e;else if(x==0xee)y=@019f;else if(x==0xff)y=@017c;else y=@01a0;
  $  002.左前轮速度                     $    $  km/h     $    $  ANS002.BYTE006  $  y=(x1*0x100+x2)*0.0563;
  $  003.右前轮速度                     $    $  km/h     $    $  ANS002.BYTE008  $  y=(x1*0x100+x2)*0.0563;
  $  004.左后轮速度                     $    $  km/h     $    $  ANS002.BYTE010  $  y=(x1*0x100+x2)*0.0563;
  $  005.右后轮速度                     $    $  km/h     $    $  ANS002.BYTE012  $  y=(x1*0x100+x2)*0.0563;
  $  006.车速                           $    $  km/h     $    $  ANS003.BYTE006  $  y=(x1*0x100+x2)*0.0563;
  $  007.左前阀（进口）继电器状态       $    $           $    $  ANS004.BYTE006  $  if((x1&0x01)==0x01)y=@0115;else y=@0106;
  $  008.左前阀（出口）继电器状态       $    $           $    $  ANS004.BYTE006  $  if((x1&0x02)==0x02)y=@0115;else y=@0106;
  $  009.右前阀（进口）继电器状态       $    $           $    $  ANS004.BYTE006  $  if((x1&0x04)==0x04)y=@0115;else y=@0106;
  $  010.右前阀（出口）继电器状态       $    $           $    $  ANS004.BYTE006  $  if((x1&0x08)==0x08)y=@0115;else y=@0106;
  $  011.左后阀（进口）继电器状态       $    $           $    $  ANS004.BYTE006  $  if((x1&0x10)==0x10)y=@0115;else y=@0106;
  $  012.左后阀（出口）继电器状态       $    $           $    $  ANS004.BYTE006  $  if((x1&0x20)==0x20)y=@0115;else y=@0106;
  $  013.右后阀（进口）继电器状态       $    $           $    $  ANS004.BYTE006  $  if((x1&0x40)==0x40)y=@0115;else y=@0106;
  $  014.右后阀（出口）继电器状态       $    $           $    $  ANS004.BYTE006  $  if((x1&0x80)==0x80)y=@0115;else y=@0106;
  $  015.气泵马达状态                   $    $           $    $  ANS004.BYTE007  $  if((x1&0x02)==0x02)y=@0115;else y=@0106;
  $  016.制动灯开关状态                 $    $           $    $  ANS005.BYTE006  $  if(x==0xff)y=@0115;else y=@0106;
  $  017.电池电压                       $    $  V        $    $  ANS006.BYTE006  $  y=x*(0.08);
  $  018.继电器状态                     $    $           $    $  ANS004.BYTE007  $  if((x&0x01)==0x01) y=@0115;else y=@0106;
  $  019.阀门继电器状态                 $    $           $    $  ANS007.BYTE006  $  if((x&0x01)==0x01) y=@0113;else y=@0114;
  $  020.车速限制状态                   $    $           $    $  ANS007.BYTE006  $  if((x&0x02)==0x02) y=@0113;else y=@0114;

;******************************************************************************************************************************************************

