
    车型ID：1606

    模拟：协议模拟-->1606

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~78B

进入命令:

  $~  REQ000:783 02 10 01 00 00 00 00 00       $~  ANS000:78B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:783 02 3E 80 00 00 00 00 00       $!  ANS000:78B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#IN  REQ000:783 02 10 01 00 00 00 00 00       $#IN  ANS000:78B 02 10 01 00 00 00 00 00

  $#  REQ000:783 03 19 01 09 00 00 00 00       $#  ANS000:78B 03 19 01 09 00 00 00 00
  $#  REQ001:783 03 19 02 09 00 00 00 00       $#  ANS001:78B 03 19 02 09 00 00 00 00

		控制公式：
			y=x1*256+x2;
			y=(x1<<16)+(x2<<8)+x3;

  ANS000.BYTE05-06 控制故障码个数，从$#ANS001.BYTE04$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="2"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:783 04 14 FF FF FF 00 00 00       $$  ANS000:78B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:783 03 22 F1 93 00 00 00 00       $%  ANS000:78B 03 22 F1 93 00 00 00 00
  $%  REQ001:783 03 22 F1 94 00 00 00 00       $%  ANS001:78B 03 22 F1 94 00 00 00 00
  $%  REQ002:783 03 22 F1 95 00 00 00 00       $%  ANS002:78B 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:783 03 22 00 01 00 00 00 00       $  ANS000:78B 03 22 00 01 00 00 00 00
  $  REQ001:783 03 22 00 02 00 00 00 00       $  ANS001:78B 03 22 00 02 00 00 00 00
  $  REQ002:783 03 22 00 03 00 00 00 00       $  ANS002:78B 03 22 00 03 00 00 00 00
  $  REQ003:783 03 22 00 04 00 00 00 00       $  ANS003:78B 03 22 00 04 00 00 00 00
  $  REQ004:783 03 22 00 05 00 00 00 00       $  ANS004:78B 03 22 00 05 00 00 00 00
  $  REQ005:783 03 22 00 06 00 00 00 00       $  ANS005:78B 03 22 00 06 00 00 00 00
  $  REQ006:783 03 22 00 07 00 00 00 00       $  ANS006:78B 03 22 00 07 00 00 00 00
  $  REQ007:783 03 22 00 08 00 00 00 00       $  ANS007:78B 03 22 00 08 00 00 00 00
  $  REQ008:783 03 22 00 09 00 00 00 00       $  ANS008:78B 03 22 00 09 00 00 00 00
  $  REQ009:783 03 22 00 0A 00 00 00 00       $  ANS009:78B 03 22 00 0A 00 00 00 00
  $  REQ010:783 03 22 00 0B 00 00 00 00       $  ANS010:78B 03 22 00 0B 00 00 00 00
  $  REQ011:783 03 22 00 0C 00 00 00 00       $  ANS011:78B 03 22 00 0C 00 00 00 00
  $  REQ012:783 03 22 00 0D 00 00 00 00       $  ANS012:78B 03 22 00 0D 00 00 00 00
  $  REQ013:783 03 22 00 0E 00 00 00 00       $  ANS013:78B 03 22 00 0E 00 00 00 00
  $  REQ014:783 03 22 00 0F 00 00 00 00       $  ANS014:78B 03 22 00 0F 00 00 00 00
  $  REQ015:783 03 22 00 10 00 00 00 00       $  ANS015:78B 03 22 00 10 00 00 00 00

  $  000.ECU温度                $    $  degree C     $    $  ANS000.BYTE004  $  y=x1+x2*256-32768;
  $  001.电机温度               $    $  degree C     $    $  ANS001.BYTE004  $  y=x1+x2*256-32768;
  $  002.扭矩主信号占空比       $    $  %            $    $  ANS002.BYTE004  $  if((x1==0x00)&&(x2==0x00)) y=@00c1; else if((x1==0x01)&&(x2==0x10)) y=@00c5;else if((x1*6.2/255+x2*6.25)>100) y=@0002;else y=x1*6.2/255+x2*6.25;
  $  003.扭矩主信号周期         $    $  微秒         $    $  ANS003.BYTE004  $  if(((x1+x2*256)*0.1>0)&&((x1+x2*256)*0.1<=750)) y=(x1+x2*256)*0.1;else if((x1==0xFF) && (x2==0xFF)) y=@00c2;else y=@0002;
  $  004.扭矩辅信号占空比       $    $  %            $    $  ANS004.BYTE004  $  if((x1==0x00)&&(x2==0x00)) y=@00c1; else if((x1==0x01)&&(x2==0x10)) y=@00c5;else if((x1*6.2/255+x2*6.25)>100) y=@0002;else y=x1*6.2/255+x2*6.25;
  $  005.扭矩辅信号周期         $    $  微秒         $    $  ANS005.BYTE004  $  if(((x1+x2*256)*0.1>0)&&((x1+x2*256)*0.1<=750)) y=(x1+x2*256)*0.1;else if((x1==0xFF) && (x2==0xFF)) y=@00c2;else y=@0002;
  $  006.P值占空比              $    $  %            $    $  ANS006.BYTE004  $  if((x1==0x00)&&(x2==0x00)) y=@00c1;else if((x1*6.2/255+x2*6.25)>100) y=@0002;else y=x1*6.2/255+x2*6.25;
  $  007.P值周期                $    $  微秒         $    $  ANS007.BYTE004  $  if(((x1+x2*256)*0.1>0)&&((x1+x2*256)*0.1<=1500)) y=(x1+x2*256)*0.1;else if((x1==0xFF) && (x2==0xFF)) y=@00c2;else y=@0002;
  $  008.S值占空比              $    $  %            $    $  ANS008.BYTE004  $  if((x1==0x00)&&(x2==0x00)) y=@00c1;else if((x1*6.2/255+x2*6.25)>100) y=@0002;else y=x1*6.2/255+x2*6.25;
  $  009.S值周期                $    $  微秒         $    $  ANS009.BYTE004  $  if((x1==0x00) && (x2==0x00)) y=@0002;else if((x1==0xFF) && (x2==0xFF)) y=@00c2;else y=(x1+x2*256)*0.1;
  $  010.转角值                 $    $  °           $    $  ANS010.BYTE004  $  y=(x1*15.9/255+x2*16)-2048;
  $  011.直流母线电压           $    $  V            $    $  ANS011.BYTE004  $  y=(x1*5.1+x2*1305.6)/255;
  $  012.电机A相电流            $    $  A            $    $  ANS012.BYTE004  $  y=(x1*1.99/255+x2*2)-256;
  $  013.传感器扭矩值           $    $  牛顿米       $    $  ANS013.BYTE004  $  y=(x1*0.25/255+x2*0.25)-32;
  $  014.电机转速               $    $  rpm          $    $  ANS014.BYTE004  $  y=x1+x2*256-32768;
  $  015.当前助力模式           $    $               $    $  ANS015.BYTE004  $  if((x2==0x00) && (x1==0x00)) y=@00c8;else if((x2==0x00) && (x1==0x01)) y=@0043;else if((x2==0x00) && (x1==0x02)) y=@00c9;else y=@0002;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:783 30 01 04 55 55 55 55 55  $FC 
  $FC REQ001:783 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
