
    车型ID：2220

    模拟：协议模拟-->2220

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~74B

进入命令:

  $~  REQ000:743 02 10 01 00 00 00 00 00       $~  ANS000:74B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:743 02 3E 80 00 00 00 00 00       $!  ANS000:74B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:743 03 19 02 09 00 00 00 00       $#  ANS000:74B 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/c6000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:743 04 14 FF FF FF 00 00 00       $$  ANS000:74B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:743 03 22 F1 93 00 00 00 00       $%  ANS000:74B 03 22 F1 93 00 00 00 00
  $%  REQ001:743 03 22 F1 94 00 00 00 00       $%  ANS001:74B 03 22 F1 94 00 00 00 00
  $%  REQ002:743 03 22 F1 95 00 00 00 00       $%  ANS002:74B 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d.%02d.%02d],x1,x2,x3);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:743 03 22 00 01 00 00 00 00       $  ANS000:74B 03 22 00 01 00 00 00 00
  $  REQ001:743 03 22 00 02 00 00 00 00       $  ANS001:74B 03 22 00 02 00 00 00 00
  $  REQ002:743 03 22 00 03 00 00 00 00       $  ANS002:74B 03 22 00 03 00 00 00 00
  $  REQ003:743 03 22 00 04 00 00 00 00       $  ANS003:74B 03 22 00 04 00 00 00 00
  $  REQ004:743 03 22 00 05 00 00 00 00       $  ANS004:74B 03 22 00 05 00 00 00 00
  $  REQ005:743 03 22 00 06 00 00 00 00       $  ANS005:74B 03 22 00 06 00 00 00 00
  $  REQ006:743 03 22 00 07 00 00 00 00       $  ANS006:74B 03 22 00 07 00 00 00 00
  $  REQ007:743 03 22 00 08 00 00 00 00       $  ANS007:74B 03 22 00 08 00 00 00 00
  $  REQ008:743 03 22 00 09 00 00 00 00       $  ANS008:74B 03 22 00 09 00 00 00 00
  $  REQ009:743 03 22 00 0A 00 00 00 00       $  ANS009:74B 03 22 00 0A 00 00 00 00
  $  REQ010:743 03 22 00 0B 00 00 00 00       $  ANS010:74B 03 22 00 0B 00 00 00 00
  $  REQ011:743 03 22 00 0C 00 00 00 00       $  ANS011:74B 03 22 00 0C 00 00 00 00
  $  REQ012:743 03 22 00 0D 00 00 00 00       $  ANS012:74B 03 22 00 0D 00 00 00 00
  $  REQ013:743 03 22 00 0E 00 00 00 00       $  ANS013:74B 03 22 00 0E 00 00 00 00
  $  REQ014:743 03 22 01 01 00 00 00 00       $  ANS014:74B 03 22 01 01 00 00 00 00
  $  REQ015:743 03 22 01 02 00 00 00 00       $  ANS015:74B 03 22 01 02 00 00 00 00
  $  REQ016:743 03 22 01 04 00 00 00 00       $  ANS016:74B 03 22 01 04 00 00 00 00
  $  REQ017:743 03 22 01 06 00 00 00 00       $  ANS017:74B 03 22 01 06 00 00 00 00
  $  REQ018:743 03 22 01 07 00 00 00 00       $  ANS018:74B 03 22 01 07 00 00 00 00
  $  REQ019:743 03 22 01 08 00 00 00 00       $  ANS019:74B 03 22 01 08 00 00 00 00
  $  REQ020:743 03 22 01 09 00 00 00 00       $  ANS020:74B 03 22 01 09 00 00 00 00
  $  REQ021:743 03 22 00 16 00 00 00 00       $  ANS021:74B 03 22 00 16 00 00 00 00
  $  REQ022:743 03 22 00 1D 00 00 00 00       $  ANS022:74B 03 22 00 1D 00 00 00 00
  $  REQ023:743 03 22 00 1F 00 00 00 00       $  ANS023:74B 03 22 00 1F 00 00 00 00
  $  REQ024:743 03 22 00 20 00 00 00 00       $  ANS024:74B 03 22 00 20 00 00 00 00
  $  REQ025:743 03 22 00 21 00 00 00 00       $  ANS025:74B 03 22 00 21 00 00 00 00
  $  REQ026:743 03 22 00 22 00 00 00 00       $  ANS026:74B 03 22 00 22 00 00 00 00
  $  REQ027:743 03 22 00 23 00 00 00 00       $  ANS027:74B 03 22 00 23 00 00 00 00
  $  REQ028:743 03 22 00 24 00 00 00 00       $  ANS028:74B 03 22 00 24 00 00 00 00
  $  REQ029:743 03 22 00 25 00 00 00 00       $  ANS029:74B 03 22 00 25 00 00 00 00
  $  REQ030:743 03 22 00 26 00 00 00 00       $  ANS030:74B 03 22 00 26 00 00 00 00
  $  REQ031:743 03 22 00 2F 00 00 00 00       $  ANS031:74B 03 22 00 2F 00 00 00 00
  $  REQ032:743 03 22 00 36 00 00 00 00       $  ANS032:74B 03 22 00 36 00 00 00 00
  $  REQ033:743 03 22 00 37 00 00 00 00       $  ANS033:74B 03 22 00 37 00 00 00 00
  $  REQ034:743 03 22 00 38 00 00 00 00       $  ANS034:74B 03 22 00 38 00 00 00 00
  $  REQ035:743 03 22 00 39 00 00 00 00       $  ANS035:74B 03 22 00 39 00 00 00 00
  $  REQ036:743 03 22 00 40 00 00 00 00       $  ANS036:74B 03 22 00 40 00 00 00 00
  $  REQ037:743 03 22 00 41 00 00 00 00       $  ANS037:74B 03 22 00 41 00 00 00 00
  $  REQ038:743 03 22 00 42 00 00 00 00       $  ANS038:74B 03 22 00 42 00 00 00 00

  $  000.档位故障状态                    $    $               $    $  ANS000.BYTE004  $  switxh(x1)0x00: y=@0228;0x01: y=@0046;default: y=@02ae;
  $  001.过载告警                        $    $               $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@0228;0x01: y=@0046;default: y=@02ae;
  $  002.堵转告警                        $    $               $    $  ANS002.BYTE004  $  switxh(x1)0x00: y=@0228;0x01: y=@0046;default: y=@02ae;
  $  003.油门错误                        $    $               $    $  ANS003.BYTE004  $  switxh(x1)0x00: y=@0228;0x01: y=@0046;default: y=@02ae;
  $  004.碰撞告警                        $    $               $    $  ANS004.BYTE004  $  if((x1==1)) y=@04bc;else if((x1==2)) y=@04bd;else y=@02ae;
  $  005.主接触器状态                    $    $               $    $  ANS005.BYTE004  $  if((x1==0)) y=@0047;else if((x1==1)) y=@0048;else y=@02ae;
  $  006.整车控制器启动允许              $    $               $    $  ANS006.BYTE004  $  if((x1==0)) y=@00e4;else if((x1==1)) y=@02c7;else y=@02ae;
  $  007.整车控制器防盗解除状态          $    $               $    $  ANS007.BYTE004  $  if((((x2<<8)+x1)==0)) y=@04be;else if((((x2<<8)+x1)==1)) y=@001f;else if((((x2<<8)+x1)==2)) y=@0020;else y=@02ae;
  $  008.整车档位                        $    $               $    $  ANS008.BYTE004  $  if((x1==1)) y=@00d7;else if((x1==2)) y=@0071;else if((x1==3)) y=@0072;else if((x1==4)) y=@00d8;else y=@02ae;
  $  009.整车工作模式                    $    $               $    $  ANS009.BYTE004  $  if((x1==0)) y=@02b1;else if((x1==1)) y=@030d;else if((x1==6)) y=@0312;else if((x1==7)) y=@0313;else if((x1==8)) y=@04b9;else y=@0108;
  $  010.整车运行模式                    $    $               $    $  ANS010.BYTE004  $  if((x1==1)) y=@00d9;else if((x1==2)) y=@00da;else y=@02ae;
  $  011.动力系统状态                    $    $               $    $  ANS011.BYTE004  $  if((((x2<<8)+x1)==0)) y=@0045;else if((((x2<<8)+x1)==1)) y=@02ba;else if((((x2<<8)+x1)==2)) y=@02bb;else if((((x2<<8)+x1)==3)) y=@02bc;else y=@02ae;
  $  012.水泵状态                        $    $               $    $  ANS012.BYTE004  $  if((((x2<<8)+x1)==0)) y=@002d;else if((((x2<<8)+x1)==1)) y=@0000;else y=@0108;
  $  013.巡航状态                        $    $               $    $  ANS013.BYTE004  $  if((x1==0)) y=@02bd;else if((x1==1)) y=@02be;else y=@0108;
  $  014.油门深度                        $    $  %            $    $  ANS014.BYTE004  $  y=(x2<<8)+x1;
  $  015.刹车深度                        $    $  %            $    $  ANS015.BYTE004  $  y=(x2<<8)+x1;
  $  016.前驱目标扭矩                    $    $  牛顿米       $    $  ANS016.BYTE004  $  y=((x2<<8)+x1)*1.0/10-500;
  $  017.巡航目标车速                    $    $  km/h         $    $  ANS017.BYTE004  $  if((((x2<<8)+x1)>=0)&&(((x2<<8)+x1)<=3000))y=(((x2<<8)+x1))*1.0/10;else if((((x2<<8)+x1)==65535)) y=@04ba;else y=@0002;
  $  018.OK灯状态                        $    $               $    $  ANS018.BYTE004  $  if((x1==0)) y=@02bf;else if((x1==1)) y=@02c0;else y=@0002;
  $  019.无极风扇请求状态                $    $  %            $    $  ANS019.BYTE004  $  if((x1>=0)&&(x1<=100)) y=x1;else if((x1==255)) y=@04c2;else y=@0002;
  $  020.真空泵状态                      $    $               $    $  ANS020.BYTE004  $  if((x1==0)) y=@04c0;else if((x1==1)) y=@04c1;else y=@0002;
  $  021.EPB(电子驻车)状态               $    $               $    $  ANS021.BYTE004  $  switxh(x1)0x00: y=@0009;0x01: y=@0004;0x02: y=@00ea;0x03: y=@00eb;0x04: y=@0046;default: y=@0002;
  $  022.坡道坡度                        $    $               $    $  ANS022.BYTE004  $  if((((x2<<8)+x1)>=0)&&(((x2<<8)+x1)<=200))y=(((x2<<8)+x1))-100;else if((((x2<<8)+x1)==32767)) y=@04c3;else y=@02ae;
  $  023.水温值                          $    $  degree C     $    $  ANS023.BYTE004  $  y=x1-40;
  $  024.真空压力值                      $    $  degree C     $    $  ANS024.BYTE004  $  y=x1-40;
  $  025.水温报警                        $    $               $    $  ANS025.BYTE004  $  if((x1==0)) y=@022f;else if((x1==1)) y=@0230;else if((x1==255)) y=@04c4;else y=@0002;
  $  026.真空压力报警                    $    $               $    $  ANS026.BYTE004  $  if((x1==0)) y=@0045;else if((x1==1)) y=@0231;else if((x1==2)) y=@0232;else y=@0002;
  $  027.真空泵工作时间                  $    $  分钟         $    $  ANS027.BYTE004  $  y=UINT(x1*0x1000000+x2*0x10000+x3*0x100+x4);
  $  028.真空泵继电器状态                $    $               $    $  ANS028.BYTE004  $  if((x1==0)) y=@0045;else if((x1==1)) y=@04c5;else if((x1==2)) y=@04c6;else if((x1==3)) y=@04c7;else y=@0002;
  $  029.整车车速                        $    $  km/h         $    $  ANS029.BYTE004  $  if((x1>=0)&&(x1<=3000)) y=x1;else if((x1==65535)) y=@00c7;else y=@0002;
  $  030.总里程                          $    $  km           $    $  ANS030.BYTE004  $  y=((x3<<16)+(x2<<8)+x1)*1.0/10;
  $  031.倾角标定工作信息/是否校准       $    $               $    $  ANS031.BYTE004  $  if((((x2<<8)+x1)==0)) y=@00ec;else if((((x2<<8)+x1)==1)) y=@00ed;else y=@02ae;
  $  032.制动深度电压1                   $    $  V            $    $  ANS032.BYTE004  $  y=((x2<<8)+x1)*1.0/1000;
  $  033.制动深度电压2                   $    $  V            $    $  ANS033.BYTE004  $  y=((x2<<8)+x1)*1.0/1000;
  $  034.油门深度电压1                   $    $  V            $    $  ANS034.BYTE004  $  y=((x2<<8)+x1)*1.0/1000;
  $  035.油门深度电压2                   $    $  V            $    $  ANS035.BYTE004  $  y=((x2<<8)+x1)*1.0/1000;
  $  036.巡航配置                        $    $               $    $  ANS036.BYTE004  $  if((((x2<<8)+x1)==0)) y=@0013;else if((((x2<<8)+x1)==1)) y=@034e;else if((((x2<<8)+x1)==2)) y=@034f;else y=@0002;
  $  037.制动开关状态                    $    $               $    $  ANS037.BYTE004  $  if((((x2<<8)+x1)==0)) y=@00c0;else if((((x2<<8)+x1)==1)) y=@0003;else y=@0002;
  $  038.VIN是否写入                     $    $               $    $  ANS038.BYTE004  $  if((((x2<<8)+x1)==0)) y=@0265;else if((((x2<<8)+x1)==1)) y=@04bf;else y=@0002;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:743 30 08 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
