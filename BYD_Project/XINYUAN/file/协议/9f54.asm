
    车型ID：9f54

    模拟：协议模拟-->9f54

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~250K$~800A6A9,18F0B1A6,18F1B1A6,18F2B1A6,18F3B1A6

进入命令:

  $~  REQ000:0       $~  ANS000:800A6A9

空闲命令:


退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:0       $#  ANS000:800A6A9


  码库:

  $*$*DTC/ffffffff_1BYTE


;******************************************************************************************************************************************************

读数据流: 

  $)  00.INST_1(仪表数据1)
  $  00.INST_1(仪表数据1)
  $  REQ000:010220002400001c7858d30       $  ANS000:800A6A910220002400001c7858d30

  $  000.电机转速             $    $  rpm     $    $  ANS000.BYTE001  $  y=(x1*256+x2)*12000*1.0/65535;
  $  001.电机控制器温度       $    $  °C     $    $  ANS000.BYTE003  $  y=(x1*256+x2)*400*1.0/65535-100;
  $  002.电机温度             $    $  °C     $    $  ANS000.BYTE005  $  y=(x1*256+x2)*400*1.0/65535-100;
  $  003.充电枪连接状态       $    $          $    $  ANS000.BYTE007  $  if((x&0x01)==0x01) y=@00af;else y=@0015;
  $  004.充电状态             $    $          $    $  ANS000.BYTE007  $  if((x&0x02)==0x02) y=@00af;else y=@0015;
  $  005.运行准备就绪         $    $          $    $  ANS000.BYTE007  $  if((x&0x04)==0x04) y=@00af;else y=@0015;

  $)  01.INST_2(仪表数据2)
  $  01.INST_2(仪表数据2)
  $  REQ000:010220002400001c78d8d30       $  ANS000:800A6A910220002400001c78d8d30

  $  000.电池电压            $    $  V      $    $  ANS000.BYTE001  $  y=(x1*256+x2)*105*1.0/65535;
  $  001.SOC(荷电状态)       $    $  %      $    $  ANS000.BYTE003  $  y=x*100*1.0/255;
  $  002.剩余里程            $    $  km     $    $  ANS000.BYTE004  $  y=(x1*256+x2)*1000*1.0/65535;
  $  003.电池电流            $    $  A      $    $  ANS000.BYTE006  $  y=(x1*256+x2)*1200*1.0/65535-600;
  $  004.档位                $    $         $    $  ANS000.BYTE008  $  if((x&0x0F)==0x00) y=@009d;else if((x&0x0F)==0x01) y=@0057;else if((x&0x0F)==0x02) y=@009e;else if((x&0x0F)==0x03) y=@009f;else if((x&0x0F)==0x04) y=@0056;else y=@0006;

  $)  02.INST_3(仪表数据3)
  $  02.INST_3(仪表数据3)
  $  REQ000:010220002400001c7958d30       $  ANS000:800A6A910220002400001c7958d30

  $  000.A       $    $       $    $  ANS000.BYTE001  $  y=x;
  $  001.B       $    $       $    $  ANS000.BYTE002  $  y=x;
  $  002.C       $    $       $    $  ANS000.BYTE003  $  y=x;
  $  003.D       $    $       $    $  ANS000.BYTE004  $  y=x;
  $  004.E       $    $       $    $  ANS000.BYTE005  $  y=x;
  $  005.F       $    $       $    $  ANS000.BYTE006  $  y=x;
  $  006.G       $    $       $    $  ANS000.BYTE007  $  y=x;
  $  007.H       $    $       $    $  ANS000.BYTE008  $  y=x;

  $)  03.INST_4(仪表数据4)
  $  03.INST_4(仪表数据4)
  $  REQ000:010220002400001c79d8d30       $  ANS000:800A6A910220002400001c79d8d30

  $  000.车速               $    $  km/h     $    $  ANS000.BYTE001  $  y=x;
  $  001.回馈功率小计       $    $  kwh      $    $  ANS000.BYTE002  $  y=(x1*256+x2)*0.1;

;******************************************************************************************************************************************************

