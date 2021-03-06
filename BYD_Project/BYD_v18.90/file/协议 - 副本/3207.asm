
    车型ID：3207

    模拟：协议模拟-->3207

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

  $*$*DTC/23000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:743 04 14 FF FF FF 00 00 00       $$  ANS000:74B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:743 03 22 F1 93 00 00 00 00       $%  ANS000:74B 03 22 F1 93 00 00 00 00
  $%  REQ001:743 03 22 F1 94 00 00 00 00       $%  ANS001:74B 03 22 F1 94 00 00 00 00
  $%  REQ002:743 03 22 F1 95 00 00 00 00       $%  ANS002:74B 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%d%s%02d%s%02d%s],x1+2000,@0197,x2,@0198,x3,@0199);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%d.%02d.%02d],x1+2000,x2,x3);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:743 03 22 00 01 00 00 00 00       $  ANS000:74B 03 22 00 01 00 00 00 00
  $  REQ001:743 03 22 00 02 00 00 00 00       $  ANS001:74B 03 22 00 02 00 00 00 00
  $  REQ002:743 03 22 00 04 00 00 00 00       $  ANS002:74B 03 22 00 04 00 00 00 00
  $  REQ003:743 03 22 00 05 00 00 00 00       $  ANS003:74B 03 22 00 05 00 00 00 00
  $  REQ004:743 03 22 00 06 00 00 00 00       $  ANS004:74B 03 22 00 06 00 00 00 00
  $  REQ005:743 03 22 00 07 00 00 00 00       $  ANS005:74B 03 22 00 07 00 00 00 00
  $  REQ006:743 03 22 00 08 00 00 00 00       $  ANS006:74B 03 22 00 08 00 00 00 00
  $  REQ007:743 03 22 00 09 00 00 00 00       $  ANS007:74B 03 22 00 09 00 00 00 00
  $  REQ008:743 03 22 00 0A 00 00 00 00       $  ANS008:74B 03 22 00 0A 00 00 00 00
  $  REQ009:743 03 22 00 0B 00 00 00 00       $  ANS009:74B 03 22 00 0B 00 00 00 00
  $  REQ010:743 03 22 00 0C 00 00 00 00       $  ANS010:74B 03 22 00 0C 00 00 00 00
  $  REQ011:743 03 22 01 01 00 00 00 00       $  ANS011:74B 03 22 01 01 00 00 00 00
  $  REQ012:743 03 22 01 04 00 00 00 00       $  ANS012:74B 03 22 01 04 00 00 00 00
  $  REQ013:743 03 22 01 07 00 00 00 00       $  ANS013:74B 03 22 01 07 00 00 00 00
  $  REQ014:743 03 22 01 09 00 00 00 00       $  ANS014:74B 03 22 01 09 00 00 00 00
  $  REQ015:743 03 22 01 0A 00 00 00 00       $  ANS015:74B 03 22 01 0A 00 00 00 00
  $  REQ016:743 03 22 01 0B 00 00 00 00       $  ANS016:74B 03 22 01 0B 00 00 00 00
  $  REQ017:743 03 22 00 1D 00 00 00 00       $  ANS017:74B 03 22 00 1D 00 00 00 00
  $  REQ018:743 03 22 00 20 00 00 00 00       $  ANS018:74B 03 22 00 20 00 00 00 00
  $  REQ019:743 03 22 00 21 00 00 00 00       $  ANS019:74B 03 22 00 21 00 00 00 00
  $  REQ020:743 03 22 00 22 00 00 00 00       $  ANS020:74B 03 22 00 22 00 00 00 00
  $  REQ021:743 03 22 00 23 00 00 00 00       $  ANS021:74B 03 22 00 23 00 00 00 00
  $  REQ022:743 03 22 00 24 00 00 00 00       $  ANS022:74B 03 22 00 24 00 00 00 00
  $  REQ023:743 03 22 00 25 00 00 00 00       $  ANS023:74B 03 22 00 25 00 00 00 00
  $  REQ024:743 03 22 00 26 00 00 00 00       $  ANS024:74B 03 22 00 26 00 00 00 00
  $  REQ025:743 03 22 00 2F 00 00 00 00       $  ANS025:74B 03 22 00 2F 00 00 00 00
  $  REQ026:743 03 22 00 38 00 00 00 00       $  ANS026:74B 03 22 00 38 00 00 00 00
  $  REQ027:743 03 22 00 39 00 00 00 00       $  ANS027:74B 03 22 00 39 00 00 00 00
  $  REQ028:743 03 22 00 41 00 00 00 00       $  ANS028:74B 03 22 00 41 00 00 00 00
  $  REQ029:743 03 22 00 42 00 00 00 00       $  ANS029:74B 03 22 00 42 00 00 00 00

  $  000.档位故障状态                    $    $           $    $  ANS000.BYTE004  $  switxh(x1)0x00: y=@014c;0x01: y=@0167;default: y=@0120;
  $  001.过载告警                        $    $           $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@014c;0x01: y=@0167;default: y=@0120;
  $  002.油门错误                        $    $           $    $  ANS002.BYTE004  $  switxh(x1)0x00: y=@014c;0x01: y=@0167;default: y=@0120;
  $  003.碰撞告警                        $    $           $    $  ANS003.BYTE004  $  if(x1==1) y=@022c;else if(x1==2) y=@022d;else y=@0120;
  $  004.主接触器状态                    $    $           $    $  ANS004.BYTE004  $  if(x1==0) y=@002a;else if(x1==1) y=@002b;else y=@0120;
  $  005.整车控制器启动允许              $    $           $    $  ANS005.BYTE004  $  if(x1==0) y=@013f;else if(x1==1) y=@0140;else y=@0120;
  $  006.整车控制器防盗解除状态          $    $           $    $  ANS006.BYTE004  $  if((x2*256+x1)==0) y=@013e;else if((x2*256+x1)==1) y=@0191;else if((x2*256+x1)==2) y=@0192;else y=@0120;
  $  007.整车档位                        $    $           $    $  ANS007.BYTE004  $  if(x1==1) y=@013a;else if(x1==2) y=@010d;else if(x1==3) y=@010e;else if(x1==4) y=@013b;else y=@0120;
  $  008.整车工作模式                    $    $           $    $  ANS008.BYTE004  $  if((x3*256*256+x2*256+x1)==0) y=@0131;else if((x3*256*256+x2*256+x1)==1) y=@016b;else if((x3*256*256+x2*256+x1)==6) y=@0170;else if((x3*256*256+x2*256+x1)==7) y=@0171;else if((x3*256*256+x2*256+x1)==8) y=@022b;else y=@0120;
  $  009.整车运行模式                    $    $           $    $  ANS009.BYTE004  $  if(x1==1) y=@0124;else if(x1==2) y=@0125;else y=@0120;
  $  010.动力系统状态                    $    $           $    $  ANS010.BYTE004  $  if((x2*256+x1)==0) y=@0078;else if((x2*256+x1)==1) y=@0121;else if((x2*256+x1)==2) y=@0122;else if((x2*256+x1)==3) y=@0123;else y=@0120;
  $  011.油门深度                        $    $  %        $    $  ANS011.BYTE004  $  y=(x2*256+x1);
  $  012.前驱目标扭矩                    $    $  NM       $    $  ANS012.BYTE004  $  y=SPRINTF([%.1f],(x2*256+x1)/10-500);
  $  013.OK灯状态                        $    $           $    $  ANS013.BYTE004  $  if(x1==0) y=@0029;else if(x1==1) y=@0028;else y=@0001;
  $  014.真空泵状态                      $    $           $    $  ANS014.BYTE004  $  if(x1==0) y=@0238;else if(x1==1) y=@0239;else y=@0001;
  $  015.风扇高速继电器状态              $    $           $    $  ANS015.BYTE004  $  if(x1==0) y=@0236;else if(x1==1) y=@0237;else if(x1==255) y=@0235;else y=@0001;
  $  016.风扇低速继电器状态              $    $           $    $  ANS016.BYTE004  $  if(x1==0) y=@0233;else if(x1==1) y=@0234;else if(x1==255) y=@0235;else y=@0001;
  $  017.坡道坡度                        $    $           $    $  ANS017.BYTE004  $  if(((x2*256+x1)>=0)&&((x2*256+x1)<=200)) y=(x2*256+x1)-100;else if((x2*256+x1)==32767) y=@015a;else y=@0120;
  $  018.真空压力值                      $    $  kpa      $    $  ANS018.BYTE004  $  y=x1;
  $  019.水温报警                        $    $           $    $  ANS019.BYTE004  $  if(x1==0) y=@023f;else if(x1==1) y=@0240;else if(x1==255) y=@0241;else y=@0001;
  $  020.真空压力报警                    $    $           $    $  ANS020.BYTE004  $  if(x1==0) y=@0078;else if(x1==1) y=@023d;else if(x1==2) y=@023e;else y=@0001;
  $  021.真空泵工作时间                  $    $  Min      $    $  ANS021.BYTE004  $  y=(x4*256*256*256+x3*256*256+x2*256+x1);
  $  022.真空泵继电器状态                $    $           $    $  ANS022.BYTE004  $  if(x1==0) y=@0078;else if(x1==1) y=@023a;else if(x1==2) y=@023b;else if(x1==3) y=@023c;else y=@0001;
  $  023.整车车速                        $    $  km/h     $    $  ANS023.BYTE004  $  if(((x2*256+x1)>=0)&&((x2*256+x1)<=3000)) y=SPRINTF([%.1f],(x2*256+x1)*0.1);else if((x2*256+x1)==65535) y=@0027;else y=@0001;
  $  024.总里程                          $    $  km       $    $  ANS024.BYTE004  $  y=SPRINTF([%.1f],(x3*256*256+x2*256+x1)/10);
  $  025.倾角标定工作信息/是否校准       $    $           $    $  ANS025.BYTE004  $  if((x2*256+x1)==0) y=@015d;else if((x2*256+x1)==1) y=@015e;else y=@0120;
  $  026.油门深度电压1                   $    $  V        $    $  ANS026.BYTE004  $  y=SPRINTF([%.3f],(x2*256+x1)/1000);
  $  027.油门深度电压2                   $    $  V        $    $  ANS027.BYTE004  $  y=SPRINTF([%.3f],(x2*256+x1)/1000);
  $  028.制动开关状态                    $    $           $    $  ANS028.BYTE004  $  if((x2*256+x1)==0) y=@0182;else if((x2*256+x1)==1) y=@0118;else y=@0001;
  $  029.VIN(车辆识别码)是否写入         $    $           $    $  ANS029.BYTE004  $  if((x2*256+x1)==0) y=@0230;else if((x2*256+x1)==1) y=@0231;else y=@0001;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:743 30 08 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
