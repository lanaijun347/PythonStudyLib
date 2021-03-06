
    车型ID：a111

    模拟：协议模拟-->a111

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:727 02 10 01 00 00 00 00 00       $~  ANS000:72F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:727 02 3E 01 00 00 00 00 00       $!  ANS000:72F 02 3E 01 00 00 00 00 00

退出命令:

  $@  REQ000:727 01 20 00 00 00 00 00 00       $@  ANS000:72F 01 20 00 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:727 04 18 00 00 FF 00 00 00       $#  ANS000:72F 04 18 00 00 FF 00 00 00

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

  $$  REQ000:727 03 14 00 FF 00 00 00 00       $$  ANS000:72F 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:727 03 22 00 01 00 00 00 00       $%  ANS000:72F 03 22 00 01 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=x1/10.0;
  $%  001:软件版本:        $%    $%  ANS000.BYTE005  $%  y=x1/10.0;
  $%  002:软件日期:        $%    $%  ANS000.BYTE007  $%  if(x1<27) y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);else y=@0097;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:727 03 22 00 05 00 00 00 00       $  ANS000:72F 03 22 00 05 00 00 00 00
  $  REQ001:727 03 22 00 06 00 00 00 00       $  ANS001:72F 03 22 00 06 00 00 00 00
  $  REQ002:727 03 22 00 07 00 00 00 00       $  ANS002:72F 03 22 00 07 00 00 00 00
  $  REQ003:727 03 22 00 08 00 00 00 00       $  ANS003:72F 03 22 00 08 00 00 00 00
  $  REQ004:727 03 22 00 09 00 00 00 00       $  ANS004:72F 03 22 00 09 00 00 00 00
  $  REQ005:727 03 22 00 0A 00 00 00 00       $  ANS005:72F 03 22 00 0A 00 00 00 00
  $  REQ006:727 03 22 00 0B 00 00 00 00       $  ANS006:72F 03 22 00 0B 00 00 00 00
  $  REQ007:727 03 22 00 0C 00 00 00 00       $  ANS007:72F 03 22 00 0C 00 00 00 00
  $  REQ008:727 03 22 00 0D 00 00 00 00       $  ANS008:72F 03 22 00 0D 00 00 00 00
  $  REQ009:727 03 22 00 0E 00 00 00 00       $  ANS009:72F 03 22 00 0E 00 00 00 00
  $  REQ010:727 03 22 00 0F 00 00 00 00       $  ANS010:72F 03 22 00 0F 00 00 00 00
  $  REQ011:727 03 22 00 10 00 00 00 00       $  ANS011:72F 03 22 00 10 00 00 00 00
  $  REQ012:727 03 22 00 11 00 00 00 00       $  ANS012:72F 03 22 00 11 00 00 00 00
  $  REQ013:727 03 22 00 12 00 00 00 00       $  ANS013:72F 03 22 00 12 00 00 00 00

  $  000:风速                     $    $               $    $  ANS000.BYTE004  $  if(x1<0x08) y=x1; else y=@0097;
  $  001:送风模式                 $    $               $    $  ANS001.BYTE004  $  if(x1==0x01) y=@0144; else if(x1==0x02) y=@0145; else if(x1==0x03) y=@0146; else if(x1==0x04) y=@0147; else if(x1==0x05) y=@0148;else y=@0097;
  $  002:车外温度                 $    $  degree C     $    $  ANS002.BYTE004  $  if((x1<0xB2) && (x1>0x57)) y=x1-128; else y=@0097;
  $  003:车内温度                 $    $  degree C     $    $  ANS003.BYTE004  $  if(x1<0x5B) y=x1-40; else y=@0097;
  $  004:蒸发器温度               $    $  degree C     $    $  ANS004.BYTE004  $  if(x1<0x28) y=x; else y=@0097;
  $  005:AC请求状态               $    $               $    $  ANS005.BYTE004  $  if(x1==0x00) y=@014a; else if(x1==0x01) y=@014b; else y=@0097;
  $  006:AC电机低压启动状态       $    $               $    $  ANS006.BYTE004  $  if(x1%0x10==0x00) y=@0149; else if(x1%0x10==0x01) y=@00d1; else y=@0097;
  $  007:压缩机控制档位           $    $               $    $  ANS007.BYTE004  $  if(x1<0x27) y=x1; else y=@0097;
  $  008:PTC请求状态              $    $               $    $  ANS008.BYTE004  $  if(x1==0x00) y=@014a; else if(x1==0x01) y=@014b; else y=@0097;
  $  009:PTC低压启动信号          $    $               $    $  ANS009.BYTE004  $  if(x1==0x00) y=@0149; else if(x1==0x01) y=@00d1; else y=@0097;
  $  010:PTC控制档位              $    $               $    $  ANS010.BYTE004  $  if(x1<0x15) y=x1; else y=@0097;
  $  011:PTC温度                  $    $               $    $  ANS011.BYTE004  $  if(x1<0x50) y=x1; else y=@0097;
  $  012:高低压状态               $    $               $    $  ANS012.BYTE004  $  if(x1==0x00) y=@0022; else if(x1==0x01) y=@0059; else y=@0097;
  $  013:中压状态                 $    $               $    $  ANS013.BYTE004  $  if(x1==0x00) y=@0022; else if(x1==0x01) y=@0059; else y=@0097;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:727 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
