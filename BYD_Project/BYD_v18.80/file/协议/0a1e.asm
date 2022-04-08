
    车型ID：0a1e

    模拟：协议模拟-->0a1e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~76E

进入命令:

  $~  REQ000:766 02 10 01 00 00 00 00 00       $~  ANS000:76E 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:766 02 3E 80 00 00 00 00 00       $!  ANS000:76E 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:766 04 18 00 00 FF 00 00 00       $#  ANS000:76E 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/0a1e0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:766 03 14 00 FF 00 00 00 00       $$  ANS000:76E 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:766 03 22 00 01 00 00 00 00       $%  ANS000:76E 03 22 00 01 00 00 00 00
  $%  REQ001:766 03 22 00 02 00 00 00 00       $%  ANS001:76E 03 22 00 02 00 00 00 00

  $%  000:软件版本号:        $%    $%  ANS000.BYTE004  $%  y=x/10;
  $%  001:硬件版本号:        $%    $%  ANS000.BYTE005  $%  y=x/10;
  $%  002:更新日期:          $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  003:生产日期:          $%    $%  ANS001.BYTE004  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:766 03 22 00 04 00 00 00 00       $  ANS000:76E 03 22 00 04 00 00 00 00
  $  REQ001:766 03 22 00 05 00 00 00 00       $  ANS001:76E 03 22 00 05 00 00 00 00
  $  REQ002:766 03 22 00 06 00 00 00 00       $  ANS002:76E 03 22 00 06 00 00 00 00
  $  REQ003:766 03 22 00 07 00 00 00 00       $  ANS003:76E 03 22 00 07 00 00 00 00
  $  REQ004:766 03 22 00 08 00 00 00 00       $  ANS004:76E 03 22 00 08 00 00 00 00
  $  REQ005:766 03 22 00 10 00 00 00 00       $  ANS005:76E 03 22 00 10 00 00 00 00
  $  REQ006:766 03 22 00 11 00 00 00 00       $  ANS006:76E 03 22 00 11 00 00 00 00
  $  REQ007:766 03 22 00 12 00 00 00 00       $  ANS007:76E 03 22 00 12 00 00 00 00
  $  REQ008:766 03 22 00 13 00 00 00 00       $  ANS008:76E 03 22 00 13 00 00 00 00
  $  REQ009:766 03 22 F1 8C 00 00 00 00       $  ANS009:76E 03 22 F1 8C 00 00 00 00

  $  000.散热片温度           $    $  degree C     $    $  ANS000.BYTE004  $  if(x>0xAA) y=@002e;else y=x;
  $  001.PTC预置档位          $    $               $    $  ANS001.BYTE004  $  if(x>0x64) y=@002e;else y=x;
  $  002.PTC实际档位          $    $               $    $  ANS002.BYTE004  $  if(x>0x64) y=@002e;else y=x;
  $  003.右侧散热片温度       $    $  degree C     $    $  ANS003.BYTE004  $  if(x>0xAA) y=@002e;else y=x;
  $  004.冷却液温度           $    $  degree C     $    $  ANS004.BYTE004  $  if(x>0x3C) y=@002e;else y=2*x;
  $  005.IG2低压电源值        $    $  V            $    $  ANS005.BYTE004  $  if((x1>0x00)||((x1==0x00)&&(x2>0xf0))) y=@002e;else y=0.1*(x1*256+x2);
  $  006.负载高压电源值       $    $  V            $    $  ANS006.BYTE004  $  if((x1>0x01)||((x1==0x01)&&(x2>0xf4))) y=@002e;else y=x1*256+x2;
  $  007.负载电流值           $    $  A            $    $  ANS007.BYTE004  $  if((x1>0x01)||((x1==0x01)&&(x2>0x2C))) y=@002e;else y=0.1*(x1*256+x2);
  $  008.PTC消耗功率          $    $  W            $    $  ANS008.BYTE004  $  if((x1>0x17)||((x1==0x17)&&(x2>0x70))) y=@002e;else y=x1*256+x2;
  $  009.PTC产品序列号        $    $               $    $  ANS009.BYTE004  $  if(x1<27) y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);else y=@002e;
  $  010.生产日期             $    $               $    $  ANS009.BYTE007  $  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:766 30 01 04 55 55 55 55 55  $FC 

;******************************************************************************************************************************************************
