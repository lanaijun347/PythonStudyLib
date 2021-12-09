
    车型ID：a244

    模拟：协议模拟-->a244

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:726 02 10 01 00 00 00 00 00       $~  ANS000:72E 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:726 02 3E 80 00 00 00 00 00       $!  ANS000:72E 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:726 04 18 00 00 FF 00 00 00       $#  ANS000:72E 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a2350000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:726 03 14 00 FF 00 00 00 00       $$  ANS000:72E 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:726 03 22 00 0C 00 00 00 00       $%  ANS000:72E 03 22 00 0C 00 00 00 00
  $%  REQ001:726 03 22 00 0D 00 00 00 00       $%  ANS001:72E 03 22 00 0D 00 00 00 00
  $%  REQ002:726 03 22 00 01 00 00 00 00       $%  ANS002:72E 03 22 00 01 00 00 00 00

  $%  000:防夹电机软件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  001:防夹电机硬件版本:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  002:软件版本:                $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  003:硬件版本:                $%    $%  ANS002.BYTE005  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  004:生产日期:                $%    $%  ANS002.BYTE007  $%  y=SPRINTF([20%02d/%02d/%02d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:726 03 22 00 04 00 00 00 00       $  ANS000:72E 03 22 00 04 00 00 00 00
  $  REQ001:726 03 22 00 05 00 00 00 00       $  ANS001:72E 03 22 00 05 00 00 00 00
  $  REQ002:726 03 22 00 06 00 00 00 00       $  ANS002:72E 03 22 00 06 00 00 00 00
  $  REQ003:726 03 22 00 07 00 00 00 00       $  ANS003:72E 03 22 00 07 00 00 00 00
  $  REQ004:726 03 22 00 08 00 00 00 00       $  ANS004:72E 03 22 00 08 00 00 00 00
  $  REQ005:726 03 22 00 09 00 00 00 00       $  ANS005:72E 03 22 00 09 00 00 00 00
  $  REQ006:726 03 22 00 0A 00 00 00 00       $  ANS006:72E 03 22 00 0A 00 00 00 00
  $  REQ007:726 03 22 00 0B 00 00 00 00       $  ANS007:72E 03 22 00 0B 00 00 00 00
  $  REQ008:726 03 22 00 0E 00 00 00 00       $  ANS008:72E 03 22 00 0E 00 00 00 00

  $  000:动作状态               $    $        $    $  ANS000.BYTE004  $  if(x1==0x00)y=@02e1;else if(x1==0x01)y=@00d2;else if(x1==0x02)y=@0004;else if(x1==0x03)y=@0005;else y=@00d6;
  $  001:车窗位置               $    $        $    $  ANS001.BYTE004  $  if(x1==0x00)y=@02e1;else if(x1==0x01)y=@02e2;else if(x1==0x02)y=@02e3;else if(x1==0x03)y=@009a;else y=@00d6;
  $  002:位置状态               $    $        $    $  ANS002.BYTE004  $  if(x1==0x00)y=@0048;else if(x1==0x01)y=@0310;else if(x1==0x02)y=@0311;else y=@00d6;
  $  003:自动上升开关信号       $    $        $    $  ANS003.BYTE004  $  if(x1==0x00)y=@0004;else if(x1==0x01)y=@0005;else y=@00d6;
  $  004:自动下降开关信号       $    $        $    $  ANS004.BYTE004  $  if(x1==0x00)y=@0004;else if(x1==0x01)y=@0005;else y=@00d6;
  $  005:手动上升开关信号       $    $        $    $  ANS005.BYTE004  $  if(x1==0x00)y=@0004;else if(x1==0x01)y=@0005;else y=@00d6;
  $  006:手动下降开关信号       $    $        $    $  ANS006.BYTE004  $  if(x1==0x00)y=@0004;else if(x1==0x01)y=@0005;else y=@00d6;
  $  007:玻璃位置百分比         $    $  %     $    $  ANS007.BYTE004  $  if(x1<0xc9) y=x1/2.0;else y=@00d6;
  $  008:车窗遥控升降状态       $    $        $    $  ANS008.BYTE004  $  if(x1==0x00)y=@0312;else if(x1==0x01)y=@0313;else if(x1==0x02)y=@0314;else y=@00d6;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:726 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
