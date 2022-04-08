
    车型ID：190f

    模拟：协议模拟-->190f

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~788

进入命令:

  $~  REQ000:780 02 10 01 00 00 00 00 00       $~  ANS000:788 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:780 02 3E 80 00 00 00 00 00       $!  ANS000:788 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:780 05 18 00 FF FF FF 00 00       $#  ANS000:788 05 18 00 FF FF FF 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:780 04 14 FF FF FF 00 00 00       $$  ANS000:788 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:780 03 22 F1 93 00 00 00 00       $%  ANS000:788 03 22 F1 93 00 00 00 00
  $%  REQ001:780 03 22 F1 94 00 00 00 00       $%  ANS001:788 03 22 F1 94 00 00 00 00
  $%  REQ002:780 03 22 F1 95 00 00 00 00       $%  ANS002:788 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:780 03 22 00 04 00 00 00 00       $  ANS000:788 03 22 00 04 00 00 00 00
  $  REQ001:780 03 22 00 05 00 00 00 00       $  ANS001:788 03 22 00 05 00 00 00 00
  $  REQ002:780 03 22 00 06 00 00 00 00       $  ANS002:788 03 22 00 06 00 00 00 00
  $  REQ003:780 03 22 00 08 00 00 00 00       $  ANS003:788 03 22 00 08 00 00 00 00
  $  REQ004:780 03 22 00 09 00 00 00 00       $  ANS004:788 03 22 00 09 00 00 00 00
  $  REQ005:780 03 22 00 0A 00 00 00 00       $  ANS005:788 03 22 00 0A 00 00 00 00
  $  REQ006:780 03 22 00 0B 00 00 00 00       $  ANS006:788 03 22 00 0B 00 00 00 00
  $  REQ007:780 03 22 00 0C 00 00 00 00       $  ANS007:788 03 22 00 0C 00 00 00 00
  $  REQ008:780 03 22 00 0D 00 00 00 00       $  ANS008:788 03 22 00 0D 00 00 00 00
  $  REQ009:780 03 22 00 0E 00 00 00 00       $  ANS009:788 03 22 00 0E 00 00 00 00
  $  REQ010:780 03 22 00 0F 00 00 00 00       $  ANS010:788 03 22 00 0F 00 00 00 00
  $  REQ011:780 03 22 00 10 00 00 00 00       $  ANS011:788 03 22 00 10 00 00 00 00
  $  REQ012:780 03 22 00 11 00 00 00 00       $  ANS012:788 03 22 00 11 00 00 00 00
  $  REQ013:780 03 22 00 12 00 00 00 00       $  ANS013:788 03 22 00 12 00 00 00 00
  $  REQ014:780 03 22 00 13 00 00 00 00       $  ANS014:788 03 22 00 13 00 00 00 00
  $  REQ015:780 03 22 00 14 00 00 00 00       $  ANS015:788 03 22 00 14 00 00 00 00
  $  REQ016:780 03 22 00 15 00 00 00 00       $  ANS016:788 03 22 00 15 00 00 00 00
  $  REQ017:780 03 22 00 16 00 00 00 00       $  ANS017:788 03 22 00 16 00 00 00 00
  $  REQ018:780 03 22 00 17 00 00 00 00       $  ANS018:788 03 22 00 17 00 00 00 00
  $  REQ019:780 03 22 00 18 00 00 00 00       $  ANS019:788 03 22 00 18 00 00 00 00
  $  REQ020:780 03 22 00 19 00 00 00 00       $  ANS020:788 03 22 00 19 00 00 00 00
  $  REQ021:780 03 22 00 1A 00 00 00 00       $  ANS021:788 03 22 00 1A 00 00 00 00
  $  REQ022:780 03 22 00 1B 00 00 00 00       $  ANS022:788 03 22 00 1B 00 00 00 00
  $  REQ023:780 03 22 00 1C 00 00 00 00       $  ANS023:788 03 22 00 1C 00 00 00 00
  $  REQ024:780 03 22 00 1D 00 00 00 00       $  ANS024:788 03 22 00 1D 00 00 00 00
  $  REQ025:780 03 22 00 1E 00 00 00 00       $  ANS025:788 03 22 00 1E 00 00 00 00
  $  REQ026:780 03 22 00 1F 00 00 00 00       $  ANS026:788 03 22 00 1F 00 00 00 00
  $  REQ027:780 03 22 00 20 00 00 00 00       $  ANS027:788 03 22 00 20 00 00 00 00
  $  REQ028:780 03 22 00 21 00 00 00 00       $  ANS028:788 03 22 00 21 00 00 00 00
  $  REQ029:780 03 22 00 22 00 00 00 00       $  ANS029:788 03 22 00 22 00 00 00 00
  $  REQ030:780 03 22 00 23 00 00 00 00       $  ANS030:788 03 22 00 23 00 00 00 00
  $  REQ031:780 03 22 00 24 00 00 00 00       $  ANS031:788 03 22 00 24 00 00 00 00
  $  REQ032:780 03 22 00 25 00 00 00 00       $  ANS032:788 03 22 00 25 00 00 00 00
  $  REQ033:780 03 22 00 26 00 00 00 00       $  ANS033:788 03 22 00 26 00 00 00 00
  $  REQ034:780 03 22 00 28 00 00 00 00       $  ANS034:788 03 22 00 28 00 00 00 00
  $  REQ035:780 03 22 00 29 00 00 00 00       $  ANS035:788 03 22 00 29 00 00 00 00
  $  REQ036:780 03 22 00 2A 00 00 00 00       $  ANS036:788 03 22 00 2A 00 00 00 00
  $  REQ037:780 03 22 00 2B 00 00 00 00       $  ANS037:788 03 22 00 2B 00 00 00 00
  $  REQ038:780 03 22 00 2C 00 00 00 00       $  ANS038:788 03 22 00 2C 00 00 00 00
  $  REQ039:780 03 22 00 2F 00 00 00 00       $  ANS039:788 03 22 00 2F 00 00 00 00
  $  REQ040:780 03 22 00 30 00 00 00 00       $  ANS040:788 03 22 00 30 00 00 00 00
  $  REQ041:780 03 22 00 31 00 00 00 00       $  ANS041:788 03 22 00 31 00 00 00 00
  $  REQ042:780 03 22 00 32 00 00 00 00       $  ANS042:788 03 22 00 32 00 00 00 00
  $  REQ043:780 03 22 00 33 00 00 00 00       $  ANS043:788 03 22 00 33 00 00 00 00
  $  REQ044:780 03 22 00 34 00 00 00 00       $  ANS044:788 03 22 00 34 00 00 00 00
  $  REQ045:780 03 22 00 35 00 00 00 00       $  ANS045:788 03 22 00 35 00 00 00 00
  $  REQ046:780 03 22 00 36 00 00 00 00       $  ANS046:788 03 22 00 36 00 00 00 00
  $  REQ047:780 03 22 00 37 00 00 00 00       $  ANS047:788 03 22 00 37 00 00 00 00
  $  REQ048:780 03 22 00 38 00 00 00 00       $  ANS048:788 03 22 00 38 00 00 00 00
  $  REQ049:780 03 22 00 39 00 00 00 00       $  ANS049:788 03 22 00 39 00 00 00 00
  $  REQ050:780 03 22 00 3A 00 00 00 00       $  ANS050:788 03 22 00 3A 00 00 00 00
  $  REQ051:780 03 22 00 3B 00 00 00 00       $  ANS051:788 03 22 00 3B 00 00 00 00
  $  REQ052:780 03 22 00 3C 00 00 00 00       $  ANS052:788 03 22 00 3C 00 00 00 00
  $  REQ053:780 03 22 00 3F 00 00 00 00       $  ANS053:788 03 22 00 3F 00 00 00 00

  $  000.电机开启状态                           $    $               $    $  ANS000.BYTE004  $  if(x1 == 0x00) y=@0000;else if(x1 == 0x01) y=@0001;else y=@0002;
  $  001.制动踏板状态                           $    $               $    $  ANS001.BYTE004  $  if(x1==0x00)y=@0004;else if(x1==0x01)y=@0367;else y=@0002;
  $  002.驻车开关状态                           $    $               $    $  ANS002.BYTE004  $  if(x1==0x00)y=@0004;else if(x1==0x01)y=@0367;else y=@0002;
  $  003.档位                                   $    $               $    $  ANS003.BYTE004  $  if(x1==0x01)y=@00d7;else if(x1==0x02)y=@0071;else if(x1==0x03)y=@0072;else if(x1==0x04)y=@00d8;else y=@0002;
  $  004.电机转向                               $    $               $    $  ANS004.BYTE004  $  if(x1==0x00)y=@003e;else if(x1==0x01)y=@015c;else if(x1==0x02)y=@015d;else y=@0002;
  $  005.工作模式                               $    $               $    $  ANS005.BYTE004  $  if(x1==0x01)y=@0204;else if(x1==0x02)y=@0205;else if(x1==0x03)y=@0046;else y=@0002;
  $  006.上电启动开始命令                       $    $               $    $  ANS006.BYTE004  $  if(x1==0x00)y=@0202;else if(x1==0x01)y=@0203;else y=@0002;
  $  007.READY(准备就绪)指示灯状态              $    $               $    $  ANS007.BYTE004  $  if(x1==0x00)y=@0229;else if(x1==0x01)y=@022a;else y=@0002;
  $  008.档位故障状态                           $    $               $    $  ANS008.BYTE004  $  if(x1==0x00)y=@0228;else if(x1==0x01)y=@0046;else y=@0002;
  $  009.过载告警                               $    $               $    $  ANS009.BYTE004  $  if(x1==0x00)y=@0228;else if(x1==0x01)y=@0046;else y=@0002;
  $  010.堵转告警                               $    $               $    $  ANS010.BYTE004  $  if(x1==0x00)y=@0228;else if(x1==0x01)y=@0046;else y=@0002;
  $  011.油门错误                               $    $               $    $  ANS011.BYTE004  $  if(x1==0x00)y=@0228;else if(x1==0x01)y=@0046;else y=@0002;
  $  012.碰撞告警                               $    $               $    $  ANS012.BYTE004  $  if(x1==0x00)y=@0228;else if(x1==0x01)y=@0046;else y=@0002;
  $  013.严重告警标志                           $    $               $    $  ANS013.BYTE004  $  if(x1==0x00)y=@0228;else if(x1==0x01)y=@0046;else y=@0002;
  $  014.一般告警标志                           $    $               $    $  ANS014.BYTE004  $  if(x1==0x00)y=@0228;else if(x1==0x01)y=@0046;else y=@0002;
  $  015.自检状态                               $    $               $    $  ANS015.BYTE004  $  if(x1==0x00)y=@037c;else if(x1==0x01)y=@037d;else y=@0002;
  $  016.缺相保护                               $    $               $    $  ANS016.BYTE004  $  if(x1==0x00)y=@0228;else if(x1==0x01)y=@0046;else y=@0002;
  $  017.与ACM通讯状态                          $    $               $    $  ANS017.BYTE004  $  if(x1==0x00)y=@00ac;else if(x1==0x01)y=@022b;else y=@0002;
  $  018.与ESP(电子车身稳定系统)通讯状态        $    $               $    $  ANS018.BYTE004  $  if(x1==0x00)y=@00ac;else if(x1==0x01)y=@022b;else y=@0002;
  $  019.与ABS(防抱死刹车系统)通讯状态          $    $               $    $  ANS019.BYTE004  $  if(x1==0x00)y=@00ac;else if(x1==0x01)y=@0108;else if(x1==0x02)y=@037b;else y=@0002;
  $  020.与电池管理器通讯状态                   $    $               $    $  ANS020.BYTE004  $  if(x1==0x00)y=@00ac;else if(x1==0x01)y=@022b;else y=@0002;
  $  021.与P档控制器通讯状态                    $    $               $    $  ANS021.BYTE004  $  if(x1==0x00)y=@00ac;else if(x1==0x01)y=@022b;else y=@0002;
  $  022.与主控通讯状态                         $    $               $    $  ANS022.BYTE004  $  if(x1==0x00)y=@00ac;else if(x1==0x01)y=@037a;else y=@0002;
  $  023.主接触器状态                           $    $               $    $  ANS023.BYTE004  $  if(x1==0x00)y=@010e;else if(x1==0x01)y=@0045;else if(x1==0x02)y=@022c;else y=@0002;
  $  024.油门位置                               $    $  %            $    $  ANS024.BYTE004  $  y=x1;
  $  025.脚刹深度                               $    $  %            $    $  ANS025.BYTE004  $  y=x1;
  $  026.动力电机母线电压                       $    $  V            $    $  ANS026.BYTE004  $  y=x1*2;
  $  027.动力电机转速                           $    $  rpm          $    $  ANS027.BYTE004  $  y=11000-(x1+x2*256);
  $  028.电机扭矩                               $    $  牛顿米       $    $  ANS028.BYTE004  $  y=(x1+x2*256)/10-500;
  $  029.电机功率                               $    $  Kw           $    $  ANS029.BYTE004  $  y=(x1+x2*256)*0.1-200;
  $  030.动力电机温度                           $    $  degree C     $    $  ANS030.BYTE004  $  y=x1-40;
  $  031.IGBT(绝缘栅双极型晶体管)最高温度       $    $  degree C     $    $  ANS031.BYTE004  $  y=x1-40;
  $  032.电感最高温度                           $    $  degree C     $    $  ANS032.BYTE004  $  y=x1-40;
  $  033.IPM散热器温度                          $    $  degree C     $    $  ANS033.BYTE004  $  y=x1-40;
  $  034.充放电系统工作状态                     $    $               $    $  ANS034.BYTE004  $  if(x1==0x00)y=@020f;else if(x1==0x01)y=@0210;else if(x1==0x02)y=@0119;else if(x1==0x03)y=@011a;else if(x1==0x04)y=@0211;else if(x1==0x05)y=@0212;else if(x1==0x06)y=@0213;else if(x1==0x07)y=@0214;else if(x1==0x08)y=@0215;else if(x1==0x09)y=@0216;else if(x1==0x0A)y=@0217;else y=@0002;
  $  035.充电连接装置连接状态                   $    $               $    $  ANS035.BYTE004  $  if(x1==0x00)y=@021a;else if(x1==0x01)y=@021b;else if(x1==0x02)y=@021c;else y=@0002;
  $  036.交流充电继电器动作请求命令             $    $               $    $  ANS036.BYTE004  $  if(x1==0x00)y=@0207;else if(x1==0x01)y=@0219;else y=@0002;
  $  037.SCI通讯状态                            $    $               $    $  ANS037.BYTE004  $  if(x1==0x00)y=@0228;else if(x1==0x01)y=@0046;else y=@0002;
  $  038.充放电系统故障状态                     $    $               $    $  ANS038.BYTE004  $  if(x1==0x00)y=@0045;else if(x1==0x01)y=@0046;else if(x1==0x02)y=@021e;else if(x1==0x03)y=@021f;else if(x1==0x04)y=@0220;else if(x1==0x05)y=@0221;else if(x1==0x06)y=@0222;else if(x1==0x07)y=@0223;else if(x1==0x08)y=@0224;else y=@0002;
  $  039.充电母线电压                           $    $  V            $    $  ANS039.BYTE004  $  y=x1+x2*256;
  $  040.充电直流侧电流                         $    $  A            $    $  ANS040.BYTE004  $  y=x1;
  $  041.控制器充电功率比                       $    $  kW           $    $  ANS041.BYTE004  $  y=(x1+x2*256)*0.1;
  $  042.电网交流频率                           $    $  Hz           $    $  ANS042.BYTE004  $  y=(x1+x2*256)*0.1;
  $  043.交流A相电压                            $    $  V            $    $  ANS043.BYTE004  $  y=x1+x2*256;
  $  044.交流B相电压                            $    $  V            $    $  ANS044.BYTE004  $  y=x1+x2*256;
  $  045.交流C相电压                            $    $  V            $    $  ANS045.BYTE004  $  y=x1+x2*256;
  $  046.电网交流A相电流                        $    $  A            $    $  ANS046.BYTE004  $  y=x1;
  $  047.电网交流B相电流                        $    $  A            $    $  ANS047.BYTE004  $  y=x1;
  $  048.电网交流C相电流                        $    $  A            $    $  ANS048.BYTE004  $  y=x1;
  $  049.充放电状态                             $    $               $    $  ANS049.BYTE004  $  if(x1==0x00)y=@0240;else if(x1==0x01)y=@0241;else if(x1==0x02)y=@0242;else if(x1==0x03)y=@0243;else if(x1==0x04)y=@0244;else if(x1==0x05)y=@0245;else y=@0002;
  $  050.当前电制频率                           $    $  Hz           $    $  ANS050.BYTE004  $  if(x1 == 0x00) y=@037e;else if(x1 == 0x01) y=@037f;else y=@0002;
  $  051.当前电制三相电压                       $    $  V            $    $  ANS051.BYTE004  $  if(x1 == 0x00) y=@0385;else if(x1 == 0x01) y=@0381;else if(x1 == 0x02) y=@0386;else if(x1 == 0x03) y=@0387;else if(x1 == 0x04) y=@0388;else if(x1 ==0x05) y=@0389;else y=@0002;
  $  052.当前电制单相电压                       $    $  V            $    $  ANS052.BYTE004  $  if(x1 == 0x00) y=@0380;else if(x1 == 0x01) y=@0381;else if(x1 == 0x02) y=@0382;else if(x1 == 0x03) y=@0383;else if(x1 == 0x04) y=@0384;else y=@0002;
  $  053.线电压                                 $    $  V            $    $  ANS053.BYTE004  $  y=x1+x2*256;

;******************************************************************************************************************************************************

动作测试:

$^ 00.设置驱动电机系统配置 
$^TYPE0
$^BUTTON:高配 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 04 2E 1F FF 00 00 00 00     $^

$^BUTTON:低配 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 04 2E 1F FF 01 00 00 00     $^

$^BUTTON:清除配置 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 04 2E 1F FF 02 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.当前电制频率设置 
$^TYPE0
$^BUTTON:50Hz 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 05 2F 2F 00 08 00 00 00     $^

$^BUTTON:60Hz 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 05 2F 2F 00 08 01 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.三相电放电电压设置 
$^TYPE0
$^BUTTON:208V 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 05 2F 2F 01 08 00 00 00     $^

$^BUTTON:220V 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 05 2F 2F 01 08 01 00 00     $^

$^BUTTON:380V 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 05 2F 2F 01 08 02 00 00     $^

$^BUTTON:400V 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 05 2F 2F 01 08 03 00 00     $^

$^BUTTON:415V 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 05 2F 2F 01 08 04 00 00     $^

$^BUTTON:480V 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 05 2F 2F 01 08 05 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.单相放电电压设置 
$^TYPE0
$^BUTTON:120V 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 05 2F 2F 02 08 00 00 00     $^

$^BUTTON:220V 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 05 2F 2F 02 08 01 00 00     $^

$^BUTTON:230V 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 05 2F 2F 02 08 02 00 00     $^

$^BUTTON:240V 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 05 2F 2F 02 08 03 00 00     $^

$^BUTTON:280V 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 05 2F 2F 02 08 04 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.VTOL(车辆对用电设备)对外放电设置 
$^TYPE0
$^BUTTON:VTOL(车辆对用电设备)单相 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 05 2F 2F 03 08 00 00 00     $^

$^BUTTON:VTOL(车辆对用电设备)三相 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 05 2F 2F 03 08 01 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.VTOV(车辆对车辆)对外放电设置 
$^TYPE0
$^BUTTON:对外放电 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 05 2F 2F 04 08 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.VTOG(车辆对电网)对外放电设置 
$^TYPE0
$^BUTTON:对外放电 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 05 2F 2F 05 08 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.退出放电状态 
$^TYPE0
$^BUTTON:退出放电 
$^REQ00:780 02 10 03 00 00 00 00 00     $^
$^REQ01:780 05 2F 2F 06 08 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:780 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
