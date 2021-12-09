
    车型ID：3c64

    模拟：协议模拟-->3c64

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~764,704

进入命令:

  $~  REQ000:764 02 10 03 00 00 00 00 00       $~  ANS000:764 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:764 02 3E 00 00 00 00 00 00       $!  ANS000:764 02 3E 00 00 00 00 00 00
  $!  REQ001:764 02 3E 00 00 00 00 00 00       $!  ANS001:764 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:764 03 19 02 09 00 00 00 00       $#  ANS000:764 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+(x3<<0); 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/41000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:764 04 14 FF FF FF 00 00 00       $$  ANS000:764 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:764 03 22 F1 87 00 00 00 00       $%  ANS000:764 03 22 F1 87 00 00 00 00
  $%  REQ001:764 03 22 F1 91 00 00 00 00       $%  ANS001:764 03 22 F1 91 00 00 00 00
  $%  REQ002:764 03 22 F1 94 00 00 00 00       $%  ANS002:764 03 22 F1 94 00 00 00 00

  $%  000:车辆制造商配件号:                     $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  001:车辆制造商电控单元(ECU)硬件号:        $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  002:系统供应商电控单元(ECU)软件号:        $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:764 03 22 60 00 00 00 00 00       $  ANS000:764 03 22 60 00 00 00 00 00
  $  REQ001:764 03 22 60 01 00 00 00 00       $  ANS001:764 03 22 60 01 00 00 00 00
  $  REQ002:764 03 22 60 02 00 00 00 00       $  ANS002:764 03 22 60 02 00 00 00 00
  $  REQ003:764 03 22 60 03 00 00 00 00       $  ANS003:764 03 22 60 03 00 00 00 00
  $  REQ004:764 03 22 60 04 00 00 00 00       $  ANS004:764 03 22 60 04 00 00 00 00
  $  REQ005:764 03 22 60 05 00 00 00 00       $  ANS005:764 03 22 60 05 00 00 00 00
  $  REQ006:764 03 22 60 06 00 00 00 00       $  ANS006:764 03 22 60 06 00 00 00 00
  $  REQ007:764 03 22 60 07 00 00 00 00       $  ANS007:764 03 22 60 07 00 00 00 00
  $  REQ008:764 03 22 60 11 00 00 00 00       $  ANS008:764 03 22 60 11 00 00 00 00
  $  REQ009:764 03 22 60 13 00 00 00 00       $  ANS009:764 03 22 60 13 00 00 00 00
  $  REQ010:764 03 22 60 14 00 00 00 00       $  ANS010:764 03 22 60 14 00 00 00 00
  $  REQ011:764 03 22 60 15 00 00 00 00       $  ANS011:764 03 22 60 15 00 00 00 00
  $  REQ012:764 03 22 60 16 00 00 00 00       $  ANS012:764 03 22 60 16 00 00 00 00
  $  REQ013:764 03 22 60 17 00 00 00 00       $  ANS013:764 03 22 60 17 00 00 00 00
  $  REQ014:764 03 22 60 18 00 00 00 00       $  ANS014:764 03 22 60 18 00 00 00 00
  $  REQ015:764 03 22 60 19 00 00 00 00       $  ANS015:764 03 22 60 19 00 00 00 00
  $  REQ016:764 03 22 60 20 00 00 00 00       $  ANS016:764 03 22 60 20 00 00 00 00
  $  REQ017:764 03 22 60 21 00 00 00 00       $  ANS017:764 03 22 60 21 00 00 00 00

  $  000.RF(射频)钥匙数量               $    $       $    $  ANS000.BYTE004  $  y=x;
  $  001.车辆运行模式                   $    $       $    $  ANS001.BYTE004  $  if(x==0x01)y=@007c;else if(x==0x02)y=@007d;else y=@0003;
  $  002.左侧转向灯                     $    $       $    $  ANS002.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  003.右侧转向灯                     $    $       $    $  ANS002.BYTE004  $  if(((x>>1)&1))y=@002d;else y=@002c;
  $  004.前雾灯                         $    $       $    $  ANS002.BYTE004  $  if(((x>>2)&1))y=@002d;else y=@002c;
  $  005.后雾灯                         $    $       $    $  ANS002.BYTE004  $  if(((x>>3)&1))y=@002d;else y=@002c;
  $  006.位置灯                         $    $       $    $  ANS002.BYTE004  $  if(((x>>4)&1))y=@002d;else y=@002c;
  $  007.近光灯                         $    $       $    $  ANS002.BYTE004  $  if(((x>>5)&1))y=@002d;else y=@002c;
  $  008.远光灯                         $    $       $    $  ANS002.BYTE004  $  if(((x>>6)&1))y=@002d;else y=@002c;
  $  009.危险                           $    $       $    $  ANS002.BYTE004  $  if(((x>>7)&1))y=@002d;else y=@002c;
  $  010.DRL(日间行车灯)(预留)          $    $       $    $  ANS002.BYTE005  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  011.前雨刮器(高速)                 $    $       $    $  ANS003.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  012.前雨刮器(低速/薄雾)            $    $       $    $  ANS003.BYTE004  $  if(((x>>1)&1))y=@002d;else y=@002c;
  $  013.前雨刮器(自动/间隔)            $    $       $    $  ANS003.BYTE004  $  if(((x>>2)&1))y=@002d;else y=@002c;
  $  014.后雨刮器                       $    $       $    $  ANS003.BYTE004  $  if(((x>>3)&1))y=@002d;else y=@002c;
  $  015.司机侧左前车窗升               $    $       $    $  ANS004.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  016.司机侧右前车窗升               $    $       $    $  ANS004.BYTE004  $  if(((x>>1)&1))y=@002d;else y=@002c;
  $  017.司机侧左后车窗升               $    $       $    $  ANS004.BYTE004  $  if(((x>>2)&1))y=@002d;else y=@002c;
  $  018.司机侧右后车窗升               $    $       $    $  ANS004.BYTE004  $  if(((x>>3)&1))y=@002d;else y=@002c;
  $  019.司机侧左前车窗降               $    $       $    $  ANS004.BYTE004  $  if(((x>>4)&1))y=@002d;else y=@002c;
  $  020.司机侧右前车窗降               $    $       $    $  ANS004.BYTE004  $  if(((x>>5)&1))y=@002d;else y=@002c;
  $  021.司机侧左后车窗降               $    $       $    $  ANS004.BYTE004  $  if(((x>>6)&1))y=@002d;else y=@002c;
  $  022.司机侧右后车窗降               $    $       $    $  ANS004.BYTE004  $  if(((x>>7)&1))y=@002d;else y=@002c;
  $  023.乘客侧右前车窗升               $    $       $    $  ANS004.BYTE005  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  024.乘客侧左后车窗升               $    $       $    $  ANS004.BYTE005  $  if(((x>>1)&1))y=@002d;else y=@002c;
  $  025.乘客侧右后车窗升               $    $       $    $  ANS004.BYTE005  $  if(((x>>2)&1))y=@002d;else y=@002c;
  $  026.乘客侧右前车窗降               $    $       $    $  ANS004.BYTE005  $  if(((x>>3)&1))y=@002d;else y=@002c;
  $  027.乘客侧左后车窗降               $    $       $    $  ANS004.BYTE005  $  if(((x>>4)&1))y=@002d;else y=@002c;
  $  028.乘客侧右后车窗降               $    $       $    $  ANS004.BYTE005  $  if(((x>>5)&1))y=@002d;else y=@002c;
  $  029.中控锁                         $    $       $    $  ANS005.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  030.中控解锁                       $    $       $    $  ANS005.BYTE004  $  if(((x>>1)&1))y=@002d;else y=@002c;
  $  031.锁芯锁止                       $    $       $    $  ANS005.BYTE004  $  if(((x>>2)&1))y=@002d;else y=@002c;
  $  032.锁芯解锁                       $    $       $    $  ANS005.BYTE004  $  if(((x>>3)&1))y=@002d;else y=@002c;
  $  033.温度指示器                     $    $       $    $  ANS005.BYTE004  $  if(((x>>4)&1))y=@002d;else y=@002c;
  $  034.禁止开关                       $    $       $    $  ANS005.BYTE004  $  if(((x>>5)&1))y=@002d;else y=@002c;
  $  035.左前车门微开                   $    $       $    $  ANS006.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  036.右前车门微开                   $    $       $    $  ANS006.BYTE004  $  if(((x>>1)&1))y=@002d;else y=@002c;
  $  037.左后车门微开                   $    $       $    $  ANS006.BYTE004  $  if(((x>>2)&1))y=@002d;else y=@002c;
  $  038.右后车门微开                   $    $       $    $  ANS006.BYTE004  $  if(((x>>3)&1))y=@002d;else y=@002c;
  $  039.发动机罩微开                   $    $       $    $  ANS006.BYTE004  $  if(((x>>4)&1))y=@002d;else y=@002c;
  $  040.后备箱微开                     $    $       $    $  ANS006.BYTE004  $  if(((x>>5)&1))y=@002d;else y=@002c;
  $  041.钥匙插入(无PEPS)               $    $       $    $  ANS007.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  042.ACC(弱电)                      $    $       $    $  ANS007.BYTE004  $  if(((x>>1)&1))y=@002d;else y=@002c;
  $  043.IGN(点火)                      $    $       $    $  ANS007.BYTE004  $  if(((x>>2)&1))y=@002d;else y=@002c;
  $  044.前清洗器                       $    $       $    $  ANS008.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  045.后清洗器                       $    $       $    $  ANS008.BYTE004  $  if(((x>>1)&1))y=@002d;else y=@002c;
  $  046.大灯清洗器(预留)               $    $       $    $  ANS008.BYTE004  $  if(((x>>2)&1))y=@002d;else y=@002c;
  $  047.前雨刮器                       $    $       $    $  ANS009.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  048.后雨刮器                       $    $       $    $  ANS009.BYTE004  $  if(((x>>1)&1))y=@002d;else y=@002c;
  $  049.后备箱解锁                     $    $       $    $  ANS010.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  050.电子转向管柱锁(ESCL)反馈       $    $       $    $  ANS011.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  051.碰撞指示器                     $    $       $    $  ANS012.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  052.SEN1(传感器1)(2S)              $    $       $    $  ANS013.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  053.SEN1(传感器1)(4S)              $    $       $    $  ANS013.BYTE004  $  if(((x>>1)&1))y=@002d;else y=@002c;
  $  054.SEN1(传感器1)(8S)              $    $       $    $  ANS013.BYTE004  $  if(((x>>2)&1))y=@002d;else y=@002c;
  $  055.SEN1(传感器1)(13S)             $    $       $    $  ANS013.BYTE004  $  if(((x>>3)&1))y=@002d;else y=@002c;
  $  056.喇叭指示器                     $    $       $    $  ANS014.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  057.后视镜折叠指示器               $    $       $    $  ANS015.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  058.左前转向灯反馈指示器           $    $       $    $  ANS016.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  059.右前转向灯反馈指示器           $    $       $    $  ANS017.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:764 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
