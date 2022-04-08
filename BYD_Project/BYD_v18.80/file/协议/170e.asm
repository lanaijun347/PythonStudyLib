
    车型ID：170e

    模拟：协议模拟-->170e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~79B

进入命令:

  $~  REQ000:793 02 10 01 00 00 00 00 00       $~  ANS000:79B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:793 02 3E 80 00 00 00 00 00       $!  ANS000:79B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:793 05 18 00 FF FF FF 00 00       $#  ANS000:79B 05 18 00 FF FF FF 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:793 04 14 FF FF FF 00 00 00       $$  ANS000:79B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:793 03 22 F1 93 00 00 00 00       $%  ANS000:79B 03 22 F1 93 00 00 00 00
  $%  REQ001:793 03 22 F1 94 00 00 00 00       $%  ANS001:79B 03 22 F1 94 00 00 00 00
  $%  REQ002:793 03 22 F1 95 00 00 00 00       $%  ANS002:79B 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:793 03 22 00 04 00 00 00 00       $  ANS000:79B 03 22 00 04 00 00 00 00
  $  REQ001:793 03 22 00 05 00 00 00 00       $  ANS001:79B 03 22 00 05 00 00 00 00
  $  REQ002:793 03 22 00 07 00 00 00 00       $  ANS002:79B 03 22 00 07 00 00 00 00
  $  REQ003:793 03 22 00 09 00 00 00 00       $  ANS003:79B 03 22 00 09 00 00 00 00
  $  REQ004:793 03 22 00 0A 00 00 00 00       $  ANS004:79B 03 22 00 0A 00 00 00 00
  $  REQ005:793 03 22 00 0B 00 00 00 00       $  ANS005:79B 03 22 00 0B 00 00 00 00
  $  REQ006:793 03 22 00 0D 00 00 00 00       $  ANS006:79B 03 22 00 0D 00 00 00 00
  $  REQ007:793 03 22 00 0E 00 00 00 00       $  ANS007:79B 03 22 00 0E 00 00 00 00
  $  REQ008:793 03 22 00 0F 00 00 00 00       $  ANS008:79B 03 22 00 0F 00 00 00 00

  $  000.发电机状态           $    $               $    $  ANS000.BYTE004  $  if(x1==0x00)y=@0045;else if(x1==0x01)y=@0046;else if(x1==0x02)y=@00fc;else y=@0002;
  $  001.发动机状态           $    $               $    $  ANS001.BYTE004  $  if(x1==0x00)y=@004a;else if(x1==0x01)y=@003e;else if(x1==0x02)y=@0066;else if(x1==0x03)y=@0046;else if(x1==0x04)y=@00fc;else y=@0002;
  $  002.放电是否允许         $    $               $    $  ANS002.BYTE004  $  if(x1==0x00)y=@004e;else if(x1==0x01)y=@004d;else if(x1==0x02)y=@00fe;else if(x1==0x03)y=@00ff;else y=@0002;
  $  003.DC系统故障状态       $    $               $    $  ANS003.BYTE004  $  if(x1==0x00)y=@0045;else if(x1==0x01)y=@0046;else y=@0002;
  $  004.DC工作模式           $    $               $    $  ANS004.BYTE004  $  if(x1==0x00)y=@0100;else if(x1==0x01)y=@0101;else if(x1==0x02)y=@0102;else y=@0002;
  $  005.高压侧电压           $    $  V            $    $  ANS005.BYTE004  $  y=x1+x2*256;
  $  006.低压侧电压           $    $  V            $    $  ANS006.BYTE004  $  y=x1*0.1;
  $  007.低压侧电流           $    $  A            $    $  ANS007.BYTE004  $  y=x1*2-250;
  $  008.MOS管温度            $    $  degree C     $    $  ANS008.BYTE004  $  y=x1-40;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:793 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
