
    车型ID：1911

    模拟：协议模拟-->1911

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:783 02 10 01 00 00 00 00 00       $~  ANS000:78B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:783 02 3E 80 00 00 00 00 00       $!  ANS000:78B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:783 05 18 00 FF FF FF 00 00       $#  ANS000:78B 05 18 00 FF FF FF 00 00

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

  $$  REQ000:783 04 14 FF FF FF 00 00 00       $$  ANS000:78B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:783 03 22 00 01 00 00 00 00       $%  ANS000:78B 03 22 00 01 00 00 00 00
  $%  REQ001:783 03 22 00 03 00 00 00 00       $%  ANS001:78B 03 22 00 03 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  001:软件版本:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:783 03 22 00 04 00 00 00 00       $  ANS000:78B 03 22 00 04 00 00 00 00
  $  REQ001:783 03 22 00 05 00 00 00 00       $  ANS001:78B 03 22 00 05 00 00 00 00
  $  REQ002:783 03 22 00 06 00 00 00 00       $  ANS002:78B 03 22 00 06 00 00 00 00
  $  REQ003:783 03 22 00 08 00 00 00 00       $  ANS003:78B 03 22 00 08 00 00 00 00
  $  REQ004:783 03 22 00 09 00 00 00 00       $  ANS004:78B 03 22 00 09 00 00 00 00
  $  REQ005:783 03 22 00 0A 00 00 00 00       $  ANS005:78B 03 22 00 0A 00 00 00 00
  $  REQ006:783 03 22 00 0B 00 00 00 00       $  ANS006:78B 03 22 00 0B 00 00 00 00
  $  REQ007:783 03 22 00 0C 00 00 00 00       $  ANS007:78B 03 22 00 0C 00 00 00 00
  $  REQ008:783 03 22 00 0D 00 00 00 00       $  ANS008:78B 03 22 00 0D 00 00 00 00
  $  REQ009:783 03 22 00 0E 00 00 00 00       $  ANS009:78B 03 22 00 0E 00 00 00 00
  $  REQ010:783 03 22 00 0F 00 00 00 00       $  ANS010:78B 03 22 00 0F 00 00 00 00
  $  REQ011:783 03 22 00 10 00 00 00 00       $  ANS011:78B 03 22 00 10 00 00 00 00
  $  REQ012:783 03 22 00 11 00 00 00 00       $  ANS012:78B 03 22 00 11 00 00 00 00
  $  REQ013:783 03 22 00 12 00 00 00 00       $  ANS013:78B 03 22 00 12 00 00 00 00
  $  REQ014:783 03 22 00 13 00 00 00 00       $  ANS014:78B 03 22 00 13 00 00 00 00
  $  REQ015:783 03 22 00 14 00 00 00 00       $  ANS015:78B 03 22 00 14 00 00 00 00

  $  000:电机运行状态       $    $               $    $  ANS000.BYTE004  $  if(x1 == 0x00)y=@0004;else if(x1 == 0x01)y=@0005;else y=@001c;
  $  001:电机目标转速       $    $  rpm          $    $  ANS001.BYTE004  $  y=x1+x2*256;
  $  002:电机实际转速       $    $  rpm          $    $  ANS002.BYTE004  $  y=x1+x2*256;
  $  003:直流母线电压       $    $  V            $    $  ANS003.BYTE004  $  y=x1;
  $  004:交流侧电流         $    $  A            $    $  ANS004.BYTE004  $  y=x1;
  $  005:散热器温度         $    $  degree C     $    $  ANS005.BYTE004  $  y=x1;
  $  006:控制器电压         $    $  V            $    $  ANS006.BYTE004  $  if(x1<0x33)y=x1;else y=@001c;
  $  007:A相最大电流        $    $  A            $    $  ANS007.BYTE004  $  y=x1+x2*256;
  $  008:B相最大电流        $    $  A            $    $  ANS008.BYTE004  $  y=x1+x2*256;
  $  009:故障信息           $    $               $    $  ANS009.BYTE004  $  HEX(x1,x2,x3);
  $  010:A相零漂            $    $               $    $  ANS010.BYTE004  $  y=x1+x2*256;
  $  011:B相零漂            $    $               $    $  ANS011.BYTE004  $  y=x1+x2*256;
  $  012:方向盘转速         $    $  °/s         $    $  ANS012.BYTE004  $  y=x1+x2*256;
  $  013:方向盘转角         $    $  °           $    $  ANS013.BYTE004  $  y=(x1+x2*256)-800;
  $  014:车速               $    $  km/h         $    $  ANS014.BYTE004  $  y=x1;
  $  015:OK灯信息           $    $               $    $  ANS015.BYTE004  $  if(x1 == 0x00)y=@0004;else if(x1 == 0x01)y=@0005;else y=@001c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:783 30 01 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
