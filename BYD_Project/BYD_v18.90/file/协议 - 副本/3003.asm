
    车型ID：3003

    模拟：协议模拟-->3003

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~788

进入命令:

  $~  REQ000:780 02 10 01 00 00 00 00 00       $~  ANS000:788 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:780 02 3E 80 00 00 00 00 00       $!  ANS000:788 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:780 03 19 02 09 00 00 00 00       $#  ANS000:788 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/b2000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:780 04 14 FF FF FF 00 00 00       $$  ANS000:788 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:780 03 22 F1 93 00 00 00 00       $%  ANS000:788 03 22 F1 93 00 00 00 00
  $%  REQ001:780 03 22 F1 94 00 00 00 00       $%  ANS001:788 03 22 F1 94 00 00 00 00
  $%  REQ002:780 03 22 F1 95 00 00 00 00       $%  ANS002:788 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $)  00.数据流
  $  00.数据流
  $  REQ000:780 03 22 00 06 00 00 00 00       $  ANS000:788 03 22 00 06 00 00 00 00
  $  REQ001:780 03 22 00 10 00 00 00 00       $  ANS001:788 03 22 00 10 00 00 00 00
  $  REQ002:780 03 22 00 11 00 00 00 00       $  ANS002:788 03 22 00 11 00 00 00 00
  $  REQ003:780 03 22 00 12 00 00 00 00       $  ANS003:788 03 22 00 12 00 00 00 00
  $  REQ004:780 03 22 00 13 00 00 00 00       $  ANS004:788 03 22 00 13 00 00 00 00
  $  REQ005:780 03 22 00 17 00 00 00 00       $  ANS005:788 03 22 00 17 00 00 00 00
  $  REQ006:780 03 22 00 18 00 00 00 00       $  ANS006:788 03 22 00 18 00 00 00 00
  $  REQ007:780 03 22 00 19 00 00 00 00       $  ANS007:788 03 22 00 19 00 00 00 00
  $  REQ008:780 03 22 00 1A 00 00 00 00       $  ANS008:788 03 22 00 1A 00 00 00 00
  $  REQ009:780 03 22 00 1B 00 00 00 00       $  ANS009:788 03 22 00 1B 00 00 00 00
  $  REQ010:780 03 22 00 1C 00 00 00 00       $  ANS010:788 03 22 00 1C 00 00 00 00
  $  REQ011:780 03 22 00 1D 00 00 00 00       $  ANS011:788 03 22 00 1D 00 00 00 00
  $  REQ012:780 03 22 1F F0 00 00 00 00       $  ANS012:788 03 22 1F F0 00 00 00 00
  $  REQ013:780 03 22 00 36 00 00 00 00       $  ANS013:788 03 22 00 36 00 00 00 00

  $  000.启动允许                           $    $          $    $  ANS000.BYTE004  $  switxh((x2*256+x1))0x00: y=@013f;0x01: y=@01c5;default: y=@01c6;
  $  001.电机母线电压                       $    $  V       $    $  ANS001.BYTE004  $  y=(x2*256+x1);
  $  002.电机转速                           $    $  rpm     $    $  ANS002.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)-15000);
  $  003.电机扭矩                           $    $  NM      $    $  ANS003.BYTE004  $  y=SPRINTF([%.1f],(x2*256+x1)*0.1-500);
  $  004.电机功率                           $    $  kw      $    $  ANS004.BYTE004  $  y=SPRINTF([%.1f],(x2*256+x1)*0.1-100);
  $  005.IPM(智能功率模块)散热器温度        $    $  ℃      $    $  ANS005.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)-40);
  $  006.电机温度                           $    $  ℃      $    $  ANS006.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)-40);
  $  007.IGBT(绝缘栅双极型晶体管)温度       $    $  ℃      $    $  ANS007.BYTE004  $  y=SPRINTF([%d],(x2*256+x1)-40);
  $  008.A相电流                            $    $  A       $    $  ANS008.BYTE004  $  y=(x2*256+x1);
  $  009.B相电流                            $    $  A       $    $  ANS009.BYTE004  $  y=(x2*256+x1);
  $  010.C相电流                            $    $  A       $    $  ANS010.BYTE004  $  y=(x2*256+x1);
  $  011.过载系数                           $    $  %       $    $  ANS011.BYTE004  $  y=x1;
  $  012.售后软件版本号                     $    $          $    $  ANS012.BYTE004  $  y=SPRINTF([%02d.%02d.%02d],x1,x2,x3);
  $  013.桥臂状态                           $    $          $    $  ANS013.BYTE004  $  switxh((x2*256+x1))0x00: y=@0078;0x01: y=@017c;0x02: y=@017d;0x03: y=@017e;default: y=@0001;

  $)  01.HEV(混合动力)切换
  $  01.HEV(混合动力)切换
  $  REQ000:780 03 22 1F F1 00 00 00 00       $  ANS000:788 03 22 1F F1 00 00 00 00
  $  REQ001:780 03 22 1F F2 00 00 00 00       $  ANS001:788 03 22 1F F2 00 00 00 00

  $  000.切换记录1                $    $       $    $  ANS000.BYTE004  $  strcat:if(((x3>>0)&1)==1) y=@01ad;if(((x3>>1)&1)==1) y=@01ae;if(((x3>>2)&1)==1) y=@01af;if(((x3>>3)&1)==1) y=@01b0;if(((x3>>4)&1)==1) y=@01b1;if(((x3>>5)&1)==1) y=@01b2;if(((x3>>6)&1)==1) y=@01b3;if(((x3>>7)&1)==1) y=@01b4;if(((x2>>0)&1)==1) y=@01b5;if(((x2>>1)&1)==1) y=@01b6;if(((x2>>2)&1)==1) y=@01b7;if(((x2>>3)&1)==1) y=@01b8;if(((x2>>4)&1)==1) y=@01b9;if(((x2>>5)&1)==1) y=@01ba;if(((x2>>6)&1)==1) y=@01bb;if(((x2>>7)&1)==1) y=@01bc;if(((x1>>0)&1)==1) y=@01bd;if(((x1>>1)&1)==1) y=@01be;if(((x1>>2)&1)==1) y=@01bf;if(((x1>>3)&1)==1) y=@01c0;if(((x1>>4)&1)==1) y=@01c1;if(((x1>>5)&1)==1) y=@01c2;if(((x1>>6)&1)==1) y=@01c3;if(((x1>>7)&1)==1) y=@01c4;if((x1==0x00)&&(x2==0x00)&&(x3==0x00)) y=@01ac;
  $  001.切换记录2                $    $       $    $  ANS000.BYTE007  $  strcat:if(((x3>>0)&1)==1) y=@01ad;if(((x3>>1)&1)==1) y=@01ae;if(((x3>>2)&1)==1) y=@01af;if(((x3>>3)&1)==1) y=@01b0;if(((x3>>4)&1)==1) y=@01b1;if(((x3>>5)&1)==1) y=@01b2;if(((x3>>6)&1)==1) y=@01b3;if(((x3>>7)&1)==1) y=@01b4;if(((x2>>0)&1)==1) y=@01b5;if(((x2>>1)&1)==1) y=@01b6;if(((x2>>2)&1)==1) y=@01b7;if(((x2>>3)&1)==1) y=@01b8;if(((x2>>4)&1)==1) y=@01b9;if(((x2>>5)&1)==1) y=@01ba;if(((x2>>6)&1)==1) y=@01bb;if(((x2>>7)&1)==1) y=@01bc;if(((x1>>0)&1)==1) y=@01bd;if(((x1>>1)&1)==1) y=@01be;if(((x1>>2)&1)==1) y=@01bf;if(((x1>>3)&1)==1) y=@01c0;if(((x1>>4)&1)==1) y=@01c1;if(((x1>>5)&1)==1) y=@01c2;if(((x1>>6)&1)==1) y=@01c3;if(((x1>>7)&1)==1) y=@01c4;if((x1==0x00)&&(x2==0x00)&&(x3==0x00)) y=@01ac;
  $  002.切换记录3                $    $       $    $  ANS000.BYTE010  $  strcat:if(((x3>>0)&1)==1) y=@01ad;if(((x3>>1)&1)==1) y=@01ae;if(((x3>>2)&1)==1) y=@01af;if(((x3>>3)&1)==1) y=@01b0;if(((x3>>4)&1)==1) y=@01b1;if(((x3>>5)&1)==1) y=@01b2;if(((x3>>6)&1)==1) y=@01b3;if(((x3>>7)&1)==1) y=@01b4;if(((x2>>0)&1)==1) y=@01b5;if(((x2>>1)&1)==1) y=@01b6;if(((x2>>2)&1)==1) y=@01b7;if(((x2>>3)&1)==1) y=@01b8;if(((x2>>4)&1)==1) y=@01b9;if(((x2>>5)&1)==1) y=@01ba;if(((x2>>6)&1)==1) y=@01bb;if(((x2>>7)&1)==1) y=@01bc;if(((x1>>0)&1)==1) y=@01bd;if(((x1>>1)&1)==1) y=@01be;if(((x1>>2)&1)==1) y=@01bf;if(((x1>>3)&1)==1) y=@01c0;if(((x1>>4)&1)==1) y=@01c1;if(((x1>>5)&1)==1) y=@01c2;if(((x1>>6)&1)==1) y=@01c3;if(((x1>>7)&1)==1) y=@01c4;if((x1==0x00)&&(x2==0x00)&&(x3==0x00)) y=@01ac;
  $  003.切换记录4                $    $       $    $  ANS000.BYTE013  $  strcat:if(((x3>>0)&1)==1) y=@01ad;if(((x3>>1)&1)==1) y=@01ae;if(((x3>>2)&1)==1) y=@01af;if(((x3>>3)&1)==1) y=@01b0;if(((x3>>4)&1)==1) y=@01b1;if(((x3>>5)&1)==1) y=@01b2;if(((x3>>6)&1)==1) y=@01b3;if(((x3>>7)&1)==1) y=@01b4;if(((x2>>0)&1)==1) y=@01b5;if(((x2>>1)&1)==1) y=@01b6;if(((x2>>2)&1)==1) y=@01b7;if(((x2>>3)&1)==1) y=@01b8;if(((x2>>4)&1)==1) y=@01b9;if(((x2>>5)&1)==1) y=@01ba;if(((x2>>6)&1)==1) y=@01bb;if(((x2>>7)&1)==1) y=@01bc;if(((x1>>0)&1)==1) y=@01bd;if(((x1>>1)&1)==1) y=@01be;if(((x1>>2)&1)==1) y=@01bf;if(((x1>>3)&1)==1) y=@01c0;if(((x1>>4)&1)==1) y=@01c1;if(((x1>>5)&1)==1) y=@01c2;if(((x1>>6)&1)==1) y=@01c3;if(((x1>>7)&1)==1) y=@01c4;if((x1==0x00)&&(x2==0x00)&&(x3==0x00)) y=@01ac;
  $  004.切换记录5                $    $       $    $  ANS000.BYTE016  $  strcat:if(((x3>>0)&1)==1) y=@01ad;if(((x3>>1)&1)==1) y=@01ae;if(((x3>>2)&1)==1) y=@01af;if(((x3>>3)&1)==1) y=@01b0;if(((x3>>4)&1)==1) y=@01b1;if(((x3>>5)&1)==1) y=@01b2;if(((x3>>6)&1)==1) y=@01b3;if(((x3>>7)&1)==1) y=@01b4;if(((x2>>0)&1)==1) y=@01b5;if(((x2>>1)&1)==1) y=@01b6;if(((x2>>2)&1)==1) y=@01b7;if(((x2>>3)&1)==1) y=@01b8;if(((x2>>4)&1)==1) y=@01b9;if(((x2>>5)&1)==1) y=@01ba;if(((x2>>6)&1)==1) y=@01bb;if(((x2>>7)&1)==1) y=@01bc;if(((x1>>0)&1)==1) y=@01bd;if(((x1>>1)&1)==1) y=@01be;if(((x1>>2)&1)==1) y=@01bf;if(((x1>>3)&1)==1) y=@01c0;if(((x1>>4)&1)==1) y=@01c1;if(((x1>>5)&1)==1) y=@01c2;if(((x1>>6)&1)==1) y=@01c3;if(((x1>>7)&1)==1) y=@01c4;if((x1==0x00)&&(x2==0x00)&&(x3==0x00)) y=@01ac;
  $  005.切换记录6                $    $       $    $  ANS000.BYTE019  $  strcat:if(((x3>>0)&1)==1) y=@01ad;if(((x3>>1)&1)==1) y=@01ae;if(((x3>>2)&1)==1) y=@01af;if(((x3>>3)&1)==1) y=@01b0;if(((x3>>4)&1)==1) y=@01b1;if(((x3>>5)&1)==1) y=@01b2;if(((x3>>6)&1)==1) y=@01b3;if(((x3>>7)&1)==1) y=@01b4;if(((x2>>0)&1)==1) y=@01b5;if(((x2>>1)&1)==1) y=@01b6;if(((x2>>2)&1)==1) y=@01b7;if(((x2>>3)&1)==1) y=@01b8;if(((x2>>4)&1)==1) y=@01b9;if(((x2>>5)&1)==1) y=@01ba;if(((x2>>6)&1)==1) y=@01bb;if(((x2>>7)&1)==1) y=@01bc;if(((x1>>0)&1)==1) y=@01bd;if(((x1>>1)&1)==1) y=@01be;if(((x1>>2)&1)==1) y=@01bf;if(((x1>>3)&1)==1) y=@01c0;if(((x1>>4)&1)==1) y=@01c1;if(((x1>>5)&1)==1) y=@01c2;if(((x1>>6)&1)==1) y=@01c3;if(((x1>>7)&1)==1) y=@01c4;if((x1==0x00)&&(x2==0x00)&&(x3==0x00)) y=@01ac;
  $  006.切换记录7                $    $       $    $  ANS000.BYTE022  $  strcat:if(((x3>>0)&1)==1) y=@01ad;if(((x3>>1)&1)==1) y=@01ae;if(((x3>>2)&1)==1) y=@01af;if(((x3>>3)&1)==1) y=@01b0;if(((x3>>4)&1)==1) y=@01b1;if(((x3>>5)&1)==1) y=@01b2;if(((x3>>6)&1)==1) y=@01b3;if(((x3>>7)&1)==1) y=@01b4;if(((x2>>0)&1)==1) y=@01b5;if(((x2>>1)&1)==1) y=@01b6;if(((x2>>2)&1)==1) y=@01b7;if(((x2>>3)&1)==1) y=@01b8;if(((x2>>4)&1)==1) y=@01b9;if(((x2>>5)&1)==1) y=@01ba;if(((x2>>6)&1)==1) y=@01bb;if(((x2>>7)&1)==1) y=@01bc;if(((x1>>0)&1)==1) y=@01bd;if(((x1>>1)&1)==1) y=@01be;if(((x1>>2)&1)==1) y=@01bf;if(((x1>>3)&1)==1) y=@01c0;if(((x1>>4)&1)==1) y=@01c1;if(((x1>>5)&1)==1) y=@01c2;if(((x1>>6)&1)==1) y=@01c3;if(((x1>>7)&1)==1) y=@01c4;if((x1==0x00)&&(x2==0x00)&&(x3==0x00)) y=@01ac;
  $  007.切换记录8                $    $       $    $  ANS000.BYTE025  $  strcat:if(((x3>>0)&1)==1) y=@01ad;if(((x3>>1)&1)==1) y=@01ae;if(((x3>>2)&1)==1) y=@01af;if(((x3>>3)&1)==1) y=@01b0;if(((x3>>4)&1)==1) y=@01b1;if(((x3>>5)&1)==1) y=@01b2;if(((x3>>6)&1)==1) y=@01b3;if(((x3>>7)&1)==1) y=@01b4;if(((x2>>0)&1)==1) y=@01b5;if(((x2>>1)&1)==1) y=@01b6;if(((x2>>2)&1)==1) y=@01b7;if(((x2>>3)&1)==1) y=@01b8;if(((x2>>4)&1)==1) y=@01b9;if(((x2>>5)&1)==1) y=@01ba;if(((x2>>6)&1)==1) y=@01bb;if(((x2>>7)&1)==1) y=@01bc;if(((x1>>0)&1)==1) y=@01bd;if(((x1>>1)&1)==1) y=@01be;if(((x1>>2)&1)==1) y=@01bf;if(((x1>>3)&1)==1) y=@01c0;if(((x1>>4)&1)==1) y=@01c1;if(((x1>>5)&1)==1) y=@01c2;if(((x1>>6)&1)==1) y=@01c3;if(((x1>>7)&1)==1) y=@01c4;if((x1==0x00)&&(x2==0x00)&&(x3==0x00)) y=@01ac;
  $  008.切换记录9                $    $       $    $  ANS000.BYTE028  $  strcat:if(((x3>>0)&1)==1) y=@01ad;if(((x3>>1)&1)==1) y=@01ae;if(((x3>>2)&1)==1) y=@01af;if(((x3>>3)&1)==1) y=@01b0;if(((x3>>4)&1)==1) y=@01b1;if(((x3>>5)&1)==1) y=@01b2;if(((x3>>6)&1)==1) y=@01b3;if(((x3>>7)&1)==1) y=@01b4;if(((x2>>0)&1)==1) y=@01b5;if(((x2>>1)&1)==1) y=@01b6;if(((x2>>2)&1)==1) y=@01b7;if(((x2>>3)&1)==1) y=@01b8;if(((x2>>4)&1)==1) y=@01b9;if(((x2>>5)&1)==1) y=@01ba;if(((x2>>6)&1)==1) y=@01bb;if(((x2>>7)&1)==1) y=@01bc;if(((x1>>0)&1)==1) y=@01bd;if(((x1>>1)&1)==1) y=@01be;if(((x1>>2)&1)==1) y=@01bf;if(((x1>>3)&1)==1) y=@01c0;if(((x1>>4)&1)==1) y=@01c1;if(((x1>>5)&1)==1) y=@01c2;if(((x1>>6)&1)==1) y=@01c3;if(((x1>>7)&1)==1) y=@01c4;if((x1==0x00)&&(x2==0x00)&&(x3==0x00)) y=@01ac;
  $  009.切换记录10               $    $       $    $  ANS000.BYTE031  $  strcat:if(((x3>>0)&1)==1) y=@01ad;if(((x3>>1)&1)==1) y=@01ae;if(((x3>>2)&1)==1) y=@01af;if(((x3>>3)&1)==1) y=@01b0;if(((x3>>4)&1)==1) y=@01b1;if(((x3>>5)&1)==1) y=@01b2;if(((x3>>6)&1)==1) y=@01b3;if(((x3>>7)&1)==1) y=@01b4;if(((x2>>0)&1)==1) y=@01b5;if(((x2>>1)&1)==1) y=@01b6;if(((x2>>2)&1)==1) y=@01b7;if(((x2>>3)&1)==1) y=@01b8;if(((x2>>4)&1)==1) y=@01b9;if(((x2>>5)&1)==1) y=@01ba;if(((x2>>6)&1)==1) y=@01bb;if(((x2>>7)&1)==1) y=@01bc;if(((x1>>0)&1)==1) y=@01bd;if(((x1>>1)&1)==1) y=@01be;if(((x1>>2)&1)==1) y=@01bf;if(((x1>>3)&1)==1) y=@01c0;if(((x1>>4)&1)==1) y=@01c1;if(((x1>>5)&1)==1) y=@01c2;if(((x1>>6)&1)==1) y=@01c3;if(((x1>>7)&1)==1) y=@01c4;if((x1==0x00)&&(x2==0x00)&&(x3==0x00)) y=@01ac;
  $  010.车辆状态切换记录1        $    $       $    $  ANS001.BYTE004  $  strcat:if(((x2>>0)&1)==1) y=@019c;if(((x2>>1)&1)==1) y=@019d;if(((x2>>2)&1)==1) y=@019e;if(((x2>>3)&1)==1) y=@019f;if(((x2>>4)&1)==1) y=@01a0;if(((x2>>5)&1)==1) y=@01a1;if(((x2>>6)&1)==1) y=@01a2;if(((x2>>7)&1)==1) y=@01a3;if(((x1>>0)&1)==1) y=@01a4;if(((x1>>1)&1)==1) y=@01a5;if(((x1>>2)&1)==1) y=@01a6;if(((x1>>3)&1)==1) y=@01a7;if(((x1>>4)&1)==1) y=@01a8;if(((x1>>5)&1)==1) y=@01a9;if(((x1>>6)&1)==1) y=@01aa;if(((x1>>7)&1)==1) y=@01ab;if((x1==0x00)&&(x2==0x00)) y=@01ac;
  $  011.车辆状态切换记录2        $    $       $    $  ANS001.BYTE006  $  strcat:if(((x2>>0)&1)==1) y=@019c;if(((x2>>1)&1)==1) y=@019d;if(((x2>>2)&1)==1) y=@019e;if(((x2>>3)&1)==1) y=@019f;if(((x2>>4)&1)==1) y=@01a0;if(((x2>>5)&1)==1) y=@01a1;if(((x2>>6)&1)==1) y=@01a2;if(((x2>>7)&1)==1) y=@01a3;if(((x1>>0)&1)==1) y=@01a4;if(((x1>>1)&1)==1) y=@01a5;if(((x1>>2)&1)==1) y=@01a6;if(((x1>>3)&1)==1) y=@01a7;if(((x1>>4)&1)==1) y=@01a8;if(((x1>>5)&1)==1) y=@01a9;if(((x1>>6)&1)==1) y=@01aa;if(((x1>>7)&1)==1) y=@01ab;if((x1==0x00)&&(x2==0x00)) y=@01ac;
  $  012.车辆状态切换记录3        $    $       $    $  ANS001.BYTE008  $  strcat:if(((x2>>0)&1)==1) y=@019c;if(((x2>>1)&1)==1) y=@019d;if(((x2>>2)&1)==1) y=@019e;if(((x2>>3)&1)==1) y=@019f;if(((x2>>4)&1)==1) y=@01a0;if(((x2>>5)&1)==1) y=@01a1;if(((x2>>6)&1)==1) y=@01a2;if(((x2>>7)&1)==1) y=@01a3;if(((x1>>0)&1)==1) y=@01a4;if(((x1>>1)&1)==1) y=@01a5;if(((x1>>2)&1)==1) y=@01a6;if(((x1>>3)&1)==1) y=@01a7;if(((x1>>4)&1)==1) y=@01a8;if(((x1>>5)&1)==1) y=@01a9;if(((x1>>6)&1)==1) y=@01aa;if(((x1>>7)&1)==1) y=@01ab;if((x1==0x00)&&(x2==0x00)) y=@01ac;
  $  013.车辆状态切换记录4        $    $       $    $  ANS001.BYTE010  $  strcat:if(((x2>>0)&1)==1) y=@019c;if(((x2>>1)&1)==1) y=@019d;if(((x2>>2)&1)==1) y=@019e;if(((x2>>3)&1)==1) y=@019f;if(((x2>>4)&1)==1) y=@01a0;if(((x2>>5)&1)==1) y=@01a1;if(((x2>>6)&1)==1) y=@01a2;if(((x2>>7)&1)==1) y=@01a3;if(((x1>>0)&1)==1) y=@01a4;if(((x1>>1)&1)==1) y=@01a5;if(((x1>>2)&1)==1) y=@01a6;if(((x1>>3)&1)==1) y=@01a7;if(((x1>>4)&1)==1) y=@01a8;if(((x1>>5)&1)==1) y=@01a9;if(((x1>>6)&1)==1) y=@01aa;if(((x1>>7)&1)==1) y=@01ab;if((x1==0x00)&&(x2==0x00)) y=@01ac;
  $  014.车辆状态切换记录5        $    $       $    $  ANS001.BYTE012  $  strcat:if(((x2>>0)&1)==1) y=@019c;if(((x2>>1)&1)==1) y=@019d;if(((x2>>2)&1)==1) y=@019e;if(((x2>>3)&1)==1) y=@019f;if(((x2>>4)&1)==1) y=@01a0;if(((x2>>5)&1)==1) y=@01a1;if(((x2>>6)&1)==1) y=@01a2;if(((x2>>7)&1)==1) y=@01a3;if(((x1>>0)&1)==1) y=@01a4;if(((x1>>1)&1)==1) y=@01a5;if(((x1>>2)&1)==1) y=@01a6;if(((x1>>3)&1)==1) y=@01a7;if(((x1>>4)&1)==1) y=@01a8;if(((x1>>5)&1)==1) y=@01a9;if(((x1>>6)&1)==1) y=@01aa;if(((x1>>7)&1)==1) y=@01ab;if((x1==0x00)&&(x2==0x00)) y=@01ac;
  $  015.车辆状态切换记录6        $    $       $    $  ANS001.BYTE014  $  strcat:if(((x2>>0)&1)==1) y=@019c;if(((x2>>1)&1)==1) y=@019d;if(((x2>>2)&1)==1) y=@019e;if(((x2>>3)&1)==1) y=@019f;if(((x2>>4)&1)==1) y=@01a0;if(((x2>>5)&1)==1) y=@01a1;if(((x2>>6)&1)==1) y=@01a2;if(((x2>>7)&1)==1) y=@01a3;if(((x1>>0)&1)==1) y=@01a4;if(((x1>>1)&1)==1) y=@01a5;if(((x1>>2)&1)==1) y=@01a6;if(((x1>>3)&1)==1) y=@01a7;if(((x1>>4)&1)==1) y=@01a8;if(((x1>>5)&1)==1) y=@01a9;if(((x1>>6)&1)==1) y=@01aa;if(((x1>>7)&1)==1) y=@01ab;if((x1==0x00)&&(x2==0x00)) y=@01ac;
  $  016.车辆状态切换记录7        $    $       $    $  ANS001.BYTE016  $  strcat:if(((x2>>0)&1)==1) y=@019c;if(((x2>>1)&1)==1) y=@019d;if(((x2>>2)&1)==1) y=@019e;if(((x2>>3)&1)==1) y=@019f;if(((x2>>4)&1)==1) y=@01a0;if(((x2>>5)&1)==1) y=@01a1;if(((x2>>6)&1)==1) y=@01a2;if(((x2>>7)&1)==1) y=@01a3;if(((x1>>0)&1)==1) y=@01a4;if(((x1>>1)&1)==1) y=@01a5;if(((x1>>2)&1)==1) y=@01a6;if(((x1>>3)&1)==1) y=@01a7;if(((x1>>4)&1)==1) y=@01a8;if(((x1>>5)&1)==1) y=@01a9;if(((x1>>6)&1)==1) y=@01aa;if(((x1>>7)&1)==1) y=@01ab;if((x1==0x00)&&(x2==0x00)) y=@01ac;
  $  017.车辆状态切换记录8        $    $       $    $  ANS001.BYTE018  $  strcat:if(((x2>>0)&1)==1) y=@019c;if(((x2>>1)&1)==1) y=@019d;if(((x2>>2)&1)==1) y=@019e;if(((x2>>3)&1)==1) y=@019f;if(((x2>>4)&1)==1) y=@01a0;if(((x2>>5)&1)==1) y=@01a1;if(((x2>>6)&1)==1) y=@01a2;if(((x2>>7)&1)==1) y=@01a3;if(((x1>>0)&1)==1) y=@01a4;if(((x1>>1)&1)==1) y=@01a5;if(((x1>>2)&1)==1) y=@01a6;if(((x1>>3)&1)==1) y=@01a7;if(((x1>>4)&1)==1) y=@01a8;if(((x1>>5)&1)==1) y=@01a9;if(((x1>>6)&1)==1) y=@01aa;if(((x1>>7)&1)==1) y=@01ab;if((x1==0x00)&&(x2==0x00)) y=@01ac;
  $  018.车辆状态切换记录9        $    $       $    $  ANS001.BYTE020  $  strcat:if(((x2>>0)&1)==1) y=@019c;if(((x2>>1)&1)==1) y=@019d;if(((x2>>2)&1)==1) y=@019e;if(((x2>>3)&1)==1) y=@019f;if(((x2>>4)&1)==1) y=@01a0;if(((x2>>5)&1)==1) y=@01a1;if(((x2>>6)&1)==1) y=@01a2;if(((x2>>7)&1)==1) y=@01a3;if(((x1>>0)&1)==1) y=@01a4;if(((x1>>1)&1)==1) y=@01a5;if(((x1>>2)&1)==1) y=@01a6;if(((x1>>3)&1)==1) y=@01a7;if(((x1>>4)&1)==1) y=@01a8;if(((x1>>5)&1)==1) y=@01a9;if(((x1>>6)&1)==1) y=@01aa;if(((x1>>7)&1)==1) y=@01ab;if((x1==0x00)&&(x2==0x00)) y=@01ac;
  $  019.车辆状态切换记录10       $    $       $    $  ANS001.BYTE022  $  strcat:if(((x2>>0)&1)==1) y=@019c;if(((x2>>1)&1)==1) y=@019d;if(((x2>>2)&1)==1) y=@019e;if(((x2>>3)&1)==1) y=@019f;if(((x2>>4)&1)==1) y=@01a0;if(((x2>>5)&1)==1) y=@01a1;if(((x2>>6)&1)==1) y=@01a2;if(((x2>>7)&1)==1) y=@01a3;if(((x1>>0)&1)==1) y=@01a4;if(((x1>>1)&1)==1) y=@01a5;if(((x1>>2)&1)==1) y=@01a6;if(((x1>>3)&1)==1) y=@01a7;if(((x1>>4)&1)==1) y=@01a8;if(((x1>>5)&1)==1) y=@01a9;if(((x1>>6)&1)==1) y=@01aa;if(((x1>>7)&1)==1) y=@01ab;if((x1==0x00)&&(x2==0x00)) y=@01ac;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:780 30 08 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
