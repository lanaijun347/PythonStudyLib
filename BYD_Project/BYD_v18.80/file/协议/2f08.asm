
    车型ID：2f08

    模拟：协议模拟-->2f08

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~75C

进入命令:

  $~  REQ000:754 02 10 01 00 00 00 00 00       $~  ANS000:75C 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:754 02 3E 80 00 00 00 00 00       $!  ANS000:75C 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:754 03 19 02 09 00 00 00 00       $#  ANS000:75C 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/9f000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:754 04 14 FF FF FF 00 00 00       $$  ANS000:75C 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:754 03 22 F1 93 00 00 00 00       $%  ANS000:75C 03 22 F1 93 00 00 00 00
  $%  REQ001:754 03 22 F1 94 00 00 00 00       $%  ANS001:75C 03 22 F1 94 00 00 00 00
  $%  REQ002:754 03 22 F1 95 00 00 00 00       $%  ANS002:75C 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:754 03 22 00 04 00 00 00 00       $  ANS000:75C 03 22 00 04 00 00 00 00
  $  REQ001:754 03 22 00 05 00 00 00 00       $  ANS001:75C 03 22 00 05 00 00 00 00
  $  REQ002:754 03 22 00 06 00 00 00 00       $  ANS002:75C 03 22 00 06 00 00 00 00
  $  REQ003:754 03 22 00 07 00 00 00 00       $  ANS003:75C 03 22 00 07 00 00 00 00
  $  REQ004:754 03 22 00 0C 00 00 00 00       $  ANS004:75C 03 22 00 0C 00 00 00 00
  $  REQ005:754 03 22 00 0D 00 00 00 00       $  ANS005:75C 03 22 00 0D 00 00 00 00
  $  REQ006:754 03 22 00 0E 00 00 00 00       $  ANS006:75C 03 22 00 0E 00 00 00 00
  $  REQ007:754 03 22 00 0F 00 00 00 00       $  ANS007:75C 03 22 00 0F 00 00 00 00
  $  REQ008:754 03 22 00 10 00 00 00 00       $  ANS008:75C 03 22 00 10 00 00 00 00

  $  000.左前轮ID                   $    $          $    $  ANS000.BYTE004  $  HEX(x1,x2,x3,x4);
  $  001.左前轮信号状态             $    $          $    $  ANS000.BYTE008  $  switxh(x1)0x00: y=@0045;0x01: y=@01d9;0x02: y=@0487;0xFF: y=@03bc;default: y=@0002;
  $  002.左前轮漏气状态             $    $          $    $  ANS000.BYTE009  $  switxh(x1&0x03)0x00: y=@0045;0x01: y=@02c9;0x02: y=@02ca;0x03: y=@0487;default: y=@0002;
  $  003.左前轮压力状态             $    $          $    $  ANS000.BYTE009  $  switxh(x1&0x1C)0x00: y=@0045;0x04: y=@02cb;0x08: y=@02cc;0x0C: y=@0487;0x10: y=@01d9;default: y=@0002;
  $  004.左前温度状态               $    $          $    $  ANS000.BYTE009  $  switxh(x1&0x30)0x00: y=@0045;0x10: y=@0508;0x20: y=@0509;default: y=@0002;
  $  005.左前轮压力值               $    $  kPa     $    $  ANS000.BYTE010  $  y=(x2*256+x1)&0xFFF;
  $  006.左前轮温度值               $    $  ℃      $    $  ANS000.BYTE012  $  y=SPRINTF([%.1f],(x2*256+x1)*0.1-40);
  $  007.右前轮ID                   $    $          $    $  ANS001.BYTE004  $  HEX(x1,x2,x3,x4);
  $  008.右前轮信号状态             $    $          $    $  ANS001.BYTE008  $  switxh(x1)0x00: y=@0045;0x01: y=@01d9;0x02: y=@0487;0xFF: y=@03bc;default: y=@0002;
  $  009.右前轮漏气状态             $    $          $    $  ANS001.BYTE009  $  switxh(x1&0x03)0x00: y=@0045;0x01: y=@02c9;0x02: y=@02ca;0x03: y=@0487;default: y=@0002;
  $  010.右前轮压力状态             $    $          $    $  ANS001.BYTE009  $  switxh(x1&0x1C)0x00: y=@0045;0x04: y=@02cb;0x08: y=@02cc;0x0C: y=@0487;0x10: y=@01d9;default: y=@0002;
  $  011.右前温度状态               $    $          $    $  ANS001.BYTE009  $  switxh(x1&0x30)0x00: y=@0045;0x10: y=@0508;0x20: y=@0509;default: y=@0002;
  $  012.右前轮压力值               $    $  kPa     $    $  ANS001.BYTE010  $  y=(x2*256+x1)&0xFFF;
  $  013.右前轮温度值               $    $  ℃      $    $  ANS001.BYTE012  $  y=SPRINTF([%.1f],(x2*256+x1)*0.1-40);
  $  014.左后轮ID                   $    $          $    $  ANS002.BYTE004  $  HEX(x1,x2,x3,x4);
  $  015.左后轮信号状态             $    $          $    $  ANS002.BYTE008  $  switxh(x1)0x00: y=@0045;0x01: y=@01d9;0x02: y=@0487;0xFF: y=@03bc;default: y=@0002;
  $  016.左后轮漏气状态             $    $          $    $  ANS002.BYTE009  $  switxh(x1&0x03)0x00: y=@0045;0x01: y=@02c9;0x02: y=@02ca;0x03: y=@0487;default: y=@0002;
  $  017.左后轮压力状态             $    $          $    $  ANS002.BYTE009  $  switxh(x1&0x1C)0x00: y=@0045;0x04: y=@02cb;0x08: y=@02cc;0x0C: y=@0487;0x10: y=@01d9;default: y=@0002;
  $  018.左后温度状态               $    $          $    $  ANS002.BYTE009  $  switxh(x1&0x30)0x00: y=@0045;0x10: y=@0508;0x20: y=@0509;default: y=@0002;
  $  019.左后轮压力值               $    $  kPa     $    $  ANS002.BYTE010  $  y=(x2*256+x1)&0xFFF;
  $  020.左后轮温度值               $    $  ℃      $    $  ANS002.BYTE012  $  y=SPRINTF([%.1f],(x2*256+x1)*0.1-40);
  $  021.右后轮ID                   $    $          $    $  ANS003.BYTE004  $  HEX(x1,x2,x3,x4);
  $  022.右后轮信号状态             $    $          $    $  ANS003.BYTE008  $  switxh(x1)0x00: y=@0045;0x01: y=@01d9;0x02: y=@0487;0xFF: y=@03bc;default: y=@0002;
  $  023.右后轮漏气状态             $    $          $    $  ANS003.BYTE009  $  switxh(x1&0x03)0x00: y=@0045;0x01: y=@02c9;0x02: y=@02ca;0x03: y=@0487;default: y=@0002;
  $  024.右后轮压力状态             $    $          $    $  ANS003.BYTE009  $  switxh(x1&0x1C)0x00: y=@0045;0x04: y=@02cb;0x08: y=@02cc;0x0C: y=@0487;0x10: y=@01d9;default: y=@0002;
  $  025.右后温度状态               $    $          $    $  ANS003.BYTE009  $  switxh(x1&0x30)0x00: y=@0045;0x10: y=@0508;0x20: y=@0509;default: y=@0002;
  $  026.右后轮压力值               $    $  kPa     $    $  ANS003.BYTE010  $  y=(x2*256+x1)&0xFFF;
  $  027.右后轮温度值               $    $  ℃      $    $  ANS003.BYTE012  $  y=SPRINTF([%.1f],(x2*256+x1)*0.1-40);
  $  028.前轴标准压力               $    $  kpa     $    $  ANS004.BYTE004  $  y=(x2*256+x1);
  $  029.后轴标准压力               $    $  kpa     $    $  ANS005.BYTE004  $  y=(x2*256+x1);
  $  030.国标/欧标                  $    $          $    $  ANS006.BYTE004  $  switxh(x1)0x00: y=@02d4;0x01: y=@02d7;default: y=@0002;
  $  031.自定位功能                 $    $          $    $  ANS007.BYTE004  $  switxh(x1)0x00: y=@0506;0x01: y=@0507;default: y=@0002;
  $  032.自定位全局状态             $    $          $    $  ANS008.BYTE004  $  switxh(x1)0x00: y=@0488;0x01: y=@0489;0x02: y=@048a;0x03: y=@048b;0x04: y=@048c;0x05: y=@048d;0x06: y=@0598;0x07: y=@048e;0x08: y=@0599;0x09: y=@07da;default: y=@0002;
  $  033.左前轮自定位学习状态       $    $          $    $  ANS008.BYTE005  $  switxh(x1)0x00: y=@0594;0x01: y=@0437;0x02: y=@0436;0x03: y=@0435;default: y=@0002;
  $  034.右前轮自定位学习状态       $    $          $    $  ANS008.BYTE006  $  switxh(x1)0x00: y=@0594;0x01: y=@0437;0x02: y=@0436;0x03: y=@0435;default: y=@0002;
  $  035.左后轮自定位学习状态       $    $          $    $  ANS008.BYTE007  $  switxh(x1)0x00: y=@0594;0x01: y=@0437;0x02: y=@0436;0x03: y=@0435;default: y=@0002;
  $  036.右后轮自定位学习状态       $    $          $    $  ANS008.BYTE008  $  switxh(x1)0x00: y=@0594;0x01: y=@0437;0x02: y=@0436;0x03: y=@0435;default: y=@0002;

;******************************************************************************************************************************************************

动作测试:

$^ 00.写入前轴标准压力 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:754 05 2E 00 0C XX XX 00 00     $^

$^DSP:写入前轴标准压力->kpa
$^TIP:请依据车身B柱标签标准压力写入标准压力，不允许随意更改标准压力 
$^TIP:请输入测试值(范围:0~4094) 
$^IN_F:y=(x1*256+x2);
$^RANGE:0,4094
;----------------------------------------------------------------------------------------------------

$^ 01.写入后轴标准压力 
 $^TYPE:2
$^BUTTON:输入
$^REQ00:754 05 2E 00 0D XX XX 00 00     $^

$^DSP:写入后轴标准压力->kpa
$^TIP:请依据车身B柱标签标准压力写入标准压力，不允许随意更改标准压力 
$^TIP:请输入测试值(范围:0~4094) 
$^IN_F:y=(x1*256+x2);
$^RANGE:0,4094
;----------------------------------------------------------------------------------------------------

$^ 02.写入自动定位功能配置 
$^TYPE0
$^BUTTON:无自动定位 
$^REQ00:754 04 2E 00 0E 00 00 00 00     $^
$^REQ01:754 02 11 01 00 00 00 00 00     $^

$^BUTTON:有自动定位 
$^REQ00:754 04 2E 00 0E 01 00 00 00     $^
$^REQ01:754 02 11 01 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.写入国标/欧标选择配置 
$^TYPE0
$^BUTTON:国标 GB 
$^REQ00:754 04 2E 00 0F 00 00 00 00     $^
$^REQ01:754 02 11 01 00 00 00 00 00     $^

$^BUTTON:欧标 R64 
$^REQ00:754 04 2E 00 0F 01 00 00 00     $^
$^REQ01:754 02 11 01 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:754 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
