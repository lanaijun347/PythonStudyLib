
    车型ID：2307

    模拟：协议模拟-->2307

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7BB

进入命令:

  $~  REQ000:7A1 02 10 01 00 00 00 00 00       $~  ANS000:7BB 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A1 02 3E 80 00 00 00 00 00       $!  ANS000:7BB 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7A1 04 18 00 00 FF 00 00 00       $#  ANS000:7BB 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/ce0a0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A1 03 14 00 FF 00 00 00 00       $$  ANS000:7BB 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A1 03 22 00 01 00 00 00 00       $%  ANS000:7BB 03 22 00 01 00 00 00 00
  $%  REQ001:7A1 03 22 00 02 00 00 00 00       $%  ANS001:7BB 03 22 00 02 00 00 00 00
  $%  REQ002:7A1 03 22 00 04 00 00 00 00       $%  ANS002:7BB 03 22 00 04 00 00 00 00
  $%  REQ003:7A1 03 22 00 05 00 00 00 00       $%  ANS003:7BB 03 22 00 05 00 00 00 00
  $%  REQ004:7A1 03 22 F1 8C 00 00 00 00       $%  ANS004:7BB 03 22 F1 8C 00 00 00 00

  $%  000:软件版本:                $%    $%  ANS000.BYTE004  $%  y=x1*0.1;
  $%  001:硬件版本:                $%    $%  ANS000.BYTE005  $%  y=x1*0.1;
  $%  002:软件最后更新日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  003:生产日期:                $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  004:车型:                    $%    $%  ANS002.BYTE004  $%  switxh(x1)0x81: y=@00f7;0x82: y=@00f8;0x83: y=@00f9;0x84: y=@00fa;0x85: y=@00fb;default: y=@0054;
  $%  005:MCU:                     $%    $%  ANS003.BYTE004  $%  switxh(x1)0x81: y=@00f6;default: y=@0054;
  $%  006:压缩机产品序列号:        $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X %02X %02X],x1,x2,x3);
  $%  007:生产日期_1:              $%    $%  ANS004.BYTE007  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7A1 03 22 00 06 00 00 00 00       $  ANS000:7BB 03 22 00 06 00 00 00 00
  $  REQ001:7A1 03 22 00 07 00 00 00 00       $  ANS001:7BB 03 22 00 07 00 00 00 00
  $  REQ002:7A1 03 22 00 08 00 00 00 00       $  ANS002:7BB 03 22 00 08 00 00 00 00
  $  REQ003:7A1 03 22 00 09 00 00 00 00       $  ANS003:7BB 03 22 00 09 00 00 00 00
  $  REQ004:7A1 03 22 00 10 00 00 00 00       $  ANS004:7BB 03 22 00 10 00 00 00 00
  $  REQ005:7A1 03 22 00 11 00 00 00 00       $  ANS005:7BB 03 22 00 11 00 00 00 00
  $  REQ006:7A1 03 22 00 12 00 00 00 00       $  ANS006:7BB 03 22 00 12 00 00 00 00
  $  REQ007:7A1 03 22 00 13 00 00 00 00       $  ANS007:7BB 03 22 00 13 00 00 00 00
  $  REQ008:7A1 03 22 00 14 00 00 00 00       $  ANS008:7BB 03 22 00 14 00 00 00 00
  $  REQ009:7A1 03 22 00 15 00 00 00 00       $  ANS009:7BB 03 22 00 15 00 00 00 00

  $  000.压缩机控制状态                         $    $               $    $  ANS000.BYTE004  $  switxh(x1)0x00: y=@003e;0x01: y=@004a;default: y=@0002;
  $  001.压缩机实际状态                         $    $               $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@003e;0x01: y=@004a;default: y=@0002;
  $  002.压缩机目标转速                         $    $  rpm          $    $  ANS002.BYTE004  $  y=(x1<<8)+x2;
  $  003.压缩机实际转速                         $    $  rpm          $    $  ANS003.BYTE004  $  y=(x1<<8)+x2;
  $  004.总线电压                               $    $  V            $    $  ANS004.BYTE004  $  y=(x1<<8)+x2;
  $  005.总线电流                               $    $  A            $    $  ANS005.BYTE004  $  y=x1*0.125;
  $  006.压缩机当前功率                         $    $  W            $    $  ANS006.BYTE004  $  y=(x1<<8)+x2;
  $  007.IPM/IGBT(绝缘栅双极型晶体管)温度       $    $  degree C     $    $  ANS007.BYTE004  $  y=x1-100;
  $  008.压缩机壳体温度                         $    $  degree C     $    $  ANS008.BYTE004  $  y=x1-100;
  $  009.本次上电压缩机故障重启次数             $    $               $    $  ANS009.BYTE004  $  y=x1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A1 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
