
    车型ID：10d2

    模拟：协议模拟-->10d2

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:741 02 10 01 00 00 00 00 00       $~  ANS000:7C1 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:741 02 3E 80 00 00 00 00 00       $!  ANS000:7C1 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:741 03 19 02 09 00 00 00 00       $#  ANS000:7C1 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/cf000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:741 04 14 FF FF FF 00 00 00       $$  ANS000:7C1 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:741 03 22 F1 A0 00 00 00 00       $%  ANS000:7C1 03 22 F1 A0 00 00 00 00
  $%  REQ001:741 03 22 F1 83 00 00 00 00       $%  ANS001:7C1 03 22 F1 83 00 00 00 00
  $%  REQ002:741 03 22 F1 A1 00 00 00 00       $%  ANS002:7C1 03 22 F1 A1 00 00 00 00
  $%  REQ003:741 03 22 F1 91 00 00 00 00       $%  ANS003:7C1 03 22 F1 91 00 00 00 00
  $%  REQ004:741 03 22 F1 8B 00 00 00 00       $%  ANS004:7C1 03 22 F1 8B 00 00 00 00
  $%  REQ005:741 03 22 F1 A2 00 00 00 00       $%  ANS005:7C1 03 22 F1 A2 00 00 00 00
  $%  REQ006:741 03 22 F1 87 00 00 00 00       $%  ANS006:7C1 03 22 F1 87 00 00 00 00
  $%  REQ007:741 03 22 F1 10 00 00 00 00       $%  ANS007:7C1 03 22 F1 10 00 00 00 00
  $%  REQ008:741 03 22 F1 92 00 00 00 00       $%  ANS008:7C1 03 22 F1 92 00 00 00 00
  $%  REQ009:741 03 22 F1 8C 00 00 00 00       $%  ANS009:7C1 03 22 F1 8C 00 00 00 00
  $%  REQ010:741 03 22 F1 94 00 00 00 00       $%  ANS010:7C1 03 22 F1 94 00 00 00 00
  $%  REQ011:741 03 22 F1 8A 00 00 00 00       $%  ANS011:7C1 03 22 F1 8A 00 00 00 00
  $%  REQ012:741 03 22 F1 90 00 00 00 00       $%  ANS012:7C1 03 22 F1 90 00 00 00 00
  $%  REQ013:741 03 22 F1 A8 00 00 00 00       $%  ANS013:7C1 03 22 F1 A8 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  002:电控单元标定软件号:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元硬件号:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:年:                              $%    $%  ANS004.BYTE004  $%  HEX(X1);
  $%  005:月:                              $%    $%  ANS004.BYTE005  $%  HEX(X1);
  $%  006:日:                              $%    $%  ANS004.BYTE006  $%  HEX(X1);
  $%  007:电控单元网络文件参考号:          $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  008:电控单元零件号:                  $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  009:SCM版本:                         $%    $%  ANS007.BYTE004  $%  ASCII(X1);
  $%  010:电控单元零件号(上次):            $%    $%  ANS007.BYTE005  $%  HEX(X1,X2,X3,X4);
  $%  011:测试工具参考号(上次):            $%    $%  ANS007.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  012:里程读数(上次):                  $%    $%  ANS007.BYTE015  $%  y=x1*256*256+x2*256+x3;
  $%  013:供应商电控单元硬件参考号:        $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  014:供应商电控单元序列号:            $%    $%  ANS009.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  015:BB号码:                          $%    $%  ANS010.BYTE004  $%  ASCII(X1,X2,X3,X4,X5);
  $%  016:SCMID:                           $%    $%  ANS010.BYTE009  $%  ASCII(X1);
  $%  017:SCM版本:                         $%    $%  ANS010.BYTE004  $%  ASCII(X1);
  $%  018:系统供应商标识号:                $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  019:车辆识别代码:                    $%    $%  ANS012.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  020:车辆特征信息:                    $%    $%  ANS013.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:741 03 22 F1 86 00 00 00 00       $  ANS000:7C1 03 22 F1 86 00 00 00 00
  $  REQ001:741 03 22 FD 02 00 00 00 00       $  ANS001:7C1 03 22 FD 02 00 00 00 00
  $  REQ002:741 03 22 FD 04 00 00 00 00       $  ANS002:7C1 03 22 FD 04 00 00 00 00
  $  REQ003:741 03 22 FD 03 00 00 00 00       $  ANS003:7C1 03 22 FD 03 00 00 00 00
  $  REQ004:741 03 22 FD 01 00 00 00 00       $  ANS004:7C1 03 22 FD 01 00 00 00 00
  $  REQ005:741 03 22 FD 08 00 00 00 00       $  ANS005:7C1 03 22 FD 08 00 00 00 00
  $  REQ006:741 03 22 FD 00 00 00 00 00       $  ANS006:7C1 03 22 FD 00 00 00 00 00
  $  REQ007:741 03 22 FD 05 00 00 00 00       $  ANS007:7C1 03 22 FD 05 00 00 00 00
  $  REQ008:741 03 22 FD 06 00 00 00 00       $  ANS008:7C1 03 22 FD 06 00 00 00 00

  $  000.主动诊断会话                $    $            $    $  ANS000.BYTE004  $  if(x==1) y=@017f;else if(x==2) y=@0180;else if(x==3) y=@0933;else y=@0035;
  $  001.阀门继电器状态              $    $            $    $  ANS001.BYTE004  $  if(x==0) y=@000f;else if(x==1) y=@016d;else y=@0035;
  $  002.水泵电机状态                $    $            $    $  ANS001.BYTE005  $  if(x==0) y=@000f;else if(x==1) y=@016d;else y=@0035;
  $  003.右后出口阀（AVRR）          $    $            $    $  ANS001.BYTE006  $  if(((x&0x80)>>7)==0) y=@0136;else if(((x&0x80)>>7)==1) y=@0247;else y=@0035;
  $  004.右后进气阀（EVRR）          $    $            $    $  ANS001.BYTE006  $  if(((x&0x40)>>6)==0) y=@0136;else if(((x&0x40)>>6)==1) y=@0247;else y=@0035;
  $  005.左后出口阀（AVRL）          $    $            $    $  ANS001.BYTE006  $  if(((x&0x20)>>5)==0) y=@0136;else if(((x&0x20)>>5)==1) y=@0247;else y=@0035;
  $  006.左后进气阀（EVRL）          $    $            $    $  ANS001.BYTE006  $  if(((x&0x10)>>4)==0) y=@0136;else if(((x&0x10)>>4)==1) y=@0247;else y=@0035;
  $  007.右前出口阀（AVFR）          $    $            $    $  ANS001.BYTE006  $  if(((x&0x08)>>3)==0) y=@0136;else if(((x&0x08)>>3)==1) y=@0247;else y=@0035;
  $  008.右前进气阀（EVFR）          $    $            $    $  ANS001.BYTE006  $  if(((x&0x04)>>2)==0) y=@0136;else if(((x&0x04)>>2)==1) y=@0247;else y=@0035;
  $  009.左前出口阀（AVFL）          $    $            $    $  ANS001.BYTE006  $  if(((x&0x02)>>1)==0) y=@0136;else if(((x&0x02)>>1)==1) y=@0247;else y=@0035;
  $  010.左前进气阀（EVFL）          $    $            $    $  ANS001.BYTE006  $  if((x&0x01)==0) y=@0136;else if((x&0x01)==1) y=@0247;else y=@0035;
  $  011.PALA灯（仅限ESP）           $    $            $    $  ANS001.BYTE007  $  if(((x&0x80)>>7)==0) y=@000f;else if(((x&0x80)>>7)==1) y=@016d;else y=@0035;
  $  012.ESP灯（仅限ESP）            $    $            $    $  ANS001.BYTE007  $  if(((x&0x40)>>6)==0) y=@000f;else if(((x&0x40)>>6)==1) y=@016d;else y=@0035;
  $  013.ABS灯                       $    $            $    $  ANS001.BYTE007  $  if(((x&0x20)>>5)==0) y=@000f;else if(((x&0x20)>>5)==1) y=@016d;else y=@0035;
  $  014.EBD灯                       $    $            $    $  ANS001.BYTE007  $  if(((x&0x10)>>4)==0) y=@000f;else if(((x&0x10)>>4)==1) y=@016d;else y=@0035;
  $  015.阀门HSV2（仅限ESP）         $    $            $    $  ANS001.BYTE007  $  if(((x&0x08)>>3)==0) y=@0136;else if(((x&0x08)>>3)==1) y=@0247;else y=@0035;
  $  016.阀门HSV1（仅限ESP）         $    $            $    $  ANS001.BYTE007  $  if(((x&0x04)>>2)==0) y=@0136;else if(((x&0x04)>>2)==1) y=@0247;else y=@0035;
  $  017.阀门USV2（仅限ESP）         $    $            $    $  ANS001.BYTE007  $  if(((x&0x02)>>1)==0) y=@0136;else if(((x&0x02)>>1)==1) y=@0247;else y=@0035;
  $  018.阀门USV1（仅限ESP）         $    $            $    $  ANS001.BYTE007  $  if((x&0x01)==0) y=@0136;else if((x&0x01)==1) y=@0247;else y=@0035;
  $  019.下线测试状态                $    $            $    $  ANS002.BYTE004  $  if(x==0) y=@047e;else if(x==170) y=@0fa0;else if(x==238) y=@0fa1;else y=@0035;
  $  020.加注状态                    $    $            $    $  ANS003.BYTE004  $  if(x==0) y=@0481;else if(x==170) y=@0482;else if(x==238) y=@0483;else y=@0035;
  $  021.电池电压（仅限ESP）         $    $  V         $    $  ANS004.BYTE004  $  y=x*0.1;
  $  022.制动灯开关（仅限ESP）       $    $            $    $  ANS004.BYTE005  $  if(x==0) y=@000f;else if(x==1) y=@016d;else y=@0035;
  $  023.PALA状态（仅限ESP）         $    $            $    $  ANS004.BYTE006  $  if(x==0) y=@0e6d;else if(x==1) y=@0b45;else y=@0035;
  $  024.SAS校准状态                 $    $            $    $  ANS005.BYTE004  $  if(x==0) y=@004a;else if(x==1) y=@10db;else y=@0035;
  $  025.车速                        $    $  km/h      $    $  ANS006.BYTE004  $  y=(x1*256+x2)*0.05625;
  $  026.左前方车轮速度              $    $  km/h      $    $  ANS006.BYTE006  $  y=(x1*256+x2)*0.05625;
  $  027.前右车轮速度                $    $  km/h      $    $  ANS006.BYTE008  $  y=(x1*256+x2)*0.05625;
  $  028.左侧后部车轮                $    $  km/h      $    $  ANS006.BYTE010  $  y=(x1*256+x2)*0.05625;
  $  029.右后方轮速                  $    $  km/h      $    $  ANS006.BYTE012  $  y=(x1*256+x2)*0.05625;
  $  030.主气缸压力                  $    $  bar       $    $  ANS007.BYTE004  $  y=(x1*256+x2)*0.0153;
  $  031.转向角度                    $    $            $    $  ANS007.BYTE006  $  y=(x1*256+x2)*0.1;
  $  032.偏航率                      $    $  rad/s     $    $  ANS007.BYTE008  $  y=(x1*256+x2)*0.00213;
  $  033.横向加速度                  $    $  m/s2      $    $  ANS007.BYTE010  $  y=(x1*256+x2)*0.02712;
  $  034.纵向加速度                  $    $  m/s2      $    $  ANS007.BYTE012  $  y=(x1*256+x2)*0.02712;
  $  035.项目编号                    $    $            $    $  ANS008.BYTE004  $  if(((x&0xF0)>>4)==0x01) y=@01bb;else if(((x&0xF0)>>4)==0x02) y=@058d;else if(((x&0xF0)>>4)==0x03) y=@01ba;else if(((x&0xF0)>>4)==0x04) y=@13be;else if(((x&0xF0)>>4)==0x05) y=@0d75;else if(((x&0xF0)>>4)==0x06) y=@06d5;else if(((x&0xF0)>>4)==0x07) y=@058e;else y=@0103;
  $  036.产品                        $    $            $    $  ANS008.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@0d76;else if(((x&0x08)>>3)==0x01) y=@0d77;else y=@0103;
  $  037.车型系列                    $    $            $    $  ANS008.BYTE004  $  if((x&0x07)==0x00) y=@0d78;else if((x&0x07)==0x01) y=@06ad;else if((x&0x07)==0x02) y=@06af;else if((x&0x07)==0x03) y=@0d79;else if((x&0x07)==0x04) y=@06b3;else y=@0103;
  $  038.传动系统                    $    $            $    $  ANS008.BYTE005  $  if(((x&0xE0)>>5)==0x01) y=@059f;else if(((x&0xE0)>>5)==0x02) y=@05a0;else if(((x&0xE0)>>5)==0x03) y=@10dc;else if(((x&0xE0)>>5)==0x04) y=@10dd;else if(((x&0xE0)>>5)==0x05) y=@0d43;else y=@0103;
  $  039.变速箱类型                  $    $            $    $  ANS008.BYTE005  $  if((x&0x1F)==0x00) y=@01dd;else if((x&0x1F)==0x01) y=@0881;else if((x&0x1F)==0x0A) y=@01de;else if((x&0x1F)==0x0B) y=@0d7c;else if((x&0x1F)==0x0C) y=@0882;else if((x&0x1F)==0x0D) y=@0d2e;else if((x&0x1F)==0x14) y=@0595;else if((x&0x1F)==0x19) y=@1092;else if((x&0x1F)==0x1A) y=@0d7d;else y=@0103;
  $  040.发动机类型                  $    $            $    $  ANS008.BYTE006  $  if(x==0x00) y=@0182;else if(x==0x01) y=@0d7e;else if(x==0x02) y=@0d7f;else if(x==0x03) y=@0d80;else if(x==0x0A) y=@0183;else if(x==0x0B) y=@0d81;else if(x==0x0C) y=@0d82;else if(x==0x0D) y=@0d83;else if(x==0x14) y=@0d84;else if(x==0x16) y=@0d85;else if(x==0x1E) y=@0d86;else y=@0103;
  $  041.悬挂                        $    $            $    $  ANS008.BYTE007  $  if(((x&0xF0)>>4)==0x00) y=@13bf;else if(((x&0xF0)>>4)==0x01) y=@0d88;else if(((x&0xF0)>>4)==0x02) y=@0d89;else if(((x&0xF0)>>4)==0x03) y=@0d8a;else if(((x&0xF0)>>4)==0x06) y=@0d8b;else if(((x&0xF0)>>4)==0x07) y=@0d8c;else if(((x&0xF0)>>4)==0x0B) y=@0252;else y=@0103;
  $  042.转向比例                    $    $            $    $  ANS008.BYTE007  $  if((x&0x0F)==0x00) y=@0d54;else if((x&0x0F)==0x09) y=@0d55;else if((x&0x0F)==0x0B) y=@0d56;else if((x&0x0F)==0x0C) y=@0d57;else y=@0103;
  $  043.轮胎                        $    $            $    $  ANS008.BYTE008  $  if(x==0x15) y=@0531;else if(x==0x1F) y=@059d;else if(x==0x20) y=@0d3c;else if(x==0x21) y=@0d3d;else if(x==0x22) y=@0d3e;else if(x==0x23) y=@0d58;else if(x==0x29) y=@059e;else if(x==0x2A) y=@10e4;else if(x==0x2B) y=@0d5a;else if(x==0x2C) y=@0d5b;else if(x==0x2D) y=@0d5c;else if(x==0x33) y=@0d3f;else if(x==0x34) y=@0889;else if(x==0x35) y=@0d5e;else if(x==0x36) y=@0fa6;else if(x==0x3D) y=@0d40;else if(x==0x3E) y=@088a;else if(x==0x3F) y=@0d60;else if(x==0x51) y=@0d41;else if(x==0x52) y=@10e6;else y=@0103;
  $  044.刹车系统                    $    $            $    $  ANS008.BYTE009  $  if(((x&0xFC)>>2)==0x00) y=@13bd;else if(((x&0xFC)>>2)==0x01) y=@0d37;else if(((x&0xFC)>>2)==0x02) y=@0d64;else if(((x&0xFC)>>2)==0x03) y=@0d65;else if(((x&0xFC)>>2)==0x04) y=@0d66;else if(((x&0xFC)>>2)==0x05) y=@0d67;else if(((x&0xFC)>>2)==0x14) y=@0d39;else if(((x&0xFC)>>2)==0x1E) y=@0d69;else y=@0103;
  $  045.前制动活塞数                $    $            $    $  ANS008.BYTE009  $  if(((x&0x02)>>1)==0x00) y=@0d6a;else if(((x&0x02)>>1)==0x01) y=@0d6b;else y=@0035;
  $  046.后制动活塞数                $    $            $    $  ANS008.BYTE009  $  if((x&0x01)==0x00) y=@0d6c;else if((x&0x01)==0x01) y=@0d6d;else y=@0035;
  $  047.DA（驾驶辅助）              $    $            $    $  ANS008.BYTE010  $  if(((x&0x80)>>7)==0x00) y=@0d6e;else if(((x&0x80)>>7)==0x01) y=@0d6f;else y=@0035;
  $  048.启动/停止                   $    $            $    $  ANS008.BYTE010  $  if(((x&0x40)>>6)==0x00) y=@0d8e;else if(((x&0x40)>>6)==0x01) y=@0d20;else y=@0035;
  $  049.停车制动器                  $    $            $    $  ANS008.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@0d72;else if(((x&0x20)>>5)==0x01) y=@0d73;else y=@0035;
  $  050.CDD                         $    $            $    $  ANS008.BYTE010  $  if(((x&0x18)>>3)==0x00) y=@0d92;else if(((x&0x18)>>3)==0x01) y=@0d52;else if(((x&0x18)>>3)==0x02) y=@0d53;else y=@0103;
  $  051.APA                         $    $            $    $  ANS008.BYTE010  $  if(((x&0x04)>>2)==0x00) y=@0d93;else if(((x&0x04)>>2)==0x01) y=@0d94;else y=@0035;
  $  052.AEB                         $    $            $    $  ANS008.BYTE010  $  if((x&0x03)==0x00) y=@10e0;else if((x&0x03)==0x01) y=@0b87;else y=@0103;
  $  053.车辆总重量                  $    $            $    $  ANS008.BYTE011  $  if(((x&0xF0)>>4)==0x01) y=@0d44;else if(((x&0xF0)>>4)==0x02) y=@0d45;else if(((x&0xF0)>>4)==0x03) y=@0d46;else if(((x&0xF0)>>4)==0x04) y=@0d47;else if(((x&0xF0)>>4)==0x05) y=@0d97;else if(((x&0xF0)>>4)==0x06) y=@13c0;else y=@0103;
  $  054.轴距                        $    $            $    $  ANS008.BYTE011  $  if((x&0x0F)==0x01) y=@0d48;else if((x&0x0F)==0x02) y=@0d25;else if((x&0x0F)==0x03) y=@0d49;else if((x&0x0F)==0x04) y=@0d2a;else if((x&0x0F)==0x05) y=@0d99;else if((x&0x0F)==0x06) y=@0d9a;else y=@0103;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:741 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
