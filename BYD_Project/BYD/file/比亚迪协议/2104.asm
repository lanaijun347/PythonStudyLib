
    车型ID：2104

    模拟：协议模拟-->2104

;******************************************************************************************************************************************************

    通讯线: $~09$~09$~9600

进入命令:

  $~  REQ000:81 C0 F3 10 44       $~  ANS000:81 C0 F3 10 44

空闲命令:

  $!  REQ000:81 C0 F3 3E 72       $!  ANS000:81 C0 F3 3E 72

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:81 C0 F3 18 4C       $#  ANS000:81 C0 F3 18 4C

  ANS000.BYTE04 控制故障码个数，从$#ANS000.BYTE5$#开始每$#1$#个字节表示一个故障码，前$#1$#表示码号。

  码库:

  $*$*DTC/ae018000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:81 C0 F3 14 48       $$  ANS000:81 C0 F3 14 48

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:81 C0 F3 1A 4E       $%  ANS000:81 C0 F3 1A 4E
  $%  REQ001:81 C0 F3 3C 70       $%  ANS001:81 C0 F3 3C 70

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  001:生产日期:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X/%02X/%02X],x1,x2,x3);
  $%  002:维修日期:        $%    $%  ANS001.BYTE007  $%  y=SPRINTF([%02X/%02X/%02X],x1,x2,x3);
  $%  003:维修次数:        $%    $%  ANS001.BYTE010  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:81 C0 F3 39 6D       $  ANS000:81 C0 F3 39 6D
  $  REQ001:81 C0 F3 37 6B       $  ANS001:81 C0 F3 37 6B

  $  000:实际值               $    $       $    $  ANS000.BYTE004  $  y=x1;
  $  001:偏差值               $    $       $    $  ANS000.BYTE005  $  y=x1;
  $  002:偏差方向             $    $       $    $  ANS000.BYTE006  $  if(x1 == 0x00) y=@0094;else if(x1 == 0x01) y=@0095;else if(x1 == 0x02) y=@0096;else y=@001c;
  $  003:外部传感器信息       $    $       $    $  ANS001.BYTE004  $  if(x1 == 0xA1) y=@0091;else if(x1 == 0xA2) y=@0092;else y=@0093;

;******************************************************************************************************************************************************

