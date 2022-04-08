
    车型ID：a119

    模拟：协议模拟-->a119

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~799

进入命令:

  $~  REQ000:791 02 10 01 00 00 00 00 00       $~  ANS000:799 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:791 02 3E 01 00 00 00 00 00       $!  ANS000:799 02 3E 01 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:791 05 18 00 FF FF FF 00 00       $#  ANS000:799 05 18 00 FF FF FF 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/08000000


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

  $%  REQ000:791 03 22 00 01 00 00 00 00       $%  ANS000:799 03 22 00 01 00 00 00 00
  $%  REQ001:791 03 22 00 03 00 00 00 00       $%  ANS001:799 03 22 00 03 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  001:软件版本:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:791 03 22 00 04 00 00 00 00       $  ANS000:799 03 22 00 04 00 00 00 00
  $  REQ001:791 03 22 00 06 00 00 00 00       $  ANS001:799 03 22 00 06 00 00 00 00
  $  REQ002:791 03 22 00 07 00 00 00 00       $  ANS002:799 03 22 00 07 00 00 00 00
  $  REQ003:791 03 22 00 08 00 00 00 00       $  ANS003:799 03 22 00 08 00 00 00 00
  $  REQ004:791 03 22 00 09 00 00 00 00       $  ANS004:799 03 22 00 09 00 00 00 00
  $  REQ005:791 03 22 00 0A 00 00 00 00       $  ANS005:799 03 22 00 0A 00 00 00 00
  $  REQ006:791 03 22 00 0B 00 00 00 00       $  ANS006:799 03 22 00 0B 00 00 00 00
  $  REQ007:791 03 22 00 0C 00 00 00 00       $  ANS007:799 03 22 00 0C 00 00 00 00
  $  REQ008:791 03 22 00 0D 00 00 00 00       $  ANS008:799 03 22 00 0D 00 00 00 00
  $  REQ009:791 03 22 00 0E 00 00 00 00       $  ANS009:799 03 22 00 0E 00 00 00 00
  $  REQ010:791 03 22 01 01 00 00 00 00       $  ANS010:799 03 22 01 01 00 00 00 00

  $  000.真空泵状态           $    $               $    $  ANS000.BYTE004  $  if(x1==0x00) y=@022d;else if(x1==0x01) y=@005b;else y=@0108;
  $  001.风扇高速状态         $    $               $    $  ANS001.BYTE004  $  if(x1==0x00) y=@022d;else if(x1==0x01) y=@005b;else y=@0108;
  $  002.风扇低速状态         $    $               $    $  ANS002.BYTE004  $  if(x1==0x00) y=@022d;else if(x1==0x01) y=@005b;else y=@0108;
  $  003.车速                 $    $  km/h         $    $  ANS003.BYTE004  $  if(x2<0x75) y=x2*2.56+x1/100.00;else if((x2==0x75) && (x1<0x31)) y=x2*2.56+x1/100.00;else y=@0108;
  $  004.总里程               $    $  km           $    $  ANS004.BYTE004  $  y=(x1+x2*256+x3*65536-246)/10;
  $  005.水温值               $    $  degree C     $    $  ANS005.BYTE004  $  if(x1<0xC9) y=x1-40;else y=@0108;
  $  006.真空压力值           $    $  kPa          $    $  ANS006.BYTE004  $  if(x1<0x65) y=x1;else y=@0108;
  $  007.碰撞信号             $    $               $    $  ANS007.BYTE004  $  if(x1==0x00) y=@01ad;else if(x1==0x01) y=@0391;else y=@0108;
  $  008.水温报警             $    $               $    $  ANS008.BYTE004  $  if(x1==0x00) y=@0045;else if(x1==0x01) y=@067f;else y=@0108;
  $  009.真空压力报警         $    $               $    $  ANS009.BYTE004  $  if(x1==0x00) y=@0045;else if(x1==0x01) y=@0318;else if(x1==0x02) y=@06a0;else y=@0108;
  $  010.真空泵工作时间       $    $  分           $    $  ANS010.BYTE004  $  y=x1+x2*256+x3*65536;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:791 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
