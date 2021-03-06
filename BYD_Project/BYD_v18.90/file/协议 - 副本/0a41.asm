
    车型ID：0a41

    模拟：协议模拟-->0a41

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E9

进入命令:

  $~  REQ000:7E1 02 10 01 00 00 00 00 00       $~  ANS000:7E9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E1 02 3E 00 00 00 00 00 00       $!  ANS000:7E9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E1 05 18 00 FF FF FF 00 00       $#  ANS000:7E9 05 18 00 FF FF FF 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a4030000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E1 04 14 FF FF FF 00 00 00       $$  ANS000:7E9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E1 03 22 F1 94 00 00 00 00       $%  ANS000:7E9 03 22 F1 94 00 00 00 00
  $%  REQ001:7E1 03 22 F1 95 00 00 00 00       $%  ANS001:7E9 03 22 F1 95 00 00 00 00
  $%  REQ002:7E1 03 22 F1 92 00 00 00 00       $%  ANS002:7E9 03 22 F1 92 00 00 00 00
  $%  REQ003:7E1 03 22 F1 93 00 00 00 00       $%  ANS003:7E9 03 22 F1 93 00 00 00 00
  $%  REQ004:7E1 03 22 F1 99 00 00 00 00       $%  ANS004:7E9 03 22 F1 99 00 00 00 00

  $%  000:软件编号:          $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:软件版本号:        $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2);
  $%  002:硬件编号:          $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:硬件版本号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2);
  $%  004:编程日期:          $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02x%02x%s%02x%s%02x%s],x1,x2,@0197,x3,@0198,x4,@0199);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E1 03 22 00 05 00 00 00 00       $  ANS000:7E9 03 22 00 05 00 00 00 00
  $  REQ001:7E1 03 22 00 06 00 00 00 00       $  ANS001:7E9 03 22 00 06 00 00 00 00
  $  REQ002:7E1 03 22 00 07 00 00 00 00       $  ANS002:7E9 03 22 00 07 00 00 00 00
  $  REQ003:7E1 03 22 00 08 00 00 00 00       $  ANS003:7E9 03 22 00 08 00 00 00 00
  $  REQ004:7E1 03 22 00 09 00 00 00 00       $  ANS004:7E9 03 22 00 09 00 00 00 00
  $  REQ005:7E1 03 22 00 0A 00 00 00 00       $  ANS005:7E9 03 22 00 0A 00 00 00 00
  $  REQ006:7E1 03 22 00 0B 00 00 00 00       $  ANS006:7E9 03 22 00 0B 00 00 00 00
  $  REQ007:7E1 03 22 00 0F 00 00 00 00       $  ANS007:7E9 03 22 00 0F 00 00 00 00
  $  REQ008:7E1 03 22 00 0C 00 00 00 00       $  ANS008:7E9 03 22 00 0C 00 00 00 00
  $  REQ009:7E1 03 22 00 0D 00 00 00 00       $  ANS009:7E9 03 22 00 0D 00 00 00 00
  $  REQ010:7E1 03 22 00 0E 00 00 00 00       $  ANS010:7E9 03 22 00 0E 00 00 00 00
  $  REQ011:7E1 03 22 00 10 00 00 00 00       $  ANS011:7E9 03 22 00 10 00 00 00 00
  $  REQ012:7E1 03 22 00 11 00 00 00 00       $  ANS012:7E9 03 22 00 11 00 00 00 00
  $  REQ013:7E1 03 22 00 12 00 00 00 00       $  ANS013:7E9 03 22 00 12 00 00 00 00
  $  REQ014:7E1 03 22 00 13 00 00 00 00       $  ANS014:7E9 03 22 00 13 00 00 00 00
  $  REQ015:7E1 03 22 00 14 00 00 00 00       $  ANS015:7E9 03 22 00 14 00 00 00 00
  $  REQ016:7E1 03 22 00 15 00 00 00 00       $  ANS016:7E9 03 22 00 15 00 00 00 00
  $  REQ017:7E1 03 22 00 16 00 00 00 00       $  ANS017:7E9 03 22 00 16 00 00 00 00

  $  000.制动踏板状态                            $    $               $    $  ANS000.BYTE004  $  if(x==0x00) y=@0182;else if(x==0x01) y=@0118;else if(x==0x02) y=@00d8;else if(x==0x03) y=@0027;else y=@0003;
  $  001.加速踏板位置状态                        $    $               $    $  ANS001.BYTE004  $  if(x==0x00) y=@0078;else y=@0027;
  $  002.加速踏板位置                            $    $  %            $    $  ANS001.BYTE005  $  y=x*100/255;
  $  003.节气门位置状态                          $    $               $    $  ANS002.BYTE004  $  if(x==0x00) y=@0078;else if(x==0x01) y=@0027;else y=@0003;
  $  004.节气门位置                              $    $  %            $    $  ANS002.BYTE005  $  y=x*100/255;
  $  005.换档手柄                                $    $               $    $  ANS003.BYTE004  $  if(x==0x00) y=@0003;else if(x==0x01) y=@010f;else if(x==0x02) y=@0110; else if(x==0x03) y=@0111;else if(x==0x04) y=@0112;else if(x==0x05) y=@0113;else if(x==0x06) y=@0114;else if(x==0x07) y=@0115;else if(x==0x08) y=@0116;else y=@00d8;
  $  006.当前档位                                $    $               $    $  ANS003.BYTE005  $  if(x==0x00) y=@0003;else if(x==0x01) y=@0106;else if(x==0x02) y=@0107; else if(x==0x03) y=@0108;else if(x==0x04) y=@0109;else if(x==0x05) y=@010a;else if(x==0x06) y=@010b;else if(x==0x08) y=@010d;else if(x==0x09) y=@010e;else y=@00d8;
  $  007.发动机传感器转速                        $    $  rpm          $    $  ANS004.BYTE004  $  y=(x1*256+x2)/4;
  $  008.输入轴1传感器转速                       $    $  rpm          $    $  ANS005.BYTE004  $  y=(x1*256+x2)/4;
  $  009.输入轴2传感器转速                       $    $  rpm          $    $  ANS006.BYTE004  $  y=(x1*256+x2)/4;
  $  010.控制单元温度传感器                      $    $  degree C     $    $  ANS007.BYTE004  $  y=x-60;
  $  011.TCU(自动变速箱控制器)计算车速           $    $  km/h         $    $  ANS008.BYTE004  $  y=(x1*256+x2)/14.54;
  $  012.TCU(自动变速箱控制器)计算车速状态       $    $               $    $  ANS008.BYTE006  $  if(x==0x00) y=@0078;else if(x==0x01) y=@0027;else y=@0003;
  $  013.CAN车速                                 $    $  km/h         $    $  ANS009.BYTE004  $  y=(x1*256+x2)/14.54;
  $  014.CAN车速状态                             $    $               $    $  ANS009.BYTE006  $  if(x==0x00) y=@0078;else if(x==0x01) y=@0027;else y=@0003;
  $  015.发动机指示扭矩                          $    $  %            $    $  ANS010.BYTE004  $  y=x*100/255;
  $  016.发动机扭矩损失                          $    $  %            $    $  ANS010.BYTE005  $  y=x*100/255;
  $  017.变速箱扭矩损失                          $    $  %            $    $  ANS010.BYTE006  $  y=x*100/255;
  $  018.蓄电池电压                              $    $  V            $    $  ANS011.BYTE004  $  if(x1<0x04) y=(x1*256+x2)*4.4/256;else y=@0003;
  $  019.传感器电压                              $    $  V            $    $  ANS011.BYTE006  $  if(x1<0x04) y=(x1*256+x2)*1.5/256;else y=@0003;
  $  020.冷却液温度                              $    $  degree C     $    $  ANS012.BYTE004  $  y=x-60;
  $  021.进气温度                                $    $  degree C     $    $  ANS012.BYTE005  $  y=x-60;
  $  022.高原系数                                $    $               $    $  ANS013.BYTE004  $  y=0.99*x/64;
  $  023.CAN发动机转速                           $    $  rpm          $    $  ANS014.BYTE004  $  y=(x1*256+x2)/4;
  $  024.CAN发动机转速状态                       $    $               $    $  ANS014.BYTE006  $  if(x==0x00) y=@0078;else if(x==0x01) y=@0027;else y=@0003;
  $  025.离合器1温度                             $    $  degree C     $    $  ANS015.BYTE004  $  y=x-60;
  $  026.离合器2温度                             $    $  degree C     $    $  ANS015.BYTE005  $  y=x-60;
  $  027.主油路1压力供给                         $    $  Mpa          $    $  ANS016.BYTE004  $  y=x*10.2/255;
  $  028.主油路2压力供给                         $    $  Mpa          $    $  ANS016.BYTE005  $  y=x*10.2/255;
  $  029.油泵供给压力                            $    $  Mpa          $    $  ANS016.BYTE006  $  y=(x1*256+x2)*2.4/256;
  $  030.离合器1状态                             $    $               $    $  ANS017.BYTE004  $  if(x==0x00) y=@0280;else if(x==0x01) y=@0281;else if(x==0x02) y=@0282;else if(x==0x03) y=@0283;else y=@0003;
  $  031.离合器2状态                             $    $               $    $  ANS017.BYTE005  $  if(x==0x00) y=@0280;else if(x==0x01) y=@0281;else if(x==0x02) y=@0282;else if(x==0x03) y=@0283;else y=@0003;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E1 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
