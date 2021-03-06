
    车型ID：2b18

    模拟：协议模拟-->2b18

;******************************************************************************************************************************************************

    通讯线: $~02$~10$~250K$~18B806FF

进入命令:


空闲命令:


退出命令:



;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:0       $%  ANS000:18B806FF

  $%  000:厂商码:            $%    $%  ANS000.BYTE0-4  $%  if(x==0x00) y=@009c;else if(x==0x01) y=@005f;else if(x==0x02) y=@0083;else if(x==0x03) y=@0084;else if(x==0x04) y=@0085;else if(x==0x05) y=@0086;else if(x==0x06) y=@0087;else if(x==0x07) y=@009d;else if(x==0x08) y=@009e;else if(x==0x0b) y=@009f;else if(x==0x0c) y=@00a0;else if(x==0x15) y=@00a1;else if(x==0x16) y=@00a2;else if(x==0x1F) y=@00a3;else if(x==0x29) y=@00a4;else if(x==0x2a) y=@00a5;else if(x==0x2b) y=@00a6;else if(x==0x33) y=@00a7;else if(x==0x37) y=@00a8;else if(x==0x3d) y=@00a9;else if(x==0x47) y=@00aa;else if(x==0x48) y=@00ab;else if(x==0x51) y=@00ac;else if(x==0x66) y=@00b0;else y=SPRINTF([%d],x);
  $%  001:硬件版本号:        $%    $%  ANS000.BYTE0-2  $%  y=SPRINTF([V%02X.%02X],X1,X2);
  $%  002:软件版本号:        $%    $%  ANS000.BYTE000  $%  y=SPRINTF([V%02X.%02X],X1,X2);
  $%  003:设备唯一码：       $%    $%  ANS000.BYTE000  $%  y=@011e;

;******************************************************************************************************************************************************

读数据流: 

  $)  00.电压及电流
  $  00.电压及电流
  $  REQ000:0       $  ANS000:18B806FF

  $  000.额定电压       $    $  V      $    $  ANS000.BYTE0-4  $  y=(x2*256+x1);
  $  001.额定电流       $    $  mA     $    $  ANS000.BYTE0-4  $  y=(x4*256+x3);

  $)  01.第二箱电池状态
  $  01.第二箱电池状态
  $  REQ000:0       $  ANS000:18B806FF

  $  000.第二箱电池准备就绪                            $    $           $    $  ANS000.BYTE0-4  $  switxh(x2)0:y=@008c;1:y=@008d;
  $  001.第二箱电池电压                                $    $  V        $    $  ANS000.BYTE0-4  $  y=((x4&0x7f)*256+x3)*0.1;
  $  002.第二箱电池电压有效标志                        $    $           $    $  ANS000.BYTE0-4  $  switxh(((x4>>7)&1))0:y=@0006;1:y=@0078;
  $  003.第二箱电池SOC(电池可用容量)                   $    $  %        $    $  ANS000.BYTE0-4  $  y=((x6&0x7f)*256+x5)*0.1;
  $  004.第二箱电池SOC(电池可用容量)有效标志           $    $           $    $  ANS000.BYTE0-4  $  switxh(((x6>>7)&1))0:y=@0006;1:y=@0078;
  $  005.第二箱电池SOH                                 $    $           $    $  ANS000.BYTE0-4  $  y=((x8&0x7f)*256+x7)*0.1;
  $  006.第二箱电池SOH有效标志                         $    $           $    $  ANS000.BYTE0-4  $  switxh(((x8>>7)&1))0:y=@0006;1:y=@0078;
  $  007.第二箱电池最高单体电压                        $    $  V        $    $  ANS000.BYTE0-4  $  y=((x3&0x7f)*256+x2)*0.001;
  $  008.第二箱电池最高单体电压有效标志                $    $           $    $  ANS000.BYTE0-4  $  switxh(((x3>>7)&1))0:y=@0006;1:y=@0078;
  $  009.第二箱电池最高单体电压编号                    $    $           $    $  ANS000.BYTE0-4  $  y=x4&0x7f;
  $  010.第二箱电池最高单体电压编号有效标志            $    $           $    $  ANS000.BYTE0-4  $  switxh(((x4>>7)&1))0:y=@0006;1:y=@0078;
  $  011.第二箱电池最低单体电压                        $    $  V        $    $  ANS000.BYTE0-4  $  y=((x6&0x7f)*256+x5)*0.001;
  $  012.第二箱电池最低单体电压有效标志                $    $           $    $  ANS000.BYTE0-4  $  switxh(((x6>>7)&1))0:y=@0006;1:y=@0078;
  $  013.第二箱电池最低单体电压编号                    $    $           $    $  ANS000.BYTE0-4  $  y=x7&0x7f;
  $  014.第二箱电池最低单体电压编号有效标志            $    $           $    $  ANS000.BYTE0-4  $  switxh(((x7>>7)&1))0:y=@0006;1:y=@0078;
  $  015.第二箱电池最高温度                            $    $  degC     $    $  ANS000.BYTE0-4  $  y=((x3&0x7f)*256+x2)*0.1-40;
  $  016.第二箱电池最高温度有效标志                    $    $           $    $  ANS000.BYTE0-4  $  switxh(((x3>>7)&1))0:y=@0006;1:y=@0078;
  $  017.第二箱电池最高温度编号                        $    $           $    $  ANS000.BYTE0-4  $  y=x4&0x7f;
  $  018.第二箱电池最高温度编号有效标志                $    $           $    $  ANS000.BYTE0-4  $  switxh(((x4>>7)&1))0:y=@0006;1:y=@0078;
  $  019.第二箱电池最低温度                            $    $  degC     $    $  ANS000.BYTE0-4  $  y=((x6&0x7f)*256+x5)*0.1-40;
  $  020.第二箱电池最低温度有效标志                    $    $           $    $  ANS000.BYTE0-4  $  switxh(((x6>>7)&1))0:y=@0006;1:y=@0078;
  $  021.第二箱电池最低温度编号                        $    $           $    $  ANS000.BYTE0-4  $  y=x7&0x7f;
  $  022.第二箱电池最低温度编号有效标志                $    $           $    $  ANS000.BYTE0-4  $  switxh(((x7>>7)&1))0:y=@0006;1:y=@0078;
  $  023.第二箱电池平均温度                            $    $           $    $  ANS000.BYTE0-4  $  y=((x3&0x7f)*256+x2)*0.1-40;
  $  024.第二箱电池平均温度有效标志                    $    $           $    $  ANS000.BYTE0-4  $  switxh(((x3>>7)&1))0:y=@0006;1:y=@0078;
  $  025.第二箱电池平均电压                            $    $           $    $  ANS000.BYTE0-4  $  y=((x5&0x7f)*256+x4)*0.001;
  $  026.第二箱电池平均电压有效标志                    $    $           $    $  ANS000.BYTE0-4  $  switxh(((x5>>7)&1))0:y=@0006;1:y=@0078;
  $  027.第二箱BMU(电池管理单元)内部温度               $    $           $    $  ANS000.BYTE0-4  $  y=((x7&0x7f)*256+x6)*0.1-40;
  $  028.第二箱BMU(电池管理单元)内部温度有效标志       $    $           $    $  ANS000.BYTE0-4  $  switxh(((x7>>7)&1))0:y=@0006;1:y=@0078;
  $  029.第二箱电池内部预充继电器状态                  $    $           $    $  ANS000.BYTE0-4  $  switxh(((x2>>1)&1))0:y=@0090;1:y=@0091;
  $  030.第二箱电池内部主正继电器状态                  $    $           $    $  ANS000.BYTE0-4  $  switxh(((x2>>2)&1))0:y=@0090;1:y=@0091;
  $  031.第二箱电池内部主负继电器状态                  $    $           $    $  ANS000.BYTE0-4  $  switxh(((x2>>3)&1))0:y=@0090;1:y=@0091;
  $  032.第二箱电池加热模块开关                        $    $           $    $  ANS000.BYTE0-4  $  switxh(((x2>>4)&1))0:y=@008a;1:y=@008b;
  $  033.第二箱电池均衡模块                            $    $           $    $  ANS000.BYTE0-4  $  switxh(((x2>>5)&1))0:y=@008a;1:y=@008b;
  $  034.第二箱电池散热模块                            $    $           $    $  ANS000.BYTE0-4  $  switxh(((x2>>6)&1))0:y=@008a;1:y=@008b;
  $  035.第二箱电池均衡模块有无                        $    $           $    $  ANS000.BYTE0-4  $  switxh(((x2>>7)&1))0:y=@0088;1:y=@0089;
  $  036.第二箱电池内部总正继电器故障                  $    $           $    $  ANS000.BYTE0-4  $  switxh(((x3>>0)&1))0:y=@0000;1:y=@0001;
  $  037.第二箱电池内部总负继电器故障                  $    $           $    $  ANS000.BYTE0-4  $  switxh(((x3>>1)&1))0:y=@0000;1:y=@0001;
  $  038.第二箱电池加热模块故障                        $    $           $    $  ANS000.BYTE0-4  $  switxh(((x3>>2)&1))0:y=@0000;1:y=@0001;
  $  039.第二箱电池风扇故障                            $    $           $    $  ANS000.BYTE0-4  $  switxh(((x3>>3)&1))0:y=@0000;1:y=@0001;
  $  040.第二箱温度传感器故障                          $    $           $    $  ANS000.BYTE0-4  $  switxh(((x3>>4)&1))0:y=@0000;1:y=@0001;
  $  041.第二箱电池线束故障                            $    $           $    $  ANS000.BYTE0-4  $  switxh(((x3>>5)&1))0:y=@0000;1:y=@0001;
  $  042.第二箱电池均衡模块故障                        $    $           $    $  ANS000.BYTE0-4  $  switxh(((x3>>6)&1))0:y=@0000;1:y=@0001;
  $  043.第二箱电池内部通讯故障                        $    $           $    $  ANS000.BYTE0-4  $  switxh(((x3>>7)&1))0:y=@0000;1:y=@0001;
  $  044.第二箱电池充电电流一级报警                    $    $           $    $  ANS000.BYTE0-4  $  switxh(((x5>>0)&1))0:y=@0000;1:y=@004f;
  $  045.第二箱电池放电电流一级报警                    $    $           $    $  ANS000.BYTE0-4  $  switxh(((x5>>1)&1))0:y=@0000;1:y=@004f;
  $  046.第二箱电池温差一级报警                        $    $           $    $  ANS000.BYTE0-4  $  switxh(((x5>>2)&1))0:y=@0000;1:y=@004f;
  $  047.第二箱电池低温一级报警                        $    $           $    $  ANS000.BYTE0-4  $  switxh(((x5>>3)&1))0:y=@0000;1:y=@004f;
  $  048.第二箱电池过温一级报警                        $    $           $    $  ANS000.BYTE0-4  $  switxh(((x5>>4)&1))0:y=@0000;1:y=@004f;
  $  049.第二箱电池单体压差一级报警                    $    $           $    $  ANS000.BYTE0-4  $  switxh(((x5>>5)&1))0:y=@0000;1:y=@004f;
  $  050.第二箱电池单体欠压一级报警                    $    $           $    $  ANS000.BYTE0-4  $  switxh(((x5>>6)&1))0:y=@0000;1:y=@004f;
  $  051.第二箱电池单体过压一级报警                    $    $           $    $  ANS000.BYTE0-4  $  switxh(((x5>>7)&1))0:y=@0000;1:y=@004f;
  $  052.第二箱电池充电电流二级报警                    $    $           $    $  ANS000.BYTE0-4  $  switxh(((x7>>0)&1))0:y=@0000;1:y=@0050;
  $  053.第二箱电池放电电流二级报警                    $    $           $    $  ANS000.BYTE0-4  $  switxh(((x7>>1)&1))0:y=@0000;1:y=@0050;
  $  054.第二箱电池温差二级报警                        $    $           $    $  ANS000.BYTE0-4  $  switxh(((x7>>2)&1))0:y=@0000;1:y=@0050;
  $  055.第二箱电池低温二级报警                        $    $           $    $  ANS000.BYTE0-4  $  switxh(((x7>>3)&1))0:y=@0000;1:y=@0050;
  $  056.第二箱电池过温二级报警                        $    $           $    $  ANS000.BYTE0-4  $  switxh(((x7>>4)&1))0:y=@0000;1:y=@0050;
  $  057.第二箱电池单体压差二级报警                    $    $           $    $  ANS000.BYTE0-4  $  switxh(((x7>>5)&1))0:y=@0000;1:y=@0050;
  $  058.第二箱电池单体欠压二级报警                    $    $           $    $  ANS000.BYTE0-4  $  switxh(((x7>>6)&1))0:y=@0000;1:y=@0050;
  $  059.第二箱电池单体过压二级报警                    $    $           $    $  ANS000.BYTE0-4  $  switxh(((x7>>7)&1))0:y=@0000;1:y=@0050;
  $  060.电流采集有效标志                              $    $           $    $  ANS000.BYTE0-3  $  switxh(x)0:y=@0006;1:y=@0078;
  $  061.电流值                                        $    $  A        $    $  ANS000.BYTE0-2  $  y=(x2*256+x1)*0.05-1600;
  $  062.放电总安时数                                  $    $  Ah       $    $  ANS000.BYTE000  $  y=((x4<<24)+(x3<<16)+(x2<<8)+x1)*0.1;
  $  063.平均最大允许充电电流                          $    $  A        $    $  ANS000.BYTE0-3  $  y=(x2*256+x1)*0.1;
  $  064.平均最大允许放电电流                          $    $  A        $    $  ANS000.BYTE0-1  $  y=(x2*256+x1)*0.1;
  $  065.瞬时最大允许充电电流                          $    $  A        $    $  ANS000.BYTE0-3  $  y=(x2*256+x1)*0.1;
  $  066.瞬时最大允许放电电流                          $    $  A        $    $  ANS000.BYTE0-1  $  y=(x2*256+x1)*0.1;

  $)  02.第二箱电池状态(VCU(整车控制器)请求)
  $  02.第二箱电池状态(VCU(整车控制器)请求)
  $  REQ000:0       $  ANS000:18B806FF

  $  000.第二箱电池加热是否开始                             $    $       $    $  ANS000.BYTE0-4  $  if(((x>>0)&1))y=@00be;else y=@00bf;
  $  001.第二箱电池散热是否开始                             $    $       $    $  ANS000.BYTE0-4  $  if(((x>>1)&1))y=@00c2;else y=@00c3;
  $  002.第二箱电池模块均衡是否开始                         $    $       $    $  ANS000.BYTE0-4  $  if(((x>>2)&1))y=@00c0;else y=@00c1;
  $  003.第二箱电池SOC估算方向                              $    $       $    $  ANS000.BYTE0-4  $  if(((x>>3)&1))y=@00bc;else y=@00bd;
  $  004.VCU(整车控制系统)请求第二箱电池概要信息            $    $       $    $  ANS000.BYTE0-3  $  if(((x>>0)&1))y=@00ba;else y=@00bb;
  $  005.VCU(整车控制系统)请求第二箱电池详细信息            $    $       $    $  ANS000.BYTE0-3  $  if(((x>>1)&1))y=@00ba;else y=@00bb;
  $  006.VCU(整车控制系统)请求第二箱电池配置信息            $    $       $    $  ANS000.BYTE0-3  $  if(((x>>2)&1))y=@00ba;else y=@00bb;
  $  007.VCU(整车控制系统)请求第二箱BMU(动力电池)复位       $    $       $    $  ANS000.BYTE0-3  $  if(((x>>3)&1))y=@00ba;else y=@00bb;

;******************************************************************************************************************************************************

