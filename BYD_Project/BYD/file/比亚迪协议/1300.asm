
    车型ID：1300

    模拟：协议模拟-->1300

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:783 02 10 01 00 00 00 00 00       $~  ANS000:78B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:783 02 3E 80 00 00 00 00 00       $!  ANS000:78B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:783 03 19 02 09 00 00 00 00       $#  ANS000:78B 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:783 04 14 FF FF FF 00 00 00       $$  ANS000:78B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:783 03 22 F1 93 00 00 00 00       $%  ANS000:78B 03 22 F1 93 00 00 00 00
  $%  REQ001:783 03 22 F1 94 00 00 00 00       $%  ANS001:78B 03 22 F1 94 00 00 00 00
  $%  REQ002:783 03 22 F1 95 00 00 00 00       $%  ANS002:78B 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:783 03 22 00 01 00 00 00 00       $  ANS000:78B 03 22 00 01 00 00 00 00
  $  REQ001:783 03 22 00 02 00 00 00 00       $  ANS001:78B 03 22 00 02 00 00 00 00
  $  REQ002:783 03 22 00 03 00 00 00 00       $  ANS002:78B 03 22 00 03 00 00 00 00
  $  REQ003:783 03 22 00 04 00 00 00 00       $  ANS003:78B 03 22 00 04 00 00 00 00
  $  REQ004:783 03 22 00 05 00 00 00 00       $  ANS004:78B 03 22 00 05 00 00 00 00
  $  REQ005:783 03 22 00 06 00 00 00 00       $  ANS005:78B 03 22 00 06 00 00 00 00
  $  REQ006:783 03 22 00 08 00 00 00 00       $  ANS006:78B 03 22 00 08 00 00 00 00
  $  REQ007:783 03 22 00 0A 00 00 00 00       $  ANS007:78B 03 22 00 0A 00 00 00 00
  $  REQ008:783 03 22 00 0B 00 00 00 00       $  ANS008:78B 03 22 00 0B 00 00 00 00
  $  REQ009:783 03 22 00 0C 00 00 00 00       $  ANS009:78B 03 22 00 0C 00 00 00 00
  $  REQ010:783 03 22 00 0D 00 00 00 00       $  ANS010:78B 03 22 00 0D 00 00 00 00
  $  REQ011:783 03 22 00 0E 00 00 00 00       $  ANS011:78B 03 22 00 0E 00 00 00 00
  $  REQ012:783 03 22 00 0F 00 00 00 00       $  ANS012:78B 03 22 00 0F 00 00 00 00
  $  REQ013:783 03 22 00 10 00 00 00 00       $  ANS013:78B 03 22 00 10 00 00 00 00
  $  REQ014:783 03 22 AC 00 00 00 00 00       $  ANS014:78B 03 22 AC 00 00 00 00 00
  $  REQ015:783 03 22 AC 01 00 00 00 00       $  ANS015:78B 03 22 AC 01 00 00 00 00

  $  000:ECU温度                $    $  degree C     $    $  ANS000.BYTE004  $  y=x1+(x2-128)*256;
  $  001:电机温度               $    $  degree C     $    $  ANS001.BYTE004  $  y=x1+(x2-128)*256;
  $  002:扭矩主信号占空比       $    $  %            $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.1;
  $  003:扭矩主信号周期         $    $  微秒         $    $  ANS003.BYTE004  $  y=(x2*256+x1)*0.1;
  $  004:扭矩辅信号占空比       $    $  %            $    $  ANS004.BYTE004  $  y=(x1*256+x2)*0.1;
  $  005:扭矩辅信号周期         $    $  微秒         $    $  ANS005.BYTE004  $  y=(x2*256+x1)*0.1;
  $  006:P值周期                $    $  微秒         $    $  ANS006.BYTE004  $  y=(x2*256+x1)*0.1;
  $  007:S值周期                $    $  微秒         $    $  ANS007.BYTE004  $  y=(x2*256+x1)*0.1;
  $  008:转角值                 $    $  °           $    $  ANS008.BYTE004  $  y=(x1*15.9375/255+(x2-128)*16);
  $  009:直流母线电压           $    $  V            $    $  ANS009.BYTE004  $  y=(x1*0.02+x2*5.12);
  $  010:电机相电流(A相)        $    $  A            $    $  ANS010.BYTE004  $  y=(x1*1.99/255+(x2-128)*2);
  $  011:传感器扭矩值           $    $  牛顿米       $    $  ANS011.BYTE004  $  y=(x1*0.249/255+(x2-128)*0.25);
  $  012:电机转速               $    $  rpm          $    $  ANS012.BYTE004  $  y=(x1+(x2-128)*256);
  $  013:当前助力模式           $    $               $    $  ANS013.BYTE004  $  if((x2==0x00) && (x1==0x00)) y=@077e;else if((x2==0x00) && (x1==0x01)) y=@046f;else if((x2==0x00) && (x1==0x02)) y=@077f;else y=@001c;
  $  014:转向盘零点值           $    $  °           $    $  ANS014.BYTE004  $  if(x1>127) y=((x1-256)*27962026.67/128)+(x2*217600/255)+(x3*850/255)+(x4*3.32/255);else y=(x1*27962026.67/128)+(x2*217600/255)+(x3*850/255)+(x4*3.32/255);
  $  015:TQ1                    $    $               $    $  ANS015.BYTE004  $  y=x1*256+x2;
  $  016:TQ2                    $    $               $    $  ANS015.BYTE006  $  y=x1*256+x2;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:783 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
