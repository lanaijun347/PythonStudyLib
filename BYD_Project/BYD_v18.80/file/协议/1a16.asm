
    车型ID：1a16

    模拟：协议模拟-->1a16

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~78D

进入命令:

  $~  REQ000:785 02 10 01 00 00 00 00 00       $~  ANS000:78D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:785 02 3E 80 00 00 00 00 00       $!  ANS000:78D 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:785 03 19 02 09 00 00 00 00       $#  ANS000:78D 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:785 04 14 FF FF FF 00 00 00       $$  ANS000:78D 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:785 03 22 F1 93 00 00 00 00       $%  ANS000:78D 03 22 F1 93 00 00 00 00
  $%  REQ001:785 03 22 F1 94 00 00 00 00       $%  ANS001:78D 03 22 F1 94 00 00 00 00
  $%  REQ002:785 03 22 F1 95 00 00 00 00       $%  ANS002:78D 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:785 03 22 00 03 00 00 00 00       $  ANS000:78D 03 22 00 03 00 00 00 00
  $  REQ001:785 03 22 00 04 00 00 00 00       $  ANS001:78D 03 22 00 04 00 00 00 00
  $  REQ002:785 03 22 00 05 00 00 00 00       $  ANS002:78D 03 22 00 05 00 00 00 00
  $  REQ003:785 03 22 00 06 00 00 00 00       $  ANS003:78D 03 22 00 06 00 00 00 00
  $  REQ004:785 03 22 00 07 00 00 00 00       $  ANS004:78D 03 22 00 07 00 00 00 00
  $  REQ005:785 03 22 00 08 00 00 00 00       $  ANS005:78D 03 22 00 08 00 00 00 00
  $  REQ006:785 03 22 00 09 00 00 00 00       $  ANS006:78D 03 22 00 09 00 00 00 00
  $  REQ007:785 03 22 00 0A 00 00 00 00       $  ANS007:78D 03 22 00 0A 00 00 00 00
  $  REQ008:785 03 22 00 0B 00 00 00 00       $  ANS008:78D 03 22 00 0B 00 00 00 00
  $  REQ009:785 03 22 00 0C 00 00 00 00       $  ANS009:78D 03 22 00 0C 00 00 00 00
  $  REQ010:785 03 22 00 0D 00 00 00 00       $  ANS010:78D 03 22 00 0D 00 00 00 00
  $  REQ011:785 03 22 00 0E 00 00 00 00       $  ANS011:78D 03 22 00 0E 00 00 00 00
  $  REQ012:785 03 22 00 0F 00 00 00 00       $  ANS012:78D 03 22 00 0F 00 00 00 00
  $  REQ013:785 03 22 00 10 00 00 00 00       $  ANS013:78D 03 22 00 10 00 00 00 00
  $  REQ014:785 03 22 00 11 00 00 00 00       $  ANS014:78D 03 22 00 11 00 00 00 00
  $  REQ015:785 03 22 00 12 00 00 00 00       $  ANS015:78D 03 22 00 12 00 00 00 00
  $  REQ016:785 03 22 00 13 00 00 00 00       $  ANS016:78D 03 22 00 13 00 00 00 00
  $  REQ017:785 03 22 00 14 00 00 00 00       $  ANS017:78D 03 22 00 14 00 00 00 00
  $  REQ018:785 03 22 00 16 00 00 00 00       $  ANS018:78D 03 22 00 16 00 00 00 00
  $  REQ019:785 03 22 00 17 00 00 00 00       $  ANS019:78D 03 22 00 17 00 00 00 00
  $  REQ020:785 03 22 00 19 00 00 00 00       $  ANS020:78D 03 22 00 19 00 00 00 00
  $  REQ021:785 03 22 00 32 00 00 00 00       $  ANS021:78D 03 22 00 32 00 00 00 00

  $  000.后驱动电机状态                     $    $               $    $  ANS000.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@00dd;else if((x1 == 0x01)&&(x2==0x00)) y=@00de;else if((x1 == 0x02)&&(x2==0x00)) y=@0000;else y=@0002;
  $  001.启动允许                           $    $               $    $  ANS001.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@00e4;else if((x1 == 0x01)&&(x2==0x00)) y=@0267;else y=@0002;
  $  002.防盗解除状态                       $    $               $    $  ANS002.BYTE004  $  if(x1 == 0x00)y=@00e1;else if(x1 == 0x01)y=@00e2;else if(x1 == 0x02)y=@00e3;else y=@0002;
  $  003.主动泄放状态                       $    $               $    $  ANS003.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@00e6;else if((x1 == 0x01)&&(x2==0x00)) y=@0324;else if((x1 == 0x02)&&(x2==0x00)) y=@00e8;else if((x1 == 0x03)&&(x2==0x00)) y=@00e9;else y=@0002;
  $  004.盖子状态                           $    $               $    $  ANS004.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@0001;else if((x1 == 0x01)&&(x2==0x00)) y=@0000;else y=@0002;
  $  005.动力系统状态                       $    $               $    $  ANS005.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@0045;else if((x1 == 0x01)&&(x2==0x00)) y=@0046;else y=@0002;
  $  006.母线电压                           $    $  V            $    $  ANS006.BYTE004  $  y=(x2*256+x1);
  $  007.转速                               $    $  rpm          $    $  ANS007.BYTE004  $  y=(x2*256+x1)-15000;
  $  008.扭矩                               $    $  N·M         $    $  ANS008.BYTE004  $  y=(x1*26/255)+(x2*25.6)-500;
  $  009.功率                               $    $  kw           $    $  ANS009.BYTE004  $  y=(x1*26/255)+(x2*25.6)-100;
  $  010.冷却液温度                         $    $  degree C     $    $  ANS010.BYTE004  $  y=(x2*256+x1)-40;
  $  011.IPM散热器温度                      $    $  degree C     $    $  ANS011.BYTE004  $  y=(x2*256+x1)-40;
  $  012.电机温度                           $    $  degree C     $    $  ANS012.BYTE004  $  y=(x2*256+x1)-40;
  $  013.IGBT(绝缘栅双极型晶体管)温度       $    $  degree C     $    $  ANS013.BYTE004  $  y=(x2*256+x1)-40;
  $  014.A相电流                            $    $  A            $    $  ANS014.BYTE004  $  y=(x2*256+x1);
  $  015.B相电流                            $    $  A            $    $  ANS015.BYTE004  $  y=(x2*256+x1);
  $  016.C相电流                            $    $  A            $    $  ANS016.BYTE004  $  y=(x2*256+x1);
  $  017.过载系数                           $    $  %            $    $  ANS017.BYTE004  $  y=(x2*256+x1);
  $  018.旋变状态                           $    $               $    $  ANS018.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@0045;else if((x1 == 0x01)&&(x2==0x00)) y=@0046;else y=@0002;
  $  019.过流状态                           $    $               $    $  ANS019.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@0045;else if((x1 == 0x01)&&(x2==0x00)) y=@0046;else y=@0002;
  $  020.IPM状态                            $    $               $    $  ANS020.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@0045;else if((x1 == 0x01)&&(x2==0x00)) y=@0046;else y=@0002;
  $  021.售后软件版本号                     $    $               $    $  ANS021.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@0045;else if((x1 == 0x01)&&(x2==0x00)) y=@0046;else y=@0002;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:785 30 01 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
