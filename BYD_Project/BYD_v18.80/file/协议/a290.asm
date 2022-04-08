
    车型ID：a290

    模拟：协议模拟-->a290

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~125K$~739

进入命令:

  $~  REQ000:731 02 10 01 00 00 00 00 00       $~  ANS000:739 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:731 02 3E 01 00 00 00 00 00       $!  ANS000:739 02 3E 01 00 00 00 00 00

退出命令:

  $@  REQ000:731 01 20 00 00 00 00 00 00       $@  ANS000:739 01 20 00 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:731 04 18 00 00 FF 00 00 00       $#  ANS000:739 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a2960000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:731 03 14 00 FF 00 00 00 00       $$  ANS000:739 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:731 03 22 00 01 00 00 00 00       $%  ANS000:739 03 22 00 01 00 00 00 00
  $%  REQ001:731 03 22 00 04 00 00 00 00       $%  ANS001:739 03 22 00 04 00 00 00 00

  $%  000:硬件号:        $%    $%  ANS000.BYTE004  $%  HEX(x1);
  $%  001:软件号:        $%    $%  ANS000.BYTE005  $%  HEX(x1);
  $%  002:日期:          $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  003:序列号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:731 03 22 00 05 00 00 00 00       $  ANS000:739 03 22 00 05 00 00 00 00
  $  REQ001:731 03 22 00 09 00 00 00 00       $  ANS001:739 03 22 00 09 00 00 00 00

  $  000.闭锁电压         $    $  V      $    $  ANS000.BYTE004  $  y=x1*30.00/255;
  $  001.电源电压         $    $  V      $    $  ANS000.BYTE005  $  y=x1*30.00/255;
  $  002.开锁电压         $    $  V      $    $  ANS000.BYTE006  $  y=x1*30.00/255;
  $  003.传感器0          $    $  mA     $    $  ANS000.BYTE007  $  y=x1*50.00/255;
  $  004.传感器1          $    $  mA     $    $  ANS000.BYTE009  $  y=x1*50.00/255;
  $  005.传感器电压       $    $  V      $    $  ANS000.BYTE008  $  y=x1*30.00/255;
  $  006.复位代码         $    $         $    $  ANS001.BYTE004  $  if(x1<0x02)y=@007f;else if(x1>=0x02&&x1<0x04)y=@08c4;else if(x1>=0x04&&x1<0x08)y=@086a;else if(x1>=0x08&&x1<0x10)y=@0869;else if(x1>=0x10&&x1<0x40)y=@0868;else if(x1>=0x40&&x1<0x80)y=@0866;else if(x1>=0x80&&x1<=0xff)y=@0865;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:731 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
