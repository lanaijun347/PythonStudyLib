
    车型ID：9f55

    模拟：协议模拟-->9f55

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~250K$~18AFFFB0,18BFFFB0

进入命令:

  $~  REQ000:0       $~  ANS000:18AFFFB0

空闲命令:


退出命令:



;******************************************************************************************************************************************************

读数据流: 

  $)  00.VCU_RT1
  $  00.VCU_RT1
  $  REQ000:010220002400001c57ffd80       $  ANS000:18AFFFB010220002400001c57ffd80

  $  000.车辆状态           $    $           $    $  ANS000.BYTE001  $  if(x==0x01) y=@00a0;else if(x==0x02) y=@00a1;else if(x==0x03) y=@00a2;else y=@0006;
  $  001.充电状态           $    $           $    $  ANS000.BYTE002  $  if(x==0x01) y=@00a6;else if(x==0x02) y=@00a7;else if(x==0x03) y=@008a;else if(x==0x04) y=@0087;else y=@0006;
  $  002.运行模式           $    $           $    $  ANS000.BYTE003  $  if(x==0x01) y=@00a3;else if(x==0x02) y=@00a4;else if(x==0x03) y=@00a5;else y=@0006;
  $  003.车速               $    $  km/h     $    $  ANS000.BYTE004  $  y=(x1*256+x2)*220*1.0/65535;
  $  004.加速踏板行程       $    $  %        $    $  ANS000.BYTE006  $  y=x*100*1.0/255;

  $)  01.VCU_RT2
  $  01.VCU_RT2
  $  REQ000:010220002400001c5fffd80       $  ANS000:18AFFFB010220002400001c5fffd80

  $  000.总电压              $    $  V     $    $  ANS000.BYTE001  $  y=(x1*256+x2)*1000*1.0/65535;
  $  001.总电流              $    $  A     $    $  ANS000.BYTE003  $  y=(x1*256+x2)*2000*1.0/65535-1000;
  $  002.SOC(荷电状态)       $    $  %     $    $  ANS000.BYTE005  $  y=x*100*1.0/255;
  $  003.DC-DC状态           $    $        $    $  ANS000.BYTE006  $  if(x==0x01) y=@002d;else if(x==0x02) y=@001f;else y=@0006;
  $  004.挡位                $    $        $    $  ANS000.BYTE007  $  if((x&0x0F)==0x00) y=@009f;else if((x&0x0F)==0x0D) y=@009e;else if((x&0x0F)==0x0E) y=@0057;else if((x&0x0F)==0x0F) y=@0056;else y=@0006;
  $  005.制动状态            $    $        $    $  ANS000.BYTE007  $  if((x&0x10)==0x10) y=@00aa;else y=@00ab;
  $  006.驱动力状态          $    $        $    $  ANS000.BYTE007  $  if((x&0x20)==0x20) y=@00a8;else y=@00a9;

;******************************************************************************************************************************************************

