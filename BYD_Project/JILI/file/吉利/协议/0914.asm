
    车型ID：0914

    模拟：协议模拟-->0914

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7ED

进入命令:

  $~  REQ000:7E5 02 10 01 00 00 00 00 00       $~  ANS000:7ED 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E5 02 3E 00 00 00 00 00 00       $!  ANS000:7ED 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7E5 03 19 02 09 00 00 00 00       $#  ANS000:7ED 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ae000000


  $#  01.读故障码库
  $#  REQ000:7E5 02 19 0A 00 00 00 00 00       $#  ANS000:7ED 02 19 0A 00 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ae000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E5 04 14 FF FF FF 00 00 00       $$  ANS000:7ED 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E5 03 22 F1 12 00 00 00 00       $%  ANS000:7ED 03 22 F1 12 00 00 00 00
  $%  REQ001:7E5 03 22 F1 80 00 00 00 00       $%  ANS001:7ED 03 22 F1 80 00 00 00 00
  $%  REQ002:7E5 03 22 F1 87 00 00 00 00       $%  ANS002:7ED 03 22 F1 87 00 00 00 00
  $%  REQ003:7E5 03 22 F1 8A 00 00 00 00       $%  ANS003:7ED 03 22 F1 8A 00 00 00 00
  $%  REQ004:7E5 03 22 F1 90 00 00 00 00       $%  ANS004:7ED 03 22 F1 90 00 00 00 00
  $%  REQ005:7E5 03 22 F1 93 00 00 00 00       $%  ANS005:7ED 03 22 F1 93 00 00 00 00
  $%  REQ006:7E5 03 22 F1 95 00 00 00 00       $%  ANS006:7ED 03 22 F1 95 00 00 00 00
  $%  REQ007:7E5 03 22 F1 98 00 00 00 00       $%  ANS007:7ED 03 22 F1 98 00 00 00 00
  $%  REQ008:7E5 03 22 F1 99 00 00 00 00       $%  ANS008:7ED 03 22 F1 99 00 00 00 00
  $%  REQ009:7E5 03 22 F1 9D 00 00 00 00       $%  ANS009:7ED 03 22 F1 9D 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:引导程序软件识别号:                          $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  002:零件号:                                      $%    $%  ANS002.BYTE004  $%  0 ASCII
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:车辆识别号（VIN码）:                         $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  005:ECU(电子控制器)硬件版本号:                   $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  006:ECU(电子控制器)软件版本号:                   $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)刷写日期:                     $%    $%  ANS008.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  009:ECU(电子控制器)安装日期:                     $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E5 03 22 64 14 00 00 00 00       $  ANS000:7ED 03 22 64 14 00 00 00 00
  $  REQ001:7E5 03 22 64 18 00 00 00 00       $  ANS001:7ED 03 22 64 18 00 00 00 00
  $  REQ002:7E5 03 22 F0 10 00 00 00 00       $  ANS002:7ED 03 22 F0 10 00 00 00 00
  $  REQ003:7E5 03 22 F0 11 00 00 00 00       $  ANS003:7ED 03 22 F0 11 00 00 00 00
  $  REQ004:7E5 03 22 F0 16 00 00 00 00       $  ANS004:7ED 03 22 F0 16 00 00 00 00
  $  REQ005:7E5 03 22 F0 17 00 00 00 00       $  ANS005:7ED 03 22 F0 17 00 00 00 00
  $  REQ006:7E5 03 22 F0 1A 00 00 00 00       $  ANS006:7ED 03 22 F0 1A 00 00 00 00
  $  REQ007:7E5 03 22 F0 1B 00 00 00 00       $  ANS007:7ED 03 22 F0 1B 00 00 00 00
  $  REQ008:7E5 03 22 F0 1C 00 00 00 00       $  ANS008:7ED 03 22 F0 1C 00 00 00 00
  $  REQ009:7E5 03 22 F0 1D 00 00 00 00       $  ANS009:7ED 03 22 F0 1D 00 00 00 00
  $  REQ010:7E5 03 22 F0 20 00 00 00 00       $  ANS010:7ED 03 22 F0 20 00 00 00 00
  $  REQ011:7E5 03 22 F0 22 00 00 00 00       $  ANS011:7ED 03 22 F0 22 00 00 00 00
  $  REQ012:7E5 03 22 F0 24 00 00 00 00       $  ANS012:7ED 03 22 F0 24 00 00 00 00
  $  REQ013:7E5 03 22 F0 28 00 00 00 00       $  ANS013:7ED 03 22 F0 28 00 00 00 00
  $  REQ014:7E5 03 22 F0 29 00 00 00 00       $  ANS014:7ED 03 22 F0 29 00 00 00 00
  $  REQ015:7E5 03 22 F0 2C 00 00 00 00       $  ANS015:7ED 03 22 F0 2C 00 00 00 00
  $  REQ016:7E5 03 22 F0 2D 00 00 00 00       $  ANS016:7ED 03 22 F0 2D 00 00 00 00
  $  REQ017:7E5 03 22 F0 2E 00 00 00 00       $  ANS017:7ED 03 22 F0 2E 00 00 00 00
  $  REQ018:7E5 03 22 F0 44 00 00 00 00       $  ANS018:7ED 03 22 F0 44 00 00 00 00
  $  REQ019:7E5 03 22 F0 31 00 00 00 00       $  ANS019:7ED 03 22 F0 31 00 00 00 00
  $  REQ020:7E5 03 22 F0 34 00 00 00 00       $  ANS020:7ED 03 22 F0 34 00 00 00 00
  $  REQ021:7E5 03 22 F0 41 00 00 00 00       $  ANS021:7ED 03 22 F0 41 00 00 00 00

  $  000.IMU(组合传感器)标定状态              $    $  /       $    $  ANS000.BYTE004  $  if(x==0x00)y=@0312;else if(x==0x01)y=@0c49;else if(x==0x02)y=@0313;else y=@0209;
  $  001.ACU(安全气囊控制单元)点火次数        $    $  /       $    $  ANS001.BYTE004  $  y=x1*256*256*256+x2*256*256+x3*256+x4;
  $  002.前排驾驶员气囊回路阻抗               $    $  ohm     $    $  ANS002.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  003.前排乘员气囊回路阻抗                 $    $  ohm     $    $  ANS003.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  004.前排驾驶员安全带预紧器回路阻抗       $    $  ohm     $    $  ANS004.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  005.前排乘员安全带预紧器回路阻抗         $    $  ohm     $    $  ANS005.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  006.前排驾驶员侧气囊回路阻抗             $    $  ohm     $    $  ANS006.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  007.前排乘员侧气囊回路阻抗               $    $  ohm     $    $  ANS007.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  008.前排驾驶员气帘回路阻抗               $    $  ohm     $    $  ANS008.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  009.前排乘员气帘回路阻抗                 $    $  ohm     $    $  ANS009.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  010.后排左侧安全带预紧器回路阻抗         $    $  ohm     $    $  ANS010.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  011.后排右侧安全带预紧器回路阻抗         $    $  ohm     $    $  ANS011.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  012.电池电压                             $    $  V       $    $  ANS012.BYTE004  $  y=(x1*0x100+x2)*0.01;
  $  013.前排驾驶员安全带锁扣阻抗             $    $  ohm     $    $  ANS013.BYTE004  $  y=x*2;
  $  014.前排乘员安全带锁扣阻抗               $    $  ohm     $    $  ANS014.BYTE004  $  y=x*2;
  $  015.后排左侧安全带锁扣阻抗               $    $  ohm     $    $  ANS015.BYTE004  $  y=x*2;
  $  016.后排中间安全带锁扣阻抗               $    $  ohm     $    $  ANS016.BYTE004  $  y=x*2;
  $  017.后排右侧安全带锁扣阻抗               $    $  ohm     $    $  ANS017.BYTE004  $  y=x*2;
  $  018.前排乘员检测阻抗                     $    $  ohm     $    $  ANS018.BYTE004  $  if(x>0xfe)y=@0c53; else y=x*2;
  $  019.前排驾驶员安全带锁扣                 $    $  /       $    $  ANS019.BYTE004  $  if((x&0x03) == 0x00)y=@0597;   else if((x&0x03) == 0x01)y=@0c4f; else if((x&0x03) == 0x02)y=@01b0;  else y=@0220;
  $  020.前排乘员安全带锁扣                   $    $  /       $    $  ANS020.BYTE004  $  if((x&0x03) == 0x00)y=@0597;   else if((x&0x03) == 0x01)y=@0c4f; else if((x&0x03) == 0x02)y=@01b0;  else y=@0220;
  $  021.乘员检测传感器状态                   $    $  /       $    $  ANS021.BYTE004  $  if((x&0x03) == 0x00)y=@0c50;   else if((x&0x03) == 0x01)y=@0c51; else if((x&0x03) == 0x02)y=@01b0;  else y=@0220;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E5 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:7E5 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
