
    车型ID：10fc

    模拟：协议模拟-->10fc

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~748

进入命令:

  $~  REQ000:740 02 10 01 00 00 00 00 00       $~  ANS000:748 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:740 02 3E 00 00 00 00 00 00       $!  ANS000:748 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:740 03 19 02 08 00 00 00 00       $#  ANS000:748 03 19 02 08 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:  $*$*10FC


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:740 04 14 FF FF FF 00 00 00       $$  ANS000:748 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:740 03 22 F1 8B 00 00 00 00       $%  ANS000:748 03 22 F1 8B 00 00 00 00
  $%  REQ001:740 03 22 F1 90 00 00 00 00       $%  ANS001:748 03 22 F1 90 00 00 00 00
  $%  REQ002:740 03 22 F1 92 00 00 00 00       $%  ANS002:748 03 22 F1 92 00 00 00 00
  $%  REQ003:740 03 22 F1 94 00 00 00 00       $%  ANS003:748 03 22 F1 94 00 00 00 00
  $%  REQ004:740 03 22 F1 CB 00 00 00 00       $%  ANS004:748 03 22 F1 CB 00 00 00 00
  $%  REQ005:740 03 22 F1 8A 00 00 00 00       $%  ANS005:748 03 22 F1 8A 00 00 00 00
  $%  REQ006:740 03 22 F1 88 00 00 00 00       $%  ANS006:748 03 22 F1 88 00 00 00 00
  $%  REQ007:740 03 22 F1 91 00 00 00 00       $%  ANS007:748 03 22 F1 91 00 00 00 00

  $%  000:ECU生产日期:            $%    $%  ANS000.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  001:VIN:                    $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  002:供应商ECU硬件号:        $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3);
  $%  003:供应商ECU软件号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  004:零件号SGMW P/N:         $%    $%  ANS004.BYTE004  $%  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $%  005:供应商标识符:           $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  006:SGMWECU软件号:          $%    $%  ANS006.BYTE004  $%  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $%  007:SGMWECU硬件号:          $%    $%  ANS007.BYTE004  $%  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;

;******************************************************************************************************************************************************

读数据流: 

  $)  00.车外照明系统数据
  $  00.车外照明系统数据
  $  REQ000:740 03 22 70 03 00 00 00 00       $  ANS000:748 03 22 70 03 00 00 00 00
  $  REQ001:740 03 22 70 01 00 00 00 00       $  ANS001:748 03 22 70 01 00 00 00 00

  $  000.车内灯亮度           $    $  %     $    $  ANS000.BYTE004  $  y=x*1+0;
  $  001.位置灯开关           $    $        $    $  ANS001.BYTE004  $  if((x1&0x80)==0x80)y=@0115;else y=@0106;
  $  002.近光灯开关           $    $        $    $  ANS001.BYTE004  $  if((x1&0x40)==0x40)y=@0115;else y=@0106;
  $  003.大灯开关             $    $        $    $  ANS001.BYTE004  $  if((x1&0x20)==0x20)y=@0115;else y=@0106;
  $  004.远光灯开关           $    $        $    $  ANS001.BYTE004  $  if((x1&0x10)==0x10)y=@0115;else y=@0106;
  $  005.左转向灯开关         $    $        $    $  ANS001.BYTE004  $  if((x1&0x08)==0x08)y=@0115;else y=@0106;
  $  006.右转向灯开关         $    $        $    $  ANS001.BYTE004  $  if((x1&0x04)==0x04)y=@0115;else y=@0106;
  $  007.前雾灯开关           $    $        $    $  ANS001.BYTE004  $  if((x1&0x02)==0x02)y=@0115;else y=@0106;
  $  008.后雾灯开关           $    $        $    $  ANS001.BYTE004  $  if((x1&0x01)==0x01)y=@0115;else y=@0106;
  $  009.危险警告灯开关       $    $        $    $  ANS001.BYTE005  $  if((x1&0x80)==0x80)y=@0115;else y=@0106;

  $)  01.刮水器、洗涤器数据
  $  01.刮水器、洗涤器数据
  $  REQ000:740 03 22 A0 02 00 00 00 00       $  ANS000:748 03 22 A0 02 00 00 00 00
  $  REQ001:740 03 22 A0 06 00 00 00 00       $  ANS001:748 03 22 A0 06 00 00 00 00

  $  000.前雨刮高速开关       $    $       $    $  ANS000.BYTE004  $  if((x1&0x80)==0x80)y=@0115;else y=@0106;
  $  001.前雨刮低速开关       $    $       $    $  ANS000.BYTE004  $  if((x1&0x40)==0x40)y=@0115;else y=@0106;
  $  002.前雨刮间歇开关       $    $       $    $  ANS000.BYTE004  $  if((x1&0x20)==0x20)y=@0115;else y=@0106;
  $  003.前雨刮停止开关       $    $       $    $  ANS000.BYTE004  $  if((x1&0x10)==0x10)y=@0115;else y=@0106;
  $  004.前洗涤开关           $    $       $    $  ANS000.BYTE004  $  if((x1&0x01)==0x01)y=@0115;else y=@0106;
  $  005.后雨刮开关           $    $       $    $  ANS000.BYTE005  $  if((x1&0x80)==0x80)y=@0115;else y=@0106;
  $  006.后洗涤开关           $    $       $    $  ANS000.BYTE005  $  if((x1&0x40)==0x40)y=@0115;else y=@0106;
  $  007.前雨刮高速电机       $    $       $    $  ANS001.BYTE004  $  if((x1&0x80)==0x80)y=@0115;else y=@0106;
  $  008.前雨刮低速电机       $    $       $    $  ANS001.BYTE004  $  if((x1&0x40)==0x40)y=@0115;else y=@0106;
  $  009.前洗涤电机           $    $       $    $  ANS001.BYTE004  $  if((x1&0x20)==0x20)y=@0115;else y=@0106;
  $  010.后雨刮电机           $    $       $    $  ANS001.BYTE004  $  if((x1&0x10)==0x10)y=@0115;else y=@0106;
  $  011.后洗涤电机           $    $       $    $  ANS001.BYTE004  $  if((x1&0x08)==0x08)y=@0115;else y=@0106;

  $)  02.门碰与锁状态数据
  $  02.门碰与锁状态数据
  $  REQ000:740 03 22 A0 03 00 00 00 00       $  ANS000:748 03 22 A0 03 00 00 00 00
  $  REQ001:740 03 22 A0 09 00 00 00 00       $  ANS001:748 03 22 A0 09 00 00 00 00

  $  000.驾驶员门碰开关         $    $       $    $  ANS000.BYTE004  $  if((x1&0x80)==0x80)y=@0115;else y=@0106;
  $  001.其它门碰开关           $    $       $    $  ANS000.BYTE004  $  if((x1&0x40)==0x40)y=@0115;else y=@0106;
  $  002.后备箱门碰开关         $    $       $    $  ANS000.BYTE004  $  if((x1&0x20)==0x20)y=@0115;else y=@0106;
  $  003.驾驶员锁反馈开关       $    $       $    $  ANS000.BYTE004  $  if((x1&0x10)==0x10)y=@0115;else y=@0106;
  $  004.中控解锁开关           $    $       $    $  ANS000.BYTE004  $  if((x1&0x80)==0x80)y=@0115;else y=@0106;
  $  005.中控闭锁开关           $    $       $    $  ANS000.BYTE004  $  if((x1&0x40)==0x40)y=@0115;else y=@0106;
  $  006.锁车电机               $    $       $    $  ANS001.BYTE004  $  if((x1&0x80)==0x80)y=@0115;else y=@0106;
  $  007.解锁电机               $    $       $    $  ANS001.BYTE004  $  if((x1&0x40)==0x40)y=@0115;else y=@0106;
  $  008.后备箱解锁电机         $    $       $    $  ANS001.BYTE004  $  if((x1&0x20)==0x20)y=@0115;else y=@0106;

  $)  03.钥匙状态数据
  $  03.钥匙状态数据
  $  REQ000:740 03 22 C0 02 00 00 00 00       $  ANS000:748 03 22 C0 02 00 00 00 00
  $  REQ001:740 03 22 A0 01 00 00 00 00       $  ANS001:748 03 22 A0 01 00 00 00 00

  $  000.遥控闭锁命令计数器       $    $       $    $  ANS000.BYTE004  $  y=x*1+0;
  $  001.闭锁计数器               $    $       $    $  ANS000.BYTE005  $  y=x*1+0;
  $  002.遥控解锁命令计数器       $    $       $    $  ANS000.BYTE006  $  y=x*1+0;
  $  003.解锁计数器               $    $       $    $  ANS000.BYTE007  $  y=x*1+0;
  $  004.钥匙插入状态             $    $       $    $  ANS001.BYTE004  $  if((x1&0x80)==0x80)y=@0118;else y=@0119;
  $  005.ACC位置                  $    $       $    $  ANS001.BYTE004  $  if((x1&0x40)==0x40)y=@00b7;else y=@00b6;
  $  006.ON位置                   $    $       $    $  ANS001.BYTE004  $  if((x1&0x20)==0x20)y=@00b7;else y=@00b6;
  $  007.START位置                $    $       $    $  ANS001.BYTE004  $  if((x1&0x10)==0x10)y=@00b7;else y=@00b6;

  $)  04.其他
  $  04.其他
  $  REQ000:740 03 22 A0 04 00 00 00 00       $  ANS000:748 03 22 A0 04 00 00 00 00
  $  REQ001:740 03 22 A0 08 00 00 00 00       $  ANS001:748 03 22 A0 08 00 00 00 00
  $  REQ002:740 03 22 A0 0A 00 00 00 00       $  ANS002:748 03 22 A0 0A 00 00 00 00
  $  REQ003:740 03 22 A0 0B 00 00 00 00       $  ANS003:748 03 22 A0 0B 00 00 00 00

  $  000.驻车制动开关       $    $       $    $  ANS000.BYTE004  $  if((x1&0x80)==0x80)y=@0115;else y=@0106;
  $  001.Horn蜂鸣器         $    $       $    $  ANS001.BYTE004  $  if((x1&0x80)==0x80)y=@0115;else y=@0106;
  $  002.节电控制           $    $       $    $  ANS002.BYTE004  $  if((x1&0x80)==0x80)y=@0115;else y=@0106;
  $  003.后除霜             $    $       $    $  ANS003.BYTE004  $  if((x1&0x80)==0x80)y=@0115;else y=@0106;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:740 30 00 0A 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
