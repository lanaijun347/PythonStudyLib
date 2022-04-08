
    车型ID：1108

    模拟：协议模拟-->1108

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~74B

进入命令:

  $~  REQ000:743 02 10 01 00 00 00 00 00       $~  ANS000:74B 02 10 01 00 00 00 00 00
  $~  REQ001:743 02 10 03 00 00 00 00 00       $~  ANS001:74B 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:743 02 3E 80 00 00 00 00 00       $!  ANS000:74B 02 3E 80 00 00 00 00 00

退出命令:

  $@  REQ000:743 02 10 01 00 00 00 00 00       $@  ANS000:74B 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:743 03 19 02 09 00 00 00 00       $#  ANS000:74B 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


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
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:743 03 22 00 01 00 00 00 00       $  ANS000:74B 03 22 00 01 00 00 00 00
  $  REQ001:743 03 22 00 03 00 00 00 00       $  ANS001:74B 03 22 00 03 00 00 00 00
  $  REQ002:743 03 22 00 04 00 00 00 00       $  ANS002:74B 03 22 00 04 00 00 00 00
  $  REQ003:743 03 22 00 05 00 00 00 00       $  ANS003:74B 03 22 00 05 00 00 00 00
  $  REQ004:743 03 22 00 06 00 00 00 00       $  ANS004:74B 03 22 00 06 00 00 00 00
  $  REQ005:743 03 22 00 07 00 00 00 00       $  ANS005:74B 03 22 00 07 00 00 00 00
  $  REQ006:743 03 22 00 08 00 00 00 00       $  ANS006:74B 03 22 00 08 00 00 00 00
  $  REQ007:743 03 22 00 0A 00 00 00 00       $  ANS007:74B 03 22 00 0A 00 00 00 00
  $  REQ008:743 03 22 00 0B 00 00 00 00       $  ANS008:74B 03 22 00 0B 00 00 00 00
  $  REQ009:743 03 22 00 0C 00 00 00 00       $  ANS009:74B 03 22 00 0C 00 00 00 00
  $  REQ010:743 03 22 00 0D 00 00 00 00       $  ANS010:74B 03 22 00 0D 00 00 00 00
  $  REQ011:743 03 22 00 0E 00 00 00 00       $  ANS011:74B 03 22 00 0E 00 00 00 00
  $  REQ012:743 03 22 00 0F 00 00 00 00       $  ANS012:74B 03 22 00 0F 00 00 00 00
  $  REQ013:743 03 22 00 10 00 00 00 00       $  ANS013:74B 03 22 00 10 00 00 00 00
  $  REQ014:743 03 22 00 11 00 00 00 00       $  ANS014:74B 03 22 00 11 00 00 00 00
  $  REQ015:743 03 22 00 12 00 00 00 00       $  ANS015:74B 03 22 00 12 00 00 00 00
  $  REQ016:743 03 22 00 14 00 00 00 00       $  ANS016:74B 03 22 00 14 00 00 00 00
  $  REQ017:743 03 22 00 15 00 00 00 00       $  ANS017:74B 03 22 00 15 00 00 00 00
  $  REQ018:743 03 22 00 16 00 00 00 00       $  ANS018:74B 03 22 00 16 00 00 00 00
  $  REQ019:743 03 22 00 1E 00 00 00 00       $  ANS019:74B 03 22 00 1E 00 00 00 00
  $  REQ020:743 03 22 00 1F 00 00 00 00       $  ANS020:74B 03 22 00 1F 00 00 00 00
  $  REQ021:743 03 22 00 20 00 00 00 00       $  ANS021:74B 03 22 00 20 00 00 00 00
  $  REQ022:743 03 22 00 27 00 00 00 00       $  ANS022:74B 03 22 00 27 00 00 00 00
  $  REQ023:743 03 22 00 28 00 00 00 00       $  ANS023:74B 03 22 00 28 00 00 00 00
  $  REQ024:743 03 22 00 29 00 00 00 00       $  ANS024:74B 03 22 00 29 00 00 00 00
  $  REQ025:743 03 22 00 2F 00 00 00 00       $  ANS025:74B 03 22 00 2F 00 00 00 00
  $  REQ026:743 03 22 00 30 00 00 00 00       $  ANS026:74B 03 22 00 30 00 00 00 00
  $  REQ027:743 03 22 00 32 00 00 00 00       $  ANS027:74B 03 22 00 32 00 00 00 00

  $  000.动力源组合模式                     $    $               $    $  ANS000.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@02b1;else if((x1==0x01)&&(x2==0x00))y=@02b2;else if((x1==0x02)&&(x2==0x00))y=@02b3;else if((x1==0x03)&&(x2==0x00))y=@02b4;else if((x1==0x04)&&(x2==0x00))y=@02b5;else if((x1==0x05)&&(x2==0x00))y=@02b6;else if((x1==0x06)&&(x2==0x00))y=@02b7;else if((x1==0x07)&&(x2==0x00))y=@02b8;else if((x1==0x08)&&(x2==0x00))y=@02b9;else y=@02ae;
  $  001.发动机启动命令                     $    $               $    $  ANS001.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@02c5;else if((x1==0x01)&&(x2==0x00))y=@02c6;else y=@02ae;
  $  002.当前允许发动机起方式               $    $               $    $  ANS002.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@0108;else if((x1==0x01)&&(x2==0x00))y=@02c2;else if((x1==0x02)&&(x2==0x00))y=@02c3;else if((x1==0x03)&&(x2==0x00))y=@02c4;else y=@02ae;
  $  003.离合器强制脱开命令                 $    $               $    $  ANS003.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@00df;else if((x1==0x01)&&(x2==0x00))y=@00e0;else y=@02ae;
  $  004.前驱动电机控制器启动允许命令       $    $               $    $  ANS004.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@00e4;else if((x1==0x01)&&(x2==0x00))y=@02c7;else y=@02ae;
  $  005.后驱动电机控制器启动允许命令       $    $               $    $  ANS005.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@00e4;else if((x1==0x01)&&(x2==0x00))y=@02c7;else y=@02ae;
  $  006.整车控制器防盗解除状态             $    $               $    $  ANS006.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@00e1;else if((x1==0x01)&&(x2==0x00))y=@00e2;else if((x1==0x02)&&(x2==0x00))y=@00e3;else y=@02ae;
  $  007.整车档位                           $    $               $    $  ANS007.BYTE004  $  if((x1==0x01)&&(x2==0x00))y=@00d7;else if((x1==0x02)&&(x2==0x00))y=@0071;else if((x1==0x03)&&(x2==0x00))y=@0072;else if((x1==0x04)&&(x2==0x00))y=@00d8;else y=@02ae;
  $  008.整车工作模式                       $    $               $    $  ANS008.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@00d2;else if((x1==0x01)&&(x2==0x00))y=@00d3;else if((x1==0x02)&&(x2==0x00))y=@00d4;else if((x1==0x03)&&(x2==0x00))y=@00d5;else y=@02ae;
  $  009.整车运行模式                       $    $               $    $  ANS009.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@00d9;else if((x1==0x01)&&(x2==0x00))y=@00da;else y=@02ae;
  $  010.动力系统状态                       $    $               $    $  ANS010.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@0045;else if((x1==0x01)&&(x2==0x00))y=@02ba;else if((x1==0x02)&&(x2==0x00))y=@02bb;else if((x1==0x03)&&(x2==0x00))y=@02bc;else y=@02ae;
  $  011.水泵状态                           $    $               $    $  ANS011.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@002d;else if((x1==0x01)&&(x2==0x00))y=@0000;else y=@02ae;
  $  012.巡航状态                           $    $               $    $  ANS012.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@02bd;else if((x1==0x01)&&(x2==0x00))y=@02be;else y=@02ae;
  $  013.巡航目标车速                       $    $  km/h         $    $  ANS013.BYTE004  $  y=(x1*26.0/255)+x2*25.6;
  $  014.风扇请求状态                       $    $  牛顿米       $    $  ANS014.BYTE004  $  y=(x1+x2*256);
  $  015.前驱目标扭矩                       $    $  牛顿米       $    $  ANS015.BYTE004  $  y=(x1*26.0/255)+x2*25.6-500;
  $  016.油门深度                           $    $  %            $    $  ANS016.BYTE004  $  y=(x1+x2*256);
  $  017.刹车深度                           $    $  %            $    $  ANS017.BYTE004  $  y=(x1+x2*256);
  $  018.冷却液温度                         $    $  degree C     $    $  ANS018.BYTE004  $  y=(x1+x2*256)-40;
  $  019.后驱目标扭矩                       $    $  牛顿米       $    $  ANS019.BYTE004  $  y=(x1*26.0/255)+x2*25.6-500;
  $  020.发动机目标扭矩                     $    $  牛顿米       $    $  ANS020.BYTE004  $  y=(x1*26.0/255)+x2*25.6-500;
  $  021.OK灯信息                           $    $               $    $  ANS021.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@02bf;else if((x1==0x01)&&(x2==0x00))y=@02c0;else if((x1==0x02)&&(x2==0x00))y=@02c1;else y=@02ae;
  $  022.电里程                             $    $  km           $    $  ANS022.BYTE004  $  y=(x1+x2*256+x3*256*256);
  $  023.总里程                             $    $  km           $    $  ANS023.BYTE004  $  y=(x1+x2*256+x3*256*256);
  $  024.整车驱动电机系统配置类型           $    $               $    $  ANS024.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@02ac;else if((x1==0x01)&&(x2==0x00))y=@02ad;else if((x1==0x02)&&(x2==0x00))y=@0013;else y=@02ae;
  $  025.倾角标定工作信息/是否校准          $    $               $    $  ANS025.BYTE004  $  if((x1==0x00))y=@00ec;else if((x1==0x01))y=@00ed;else y=@02ae;
  $  026.错误信息                           $    $               $    $  ANS025.BYTE005  $  if((x1==0x00))y=@00f3;else if((x1==0x01))y=@01d9;else y=@02ae;
  $  027.坡道坡度                           $    $  °           $    $  ANS025.BYTE006  $  if(((x1+x2*256)*0.1)<31) y=(x1+x2*256)*0.1;else if(((x1+(x2-256)*256)*0.1)>(0-31)) y=(x1+(x2-256)*256)*0.1;else y=@02ae;
  $  028.前电机目标档位                     $    $               $    $  ANS026.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@02af;else if((x1==0x01)&&(x2==0x00))y=@00ef;else if((x1==0x02)&&(x2==0x00))y=@00f0;else if((x1==0x03)&&(x2==0x00))y=@00f1;else if((x1==0x04)&&(x2==0x00))y=@00f2;else y=@02ae;
  $  029.售后软件版本号                     $    $               $    $  ANS027.BYTE004  $  if(((x1+x2*256)*0.1)<31) y=(x1+x2*256)*0.1;else if(((x1+(x2-256)*256)*0.1)>(0-31)) y=(x1+(x2-256)*256)*0.1;else y=@02ae;

;******************************************************************************************************************************************************

动作测试:

$^ 00.设置整车控制器系统配置类型 
$^TYPE0
$^BUTTON:四驱 
$^REQ00:743 02 10 03 00 00 00 00 00     $^
$^REQ01:743 04 2E 1F FF 00 00 00 00     $^

$^BUTTON:两驱 
$^REQ00:743 02 10 03 00 00 00 00 00     $^
$^REQ01:743 04 2E 1F FF 01 00 00 00     $^

$^BUTTON:清除配置 
$^REQ00:743 02 10 03 00 00 00 00 00     $^
$^REQ01:743 04 2E 1F FF 02 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:743 30 08 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
