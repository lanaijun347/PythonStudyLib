
    车型ID：2109

    模拟：协议模拟-->2109

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:743 02 10 01 00 00 00 00 00       $~  ANS000:74B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:743 02 3E 80 00 00 00 00 00       $!  ANS000:74B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:743 03 19 02 09 00 00 00 00       $#  ANS000:74B 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/b1000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:743 04 14 FF FF FF 00 00 00       $$  ANS000:74B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:743 03 22 F1 93 00 00 00 00       $%  ANS000:74B 03 22 F1 93 00 00 00 00
  $%  REQ001:743 03 22 F1 94 00 00 00 00       $%  ANS001:74B 03 22 F1 94 00 00 00 00
  $%  REQ002:743 03 22 F1 95 00 00 00 00       $%  ANS002:74B 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%d%s%d%s%d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%d%s%d%s%d%s],x1,@001d,x2,@001e,x3,@001f);
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
  $  REQ027:743 03 22 00 31 00 00 00 00       $  ANS027:74B 03 22 00 31 00 00 00 00
  $  REQ028:743 03 22 00 32 00 00 00 00       $  ANS028:74B 03 22 00 32 00 00 00 00
  $  REQ029:743 03 22 00 33 00 00 00 00       $  ANS029:74B 03 22 00 33 00 00 00 00
  $  REQ030:743 03 22 1F F0 00 00 00 00       $  ANS030:74B 03 22 1F F0 00 00 00 00

  $  000:动力源组合模式                     $    $               $    $  ANS000.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@03e9;else if((x1==0x01)&&(x2==0x00))y=@04f9;else if((x1==0x02)&&(x2==0x00))y=@04fa;else if((x1==0x03)&&(x2==0x00))y=@04fb;else if((x1==0x04)&&(x2==0x00))y=@04fc;else if((x1==0x05)&&(x2==0x00))y=@04fd;else if((x1==0x06)&&(x2==0x00))y=@04fe;else if((x1==0x07)&&(x2==0x00))y=@04ff;else if((x1==0x08)&&(x2==0x00))y=@0500;else y=@03e4;
  $  001:发动机启动命令                     $    $               $    $  ANS001.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@04f5;else if((x1==0x01)&&(x2==0x00))y=@04f6;else y=@03e4;
  $  002:当前允许发动机起方式               $    $               $    $  ANS002.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@00d6;else if((x1==0x01)&&(x2==0x00))y=@0628;else if((x1==0x02)&&(x2==0x00))y=@04f3;else if((x1==0x03)&&(x2==0x00))y=@04f4;else y=@03e4;
  $  003:离合器强制脱开命令                 $    $               $    $  ANS003.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@04f7;else if((x1==0x01)&&(x2==0x00))y=@04f8;else y=@03e4;
  $  004:前驱动电机控制器启动允许命令       $    $               $    $  ANS004.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@03d6;else if((x1==0x01)&&(x2==0x00))y=@03e3;else y=@03e4;
  $  005:后驱电动机控制器启动允许命令       $    $               $    $  ANS005.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@03d6;else if((x1==0x01)&&(x2==0x00))y=@03e3;else y=@03e4;
  $  006:整车控制器防盗解除状态             $    $               $    $  ANS006.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@0501;else if((x1==0x01)&&(x2==0x00))y=@0502;else if((x1==0x02)&&(x2==0x00))y=@03e5;else y=@03e4;
  $  007:整车档位                           $    $               $    $  ANS007.BYTE004  $  if((x1==0x01)&&(x2==0x00))y=@0132;else if((x1==0x02)&&(x2==0x00))y=@00c7;else if((x1==0x03)&&(x2==0x00))y=@00c8;else if((x1==0x04)&&(x2==0x00))y=@0133;else y=@03e4;
  $  008:整车工作模式                       $    $               $    $  ANS008.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@0503;else if((x1==0x01)&&(x2==0x00))y=@0504;else if((x1==0x02)&&(x2==0x00))y=@0505;else if((x1==0x03)&&(x2==0x00))y=@0506;else y=@03e4;
  $  009:整车运行模式                       $    $               $    $  ANS009.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@0140;else if((x1==0x01)&&(x2==0x00))y=@0141;else y=@03e4;
  $  010:动力系统状态                       $    $               $    $  ANS010.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@0022;else if((x1==0x01)&&(x2==0x00))y=@03ee;else if((x1==0x02)&&(x2==0x00))y=@03ef;else if((x1==0x03)&&(x2==0x00))y=@03f0;else y=@03e4;
  $  011:水泵状态                           $    $               $    $  ANS011.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@003b;else if((x1==0x01)&&(x2==0x00))y=@0005;else y=@03e4;
  $  012:巡航状态                           $    $               $    $  ANS012.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@01af;else if((x1==0x01)&&(x2==0x00))y=@01b0;else y=@03e4;
  $  013:巡航目标车速                       $    $  km/h         $    $  ANS013.BYTE004  $  y=((x2<<8)+x1)*0.1;
  $  014:风扇请求状态                       $    $  牛顿米       $    $  ANS014.BYTE004  $  y=(x2<<8)+x1;
  $  015:前驱目标扭矩                       $    $  牛顿米       $    $  ANS015.BYTE004  $  y=((x2<<8)+x1)*0.1-500;
  $  016:油门深度                           $    $  %            $    $  ANS016.BYTE004  $  y=(x2<<8)+x1;
  $  017:刹车深度                           $    $  %            $    $  ANS017.BYTE004  $  y=(x2<<8)+x1;
  $  018:冷却液温度                         $    $  degree C     $    $  ANS018.BYTE004  $  y=((x2<<8)+x1)-40;
  $  019:后驱目标扭矩                       $    $  牛顿米       $    $  ANS019.BYTE004  $  y=((x2<<8)+x1)*0.1-500;
  $  020:发动机目标扭矩                     $    $  牛顿米       $    $  ANS020.BYTE004  $  y=((x2<<8)+x1)*0.1-500;
  $  021:OK灯信息                           $    $               $    $  ANS021.BYTE004  $  if((x1==0x00)&&(x2==0x00)) y=@00a2;else if((x1==0x01)&&(x2==0x00)) y=@00a1;else if((x1==0x02)&&(x2==0x00)) y=@050e;else y=@03e4;
  $  022:电里程                             $    $  km           $    $  ANS022.BYTE004  $  y=(x3<<16)+(x2<<8)+x1;
  $  023:总里程                             $    $  km           $    $  ANS023.BYTE004  $  y=(x3<<16)+(x2<<8)+x1;
  $  024:整车驱动电机系统配置类型           $    $               $    $  ANS024.BYTE004  $  if((x1==0x00)&&(x2==0x00)) y=@0507;else if((x1==0x01)&&(x2==0x00)) y=@0508;else if((x1==0x02)&&(x2==0x00)) y=@000f;else y=@03e4;
  $  025:倾角标定工作信息/是否校准          $    $               $    $  ANS025.BYTE004  $  switxh(x1)0x00: y=@01b4;0x01: y=@01b5;default: y=@03e4;
  $  026:错误信息                           $    $               $    $  ANS025.BYTE005  $  switxh(x1)0x00: y=@054c;0x01: y=@0099;default: y=@03e4;
  $  027:坡道坡度                           $    $  °           $    $  ANS025.BYTE006  $  if((((x2<<8)+x1)>=0)&&(((x2<<8)+x1)<=300))y=(((x2<<8)+x1))*0.1;else if((((x2<<8)+x1)>=65236)&&(((x2<<8)+x1)<=65535))y=((((x2<<8)+x1))-65536)*0.1;else if((((x2<<8)+x1)==32767)) y=@0401;else y=@03e4;
  $  028:前电机目标档位                     $    $               $    $  ANS026.BYTE004  $  if((x1==0x00)&&(x2==0x00)) y=@0509;else if((x1==0x01)&&(x2==0x00)) y=@050a;else if((x1==0x02)&&(x2==0x00)) y=@050b;else if((x1==0x03)&&(x2==0x00)) y=@050c;else if((x1==0x04)&&(x2==0x00)) y=@050d;else y=@03e4;
  $  029:BSG目标扭矩                        $    $  牛顿米       $    $  ANS027.BYTE004  $  y=((x2<<8)+x1)*1.0/10-500;
  $  030:BSG目标转速                        $    $  rpm          $    $  ANS028.BYTE004  $  y=((x2<<8)+x1)-3000;
  $  031:BSG目标电压                        $    $  V            $    $  ANS029.BYTE004  $  y=((x2<<8)+x1)*4;
  $  032:售后软件版本号                     $    $               $    $  ANS030.BYTE004  $  y=SPRINTF([%d.%d.%d],x1,x2,x3);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:743 30 08 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
