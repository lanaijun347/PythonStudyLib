
    车型ID：9f77

    模拟：协议模拟-->9f77

;******************************************************************************************************************************************************

    通讯线: $~02$~10$~500k$~1801D0D6,180228D0,180328D0,1800D0DA,C00D0EF

进入命令:

  $~  REQ000:0       $~  ANS000:1801D0D6

空闲命令:


退出命令:



;******************************************************************************************************************************************************

读数据流: 

  $)  00.GW1
  $  00.GW1
  $  REQ000:010220002400001c00e86b0       $  ANS000:1801D0D610220002400001c00e86b0

  $  000.车速       $    $       $    $  ANS000.BYTE002  $  if((x1*256+x2)==0xFFFE) y=@0018;else if((x1*256+x2)==0xFFFF) y=@0128;else y=(x1*256+x2)*0.1;

  $)  01.VCU_1
  $  01.VCU_1
  $  REQ000:010220002400001c0114680       $  ANS000:1801D0D610220002400001c0114680

  $  000.整车控制器life       $    $       $    $  ANS000.BYTE001  $  y=x;
  $  001.整车工作状态         $    $       $    $  ANS000.BYTE002  $  if((x&0x07)==0x00) y=@0074;else if((x&0x07)==0x01) y=@010c;else if((x&0x07)==0x07) y=@0003;else y=@010d;

  $)  02.VCU_2
  $  02.VCU_2
  $  REQ000:010220002400001c0194680       $  ANS000:1801D0D610220002400001c0194680

  $  000.档位信号       $    $       $    $  ANS000.BYTE002  $  if((x&0x03)==0x00) y=@009f;else if((x&0x03)==0x01) y=@0057;else if((x&0x03)==0x02) y=@009e;else y=@0056;

  $)  03.PGS_1
  $  03.PGS_1
  $  REQ000:010220002400001c00686d0       $  ANS000:1801D0D610220002400001c00686d0

  $  000.P档控制器life         $    $       $    $  ANS000.BYTE001  $  y=x;
  $  001.PGS自检状态           $    $       $    $  ANS000.BYTE002  $  if((x&0x01)==0x00) y=@0044;else y=@0043;
  $  002.PGS工作状态           $    $       $    $  ANS000.BYTE002  $  if((x&0x0e)==0x00) y=@00f8;else if((x&0x0e)==0x02) y=@00fc;else if((x&0x0e)==0x04) y=@00fd;else if((x&0x0e)==0x06) y=@00fe;else if((x&0x0e)==0x08) y=@00ff;else if((x&0x0e)==0x0a) y=@0100;else if((x&0x0e)==0x0c) y=@0101;else if((x&0x0e)==0x0e) y=@0042;else y=@0006;
  $  003.PGS故障等级           $    $       $    $  ANS000.BYTE002  $  if((x&0x30)==0x00) y=@0035;else if((x&0x30)==0x10) y=@0131;else if((x&0x30)==0x20) y=@0132;else y=@0133;
  $  004.CAN通信故障           $    $       $    $  ANS000.BYTE003  $  if((x&0x01)==0x00) y=@0035;else y=@002c;
  $  005.控制器故障            $    $       $    $  ANS000.BYTE003  $  if((x&0x02)==0x00) y=@0035;else y=@002c;
  $  006.小电机故障            $    $       $    $  ANS000.BYTE003  $  if((x&0x04)==0x00) y=@0035;else y=@002c;
  $  007.VCU通信超时故障       $    $       $    $  ANS000.BYTE003  $  if((x&0x08)==0x00) y=@0035;else y=@002c;
  $  008.软件版本号            $    $       $    $  ANS000.BYTE007  $  y=x;
  $  009.硬件版本号            $    $       $    $  ANS000.BYTE008  $  y=x;

  $)  04.MCU_2
  $  04.MCU_2
  $  REQ000:01022000240000160068778       $  ANS000:1801D0D61022000240000160068778

  $  000.电机当前转速       $    $  r/min     $    $  ANS000.BYTE004  $  if((x1*256+x2)==0xFFFE) y=@0018;else if((x1*256+x2)==0xFFFF) y=@0128;else y=((x1*256+x2)-20000);

;******************************************************************************************************************************************************

