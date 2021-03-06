
    车型ID：9d0b

    模拟：协议模拟-->9d0b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E1

进入命令:

  $~  REQ000:7E9 02 10 01 00 00 00 00 00       $~  ANS000:7E1 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E9 02 3E 00 00 00 00 00 00       $!  ANS000:7E1 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E9 03 19 02 AB 00 00 00 00       $#  ANS000:7E1 03 19 02 AB 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/09000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E9 04 14 FF FF FF 00 00 00       $$  ANS000:7E1 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E9 03 22 F1 87 00 00 00 00       $%  ANS000:7E1 03 22 F1 87 00 00 00 00
  $%  REQ001:7E9 03 22 F1 8A 00 00 00 00       $%  ANS001:7E1 03 22 F1 8A 00 00 00 00
  $%  REQ002:7E9 03 22 F1 97 00 00 00 00       $%  ANS002:7E1 03 22 F1 97 00 00 00 00
  $%  REQ003:7E9 03 22 F1 93 00 00 00 00       $%  ANS003:7E1 03 22 F1 93 00 00 00 00
  $%  REQ004:7E9 03 22 F1 95 00 00 00 00       $%  ANS004:7E1 03 22 F1 95 00 00 00 00
  $%  REQ005:7E9 03 22 F1 8C 00 00 00 00       $%  ANS005:7E1 03 22 F1 8C 00 00 00 00
  $%  REQ006:7E9 03 22 F1 90 00 00 00 00       $%  ANS006:7E1 03 22 F1 90 00 00 00 00

  $%  000:车辆制造商备件号:               $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  001:系统供应商标识符:               $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:系统名:                         $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:系统供应商ECU硬件版本号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:系统供应商ECU软件版本号:        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:ECU序列号:                      $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  006:VIN码:                          $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E9 03 22 03 00 00 00 00 00       $  ANS000:7E1 03 22 03 00 00 00 00 00
  $  REQ001:7E9 03 22 03 01 00 00 00 00       $  ANS001:7E1 03 22 03 01 00 00 00 00
  $  REQ002:7E9 03 22 03 02 00 00 00 00       $  ANS002:7E1 03 22 03 02 00 00 00 00
  $  REQ003:7E9 03 22 03 03 00 00 00 00       $  ANS003:7E1 03 22 03 03 00 00 00 00
  $  REQ004:7E9 03 22 03 04 00 00 00 00       $  ANS004:7E1 03 22 03 04 00 00 00 00
  $  REQ005:7E9 03 22 03 05 00 00 00 00       $  ANS005:7E1 03 22 03 05 00 00 00 00
  $  REQ006:7E9 03 22 03 06 00 00 00 00       $  ANS006:7E1 03 22 03 06 00 00 00 00
  $  REQ007:7E9 03 22 03 07 00 00 00 00       $  ANS007:7E1 03 22 03 07 00 00 00 00
  $  REQ008:7E9 03 22 03 08 00 00 00 00       $  ANS008:7E1 03 22 03 08 00 00 00 00
  $  REQ009:7E9 03 22 03 09 00 00 00 00       $  ANS009:7E1 03 22 03 09 00 00 00 00
  $  REQ010:7E9 03 22 03 10 00 00 00 00       $  ANS010:7E1 03 22 03 10 00 00 00 00
  $  REQ011:7E9 03 22 03 11 00 00 00 00       $  ANS011:7E1 03 22 03 11 00 00 00 00
  $  REQ012:7E9 03 22 03 12 00 00 00 00       $  ANS012:7E1 03 22 03 12 00 00 00 00
  $  REQ013:7E9 03 22 03 13 00 00 00 00       $  ANS013:7E1 03 22 03 13 00 00 00 00
  $  REQ014:7E9 03 22 03 14 00 00 00 00       $  ANS014:7E1 03 22 03 14 00 00 00 00
  $  REQ015:7E9 03 22 03 15 00 00 00 00       $  ANS015:7E1 03 22 03 15 00 00 00 00
  $  REQ016:7E9 03 22 03 16 00 00 00 00       $  ANS016:7E1 03 22 03 16 00 00 00 00
  $  REQ017:7E9 03 22 03 17 00 00 00 00       $  ANS017:7E1 03 22 03 17 00 00 00 00
  $  REQ018:7E9 03 22 03 18 00 00 00 00       $  ANS018:7E1 03 22 03 18 00 00 00 00
  $  REQ019:7E9 03 22 03 19 00 00 00 00       $  ANS019:7E1 03 22 03 19 00 00 00 00
  $  REQ020:7E9 03 22 03 20 00 00 00 00       $  ANS020:7E1 03 22 03 20 00 00 00 00
  $  REQ021:7E9 03 22 03 21 00 00 00 00       $  ANS021:7E1 03 22 03 21 00 00 00 00
  $  REQ022:7E9 03 22 03 22 00 00 00 00       $  ANS022:7E1 03 22 03 22 00 00 00 00
  $  REQ023:7E9 03 22 03 24 00 00 00 00       $  ANS023:7E1 03 22 03 24 00 00 00 00
  $  REQ024:7E9 03 22 03 25 00 00 00 00       $  ANS024:7E1 03 22 03 25 00 00 00 00

  $  000.发动机转速                                           $    $  rpm      $    $  ANS000.BYTE004  $  if((x1*256+x2)<0x3E80) y=x1*256+x2;else y=@0016;
  $  001.主动轮转速                                           $    $  rpm      $    $  ANS001.BYTE004  $  if((x1*256+x2)<0x3E80) y=x1*256+x2;else y=@0016;
  $  002.从动轮转速                                           $    $  rpm      $    $  ANS002.BYTE004  $  if((x1*256+x2)<0x3E80) y=x1*256+x2;else y=@0016;
  $  003.涡轮转速                                             $    $  rpm      $    $  ANS003.BYTE004  $  if((x1*256+x2)<0x3E80) y=x1*256+x2;else y=@0016;
  $  004.从动缸压力                                           $    $  Mpa      $    $  ANS004.BYTE004  $  if((x1*256+x2)<0x0258) y=(x1*256+x2)*0.01;else y=@0016;
  $  005.节气门开度                                           $    $  %        $    $  ANS005.BYTE004  $  if(x<0x64) y=x;else y=@0016;
  $  006.油门踏板开度                                         $    $  %        $    $  ANS006.BYTE004  $  if(x<0x64) y=x;else y=@0016;
  $  007.变速箱速比                                           $    $           $    $  ANS007.BYTE004  $  if((x1*256+x2)<0x0BB8) y=(x1*256+x2)*0.001;else y=@0016;
  $  008.车速                                                 $    $  Km/h     $    $  ANS008.BYTE004  $  if(x<0xC8) y=x;else y=@0016;
  $  009.变速箱油温                                           $    $  ℃       $    $  ANS009.BYTE004  $  if(x==0) y=-38;else y=@0016;
  $  010.变速箱挡位                                           $    $           $    $  ANS010.BYTE004  $  if((x&0x02)==0x02) y=@00b6;else if((x&0x06)==0x04) y=@00b7;else if((x&0x0E)==0x08) y=@00b8;else if((x&0x1E)==0x10) y=@00b9;else if((x&0x3E)==0x20) y=@00ba;else y=@0016;
  $  011.制动踏板状态                                         $    $           $    $  ANS011.BYTE004  $  if(((x>>0)&1)) y=@00bb;else y=@00bc;
  $  012.主动阀电流控制量                                     $    $  mA       $    $  ANS012.BYTE004  $  if((x1*256+x2)<0x03E8) y=x1*256+x2;else y=@0016;
  $  013.从动阀电流控制量                                     $    $  mA       $    $  ANS013.BYTE004  $  if((x1*256+x2)<0x03E8) y=x1*256+x2;else y=@0016;
  $  014.离合器电流控制量                                     $    $  mA       $    $  ANS014.BYTE004  $  if((x1*256+x2)<0x03E8) y=x1*256+x2;else y=@0016;
  $  015.锁止阀电流控制量                                     $    $  mA       $    $  ANS015.BYTE004  $  if((x1*256+x2)<0x03E8) y=x1*256+x2;else y=@0016;
  $  016.预留(系统阀电流控制量)                               $    $  mA       $    $  ANS016.BYTE004  $  if((x1*256+x2)<0x03E8) y=x1*256+x2;else y=@0016;
  $  017.里程                                                 $    $  Km       $    $  ANS017.BYTE004  $  y=(x1*256+x2)*10;
  $  018.下线检测标志                                         $    $           $    $  ANS018.BYTE004  $  if(((x>>0)&1)) y=@0090;else y=@00bd;
  $  019.下线检测序                                           $    $           $    $  ANS019.BYTE004  $  if(x<0x0C) y=x;else y=@0016;
  $  020.前进挡离合器控制量自适应量                           $    $  mA       $    $  ANS020.BYTE004  $  if((x1*256+x2)<0x03E8) y=x1*256+x2-500;else y=@0016;
  $  021.倒档离合器控制量自适应量                             $    $  mA       $    $  ANS021.BYTE004  $  if((x1*256+x2)<0x03E8) y=x1*256+x2-500;else y=@0016;
  $  022.前进挡离合器控制量自适应量是否写入EEPROM标志位       $    $           $    $  ANS022.BYTE004  $  if(((x>>0)&1)) y=@00be;else y=@00bf;
  $  023.清除下线检测标志                                     $    $           $    $  ANS023.BYTE004  $  if(((x>>0)&1)) y=@00c0;else y=@0060;
  $  024.复位下线检测标志                                     $    $           $    $  ANS024.BYTE004  $  if(((x>>0)&1)) y=@00c1;else y=@0060;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E9 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
