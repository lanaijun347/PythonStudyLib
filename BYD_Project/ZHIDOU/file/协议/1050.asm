
    车型ID：1050

    模拟：协议模拟-->1050

;******************************************************************************************************************************************************

    通讯线: $~01$~09$~500k$~7E8

进入命令:

  $~  REQ000:7E0 02 10 01 00 00 00 00 00       $~  ANS000:7E8 02 10 01 00 00 00 00 00
  $~  REQ001:7E0 02 10 01 00 00 00 00 00       $~  ANS001:7E8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E0 02 3E 80 00 00 00 00 00       $!  ANS000:7E8 02 3E 80 00 00 00 00 00

退出命令:

  $@  REQ000:7E0 01 20 00 00 00 00 00 00       $@  ANS000:7E8 01 20 00 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E0 03 19 02 FF 00 00 00 00       $#  ANS000:7E8 03 19 02 FF 00 00 00 00

		控制公式：
			y=(x1<<8)+x2; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/31050000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E0 02 14 FF 00 00 00 00 00       $$  ANS000:7E8 02 14 FF 00 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 02 24 01 00 00 00 00 00       $%  ANS000:7E8 02 24 01 00 00 00 00 00
  $%  REQ001:7E0 02 24 02 00 00 00 00 00       $%  ANS001:7E8 02 24 02 00 00 00 00 00
  $%  REQ002:7E0 02 24 03 00 00 00 00 00       $%  ANS002:7E8 02 24 03 00 00 00 00 00
  $%  REQ003:7E0 02 24 04 00 00 00 00 00       $%  ANS003:7E8 02 24 04 00 00 00 00 00
  $%  REQ004:7E0 02 24 05 00 00 00 00 00       $%  ANS004:7E8 02 24 05 00 00 00 00 00

  $%  000:车辆VIN:                 $%    $%  ANS000.BYTE003  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  001:零部件供应商代码:        $%    $%  ANS001.BYTE003  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  002:零部件图号:              $%    $%  ANS002.BYTE003  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  003:零部件批次号:            $%    $%  ANS003.BYTE003  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  004:ECU软硬件版本号:         $%    $%  ANS004.BYTE003  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.读取动态数据流
  $  00.读取动态数据流
  $  REQ000:7E0 03 22 00 01 00 00 00 00       $  ANS000:7E8 03 22 00 01 00 00 00 00
  $  REQ001:7E0 03 22 00 02 00 00 00 00       $  ANS001:7E8 03 22 00 02 00 00 00 00
  $  REQ002:7E0 03 22 00 03 00 00 00 00       $  ANS002:7E8 03 22 00 03 00 00 00 00
  $  REQ003:7E0 03 22 00 04 00 00 00 00       $  ANS003:7E8 03 22 00 04 00 00 00 00
  $  REQ004:7E0 03 22 00 05 00 00 00 00       $  ANS004:7E8 03 22 00 05 00 00 00 00
  $  REQ005:7E0 03 22 00 06 00 00 00 00       $  ANS005:7E8 03 22 00 06 00 00 00 00
  $  REQ006:7E0 03 22 00 07 00 00 00 00       $  ANS006:7E8 03 22 00 07 00 00 00 00
  $  REQ007:7E0 03 22 00 08 00 00 00 00       $  ANS007:7E8 03 22 00 08 00 00 00 00
  $  REQ008:7E0 03 22 00 09 00 00 00 00       $  ANS008:7E8 03 22 00 09 00 00 00 00
  $  REQ009:7E0 03 22 00 0A 00 00 00 00       $  ANS009:7E8 03 22 00 0A 00 00 00 00
  $  REQ010:7E0 03 22 00 0B 00 00 00 00       $  ANS010:7E8 03 22 00 0B 00 00 00 00
  $  REQ011:7E0 03 22 00 0C 00 00 00 00       $  ANS011:7E8 03 22 00 0C 00 00 00 00
  $  REQ012:7E0 03 22 00 20 00 00 00 00       $  ANS012:7E8 03 22 00 20 00 00 00 00
  $  REQ013:7E0 03 22 00 21 00 00 00 00       $  ANS013:7E8 03 22 00 21 00 00 00 00
  $  REQ014:7E0 03 22 00 22 00 00 00 00       $  ANS014:7E8 03 22 00 22 00 00 00 00
  $  REQ015:7E0 03 22 00 23 00 00 00 00       $  ANS015:7E8 03 22 00 23 00 00 00 00
  $  REQ016:7E0 03 22 00 24 00 00 00 00       $  ANS016:7E8 03 22 00 24 00 00 00 00
  $  REQ017:7E0 03 22 00 25 00 00 00 00       $  ANS017:7E8 03 22 00 25 00 00 00 00
  $  REQ018:7E0 03 22 00 30 00 00 00 00       $  ANS018:7E8 03 22 00 30 00 00 00 00
  $  REQ019:7E0 03 22 00 31 00 00 00 00       $  ANS019:7E8 03 22 00 31 00 00 00 00
  $  REQ020:7E0 03 22 00 32 00 00 00 00       $  ANS020:7E8 03 22 00 32 00 00 00 00
  $  REQ021:7E0 03 22 00 33 00 00 00 00       $  ANS021:7E8 03 22 00 33 00 00 00 00
  $  REQ022:7E0 03 22 00 34 00 00 00 00       $  ANS022:7E8 03 22 00 34 00 00 00 00
  $  REQ023:7E0 03 22 00 40 00 00 00 00       $  ANS023:7E8 03 22 00 40 00 00 00 00
  $  REQ024:7E0 03 22 00 41 00 00 00 00       $  ANS024:7E8 03 22 00 41 00 00 00 00
  $  REQ025:7E0 03 22 00 42 00 00 00 00       $  ANS025:7E8 03 22 00 42 00 00 00 00
  $  REQ026:7E0 03 22 00 43 00 00 00 00       $  ANS026:7E8 03 22 00 43 00 00 00 00
  $  REQ027:7E0 03 22 00 50 00 00 00 00       $  ANS027:7E8 03 22 00 50 00 00 00 00

  $  000.当前车速                               $    $  km/h     $    $  ANS000.BYTE004  $  y=x;
  $  001.加速踏板实际开度                       $    $  %        $    $  ANS001.BYTE004  $  y=(x&0x7F);
  $  002.制动踏板实际开度                       $    $  %        $    $  ANS001.BYTE004  $  y=(((x1+x2*256)>>7)&0x7F);
  $  003.动力电池当前输入电功率                 $    $  W        $    $  ANS002.BYTE004  $  y=(x1+x2*256)-32000;
  $  004.动力电池当前输出电功率                 $    $  W        $    $  ANS002.BYTE006  $  y=(x1+x2*256);
  $  005.电机当前输入机械功率                   $    $  W        $    $  ANS003.BYTE004  $  y=(x1+x2*256);
  $  006.电机当前输出机械功率                   $    $  W        $    $  ANS003.BYTE006  $  y=(x1+x2*256);
  $  007.电机当前目标扭矩                       $    $  N.m      $    $  ANS004.BYTE004  $  y=((x1+x2*256)&0x3FF)*0.5-100;
  $  008.电机当前实际扭矩                       $    $  N.m      $    $  ANS004.BYTE005  $  y=(((x1+x2*256)>>2)&0x3FF)*0.5-100;
  $  009.电机当前目标转速                       $    $  rpm      $    $  ANS005.BYTE004  $  y=((x1+x2*256)&0x3FFF)*2-8000;
  $  010.电机当前实际转速                       $    $  rpm      $    $  ANS005.BYTE005  $  y=(((x1+x2*256+x3*256*256)>>6)&0x3FFF)*2-8000;
  $  011.电机控制器初始化时间                   $    $  ms       $    $  ANS006.BYTE004  $  y=x*10;
  $  012.BMS初始化时间                          $    $  ms       $    $  ANS006.BYTE005  $  y=x*10;
  $  013.充电机初始化时间                       $    $  ms       $    $  ANS007.BYTE004  $  y=x*10;
  $  014.DC/DC初始化时间                        $    $  ms       $    $  ANS007.BYTE005  $  y=x*10;
  $  015.组合仪表初始化时间                     $    $  ms       $    $  ANS008.BYTE004  $  y=x*10;
  $  016.GPRS初始化时间                         $    $  ms       $    $  ANS008.BYTE005  $  y=x*10;
  $  017.影音导航初始化时间                     $    $  ms       $    $  ANS008.BYTE006  $  y=x*10;
  $  018.高压系统预充电时间                     $    $  ms       $    $  ANS009.BYTE004  $  y=((x1+x2*256)&0x3FF)*10;
  $  019.整车准备就绪时间                       $    $  ms       $    $  ANS010.BYTE004  $  y=((x1+x2*256)&0x3FF)*10;
  $  020.真空泵真空度                           $    $  kPa      $    $  ANS011.BYTE004  $  y=(x&0x7F);
  $  021.充电机高压端输出电压                   $    $  V        $    $  ANS012.BYTE004  $  y=((x1+x2*256)&0x1FF)*0.5;
  $  022.充电机高压端输出电流                   $    $  A        $    $  ANS012.BYTE005  $  y=(((x1+x2*256)>>1)&0x3FFF)*0.1-500;
  $  023.充电机高压端输出功率                   $    $  W        $    $  ANS013.BYTE004  $  y=(x1+x2*256);
  $  024.充电机温度                             $    $  °C      $    $  ANS014.BYTE004  $  y=x*2-40;
  $  025.充电机低压端输出电压                   $    $  V        $    $  ANS015.BYTE004  $  y=((x1+x2*256)&0x1FF)*0.5;
  $  026.充电机低压端输出电流                   $    $  A        $    $  ANS015.BYTE005  $  y=(((x1+x2*256)>>1)&0x3FFF)*0.1;
  $  027.充电机低压端输出功率                   $    $  W        $    $  ANS016.BYTE004  $  y=(x1+x2*256);
  $  028.充电机高压输出端当前最大输出电压       $    $  V        $    $  ANS017.BYTE004  $  y=((x1+x2*256)&0x1FF)*0.5;
  $  029.充电机高压输出端当前最大输出电流       $    $  A        $    $  ANS017.BYTE005  $  y=(((x1+x2*256)>>1)&0x3FFF)*0.1-500;
  $  030.DC/DC高压端输入电压                    $    $  V        $    $  ANS018.BYTE004  $  y=((x1+x2*256)&0x1FF)*0.5;
  $  031.DC/DC高压端输入电流                    $    $  A        $    $  ANS018.BYTE005  $  y=(((x1+x2*256)>>1)&0x3FFF)*0.1;
  $  032.DC/DC高压端输入功率                    $    $  W        $    $  ANS019.BYTE004  $  y=(x1+x2*256);
  $  033.DC/DC低压端输出电压                    $    $  V        $    $  ANS020.BYTE004  $  y=x*0.1;
  $  034.DC/DC低压端输出电流                    $    $  A        $    $  ANS020.BYTE005  $  y=((x1+x2*256)&0x7FF)*0.1;
  $  035.DC/DC低压端输出功率                    $    $  W        $    $  ANS021.BYTE004  $  y=(x1+x2*256);
  $  036.DC/DC温度                              $    $  °C      $    $  ANS022.BYTE004  $  y=x*2-40;
  $  037.GPRS时间信息-年                        $    $  年       $    $  ANS023.BYTE004  $  y=(x&0x7F);
  $  038.GPRS时间信息-月                        $    $  月       $    $  ANS023.BYTE004  $  y=(((x1+x2*256)>>7)&0x0F);
  $  039.GPRS时间信息-日                        $    $  日       $    $  ANS023.BYTE005  $  y=((x>>3)&0x1F);
  $  040.GPRS时间信息-时                        $    $  时       $    $  ANS024.BYTE004  $  y=(x&0x1F);
  $  041.GPRS时间信息-分                        $    $  分       $    $  ANS024.BYTE004  $  y=(((x1+x2*256)>>5)&0x3F);
  $  042.GPRS时间信息-秒                        $    $  秒       $    $  ANS024.BYTE005  $  y=(((x1+x2*256)>>3)&0x3F);
  $  043.GPRS车速                               $    $  km/h     $    $  ANS025.BYTE004  $  y=((x1+x2*256)&0x7FF);
  $  044.GPRS位置信息-经度                      $    $  度       $    $  ANS026.BYTE004  $  y=((x1+x2*256)&0x1FF)*2-180;
  $  045.GPRS位置信息-经分                      $    $  分       $    $  ANS026.BYTE005  $  y=((x>>1)&0x3F);
  $  046.GPRS位置信息-纬度                      $    $  度       $    $  ANS026.BYTE005  $  y=((x1+x2*256)>>7)-90;
  $  047.GPRS位置信息-纬分                      $    $  分       $    $  ANS026.BYTE006  $  y=(((x1+x2*256)>>7)&0x3F);
  $  048.电机系统故障等级                       $    $           $    $  ANS027.BYTE004  $  y=(x&0x03);
  $  049.动力电池系统故障等级                   $    $           $    $  ANS027.BYTE004  $  y=((x>>2)&0x03);
  $  050.充电机系统故障等级                     $    $           $    $  ANS027.BYTE004  $  y=((x>>4)&0x03);
  $  051.DCDC系统故障等级                       $    $           $    $  ANS027.BYTE004  $  y=((x>>6)&0x03);

  $)  01.读取状态数据流
  $  01.读取状态数据流
  $  REQ000:7E0 03 22 01 01 00 00 00 00       $  ANS000:7E8 03 22 01 01 00 00 00 00
  $  REQ001:7E0 03 22 01 02 00 00 00 00       $  ANS001:7E8 03 22 01 02 00 00 00 00
  $  REQ002:7E0 03 22 01 03 00 00 00 00       $  ANS002:7E8 03 22 01 03 00 00 00 00
  $  REQ003:7E0 03 22 01 04 00 00 00 00       $  ANS003:7E8 03 22 01 04 00 00 00 00
  $  REQ004:7E0 03 22 01 05 00 00 00 00       $  ANS004:7E8 03 22 01 05 00 00 00 00
  $  REQ005:7E0 03 22 01 06 00 00 00 00       $  ANS005:7E8 03 22 01 06 00 00 00 00
  $  REQ006:7E0 03 22 01 07 00 00 00 00       $  ANS006:7E8 03 22 01 07 00 00 00 00
  $  REQ007:7E0 03 22 01 08 00 00 00 00       $  ANS007:7E8 03 22 01 08 00 00 00 00
  $  REQ008:7E0 03 22 01 10 00 00 00 00       $  ANS008:7E8 03 22 01 10 00 00 00 00
  $  REQ009:7E0 03 22 01 11 00 00 00 00       $  ANS009:7E8 03 22 01 11 00 00 00 00
  $  REQ010:7E0 03 22 01 12 00 00 00 00       $  ANS010:7E8 03 22 01 12 00 00 00 00
  $  REQ011:7E0 03 22 01 13 00 00 00 00       $  ANS011:7E8 03 22 01 13 00 00 00 00
  $  REQ012:7E0 03 22 01 14 00 00 00 00       $  ANS012:7E8 03 22 01 14 00 00 00 00
  $  REQ013:7E0 03 22 01 15 00 00 00 00       $  ANS013:7E8 03 22 01 15 00 00 00 00
  $  REQ014:7E0 03 22 01 16 00 00 00 00       $  ANS014:7E8 03 22 01 16 00 00 00 00
  $  REQ015:7E0 03 22 01 17 00 00 00 00       $  ANS015:7E8 03 22 01 17 00 00 00 00
  $  REQ016:7E0 03 22 01 18 00 00 00 00       $  ANS016:7E8 03 22 01 18 00 00 00 00

  $  000.动力系统运行阶段                       $    $       $    $  ANS000.BYTE004  $  if((x&0x0F)==0x00) y=@0082;else if((x&0x0F)==0x01) y=@0077;else if((x&0x0F)==0x02) y=@0043;else if((x&0x0F)==0x03) y=@00a3;else if((x&0x0F)==0x04) y=@0000;else if((x&0x0F)==0x05) y=@00a4;else if((x&0x0F)==0x06) y=@00a5;else if((x&0x0F)==0x07) y=@00a6;else if((x&0x0F)==0x08) y=@007b;else if((x&0x0F)==0x09) y=@0001;else if((x&0x0F)==0x0A) y=@00a7;else if((x&0x0F)==0x0B) y=@0166;else y=@000e;
  $  001.车身系统运行阶段                       $    $       $    $  ANS000.BYTE004  $  if(((x>>4)&0x0F)==0x00) y=@0082;else if(((x>>4)&0x0F)==0x01) y=@0077;else if(((x>>4)&0x0F)==0x02) y=@0043;else if(((x>>4)&0x0F)==0x03) y=@00a3;else if(((x>>4)&0x0F)==0x04) y=@0000;else if(((x>>4)&0x0F)==0x05) y=@00a4;else if(((x>>4)&0x0F)==0x06) y=@00a5;else if(((x>>4)&0x0F)==0x07) y=@00a6;else if(((x>>4)&0x0F)==0x08) y=@007b;else if(((x>>4)&0x0F)==0x09) y=@0001;else if(((x>>4)&0x0F)==0x0A) y=@00a7;else if(((x>>4)&0x0F)==0x0B) y=@0166;else y=@000e;
  $  002.整车故障等级                           $    $       $    $  ANS000.BYTE005  $  if((x&0x0F)==0x00) y=@0000;else if((x&0x0F)==0x01) y=@0001;else if((x&0x0F)==0x02) y=@00a1;else if((x&0x0F)==0x03) y=@00c6;else y=@000e;
  $  003.电机系统目标运行阶段                   $    $       $    $  ANS001.BYTE004  $  if((x&0x0F)==0x00) y=@0082;else if((x&0x0F)==0x01) y=@0077;else if((x&0x0F)==0x02) y=@0043;else if((x&0x0F)==0x03) y=@00a3;else if((x&0x0F)==0x04) y=@0000;else if((x&0x0F)==0x05) y=@00a4;else if((x&0x0F)==0x06) y=@00a5;else if((x&0x0F)==0x07) y=@00a6;else if((x&0x0F)==0x08) y=@007b;else if((x&0x0F)==0x09) y=@0001;else if((x&0x0F)==0x0A) y=@00a7;else if((x&0x0F)==0x0B) y=@0166;else y=@000e;
  $  004.动力电池系统目标运行阶段               $    $       $    $  ANS001.BYTE004  $  if(((x>>4)&0x0F)==0x00) y=@0082;else if(((x>>4)&0x0F)==0x01) y=@0077;else if(((x>>4)&0x0F)==0x02) y=@0043;else if(((x>>4)&0x0F)==0x03) y=@00a3;else if(((x>>4)&0x0F)==0x04) y=@0000;else if(((x>>4)&0x0F)==0x05) y=@00a4;else if(((x>>4)&0x0F)==0x06) y=@00a5;else if(((x>>4)&0x0F)==0x07) y=@00a6;else if(((x>>4)&0x0F)==0x08) y=@007b;else if(((x>>4)&0x0F)==0x09) y=@0001;else if(((x>>4)&0x0F)==0x0A) y=@00a7;else if(((x>>4)&0x0F)==0x0B) y=@0166;else y=@000e;
  $  005.充电机目标运行阶段                     $    $       $    $  ANS001.BYTE005  $  if((x&0x0F)==0x00) y=@0082;else if((x&0x0F)==0x01) y=@0077;else if((x&0x0F)==0x02) y=@0043;else if((x&0x0F)==0x03) y=@00a3;else if((x&0x0F)==0x04) y=@0000;else if((x&0x0F)==0x05) y=@00a4;else if((x&0x0F)==0x06) y=@00a5;else if((x&0x0F)==0x07) y=@00a6;else if((x&0x0F)==0x08) y=@007b;else if((x&0x0F)==0x09) y=@0001;else if((x&0x0F)==0x0A) y=@00a7;else if((x&0x0F)==0x0B) y=@0166;else y=@000e;
  $  006.DCDC目标运行阶段                       $    $       $    $  ANS001.BYTE005  $  if(((x>>4)&0x0F)==0x00) y=@0082;else if(((x>>4)&0x0F)==0x01) y=@0077;else if(((x>>4)&0x0F)==0x02) y=@0043;else if(((x>>4)&0x0F)==0x03) y=@00a3;else if(((x>>4)&0x0F)==0x04) y=@0000;else if(((x>>4)&0x0F)==0x05) y=@00a4;else if(((x>>4)&0x0F)==0x06) y=@00a5;else if(((x>>4)&0x0F)==0x07) y=@00a6;else if(((x>>4)&0x0F)==0x08) y=@007b;else if(((x>>4)&0x0F)==0x09) y=@0001;else if(((x>>4)&0x0F)==0x0A) y=@00a7;else if(((x>>4)&0x0F)==0x0B) y=@0166;else y=@000e;
  $  007.GPRS实际运行阶段                       $    $       $    $  ANS002.BYTE004  $  if((x&0x0F)==0x00) y=@0082;else if((x&0x0F)==0x01) y=@0077;else if((x&0x0F)==0x02) y=@0043;else if((x&0x0F)==0x03) y=@00a3;else if((x&0x0F)==0x04) y=@0000;else if((x&0x0F)==0x05) y=@00a4;else if((x&0x0F)==0x06) y=@00a5;else if((x&0x0F)==0x07) y=@00a6;else if((x&0x0F)==0x08) y=@007b;else if((x&0x0F)==0x09) y=@0001;else if((x&0x0F)==0x0A) y=@00a7;else if((x&0x0F)==0x0B) y=@0166;else y=@000e;
  $  008.组合仪表实际运行阶段                   $    $       $    $  ANS002.BYTE004  $  if(((x>>4)&0x0F)==0x00) y=@0082;else if(((x>>4)&0x0F)==0x01) y=@0077;else if(((x>>4)&0x0F)==0x02) y=@0043;else if(((x>>4)&0x0F)==0x03) y=@00a3;else if(((x>>4)&0x0F)==0x04) y=@0000;else if(((x>>4)&0x0F)==0x05) y=@00a4;else if(((x>>4)&0x0F)==0x06) y=@00a5;else if(((x>>4)&0x0F)==0x07) y=@00a6;else if(((x>>4)&0x0F)==0x08) y=@007b;else if(((x>>4)&0x0F)==0x09) y=@0001;else if(((x>>4)&0x0F)==0x0A) y=@00a7;else if(((x>>4)&0x0F)==0x0B) y=@0166;else y=@000e;
  $  009.AMS实际运行阶段                        $    $       $    $  ANS002.BYTE005  $  if((x&0x0F)==0x00) y=@0082;else if((x&0x0F)==0x01) y=@0077;else if((x&0x0F)==0x02) y=@0043;else if((x&0x0F)==0x03) y=@00a3;else if((x&0x0F)==0x04) y=@0000;else if((x&0x0F)==0x05) y=@00a4;else if((x&0x0F)==0x06) y=@00a5;else if((x&0x0F)==0x07) y=@00a6;else if((x&0x0F)==0x08) y=@007b;else if((x&0x0F)==0x09) y=@0001;else if((x&0x0F)==0x0A) y=@00a7;else if((x&0x0F)==0x0B) y=@0166;else y=@000e;
  $  010.ACU实际运行阶段                        $    $       $    $  ANS002.BYTE005  $  if(((x>>4)&0x0F)==0x00) y=@0082;else if(((x>>4)&0x0F)==0x01) y=@0077;else if(((x>>4)&0x0F)==0x02) y=@0043;else if(((x>>4)&0x0F)==0x03) y=@00a3;else if(((x>>4)&0x0F)==0x04) y=@0000;else if(((x>>4)&0x0F)==0x05) y=@00a4;else if(((x>>4)&0x0F)==0x06) y=@00a5;else if(((x>>4)&0x0F)==0x07) y=@00a6;else if(((x>>4)&0x0F)==0x08) y=@007b;else if(((x>>4)&0x0F)==0x09) y=@0001;else if(((x>>4)&0x0F)==0x0A) y=@00a7;else if(((x>>4)&0x0F)==0x0B) y=@0166;else y=@000e;
  $  011.EPS实际运行阶段                        $    $       $    $  ANS002.BYTE006  $  if((x&0x0F)==0x00) y=@0082;else if((x&0x0F)==0x01) y=@0077;else if((x&0x0F)==0x02) y=@0043;else if((x&0x0F)==0x03) y=@00a3;else if((x&0x0F)==0x04) y=@0000;else if((x&0x0F)==0x05) y=@00a4;else if((x&0x0F)==0x06) y=@00a5;else if((x&0x0F)==0x07) y=@00a6;else if((x&0x0F)==0x08) y=@007b;else if((x&0x0F)==0x09) y=@0001;else if((x&0x0F)==0x0A) y=@00a7;else if((x&0x0F)==0x0B) y=@0166;else y=@000e;
  $  012.BCM实际运行阶段                        $    $       $    $  ANS002.BYTE006  $  if(((x>>4)&0x0F)==0x00) y=@0082;else if(((x>>4)&0x0F)==0x01) y=@0077;else if(((x>>4)&0x0F)==0x02) y=@0043;else if(((x>>4)&0x0F)==0x03) y=@00a3;else if(((x>>4)&0x0F)==0x04) y=@0000;else if(((x>>4)&0x0F)==0x05) y=@00a4;else if(((x>>4)&0x0F)==0x06) y=@00a5;else if(((x>>4)&0x0F)==0x07) y=@00a6;else if(((x>>4)&0x0F)==0x08) y=@007b;else if(((x>>4)&0x0F)==0x09) y=@0001;else if(((x>>4)&0x0F)==0x0A) y=@00a7;else if(((x>>4)&0x0F)==0x0B) y=@0166;else y=@000e;
  $  013.制动系统运行状态(真空泵)               $    $       $    $  ANS003.BYTE004  $  if((x&0x01)==0x00) y=@0082;else y=@00c7;
  $  014.DCDC实际运行阶段                       $    $       $    $  ANS004.BYTE004  $  if((x&0x0F)==0x00) y=@0082;else if((x&0x0F)==0x01) y=@0077;else if((x&0x0F)==0x02) y=@0043;else if((x&0x0F)==0x03) y=@00a3;else if((x&0x0F)==0x04) y=@0000;else if((x&0x0F)==0x05) y=@00a4;else if((x&0x0F)==0x06) y=@00a5;else if((x&0x0F)==0x07) y=@00a6;else if((x&0x0F)==0x08) y=@007b;else if((x&0x0F)==0x09) y=@0001;else if((x&0x0F)==0x0A) y=@00a7;else if((x&0x0F)==0x0B) y=@0166;else y=@000e;
  $  015.DCDC故障等级                           $    $       $    $  ANS004.BYTE004  $  if(((x>>4)&0x03)==0x00) y=@0081;else if(((x>>4)&0x03)==0x01) y=@0001;else if(((x>>4)&0x03)==0x02) y=@00a1;else y=@00c6;
  $  016.空调低压电源继电器开关状态             $    $       $    $  ANS005.BYTE004  $  if((x&0x03)==0x00) y=@00c4;else if((x&0x03)==0x01) y=@0099;else if((x&0x03)==0x02) y=@00c5;else y=@000d;
  $  017.BMS低压电源继电器开关状态              $    $       $    $  ANS005.BYTE004  $  if(((x>>2)&0x01)==0x00) y=@0011;else y=@0012;
  $  018.电机控制器低压电源继电器开关状态       $    $       $    $  ANS005.BYTE004  $  if(((x>>3)&0x01)==0x00) y=@0011;else y=@0012;
  $  019.接触器目标状态                         $    $       $    $  ANS006.BYTE004  $  if((x&0x07)==0x00) y=@00c8;else if((x&0x07)==0x01) y=@00aa;else if((x&0x07)==0x02) y=@00c9;else if((x&0x07)==0x03) y=@00ca;else if((x&0x07)==0x04) y=@00cb;else y=@000e;
  $  020.接触器实际状态                         $    $       $    $  ANS006.BYTE004  $  if(((x>>3)&0x07)==0x00) y=@00c8;else if(((x>>3)&0x07)==0x01) y=@00aa;else if(((x>>3)&0x07)==0x02) y=@00c9;else if(((x>>3)&0x07)==0x03) y=@00ca;else if(((x>>3)&0x07)==0x04) y=@00cb;else y=@000e;
  $  021.整车高压绝缘状态                       $    $       $    $  ANS007.BYTE004  $  if((x&0x03)==0x00) y=@00ba;else if((x&0x03)==0x01) y=@00bb;else if((x&0x03)==0x02) y=@00bc;else y=@000d;
  $  022.动力电池系统高压互锁状态               $    $       $    $  ANS008.BYTE004  $  if((x&0x01)==0x00) y=@0011;else y=@0012;
  $  023.分线盒盖开状态                         $    $       $    $  ANS008.BYTE004  $  if(((x>>1)&0x01)==0x00) y=@0011;else y=@0012;
  $  024.维修开关状态                           $    $       $    $  ANS008.BYTE004  $  if(((x>>2)&0x01)==0x00) y=@0011;else y=@0012;
  $  025.碰撞状态                               $    $       $    $  ANS009.BYTE004  $  if((x&0x01)==0x00) y=@009e;else y=@00b9;
  $  026.充电机使能(来自VCU)                    $    $       $    $  ANS010.BYTE004  $  if((x&0x01)==0x00) y=@00c2;else y=@00c3;
  $  027.外接充电状态                           $    $       $    $  ANS010.BYTE004  $  if(((x>>1)&0x01)==0x00) y=@00c0;else y=@00c1;
  $  028.钥匙开关位置状态                       $    $       $    $  ANS011.BYTE004  $  if((x&0x03)==0x00) y=@0054;else if((x&0x03)==0x01) y=@00be;else if((x&0x03)==0x02) y=@0053;else y=@00bf;
  $  029.模式开关位置                           $    $       $    $  ANS011.BYTE004  $  if(((x>>2)&0x03)==0x00) y=@00bd;else if(((x>>2)&0x03)==0x01) y=@009c;else if(((x>>2)&0x03)==0x02) y=@009d;else y=@007b;
  $  030.档位开关位置                           $    $       $    $  ANS011.BYTE004  $  if(((x>>4)&0x03)==0x00) y=@00b6;else if(((x>>4)&0x03)==0x01) y=@00b7;else if(((x>>4)&0x03)==0x02) y=@00b8;else y=@000e;
  $  031.手刹状态                               $    $       $    $  ANS012.BYTE004  $  if((x&0x01)==0x00) y=@00b4;else y=@00b5;
  $  032.VCU电源来源                            $    $       $    $  ANS013.BYTE004  $  if((x&0x03)==0x00) y=@00b1;else if((x&0x03)==0x01) y=@00b2;else if((x&0x03)==0x02) y=@00b3;else y=@000d;
  $  033.电机使能(来自VCU)                      $    $       $    $  ANS014.BYTE004  $  if((x&0x01)==0x00) y=@00c2;else y=@00c3;
  $  034.电机目标运行模式                       $    $       $    $  ANS014.BYTE004  $  if(((x>>1)&0x03)==0x00) y=@00ae;else if(((x>>1)&0x03)==0x01) y=@00af;else if(((x>>1)&0x03)==0x02) y=@00b0;else y=@007b;
  $  035.DCDC使能(来自VCU)                      $    $       $    $  ANS015.BYTE004  $  if((x&0x01)==0x00) y=@00c2;else y=@00c3;
  $  036.整车Ready使能(来自VCU)                 $    $       $    $  ANS016.BYTE004  $  if((x&0x01)==0x00) y=@00c2;else y=@00c3;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
