
    车型ID：06a6

    模拟：协议模拟-->06a6

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7EA

进入命令:

  $~  REQ000:7E2 02 10 01 00 00 00 00 00       $~  ANS000:7EA 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E2 02 3E 00 00 00 00 00 00       $!  ANS000:7EA 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7E2 03 19 02 09 00 00 00 00       $#  ANS000:7EA 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/03000000


  $#  01.读故障码库
  $#  REQ000:7E2 02 19 0A 00 00 00 00 00       $#  ANS000:7EA 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/03000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="0"/>
   </FUNCTION>
  <FUNCTION type="0" num="1">
     <param type="string" value="0"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E2 04 14 FF FF FF 00 00 00       $$  ANS000:7EA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E2 03 22 F1 12 00 00 00 00       $%  ANS000:7EA 03 22 F1 12 00 00 00 00
  $%  REQ001:7E2 03 22 F1 87 00 00 00 00       $%  ANS001:7EA 03 22 F1 87 00 00 00 00
  $%  REQ002:7E2 03 22 F1 8A 00 00 00 00       $%  ANS002:7EA 03 22 F1 8A 00 00 00 00
  $%  REQ003:7E2 03 22 F1 8C 00 00 00 00       $%  ANS003:7EA 03 22 F1 8C 00 00 00 00
  $%  REQ004:7E2 03 22 F1 90 00 00 00 00       $%  ANS004:7EA 03 22 F1 90 00 00 00 00
  $%  REQ005:7E2 03 22 F1 93 00 00 00 00       $%  ANS005:7EA 03 22 F1 93 00 00 00 00
  $%  REQ006:7E2 03 22 F1 95 00 00 00 00       $%  ANS006:7EA 03 22 F1 95 00 00 00 00
  $%  REQ007:7E2 03 22 F1 9D 00 00 00 00       $%  ANS007:7EA 03 22 F1 9D 00 00 00 00
  $%  REQ008:7E2 03 22 02 00 00 00 00 00       $%  ANS008:7EA 03 22 02 00 00 00 00 00
  $%  REQ009:7E2 03 22 02 01 00 00 00 00       $%  ANS009:7EA 03 22 02 01 00 00 00 00

  $%  000:车辆名称:                          $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                            $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:供应商代码:                        $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:ECU(电子控制器)序列号:             $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  004:车辆识别号（VIN码）:               $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  005:ECU(电子控制器)硬件版本号:         $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  006:ECU(电子控制器)软件版本号:         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:ECU(电子控制器)安装日期:           $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  008:ECU(电子控制器)成功刷写次数:       $%    $%  ANS008.BYTE004  $%  HEX(x1);
  $%  009:ECU(电子控制器)尝试刷写次数:       $%    $%  ANS009.BYTE004  $%  HEX(x1);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E2 03 22 60 0F 00 00 00 00       $  ANS000:7EA 03 22 60 0F 00 00 00 00
  $  REQ001:7E2 03 22 60 11 00 00 00 00       $  ANS001:7EA 03 22 60 11 00 00 00 00

  $  000.遥控钥匙个数           $    $  /     $    $  ANS000.BYTE004  $  y=x;
  $  001.最近一次闭锁源         $    $  /     $    $  ANS001.BYTE004  $  switxh(x) 0x00:y=@00d1;0x01:y=@0003;0x02:y=@0004;0x03:y=@0005;0x04:y=@0006;0x05:y=@0007;default:y=@0230;
  $  002.倒数第二次闭锁源       $    $  /     $    $  ANS001.BYTE005  $  switxh(x) 0x00:y=@00d1;0x01:y=@0003;0x02:y=@0004;0x03:y=@0005;0x04:y=@0006;0x05:y=@0007;default:y=@0230;
  $  003.倒数第三次闭锁源       $    $  /     $    $  ANS001.BYTE006  $  switxh(x) 0x00:y=@00d1;0x01:y=@0003;0x02:y=@0004;0x03:y=@0005;0x04:y=@0006;0x05:y=@0007;default:y=@0230;
  $  004.倒数第四次闭锁源       $    $  /     $    $  ANS001.BYTE007  $  switxh(x) 0x00:y=@00d1;0x01:y=@0003;0x02:y=@0004;0x03:y=@0005;0x04:y=@0006;0x05:y=@0007;default:y=@0230;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E2 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
