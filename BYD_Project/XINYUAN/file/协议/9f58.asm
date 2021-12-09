
    车型ID：9f58

    模拟：协议模拟-->9f58

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~250K$~18FFB3F3,18FFB4F3,18FFB5F3,18FFB6F3,18FFB2F3,CFF32F3,CFF33F3,CFF35F3,18FF37F3,18FF38F3,18FFB1F3

进入命令:

  $~  REQ000:0       $~  ANS000:18FFB3F3

空闲命令:


退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读取电池系统故障码
  $#  REQ000:0       $#  ANS000:18FFB3F3


  码库:

  $*$*DTC/ffffffff_1BYTE


  $#  01.读取硬件故障码
  $#  REQ000:0       $#  ANS000:18FFB3F3


  码库:

  $*$*DTC/ffffffff_1BYTE


;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:0       $%  ANS000:18FFB3F3

  $%  000:电池编码:                   $%    $%  ANS000.BYTE0-4  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27);
  $%  001:电池组的Pack串联组数:       $%    $%  ANS000.BYTE0-4  $%  y=x;
  $%  002:电池组的Pack并联组数:       $%    $%  ANS000.BYTE0-3  $%  y=x;

;******************************************************************************************************************************************************

读数据流: 

  $)  00.电池管理系统的运行状态信息1
  $  00.电池管理系统的运行状态信息1
  $  REQ000:0       $  ANS000:18FFB3F3

  $  000.动力电池电压                  $    $  V     $    $  ANS000.BYTE0-4  $  y=(x1+x2*256)*0.1;
  $  001.动力电池电流                  $    $  A     $    $  ANS000.BYTE0-2  $  y=((x1+x2*256)-5000)*0.1;
  $  002.动力电池剩余电量              $    $  %     $    $  ANS000.BYTE000  $  y=x*0.4;
  $  003.动力电池健康状态              $    $  %     $    $  ANS000.BYTE001  $  y=x*0.01;
  $  004.动力电池-正极继电器状态       $    $        $    $  ANS000.BYTE002  $  if((x&0x01)==0x01) y=@0083;else y=@001f;
  $  005.动力电池-负极继电器状态       $    $        $    $  ANS000.BYTE002  $  if((x&0x02)==0x02) y=@0083;else y=@001f;
  $  006.动力电池-预充继电器状态       $    $        $    $  ANS000.BYTE002  $  if((x&0x04)==0x04) y=@0083;else y=@001f;
  $  007.动力电池-快充继电器状态       $    $        $    $  ANS000.BYTE002  $  if((x&0x08)==0x08) y=@0083;else y=@001f;
  $  008.动力电池-慢充继电器状态       $    $        $    $  ANS000.BYTE002  $  if((x&0x10)==0x10) y=@0083;else y=@001f;
  $  009.动力电池-充电指示             $    $        $    $  ANS000.BYTE002  $  if((x&0x60)==0x00) y=@0084;else if((x&0x60)==0x20) y=@0085;else if((x&0x60)==0x40) y=@0086;else if((x&0x60)==0x60) y=@0087;else y=@0006;
  $  010.动力电池-充电连接状态         $    $        $    $  ANS000.BYTE002  $  if((x&0x80)==0x80) y=@008f;else y=@0090;
  $  011.动力电池-充电模式             $    $        $    $  ANS000.BYTE003  $  if((x&0x03)==0x00) y=@008c;else if((x&0x03)==0x01) y=@008d;else if((x&0x03)==0x02) y=@008e;else if((x&0x03)==0x03) y=@0042;else y=@0006;
  $  012.动力电池-充电终止信号         $    $        $    $  ANS000.BYTE003  $  if((x&0x0c)==0x00) y=@008a;else if((x&0x0c)==0x04) y=@0022;else if((x&0x0c)==0x08) y=@008b;else if((x&0x0c)==0x0c) y=@0042;else y=@0006;

  $)  01.电池管理系统的运行状态信息2
  $  01.电池管理系统的运行状态信息2
  $  REQ000:0       $  ANS000:18FFB3F3

  $  000.母线正对车体绝缘电阻         $    $  KΩ     $    $  ANS000.BYTE0-4  $  y=(x1+x2*256);
  $  001.母线负对车体绝缘电阻         $    $  KΩ     $    $  ANS000.BYTE0-2  $  y=(x1+x2*256);
  $  002.输出浮空总电压（预充）       $    $  V       $    $  ANS000.BYTE000  $  y=(x1+x2*256)*0.1;
  $  003.BMS 状态                     $    $          $    $  ANS000.BYTE002  $  if((x&0x03)==0x00) y=@0088;else if((x&0x03)==0x01) y=@0089;else if((x&0x03)==0x02) y=@0052;else if((x&0x03)==0x03) y=@0053;else y=@0006;
  $  004.电池组状态                   $    $          $    $  ANS000.BYTE002  $  if((x&0x0C)==0x00) y=@0052;else if((x&0x0C)==0x08) y=@0042;else if((x&0x0C)==0x0C) y=@0042;else if((x&0x0C)==0x40) y=@0053;else y=@0006;
  $  005.BMS 故障等态                 $    $          $    $  ANS000.BYTE002  $  if((x&0x30)==0x00) y=@0035;else if((x&0x30)==0x10) y=@003b;else if((x&0x30)==0x20) y=@003c;else if((x&0x30)==0x30) y=@003d;else y=@0006;
  $  006.电池故障等态                 $    $          $    $  ANS000.BYTE002  $  if((x&0xC0)==0x00) y=@0035;else if((x&0xC0)==0x40) y=@003b;else if((x&0xC0)==0x80) y=@003c;else if((x&0xC0)==0xC0) y=@003d;else y=@0006;
  $  007.BMS下高压请求                $    $          $    $  ANS000.BYTE003  $  if((x&0x04)==0x04) y=@0091;else y=@000c;
  $  008.预充电状态                   $    $          $    $  ANS000.BYTE003  $  if((x&0x18)==0x00) y=@0080;else if((x&0x18)==0x08) y=@0081;else if((x&0x18)==0x10) y=@0082;else if((x&0x18)==0x18) y=@0042;else y=@0006;

  $)  02.电池管理系统的故障信息2
  $  02.电池管理系统的故障信息2
  $  REQ000:0       $  ANS000:18FFB3F3

  $  000.动力电池能量状态       $    $  kW     $    $  ANS000.BYTE001  $  y=(x1+x2*256)*0.1;
  $  001.计数器                 $    $         $    $  ANS000.BYTE003  $  y=x;

  $)  03.电池管理系统的单体极值信息
  $  03.电池管理系统的单体极值信息
  $  REQ000:0       $  ANS000:18FFB3F3

  $  000.单体平均电压             $    $  V       $    $  ANS000.BYTE0-4  $  y=x*0.02;
  $  001.最小单体电压             $    $  V       $    $  ANS000.BYTE0-3  $  y=x*0.02;
  $  002.最大单体电压             $    $  V       $    $  ANS000.BYTE0-2  $  y=x*0.02;
  $  003.电池单体平均温度值       $    $  °C     $    $  ANS000.BYTE0-1  $  y=x-40;
  $  004.电池单体最低温度值       $    $  °C     $    $  ANS000.BYTE000  $  y=x-40;
  $  005.电池单体最高温度值       $    $  °C     $    $  ANS000.BYTE001  $  y=x-40;

  $)  04.电池管理系统的极值位置信息
  $  04.电池管理系统的极值位置信息
  $  REQ000:0       $  ANS000:18FFB3F3

  $  000.电池单体最低电压所在箱编号       $    $       $    $  ANS000.BYTE0-4  $  y=x;
  $  001.电池单体最低电压在箱内位置       $    $       $    $  ANS000.BYTE0-3  $  y=x;
  $  002.电池单体最高电压所在箱编号       $    $       $    $  ANS000.BYTE0-2  $  y=x;
  $  003.电池单体最高电压在箱内位置       $    $       $    $  ANS000.BYTE0-1  $  y=x;
  $  004.电池单体最低温度所在箱编号       $    $       $    $  ANS000.BYTE000  $  y=x;
  $  005.电池单体最低温度在箱内位置       $    $       $    $  ANS000.BYTE001  $  y=x;
  $  006.电池单体最高温度所在箱编号       $    $       $    $  ANS000.BYTE002  $  y=x;
  $  007.电池单体最高温度在箱内位置       $    $       $    $  ANS000.BYTE003  $  y=x;

  $)  05.电池组的配置信息1
  $  05.电池组的配置信息1
  $  REQ000:0       $  ANS000:18FFB3F3

  $  000.BMS 硬件版本           $    $          $    $  ANS000.BYTE0-4  $  y=x*0.1;
  $  001.BMS 软件版本           $    $          $    $  ANS000.BYTE0-3  $  y=x*0.1;
  $  002.单体额定电压           $    $  V       $    $  ANS000.BYTE0-2  $  y=x*0.02;
  $  003.单体放电截止电压       $    $  V       $    $  ANS000.BYTE0-1  $  y=x*0.02;
  $  004.单体容量               $    $  Ah      $    $  ANS000.BYTE000  $  y=(x1+x2*256)*0.1;
  $  005.电池组可用容量         $    $  kWh     $    $  ANS000.BYTE002  $  y=(x1+x2*256)*0.1;

;******************************************************************************************************************************************************

