
    车型ID：a813

    模拟：协议模拟-->a813

;******************************************************************************************************************************************************

    通讯线: $~09$~09$~9600

$JSON{"P4":5}

<VCI>
	<ACTIVE_ADDNODE type="0" num="0">
	<param type="string" value="1"/>
	<param type="string" value="3,11,1,12,8,2,15,6,7,13"/>
	</ACTIVE_ADDNODE>
</VCI>

进入命令:

  $~  REQ000:81 C0 F1 81 B3       $~  ANS000:81 C0 F1 81 B3

空闲命令:

  $!  REQ000:81 C0 F1 3E 70       $!  ANS000:81 C0 F1 3E 70

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:81 C0 F1 18 4A       $#  ANS000:81 C0 F1 18 4A

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE04 控制故障码个数，从$#ANS000.BYTE5$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/feff0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:81 C0 F1 14 46       $$  ANS000:81 C0 F1 14 46

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:81 C0 F1 1A 4C       $%  ANS000:81 C0 F1 1A 4C
  $%  REQ001:81 C0 F1 3C 6E       $%  ANS001:81 C0 F1 3C 6E

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  001:生产日期:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X/%02X/%02X],x1,x2,x3);
  $%  002:维修日期:        $%    $%  ANS001.BYTE007  $%  y=SPRINTF([%02X/%02X/%02X],x1,x2,x3);
  $%  003:维修次数:        $%    $%  ANS001.BYTE010  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:81 C0 F1 39 6B       $  ANS000:81 C0 F1 39 6B
  $  REQ001:81 C0 F1 37 69       $  ANS001:81 C0 F1 37 69

  $  000.实际值               $    $       $    $  ANS000.BYTE004  $  y=x1;
  $  001.偏差值               $    $       $    $  ANS000.BYTE005  $  y=x1;
  $  002.偏差方向             $    $       $    $  ANS000.BYTE006  $  if(x1 == 0x00)y=@07b4;else if(x1 == 0x01)y=@07b5;else if(x1 == 0x02)y=@07b6;else y=@0002;
  $  003.外部传感器信息       $    $       $    $  ANS001.BYTE004  $  if(x1 == 0xA1)y=@07b7;else if(x1 == 0xA2)y=@07b8;else y=@07b9;

;******************************************************************************************************************************************************

