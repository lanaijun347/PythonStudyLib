
    车型ID：3962

    模拟：协议模拟-->3962

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~250K$~78C

进入命令:

  $~  REQ000:784 02 10 01 00 00 00 00 00       $~  ANS000:78C 02 10 01 00 00 00 00 00
  $~  REQ001:784 02 10 03 00 00 00 00 00       $~  ANS001:78C 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:784 02 3E 00 00 00 00 00 00       $!  ANS000:78C 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:784 04 18 00 00 00 00 00 00       $#  ANS000:78C 04 18 00 00 00 00 00 00

		控制公式：
			y=((x1<<8)+x2);

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/10050000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:784 03 14 00 00 00 00 00 00       $$  ANS000:78C 03 14 00 00 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:784 03 22 00 01 00 00 00 00       $%  ANS000:78C 03 22 00 01 00 00 00 00
  $%  REQ001:784 03 22 00 03 00 00 00 00       $%  ANS001:78C 03 22 00 03 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%02d.%02d.%02d],X1,X2,X3);
  $%  001:软件版本:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02d.%02d.%02d],X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:784 03 22 00 04 00 00 00 00       $  ANS000:78C 03 22 00 04 00 00 00 00
  $  REQ001:784 03 22 00 05 00 00 00 00       $  ANS001:78C 03 22 00 05 00 00 00 00
  $  REQ002:784 03 22 00 06 00 00 00 00       $  ANS002:78C 03 22 00 06 00 00 00 00
  $  REQ003:784 03 22 00 07 00 00 00 00       $  ANS003:78C 03 22 00 07 00 00 00 00
  $  REQ004:784 03 22 00 08 00 00 00 00       $  ANS004:78C 03 22 00 08 00 00 00 00
  $  REQ005:784 03 22 00 09 00 00 00 00       $  ANS005:78C 03 22 00 09 00 00 00 00
  $  REQ006:784 03 22 00 0A 00 00 00 00       $  ANS006:78C 03 22 00 0A 00 00 00 00
  $  REQ007:784 03 22 00 0B 00 00 00 00       $  ANS007:78C 03 22 00 0B 00 00 00 00
  $  REQ008:784 03 22 00 0C 00 00 00 00       $  ANS008:78C 03 22 00 0C 00 00 00 00
  $  REQ009:784 03 22 00 0D 00 00 00 00       $  ANS009:78C 03 22 00 0D 00 00 00 00
  $  REQ010:784 03 22 00 0F 00 00 00 00       $  ANS010:78C 03 22 00 0F 00 00 00 00
  $  REQ011:784 03 22 00 10 00 00 00 00       $  ANS011:78C 03 22 00 10 00 00 00 00
  $  REQ012:784 03 22 00 11 00 00 00 00       $  ANS012:78C 03 22 00 11 00 00 00 00
  $  REQ013:784 03 22 00 12 00 00 00 00       $  ANS013:78C 03 22 00 12 00 00 00 00
  $  REQ014:784 03 22 00 13 00 00 00 00       $  ANS014:78C 03 22 00 13 00 00 00 00
  $  REQ015:784 03 22 00 14 00 00 00 00       $  ANS015:78C 03 22 00 14 00 00 00 00
  $  REQ016:784 03 22 00 16 00 00 00 00       $  ANS016:78C 03 22 00 16 00 00 00 00
  $  REQ017:784 03 22 00 18 00 00 00 00       $  ANS017:78C 03 22 00 18 00 00 00 00
  $  REQ018:784 03 22 00 19 00 00 00 00       $  ANS018:78C 03 22 00 19 00 00 00 00
  $  REQ019:784 03 22 00 1A 00 00 00 00       $  ANS019:78C 03 22 00 1A 00 00 00 00
  $  REQ020:784 03 22 00 1B 00 00 00 00       $  ANS020:78C 03 22 00 1B 00 00 00 00
  $  REQ021:784 03 22 00 1D 00 00 00 00       $  ANS021:78C 03 22 00 1D 00 00 00 00
  $  REQ022:784 03 22 00 1E 00 00 00 00       $  ANS022:78C 03 22 00 1E 00 00 00 00
  $  REQ023:784 03 22 00 1F 00 00 00 00       $  ANS023:78C 03 22 00 1F 00 00 00 00
  $  REQ024:784 03 22 00 20 00 00 00 00       $  ANS024:78C 03 22 00 20 00 00 00 00
  $  REQ025:784 03 22 00 21 00 00 00 00       $  ANS025:78C 03 22 00 21 00 00 00 00
  $  REQ026:784 03 22 00 22 00 00 00 00       $  ANS026:78C 03 22 00 22 00 00 00 00
  $  REQ027:784 03 22 00 23 00 00 00 00       $  ANS027:78C 03 22 00 23 00 00 00 00
  $  REQ028:784 03 22 00 24 00 00 00 00       $  ANS028:78C 03 22 00 24 00 00 00 00
  $  REQ029:784 03 22 00 25 00 00 00 00       $  ANS029:78C 03 22 00 25 00 00 00 00
  $  REQ030:784 03 22 00 29 00 00 00 00       $  ANS030:78C 03 22 00 29 00 00 00 00
  $  REQ031:784 03 22 00 2A 00 00 00 00       $  ANS031:78C 03 22 00 2A 00 00 00 00

  $  000.电机开启状态                      $    $          $    $  ANS000.BYTE004  $  if((x&0x03)==0x01)y=@026e;else if((x&0x03)==0x02)y=@06bf;else y=@0108;
  $  001.制动踏板状态                      $    $          $    $  ANS001.BYTE004  $  if((x&0x03)==0x01)y=@0004;else if((x&0x03)==0x02)y=@0667;else y=@0108;
  $  002.驻车开关状态                      $    $          $    $  ANS002.BYTE004  $  if((x&0x03)==0x01)y=@0004;else if((x&0x03)==0x02)y=@0667;else y=@0108;
  $  003.正常/限流行驶                     $    $          $    $  ANS003.BYTE004  $  if((x&0x03)==0x01)y=@06c0;else if((x&0x03)==0x02)y=@06c1;else y=@0108;
  $  004.档位                              $    $          $    $  ANS004.BYTE004  $  if((x&0x07)==0x01)y=@00d7;if((x&0x07)==0x02)y=@0071;else if((x&0x07)==0x03)y=@0072;else if((x&0x07)==0x04)y=@00d8;else y=@0108;
  $  005.电机转向                          $    $          $    $  ANS005.BYTE004  $  if((x&0x03)==0x00)y=@0668;else if((x&0x03)==0x01)y=@015c;else if((x&0x03)==0x02)y=@015d;else y=@0108;
  $  006.油门位置                          $    $  %       $    $  ANS006.BYTE004  $  y=x;
  $  007.脚刹深度                          $    $  %       $    $  ANS007.BYTE004  $  y=x;
  $  008.电机目标扭矩                      $    $  NM      $    $  ANS008.BYTE004  $  if((x2>0x27)||((x2==0x27)&&(x1>0x10)))y=@0108;else y=0.1*(x2*256+x1)-500;
  $  009.电机目标功率                      $    $  kW      $    $  ANS009.BYTE004  $  if((x2>0x0F)||((x2==0x0F)&&(x1>0xA0)))y=@0108;else y=0.1*(x2*256+x1)-200;
  $  010.动力电机温度状况                  $    $          $    $  ANS010.BYTE004  $  if((x&0x03)==0x01)y=@0045;else if((x&0x03)==0x02)y=@06bd;else y=@0108;
  $  011.IPM散热器温度状况                 $    $          $    $  ANS011.BYTE004  $  if((x&0x03)==0x01)y=@0045;else if((x&0x03)==0x02)y=@06bd;else y=@0108;
  $  012.IPM状态                           $    $          $    $  ANS012.BYTE004  $  if((x&0x03)==0x01)y=@0045;else if((x&0x03)==0x02)y=@06be;else y=@0108;
  $  013.旋变状况                          $    $          $    $  ANS013.BYTE004  $  if((x&0x03)==0x01)y=@0045;else if((x&0x03)==0x02)y=@00cf;else y=@0108;
  $  014.电流霍尔状况                      $    $          $    $  ANS014.BYTE004  $  if((x&0x03)==0x01)y=@0045;else if((x&0x03)==0x02)y=@00cf;else y=@0108;
  $  015.电压霍尔状况                      $    $          $    $  ANS015.BYTE004  $  if((x&0x03)==0x01)y=@0045;else if((x&0x03)==0x02)y=@00cf;else y=@0108;
  $  016.与BMS(电池管理系统)通讯状态       $    $          $    $  ANS016.BYTE004  $  if((x&0x03)==0x01)y=@0045;else if((x&0x03)==0x02)y=@069c;else y=@0108;
  $  017.动力电机母线电压                  $    $  V       $    $  ANS017.BYTE004  $  if((x2>0x01)||((x2==0x01)&&(x1>0xF4)))y=@0108;else y=2*(x2*256+x1);
  $  018.动力电机转速                      $    $  rpm     $    $  ANS018.BYTE004  $  if((x2>0x55)||((x2==0x55)&&(x1>0xF0)))y=@0108;else y=(x2*256+x1)-11000;
  $  019.电机扭矩                          $    $  NM      $    $  ANS019.BYTE004  $  if((x2>0x27)||((x2==0x27)&&(x1>0x10)))y=@0108;else y=0.1*(x2*256+x1)-500;
  $  020.电机工作模式                      $    $          $    $  ANS020.BYTE004  $  if((x&0x03)==0x01)y=@06c2;else if((x&0x03)==0x02)y=@06c3;else y=@0108;
  $  021.电机功率                          $    $  kW      $    $  ANS021.BYTE004  $  if((x2>0x0F)||((x2==0x0F)&&(x1>0xA0)))y=@0108;else y=0.1*(x2*256+x1)-200;
  $  022.主继电器状态                      $    $          $    $  ANS022.BYTE004  $  if((x&0x03)==0x01)y=@0047;else if((x&0x03)==0x02)y=@0048;else y=@0108;
  $  023.与右电机通讯状态                  $    $          $    $  ANS023.BYTE004  $  if((x&0x03)==0x01)y=@0045;else if((x&0x03)==0x02)y=@0046;else y=@0108;
  $  024.与前辅通讯状态                    $    $          $    $  ANS024.BYTE004  $  if((x&0x03)==0x01)y=@0045;else if((x&0x03)==0x02)y=@0046;else y=@0108;
  $  025.预充满                            $    $          $    $  ANS025.BYTE004  $  if((x&0x03)==0x01)y=@0045;else if((x&0x03)==0x02)y=@069b;else y=@0108;
  $  026.档位故障                          $    $          $    $  ANS026.BYTE004  $  if((x&0x03)==0x01)y=@0045;else if((x&0x03)==0x02)y=@0046;else y=@0108;
  $  027.过载告警                          $    $          $    $  ANS027.BYTE004  $  if((x&0x03)==0x01)y=@0045;else if((x&0x03)==0x02)y=@00cf;else y=@0108;
  $  028.堵转告警                          $    $          $    $  ANS028.BYTE004  $  if((x&0x03)==0x01)y=@0045;else if((x&0x03)==0x02)y=@00cf;else y=@0108;
  $  029.油门错误                          $    $          $    $  ANS029.BYTE004  $  if((x&0x03)==0x01)y=@0045;else if((x&0x03)==0x02)y=@00cf;else y=@0108;
  $  030.自检状态                          $    $          $    $  ANS030.BYTE004  $  if((x&0x03)==0x01)y=@037c;else if((x&0x03)==0x02)y=@0669;else y=@0108;
  $  031.缺相保护                          $    $          $    $  ANS031.BYTE004  $  if((x&0x03)==0x01)y=@0045;else if((x&0x03)==0x02)y=@0046;else y=@0108;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:784 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
