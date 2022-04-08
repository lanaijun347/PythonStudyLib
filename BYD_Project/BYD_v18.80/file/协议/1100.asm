
    车型ID：1100

    模拟：协议模拟-->1100

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~76B

进入命令:

  $~  REQ000:763 02 10 01 00 00 00 00 00       $~  ANS000:76B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:763 02 3E 80 00 00 00 00 00       $!  ANS000:76B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:763 03 19 02 09 00 00 00 00       $#  ANS000:76B 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:763 04 14 FF FF FF 00 00 00       $$  ANS000:76B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:763 03 22 F1 93 00 00 00 00       $%  ANS000:76B 03 22 F1 93 00 00 00 00
  $%  REQ001:763 03 22 F1 94 00 00 00 00       $%  ANS001:76B 03 22 F1 94 00 00 00 00
  $%  REQ002:763 03 22 F1 95 00 00 00 00       $%  ANS002:76B 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:763 03 22 00 01 00 00 00 00       $  ANS000:76B 03 22 00 01 00 00 00 00
  $  REQ001:763 03 22 00 02 00 00 00 00       $  ANS001:76B 03 22 00 02 00 00 00 00
  $  REQ002:763 03 22 00 03 00 00 00 00       $  ANS002:76B 03 22 00 03 00 00 00 00
  $  REQ003:763 03 22 00 04 00 00 00 00       $  ANS003:76B 03 22 00 04 00 00 00 00
  $  REQ004:763 03 22 00 05 00 00 00 00       $  ANS004:76B 03 22 00 05 00 00 00 00
  $  REQ005:763 03 22 00 06 00 00 00 00       $  ANS005:76B 03 22 00 06 00 00 00 00
  $  REQ006:763 03 22 00 07 00 00 00 00       $  ANS006:76B 03 22 00 07 00 00 00 00
  $  REQ007:763 03 22 00 08 00 00 00 00       $  ANS007:76B 03 22 00 08 00 00 00 00
  $  REQ008:763 03 22 00 09 00 00 00 00       $  ANS008:76B 03 22 00 09 00 00 00 00
  $  REQ009:763 03 22 00 0A 00 00 00 00       $  ANS009:76B 03 22 00 0A 00 00 00 00
  $  REQ010:763 03 22 00 0B 00 00 00 00       $  ANS010:76B 03 22 00 0B 00 00 00 00
  $  REQ011:763 03 22 00 0C 00 00 00 00       $  ANS011:76B 03 22 00 0C 00 00 00 00
  $  REQ012:763 03 22 00 0D 00 00 00 00       $  ANS012:76B 03 22 00 0D 00 00 00 00
  $  REQ013:763 03 22 00 0E 00 00 00 00       $  ANS013:76B 03 22 00 0E 00 00 00 00
  $  REQ014:763 03 22 00 11 00 00 00 00       $  ANS014:76B 03 22 00 11 00 00 00 00
  $  REQ015:763 03 22 00 12 00 00 00 00       $  ANS015:76B 03 22 00 12 00 00 00 00
  $  REQ016:763 03 22 00 13 00 00 00 00       $  ANS016:76B 03 22 00 13 00 00 00 00
  $  REQ017:763 03 22 00 14 00 00 00 00       $  ANS017:76B 03 22 00 14 00 00 00 00
  $  REQ018:763 03 22 00 15 00 00 00 00       $  ANS018:76B 03 22 00 15 00 00 00 00
  $  REQ019:763 03 22 00 16 00 00 00 00       $  ANS019:76B 03 22 00 16 00 00 00 00
  $  REQ020:763 03 22 00 17 00 00 00 00       $  ANS020:76B 03 22 00 17 00 00 00 00

  $  000.母线电压                                     $    $  V            $    $  ANS000.BYTE004  $  if((x1+x2*256)<1001) y=x1+x2*256;else y=@0002;
  $  001.加热器工作电流                               $    $  A            $    $  ANS001.BYTE004  $  if((x1*0.2)<51) y=(x1*0.2);else y=@0002;
  $  002.加热器消耗功率                               $    $  W            $    $  ANS002.BYTE004  $  y=x2*256+x1;
  $  003.IGBT(绝缘栅双极型晶体管)输出占空比           $    $  %            $    $  ANS003.BYTE004  $  if(x1 < 101) y=x1;else y=@0002;
  $  004.IGBT(绝缘栅双极型晶体管)散热片温度           $    $  degree C     $    $  ANS004.BYTE004  $  if((x1-50)<201) y=x1-50;else y=@0002;
  $  005.冷却液温度                                   $    $  degree C     $    $  ANS005.BYTE004  $  if((x1-50)<201) y=x1-50;else y=@0002;
  $  006.加热器主板温度                               $    $  degree C     $    $  ANS006.BYTE004  $  if((x1-50)<201) y=x1-50;else y=@0002;
  $  007.加热器加热状态                               $    $               $    $  ANS007.BYTE004  $  if(x1 == 0x00) y=@003f;else if(x1 == 0x01) y=@023a;else if(x1 == 0x02) y=@023b;else if(x1 == 0x03) y=@023c;else if(x1 == 0x04) y=@023d;else y=@0002;
  $  008.加热器高压状态                               $    $               $    $  ANS008.BYTE004  $  if(x1 == 0x00) y=@0045;else if(x1 == 0x01) y=@004f;else if(x1 == 0x02) y=@0050;else y=@0002;
  $  009.IGBT(绝缘栅双极型晶体管)驱动状态             $    $               $    $  ANS009.BYTE004  $  if(x1 == 0x01) y=@0000;else if(x1 == 0x02) y=@002d;else y=@0002;
  $  010.电池加热器卸载状态                           $    $               $    $  ANS010.BYTE004  $  if(x1 == 0x00) y=@003f;else if(x1 == 0x01) y=@0233;else if(x1 == 0x02) y=@0234;else y=@0002;
  $  011.电池加热器故障状态                           $    $               $    $  ANS011.BYTE004  $  if(x1 == 0x01) y=@0045;else if(x1 == 0x02) y=@0046;else y=@0002;
  $  012.电池加热器加热组件状态                       $    $               $    $  ANS012.BYTE004  $  if(x1 == 0x01) y=@0045;else if(x1 == 0x02) y=@0046;else y=@0002;
  $  013.电池加热器驱动组件状态                       $    $               $    $  ANS013.BYTE004  $  if(x1 == 0x01) y=@0235;else if(x1 == 0x02) y=@0236;else if(x1 == 0x03) y=@0237;else y=@0002;
  $  014.IG4低压电源值                                $    $  V            $    $  ANS014.BYTE004  $  y=x1*0.1;
  $  015.IGBT(绝缘栅双极型晶体管)驱动电压值           $    $  V            $    $  ANS015.BYTE004  $  y=x1*0.1;
  $  016.控制芯片电压值                               $    $  V            $    $  ANS016.BYTE004  $  y=x1*0.1;
  $  017.IGBT(绝缘栅双极型晶体管)短路状态             $    $               $    $  ANS017.BYTE004  $  if(x1 == 0x01) y=@0045;else if(x1 == 0x02) y=@0035;else y=@0002;
  $  018.IGBT(绝缘栅双极型晶体管)温度传感器状态       $    $               $    $  ANS018.BYTE004  $  if(x1 == 0x01) y=@0239;else if(x1 == 0x02) y=@01d0;else if(x1 == 0x03) y=@01d1;else y=@0002;
  $  019.主板温度传感器状态                           $    $               $    $  ANS019.BYTE004  $  if(x1 == 0x01) y=@0235;else if(x1 == 0x02) y=@0236;else if(x1 == 0x03) y=@0237;else y=@0002;
  $  020.与BMS(电池管理系统)通讯状态                  $    $               $    $  ANS020.BYTE004  $  if(x1 == 0x01) y=@00ac;else if(x1 == 0x02) y=@0238;else y=@0002;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:763 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
