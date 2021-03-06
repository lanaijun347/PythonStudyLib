
    车型ID：9f7e

    模拟：协议模拟-->9f7e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~250K$~800A6A9,700A9A6,900A6A9,1000A6A9,1C00A6A9,1810A6A9,1D00A6A9,1F00A6A9,1C20A2A9,1C30A2A9,1823A1A9,1830A9A1,1C10A9A2

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

  $)  00.VCU_BMS(电池管理系统)
  $  00.VCU_BMS(电池管理系统)
  $  REQ000:01022000240000138054d30       $  ANS000:800A6A91022000240000138054d30

  $  000.主继电器控制指令       $    $       $    $  ANS000.BYTE001  $  if((x&0x01)==0x01) y=@0015;else y=@00af;

  $)  01.BMS(电池管理系统)_2
  $  01.BMS(电池管理系统)_2
  $  REQ000:01022000240000148053548       $  ANS000:800A6A91022000240000148053548

  $  000.允许最大放电电流       $    $  A     $    $  ANS000.BYTE001  $  y=(x1*256+x2)*1000*1.0/65535-500;
  $  001.允许最大回充电流       $    $  A     $    $  ANS000.BYTE003  $  y=(x1*256+x2)*1000*1.0/65535-500;

  $)  02.BMS(电池管理系统)_3
  $  02.BMS(电池管理系统)_3
  $  REQ000:01022000240000180053548       $  ANS000:800A6A91022000240000180053548

  $  000.电池箱总电压        $    $  v       $    $  ANS000.BYTE001  $  y=(x1*256+x2)*1000*1.0/65535;
  $  001.电池箱总电流        $    $  A       $    $  ANS000.BYTE003  $  y=(x1*256+x2)*1000*1.0/65535-500;
  $  002.SOC(荷电状态)       $    $  %       $    $  ANS000.BYTE005  $  y=x*100*1.0/250-50;
  $  003.最高温度            $    $  °C     $    $  ANS000.BYTE006  $  y=x*100*1.0/250-50;
  $  004.最低温度            $    $  °C     $    $  ANS000.BYTE007  $  y=x*100*1.0/250-50;
  $  005.平均温度            $    $  °C     $    $  ANS000.BYTE008  $  y=x*100*1.0/250-50;

  $)  03.BMS(电池管理系统)_4
  $  03.BMS(电池管理系统)_4
  $  REQ000:010220002400001e0053548       $  ANS000:800A6A910220002400001e0053548

  $  000.充电继电器状态          $    $       $    $  ANS000.BYTE001  $  if((x&0x20)==0x20) y=@0015;else y=@00af;
  $  001.放电继电器状态          $    $       $    $  ANS000.BYTE001  $  if((x&0x40)==0x40) y=@0015;else y=@00af;
  $  002.充电连接状态            $    $       $    $  ANS000.BYTE002  $  if((x&0x01)==0x01) y=@0015;else y=@00af;
  $  003.目前工作状态            $    $       $    $  ANS000.BYTE003  $  if((x&0x07)==0x00) y=@00ba;else if((x&0x07)==0x01) y=@0113;else if((x&0x07)==0x02) y=@0022;else y=@0006;
  $  004.BMS电池包厂商编号       $    $       $    $  ANS000.BYTE008  $  y=x;

  $)  04.BMS(电池管理系统)_resisitor(电阻)
  $  04.BMS(电池管理系统)_resisitor(电阻)
  $  REQ000:010220002400001c0853548       $  ANS000:800A6A910220002400001c0853548

  $  000.BMS总正绝缘电阻       $    $  KΩ/V     $    $  ANS000.BYTE001  $  y=(x1*256+x2);
  $  001.BMS总负绝缘电阻       $    $  KΩ/V     $    $  ANS000.BYTE003  $  y=(x1*256+x2);

  $)  05.BMS(电池管理系统)_5
  $  05.BMS(电池管理系统)_5
  $  REQ000:010220002400001e8053548       $  ANS000:800A6A910220002400001e8053548

  $  000.可充电储能子系统数           $    $        $    $  ANS000.BYTE001  $  y=x;
  $  001.可充电储能系统编码长度       $    $        $    $  ANS000.BYTE002  $  y=x;
  $  002.可充电储能系统编码           $    $        $    $  ANS000.BYTE003  $  y=x;
  $  003.可充电储能子系统号           $    $        $    $  ANS000.BYTE004  $  y=x;
  $  004.可充电储能装置电压           $    $  V     $    $  ANS000.BYTE005  $  y=(x1*256+x2)*0.1;
  $  005.可充电储能装置电流           $    $  A     $    $  ANS000.BYTE007  $  y=(x1*256+x2)*0.1-1000;

  $)  06.BMS(电池管理系统)_6
  $  06.BMS(电池管理系统)_6
  $  REQ000:010220002400001f8053548       $  ANS000:800A6A910220002400001f8053548

  $  000.蓄电池中最高温度总成号                 $    $       $    $  ANS000.BYTE001  $  y=x;
  $  001.蓄电池中最高温度探针在总成中代号       $    $       $    $  ANS000.BYTE002  $  y=x;
  $  002.蓄电池中最低温度总成号                 $    $       $    $  ANS000.BYTE003  $  y=x;
  $  003.蓄电池中最低温度探针在总成中代号       $    $       $    $  ANS000.BYTE004  $  y=x;
  $  004.蓄电池中最低温度探针序号               $    $       $    $  ANS000.BYTE005  $  y=x;

  $)  07.BMS(电池管理系统)_CELL(单体)
  $  07.BMS(电池管理系统)_CELL(单体)
  $  REQ000:010220002400001e1051548       $  ANS000:800A6A910220002400001e1051548

  $  000.单体编号（1）           $    $       $    $  ANS000.BYTE001  $  y=x;
  $  001.BMS模块号（1）          $    $       $    $  ANS000.BYTE002  $  y=x;
  $  002.单体电池电压（1）       $    $       $    $  ANS000.BYTE003  $  y=(x1*256+x2)*0.001;
  $  003.单体编号（2）           $    $       $    $  ANS000.BYTE005  $  y=x;
  $  004.BMS模块号（2）          $    $       $    $  ANS000.BYTE006  $  y=x;
  $  005.单体电池电压（2）       $    $       $    $  ANS000.BYTE007  $  y=(x1*256+x2)*0.001;

  $)  08.BMS(电池管理系统)_TEMP
  $  08.BMS(电池管理系统)_TEMP
  $  REQ000:010220002400001e1851548       $  ANS000:800A6A910220002400001e1851548

  $  000.电池总成号                        $    $          $    $  ANS000.BYTE001  $  y=x;
  $  001.电池温度探针个数                  $    $          $    $  ANS000.BYTE002  $  y=x;
  $  002.初始温度点编号（0）               $    $          $    $  ANS000.BYTE003  $  y=x-40;
  $  003.模块内温度点（0+1）采样温度       $    $  °C     $    $  ANS000.BYTE004  $  y=x-40;
  $  004.模块内温度点（0+2）采样温度       $    $  °C     $    $  ANS000.BYTE005  $  y=x-40;
  $  005.模块内温度点（0+3）采样温度       $    $  °C     $    $  ANS000.BYTE006  $  y=x-40;
  $  006.模块内温度点（0+4）采样温度       $    $  °C     $    $  ANS000.BYTE007  $  y=x-40;

  $)  09.BMS(电池管理系统)_charger(充电)
  $  09.BMS(电池管理系统)_charger(充电)
  $  REQ000:010220002400001c11d0d48       $  ANS000:800A6A910220002400001c11d0d48

  $  000.电压设定         $    $  V     $    $  ANS000.BYTE001  $  y=(x1*256+x2)*0.1;
  $  001.电流设定         $    $  A     $    $  ANS000.BYTE003  $  y=(x1*256+x2)*0.1;
  $  002.充电机使能       $    $        $    $  ANS000.BYTE005  $  if(x==0x00) y=@0115;else if(x==0x01) y=@0116;else if(x==0x02) y=@0117;else y=@0003;
  $  003.充电机控制       $    $        $    $  ANS000.BYTE006  $  if(x==0x00) y=@0114;else if(x==0x01) y=@0092;else y=@0003;

  $)  10.charger(充电)_BMS(电池管理系统)
  $  10.charger(充电)_BMS(电池管理系统)
  $  REQ000:010220002400001c1854d08       $  ANS000:800A6A910220002400001c1854d08

  $  000.输出电压               $    $  V     $    $  ANS000.BYTE001  $  y=(x1*256+x2)*0.1;
  $  001.输出电流               $    $  A     $    $  ANS000.BYTE003  $  y=(x1*256+x2)*0.1;
  $  002.硬件故障               $    $        $    $  ANS000.BYTE005  $  if((x&0x01)==0x01) y=@011c;else y=@0017;
  $  003.温度保护               $    $        $    $  ANS000.BYTE005  $  if((x&0x02)==0x02) y=@011b;else y=@0017;
  $  004.输入电压故障           $    $        $    $  ANS000.BYTE005  $  if((x&0x04)==0x04) y=@011a;else y=@00e1;
  $  005.电池电压状态           $    $        $    $  ANS000.BYTE005  $  if((x&0x08)==0x08) y=@0118;else y=@0119;
  $  006.通信故障               $    $        $    $  ANS000.BYTE005  $  if((x&0x10)==0x10) y=@010e;else y=@010f;
  $  007.CC故障                 $    $        $    $  ANS000.BYTE005  $  if((x&0x20)==0x20) y=@0053;else y=@0017;
  $  008.CP故障                 $    $        $    $  ANS000.BYTE005  $  if((x&0x40)==0x40) y=@0053;else y=@0017;
  $  009.电子锁故障             $    $        $    $  ANS000.BYTE005  $  if((x&0x80)==0x80) y=@0053;else y=@0017;
  $  010.充电机工作状态         $    $        $    $  ANS000.BYTE006  $  if((x&0x07)==0x00) y=@004d;else if((x&0x07)==0x01) y=@004e;else if((x&0x07)==0x02) y=@004f;else if((x&0x07)==0x03) y=@0025;else y=@0112;
  $  011.开关控制位状态         $    $        $    $  ANS000.BYTE006  $  if((x&0x10)==0x10) y=@001e;else y=@001f;
  $  012.电子锁状态             $    $        $    $  ANS000.BYTE006  $  if((x&0x20)==0x20) y=@002a;else y=@002b;
  $  013.高温警告状态           $    $        $    $  ANS000.BYTE006  $  if((x&0x40)==0x40) y=@0110;else y=@0111;
  $  014.风扇工作状态           $    $        $    $  ANS000.BYTE006  $  if((x&0x80)==0x80) y=@002d;else y=@00e5;
  $  015.当前最大输出功率       $    $  W     $    $  ANS000.BYTE007  $  y=x*100;

  $)  11.Monitor(监测)_BMS(电池管理系统)
  $  11.Monitor(监测)_BMS(电池管理系统)
  $  REQ000:010220002400001e0854d10       $  ANS000:800A6A910220002400001e0854d10

  $  000.发送计数       $    $  V     $    $  ANS000.BYTE001  $  y=(x1*256+x2);
  $  001.接收计数       $    $  A     $    $  ANS000.BYTE005  $  y=(x1*256+x2);

;******************************************************************************************************************************************************

