
    车型ID：0a1d

    模拟：协议模拟-->0a1d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~72F

进入命令:

  $~  REQ000:727 02 10 01 00 00 00 00 00       $~  ANS000:72F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:727 02 3E 80 00 00 00 00 00       $!  ANS000:72F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:727 04 18 00 00 FF 00 00 00       $#  ANS000:72F 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/0a1d0000_2BYTE


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
  $%  REQ001:727 03 22 00 03 00 00 00 00       $%  ANS001:72F 03 22 00 03 00 00 00 00

  $%  000:软件版本号:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%X.%X],x1/16,x1%16);
  $%  001:硬件版本号:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%X.%X],x1/16,x1%16);
  $%  002:生产日期:          $%    $%  ANS000.BYTE007  $%  if(x1<27) y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);else y=@006d;
  $%  003:维修日期:          $%    $%  ANS001.BYTE004  $%  if(x1<27) y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);else y=@006d;
  $%  004:维修次数:          $%    $%  ANS001.BYTE007  $%  y=x;

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
  $  REQ008:727 03 22 00 10 00 00 00 00       $  ANS008:72F 03 22 00 10 00 00 00 00
  $  REQ009:727 03 22 00 12 00 00 00 00       $  ANS009:72F 03 22 00 12 00 00 00 00
  $  REQ010:727 03 22 00 13 00 00 00 00       $  ANS010:72F 03 22 00 13 00 00 00 00
  $  REQ011:727 03 22 00 14 00 00 00 00       $  ANS011:72F 03 22 00 14 00 00 00 00
  $  REQ012:727 03 22 00 0E 00 00 00 00       $  ANS012:72F 03 22 00 0E 00 00 00 00
  $  REQ013:727 03 22 00 16 00 00 00 00       $  ANS013:72F 03 22 00 16 00 00 00 00
  $  REQ014:727 03 22 00 17 00 00 00 00       $  ANS014:72F 03 22 00 17 00 00 00 00
  $  REQ015:727 03 22 00 18 00 00 00 00       $  ANS015:72F 03 22 00 18 00 00 00 00

  $  000.风速                          $    $               $    $  ANS000.BYTE004  $  if(x>0x07) y=@006d;else y=x;
  $  001.模式                          $    $               $    $  ANS001.BYTE004  $  if(x==0x01) y=@006e;else if(x==0x02)y=@0455;else if(x==0x03) y=@0070;else if(x==0x04) y=@0456;else if(x==0x05) y=@0072;else y=@006d;
  $  002.燃油压缩机状态                $    $               $    $  ANS002.BYTE004  $  if(x==0x00) y=@001e;else if(x==0x01)y=@00d9;else y=@006d;
  $  003.车外温度                      $    $  degree C     $    $  ANS003.BYTE004  $  if((x<0x58)||(x>0xB2)) y=@006d;else y=x-128;
  $  004.车内温度                      $    $  degree C     $    $  ANS004.BYTE004  $  if((x<0x80)||(x>0xB2)) y=@006d;else y=x-128;
  $  005.蒸发器温度                    $    $  degree C     $    $  ANS005.BYTE004  $  if(x>0x19) y=@006d;else y=x;
  $  006.燃油压缩机请求状态            $    $               $    $  ANS006.BYTE004  $  if(x==0x00) y=@003f;else if(x==0x01)y=@0044;else y=@006d;
  $  007.压力状态                      $    $               $    $  ANS007.BYTE004  $  if(x==0x00) y=@0078;else if(x==0x01)y=@0167;else y=@006d;
  $  008.压力值                        $    $  Mpa          $    $  ANS007.BYTE005  $  y=0.01*x;
  $  009.主驾通道温度                  $    $  degree C     $    $  ANS008.BYTE004  $  y=@006d;
  $  010.两级散热风扇控制状态          $    $               $    $  ANS009.BYTE004  $  if(x==0x00) y=@001e;else if(x==0x01)y=@033b;else if(x==0x02) y=@033a;else y=@006d;
  $  011.电池放电允许信号              $    $               $    $  ANS010.BYTE004  $  if(x==0x00) y=@0196;else if(x==0x01)y=@0195;else y=@006d;
  $  012.主驾PTC(辅助加热)状态         $    $               $    $  ANS011.BYTE004  $  if(x==0x00) y=@004d;else if(x==0x01)y=@004e;else y=@006d;
  $  013.主驾PTC(辅助加热)占空比       $    $  %            $    $  ANS011.BYTE005  $  if(x>0x64)y=@006d;else y=x;
  $  014.鼓风机正端继电器控制          $    $               $    $  ANS012.BYTE004  $  if(x==0x00) y=@002a;else if(x==0x01) y=@002b;else y=@006d;
  $  015.IG2(点火2)电压                $    $  V            $    $  ANS013.BYTE004  $  if((x<0x5A)||(x>0x9F)) y=@01e9;else y=x/10;
  $  016.电动压缩机状态                $    $               $    $  ANS014.BYTE004  $  if(x==0x00) y=@003f;else if(x==0x01)y=@0044;else y=@006d;
  $  017.电机压缩占空比                $    $  %            $    $  ANS014.BYTE005  $  if(x>0x64)y=@006d;else y=x;
  $  018.允许开启电动压缩机            $    $               $    $  ANS015.BYTE004  $  if(x==0x01) y=@0196;else if(x==0x02)y=@0195;else y=@006d;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:727 30 01 04 55 55 55 55 55  $FC 

;******************************************************************************************************************************************************
