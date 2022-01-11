
    车型ID：582b

    模拟：协议模拟-->582b

;******************************************************************************************************************************************************

    通讯线: $~07$~07$~10400

$JSON{"P4":5}

进入命令:

  $~  REQ000:81 58 F1 81 4B       $~  ANS000:81 58 F1 81 4B

空闲命令:

  $!  REQ000:80 58 F1 02 3E 01 0A       $!  ANS000:80 58 F1 02 3E 01 0A

退出命令:

  $@  REQ000:80 58 F1 01 82 4C       $@  ANS000:80 58 F1 01 82 4C


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:80 58 F1 04 18 00 FF 00 E4       $#  ANS000:80 58 F1 04 18 00 FF 00 E4

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE05 控制故障码个数，从$#ANS000.BYTE6$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/58180000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:80 58 F1 03 14 FF 00 DF       $$  ANS000:80 58 F1 03 14 FF 00 DF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:80 58 F1 02 1A 80 65       $%  ANS000:80 58 F1 02 1A 80 65
  $%  REQ001:80 58 F1 02 1A 86 6B       $%  ANS001:80 58 F1 02 1A 86 6B

  $%  000:ECU ID:        $%    $%  ANS000.BYTE006  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  001:组件ID:        $%    $%  ANS001.BYTE006  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:80 58 F1 02 21 02 EE       $  ANS000:80 58 F1 02 21 02 EE
  $  REQ001:80 58 F1 02 21 03 EF       $  ANS001:80 58 F1 02 21 03 EF
  $  REQ002:80 58 F1 02 21 0B F7       $  ANS002:80 58 F1 02 21 0B F7

  $  000.读碰撞信息                 $    $          $    $  ANS000.BYTE006  $  switxh(x&0x01) 0x00:y=@0132;default: y=@0318;
  $  001.主驾驶安全气囊             $    $          $    $  ANS001.BYTE006  $  switxh(x&0x01) 0x00:y=@0336;default: y=@0337;
  $  002.主驾驶座椅侧安全气囊       $    $          $    $  ANS001.BYTE006  $  switxh(x&0x02) 0x00:y=@0336;default: y=@0337;
  $  003.副驾驶安全气囊             $    $          $    $  ANS001.BYTE006  $  switxh(x&0x08) 0x00:y=@0336;default: y=@0337;
  $  004.电源电压                   $    $  V       $    $  ANS002.BYTE006  $  y=x*25/255+0.7;
  $  005.储能电压                   $    $  V       $    $  ANS002.BYTE007  $  y=x*25/255;
  $  006.点火具数目                 $    $          $    $  ANS002.BYTE008  $  y=x;
  $  007.点火具1电阻值              $    $  ohm     $    $  ANS002.BYTE009  $  y=x/10;
  $  008.点火具2电阻值              $    $  ohm     $    $  ANS002.BYTE010  $  y=x/10;

;******************************************************************************************************************************************************

