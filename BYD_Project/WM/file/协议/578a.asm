
    车型ID：578a

    模拟：协议模拟-->578a

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7B4

进入命令:

  $~  REQ000:734 02 10 03 00 00 00 00 00       $~  ANS000:7B4 02 10 03 00 00 00 00 00
  $~~ REQ001:734 02 27 01 00 00 00 00 00       $~~ ANS001:7B4 02 27 01 00 00 00 00 00
  $~~ REQ002:734 06 27 02 6B 55 8A 4C 00       $~~ ANS002:7B4 06 27 02 6B 55 8A 4C 00

空闲命令:

  $!  REQ000:734 02 3E 00 00 00 00 00 00       $!  ANS000:7B4 02 3E 00 00 00 00 00 00

退出命令:

  $@  REQ000:734 02 10 01 00 00 00 00 00       $@  ANS000:7B4 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:734 03 19 02 AF 00 00 00 00       $#  ANS000:7B4 03 19 02 AF 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/57000000


;******************************************************************************************************************************************************

<RDTC>
	<FUNCTION type="0" num="0">
		<param type="string" value="0"/><!--方式0-->
	</FUNCTION>
</RDTC>

清除故障码:

  $$  REQ000:734 04 14 FF FF FF 00 00 00       $$  ANS000:7B4 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:734 03 22 F1 87 00 00 00 00       $%  ANS000:7B4 03 22 F1 87 00 00 00 00
  $%  REQ001:734 03 22 F1 88 00 00 00 00       $%  ANS001:7B4 03 22 F1 88 00 00 00 00
  $%  REQ002:734 03 22 F1 8A 00 00 00 00       $%  ANS002:7B4 03 22 F1 8A 00 00 00 00
  $%  REQ003:734 03 22 F1 97 00 00 00 00       $%  ANS003:7B4 03 22 F1 97 00 00 00 00
  $%  REQ004:734 03 22 F1 91 00 00 00 00       $%  ANS004:7B4 03 22 F1 91 00 00 00 00
  $%  REQ005:734 03 22 F1 8C 00 00 00 00       $%  ANS005:7B4 03 22 F1 8C 00 00 00 00
  $%  REQ006:734 03 22 F1 90 00 00 00 00       $%  ANS006:7B4 03 22 F1 90 00 00 00 00
  $%  REQ007:734 03 22 F1 5E 00 00 00 00       $%  ANS007:7B4 03 22 F1 5E 00 00 00 00
  $%  REQ008:734 03 22 F1 60 00 00 00 00       $%  ANS008:7B4 03 22 F1 60 00 00 00 00
  $%  REQ009:734 03 22 F1 5B 00 00 00 00       $%  ANS009:7B4 03 22 F1 5B 00 00 00 00

  $%  000:控制器总零件号:        $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:控制器软件号:          $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:供应商标识信息:        $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  003:系统名称:              $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:控制器硬件号:          $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:控制器序列号:          $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $%  006:车架号（VIN）:         $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:网络配置号:            $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  008:配置文件号:            $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:读取软件指纹:          $%    $%  ANS009.BYTE004  $%  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:734 03 22 F1 02 00 00 00 00       $  ANS000:7B4 03 22 F1 02 00 00 00 00
  $  REQ001:734 03 22 11 00 00 00 00 00       $  ANS001:7B4 03 22 11 00 00 00 00 00

  $  000.主驾1阶正面气囊 AB1FD             $    $       $    $  ANS000.BYTE004  $  switxh(x&0x01) 0x01:y=@00000123;default: y=@00000304;
  $  001.副驾1阶正面气囊 AB1FP             $    $       $    $  ANS000.BYTE004  $  switxh(x&0x02) 0x02:y=@00000123;default: y=@00000304;
  $  002.主驾2阶正面气囊 AB2FD             $    $       $    $  ANS000.BYTE004  $  switxh(x&0x04) 0x04:y=@00000123;default: y=@00000304;
  $  003.副驾2阶正面气囊 AB2FP             $    $       $    $  ANS000.BYTE004  $  switxh(x&0x08) 0x08:y=@00000123;default: y=@00000304;
  $  004.主驾1阶膝部气囊 KA1FD             $    $       $    $  ANS000.BYTE004  $  switxh(x&0x10) 0x00:y=@00000304;default: y=@00000123;
  $  005.副驾1阶膝部墙内 KA1FP             $    $       $    $  ANS000.BYTE004  $  switxh(x&0x20) 0x00:y=@00000304;default: y=@00000123;
  $  006.主驾安全带1阶张紧器 BT1FD         $    $       $    $  ANS000.BYTE004  $  switxh(x&0x40) 0x00:y=@00000304;default: y=@00000123;
  $  007.副驾安全带1阶张紧器 BT1FP         $    $       $    $  ANS000.BYTE004  $  switxh(x&0x80) 0x00:y=@00000304;default: y=@00000123;
  $  008.主驾安全带2阶张紧器 BT2FD         $    $       $    $  ANS000.BYTE005  $  switxh(x&0x01) 0x00:y=@00000304;default: y=@00000123;
  $  009.副驾安全带2阶张紧器 BT2FP         $    $       $    $  ANS000.BYTE005  $  switxh(x&0x02) 0x00:y=@00000304;default: y=@00000123;
  $  010.主驾1阶侧气囊 SA1FD               $    $       $    $  ANS000.BYTE005  $  switxh(x&0x04) 0x00:y=@00000304;default: y=@00000123;
  $  011.副驾1阶侧气囊 SA1FP               $    $       $    $  ANS000.BYTE005  $  switxh(x&0x08) 0x00:y=@00000304;default: y=@00000123;
  $  012.主驾1阶气帘 IC1FD                 $    $       $    $  ANS000.BYTE005  $  switxh(x&0x10) 0x00:y=@00000304;default: y=@00000123;
  $  013.副驾1阶气帘 IC1FP                 $    $       $    $  ANS000.BYTE003  $  switxh(x&0x20) 0x00:y=@00000304;default: y=@00000123;
  $  014.左后1阶侧气囊 SA1RD               $    $       $    $  ANS000.BYTE005  $  switxh(x&0x40) 0x00:y=@00000304;default: y=@00000123;
  $  015.右后1阶侧气囊 SA1RP               $    $       $    $  ANS000.BYTE005  $  switxh(x&0x80) 0x00:y=@00000304;default: y=@00000123;
  $  016.左后1阶张紧器 BT1RD               $    $       $    $  ANS000.BYTE006  $  switxh(x&0x01) 0x00:y=@00000304;default: y=@00000123;
  $  017.后排中央1阶张紧器 BT1RC           $    $       $    $  ANS000.BYTE006  $  switxh(x&0x02) 0x00:y=@00000304;default: y=@00000123;
  $  018.右后1阶张紧器 BT1RP               $    $       $    $  ANS000.BYTE006  $  switxh(x&0x04) 0x00:y=@00000304;default: y=@00000123;
  $  019.高压电池断开 BATDHV               $    $       $    $  ANS000.BYTE006  $  switxh(x&0x08) 0x00:y=@00000304;default: y=@00000123;
  $  020.主驾正碰撞传感器 UFSD             $    $       $    $  ANS000.BYTE007  $  switxh(x&0x01) 0x00:y=@00000304;default: y=@00000123;
  $  021.中央碰撞传感器 UFSC               $    $       $    $  ANS000.BYTE007  $  switxh(x&0x02) 0x00:y=@00000304;default: y=@00000123;
  $  022.副驾碰撞传感器 UFSP               $    $       $    $  ANS000.BYTE007  $  switxh(x&0x04) 0x00:y=@00000304;default: y=@00000123;
  $  023.外围加速度传感器-左前 PASFD       $    $       $    $  ANS000.BYTE007  $  switxh(x&0x08) 0x00:y=@00000304;default: y=@00000123;
  $  024.外围加速度传感器-右前 PASFP       $    $       $    $  ANS000.BYTE007  $  switxh(x&0x10) 0x00:y=@00000304;default: y=@00000123;
  $  025.外围压力传感器-左前 PPSFD         $    $       $    $  ANS000.BYTE007  $  switxh(x&0x20) 0x00:y=@00000304;default: y=@00000123;
  $  026.外围压力传感器-右前 PPSFP         $    $       $    $  ANS000.BYTE007  $  switxh(x&0x40) 0x00:y=@00000304;default: y=@00000123;
  $  027.外围压力传感器-左后 PASRD         $    $       $    $  ANS000.BYTE008  $  switxh(x&0x01) 0x00:y=@00000304;default: y=@00000123;
  $  028.外围压力传感器-右后 PASRP         $    $       $    $  ANS000.BYTE008  $  switxh(x&0x02) 0x00:y=@00000304;default: y=@00000123;
  $  029.安全带锁止-主驾 BLFD              $    $       $    $  ANS000.BYTE009  $  switxh(x&0x01) 0x00:y=@00000304;default: y=@00000123;
  $  030.安全带锁止-副驾 BLFP              $    $       $    $  ANS000.BYTE009  $  switxh(x&0x02) 0x00:y=@00000304;default: y=@00000123;
  $  031.副驾侧气囊禁用开关 PADS           $    $       $    $  ANS000.BYTE009  $  switxh(x&0x04) 0x00:y=@00000304;default: y=@00000123;
  $  032.副驾座椅乘坐感知系统 OPSFP        $    $       $    $  ANS000.BYTE009  $  switxh(x&0x08) 0x00:y=@00000304;default: y=@00000123;
  $  033.后左后安全带锁扣 BLRD             $    $       $    $  ANS000.BYTE009  $  switxh(x&0x10) 0x00:y=@00000304;default: y=@00000123;
  $  034.后中央安全带锁扣 BLRC             $    $       $    $  ANS000.BYTE009  $  switxh(x&0x20) 0x00:y=@00000304;default: y=@00000123;
  $  035.右后安全带锁扣 BLRP               $    $       $    $  ANS000.BYTE009  $  switxh(x&0x40) 0x00:y=@00000304;default: y=@00000123;
  $  036.主驾座椅位置传感器 SPSFD          $    $       $    $  ANS000.BYTE010  $  switxh(x&0x01) 0x00:y=@00000304;default: y=@00000123;
  $  037.副驾座椅位置传感器 SPSFP          $    $       $    $  ANS000.BYTE010  $  switxh(x&0x02) 0x00:y=@00000304;default: y=@00000123;
  $  038.安全带提醒-主驾 SBRFD             $    $       $    $  ANS000.BYTE010  $  switxh(x&0x04) 0x00:y=@00000304;default: y=@00000123;
  $  039.安全带提醒-副驾 SBRFP             $    $       $    $  ANS000.BYTE010  $  switxh(x&0x08) 0x00:y=@00000304;default: y=@00000123;
  $  040.安全带提醒-左后 SBRRD             $    $       $    $  ANS000.BYTE010  $  switxh(x&0x10) 0x00:y=@00000304;default: y=@00000123;
  $  041.安全带提醒-后中央 SBRRC           $    $       $    $  ANS000.BYTE010  $  switxh(x&0x20) 0x00:y=@00000304;default: y=@00000123;
  $  042.安全带提醒-右后 SBRRP             $    $       $    $  ANS000.BYTE010  $  switxh(x&0x40) 0x00:y=@00000304;default: y=@00000123;
  $  043.系统警告灯-硬线信号               $    $       $    $  ANS000.BYTE011  $  switxh(x&0x01) 0x00:y=@00000304;default: y=@00000123;
  $  044.PADI灯通过硬线                    $    $       $    $  ANS000.BYTE011  $  switxh(x&0x02) 0x00:y=@00000304;default: y=@00000123;
  $  045.硬线碰撞信号                      $    $       $    $  ANS000.BYTE011  $  switxh(x&0x04) 0x00:y=@00000304;default: y=@00000123;
  $  046.敲响                              $    $       $    $  ANS000.BYTE011  $  switxh(x&0x08) 0x00:y=@00000304;default: y=@00000123;
  $  047.气囊起爆功能激活                  $    $       $    $  ANS001.BYTE004  $  switxh(x) 0x00:y=@00000158;default: y=@00000084;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:734 30 00 01 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
