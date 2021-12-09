
    车型ID：3957

    模拟：协议模拟-->3957

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~250K

进入命令:

  $~  REQ000:7B0 02 10 01 00 00 00 00 00       $~  ANS000:7B0 02 10 01 00 00 00 00 00
  $~  REQ001:7B0 02 10 03 00 00 00 00 00       $~  ANS001:7B0 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:7B0 02 3E 00 00 00 00 00 00       $!  ANS000:7B0 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

    通讯线: $~06$~14$~250K

进入命令:

  $~  REQ000:7B0 02 10 01 00 00 00 00 00       $~  ANS000:7B8 02 10 01 00 00 00 00 00
  $~  REQ001:7B0 02 10 03 00 00 00 00 00       $~  ANS001:7B8 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:7B0 02 3E 00 00 00 00 00 00       $!  ANS000:7B8 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7B0 04 18 00 00 00 00 00 00       $#  ANS000:7B0 04 18 00 00 00 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/10040000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7B0 03 14 00 00 00 00 00 00       $$  ANS000:7B0 03 14 00 00 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7B0 03 22 00 01 00 00 00 00       $%  ANS000:7B0 03 22 00 01 00 00 00 00
  $%  REQ001:7B0 03 22 00 03 00 00 00 00       $%  ANS001:7B0 03 22 00 03 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%02d.%02d.%02d],X1,X2,X3);
  $%  001:软件版本:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02d.%02d.%02d],X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7B0 03 22 00 04 00 00 00 00       $  ANS000:7B0 03 22 00 04 00 00 00 00
  $  REQ001:7B0 03 22 00 05 00 00 00 00       $  ANS001:7B0 03 22 00 05 00 00 00 00
  $  REQ002:7B0 03 22 00 06 00 00 00 00       $  ANS002:7B0 03 22 00 06 00 00 00 00
  $  REQ003:7B0 03 22 00 07 00 00 00 00       $  ANS003:7B0 03 22 00 07 00 00 00 00
  $  REQ004:7B0 03 22 00 08 00 00 00 00       $  ANS004:7B0 03 22 00 08 00 00 00 00
  $  REQ005:7B0 03 22 00 09 00 00 00 00       $  ANS005:7B0 03 22 00 09 00 00 00 00
  $  REQ006:7B0 03 22 00 0A 00 00 00 00       $  ANS006:7B0 03 22 00 0A 00 00 00 00
  $  REQ007:7B0 03 22 00 0C 00 00 00 00       $  ANS007:7B0 03 22 00 0C 00 00 00 00
  $  REQ008:7B0 03 22 00 0D 00 00 00 00       $  ANS008:7B0 03 22 00 0D 00 00 00 00
  $  REQ009:7B0 03 22 00 0E 00 00 00 00       $  ANS009:7B0 03 22 00 0E 00 00 00 00
  $  REQ010:7B0 03 22 00 0F 00 00 00 00       $  ANS010:7B0 03 22 00 0F 00 00 00 00
  $  REQ011:7B0 03 22 00 10 00 00 00 00       $  ANS011:7B0 03 22 00 10 00 00 00 00

  $  000:气压报警                 $    $               $    $  ANS000.BYTE004  $  if(x==0x00)y=@0022;else if(x==0x01)y=@010f;else if(x==0x02)y=@010a;else y=@00d6;
  $  001:制动系统故障指示灯       $    $               $    $  ANS001.BYTE004  $  if(x==0x00)y=@0022;else if(x==0x01)y=@0059;else y=@00d6;
  $  002:电机目标状态             $    $               $    $  ANS002.BYTE004  $  if(x==0x00)y=@00d2;else if(x==0x01)y=@011a;else y=@00d6;
  $  003:电机实际状态             $    $               $    $  ANS003.BYTE004  $  if(x==0x00)y=@00d2;else if(x==0x01)y=@011a;else y=@00d6;
  $  004:CAN通讯状态              $    $               $    $  ANS004.BYTE004  $  if(x==0x00)y=@0022;else if(x==0x01)y=@05ef;else y=@00d6;
  $  005:过负载标志               $    $               $    $  ANS005.BYTE004  $  if(x==0x00)y=@0022;else if(x==0x01)y=@011d;else y=@00d6;
  $  006:空压机控制器温度         $    $  degree C     $    $  ANS006.BYTE004  $  if(x>0xC8)y=@00d6;else y=x-40;
  $  007:CAN失信复位次数          $    $  次           $    $  ANS007.BYTE004  $  if(x>0x20)y=@00d6;else y=x;
  $  008:压缩机目标转速           $    $  rpm          $    $  ANS008.BYTE004  $  if(x>0xFA)y=@00d6;else y=20*x;
  $  009:压缩机实际转速           $    $  rpm          $    $  ANS009.BYTE004  $  if(x>0xFA)y=@00d6;else y=20*x;
  $  010:主干路气压值             $    $  Mpa          $    $  ANS010.BYTE004  $  if(x>0x64)y=@00d6;else y=0.01*x;
  $  011:直流电压(压缩机)         $    $  V            $    $  ANS011.BYTE004  $  if(x>0xFA)y=@00d6;else y=3*x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7B0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
