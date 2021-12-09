
    车型ID：a2bf

    模拟：协议模拟-->a2bf

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:745 02 10 01 00 00 00 00 00       $~  ANS000:74D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:745 02 3E 01 00 00 00 00 00       $!  ANS000:74D 02 3E 01 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:745 04 18 00 00 FF 00 00 00       $#  ANS000:74D 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a2b60000_2BYTE


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

  $%  000:软件号:          $%    $%  ANS000.BYTE004  $%  y=x1/10.0;
  $%  001:硬件号:          $%    $%  ANS000.BYTE005  $%  y=x1/10.0;
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%d/%d/%d],x1,x2,x3);
  $%  003:序列号:          $%    $%  ANS001.BYTE007  $%  HEX(x1,x2,x3,x4,x5);
  $%  004:车辆规格:        $%    $%  ANS002.BYTE004  $%  if(x1==0x01)y=@02f5;else if(x1==0x02)y=@02f6;else if(x1==0x03)y=@02f7;else if(x1==0x04)y=@02f8;else if(x1==0x05)y=@0356;else if(x1==0x06)y=@0357;else y=@009a;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:745 03 22 00 06 00 00 00 00       $  ANS000:74D 03 22 00 06 00 00 00 00
  $  REQ001:745 03 22 00 08 00 00 00 00       $  ANS001:74D 03 22 00 08 00 00 00 00
  $  REQ002:745 03 22 00 09 00 00 00 00       $  ANS002:74D 03 22 00 09 00 00 00 00
  $  REQ003:745 03 22 00 0A 00 00 00 00       $  ANS003:74D 03 22 00 0A 00 00 00 00
  $  REQ004:745 03 22 00 0B 00 00 00 00       $  ANS004:74D 03 22 00 0B 00 00 00 00
  $  REQ005:745 03 22 00 0C 00 00 00 00       $  ANS005:74D 03 22 00 0C 00 00 00 00
  $  REQ006:745 03 22 00 05 00 00 00 00       $  ANS006:74D 03 22 00 05 00 00 00 00

  $  000:近光灯状态                   $    $        $    $  ANS000.BYTE004  $  if(x1==0x00)y=@003b;else if(x1==0x01)y=@0005;else y=@009a;
  $  001:初始化次数                   $    $        $    $  ANS001.BYTE004  $  y=x1;
  $  002:ECU电源电压                  $    $  V     $    $  ANS002.BYTE005  $  if(x1<0x08)y=x1*2.56+0.03;else y=@0048;
  $  003:传感器电源电压               $    $  V     $    $  ANS003.BYTE005  $  if(x1<0x02)y=x1*2.56+0.51;else y=@0048;
  $  004:传感器信号电压               $    $  V     $    $  ANS004.BYTE005  $  if(x1<0x02)y=x1*2.56+0.51;else y=@0048;
  $  005:初始化高度传感器电压值       $    $  V     $    $  ANS005.BYTE005  $  if(x1<0x02)y=x1*2.56+0.51;else y=@0048;
  $  006:高度传感器值标定结果         $    $        $    $  ANS006.BYTE004  $  if(x1==0x00)y=@00e6;else if(x1==0x01)y=@0048;else y=@009a;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:745 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
