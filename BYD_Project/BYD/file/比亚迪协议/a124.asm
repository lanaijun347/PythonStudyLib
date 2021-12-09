
    车型ID：a124

    模拟：协议模拟-->a124

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:793 02 10 01 00 00 00 00 00       $~  ANS000:79B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:793 02 3E 80 00 00 00 00 00       $!  ANS000:79B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:793 05 18 00 FF FF FF 00 00       $#  ANS000:79B 05 18 00 FF FF FF 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/11000000


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

  $%  REQ000:793 03 22 00 01 00 00 00 00       $%  ANS000:79B 03 22 00 01 00 00 00 00
  $%  REQ001:793 03 22 00 03 00 00 00 00       $%  ANS001:79B 03 22 00 03 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  001:软件版本:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:793 03 22 00 0B 00 00 00 00       $  ANS000:79B 03 22 00 0B 00 00 00 00
  $  REQ001:793 03 22 00 0D 00 00 00 00       $  ANS001:79B 03 22 00 0D 00 00 00 00
  $  REQ002:793 03 22 00 0E 00 00 00 00       $  ANS002:79B 03 22 00 0E 00 00 00 00
  $  REQ003:793 03 22 00 0F 00 00 00 00       $  ANS003:79B 03 22 00 0F 00 00 00 00
  $  REQ004:793 03 22 00 04 00 00 00 00       $  ANS004:79B 03 22 00 04 00 00 00 00
  $  REQ005:793 03 22 00 05 00 00 00 00       $  ANS005:79B 03 22 00 05 00 00 00 00
  $  REQ006:793 03 22 00 07 00 00 00 00       $  ANS006:79B 03 22 00 07 00 00 00 00
  $  REQ007:793 03 22 00 09 00 00 00 00       $  ANS007:79B 03 22 00 09 00 00 00 00
  $  REQ008:793 03 22 00 0A 00 00 00 00       $  ANS008:79B 03 22 00 0A 00 00 00 00

  $  000:高压侧电压         $    $  V            $    $  ANS000.BYTE004  $  if((x2*256+x1)<0x03E9) y=x2*256+x1;else y=@00d6;
  $  001:低压侧电压         $    $  V            $    $  ANS001.BYTE004  $  if(x1<0xC9) y=x1*0.1;else y=@009e;
  $  002:低压侧电流         $    $  A            $    $  ANS002.BYTE004  $  if(x1<0xFB) y=x1*2-250;else y=@009e;
  $  003:MOS管温度          $    $  degree C     $    $  ANS003.BYTE004  $  if(x1<0xF1) y=x1-40;else y=@009e;
  $  004:发电机状态         $    $               $    $  ANS004.BYTE004  $  if(x1==0x00)y=@0022;else if(x1==0x01)y=@0059;else if(x1==0x02)y=@019e;else y=@009e;
  $  005:发动机状态         $    $               $    $  ANS005.BYTE004  $  if(x1==0x00)y=@011a;else if(x1==0x01)y=@00d2;else if(x1==0x02)y=@00d1;else if(x1==0x03)y=@0059;else if(x1==0x04)y=@01a4;else y=@009e;
  $  006:放电是否允许       $    $               $    $  ANS006.BYTE004  $  if(x1==0x00)y=@002c;else if((x1==0x01)||(x1==0x02))y=@002d;else if(x1==0x03)y=@01a5;else y=@009e;
  $  007:DC故障状态         $    $               $    $  ANS007.BYTE004  $  if(x1==0x00)y=@0022;else if(x1==0x01)y=@0059;else y=@009e;
  $  008:DC工作模式         $    $               $    $  ANS008.BYTE004  $  if(x1==0x00)y=@0105;else if(x1==0x01)y=@01a2;else if(x1==0x02)y=@01a3;else y=@009e;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:793 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
