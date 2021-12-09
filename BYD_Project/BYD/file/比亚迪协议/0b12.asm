
    车型ID：0b12

    模拟：协议模拟-->0b12

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:783 02 10 01 00 00 00 00 00       $~  ANS000:78B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:783 02 3E 80 00 00 00 00 00       $!  ANS000:78B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:783 03 19 01 09 00 00 00 00       $#  ANS000:78B 03 19 01 09 00 00 00 00
  $#  REQ001:783 03 19 02 09 00 00 00 00       $#  ANS001:78B 03 19 02 09 00 00 00 00

  ANS000.BYTE05-06 控制故障码个数，从$#ANS001.BYTE04$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/feff0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="2"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:783 04 14 FF FF FF 00 00 00       $$  ANS000:78B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:783 03 22 F1 93 00 00 00 00       $%  ANS000:78B 03 22 F1 93 00 00 00 00
  $%  REQ001:783 03 22 F1 94 00 00 00 00       $%  ANS001:78B 03 22 F1 94 00 00 00 00
  $%  REQ002:783 03 22 F1 95 00 00 00 00       $%  ANS002:78B 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,x1%100/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%d%s%d%s%d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1*256+x2)/10000,(x1*256+x2)%10000/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%d%s%d%s%d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:783 03 22 00 04 00 00 00 00       $  ANS000:78B 03 22 00 04 00 00 00 00
  $  REQ001:783 03 22 00 06 00 00 00 00       $  ANS001:78B 03 22 00 06 00 00 00 00
  $  REQ002:783 03 22 00 07 00 00 00 00       $  ANS002:78B 03 22 00 07 00 00 00 00
  $  REQ003:783 03 22 00 08 00 00 00 00       $  ANS003:78B 03 22 00 08 00 00 00 00
  $  REQ004:783 03 22 00 09 00 00 00 00       $  ANS004:78B 03 22 00 09 00 00 00 00
  $  REQ005:783 03 22 00 0A 00 00 00 00       $  ANS005:78B 03 22 00 0A 00 00 00 00
  $  REQ006:783 03 22 00 0B 00 00 00 00       $  ANS006:78B 03 22 00 0B 00 00 00 00

  $  000:ECU温度                $    $  degree C     $    $  ANS000.BYTE004  $  y=x1;
  $  001:扭矩信号占空比         $    $  %            $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.1;
  $  002:扭矩辅信号占空比       $    $  %            $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.1;
  $  003:P值                    $    $  %            $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.1;
  $  004:S值                    $    $  %            $    $  ANS004.BYTE004  $  y=(x1*256+x2)*0.1;
  $  005:转角值                 $    $  °           $    $  ANS005.BYTE004  $  y=(x1*256+x2)*0.1-800.0;
  $  006:直流母线电压           $    $  V            $    $  ANS006.BYTE004  $  y=(x1*256+x2)*0.1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:783 30 01 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
