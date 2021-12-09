
    车型ID：3005

    模拟：协议模拟-->3005

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A1

进入命令:

  $~  REQ000:721 02 10 01 00 00 00 00 00       $~  ANS000:7A1 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:721 02 3E 00 00 00 00 00 00       $!  ANS000:7A1 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:721 03 19 01 09 00 00 00 00       $#  ANS000:7A1 03 19 01 09 00 00 00 00
  $#  REQ001:721 03 19 02 09 00 00 00 00       $#  ANS001:7A1 03 19 02 09 00 00 00 00

		控制公式：
			y=((x1<<8)+x2); 
			y=(x1<<16)+(x2<<8)+(x3<<0); 

  ANS000.BYTE05-06 控制故障码个数，从$#ANS001.BYTE04$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/3d000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="2"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:721 04 14 FF FF FF 00 00 00       $$  ANS000:7A1 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:721 03 22 F1 87 00 00 00 00       $%  ANS000:7A1 03 22 F1 87 00 00 00 00
  $%  REQ001:721 03 22 F1 8A 00 00 00 00       $%  ANS001:7A1 03 22 F1 8A 00 00 00 00
  $%  REQ002:721 03 22 F1 90 00 00 00 00       $%  ANS002:7A1 03 22 F1 90 00 00 00 00
  $%  REQ003:721 03 22 F1 97 00 00 00 00       $%  ANS003:7A1 03 22 F1 97 00 00 00 00
  $%  REQ004:721 03 22 F1 91 00 00 00 00       $%  ANS004:7A1 03 22 F1 91 00 00 00 00
  $%  REQ005:721 03 22 F1 8C 00 00 00 00       $%  ANS005:7A1 03 22 F1 8C 00 00 00 00
  $%  REQ006:721 03 22 F1 93 00 00 00 00       $%  ANS006:7A1 03 22 F1 93 00 00 00 00
  $%  REQ007:721 03 22 F1 95 00 00 00 00       $%  ANS007:7A1 03 22 F1 95 00 00 00 00

  $%  000:1.汽车制造商备用零件号：            $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:2.系统供应商识别符：                $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:3.VIN(车辆识别码)数据识别符：       $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  003:4.系统名称：                        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:5.ECU硬件号：                       $%    $%  ANS004.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:6.ECU流水编号：                     $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  006:7.ECU硬件版本号：                   $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  007:8.ECU软件版本号：                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.动态数据流
  $  00.动态数据流
  $  REQ000:721 03 22 09 00 00 00 00 00       $  ANS000:7A1 03 22 09 00 00 00 00 00
  $  REQ001:721 03 22 09 01 00 00 00 00       $  ANS001:7A1 03 22 09 01 00 00 00 00

  $  000.射频钥匙数目       $    $       $    $  ANS000.BYTE004  $  Y=X1;
  $  001.车辆运行模式       $    $       $    $  ANS001.BYTE004  $  if(X1==0x01) Y=@0264;else if(X1==0x02) Y=@0265;else Y=@01fa;

  $)  01.灯光状态
  $  01.灯光状态
  $  REQ000:721 03 22 09 02 00 00 00 00       $  ANS000:7A1 03 22 09 02 00 00 00 00

  $  000.左侧转向灯        $    $       $    $  ANS000.BYTE004  $  if(((X1>>0)&1)) Y=@009d;else Y=@009e;
  $  001.右侧转向灯        $    $       $    $  ANS000.BYTE004  $  if(((X1>>1)&1)) Y=@009d;else Y=@009e;
  $  002.前雾灯            $    $       $    $  ANS000.BYTE004  $  if(((X1>>2)&1)) Y=@009d;else Y=@009e;
  $  003.后雾灯            $    $       $    $  ANS000.BYTE004  $  if(((X1>>3)&1)) Y=@009d;else Y=@009e;
  $  004.小灯              $    $       $    $  ANS000.BYTE004  $  if(((X1>>4)&1)) Y=@009d;else Y=@009e;
  $  005.近光灯            $    $       $    $  ANS000.BYTE004  $  if(((X1>>5)&1)) Y=@009d;else Y=@009e;
  $  006.远光灯/闪烁       $    $       $    $  ANS000.BYTE004  $  if(((X1>>6)&1)) Y=@009d;else Y=@009e;
  $  007.危险灯            $    $       $    $  ANS000.BYTE004  $  if(((X1>>7)&1)) Y=@009d;else Y=@009e;
  $  008.自动大灯          $    $       $    $  ANS000.BYTE004  $  if(((X2>>0)&1)) Y=@009d;else Y=@009e;
  $  009.顶灯              $    $       $    $  ANS000.BYTE004  $  if(((X2>>2)&1)) Y=@009d;else Y=@009e;

  $)  02.车窗状态
  $  02.车窗状态
  $  REQ000:721 03 22 09 04 00 00 00 00       $  ANS000:7A1 03 22 09 04 00 00 00 00

  $  000.驾驶员侧左前车窗升高           $    $       $    $  ANS000.BYTE004  $  if(((X1>>0)&1)) Y=@009d;else Y=@009e;
  $  001.驾驶员侧右前车窗升高           $    $       $    $  ANS000.BYTE004  $  if(((X1>>1)&1)) Y=@009d;else Y=@009e;
  $  002.驾驶员侧左后车窗升高           $    $       $    $  ANS000.BYTE004  $  if(((X1>>2)&1)) Y=@009d;else Y=@009e;
  $  003.驾驶员侧右后车窗升高           $    $       $    $  ANS000.BYTE004  $  if(((X1>>3)&1)) Y=@009d;else Y=@009e;
  $  004.驾驶员侧左前车窗降低           $    $       $    $  ANS000.BYTE004  $  if(((X1>>4)&1)) Y=@009d;else Y=@009e;
  $  005.驾驶员侧右前车窗降低           $    $       $    $  ANS000.BYTE004  $  if(((X1>>5)&1)) Y=@009d;else Y=@009e;
  $  006.驾驶员侧左后车窗降低           $    $       $    $  ANS000.BYTE004  $  if(((X1>>6)&1)) Y=@009d;else Y=@009e;
  $  007.驾驶员侧右后车窗降低           $    $       $    $  ANS000.BYTE004  $  if(((X1>>7)&1)) Y=@009d;else Y=@009e;
  $  008.乘客侧右前车窗升高             $    $       $    $  ANS000.BYTE004  $  if(((X2>>0)&1)) Y=@009d;else Y=@009e;
  $  009.乘客侧左后车窗升高             $    $       $    $  ANS000.BYTE004  $  if(((X2>>1)&1)) Y=@009d;else Y=@009e;
  $  010.乘客侧右后车窗升高             $    $       $    $  ANS000.BYTE004  $  if(((X2>>2)&1)) Y=@009d;else Y=@009e;
  $  011.乘客侧右前车窗降低             $    $       $    $  ANS000.BYTE004  $  if(((X2>>3)&1)) Y=@009d;else Y=@009e;
  $  012.乘客侧左后车窗降低             $    $       $    $  ANS000.BYTE004  $  if(((X2>>4)&1)) Y=@009d;else Y=@009e;
  $  013.乘客侧右后车窗降低             $    $       $    $  ANS000.BYTE004  $  if(((X2>>5)&1)) Y=@009d;else Y=@009e;
  $  014.驾驶员侧AUTO（自动）降低       $    $       $    $  ANS000.BYTE004  $  if(((X2>>6)&1)) Y=@009d;else Y=@009e;

  $)  03.车锁状态
  $  03.车锁状态
  $  REQ000:721 03 22 09 05 00 00 00 00       $  ANS000:7A1 03 22 09 05 00 00 00 00

  $  000.中央锁止                       $    $       $    $  ANS000.BYTE004  $  if(((X1>>0)&1)) Y=@009d;else Y=@009e;
  $  001.中央解锁                       $    $       $    $  ANS000.BYTE004  $  if(((X1>>1)&1)) Y=@009d;else Y=@009e;
  $  002.机械点火钥匙置于锁止位置       $    $       $    $  ANS000.BYTE004  $  if(((X1>>2)&1)) Y=@009d;else Y=@009e;
  $  003.机械点火钥匙置于解锁位置       $    $       $    $  ANS000.BYTE004  $  if(((X1>>3)&1)) Y=@009d;else Y=@009e;

  $)  04.车门状态
  $  04.车门状态
  $  REQ000:721 03 22 09 06 00 00 00 00       $  ANS000:7A1 03 22 09 06 00 00 00 00

  $  000.左前车门微开       $    $       $    $  ANS000.BYTE004  $  if(((X1>>0)&1)) Y=@009d;else Y=@009e;
  $  001.右前车门微开       $    $       $    $  ANS000.BYTE004  $  if(((X1>>1)&1)) Y=@009d;else Y=@009e;
  $  002.左后车门微开       $    $       $    $  ANS000.BYTE004  $  if(((X1>>2)&1)) Y=@009d;else Y=@009e;
  $  003.右后车门微开       $    $       $    $  ANS000.BYTE004  $  if(((X1>>3)&1)) Y=@009d;else Y=@009e;
  $  004.行李箱微开         $    $       $    $  ANS000.BYTE004  $  if(((X1>>4)&1)) Y=@009d;else Y=@009e;

  $)  05.钥匙状态
  $  05.钥匙状态
  $  REQ000:721 03 22 09 07 00 00 00 00       $  ANS000:7A1 03 22 09 07 00 00 00 00

  $  000.插入钥匙              $    $       $    $  ANS000.BYTE004  $  if(((X1>>0)&1)) Y=@009d;else Y=@009e;
  $  001.ACC(附件通电档)       $    $       $    $  ANS000.BYTE004  $  if(((X1>>1)&1)) Y=@009d;else Y=@009e;
  $  002.ON/点火               $    $       $    $  ANS000.BYTE004  $  if(((X1>>2)&1)) Y=@009d;else Y=@009e;

  $)  06.后视镜、喇叭及油箱状态
  $  06.后视镜、喇叭及油箱状态
  $  REQ000:721 03 22 09 08 00 00 00 00       $  ANS000:7A1 03 22 09 08 00 00 00 00

  $  000.后视镜折回                       $    $       $    $  ANS000.BYTE004  $  if(((X1>>0)&1)) Y=@009d;else Y=@009e;
  $  001.后视镜展开                       $    $       $    $  ANS000.BYTE004  $  if(((X1>>1)&1)) Y=@009d;else Y=@009e;
  $  002.喇叭输入                         $    $       $    $  ANS000.BYTE004  $  if(((X1>>2)&1)) Y=@009d;else Y=@009e;
  $  003.油箱盖释放输入                   $    $       $    $  ANS000.BYTE004  $  if(((X1>>3)&1)) Y=@009d;else Y=@009e;
  $  004.碰撞输入信号输入（预留的）       $    $       $    $  ANS000.BYTE004  $  if(((X1>>4)&1)) Y=@009d;else Y=@009e;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:721 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
