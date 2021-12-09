
    车型ID：9f52

    模拟：协议模拟-->9f52

;******************************************************************************************************************************************************

    通讯线: $~02$~10$~500k$~180628F3,180428F3,181B28F3,1800D0F3,1801D0F3,1802D0F3,1803D0F3,1804D0F3,1805D0F3,1806D0F3,1807D0F3,1800E5F3

进入命令:

  $~  REQ000:0       $~  ANS000:180628F3

空闲命令:


退出命令:



;******************************************************************************************************************************************************

读数据流: 

  $)  00.BMS(电池管理系统)_2
  $  00.BMS(电池管理系统)_2
  $  REQ000:0       $  ANS000:180628F3

  $  000.电池单体N编号         $    $       $    $  ANS000.BYTE0-4  $  y=x;
  $  001.电池单体N电压         $    $       $    $  ANS000.BYTE0-2  $  if((x1*256+x2)==0xFFFE) y=@0018;else if((x1*256+x2)==0xFFFF) y=@0128;else y=(x1*256+x2)*0.001;
  $  002.电池单体N+1电压       $    $       $    $  ANS000.BYTE000  $  if((x1*256+x2)==0xFFFF) y=@0128;else y=(x1*256+x2)*0.001;
  $  003.电池单体N+2电压       $    $       $    $  ANS000.BYTE002  $  if((x1*256+x2)==0xFFFF) y=@0128;else y=(x1*256+x2)*0.001;

  $)  01.BMS(电池管理系统)_3
  $  01.BMS(电池管理系统)_3
  $  REQ000:0       $  ANS000:180628F3

  $  000.电池温度探针N编号         $    $       $    $  ANS000.BYTE0-4  $  y=x;
  $  001.电池温度探针N温度         $    $       $    $  ANS000.BYTE0-3  $  if(x==0xFE) y=@0018;else if(x==0xFF) y=@0128;else y=x-40;
  $  002.电池温度探针N+1温度       $    $       $    $  ANS000.BYTE0-2  $  if(x==0xFE) y=@0018;else if(x==0xFF) y=@0128;else y=x-40;
  $  003.电池温度探针N+2温度       $    $       $    $  ANS000.BYTE0-1  $  if(x==0xFE) y=@0018;else if(x==0xFF) y=@0128;else y=x-40;
  $  004.电池温度探针N+3温度       $    $       $    $  ANS000.BYTE000  $  if(x==0xFE) y=@0018;else if(x==0xFF) y=@0128;else y=x-40;
  $  005.电池温度探针N+4温度       $    $       $    $  ANS000.BYTE001  $  if(x==0xFE) y=@0018;else if(x==0xFF) y=@0128;else y=x-40;
  $  006.电池温度探针N+5温度       $    $       $    $  ANS000.BYTE002  $  if(x==0xFE) y=@0018;else if(x==0xFF) y=@0128;else y=x-40;
  $  007.电池温度探针N+6温度       $    $       $    $  ANS000.BYTE003  $  if(x==0xFE) y=@0018;else if(x==0xFF) y=@0128;else y=x-40;

  $)  02.BMS(电池管理系统)_5
  $  02.BMS(电池管理系统)_5
  $  REQ000:0       $  ANS000:180628F3

  $  000.电池电压均衡故障               $    $       $    $  ANS000.BYTE0-4  $  if((x&0x01)==0x00) y=@0017;else y=@0053;
  $  001.温度过高故障                   $    $       $    $  ANS000.BYTE0-4  $  if((x&0x02)==0x00) y=@0017;else y=@0053;
  $  002.预充失败                       $    $       $    $  ANS000.BYTE0-4  $  if((x&0x04)==0x00) y=@0017;else y=@0053;
  $  003.切断主负                       $    $       $    $  ANS000.BYTE0-4  $  if((x&0x08)==0x00) y=@0017;else y=@0053;
  $  004.总电流超限                     $    $       $    $  ANS000.BYTE0-4  $  if((x&0x10)==0x00) y=@0017;else y=@0053;
  $  005.平均电压超限                   $    $       $    $  ANS000.BYTE0-4  $  if((x&0x20)==0x00) y=@0017;else y=@0053;
  $  006.单节电池过压                   $    $       $    $  ANS000.BYTE0-4  $  if((x&0x40)==0x00) y=@0017;else y=@0053;
  $  007.单节电池欠压                   $    $       $    $  ANS000.BYTE0-4  $  if((x&0x80)==0x00) y=@0017;else y=@0053;
  $  008.容量低报警                     $    $       $    $  ANS000.BYTE0-3  $  if((x&0x01)==0x00) y=@0017;else y=@0053;
  $  009.下位机无响应报警               $    $       $    $  ANS000.BYTE0-3  $  if((x&0x02)==0x00) y=@0017;else y=@0053;
  $  010.绝缘故障                       $    $       $    $  ANS000.BYTE0-3  $  if((x&0x04)==0x00) y=@0017;else y=@0053;
  $  011.电池温度均衡故障               $    $       $    $  ANS000.BYTE0-3  $  if((x&0x08)==0x00) y=@0017;else y=@0053;
  $  012.SOC跳变故障                    $    $       $    $  ANS000.BYTE0-3  $  if((x&0x10)==0x00) y=@0017;else y=@0053;
  $  013.充电储能系统不匹配故障         $    $       $    $  ANS000.BYTE0-3  $  if((x&0x20)==0x00) y=@0017;else y=@0053;
  $  014.过充报警故障                   $    $       $    $  ANS000.BYTE0-3  $  if((x&0x40)==0x00) y=@0017;else y=@0053;
  $  015.SOC过高故障                    $    $       $    $  ANS000.BYTE0-3  $  if((x&0x80)==0x00) y=@0017;else y=@0053;
  $  016.实际容量                       $    $       $    $  ANS000.BYTE0-1  $  y=x;
  $  017.总电压过压                     $    $       $    $  ANS000.BYTE001  $  if((x&0x01)==0x00) y=@0017;else y=@0053;
  $  018.总电压欠压                     $    $       $    $  ANS000.BYTE001  $  if((x&0x02)==0x00) y=@0017;else y=@0053;
  $  019.电池单体一致性差报警           $    $       $    $  ANS000.BYTE001  $  if((x&0x04)==0x00) y=@0017;else y=@0053;
  $  020.MSD高压互锁故障                $    $       $    $  ANS000.BYTE001  $  if((x&0x08)==0x00) y=@0017;else y=@0053;
  $  021.直流输出口高压互锁故障         $    $       $    $  ANS000.BYTE001  $  if((x&0x10)==0x00) y=@0017;else y=@0053;
  $  022.VCU通信故障                    $    $       $    $  ANS000.BYTE001  $  if((x&0x20)==0x00) y=@0017;else y=@0053;
  $  023.充电机通信故障                 $    $       $    $  ANS000.BYTE001  $  if((x&0x40)==0x00) y=@0017;else y=@0053;
  $  024.温度过低故障                   $    $       $    $  ANS000.BYTE001  $  if((x&0x80)==0x00) y=@0017;else y=@0053;
  $  025.充电电流过大故障               $    $       $    $  ANS000.BYTE002  $  if((x&0x01)==0x00) y=@0017;else y=@0053;
  $  026.放电电流过大故障               $    $       $    $  ANS000.BYTE002  $  if((x&0x02)==0x00) y=@0017;else y=@0053;
  $  027.回馈电流过大故障               $    $       $    $  ANS000.BYTE002  $  if((x&0x04)==0x00) y=@0017;else y=@0053;
  $  028.高压主负接触器粘连故障         $    $       $    $  ANS000.BYTE003  $  if((x&0x01)==0x00) y=@0017;else y=@0053;
  $  029.高压预充接触器粘连故障         $    $       $    $  ANS000.BYTE003  $  if((x&0x02)==0x00) y=@0017;else y=@0053;
  $  030.高压主正接触器粘连故障         $    $       $    $  ANS000.BYTE003  $  if((x&0x04)==0x00) y=@0017;else y=@0053;
  $  031.电池包加热继电器粘连故障       $    $       $    $  ANS000.BYTE003  $  if((x&0x08)==0x00) y=@0017;else y=@0053;

  $)  03.BMS(电池管理系统)_11
  $  03.BMS(电池管理系统)_11
  $  REQ000:0       $  ANS000:180628F3

  $  000.动力电池组管理系统life           $    $        $    $  ANS000.BYTE0-4  $  y=x;
  $  001.电池组充放电总电流               $    $        $    $  ANS000.BYTE0-2  $  if((x1*256+x2)==0xFFFE) y=@0018;else if((x1*256+x2)==0xFFFF) y=@0128;else y=((x1*256+x2)-10000)*0.1;
  $  002.电池组总电压                     $    $        $    $  ANS000.BYTE000  $  if((x1*256+x2)==0xFFFE) y=@0018;else if((x1*256+x2)==0xFFFF) y=@0128;else y=(x1*256+x2)*0.1;
  $  003.动力电池组状态                   $    $        $    $  ANS000.BYTE001  $  if((x&0x03)==0x00) y=@014f;else if((x&0x03)==0x01) y=@0150;else if((x&0x03)==0x02) y=@0151;else y=@0003;
  $  004.外接充电允许                     $    $        $    $  ANS000.BYTE001  $  if((x&0x04)==0x00) y=@0099;else y=@0144;
  $  005.电池故障等级                     $    $        $    $  ANS000.BYTE001  $  if((x&0x18)==0x00) y=@0035;else if((x&0x18)==0x08) y=@0141;else if((x&0x18)==0x10) y=@0142;else y=@0143;
  $  006.绝缘等级                         $    $        $    $  ANS000.BYTE001  $  if((x&0x30)==0x00) y=@0035;else if((x&0x30)==0x10) y=@0141;else if((x&0x30)==0x20) y=@0142;else y=@0143;
  $  007.请求允许吸合高压主负接触器       $    $        $    $  ANS000.BYTE001  $  if((x&0x80)==0x00) y=@013f;else y=@0140;
  $  008.SOC(荷电状态)                    $    $  %     $    $  ANS000.BYTE002  $  y=x*0.4;
  $  009.电池组允许使用最低SOC            $    $  %     $    $  ANS000.BYTE003  $  y=x*0.4;

  $)  04.BMS(电池管理系统)_12
  $  04.BMS(电池管理系统)_12
  $  REQ000:0       $  ANS000:180628F3

  $  000.电池组当前最大允许充电功率       $    $       $    $  ANS000.BYTE0-3  $  y=((x1*256+x2)-32000)*0.01;
  $  001.电池组当前最大允许放电功率       $    $       $    $  ANS000.BYTE0-1  $  y=((x1*256+x2)-32000)*0.01;
  $  002.电池组当前最大允许充电电流       $    $       $    $  ANS000.BYTE001  $  y=((x1*256+x2)-5000)*0.1;
  $  003.电池组当前最大允许放电电流       $    $       $    $  ANS000.BYTE003  $  y=((x1*256+x2)-5000)*0.1;

  $)  05.BMS(电池管理系统)_13
  $  05.BMS(电池管理系统)_13
  $  REQ000:0       $  ANS000:180628F3

  $  000.电池组当前最大允许充电电压       $    $       $    $  ANS000.BYTE0-3  $  y=(x1*256+x2)*0.1;
  $  001.电池组平均温度                   $    $       $    $  ANS000.BYTE0-2  $  y=x-40;
  $  002.电池组允许最高温度               $    $       $    $  ANS000.BYTE0-1  $  y=x-40;
  $  003.电池组允许最低温度               $    $       $    $  ANS000.BYTE000  $  y=x-40;
  $  004.电池组最高温度                   $    $       $    $  ANS000.BYTE001  $  y=x-40;
  $  005.母线外电压                       $    $       $    $  ANS000.BYTE003  $  y=(x1*256+x2)*0.1;

  $)  06.BMS(电池管理系统)_14
  $  06.BMS(电池管理系统)_14
  $  REQ000:0       $  ANS000:180628F3

  $  000.最高单体电压             $    $  V          $    $  ANS000.BYTE0-3  $  if((x1*256+x2)==0xFFFE) y=@0018;else y=(x1*256+x2)*0.001;
  $  001.最低单体电压             $    $  V          $    $  ANS000.BYTE0-1  $  if((x1*256+x2)==0xFFFE) y=@0018;else y=(x1*256+x2)*0.001;
  $  002.单体最高温度             $    $  摄氏度     $    $  ANS000.BYTE000  $  y=x-40;
  $  003.单体最低温度             $    $  摄氏度     $    $  ANS000.BYTE001  $  y=x-40;
  $  004.高压主负接触器状态       $    $             $    $  ANS000.BYTE002  $  if((x&0x01)==0x00) y=@0147;else y=@0148;
  $  005.高压主正接触器状态       $    $             $    $  ANS000.BYTE002  $  if((x&0x02)==0x00) y=@0145;else y=@0146;
  $  006.动力电池类型             $    $             $    $  ANS000.BYTE002  $  if((x&0x0C)==0x00) y=@014c;else if((x&0x0C)==0x04) y=@014d;else if((x&0x0C)==0x08) y=@014e;else y=@0076;
  $  007.慢充电子锁状态           $    $             $    $  ANS000.BYTE002  $  if((x&0x10)==0x00) y=@014a;else y=@014b;
  $  008.高压预充接触器状态       $    $             $    $  ANS000.BYTE002  $  if((x&0x20)==0x00) y=@00d0;else y=@0149;
  $  009.预充电状态               $    $             $    $  ANS000.BYTE002  $  if((x&0x40)==0x00) y=@0030;else y=@0082;
  $  010.BMS弱电自检完成          $    $             $    $  ANS000.BYTE002  $  if((x&0x80)==0x00) y=@0030;else y=@002f;
  $  011.SOH值                    $    $  %          $    $  ANS000.BYTE003  $  y=x;

  $)  07.BMS(电池管理系统)_15
  $  07.BMS(电池管理系统)_15
  $  REQ000:0       $  ANS000:180628F3

  $  000.剩余能量             $    $  kwh      $    $  ANS000.BYTE0-3  $  y=(x1*256+x2)*0.1;
  $  001.绝缘电阻             $    $  千欧     $    $  ANS000.BYTE0-1  $  y=(x1*256+x2);
  $  002.电池均衡状态         $    $           $    $  ANS000.BYTE000  $  if((x&0x01)==0x00) y=@0137;else y=@0138;
  $  003.停机状态             $    $           $    $  ANS000.BYTE000  $  if((x&0x02)==0x00) y=@0135;else y=@0136;
  $  004.慢充充电状态         $    $           $    $  ANS000.BYTE000  $  if((x&0x0C)==0x00) y=@00cd;else if((x&0x0C)==0x04) y=@00ce;else if((x&0x0C)==0x08) y=@0085;else y=@013c;
  $  005.快充充电状态         $    $           $    $  ANS000.BYTE000  $  if((x&0x30)==0x00) y=@00cd;else if((x&0x30)==0x10) y=@00ce;else if((x&0x30)==0x20) y=@0085;else y=@013c;
  $  006.加热继电器状态       $    $           $    $  ANS000.BYTE000  $  if((x&0x40)==0x00) y=@00d5;else y=@013b;
  $  007.动力电池切断         $    $           $    $  ANS000.BYTE000  $  if((x&0x80)==0x00) y=@0139;else y=@013a;
  $  008.BMS硬件版本号        $    $           $    $  ANS000.BYTE002  $  y=x;
  $  009.BMS软件版本号        $    $           $    $  ANS000.BYTE003  $  y=x;

  $)  08.BMS(电池管理系统)_16
  $  08.BMS(电池管理系统)_16
  $  REQ000:0       $  ANS000:180628F3

  $  000.充电机输出电压         $    $       $    $  ANS000.BYTE0-3  $  y=(x1*256+x2)*0.1;
  $  001.充电机输出电流         $    $       $    $  ANS000.BYTE0-1  $  y=((x1*256+x2)-5000)*0.1;
  $  002.当次累计充电时间       $    $       $    $  ANS000.BYTE001  $  y=(x1*256+x2);
  $  003.当次已充电能量         $    $       $    $  ANS000.BYTE003  $  y=(x1*256+x2)*0.1;

  $)  09.BMS(电池管理系统)_17
  $  09.BMS(电池管理系统)_17
  $  REQ000:0       $  ANS000:180628F3

  $  000.可充电储能子系统个数         $    $       $    $  ANS000.BYTE0-4  $  if(x==0xFF) y=@0128;else y=x;
  $  001.可充电储能系统编码长度       $    $       $    $  ANS000.BYTE0-3  $  y=x;
  $  002.最高电压电池子系统号         $    $       $    $  ANS000.BYTE0-2  $  if(x==0xFE) y=@0018;else if(x==0xFF) y=@0128;else y=x;
  $  003.最高电压电池单体代号         $    $       $    $  ANS000.BYTE0-1  $  if(x==0xFE) y=@0018;else if(x==0xFF) y=@0128;else y=x;
  $  004.最低电压电池子系统号         $    $       $    $  ANS000.BYTE000  $  if(x==0xFE) y=@0018;else if(x==0xFF) y=@0128;else y=x;
  $  005.最低电压电池单体代号         $    $       $    $  ANS000.BYTE001  $  if(x==0xFE) y=@0018;else if(x==0xFF) y=@0128;else y=x;
  $  006.最高温度子系统号             $    $       $    $  ANS000.BYTE002  $  if(x==0xFE) y=@0018;else if(x==0xFF) y=@0128;else y=x;
  $  007.最高温度探针单体代号         $    $       $    $  ANS000.BYTE003  $  if(x==0xFE) y=@0018;else if(x==0xFF) y=@0128;else y=x;

  $)  10.BMS(电池管理系统)_18
  $  10.BMS(电池管理系统)_18
  $  REQ000:0       $  ANS000:180628F3

  $  000.最低温度子系统号               $    $       $    $  ANS000.BYTE0-4  $  if(x==0xFE) y=@0018;else if(x==0xFF) y=@0128;else y=x;
  $  001.最低温度探针子系统代号         $    $       $    $  ANS000.BYTE0-3  $  if(x==0xFE) y=@0018;else if(x==0xFF) y=@0128;else y=x;
  $  002.可充电储能装置故障总数N1       $    $       $    $  ANS000.BYTE0-2  $  if(x==0xFE) y=@0018;else if(x==0xFF) y=@0128;else y=x;
  $  003.可充电储能子系统号             $    $       $    $  ANS000.BYTE0-1  $  if(x==0xFE) y=@0018;else if(x==0xFF) y=@0128;else y=x;
  $  004.可充电储能温度探针个数         $    $       $    $  ANS000.BYTE001  $  if((x1*256+x2)==0xFFFE) y=@0018;else if((x1*256+x2)==0xFFFF) y=@0128;else y=(x1*256+x2);
  $  005.电池单体总数                   $    $       $    $  ANS000.BYTE003  $  if((x1*256+x2)==0xFFFE) y=@0018;else if((x1*256+x2)==0xFFFF) y=@0128;else y=(x1*256+x2);

  $)  11.BMS(电池管理系统)_19
  $  11.BMS(电池管理系统)_19
  $  REQ000:0       $  ANS000:180628F3

  $  000.电池管理系统life       $    $       $    $  ANS000.BYTE0-4  $  y=x;
  $  001.最大允许充电电压       $    $       $    $  ANS000.BYTE0-2  $  y=(x1*256+x2)*0.1;
  $  002.最大允许充电电流       $    $       $    $  ANS000.BYTE000  $  y=((x1*256+x2)-5000)*0.1;
  $  003.使能控制位             $    $       $    $  ANS000.BYTE001  $  if((x&0x01)==0x00) y=@013d;else y=@00d3;
  $  004.充电/加热模式位        $    $       $    $  ANS000.BYTE001  $  if((x&0x02)==0x00) y=@0114;else y=@0092;
  $  005.充电完成标志位         $    $       $    $  ANS000.BYTE001  $  if((x&0x04)==0x00) y=@013e;else y=@0087;

;******************************************************************************************************************************************************

