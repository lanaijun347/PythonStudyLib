
    车型ID：9f5a

    模拟：协议模拟-->9f5a

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~250K$~18FF50E5

进入命令:

  $~  REQ000:0       $~  ANS000:18FF50E5

空闲命令:


退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:0       $#  ANS000:18FF50E5


  码库:

  $*$*DTC/ffffffff_1BYTE


;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:0       $  ANS000:18FF50E5

  $  000.输出电压                $    $  V     $    $  ANS000.BYTE0-4  $  y=(x1*256+x2)*0.1;
  $  001.输出电流                $    $  A     $    $  ANS000.BYTE0-2  $  y=(x1*256+x2)*0.1;
  $  002.充电机工作状态          $    $  A     $    $  ANS000.BYTE001  $  if((x&0x07)==0x00) y=@004d;else if((x&0x07)==0x01) y=@004e;else if((x&0x07)==0x02) y=@004f;else if((x&0x07)==0x03) y=@0025;else y=@0006;
  $  003.S2 开关控制位状态       $    $        $    $  ANS000.BYTE001  $  if((x&0x10)==0x10) y=@001e;else y=@001f;
  $  004.电子锁状态              $    $        $    $  ANS000.BYTE001  $  if((x&0x20)==0x20) y=@002a;else y=@002b;
  $  005.过温警告状态            $    $        $    $  ANS000.BYTE001  $  if((x&0x40)==0x40) y=@0110;else y=@0111;
  $  006.风扇状态                $    $        $    $  ANS000.BYTE001  $  if((x&0x80)==0x80) y=@002d;else y=@00e5;

;******************************************************************************************************************************************************

