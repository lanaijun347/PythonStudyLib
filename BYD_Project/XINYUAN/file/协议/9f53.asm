
    车型ID：9f53

    模拟：协议模拟-->9f53

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~250K$~1801A6A8,1802A8A6

进入命令:

  $~  REQ000:0       $~  ANS000:1801A6A8

空闲命令:


退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:0       $#  ANS000:1801A6A8


  码库:

  $*$*DTC/ffffffff_1BYTE


;******************************************************************************************************************************************************

读数据流: 

  $)  00.VCU to MCU_1
  $  00.VCU to MCU_1
  $  REQ000:010220002400001c00d3540       $  ANS000:1801A6A810220002400001c00d3540

  $  000.DCDC输出电压                $    $  V     $    $  ANS000.BYTE002  $  y=(x1*256+x2)*0.1;
  $  001.DCDC输出电流                $    $  A     $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.1;
  $  002.控制冷却水泵的风扇          $    $        $    $  ANS000.BYTE005  $  if((x&0x40)==0x40) y=@00af;else y=@0015;
  $  003.DCDC控制风扇/水泵工作       $    $        $    $  ANS000.BYTE005  $  if((x&0x10)==0x10) y=@00af;else y=@0015;
  $  004.DCDC 初始化完成             $    $        $    $  ANS000.BYTE005  $  if((x&0x01)==0x01) y=@00ad;else y=@00ae;

  $)  01.VCU to MCU_2
  $  01.VCU to MCU_2
  $  REQ000:010220002400001c0154530       $  ANS000:1801A6A810220002400001c0154530

  $  000.保护指令（一旦确认保护DC停止工作，必须重新启动才能重新工作）       $    $  rpm     $    $  ANS000.BYTE001  $  if((x&0x0c)==0x00) y=@0042;else if((x&0x0c)==0x04) y=@00ac;else if((x&0x0c)==0x08) y=@0042;else y=@0042;
  $  001.控制指令                                                           $    $          $    $  ANS000.BYTE001  $  if((x&0x03)==0x00) y=@0042;else if((x&0x03)==0x01) y=@00b4;else if((x&0x03)==0x02) y=@00ba;else y=@0042;

;******************************************************************************************************************************************************

