
    车型ID：7309

    模拟：协议模拟-->7309

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7EB

进入命令:

  $~  REQ000:7E3 02 10 01 00 00 00 00 00       $~  ANS000:7EB 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E3 02 3E 00 00 00 00 00 00       $!  ANS000:7EB 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E3 03 19 02 09 00 00 00 00       $#  ANS000:7EB 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/73090000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E3 04 14 FF FF FF 00 00 00       $$  ANS000:7EB 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E3 03 22 F1 87 00 00 00 00       $%  ANS000:7EB 03 22 F1 87 00 00 00 00
  $%  REQ001:7E3 03 22 F1 97 00 00 00 00       $%  ANS001:7EB 03 22 F1 97 00 00 00 00
  $%  REQ002:7E3 03 22 F1 8A 00 00 00 00       $%  ANS002:7EB 03 22 F1 8A 00 00 00 00
  $%  REQ003:7E3 03 22 F1 89 00 00 00 00       $%  ANS003:7EB 03 22 F1 89 00 00 00 00
  $%  REQ004:7E3 03 22 F1 79 00 00 00 00       $%  ANS004:7EB 03 22 F1 79 00 00 00 00
  $%  REQ005:7E3 03 22 F1 99 00 00 00 00       $%  ANS005:7EB 03 22 F1 99 00 00 00 00

  $%  000:零件号:              $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  001:系统名称:            $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  002:供应商代码:          $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:软件版本(OEM):       $%    $%  ANS003.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4)&0x0f,(x1&0x0F),x2);
  $%  004:硬件版本(OEM):       $%    $%  ANS004.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4)&0x0f,(x1&0x0F),x2);
  $%  005:软件发布日期:        $%    $%  ANS005.BYTE004  $%  HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E3 03 22 20 01 00 00 00 00       $  ANS000:7EB 03 22 20 01 00 00 00 00
  $  REQ001:7E3 03 22 20 02 00 00 00 00       $  ANS001:7EB 03 22 20 02 00 00 00 00
  $  REQ002:7E3 03 22 20 03 00 00 00 00       $  ANS002:7EB 03 22 20 03 00 00 00 00
  $  REQ003:7E3 03 22 20 04 00 00 00 00       $  ANS003:7EB 03 22 20 04 00 00 00 00
  $  REQ004:7E3 03 22 20 05 00 00 00 00       $  ANS004:7EB 03 22 20 05 00 00 00 00
  $  REQ005:7E3 03 22 20 06 00 00 00 00       $  ANS005:7EB 03 22 20 06 00 00 00 00
  $  REQ006:7E3 03 22 20 07 00 00 00 00       $  ANS006:7EB 03 22 20 07 00 00 00 00
  $  REQ007:7E3 03 22 20 08 00 00 00 00       $  ANS007:7EB 03 22 20 08 00 00 00 00
  $  REQ008:7E3 03 22 20 09 00 00 00 00       $  ANS008:7EB 03 22 20 09 00 00 00 00

  $  000.用户对手柄的操作信息                                             $    $  V     $    $  ANS000.BYTE004  $  if(x==0x00)y=@00bc;else if(x==0x01)y=@00bd;else if(x==0x02)y=@00be;else if(x==0x03)y=@00bf;else if(x==0x04)y=@00c0;else if(x==0x05)y=@00c1;else y=@00b0;
  $  001.位置传感器识别状态                                               $    $        $    $  ANS001.BYTE004  $  if(x==0x00)y=@00b5;else if(x==0x01)y=@00b6;else if(x==0x02)y=@00b7;else if(x==0x03)y=@00b8;else if(x==0x04)y=@00b9;else if(x==0x05)y=@00ba;else if(x==0x06)y=@00bb;else y=@00b0;
  $  002.用户操作的期望档位                                               $    $        $    $  ANS002.BYTE004  $  if(x==0x00)y=@00b1;else if(x==0x01)y=@00b2;else if(x==0x02)y=@00b3;else if(x==0x03)y=@00b4;else y=@00b0;
  $  003.TCU(自动变速箱电控单元)/VCU(整车控制单元) 反馈实际档位状态       $    $        $    $  ANS003.BYTE004  $  if(x==0x00)y=@00b1;else if(x==0x01)y=@00b2;else if(x==0x02)y=@00b3;else if(x==0x03)y=@00b4;else y=@00b0;
  $  004.车速信号                                                         $    $        $    $  ANS004.BYTE004  $  y=x1*256+x2;
  $  005.刹车信号状态                                                     $    $        $    $  ANS005.BYTE004  $  if(x==0x00)y=@0001;else if(x==0x01)y=@0000;else y=@00b0;
  $  006.P 档按键信号状态                                                 $    $        $    $  ANS006.BYTE004  $  if(x==0x00)y=@0001;else if(x==0x01)y=@0000;else y=@00b0;
  $  007.解锁按键信号状态                                                 $    $        $    $  ANS007.BYTE004  $  if(x==0x00)y=@0001;else if(x==0x01)y=@0000;else y=@00b0;
  $  008.ESL 档位指示灯状态                                               $    $        $    $  ANS008.BYTE004  $  if(x==0x00)y=@00b1;else if(x==0x01)y=@00b2;else if(x==0x02)y=@00b3;else if(x==0x03)y=@00b4;else y=@00b0;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E3 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
