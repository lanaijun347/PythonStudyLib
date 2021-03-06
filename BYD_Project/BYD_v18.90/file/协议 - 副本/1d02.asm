
    车型ID：1d02

    模拟：协议模拟-->1d02

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~74D

进入命令:

  $~  REQ000:745 02 10 01 00 00 00 00 00       $~  ANS000:74D 02 10 01 00 00 00 00 00
  $~  REQ001:745 02 10 01 00 00 00 00 00       $~  ANS001:74D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:745 02 3E 80 00 00 00 00 00       $!  ANS000:74D 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:745 04 18 00 00 FF 00 00 00       $#  ANS000:74D 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/feff0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:745 03 14 00 FF 00 00 00 00       $$  ANS000:74D 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:745 03 22 00 01 00 00 00 00       $%  ANS000:74D 03 22 00 01 00 00 00 00
  $%  REQ001:745 03 22 00 02 00 00 00 00       $%  ANS001:74D 03 22 00 02 00 00 00 00
  $%  REQ002:745 03 22 00 04 00 00 00 00       $%  ANS002:74D 03 22 00 04 00 00 00 00
  $%  REQ003:745 03 22 00 05 00 00 00 00       $%  ANS003:74D 03 22 00 05 00 00 00 00

  $%  000:软件版本:                  $%    $%  ANS000.BYTE004  $%  y=x1*0.1;
  $%  001:硬件版本:                  $%    $%  ANS000.BYTE005  $%  y=x1*0.1;
  $%  002:生产日期(0):               $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  003:生产日期(1):               $%    $%  ANS000.BYTE010  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  004:生产日期(2):               $%    $%  ANS000.BYTE013  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  005:生产日期(3):               $%    $%  ANS000.BYTE016  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  006:生产日期(4):               $%    $%  ANS000.BYTE019  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  007:生产序列号:                $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X %02X %02X %02X %02X %02X],x1,x2,x3,x4,x5,x6);
  $%  008:车辆规格:                  $%    $%  ANS002.BYTE004  $%  if(x1==0x01)y = @0461;else if(x1==0x02)y = @0462;else if(x1==0x03)y = @0463;else if(x1==0x04)y = @0464;else if(x1==0x05)y = @046e;else if(x1==0x06)y = @046f;else y = @0001;
  $%  009:高度传感器标定结果:        $%    $%  ANS003.BYTE004  $%  if(x1==0x00)y = @0002;else if(x1==0x01)y = @0003;else y = @0001;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:745 03 22 00 06 00 00 00 00       $  ANS000:74D 03 22 00 06 00 00 00 00
  $  REQ001:745 03 22 00 08 00 00 00 00       $  ANS001:74D 03 22 00 08 00 00 00 00
  $  REQ002:745 03 22 00 09 00 00 00 00       $  ANS002:74D 03 22 00 09 00 00 00 00
  $  REQ003:745 03 22 00 0A 00 00 00 00       $  ANS003:74D 03 22 00 0A 00 00 00 00
  $  REQ004:745 03 22 00 0B 00 00 00 00       $  ANS004:74D 03 22 00 0B 00 00 00 00
  $  REQ005:745 03 22 00 0C 00 00 00 00       $  ANS005:74D 03 22 00 0C 00 00 00 00
  $  REQ006:745 03 22 00 0D 00 00 00 00       $  ANS006:74D 03 22 00 0D 00 00 00 00

  $  000.近光灯状态           $    $        $    $  ANS000.BYTE004  $  if(x1==0x00)y = @00d9;else if(x1==0x01)y = @001e;else y = @0001;
  $  001.初始化次数           $    $        $    $  ANS001.BYTE004  $  y=x1;
  $  002.ECU电源电压          $    $  V     $    $  ANS002.BYTE004  $  y = x1*2.6/255+x2*2.56;
  $  003.传感器电源电压       $    $  V     $    $  ANS003.BYTE004  $  y = x1*2.6/255+x2*2.56;
  $  004.传感器信号电压       $    $  V     $    $  ANS004.BYTE004  $  y = x1*2.6/255+x2*2.56;
  $  005.高度传感器电压       $    $  V     $    $  ANS005.BYTE004  $  y = x1*2.6/255+x2*2.56;
  $  006.前灯调节器状态       $    $        $    $  ANS006.BYTE004  $  if((x1==0x00)&&(x2==0x00))y = @0a45;else if((x1==0x00)&&(x2==0x01))y = @0a46;else if((x1==0x00)&&(x2==0x02))y = @0a47;else if((x1==0x00)&&(x2==0x03))y = @01e3;else y = @0001;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:745 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
