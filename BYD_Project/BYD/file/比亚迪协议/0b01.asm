
    车型ID：0b01

    模拟：协议模拟-->0b01

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:791 02 10 01 00 00 00 00 00       $~  ANS000:799 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:791 02 3E 80 00 00 00 00 00       $!  ANS000:799 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:791 05 18 00 FF FF FF 00 00       $#  ANS000:799 05 18 00 FF FF FF 00 00

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

  $$  REQ000:791 04 14 FF FF FF 00 00 00       $$  ANS000:799 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:791 03 22 F1 93 00 00 00 00       $%  ANS000:799 03 22 F1 93 00 00 00 00
  $%  REQ001:791 03 22 F1 94 00 00 00 00       $%  ANS001:799 03 22 F1 94 00 00 00 00
  $%  REQ002:791 03 22 F1 95 00 00 00 00       $%  ANS002:799 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,x1%100/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%d%s%d%s%d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1*256+x2)/10000,(x1*256+x2)%10000/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%d%s%d%s%d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:791 03 22 00 04 00 00 00 00       $  ANS000:799 03 22 00 04 00 00 00 00
  $  REQ001:791 03 22 00 06 00 00 00 00       $  ANS001:799 03 22 00 06 00 00 00 00
  $  REQ002:791 03 22 00 07 00 00 00 00       $  ANS002:799 03 22 00 07 00 00 00 00
  $  REQ003:791 03 22 00 0A 00 00 00 00       $  ANS003:799 03 22 00 0A 00 00 00 00
  $  REQ004:791 03 22 00 0B 00 00 00 00       $  ANS004:799 03 22 00 0B 00 00 00 00
  $  REQ005:791 03 22 00 0D 00 00 00 00       $  ANS005:799 03 22 00 0D 00 00 00 00
  $  REQ006:791 03 22 00 0E 00 00 00 00       $  ANS006:799 03 22 00 0E 00 00 00 00
  $  REQ007:791 03 22 01 01 00 00 00 00       $  ANS007:799 03 22 01 01 00 00 00 00
  $  REQ008:791 03 22 01 03 00 00 00 00       $  ANS008:799 03 22 01 03 00 00 00 00
  $  REQ009:791 03 22 01 04 00 00 00 00       $  ANS009:799 03 22 01 04 00 00 00 00
  $  REQ010:791 03 22 01 05 00 00 00 00       $  ANS010:799 03 22 01 05 00 00 00 00

  $  000:真空泵状态                 $    $               $    $  ANS000.BYTE004  $  if(x1==0x00)y=@0105;else if(x1==0x01)y=@0475;else y=@001c;
  $  001:高速冷却风扇工作状态       $    $               $    $  ANS001.BYTE004  $  if(x1==0x00)y=@0105;else if(x1==0x01)y=@0475;else y=@001c;
  $  002:低速冷却风扇工作状态       $    $               $    $  ANS002.BYTE004  $  if(x1==0x00)y=@0105;else if(x1==0x01)y=@0475;else y=@001c;
  $  003:水温                       $    $  degree C     $    $  ANS003.BYTE004  $  y=x1-40;
  $  004:真空压力值                 $    $  kPa          $    $  ANS004.BYTE004  $  y=x1;
  $  005:水温报警                   $    $               $    $  ANS005.BYTE004  $  if(x1==0x00)y=@03f3;else if(x1==0x01)y=@03f4;else y=@001c;
  $  006:真空压力报警               $    $               $    $  ANS006.BYTE004  $  if(x1==0x00)y=@0022;else if(x1==0x01)y=@03f1;else if(x1==0x02)y=@03f2;else y=@001c;
  $  007:真空泵工作时间             $    $  分钟         $    $  ANS007.BYTE004  $  y=x1+x2*256+x3*256*256+x4*256*256*256;
  $  008:充电口电锁状态             $    $               $    $  ANS008.BYTE004  $  if(x1==0x00)y=@032b;else if(x1==0x01)y=@026f;else if(x1==0x02)y=@0059;else y=@001c;
  $  009:充电口舱门状态             $    $               $    $  ANS009.BYTE004  $  if(x1==0x00)y=@0005;else if(x1==0x01)y=@0004;else y=@001c;
  $  010:无极风扇状态               $    $               $    $  ANS010.BYTE004  $  if(x1==0x00)y=@0005;else if(x1==0x01)y=@0004;else y=@001c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:791 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
